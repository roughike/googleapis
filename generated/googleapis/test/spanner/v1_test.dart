library googleapis.spanner.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/spanner/v1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request
          .finalize()
          .transform(convert.utf8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.json.decode(jsonString));
        }
      });
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        return stream.toBytes().then((data) {
          return _callback(request, data);
        });
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.utf8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

buildUnnamed3368() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3368(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBackup = 0;
buildBackup() {
  var o = new api.Backup();
  buildCounterBackup++;
  if (buildCounterBackup < 3) {
    o.createTime = "foo";
    o.database = "foo";
    o.expireTime = "foo";
    o.name = "foo";
    o.referencingDatabases = buildUnnamed3368();
    o.sizeBytes = "foo";
    o.state = "foo";
  }
  buildCounterBackup--;
  return o;
}

checkBackup(api.Backup o) {
  buildCounterBackup++;
  if (buildCounterBackup < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.database, unittest.equals('foo'));
    unittest.expect(o.expireTime, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed3368(o.referencingDatabases);
    unittest.expect(o.sizeBytes, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterBackup--;
}

core.int buildCounterBackupInfo = 0;
buildBackupInfo() {
  var o = new api.BackupInfo();
  buildCounterBackupInfo++;
  if (buildCounterBackupInfo < 3) {
    o.backup = "foo";
    o.createTime = "foo";
    o.sourceDatabase = "foo";
  }
  buildCounterBackupInfo--;
  return o;
}

checkBackupInfo(api.BackupInfo o) {
  buildCounterBackupInfo++;
  if (buildCounterBackupInfo < 3) {
    unittest.expect(o.backup, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.sourceDatabase, unittest.equals('foo'));
  }
  buildCounterBackupInfo--;
}

core.int buildCounterBatchCreateSessionsRequest = 0;
buildBatchCreateSessionsRequest() {
  var o = new api.BatchCreateSessionsRequest();
  buildCounterBatchCreateSessionsRequest++;
  if (buildCounterBatchCreateSessionsRequest < 3) {
    o.sessionCount = 42;
    o.sessionTemplate = buildSession();
  }
  buildCounterBatchCreateSessionsRequest--;
  return o;
}

checkBatchCreateSessionsRequest(api.BatchCreateSessionsRequest o) {
  buildCounterBatchCreateSessionsRequest++;
  if (buildCounterBatchCreateSessionsRequest < 3) {
    unittest.expect(o.sessionCount, unittest.equals(42));
    checkSession(o.sessionTemplate);
  }
  buildCounterBatchCreateSessionsRequest--;
}

buildUnnamed3369() {
  var o = new core.List<api.Session>();
  o.add(buildSession());
  o.add(buildSession());
  return o;
}

checkUnnamed3369(core.List<api.Session> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSession(o[0]);
  checkSession(o[1]);
}

core.int buildCounterBatchCreateSessionsResponse = 0;
buildBatchCreateSessionsResponse() {
  var o = new api.BatchCreateSessionsResponse();
  buildCounterBatchCreateSessionsResponse++;
  if (buildCounterBatchCreateSessionsResponse < 3) {
    o.session = buildUnnamed3369();
  }
  buildCounterBatchCreateSessionsResponse--;
  return o;
}

checkBatchCreateSessionsResponse(api.BatchCreateSessionsResponse o) {
  buildCounterBatchCreateSessionsResponse++;
  if (buildCounterBatchCreateSessionsResponse < 3) {
    checkUnnamed3369(o.session);
  }
  buildCounterBatchCreateSessionsResponse--;
}

core.int buildCounterBeginTransactionRequest = 0;
buildBeginTransactionRequest() {
  var o = new api.BeginTransactionRequest();
  buildCounterBeginTransactionRequest++;
  if (buildCounterBeginTransactionRequest < 3) {
    o.options = buildTransactionOptions();
  }
  buildCounterBeginTransactionRequest--;
  return o;
}

checkBeginTransactionRequest(api.BeginTransactionRequest o) {
  buildCounterBeginTransactionRequest++;
  if (buildCounterBeginTransactionRequest < 3) {
    checkTransactionOptions(o.options);
  }
  buildCounterBeginTransactionRequest--;
}

buildUnnamed3370() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3370(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBinding = 0;
buildBinding() {
  var o = new api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed3370();
    o.role = "foo";
  }
  buildCounterBinding--;
  return o;
}

checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition);
    checkUnnamed3370(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

core.int buildCounterChildLink = 0;
buildChildLink() {
  var o = new api.ChildLink();
  buildCounterChildLink++;
  if (buildCounterChildLink < 3) {
    o.childIndex = 42;
    o.type = "foo";
    o.variable = "foo";
  }
  buildCounterChildLink--;
  return o;
}

checkChildLink(api.ChildLink o) {
  buildCounterChildLink++;
  if (buildCounterChildLink < 3) {
    unittest.expect(o.childIndex, unittest.equals(42));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.variable, unittest.equals('foo'));
  }
  buildCounterChildLink--;
}

buildUnnamed3371() {
  var o = new core.List<api.Mutation>();
  o.add(buildMutation());
  o.add(buildMutation());
  return o;
}

checkUnnamed3371(core.List<api.Mutation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMutation(o[0]);
  checkMutation(o[1]);
}

core.int buildCounterCommitRequest = 0;
buildCommitRequest() {
  var o = new api.CommitRequest();
  buildCounterCommitRequest++;
  if (buildCounterCommitRequest < 3) {
    o.mutations = buildUnnamed3371();
    o.singleUseTransaction = buildTransactionOptions();
    o.transactionId = "foo";
  }
  buildCounterCommitRequest--;
  return o;
}

checkCommitRequest(api.CommitRequest o) {
  buildCounterCommitRequest++;
  if (buildCounterCommitRequest < 3) {
    checkUnnamed3371(o.mutations);
    checkTransactionOptions(o.singleUseTransaction);
    unittest.expect(o.transactionId, unittest.equals('foo'));
  }
  buildCounterCommitRequest--;
}

core.int buildCounterCommitResponse = 0;
buildCommitResponse() {
  var o = new api.CommitResponse();
  buildCounterCommitResponse++;
  if (buildCounterCommitResponse < 3) {
    o.commitTimestamp = "foo";
  }
  buildCounterCommitResponse--;
  return o;
}

checkCommitResponse(api.CommitResponse o) {
  buildCounterCommitResponse++;
  if (buildCounterCommitResponse < 3) {
    unittest.expect(o.commitTimestamp, unittest.equals('foo'));
  }
  buildCounterCommitResponse--;
}

core.int buildCounterCreateBackupMetadata = 0;
buildCreateBackupMetadata() {
  var o = new api.CreateBackupMetadata();
  buildCounterCreateBackupMetadata++;
  if (buildCounterCreateBackupMetadata < 3) {
    o.cancelTime = "foo";
    o.database = "foo";
    o.name = "foo";
    o.progress = buildOperationProgress();
  }
  buildCounterCreateBackupMetadata--;
  return o;
}

checkCreateBackupMetadata(api.CreateBackupMetadata o) {
  buildCounterCreateBackupMetadata++;
  if (buildCounterCreateBackupMetadata < 3) {
    unittest.expect(o.cancelTime, unittest.equals('foo'));
    unittest.expect(o.database, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkOperationProgress(o.progress);
  }
  buildCounterCreateBackupMetadata--;
}

core.int buildCounterCreateDatabaseMetadata = 0;
buildCreateDatabaseMetadata() {
  var o = new api.CreateDatabaseMetadata();
  buildCounterCreateDatabaseMetadata++;
  if (buildCounterCreateDatabaseMetadata < 3) {
    o.database = "foo";
  }
  buildCounterCreateDatabaseMetadata--;
  return o;
}

checkCreateDatabaseMetadata(api.CreateDatabaseMetadata o) {
  buildCounterCreateDatabaseMetadata++;
  if (buildCounterCreateDatabaseMetadata < 3) {
    unittest.expect(o.database, unittest.equals('foo'));
  }
  buildCounterCreateDatabaseMetadata--;
}

buildUnnamed3372() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3372(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCreateDatabaseRequest = 0;
buildCreateDatabaseRequest() {
  var o = new api.CreateDatabaseRequest();
  buildCounterCreateDatabaseRequest++;
  if (buildCounterCreateDatabaseRequest < 3) {
    o.createStatement = "foo";
    o.extraStatements = buildUnnamed3372();
  }
  buildCounterCreateDatabaseRequest--;
  return o;
}

checkCreateDatabaseRequest(api.CreateDatabaseRequest o) {
  buildCounterCreateDatabaseRequest++;
  if (buildCounterCreateDatabaseRequest < 3) {
    unittest.expect(o.createStatement, unittest.equals('foo'));
    checkUnnamed3372(o.extraStatements);
  }
  buildCounterCreateDatabaseRequest--;
}

core.int buildCounterCreateInstanceMetadata = 0;
buildCreateInstanceMetadata() {
  var o = new api.CreateInstanceMetadata();
  buildCounterCreateInstanceMetadata++;
  if (buildCounterCreateInstanceMetadata < 3) {
    o.cancelTime = "foo";
    o.endTime = "foo";
    o.instance = buildInstance();
    o.startTime = "foo";
  }
  buildCounterCreateInstanceMetadata--;
  return o;
}

checkCreateInstanceMetadata(api.CreateInstanceMetadata o) {
  buildCounterCreateInstanceMetadata++;
  if (buildCounterCreateInstanceMetadata < 3) {
    unittest.expect(o.cancelTime, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    checkInstance(o.instance);
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterCreateInstanceMetadata--;
}

core.int buildCounterCreateInstanceRequest = 0;
buildCreateInstanceRequest() {
  var o = new api.CreateInstanceRequest();
  buildCounterCreateInstanceRequest++;
  if (buildCounterCreateInstanceRequest < 3) {
    o.instance = buildInstance();
    o.instanceId = "foo";
  }
  buildCounterCreateInstanceRequest--;
  return o;
}

checkCreateInstanceRequest(api.CreateInstanceRequest o) {
  buildCounterCreateInstanceRequest++;
  if (buildCounterCreateInstanceRequest < 3) {
    checkInstance(o.instance);
    unittest.expect(o.instanceId, unittest.equals('foo'));
  }
  buildCounterCreateInstanceRequest--;
}

core.int buildCounterCreateSessionRequest = 0;
buildCreateSessionRequest() {
  var o = new api.CreateSessionRequest();
  buildCounterCreateSessionRequest++;
  if (buildCounterCreateSessionRequest < 3) {
    o.session = buildSession();
  }
  buildCounterCreateSessionRequest--;
  return o;
}

checkCreateSessionRequest(api.CreateSessionRequest o) {
  buildCounterCreateSessionRequest++;
  if (buildCounterCreateSessionRequest < 3) {
    checkSession(o.session);
  }
  buildCounterCreateSessionRequest--;
}

core.int buildCounterDatabase = 0;
buildDatabase() {
  var o = new api.Database();
  buildCounterDatabase++;
  if (buildCounterDatabase < 3) {
    o.createTime = "foo";
    o.name = "foo";
    o.restoreInfo = buildRestoreInfo();
    o.state = "foo";
  }
  buildCounterDatabase--;
  return o;
}

checkDatabase(api.Database o) {
  buildCounterDatabase++;
  if (buildCounterDatabase < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkRestoreInfo(o.restoreInfo);
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterDatabase--;
}

core.int buildCounterDelete = 0;
buildDelete() {
  var o = new api.Delete();
  buildCounterDelete++;
  if (buildCounterDelete < 3) {
    o.keySet = buildKeySet();
    o.table = "foo";
  }
  buildCounterDelete--;
  return o;
}

checkDelete(api.Delete o) {
  buildCounterDelete++;
  if (buildCounterDelete < 3) {
    checkKeySet(o.keySet);
    unittest.expect(o.table, unittest.equals('foo'));
  }
  buildCounterDelete--;
}

core.int buildCounterEmpty = 0;
buildEmpty() {
  var o = new api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
  return o;
}

checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
}

buildUnnamed3373() {
  var o = new core.List<api.Statement>();
  o.add(buildStatement());
  o.add(buildStatement());
  return o;
}

checkUnnamed3373(core.List<api.Statement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatement(o[0]);
  checkStatement(o[1]);
}

core.int buildCounterExecuteBatchDmlRequest = 0;
buildExecuteBatchDmlRequest() {
  var o = new api.ExecuteBatchDmlRequest();
  buildCounterExecuteBatchDmlRequest++;
  if (buildCounterExecuteBatchDmlRequest < 3) {
    o.seqno = "foo";
    o.statements = buildUnnamed3373();
    o.transaction = buildTransactionSelector();
  }
  buildCounterExecuteBatchDmlRequest--;
  return o;
}

checkExecuteBatchDmlRequest(api.ExecuteBatchDmlRequest o) {
  buildCounterExecuteBatchDmlRequest++;
  if (buildCounterExecuteBatchDmlRequest < 3) {
    unittest.expect(o.seqno, unittest.equals('foo'));
    checkUnnamed3373(o.statements);
    checkTransactionSelector(o.transaction);
  }
  buildCounterExecuteBatchDmlRequest--;
}

buildUnnamed3374() {
  var o = new core.List<api.ResultSet>();
  o.add(buildResultSet());
  o.add(buildResultSet());
  return o;
}

checkUnnamed3374(core.List<api.ResultSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResultSet(o[0]);
  checkResultSet(o[1]);
}

core.int buildCounterExecuteBatchDmlResponse = 0;
buildExecuteBatchDmlResponse() {
  var o = new api.ExecuteBatchDmlResponse();
  buildCounterExecuteBatchDmlResponse++;
  if (buildCounterExecuteBatchDmlResponse < 3) {
    o.resultSets = buildUnnamed3374();
    o.status = buildStatus();
  }
  buildCounterExecuteBatchDmlResponse--;
  return o;
}

checkExecuteBatchDmlResponse(api.ExecuteBatchDmlResponse o) {
  buildCounterExecuteBatchDmlResponse++;
  if (buildCounterExecuteBatchDmlResponse < 3) {
    checkUnnamed3374(o.resultSets);
    checkStatus(o.status);
  }
  buildCounterExecuteBatchDmlResponse--;
}

buildUnnamed3375() {
  var o = new core.Map<core.String, api.Type>();
  o["x"] = buildType();
  o["y"] = buildType();
  return o;
}

checkUnnamed3375(core.Map<core.String, api.Type> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkType(o["x"]);
  checkType(o["y"]);
}

buildUnnamed3376() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed3376(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o["x"]) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted1["bool"], unittest.equals(true));
  unittest.expect(casted1["string"], unittest.equals('foo'));
  var casted2 = (o["y"]) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted2["bool"], unittest.equals(true));
  unittest.expect(casted2["string"], unittest.equals('foo'));
}

core.int buildCounterExecuteSqlRequest = 0;
buildExecuteSqlRequest() {
  var o = new api.ExecuteSqlRequest();
  buildCounterExecuteSqlRequest++;
  if (buildCounterExecuteSqlRequest < 3) {
    o.paramTypes = buildUnnamed3375();
    o.params = buildUnnamed3376();
    o.partitionToken = "foo";
    o.queryMode = "foo";
    o.queryOptions = buildQueryOptions();
    o.resumeToken = "foo";
    o.seqno = "foo";
    o.sql = "foo";
    o.transaction = buildTransactionSelector();
  }
  buildCounterExecuteSqlRequest--;
  return o;
}

checkExecuteSqlRequest(api.ExecuteSqlRequest o) {
  buildCounterExecuteSqlRequest++;
  if (buildCounterExecuteSqlRequest < 3) {
    checkUnnamed3375(o.paramTypes);
    checkUnnamed3376(o.params);
    unittest.expect(o.partitionToken, unittest.equals('foo'));
    unittest.expect(o.queryMode, unittest.equals('foo'));
    checkQueryOptions(o.queryOptions);
    unittest.expect(o.resumeToken, unittest.equals('foo'));
    unittest.expect(o.seqno, unittest.equals('foo'));
    unittest.expect(o.sql, unittest.equals('foo'));
    checkTransactionSelector(o.transaction);
  }
  buildCounterExecuteSqlRequest--;
}

core.int buildCounterExpr = 0;
buildExpr() {
  var o = new api.Expr();
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    o.description = "foo";
    o.expression = "foo";
    o.location = "foo";
    o.title = "foo";
  }
  buildCounterExpr--;
  return o;
}

checkExpr(api.Expr o) {
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.expression, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterExpr--;
}

core.int buildCounterField = 0;
buildField() {
  var o = new api.Field();
  buildCounterField++;
  if (buildCounterField < 3) {
    o.name = "foo";
    o.type = buildType();
  }
  buildCounterField--;
  return o;
}

checkField(api.Field o) {
  buildCounterField++;
  if (buildCounterField < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    checkType(o.type);
  }
  buildCounterField--;
}

buildUnnamed3377() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3377(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGetDatabaseDdlResponse = 0;
buildGetDatabaseDdlResponse() {
  var o = new api.GetDatabaseDdlResponse();
  buildCounterGetDatabaseDdlResponse++;
  if (buildCounterGetDatabaseDdlResponse < 3) {
    o.statements = buildUnnamed3377();
  }
  buildCounterGetDatabaseDdlResponse--;
  return o;
}

checkGetDatabaseDdlResponse(api.GetDatabaseDdlResponse o) {
  buildCounterGetDatabaseDdlResponse++;
  if (buildCounterGetDatabaseDdlResponse < 3) {
    checkUnnamed3377(o.statements);
  }
  buildCounterGetDatabaseDdlResponse--;
}

core.int buildCounterGetIamPolicyRequest = 0;
buildGetIamPolicyRequest() {
  var o = new api.GetIamPolicyRequest();
  buildCounterGetIamPolicyRequest++;
  if (buildCounterGetIamPolicyRequest < 3) {
    o.options = buildGetPolicyOptions();
  }
  buildCounterGetIamPolicyRequest--;
  return o;
}

checkGetIamPolicyRequest(api.GetIamPolicyRequest o) {
  buildCounterGetIamPolicyRequest++;
  if (buildCounterGetIamPolicyRequest < 3) {
    checkGetPolicyOptions(o.options);
  }
  buildCounterGetIamPolicyRequest--;
}

core.int buildCounterGetPolicyOptions = 0;
buildGetPolicyOptions() {
  var o = new api.GetPolicyOptions();
  buildCounterGetPolicyOptions++;
  if (buildCounterGetPolicyOptions < 3) {
    o.requestedPolicyVersion = 42;
  }
  buildCounterGetPolicyOptions--;
  return o;
}

checkGetPolicyOptions(api.GetPolicyOptions o) {
  buildCounterGetPolicyOptions++;
  if (buildCounterGetPolicyOptions < 3) {
    unittest.expect(o.requestedPolicyVersion, unittest.equals(42));
  }
  buildCounterGetPolicyOptions--;
}

buildUnnamed3378() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3378(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3379() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3379(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterInstance = 0;
buildInstance() {
  var o = new api.Instance();
  buildCounterInstance++;
  if (buildCounterInstance < 3) {
    o.config = "foo";
    o.displayName = "foo";
    o.endpointUris = buildUnnamed3378();
    o.labels = buildUnnamed3379();
    o.name = "foo";
    o.nodeCount = 42;
    o.state = "foo";
  }
  buildCounterInstance--;
  return o;
}

checkInstance(api.Instance o) {
  buildCounterInstance++;
  if (buildCounterInstance < 3) {
    unittest.expect(o.config, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed3378(o.endpointUris);
    checkUnnamed3379(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.nodeCount, unittest.equals(42));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterInstance--;
}

buildUnnamed3380() {
  var o = new core.List<api.ReplicaInfo>();
  o.add(buildReplicaInfo());
  o.add(buildReplicaInfo());
  return o;
}

checkUnnamed3380(core.List<api.ReplicaInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReplicaInfo(o[0]);
  checkReplicaInfo(o[1]);
}

core.int buildCounterInstanceConfig = 0;
buildInstanceConfig() {
  var o = new api.InstanceConfig();
  buildCounterInstanceConfig++;
  if (buildCounterInstanceConfig < 3) {
    o.displayName = "foo";
    o.name = "foo";
    o.replicas = buildUnnamed3380();
  }
  buildCounterInstanceConfig--;
  return o;
}

checkInstanceConfig(api.InstanceConfig o) {
  buildCounterInstanceConfig++;
  if (buildCounterInstanceConfig < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed3380(o.replicas);
  }
  buildCounterInstanceConfig--;
}

buildUnnamed3381() {
  var o = new core.List<core.Object>();
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  return o;
}

checkUnnamed3381(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o[0]) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted3["bool"], unittest.equals(true));
  unittest.expect(casted3["string"], unittest.equals('foo'));
  var casted4 = (o[1]) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted4["bool"], unittest.equals(true));
  unittest.expect(casted4["string"], unittest.equals('foo'));
}

buildUnnamed3382() {
  var o = new core.List<core.Object>();
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  return o;
}

checkUnnamed3382(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o[0]) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted5["bool"], unittest.equals(true));
  unittest.expect(casted5["string"], unittest.equals('foo'));
  var casted6 = (o[1]) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted6["bool"], unittest.equals(true));
  unittest.expect(casted6["string"], unittest.equals('foo'));
}

buildUnnamed3383() {
  var o = new core.List<core.Object>();
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  return o;
}

checkUnnamed3383(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o[0]) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted7["bool"], unittest.equals(true));
  unittest.expect(casted7["string"], unittest.equals('foo'));
  var casted8 = (o[1]) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted8["bool"], unittest.equals(true));
  unittest.expect(casted8["string"], unittest.equals('foo'));
}

