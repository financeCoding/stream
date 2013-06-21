//Auto-generated by RSP Compiler
//Source: ../listView.rsp.html
part of hello_mvc;

/** Template, listView, for rendering the view. */
Future listView(HttpConnect connect, {String path, List<FileInfo> infos}) { //#3
  var _t0_, _cs_ = new List<HttpConnect>();
  HttpRequest request = connect.request;
  HttpResponse response = connect.response;
  Rsp.init(connect, "text/html; charset=utf-8");

  response.write("""<!DOCTYPE html>
<html>
  <head>
    <title>Stream: Hello MVC</title>
    <link href="theme.css" rel="stylesheet" type="text/css" />
  </head>
  <body>
    <h1>Directory: """); //#3

  response.write(Rsp.nnx(path)); //#10


  response.write("""</h1>

    <table border="1px" cellspacing="0">
      <tr>
        <th>Type</th>
        <th>Name</th>
      </tr>
"""); //#10

  for (var info in infos) { //for#17

    response.write("""      <tr>
        <td><img src=\""""); //#18

    response.write(Rsp.nnx(info.isDirectory ? 'file.png': 'directory.png')); //#19


    response.write(""""/></td>
        <td>"""); //#19

    response.write(Rsp.nnx(info.name)); //#20


    response.write("""</td>
      </tr>
"""); //#20
  } //for

  response.write("""    </table>

    <ul>
      <li>Please refer to
  <a href="https://github.com/rikulo/stream/tree/master/example/hello-mvc">Github</a> for how it is implemented.</a></li></ul>
  </body>
</html>
"""); //#23

  return Rsp.nnf();
}
