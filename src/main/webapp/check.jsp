<%@ page import="java.io.File" %>
<%@ page import="net.sourceforge.plantuml.security.SFile" %>
Check DOT
<%
	final File all[] = new File[] { new File("/usr/local/bin/dot"), new File("/usr/bin/dot"),
									new File("/opt/homebrew/bin/dot") };
	out.println("GRAPHVIZ_DOT="+System.getenv("GRAPHVIZ_DOT")+"<br/>");

	final String path = System.getenv("PATH");
	if (path != null) {
		for (String dirname : path.split(SFile.pathSeparator)) {
			final File f = new File(dirname, "dot");
			out.println(f.getAbsolutePath()
								+" exist => "+f.exists()
								+" execute => "+f.canExecute()
								+" read => "+f.canRead()
								+"<br/>"
			);
		}
	}

	for (File f : all)
	{
		out.println(f.getAbsolutePath()
							+" exist => "+f.exists()
							+" execute => "+f.canExecute()
							+" read => "+f.canRead()
							+"<br/>"
		);
	}

%>