buildUnnamed3384() {
  var o = new core.List<core.Object>();
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  return o;
}

checkUnnamed3384(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted9 = (o[0]) as core.Map;
  unittest.expect(casted9, unittest.hasLength(3));
  unittest.expect(casted9["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted9["bool"], unittest.equals(true));
  unittest.expect(casted9["string"], unittest.equals('foo'));
  var casted10 = (o[1]) as core.Map;
  unittest.expect(casted10, unittest.hasLength(3));
  unittest.expect(casted10["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted10["bool"], unittest.equals(true));
  unittest.expect(casted10["string"], unittest.equals('foo'));
}

core.int buildCounterKeyRange = 0;
buildKeyRange() {
  var o = new api.KeyRange();
  buildCounterKeyRange++;
  if (buildCounterKeyRange < 3) {
    o.endClosed = buildUnnamed3381();
    o.endOpen = buildUnnamed3382();
    o.startClosed = buildUnnamed3383();
    o.startOpen = buildUnnamed3384();
  }
  buildCounterKeyRange--;
  return o;
}

checkKeyRange(api.KeyRange o) {
  buildCounterKeyRange++;
  if (buildCounterKeyRange < 3) {
    checkUnnamed3381(o.endClosed);
    checkUnnamed3382(o.endOpen);
    checkUnnamed3383(o.startClosed);
    checkUnnamed3384(o.startOpen);
  }
  buildCounterKeyRange--;
}

buildUnnamed3385() {
  var o = new core.List<core.Object>();
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  return o;
}

checkUnnamed3385(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted11 = (o[0]) as core.Map;
  unittest.expect(casted11, unittest.hasLength(3));
  unittest.expect(casted11["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted11["bool"], unittest.equals(true));
  unittest.expect(casted11["string"], unittest.equals('foo'));
  var casted12 = (o[1]) as core.Map;
  unittest.expect(casted12, unittest.hasLength(3));
  unittest.expect(casted12["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted12["bool"], unittest.equals(true));
  unittest.expect(casted12["string"], unittest.equals('foo'));
}

buildUnnamed3386() {
  var o = new core.List<core.List<core.Object>>();
  o.add(buildUnnamed3385());
  o.add(buildUnnamed3385());
  return o;
}

checkUnnamed3386(core.List<core.List<core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed3385(o[0]);
  checkUnnamed3385(o[1]);
}

buildUnnamed3387() {
  var o = new core.List<api.KeyRange>();
  o.add(buildKeyRange());
  o.add(buildKeyRange());
  return o;
}

checkUnnamed3387(core.List<api.KeyRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKeyRange(o[0]);
  checkKeyRange(o[1]);
}

core.int buildCounterKeySet = 0;
buildKeySet() {
  var o = new api.KeySet();
  buildCounterKeySet++;
  if (buildCounterKeySet < 3) {
    o.all = true;
    o.keys = buildUnnamed3386();
    o.ranges = buildUnnamed3387();
  }
  buildCounterKeySet--;
  return o;
}

checkKeySet(api.KeySet o) {
  buildCounterKeySet++;
  if (buildCounterKeySet < 3) {
    unittest.expect(o.all, unittest.isTrue);
    checkUnnamed3386(o.keys);
    checkUnnamed3387(o.ranges);
  }
  buildCounterKeySet--;
}

buildUnnamed3388() {
  var o = new core.List<api.Operation>();
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

checkUnnamed3388(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterListBackupOperationsResponse = 0;
buildListBackupOperationsResponse() {
  var o = new api.ListBackupOperationsResponse();
  buildCounterListBackupOperationsResponse++;
  if (buildCounterListBackupOperationsResponse < 3) {
    o.nextPageToken = "foo";
    o.operations = buildUnnamed3388();
  }
  buildCounterListBackupOperationsResponse--;
  return o;
}

checkListBackupOperationsResponse(api.ListBackupOperationsResponse o) {
  buildCounterListBackupOperationsResponse++;
  if (buildCounterListBackupOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3388(o.operations);
  }
  buildCounterListBackupOperationsResponse--;
}

buildUnnamed3389() {
  var o = new core.List<api.Backup>();
  o.add(buildBackup());
  o.add(buildBackup());
  return o;
}

checkUnnamed3389(core.List<api.Backup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBackup(o[0]);
  checkBackup(o[1]);
}

core.int buildCounterListBackupsResponse = 0;
buildListBackupsResponse() {
  var o = new api.ListBackupsResponse();
  buildCounterListBackupsResponse++;
  if (buildCounterListBackupsResponse < 3) {
    o.backups = buildUnnamed3389();
    o.nextPageToken = "foo";
  }
  buildCounterListBackupsResponse--;
  return o;
}

checkListBackupsResponse(api.ListBackupsResponse o) {
  buildCounterListBackupsResponse++;
  if (buildCounterListBackupsResponse < 3) {
    checkUnnamed3389(o.backups);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListBackupsResponse--;
}

buildUnnamed3390() {
  var o = new core.List<api.Operation>();
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

checkUnnamed3390(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterListDatabaseOperationsResponse = 0;
buildListDatabaseOperationsResponse() {
  var o = new api.ListDatabaseOperationsResponse();
  buildCounterListDatabaseOperationsResponse++;
  if (buildCounterListDatabaseOperationsResponse < 3) {
    o.nextPageToken = "foo";
    o.operations = buildUnnamed3390();
  }
  buildCounterListDatabaseOperationsResponse--;
  return o;
}

checkListDatabaseOperationsResponse(api.ListDatabaseOperationsResponse o) {
  buildCounterListDatabaseOperationsResponse++;
  if (buildCounterListDatabaseOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3390(o.operations);
  }
  buildCounterListDatabaseOperationsResponse--;
}

buildUnnamed3391() {
  var o = new core.List<api.Database>();
  o.add(buildDatabase());
  o.add(buildDatabase());
  return o;
}

checkUnnamed3391(core.List<api.Database> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatabase(o[0]);
  checkDatabase(o[1]);
}

core.int buildCounterListDatabasesResponse = 0;
buildListDatabasesResponse() {
  var o = new api.ListDatabasesResponse();
  buildCounterListDatabasesResponse++;
  if (buildCounterListDatabasesResponse < 3) {
    o.databases = buildUnnamed3391();
    o.nextPageToken = "foo";
  }
  buildCounterListDatabasesResponse--;
  return o;
}

checkListDatabasesResponse(api.ListDatabasesResponse o) {
  buildCounterListDatabasesResponse++;
  if (buildCounterListDatabasesResponse < 3) {
    checkUnnamed3391(o.databases);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListDatabasesResponse--;
}

buildUnnamed3392() {
  var o = new core.List<api.InstanceConfig>();
  o.add(buildInstanceConfig());
  o.add(buildInstanceConfig());
  return o;
}

checkUnnamed3392(core.List<api.InstanceConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstanceConfig(o[0]);
  checkInstanceConfig(o[1]);
}

core.int buildCounterListInstanceConfigsResponse = 0;
buildListInstanceConfigsResponse() {
  var o = new api.ListInstanceConfigsResponse();
  buildCounterListInstanceConfigsResponse++;
  if (buildCounterListInstanceConfigsResponse < 3) {
    o.instanceConfigs = buildUnnamed3392();
    o.nextPageToken = "foo";
  }
  buildCounterListInstanceConfigsResponse--;
  return o;
}

checkListInstanceConfigsResponse(api.ListInstanceConfigsResponse o) {
  buildCounterListInstanceConfigsResponse++;
  if (buildCounterListInstanceConfigsResponse < 3) {
    checkUnnamed3392(o.instanceConfigs);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListInstanceConfigsResponse--;
}

buildUnnamed3393() {
  var o = new core.List<api.Instance>();
  o.add(buildInstance());
  o.add(buildInstance());
  return o;
}

checkUnnamed3393(core.List<api.Instance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstance(o[0]);
  checkInstance(o[1]);
}

core.int buildCounterListInstancesResponse = 0;
buildListInstancesResponse() {
  var o = new api.ListInstancesResponse();
  buildCounterListInstancesResponse++;
  if (buildCounterListInstancesResponse < 3) {
    o.instances = buildUnnamed3393();
    o.nextPageToken = "foo";
  }
  buildCounterListInstancesResponse--;
  return o;
}

checkListInstancesResponse(api.ListInstancesResponse o) {
  buildCounterListInstancesResponse++;
  if (buildCounterListInstancesResponse < 3) {
    checkUnnamed3393(o.instances);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListInstancesResponse--;
}

buildUnnamed3394() {
  var o = new core.List<api.Operation>();
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

checkUnnamed3394(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterListOperationsResponse = 0;
buildListOperationsResponse() {
  var o = new api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = "foo";
    o.operations = buildUnnamed3394();
  }
  buildCounterListOperationsResponse--;
  return o;
}

checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3394(o.operations);
  }
  buildCounterListOperationsResponse--;
}

buildUnnamed3395() {
  var o = new core.List<api.Session>();
  o.add(buildSession());
  o.add(buildSession());
  return o;
}

checkUnnamed3395(core.List<api.Session> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSession(o[0]);
  checkSession(o[1]);
}

core.int buildCounterListSessionsResponse = 0;
buildListSessionsResponse() {
  var o = new api.ListSessionsResponse();
  buildCounterListSessionsResponse++;
  if (buildCounterListSessionsResponse < 3) {
    o.nextPageToken = "foo";
    o.sessions = buildUnnamed3395();
  }
  buildCounterListSessionsResponse--;
  return o;
}

checkListSessionsResponse(api.ListSessionsResponse o) {
  buildCounterListSessionsResponse++;
  if (buildCounterListSessionsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3395(o.sessions);
  }
  buildCounterListSessionsResponse--;
}

core.int buildCounterMutation = 0;
buildMutation() {
  var o = new api.Mutation();
  buildCounterMutation++;
  if (buildCounterMutation < 3) {
    o.delete = buildDelete();
    o.insert = buildWrite();
    o.insertOrUpdate = buildWrite();
    o.replace = buildWrite();
    o.update = buildWrite();
  }
  buildCounterMutation--;
  return o;
}

checkMutation(api.Mutation o) {
  buildCounterMutation++;
  if (buildCounterMutation < 3) {
    checkDelete(o.delete);
    checkWrite(o.insert);
    checkWrite(o.insertOrUpdate);
    checkWrite(o.replace);
    checkWrite(o.update);
  }
  buildCounterMutation--;
}

buildUnnamed3396() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed3396(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted13 = (o["x"]) as core.Map;
  unittest.expect(casted13, unittest.hasLength(3));
  unittest.expect(casted13["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted13["bool"], unittest.equals(true));
  unittest.expect(casted13["string"], unittest.equals('foo'));
  var casted14 = (o["y"]) as core.Map;
  unittest.expect(casted14, unittest.hasLength(3));
  unittest.expect(casted14["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted14["bool"], unittest.equals(true));
  unittest.expect(casted14["string"], unittest.equals('foo'));
}

buildUnnamed3397() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed3397(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted15 = (o["x"]) as core.Map;
  unittest.expect(casted15, unittest.hasLength(3));
  unittest.expect(casted15["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted15["bool"], unittest.equals(true));
  unittest.expect(casted15["string"], unittest.equals('foo'));
  var casted16 = (o["y"]) as core.Map;
  unittest.expect(casted16, unittest.hasLength(3));
  unittest.expect(casted16["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted16["bool"], unittest.equals(true));
  unittest.expect(casted16["string"], unittest.equals('foo'));
}

core.int buildCounterOperation = 0;
buildOperation() {
  var o = new api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed3396();
    o.name = "foo";
    o.response = buildUnnamed3397();
  }
  buildCounterOperation--;
  return o;
}

checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error);
    checkUnnamed3396(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed3397(o.response);
  }
  buildCounterOperation--;
}

core.int buildCounterOperationProgress = 0;
buildOperationProgress() {
  var o = new api.OperationProgress();
  buildCounterOperationProgress++;
  if (buildCounterOperationProgress < 3) {
    o.endTime = "foo";
    o.progressPercent = 42;
    o.startTime = "foo";
  }
  buildCounterOperationProgress--;
  return o;
}

checkOperationProgress(api.OperationProgress o) {
  buildCounterOperationProgress++;
  if (buildCounterOperationProgress < 3) {
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.progressPercent, unittest.equals(42));
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterOperationProgress--;
}

core.int buildCounterOptimizeRestoredDatabaseMetadata = 0;
buildOptimizeRestoredDatabaseMetadata() {
  var o = new api.OptimizeRestoredDatabaseMetadata();
  buildCounterOptimizeRestoredDatabaseMetadata++;
  if (buildCounterOptimizeRestoredDatabaseMetadata < 3) {
    o.name = "foo";
    o.progress = buildOperationProgress();
  }
  buildCounterOptimizeRestoredDatabaseMetadata--;
  return o;
}

checkOptimizeRestoredDatabaseMetadata(api.OptimizeRestoredDatabaseMetadata o) {
  buildCounterOptimizeRestoredDatabaseMetadata++;
  if (buildCounterOptimizeRestoredDatabaseMetadata < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    checkOperationProgress(o.progress);
  }
  buildCounterOptimizeRestoredDatabaseMetadata--;
}

buildUnnamed3398() {
  var o = new core.List<core.Object>();
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  return o;
}

checkUnnamed3398(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted17 = (o[0]) as core.Map;
  unittest.expect(casted17, unittest.hasLength(3));
  unittest.expect(casted17["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted17["bool"], unittest.equals(true));
  unittest.expect(casted17["string"], unittest.equals('foo'));
  var casted18 = (o[1]) as core.Map;
  unittest.expect(casted18, unittest.hasLength(3));
  unittest.expect(casted18["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted18["bool"], unittest.equals(true));
  unittest.expect(casted18["string"], unittest.equals('foo'));
}

core.int buildCounterPartialResultSet = 0;
buildPartialResultSet() {
  var o = new api.PartialResultSet();
  buildCounterPartialResultSet++;
  if (buildCounterPartialResultSet < 3) {
    o.chunkedValue = true;
    o.metadata = buildResultSetMetadata();
    o.resumeToken = "foo";
    o.stats = buildResultSetStats();
    o.values = buildUnnamed3398();
  }
  buildCounterPartialResultSet--;
  return o;
}

checkPartialResultSet(api.PartialResultSet o) {
  buildCounterPartialResultSet++;
  if (buildCounterPartialResultSet < 3) {
    unittest.expect(o.chunkedValue, unittest.isTrue);
    checkResultSetMetadata(o.metadata);
    unittest.expect(o.resumeToken, unittest.equals('foo'));
    checkResultSetStats(o.stats);
    checkUnnamed3398(o.values);
  }
  buildCounterPartialResultSet--;
}

core.int buildCounterPartition = 0;
buildPartition() {
  var o = new api.Partition();
  buildCounterPartition++;
  if (buildCounterPartition < 3) {
    o.partitionToken = "foo";
  }
  buildCounterPartition--;
  return o;
}

checkPartition(api.Partition o) {
  buildCounterPartition++;
  if (buildCounterPartition < 3) {
    unittest.expect(o.partitionToken, unittest.equals('foo'));
  }
  buildCounterPartition--;
}

core.int buildCounterPartitionOptions = 0;
buildPartitionOptions() {
  var o = new api.PartitionOptions();
  buildCounterPartitionOptions++;
  if (buildCounterPartitionOptions < 3) {
    o.maxPartitions = "foo";
    o.partitionSizeBytes = "foo";
  }
  buildCounterPartitionOptions--;
  return o;
}

checkPartitionOptions(api.PartitionOptions o) {
  buildCounterPartitionOptions++;
  if (buildCounterPartitionOptions < 3) {
    unittest.expect(o.maxPartitions, unittest.equals('foo'));
    unittest.expect(o.partitionSizeBytes, unittest.equals('foo'));
  }
  buildCounterPartitionOptions--;
}

buildUnnamed3399() {
  var o = new core.Map<core.String, api.Type>();
  o["x"] = buildType();
  o["y"] = buildType();
  return o;
}

checkUnnamed3399(core.Map<core.String, api.Type> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkType(o["x"]);
  checkType(o["y"]);
}

buildUnnamed3400() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed3400(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted19 = (o["x"]) as core.Map;
  unittest.expect(casted19, unittest.hasLength(3));
  unittest.expect(casted19["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted19["bool"], unittest.equals(true));
  unittest.expect(casted19["string"], unittest.equals('foo'));
  var casted20 = (o["y"]) as core.Map;
  unittest.expect(casted20, unittest.hasLength(3));
  unittest.expect(casted20["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted20["bool"], unittest.equals(true));
  unittest.expect(casted20["string"], unittest.equals('foo'));
}

core.int buildCounterPartitionQueryRequest = 0;
buildPartitionQueryRequest() {
  var o = new api.PartitionQueryRequest();
  buildCounterPartitionQueryRequest++;
  if (buildCounterPartitionQueryRequest < 3) {
    o.paramTypes = buildUnnamed3399();
    o.params = buildUnnamed3400();
    o.partitionOptions = buildPartitionOptions();
    o.sql = "foo";
    o.transaction = buildTransactionSelector();
  }
  buildCounterPartitionQueryRequest--;
  return o;
}

checkPartitionQueryRequest(api.PartitionQueryRequest o) {
  buildCounterPartitionQueryRequest++;
  if (buildCounterPartitionQueryRequest < 3) {
    checkUnnamed3399(o.paramTypes);
    checkUnnamed3400(o.params);
    checkPartitionOptions(o.partitionOptions);
    unittest.expect(o.sql, unittest.equals('foo'));
    checkTransactionSelector(o.transaction);
  }
  buildCounterPartitionQueryRequest--;
}

buildUnnamed3401() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3401(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPartitionReadRequest = 0;
buildPartitionReadRequest() {
  var o = new api.PartitionReadRequest();
  buildCounterPartitionReadRequest++;
  if (buildCounterPartitionReadRequest < 3) {
    o.columns = buildUnnamed3401();
    o.index = "foo";
    o.keySet = buildKeySet();
    o.partitionOptions = buildPartitionOptions();
    o.table = "foo";
    o.transaction = buildTransactionSelector();
  }
  buildCounterPartitionReadRequest--;
  return o;
}

checkPartitionReadRequest(api.PartitionReadRequest o) {
  buildCounterPartitionReadRequest++;
  if (buildCounterPartitionReadRequest < 3) {
    checkUnnamed3401(o.columns);
    unittest.expect(o.index, unittest.equals('foo'));
    checkKeySet(o.keySet);
    checkPartitionOptions(o.partitionOptions);
    unittest.expect(o.table, unittest.equals('foo'));
    checkTransactionSelector(o.transaction);
  }
  buildCounterPartitionReadRequest--;
}

buildUnnamed3402() {
  var o = new core.List<api.Partition>();
  o.add(buildPartition());
  o.add(buildPartition());
  return o;
}

checkUnnamed3402(core.List<api.Partition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPartition(o[0]);
  checkPartition(o[1]);
}

core.int buildCounterPartitionResponse = 0;
buildPartitionResponse() {
  var o = new api.PartitionResponse();
  buildCounterPartitionResponse++;
  if (buildCounterPartitionResponse < 3) {
    o.partitions = buildUnnamed3402();
    o.transaction = buildTransaction();
  }
  buildCounterPartitionResponse--;
  return o;
}

checkPartitionResponse(api.PartitionResponse o) {
  buildCounterPartitionResponse++;
  if (buildCounterPartitionResponse < 3) {
    checkUnnamed3402(o.partitions);
    checkTransaction(o.transaction);
  }
  buildCounterPartitionResponse--;
}

core.int buildCounterPartitionedDml = 0;
buildPartitionedDml() {
  var o = new api.PartitionedDml();
  buildCounterPartitionedDml++;
  if (buildCounterPartitionedDml < 3) {}
  buildCounterPartitionedDml--;
  return o;
}

checkPartitionedDml(api.PartitionedDml o) {
  buildCounterPartitionedDml++;
  if (buildCounterPartitionedDml < 3) {}
  buildCounterPartitionedDml--;
}

buildUnnamed3403() {
  var o = new core.List<api.ChildLink>();
  o.add(buildChildLink());
  o.add(buildChildLink());
  return o;
}

checkUnnamed3403(core.List<api.ChildLink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChildLink(o[0]);
  checkChildLink(o[1]);
}

buildUnnamed3404() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed3404(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted21 = (o["x"]) as core.Map;
  unittest.expect(casted21, unittest.hasLength(3));
  unittest.expect(casted21["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted21["bool"], unittest.equals(true));
  unittest.expect(casted21["string"], unittest.equals('foo'));
  var casted22 = (o["y"]) as core.Map;
  unittest.expect(casted22, unittest.hasLength(3));
  unittest.expect(casted22["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted22["bool"], unittest.equals(true));
  unittest.expect(casted22["string"], unittest.equals('foo'));
}

buildUnnamed3405() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed3405(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted23 = (o["x"]) as core.Map;
  unittest.expect(casted23, unittest.hasLength(3));
  unittest.expect(casted23["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted23["bool"], unittest.equals(true));
  unittest.expect(casted23["string"], unittest.equals('foo'));
  var casted24 = (o["y"]) as core.Map;
  unittest.expect(casted24, unittest.hasLength(3));
  unittest.expect(casted24["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted24["bool"], unittest.equals(true));
  unittest.expect(casted24["string"], unittest.equals('foo'));
}

core.int buildCounterPlanNode = 0;
buildPlanNode() {
  var o = new api.PlanNode();
  buildCounterPlanNode++;
  if (buildCounterPlanNode < 3) {
    o.childLinks = buildUnnamed3403();
    o.displayName = "foo";
    o.executionStats = buildUnnamed3404();
    o.index = 42;
    o.kind = "foo";
    o.metadata = buildUnnamed3405();
    o.shortRepresentation = buildShortRepresentation();
  }
  buildCounterPlanNode--;
  return o;
}

checkPlanNode(api.PlanNode o) {
  buildCounterPlanNode++;
  if (buildCounterPlanNode < 3) {
    checkUnnamed3403(o.childLinks);
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed3404(o.executionStats);
    unittest.expect(o.index, unittest.equals(42));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3405(o.metadata);
    checkShortRepresentation(o.shortRepresentation);
  }
  buildCounterPlanNode--;
}

buildUnnamed3406() {
  var o = new core.List<api.Binding>();
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

checkUnnamed3406(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
buildPolicy() {
  var o = new api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.bindings = buildUnnamed3406();
    o.etag = "foo";
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed3406(o.bindings);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterPolicy--;
}

core.int buildCounterQueryOptions = 0;
buildQueryOptions() {
  var o = new api.QueryOptions();
  buildCounterQueryOptions++;
  if (buildCounterQueryOptions < 3) {
    o.optimizerVersion = "foo";
  }
  buildCounterQueryOptions--;
  return o;
}

checkQueryOptions(api.QueryOptions o) {
  buildCounterQueryOptions++;
  if (buildCounterQueryOptions < 3) {
    unittest.expect(o.optimizerVersion, unittest.equals('foo'));
  }
  buildCounterQueryOptions--;
}

buildUnnamed3407() {
  var o = new core.List<api.PlanNode>();
  o.add(buildPlanNode());
  o.add(buildPlanNode());
  return o;
}

checkUnnamed3407(core.List<api.PlanNode> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlanNode(o[0]);
  checkPlanNode(o[1]);
}

core.int buildCounterQueryPlan = 0;
buildQueryPlan() {
  var o = new api.QueryPlan();
  buildCounterQueryPlan++;
  if (buildCounterQueryPlan < 3) {
    o.planNodes = buildUnnamed3407();
  }
  buildCounterQueryPlan--;
  return o;
}

checkQueryPlan(api.QueryPlan o) {
  buildCounterQueryPlan++;
  if (buildCounterQueryPlan < 3) {
    checkUnnamed3407(o.planNodes);
  }
  buildCounterQueryPlan--;
}

core.int buildCounterReadOnly = 0;
buildReadOnly() {
  var o = new api.ReadOnly();
  buildCounterReadOnly++;
  if (buildCounterReadOnly < 3) {
    o.exactStaleness = "foo";
    o.maxStaleness = "foo";
    o.minReadTimestamp = "foo";
    o.readTimestamp = "foo";
    o.returnReadTimestamp = true;
    o.strong = true;
  }
  buildCounterReadOnly--;
  return o;
}

checkReadOnly(api.ReadOnly o) {
  buildCounterReadOnly++;
  if (buildCounterReadOnly < 3) {
    unittest.expect(o.exactStaleness, unittest.equals('foo'));
    unittest.expect(o.maxStaleness, unittest.equals('foo'));
    unittest.expect(o.minReadTimestamp, unittest.equals('foo'));
    unittest.expect(o.readTimestamp, unittest.equals('foo'));
    unittest.expect(o.returnReadTimestamp, unittest.isTrue);
    unittest.expect(o.strong, unittest.isTrue);
  }
  buildCounterReadOnly--;
}

buildUnnamed3408() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3408(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterReadRequest = 0;
buildReadRequest() {
  var o = new api.ReadRequest();
  buildCounterReadRequest++;
  if (buildCounterReadRequest < 3) {
    o.columns = buildUnnamed3408();
    o.index = "foo";
    o.keySet = buildKeySet();
    o.limit = "foo";
    o.partitionToken = "foo";
    o.resumeToken = "foo";
    o.table = "foo";
    o.transaction = buildTransactionSelector();
  }
  buildCounterReadRequest--;
  return o;
}

checkReadRequest(api.ReadRequest o) {
  buildCounterReadRequest++;
  if (buildCounterReadRequest < 3) {
    checkUnnamed3408(o.columns);
    unittest.expect(o.index, unittest.equals('foo'));
    checkKeySet(o.keySet);
    unittest.expect(o.limit, unittest.equals('foo'));
    unittest.expect(o.partitionToken, unittest.equals('foo'));
    unittest.expect(o.resumeToken, unittest.equals('foo'));
    unittest.expect(o.table, unittest.equals('foo'));
    checkTransactionSelector(o.transaction);
  }
  buildCounterReadRequest--;
}

core.int buildCounterReadWrite = 0;
buildReadWrite() {
  var o = new api.ReadWrite();
  buildCounterReadWrite++;
  if (buildCounterReadWrite < 3) {}
  buildCounterReadWrite--;
  return o;
}

checkReadWrite(api.ReadWrite o) {
  buildCounterReadWrite++;
  if (buildCounterReadWrite < 3) {}
  buildCounterReadWrite--;
}

core.int buildCounterReplicaInfo = 0;
buildReplicaInfo() {
  var o = new api.ReplicaInfo();
  buildCounterReplicaInfo++;
  if (buildCounterReplicaInfo < 3) {
    o.defaultLeaderLocation = true;
    o.location = "foo";
    o.type = "foo";
  }
  buildCounterReplicaInfo--;
  return o;
}

checkReplicaInfo(api.ReplicaInfo o) {
  buildCounterReplicaInfo++;
  if (buildCounterReplicaInfo < 3) {
    unittest.expect(o.defaultLeaderLocation, unittest.isTrue);
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterReplicaInfo--;
}

core.int buildCounterRestoreDatabaseMetadata = 0;
buildRestoreDatabaseMetadata() {
  var o = new api.RestoreDatabaseMetadata();
  buildCounterRestoreDatabaseMetadata++;
  if (buildCounterRestoreDatabaseMetadata < 3) {
    o.backupInfo = buildBackupInfo();
    o.cancelTime = "foo";
    o.name = "foo";
    o.optimizeDatabaseOperationName = "foo";
    o.progress = buildOperationProgress();
    o.sourceType = "foo";
  }
  buildCounterRestoreDatabaseMetadata--;
  return o;
}

checkRestoreDatabaseMetadata(api.RestoreDatabaseMetadata o) {
  buildCounterRestoreDatabaseMetadata++;
  if (buildCounterRestoreDatabaseMetadata < 3) {
    checkBackupInfo(o.backupInfo);
    unittest.expect(o.cancelTime, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.optimizeDatabaseOperationName, unittest.equals('foo'));
    checkOperationProgress(o.progress);
    unittest.expect(o.sourceType, unittest.equals('foo'));
  }
  buildCounterRestoreDatabaseMetadata--;
}

core.int buildCounterRestoreDatabaseRequest = 0;
buildRestoreDatabaseRequest() {
  var o = new api.RestoreDatabaseRequest();
  buildCounterRestoreDatabaseRequest++;
  if (buildCounterRestoreDatabaseRequest < 3) {
    o.backup = "foo";
    o.databaseId = "foo";
  }
  buildCounterRestoreDatabaseRequest--;
  return o;
}

checkRestoreDatabaseRequest(api.RestoreDatabaseRequest o) {
  buildCounterRestoreDatabaseRequest++;
  if (buildCounterRestoreDatabaseRequest < 3) {
    unittest.expect(o.backup, unittest.equals('foo'));
    unittest.expect(o.databaseId, unittest.equals('foo'));
  }
  buildCounterRestoreDatabaseRequest--;
}

core.int buildCounterRestoreInfo = 0;
buildRestoreInfo() {
  var o = new api.RestoreInfo();
  buildCounterRestoreInfo++;
  if (buildCounterRestoreInfo < 3) {
    o.backupInfo = buildBackupInfo();
    o.sourceType = "foo";
  }
  buildCounterRestoreInfo--;
  return o;
}

checkRestoreInfo(api.RestoreInfo o) {
  buildCounterRestoreInfo++;
  if (buildCounterRestoreInfo < 3) {
    checkBackupInfo(o.backupInfo);
    unittest.expect(o.sourceType, unittest.equals('foo'));
  }
  buildCounterRestoreInfo--;
}

buildUnnamed3409() {
  var o = new core.List<core.Object>();
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  return o;
}

checkUnnamed3409(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted25 = (o[0]) as core.Map;
  unittest.expect(casted25, unittest.hasLength(3));
  unittest.expect(casted25["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted25["bool"], unittest.equals(true));
  unittest.expect(casted25["string"], unittest.equals('foo'));
  var casted26 = (o[1]) as core.Map;
  unittest.expect(casted26, unittest.hasLength(3));
  unittest.expect(casted26["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted26["bool"], unittest.equals(true));
  unittest.expect(casted26["string"], unittest.equals('foo'));
}

buildUnnamed3410() {
  var o = new core.List<core.List<core.Object>>();
  o.add(buildUnnamed3409());
  o.add(buildUnnamed3409());
  return o;
}

checkUnnamed3410(core.List<core.List<core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed3409(o[0]);
  checkUnnamed3409(o[1]);
}

core.int buildCounterResultSet = 0;
buildResultSet() {
  var o = new api.ResultSet();
  buildCounterResultSet++;
  if (buildCounterResultSet < 3) {
    o.metadata = buildResultSetMetadata();
    o.rows = buildUnnamed3410();
    o.stats = buildResultSetStats();
  }
  buildCounterResultSet--;
  return o;
}

checkResultSet(api.ResultSet o) {
  buildCounterResultSet++;
  if (buildCounterResultSet < 3) {
    checkResultSetMetadata(o.metadata);
    checkUnnamed3410(o.rows);
    checkResultSetStats(o.stats);
  }
  buildCounterResultSet--;
}

core.int buildCounterResultSetMetadata = 0;
buildResultSetMetadata() {
  var o = new api.ResultSetMetadata();
  buildCounterResultSetMetadata++;
  if (buildCounterResultSetMetadata < 3) {
    o.rowType = buildStructType();
    o.transaction = buildTransaction();
  }
  buildCounterResultSetMetadata--;
  return o;
}

checkResultSetMetadata(api.ResultSetMetadata o) {
  buildCounterResultSetMetadata++;
  if (buildCounterResultSetMetadata < 3) {
    checkStructType(o.rowType);
    checkTransaction(o.transaction);
  }
  buildCounterResultSetMetadata--;
}

buildUnnamed3411() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed3411(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted27 = (o["x"]) as core.Map;
  unittest.expect(casted27, unittest.hasLength(3));
  unittest.expect(casted27["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted27["bool"], unittest.equals(true));
  unittest.expect(casted27["string"], unittest.equals('foo'));
  var casted28 = (o["y"]) as core.Map;
  unittest.expect(casted28, unittest.hasLength(3));
  unittest.expect(casted28["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted28["bool"], unittest.equals(true));
  unittest.expect(casted28["string"], unittest.equals('foo'));
}

core.int buildCounterResultSetStats = 0;
buildResultSetStats() {
  var o = new api.ResultSetStats();
  buildCounterResultSetStats++;
  if (buildCounterResultSetStats < 3) {
    o.queryPlan = buildQueryPlan();
    o.queryStats = buildUnnamed3411();
    o.rowCountExact = "foo";
    o.rowCountLowerBound = "foo";
  }
  buildCounterResultSetStats--;
  return o;
}

checkResultSetStats(api.ResultSetStats o) {
  buildCounterResultSetStats++;
  if (buildCounterResultSetStats < 3) {
    checkQueryPlan(o.queryPlan);
    checkUnnamed3411(o.queryStats);
    unittest.expect(o.rowCountExact, unittest.equals('foo'));
    unittest.expect(o.rowCountLowerBound, unittest.equals('foo'));
  }
  buildCounterResultSetStats--;
}

core.int buildCounterRollbackRequest = 0;
buildRollbackRequest() {
  var o = new api.RollbackRequest();
  buildCounterRollbackRequest++;
  if (buildCounterRollbackRequest < 3) {
    o.transactionId = "foo";
  }
  buildCounterRollbackRequest--;
  return o;
}

checkRollbackRequest(api.RollbackRequest o) {
  buildCounterRollbackRequest++;
  if (buildCounterRollbackRequest < 3) {
    unittest.expect(o.transactionId, unittest.equals('foo'));
  }
  buildCounterRollbackRequest--;
}

buildUnnamed3412() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3412(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterSession = 0;
buildSession() {
  var o = new api.Session();
  buildCounterSession++;
  if (buildCounterSession < 3) {
    o.approximateLastUseTime = "foo";
    o.createTime = "foo";
    o.labels = buildUnnamed3412();
    o.name = "foo";
  }
  buildCounterSession--;
  return o;
}

checkSession(api.Session o) {
  buildCounterSession++;
  if (buildCounterSession < 3) {
    unittest.expect(o.approximateLastUseTime, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkUnnamed3412(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterSession--;
}

core.int buildCounterSetIamPolicyRequest = 0;
buildSetIamPolicyRequest() {
  var o = new api.SetIamPolicyRequest();
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    o.policy = buildPolicy();
  }
  buildCounterSetIamPolicyRequest--;
  return o;
}

checkSetIamPolicyRequest(api.SetIamPolicyRequest o) {
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    checkPolicy(o.policy);
  }
  buildCounterSetIamPolicyRequest--;
}

buildUnnamed3413() {
  var o = new core.Map<core.String, core.int>();
  o["x"] = 42;
  o["y"] = 42;
  return o;
}

checkUnnamed3413(core.Map<core.String, core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals(42));
  unittest.expect(o["y"], unittest.equals(42));
}

core.int buildCounterShortRepresentation = 0;
buildShortRepresentation() {
  var o = new api.ShortRepresentation();
  buildCounterShortRepresentation++;
  if (buildCounterShortRepresentation < 3) {
    o.description = "foo";
    o.subqueries = buildUnnamed3413();
  }
  buildCounterShortRepresentation--;
  return o;
}

checkShortRepresentation(api.ShortRepresentation o) {
  buildCounterShortRepresentation++;
  if (buildCounterShortRepresentation < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed3413(o.subqueries);
  }
  buildCounterShortRepresentation--;
}

buildUnnamed3414() {
  var o = new core.Map<core.String, api.Type>();
  o["x"] = buildType();
  o["y"] = buildType();
  return o;
}

checkUnnamed3414(core.Map<core.String, api.Type> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkType(o["x"]);
  checkType(o["y"]);
}

buildUnnamed3415() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed3415(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted29 = (o["x"]) as core.Map;
  unittest.expect(casted29, unittest.hasLength(3));
  unittest.expect(casted29["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted29["bool"], unittest.equals(true));
  unittest.expect(casted29["string"], unittest.equals('foo'));
  var casted30 = (o["y"]) as core.Map;
  unittest.expect(casted30, unittest.hasLength(3));
  unittest.expect(casted30["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted30["bool"], unittest.equals(true));
  unittest.expect(casted30["string"], unittest.equals('foo'));
}

core.int buildCounterStatement = 0;
buildStatement() {
  var o = new api.Statement();
  buildCounterStatement++;
  if (buildCounterStatement < 3) {
    o.paramTypes = buildUnnamed3414();
    o.params = buildUnnamed3415();
    o.sql = "foo";
  }
  buildCounterStatement--;
  return o;
}

checkStatement(api.Statement o) {
  buildCounterStatement++;
  if (buildCounterStatement < 3) {
    checkUnnamed3414(o.paramTypes);
    checkUnnamed3415(o.params);
    unittest.expect(o.sql, unittest.equals('foo'));
  }
  buildCounterStatement--;
}

buildUnnamed3416() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed3416(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted31 = (o["x"]) as core.Map;
  unittest.expect(casted31, unittest.hasLength(3));
  unittest.expect(casted31["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted31["bool"], unittest.equals(true));
  unittest.expect(casted31["string"], unittest.equals('foo'));
  var casted32 = (o["y"]) as core.Map;
  unittest.expect(casted32, unittest.hasLength(3));
  unittest.expect(casted32["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted32["bool"], unittest.equals(true));
  unittest.expect(casted32["string"], unittest.equals('foo'));
}

buildUnnamed3417() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed3416());
  o.add(buildUnnamed3416());
  return o;
}

checkUnnamed3417(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed3416(o[0]);
  checkUnnamed3416(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed3417();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed3417(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

buildUnnamed3418() {
  var o = new core.List<api.Field>();
  o.add(buildField());
  o.add(buildField());
  return o;
}

checkUnnamed3418(core.List<api.Field> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkField(o[0]);
  checkField(o[1]);
}

core.int buildCounterStructType = 0;
buildStructType() {
  var o = new api.StructType();
  buildCounterStructType++;
  if (buildCounterStructType < 3) {
    o.fields = buildUnnamed3418();
  }
  buildCounterStructType--;
  return o;
}

checkStructType(api.StructType o) {
  buildCounterStructType++;
  if (buildCounterStructType < 3) {
    checkUnnamed3418(o.fields);
  }
  buildCounterStructType--;
}

buildUnnamed3419() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3419(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
buildTestIamPermissionsRequest() {
  var o = new api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed3419();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed3419(o.permissions);
  }
  buildCounterTestIamPermissionsRequest--;
}

buildUnnamed3420() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3420(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
buildTestIamPermissionsResponse() {
  var o = new api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed3420();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed3420(o.permissions);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.int buildCounterTransaction = 0;
buildTransaction() {
  var o = new api.Transaction();
  buildCounterTransaction++;
  if (buildCounterTransaction < 3) {
    o.id = "foo";
    o.readTimestamp = "foo";
  }
  buildCounterTransaction--;
  return o;
}

checkTransaction(api.Transaction o) {
  buildCounterTransaction++;
  if (buildCounterTransaction < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.readTimestamp, unittest.equals('foo'));
  }
  buildCounterTransaction--;
}

core.int buildCounterTransactionOptions = 0;
buildTransactionOptions() {
  var o = new api.TransactionOptions();
  buildCounterTransactionOptions++;
  if (buildCounterTransactionOptions < 3) {
    o.partitionedDml = buildPartitionedDml();
    o.readOnly = buildReadOnly();
    o.readWrite = buildReadWrite();
  }
  buildCounterTransactionOptions--;
  return o;
}

checkTransactionOptions(api.TransactionOptions o) {
  buildCounterTransactionOptions++;
  if (buildCounterTransactionOptions < 3) {
    checkPartitionedDml(o.partitionedDml);
    checkReadOnly(o.readOnly);
    checkReadWrite(o.readWrite);
  }
  buildCounterTransactionOptions--;
}

core.int buildCounterTransactionSelector = 0;
buildTransactionSelector() {
  var o = new api.TransactionSelector();
  buildCounterTransactionSelector++;
  if (buildCounterTransactionSelector < 3) {
    o.begin = buildTransactionOptions();
    o.id = "foo";
    o.singleUse = buildTransactionOptions();
  }
  buildCounterTransactionSelector--;
  return o;
}

checkTransactionSelector(api.TransactionSelector o) {
  buildCounterTransactionSelector++;
  if (buildCounterTransactionSelector < 3) {
    checkTransactionOptions(o.begin);
    unittest.expect(o.id, unittest.equals('foo'));
    checkTransactionOptions(o.singleUse);
  }
  buildCounterTransactionSelector--;
}

core.int buildCounterType = 0;
buildType() {
  var o = new api.Type();
  buildCounterType++;
  if (buildCounterType < 3) {
    o.arrayElementType = buildType();
    o.code = "foo";
    o.structType = buildStructType();
  }
  buildCounterType--;
  return o;
}

checkType(api.Type o) {
  buildCounterType++;
  if (buildCounterType < 3) {
    checkType(o.arrayElementType);
    unittest.expect(o.code, unittest.equals('foo'));
    checkStructType(o.structType);
  }
  buildCounterType--;
}

buildUnnamed3421() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3421(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3422() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3422(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterUpdateDatabaseDdlMetadata = 0;
buildUpdateDatabaseDdlMetadata() {
  var o = new api.UpdateDatabaseDdlMetadata();
  buildCounterUpdateDatabaseDdlMetadata++;
  if (buildCounterUpdateDatabaseDdlMetadata < 3) {
    o.commitTimestamps = buildUnnamed3421();
    o.database = "foo";
    o.statements = buildUnnamed3422();
  }
  buildCounterUpdateDatabaseDdlMetadata--;
  return o;
}

checkUpdateDatabaseDdlMetadata(api.UpdateDatabaseDdlMetadata o) {
  buildCounterUpdateDatabaseDdlMetadata++;
  if (buildCounterUpdateDatabaseDdlMetadata < 3) {
    checkUnnamed3421(o.commitTimestamps);
    unittest.expect(o.database, unittest.equals('foo'));
    checkUnnamed3422(o.statements);
  }
  buildCounterUpdateDatabaseDdlMetadata--;
}

buildUnnamed3423() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3423(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterUpdateDatabaseDdlRequest = 0;
buildUpdateDatabaseDdlRequest() {
  var o = new api.UpdateDatabaseDdlRequest();
  buildCounterUpdateDatabaseDdlRequest++;
  if (buildCounterUpdateDatabaseDdlRequest < 3) {
    o.operationId = "foo";
    o.statements = buildUnnamed3423();
  }
  buildCounterUpdateDatabaseDdlRequest--;
  return o;
}

checkUpdateDatabaseDdlRequest(api.UpdateDatabaseDdlRequest o) {
  buildCounterUpdateDatabaseDdlRequest++;
  if (buildCounterUpdateDatabaseDdlRequest < 3) {
    unittest.expect(o.operationId, unittest.equals('foo'));
    checkUnnamed3423(o.statements);
  }
  buildCounterUpdateDatabaseDdlRequest--;
}

core.int buildCounterUpdateInstanceMetadata = 0;
buildUpdateInstanceMetadata() {
  var o = new api.UpdateInstanceMetadata();
  buildCounterUpdateInstanceMetadata++;
  if (buildCounterUpdateInstanceMetadata < 3) {
    o.cancelTime = "foo";
    o.endTime = "foo";
    o.instance = buildInstance();
    o.startTime = "foo";
  }
  buildCounterUpdateInstanceMetadata--;
  return o;
}

checkUpdateInstanceMetadata(api.UpdateInstanceMetadata o) {
  buildCounterUpdateInstanceMetadata++;
  if (buildCounterUpdateInstanceMetadata < 3) {
    unittest.expect(o.cancelTime, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    checkInstance(o.instance);
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterUpdateInstanceMetadata--;
}

core.int buildCounterUpdateInstanceRequest = 0;
buildUpdateInstanceRequest() {
  var o = new api.UpdateInstanceRequest();
  buildCounterUpdateInstanceRequest++;
  if (buildCounterUpdateInstanceRequest < 3) {
    o.fieldMask = "foo";
    o.instance = buildInstance();
  }
  buildCounterUpdateInstanceRequest--;
  return o;
}

checkUpdateInstanceRequest(api.UpdateInstanceRequest o) {
  buildCounterUpdateInstanceRequest++;
  if (buildCounterUpdateInstanceRequest < 3) {
    unittest.expect(o.fieldMask, unittest.equals('foo'));
    checkInstance(o.instance);
  }
  buildCounterUpdateInstanceRequest--;
}

buildUnnamed3424() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3424(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3425() {
  var o = new core.List<core.Object>();
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  return o;
}

checkUnnamed3425(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted33 = (o[0]) as core.Map;
  unittest.expect(casted33, unittest.hasLength(3));
  unittest.expect(casted33["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted33["bool"], unittest.equals(true));
  unittest.expect(casted33["string"], unittest.equals('foo'));
  var casted34 = (o[1]) as core.Map;
  unittest.expect(casted34, unittest.hasLength(3));
  unittest.expect(casted34["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted34["bool"], unittest.equals(true));
  unittest.expect(casted34["string"], unittest.equals('foo'));
}

buildUnnamed3426() {
  var o = new core.List<core.List<core.Object>>();
  o.add(buildUnnamed3425());
  o.add(buildUnnamed3425());
  return o;
}

checkUnnamed3426(core.List<core.List<core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed3425(o[0]);
  checkUnnamed3425(o[1]);
}

core.int buildCounterWrite = 0;
buildWrite() {
  var o = new api.Write();
  buildCounterWrite++;
  if (buildCounterWrite < 3) {
    o.columns = buildUnnamed3424();
    o.table = "foo";
    o.values = buildUnnamed3426();
  }
  buildCounterWrite--;
  return o;
}

checkWrite(api.Write o) {
  buildCounterWrite++;
  if (buildCounterWrite < 3) {
    checkUnnamed3424(o.columns);
    unittest.expect(o.table, unittest.equals('foo'));
    checkUnnamed3426(o.values);
  }
  buildCounterWrite--;
}

main() {
  unittest.group("obj-schema-Backup", () {
    unittest.test("to-json--from-json", () {
      var o = buildBackup();
      var od = new api.Backup.fromJson(o.toJson());
      checkBackup(od);
    });
  });

  unittest.group("obj-schema-BackupInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildBackupInfo();
      var od = new api.BackupInfo.fromJson(o.toJson());
      checkBackupInfo(od);
    });
  });

  unittest.group("obj-schema-BatchCreateSessionsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchCreateSessionsRequest();
      var od = new api.BatchCreateSessionsRequest.fromJson(o.toJson());
      checkBatchCreateSessionsRequest(od);
    });
  });

  unittest.group("obj-schema-BatchCreateSessionsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchCreateSessionsResponse();
      var od = new api.BatchCreateSessionsResponse.fromJson(o.toJson());
      checkBatchCreateSessionsResponse(od);
    });
  });

  unittest.group("obj-schema-BeginTransactionRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildBeginTransactionRequest();
      var od = new api.BeginTransactionRequest.fromJson(o.toJson());
      checkBeginTransactionRequest(od);
    });
  });

  unittest.group("obj-schema-Binding", () {
    unittest.test("to-json--from-json", () {
      var o = buildBinding();
      var od = new api.Binding.fromJson(o.toJson());
      checkBinding(od);
    });
  });

  unittest.group("obj-schema-ChildLink", () {
    unittest.test("to-json--from-json", () {
      var o = buildChildLink();
      var od = new api.ChildLink.fromJson(o.toJson());
      checkChildLink(od);
    });
  });

  unittest.group("obj-schema-CommitRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommitRequest();
      var od = new api.CommitRequest.fromJson(o.toJson());
      checkCommitRequest(od);
    });
  });

  unittest.group("obj-schema-CommitResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommitResponse();
      var od = new api.CommitResponse.fromJson(o.toJson());
      checkCommitResponse(od);
    });
  });

  unittest.group("obj-schema-CreateBackupMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateBackupMetadata();
      var od = new api.CreateBackupMetadata.fromJson(o.toJson());
      checkCreateBackupMetadata(od);
    });
  });

  unittest.group("obj-schema-CreateDatabaseMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateDatabaseMetadata();
      var od = new api.CreateDatabaseMetadata.fromJson(o.toJson());
      checkCreateDatabaseMetadata(od);
    });
  });

  unittest.group("obj-schema-CreateDatabaseRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateDatabaseRequest();
      var od = new api.CreateDatabaseRequest.fromJson(o.toJson());
      checkCreateDatabaseRequest(od);
    });
  });

  unittest.group("obj-schema-CreateInstanceMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateInstanceMetadata();
      var od = new api.CreateInstanceMetadata.fromJson(o.toJson());
      checkCreateInstanceMetadata(od);
    });
  });

  unittest.group("obj-schema-CreateInstanceRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateInstanceRequest();
      var od = new api.CreateInstanceRequest.fromJson(o.toJson());
      checkCreateInstanceRequest(od);
    });
  });

  unittest.group("obj-schema-CreateSessionRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateSessionRequest();
      var od = new api.CreateSessionRequest.fromJson(o.toJson());
      checkCreateSessionRequest(od);
    });
  });

  unittest.group("obj-schema-Database", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatabase();
      var od = new api.Database.fromJson(o.toJson());
      checkDatabase(od);
    });
  });

  unittest.group("obj-schema-Delete", () {
    unittest.test("to-json--from-json", () {
      var o = buildDelete();
      var od = new api.Delete.fromJson(o.toJson());
      checkDelete(od);
    });
  });

  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group("obj-schema-ExecuteBatchDmlRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildExecuteBatchDmlRequest();
      var od = new api.ExecuteBatchDmlRequest.fromJson(o.toJson());
      checkExecuteBatchDmlRequest(od);
    });
  });

  unittest.group("obj-schema-ExecuteBatchDmlResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildExecuteBatchDmlResponse();
      var od = new api.ExecuteBatchDmlResponse.fromJson(o.toJson());
      checkExecuteBatchDmlResponse(od);
    });
  });

  unittest.group("obj-schema-ExecuteSqlRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildExecuteSqlRequest();
      var od = new api.ExecuteSqlRequest.fromJson(o.toJson());
      checkExecuteSqlRequest(od);
    });
  });

  unittest.group("obj-schema-Expr", () {
    unittest.test("to-json--from-json", () {
      var o = buildExpr();
      var od = new api.Expr.fromJson(o.toJson());
      checkExpr(od);
    });
  });

  unittest.group("obj-schema-Field", () {
    unittest.test("to-json--from-json", () {
      var o = buildField();
      var od = new api.Field.fromJson(o.toJson());
      checkField(od);
    });
  });

  unittest.group("obj-schema-GetDatabaseDdlResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetDatabaseDdlResponse();
      var od = new api.GetDatabaseDdlResponse.fromJson(o.toJson());
      checkGetDatabaseDdlResponse(od);
    });
  });

  unittest.group("obj-schema-GetIamPolicyRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetIamPolicyRequest();
      var od = new api.GetIamPolicyRequest.fromJson(o.toJson());
      checkGetIamPolicyRequest(od);
    });
  });

  unittest.group("obj-schema-GetPolicyOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetPolicyOptions();
      var od = new api.GetPolicyOptions.fromJson(o.toJson());
      checkGetPolicyOptions(od);
    });
  });

  unittest.group("obj-schema-Instance", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstance();
      var od = new api.Instance.fromJson(o.toJson());
      checkInstance(od);
    });
  });

  unittest.group("obj-schema-InstanceConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstanceConfig();
      var od = new api.InstanceConfig.fromJson(o.toJson());
      checkInstanceConfig(od);
    });
  });

  unittest.group("obj-schema-KeyRange", () {
    unittest.test("to-json--from-json", () {
      var o = buildKeyRange();
      var od = new api.KeyRange.fromJson(o.toJson());
      checkKeyRange(od);
    });
  });

  unittest.group("obj-schema-KeySet", () {
    unittest.test("to-json--from-json", () {
      var o = buildKeySet();
      var od = new api.KeySet.fromJson(o.toJson());
      checkKeySet(od);
    });
  });

  unittest.group("obj-schema-ListBackupOperationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListBackupOperationsResponse();
      var od = new api.ListBackupOperationsResponse.fromJson(o.toJson());
      checkListBackupOperationsResponse(od);
    });
  });

  unittest.group("obj-schema-ListBackupsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListBackupsResponse();
      var od = new api.ListBackupsResponse.fromJson(o.toJson());
      checkListBackupsResponse(od);
    });
  });

  unittest.group("obj-schema-ListDatabaseOperationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListDatabaseOperationsResponse();
      var od = new api.ListDatabaseOperationsResponse.fromJson(o.toJson());
      checkListDatabaseOperationsResponse(od);
    });
  });

  unittest.group("obj-schema-ListDatabasesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListDatabasesResponse();
      var od = new api.ListDatabasesResponse.fromJson(o.toJson());
      checkListDatabasesResponse(od);
    });
  });

  unittest.group("obj-schema-ListInstanceConfigsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListInstanceConfigsResponse();
      var od = new api.ListInstanceConfigsResponse.fromJson(o.toJson());
      checkListInstanceConfigsResponse(od);
    });
  });

  unittest.group("obj-schema-ListInstancesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListInstancesResponse();
      var od = new api.ListInstancesResponse.fromJson(o.toJson());
      checkListInstancesResponse(od);
    });
  });

  unittest.group("obj-schema-ListOperationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListOperationsResponse();
      var od = new api.ListOperationsResponse.fromJson(o.toJson());
      checkListOperationsResponse(od);
    });
  });

  unittest.group("obj-schema-ListSessionsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListSessionsResponse();
      var od = new api.ListSessionsResponse.fromJson(o.toJson());
      checkListSessionsResponse(od);
    });
  });

  unittest.group("obj-schema-Mutation", () {
    unittest.test("to-json--from-json", () {
      var o = buildMutation();
      var od = new api.Mutation.fromJson(o.toJson());
      checkMutation(od);
    });
  });

  unittest.group("obj-schema-Operation", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperation();
      var od = new api.Operation.fromJson(o.toJson());
      checkOperation(od);
    });
  });

  unittest.group("obj-schema-OperationProgress", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperationProgress();
      var od = new api.OperationProgress.fromJson(o.toJson());
      checkOperationProgress(od);
    });
  });

  unittest.group("obj-schema-OptimizeRestoredDatabaseMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildOptimizeRestoredDatabaseMetadata();
      var od = new api.OptimizeRestoredDatabaseMetadata.fromJson(o.toJson());
      checkOptimizeRestoredDatabaseMetadata(od);
    });
  });

  unittest.group("obj-schema-PartialResultSet", () {
    unittest.test("to-json--from-json", () {
      var o = buildPartialResultSet();
      var od = new api.PartialResultSet.fromJson(o.toJson());
      checkPartialResultSet(od);
    });
  });

  unittest.group("obj-schema-Partition", () {
    unittest.test("to-json--from-json", () {
      var o = buildPartition();
      var od = new api.Partition.fromJson(o.toJson());
      checkPartition(od);
    });
  });

  unittest.group("obj-schema-PartitionOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildPartitionOptions();
      var od = new api.PartitionOptions.fromJson(o.toJson());
      checkPartitionOptions(od);
    });
  });

  unittest.group("obj-schema-PartitionQueryRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildPartitionQueryRequest();
      var od = new api.PartitionQueryRequest.fromJson(o.toJson());
      checkPartitionQueryRequest(od);
    });
  });

  unittest.group("obj-schema-PartitionReadRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildPartitionReadRequest();
      var od = new api.PartitionReadRequest.fromJson(o.toJson());
      checkPartitionReadRequest(od);
    });
  });

  unittest.group("obj-schema-PartitionResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildPartitionResponse();
      var od = new api.PartitionResponse.fromJson(o.toJson());
      checkPartitionResponse(od);
    });
  });

  unittest.group("obj-schema-PartitionedDml", () {
    unittest.test("to-json--from-json", () {
      var o = buildPartitionedDml();
      var od = new api.PartitionedDml.fromJson(o.toJson());
      checkPartitionedDml(od);
    });
  });

  unittest.group("obj-schema-PlanNode", () {
    unittest.test("to-json--from-json", () {
      var o = buildPlanNode();
      var od = new api.PlanNode.fromJson(o.toJson());
      checkPlanNode(od);
    });
  });

  unittest.group("obj-schema-Policy", () {
    unittest.test("to-json--from-json", () {
      var o = buildPolicy();
      var od = new api.Policy.fromJson(o.toJson());
      checkPolicy(od);
    });
  });

  unittest.group("obj-schema-QueryOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildQueryOptions();
      var od = new api.QueryOptions.fromJson(o.toJson());
      checkQueryOptions(od);
    });
  });

  unittest.group("obj-schema-QueryPlan", () {
    unittest.test("to-json--from-json", () {
      var o = buildQueryPlan();
      var od = new api.QueryPlan.fromJson(o.toJson());
      checkQueryPlan(od);
    });
  });

  unittest.group("obj-schema-ReadOnly", () {
    unittest.test("to-json--from-json", () {
      var o = buildReadOnly();
      var od = new api.ReadOnly.fromJson(o.toJson());
      checkReadOnly(od);
    });
  });

  unittest.group("obj-schema-ReadRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildReadRequest();
      var od = new api.ReadRequest.fromJson(o.toJson());
      checkReadRequest(od);
    });
  });

  unittest.group("obj-schema-ReadWrite", () {
    unittest.test("to-json--from-json", () {
      var o = buildReadWrite();
      var od = new api.ReadWrite.fromJson(o.toJson());
      checkReadWrite(od);
    });
  });

  unittest.group("obj-schema-ReplicaInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildReplicaInfo();
      var od = new api.ReplicaInfo.fromJson(o.toJson());
      checkReplicaInfo(od);
    });
  });

  unittest.group("obj-schema-RestoreDatabaseMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildRestoreDatabaseMetadata();
      var od = new api.RestoreDatabaseMetadata.fromJson(o.toJson());
      checkRestoreDatabaseMetadata(od);
    });
  });

  unittest.group("obj-schema-RestoreDatabaseRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildRestoreDatabaseRequest();
      var od = new api.RestoreDatabaseRequest.fromJson(o.toJson());
      checkRestoreDatabaseRequest(od);
    });
  });

  unittest.group("obj-schema-RestoreInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildRestoreInfo();
      var od = new api.RestoreInfo.fromJson(o.toJson());
      checkRestoreInfo(od);
    });
  });

  unittest.group("obj-schema-ResultSet", () {
    unittest.test("to-json--from-json", () {
      var o = buildResultSet();
      var od = new api.ResultSet.fromJson(o.toJson());
      checkResultSet(od);
    });
  });

  unittest.group("obj-schema-ResultSetMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildResultSetMetadata();
      var od = new api.ResultSetMetadata.fromJson(o.toJson());
      checkResultSetMetadata(od);
    });
  });

  unittest.group("obj-schema-ResultSetStats", () {
    unittest.test("to-json--from-json", () {
      var o = buildResultSetStats();
      var od = new api.ResultSetStats.fromJson(o.toJson());
      checkResultSetStats(od);
    });
  });

  unittest.group("obj-schema-RollbackRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildRollbackRequest();
      var od = new api.RollbackRequest.fromJson(o.toJson());
      checkRollbackRequest(od);
    });
  });

  unittest.group("obj-schema-Session", () {
    unittest.test("to-json--from-json", () {
      var o = buildSession();
      var od = new api.Session.fromJson(o.toJson());
      checkSession(od);
    });
  });

  unittest.group("obj-schema-SetIamPolicyRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSetIamPolicyRequest();
      var od = new api.SetIamPolicyRequest.fromJson(o.toJson());
      checkSetIamPolicyRequest(od);
    });
  });

  unittest.group("obj-schema-ShortRepresentation", () {
    unittest.test("to-json--from-json", () {
      var o = buildShortRepresentation();
      var od = new api.ShortRepresentation.fromJson(o.toJson());
      checkShortRepresentation(od);
    });
  });

  unittest.group("obj-schema-Statement", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatement();
      var od = new api.Statement.fromJson(o.toJson());
      checkStatement(od);
    });
  });

  unittest.group("obj-schema-Status", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatus();
      var od = new api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });

  unittest.group("obj-schema-StructType", () {
    unittest.test("to-json--from-json", () {
      var o = buildStructType();
      var od = new api.StructType.fromJson(o.toJson());
      checkStructType(od);
    });
  });

  unittest.group("obj-schema-TestIamPermissionsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestIamPermissionsRequest();
      var od = new api.TestIamPermissionsRequest.fromJson(o.toJson());
      checkTestIamPermissionsRequest(od);
    });
  });

  unittest.group("obj-schema-TestIamPermissionsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestIamPermissionsResponse();
      var od = new api.TestIamPermissionsResponse.fromJson(o.toJson());
      checkTestIamPermissionsResponse(od);
    });
  });

  unittest.group("obj-schema-Transaction", () {
    unittest.test("to-json--from-json", () {
      var o = buildTransaction();
      var od = new api.Transaction.fromJson(o.toJson());
      checkTransaction(od);
    });
  });

  unittest.group("obj-schema-TransactionOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildTransactionOptions();
      var od = new api.TransactionOptions.fromJson(o.toJson());
      checkTransactionOptions(od);
    });
  });

  unittest.group("obj-schema-TransactionSelector", () {
    unittest.test("to-json--from-json", () {
      var o = buildTransactionSelector();
      var od = new api.TransactionSelector.fromJson(o.toJson());
      checkTransactionSelector(od);
    });
  });

  unittest.group("obj-schema-Type", () {
    unittest.test("to-json--from-json", () {
      var o = buildType();
      var od = new api.Type.fromJson(o.toJson());
      checkType(od);
    });
  });

  unittest.group("obj-schema-UpdateDatabaseDdlMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateDatabaseDdlMetadata();
      var od = new api.UpdateDatabaseDdlMetadata.fromJson(o.toJson());
      checkUpdateDatabaseDdlMetadata(od);
    });
  });

  unittest.group("obj-schema-UpdateDatabaseDdlRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateDatabaseDdlRequest();
      var od = new api.UpdateDatabaseDdlRequest.fromJson(o.toJson());
      checkUpdateDatabaseDdlRequest(od);
    });
  });

  unittest.group("obj-schema-UpdateInstanceMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateInstanceMetadata();
      var od = new api.UpdateInstanceMetadata.fromJson(o.toJson());
      checkUpdateInstanceMetadata(od);
    });
  });

  unittest.group("obj-schema-UpdateInstanceRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateInstanceRequest();
      var od = new api.UpdateInstanceRequest.fromJson(o.toJson());
      checkUpdateInstanceRequest(od);
    });
  });

  unittest.group("obj-schema-Write", () {
    unittest.test("to-json--from-json", () {
      var o = buildWrite();
      var od = new api.Write.fromJson(o.toJson());
      checkWrite(od);
    });
  });

  unittest.group("resource-ProjectsInstanceConfigsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsInstanceConfigsResourceApi res =
          new api.SpannerApi(mock).projects.instanceConfigs;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildInstanceConfig());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkInstanceConfig(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsInstanceConfigsResourceApi res =
          new api.SpannerApi(mock).projects.instanceConfigs;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListInstanceConfigsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListInstanceConfigsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsInstancesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesResourceApi res =
          new api.SpannerApi(mock).projects.instances;
      var arg_request = buildCreateInstanceRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CreateInstanceRequest.fromJson(json);
        checkCreateInstanceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesResourceApi res =
          new api.SpannerApi(mock).projects.instances;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesResourceApi res =
          new api.SpannerApi(mock).projects.instances;
      var arg_name = "foo";
      var arg_fieldMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["fieldMask"].first, unittest.equals(arg_fieldMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildInstance());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, fieldMask: arg_fieldMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkInstance(response);
      })));
    });

    unittest.test("method--getIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesResourceApi res =
          new api.SpannerApi(mock).projects.instances;
      var arg_request = buildGetIamPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GetIamPolicyRequest.fromJson(json);
        checkGetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesResourceApi res =
          new api.SpannerApi(mock).projects.instances;
      var arg_parent = "foo";
      var arg_filter = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListInstancesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListInstancesResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesResourceApi res =
          new api.SpannerApi(mock).projects.instances;
      var arg_request = buildUpdateInstanceRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.UpdateInstanceRequest.fromJson(json);
        checkUpdateInstanceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--setIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesResourceApi res =
          new api.SpannerApi(mock).projects.instances;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SetIamPolicyRequest.fromJson(json);
        checkSetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--testIamPermissions", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesResourceApi res =
          new api.SpannerApi(mock).projects.instances;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TestIamPermissionsRequest.fromJson(json);
        checkTestIamPermissionsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestIamPermissionsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsInstancesBackupOperationsResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesBackupOperationsResourceApi res =
          new api.SpannerApi(mock).projects.instances.backupOperations;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_filter = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListBackupOperationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListBackupOperationsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsInstancesBackupsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesBackupsResourceApi res =
          new api.SpannerApi(mock).projects.instances.backups;
      var arg_request = buildBackup();
      var arg_parent = "foo";
      var arg_backupId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Backup.fromJson(json);
        checkBackup(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["backupId"].first, unittest.equals(arg_backupId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              backupId: arg_backupId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesBackupsResourceApi res =
          new api.SpannerApi(mock).projects.instances.backups;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesBackupsResourceApi res =
          new api.SpannerApi(mock).projects.instances.backups;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildBackup());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBackup(response);
      })));
    });

    unittest.test("method--getIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesBackupsResourceApi res =
          new api.SpannerApi(mock).projects.instances.backups;
      var arg_request = buildGetIamPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GetIamPolicyRequest.fromJson(json);
        checkGetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesBackupsResourceApi res =
          new api.SpannerApi(mock).projects.instances.backups;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_filter = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListBackupsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListBackupsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesBackupsResourceApi res =
          new api.SpannerApi(mock).projects.instances.backups;
      var arg_request = buildBackup();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Backup.fromJson(json);
        checkBackup(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildBackup());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBackup(response);
      })));
    });

    unittest.test("method--setIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesBackupsResourceApi res =
          new api.SpannerApi(mock).projects.instances.backups;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SetIamPolicyRequest.fromJson(json);
        checkSetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--testIamPermissions", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesBackupsResourceApi res =
          new api.SpannerApi(mock).projects.instances.backups;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TestIamPermissionsRequest.fromJson(json);
        checkTestIamPermissionsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestIamPermissionsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsInstancesBackupsOperationsResourceApi", () {
    unittest.test("method--cancel", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesBackupsOperationsResourceApi res =
          new api.SpannerApi(mock).projects.instances.backups.operations;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancel(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesBackupsOperationsResourceApi res =
          new api.SpannerApi(mock).projects.instances.backups.operations;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesBackupsOperationsResourceApi res =
          new api.SpannerApi(mock).projects.instances.backups.operations;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesBackupsOperationsResourceApi res =
          new api.SpannerApi(mock).projects.instances.backups.operations;
      var arg_name = "foo";
      var arg_filter = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListOperationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              filter: arg_filter,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListOperationsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsInstancesDatabaseOperationsResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesDatabaseOperationsResourceApi res =
          new api.SpannerApi(mock).projects.instances.databaseOperations;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_filter = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListDatabaseOperationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListDatabaseOperationsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsInstancesDatabasesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesDatabasesResourceApi res =
          new api.SpannerApi(mock).projects.instances.databases;
      var arg_request = buildCreateDatabaseRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CreateDatabaseRequest.fromJson(json);
        checkCreateDatabaseRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--dropDatabase", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesDatabasesResourceApi res =
          new api.SpannerApi(mock).projects.instances.databases;
      var arg_database = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .dropDatabase(arg_database, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesDatabasesResourceApi res =
          new api.SpannerApi(mock).projects.instances.databases;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildDatabase());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDatabase(response);
      })));
    });

    unittest.test("method--getDdl", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesDatabasesResourceApi res =
          new api.SpannerApi(mock).projects.instances.databases;
      var arg_database = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGetDatabaseDdlResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getDdl(arg_database, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGetDatabaseDdlResponse(response);
      })));
    });

    unittest.test("method--getIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesDatabasesResourceApi res =
          new api.SpannerApi(mock).projects.instances.databases;
      var arg_request = buildGetIamPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GetIamPolicyRequest.fromJson(json);
        checkGetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesDatabasesResourceApi res =
          new api.SpannerApi(mock).projects.instances.databases;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListDatabasesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListDatabasesResponse(response);
      })));
    });

    unittest.test("method--restore", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesDatabasesResourceApi res =
          new api.SpannerApi(mock).projects.instances.databases;
      var arg_request = buildRestoreDatabaseRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.RestoreDatabaseRequest.fromJson(json);
        checkRestoreDatabaseRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .restore(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--setIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesDatabasesResourceApi res =
          new api.SpannerApi(mock).projects.instances.databases;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SetIamPolicyRequest.fromJson(json);
        checkSetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--testIamPermissions", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesDatabasesResourceApi res =
          new api.SpannerApi(mock).projects.instances.databases;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TestIamPermissionsRequest.fromJson(json);
        checkTestIamPermissionsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestIamPermissionsResponse(response);
      })));
    });

    unittest.test("method--updateDdl", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesDatabasesResourceApi res =
          new api.SpannerApi(mock).projects.instances.databases;
      var arg_request = buildUpdateDatabaseDdlRequest();
      var arg_database = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.UpdateDatabaseDdlRequest.fromJson(json);
        checkUpdateDatabaseDdlRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateDdl(arg_request, arg_database, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-ProjectsInstancesDatabasesOperationsResourceApi",
      () {
    unittest.test("method--cancel", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesDatabasesOperationsResourceApi res =
          new api.SpannerApi(mock).projects.instances.databases.operations;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancel(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesDatabasesOperationsResourceApi res =
          new api.SpannerApi(mock).projects.instances.databases.operations;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesDatabasesOperationsResourceApi res =
          new api.SpannerApi(mock).projects.instances.databases.operations;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesDatabasesOperationsResourceApi res =
          new api.SpannerApi(mock).projects.instances.databases.operations;
      var arg_name = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_filter = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListOperationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListOperationsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsInstancesDatabasesSessionsResourceApi", () {
    unittest.test("method--batchCreate", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesDatabasesSessionsResourceApi res =
          new api.SpannerApi(mock).projects.instances.databases.sessions;
      var arg_request = buildBatchCreateSessionsRequest();
      var arg_database = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.BatchCreateSessionsRequest.fromJson(json);
        checkBatchCreateSessionsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildBatchCreateSessionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchCreate(arg_request, arg_database, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBatchCreateSessionsResponse(response);
      })));
    });

    unittest.test("method--beginTransaction", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesDatabasesSessionsResourceApi res =
          new api.SpannerApi(mock).projects.instances.databases.sessions;
      var arg_request = buildBeginTransactionRequest();
      var arg_session = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.BeginTransactionRequest.fromJson(json);
        checkBeginTransactionRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildTransaction());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .beginTransaction(arg_request, arg_session, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTransaction(response);
      })));
    });

    unittest.test("method--commit", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesDatabasesSessionsResourceApi res =
          new api.SpannerApi(mock).projects.instances.databases.sessions;
      var arg_request = buildCommitRequest();
      var arg_session = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CommitRequest.fromJson(json);
        checkCommitRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildCommitResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .commit(arg_request, arg_session, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCommitResponse(response);
      })));
    });

    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesDatabasesSessionsResourceApi res =
          new api.SpannerApi(mock).projects.instances.databases.sessions;
      var arg_request = buildCreateSessionRequest();
      var arg_database = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CreateSessionRequest.fromJson(json);
        checkCreateSessionRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSession());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_database, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSession(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesDatabasesSessionsResourceApi res =
          new api.SpannerApi(mock).projects.instances.databases.sessions;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--executeBatchDml", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesDatabasesSessionsResourceApi res =
          new api.SpannerApi(mock).projects.instances.databases.sessions;
      var arg_request = buildExecuteBatchDmlRequest();
      var arg_session = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ExecuteBatchDmlRequest.fromJson(json);
        checkExecuteBatchDmlRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildExecuteBatchDmlResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .executeBatchDml(arg_request, arg_session, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkExecuteBatchDmlResponse(response);
      })));
    });

    unittest.test("method--executeSql", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesDatabasesSessionsResourceApi res =
          new api.SpannerApi(mock).projects.instances.databases.sessions;
      var arg_request = buildExecuteSqlRequest();
      var arg_session = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ExecuteSqlRequest.fromJson(json);
        checkExecuteSqlRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildResultSet());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .executeSql(arg_request, arg_session, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkResultSet(response);
      })));
    });

    unittest.test("method--executeStreamingSql", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesDatabasesSessionsResourceApi res =
          new api.SpannerApi(mock).projects.instances.databases.sessions;
      var arg_request = buildExecuteSqlRequest();
      var arg_session = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ExecuteSqlRequest.fromJson(json);
        checkExecuteSqlRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPartialResultSet());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .executeStreamingSql(arg_request, arg_session, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPartialResultSet(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesDatabasesSessionsResourceApi res =
          new api.SpannerApi(mock).projects.instances.databases.sessions;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSession());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSession(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesDatabasesSessionsResourceApi res =
          new api.SpannerApi(mock).projects.instances.databases.sessions;
      var arg_database = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_filter = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListSessionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_database,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListSessionsResponse(response);
      })));
    });

    unittest.test("method--partitionQuery", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesDatabasesSessionsResourceApi res =
          new api.SpannerApi(mock).projects.instances.databases.sessions;
      var arg_request = buildPartitionQueryRequest();
      var arg_session = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.PartitionQueryRequest.fromJson(json);
        checkPartitionQueryRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPartitionResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .partitionQuery(arg_request, arg_session, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPartitionResponse(response);
      })));
    });

    unittest.test("method--partitionRead", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesDatabasesSessionsResourceApi res =
          new api.SpannerApi(mock).projects.instances.databases.sessions;
      var arg_request = buildPartitionReadRequest();
      var arg_session = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.PartitionReadRequest.fromJson(json);
        checkPartitionReadRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPartitionResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .partitionRead(arg_request, arg_session, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPartitionResponse(response);
      })));
    });

    unittest.test("method--read", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesDatabasesSessionsResourceApi res =
          new api.SpannerApi(mock).projects.instances.databases.sessions;
      var arg_request = buildReadRequest();
      var arg_session = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ReadRequest.fromJson(json);
        checkReadRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildResultSet());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .read(arg_request, arg_session, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkResultSet(response);
      })));
    });

    unittest.test("method--rollback", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesDatabasesSessionsResourceApi res =
          new api.SpannerApi(mock).projects.instances.databases.sessions;
      var arg_request = buildRollbackRequest();
      var arg_session = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.RollbackRequest.fromJson(json);
        checkRollbackRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .rollback(arg_request, arg_session, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--streamingRead", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesDatabasesSessionsResourceApi res =
          new api.SpannerApi(mock).projects.instances.databases.sessions;
      var arg_request = buildReadRequest();
      var arg_session = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ReadRequest.fromJson(json);
        checkReadRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPartialResultSet());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .streamingRead(arg_request, arg_session, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPartialResultSet(response);
      })));
    });
  });

  unittest.group("resource-ProjectsInstancesOperationsResourceApi", () {
    unittest.test("method--cancel", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesOperationsResourceApi res =
          new api.SpannerApi(mock).projects.instances.operations;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancel(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesOperationsResourceApi res =
          new api.SpannerApi(mock).projects.instances.operations;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesOperationsResourceApi res =
          new api.SpannerApi(mock).projects.instances.operations;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesOperationsResourceApi res =
          new api.SpannerApi(mock).projects.instances.operations;
      var arg_name = "foo";
      var arg_filter = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListOperationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              filter: arg_filter,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListOperationsResponse(response);
      })));
    });
  });
}
