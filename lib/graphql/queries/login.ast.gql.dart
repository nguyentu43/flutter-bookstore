// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:gql/ast.dart' as _i1;

const Login = _i1.OperationDefinitionNode(
    type: _i1.OperationType.query,
    name: _i1.NameNode(value: 'Login'),
    variableDefinitions: [
      _i1.VariableDefinitionNode(
          variable: _i1.VariableNode(name: _i1.NameNode(value: 'email')),
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true),
          defaultValue: _i1.DefaultValueNode(value: null),
          directives: []),
      _i1.VariableDefinitionNode(
          variable: _i1.VariableNode(name: _i1.NameNode(value: 'password')),
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true),
          defaultValue: _i1.DefaultValueNode(value: null),
          directives: [])
    ],
    directives: [],
    selectionSet: _i1.SelectionSetNode(selections: [
      _i1.FieldNode(
          name: _i1.NameNode(value: 'login'),
          alias: _i1.NameNode(value: 'token'),
          arguments: [
            _i1.ArgumentNode(
                name: _i1.NameNode(value: 'email'),
                value: _i1.VariableNode(name: _i1.NameNode(value: 'email'))),
            _i1.ArgumentNode(
                name: _i1.NameNode(value: 'password'),
                value: _i1.VariableNode(name: _i1.NameNode(value: 'password')))
          ],
          directives: [],
          selectionSet: null)
    ]));
const document = _i1.DocumentNode(definitions: [Login]);
