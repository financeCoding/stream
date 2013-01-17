//Auto-generated by RSP Compiler
//Source: test/features/webapp/includerView.rsp.html
part of library_features;

/** Template, includerView, for rendering the view. */
void includerView(HttpConnect connect) { //3
  final request = connect.request, response = connect.response,
    output = response.outputStream;
  var _v_;
  if (!connect.isIncluded)
    response.headers.contentType = new ContentType.fromString("""text/html; charset=utf-8""");

  output.writeString("""

<html>
  <head>
    <title>Test of Include</title>
    <link href="/theme.css" rel="stylesheet" type="text/css" />
  </head>
  <body>
    <ul>
      <li>You shall see something inside the following two boxes.</li>
    </ul>
    <div style="border: 1px solid blue">
"""); //#3

  connect.server.include(connect, """/frag.html""", success: () { //#14

    output.writeString("""
    </div>
    <div style="border: 1px solid red">
"""); //#15

    connect.server.include(connect, """/frag""", success: () { //#17

      output.writeString("""
    </div>
  </body>
</html>
"""); //#18

      if (!connect.isIncluded)
        output.close();

    }); //end-of-include
  }); //end-of-include
}