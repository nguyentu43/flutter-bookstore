import 'package:ferry/ferry.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bookstore/graphql/queries/getUserOrders.data.gql.dart';
import 'package:flutter_bookstore/graphql/queries/getUserOrders.req.gql.dart';
import 'package:flutter_bookstore/graphql/queries/getUserOrders.var.gql.dart';
import 'package:flutter_bookstore/helpers/app_service.dart';
import 'package:flutter_bookstore/models/bloc/auth_bloc.dart';
import 'package:flutter_bookstore/widgets/components/rounded_button.dart';

class OrdersTab extends StatelessWidget {
  const OrdersTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Operation(
        operationRequest: GGetUserOrdersReq(),
        builder: (context,
            OperationResponse<GGetUserOrdersData, GGetUserOrdersVars>? response,
            error) {
          if (response!.loading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          final orders = response.data!.orders;

          return ListView.separated(
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("ORDER LIST", style: textTheme.headline2)
                      ],
                    ),
                  );
                }

                final order = orders[index - 1];
                return Padding(
                    padding: EdgeInsets.all(10.0),
                    child: ListTile(
                      leading: Text('#' + order.id),
                      subtitle: Text('Items: ' +
                          order.items!.map((p) => p.name).join(',')),
                      title: Text('Total: \$' + order.total.toStringAsFixed(2)),
                    ));
              },
              separatorBuilder: (context, index) {
                return Divider(
                  height: 1.0,
                );
              },
              itemCount: orders.length + 1);
        },
        client: AppService().client);
  }
}
