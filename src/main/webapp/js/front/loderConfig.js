/**
 * 配置文件：syntaxhighlighter插件自动识别代码类型
 */
$(function() {
	SyntaxHighlighter.autoloader(
		'applescript            ../syntaxhighlighter_3.0.83/scripts/shBrushAppleScript.js',
	    'actionscript3 as3      ../syntaxhighlighter_3.0.83/scripts/shBrushAS3.js',
	    'bash shell             ../syntaxhighlighter_3.0.83/scripts/shBrushBash.js',
	    'coldfusion cf          ../syntaxhighlighter_3.0.83/scripts/shBrushColdFusion.js',
	    'cpp c                  ../syntaxhighlighter_3.0.83/scripts/shBrushCpp.js',
	    'c# c-sharp csharp      ../syntaxhighlighter_3.0.83/scripts/shBrushCSharp.js',
	    'css                    ../syntaxhighlighter_3.0.83/scripts/shBrushCss.js',
	    'delphi pascal          ../syntaxhighlighter_3.0.83/scripts/shBrushDelphi.js',
	    'diff patch pas         ../syntaxhighlighter_3.0.83/scripts/shBrushDiff.js',
	    'erl erlang             ../syntaxhighlighter_3.0.83/scripts/shBrushErlang.js',
	    'groovy                 ../syntaxhighlighter_3.0.83/scripts/shBrushGroovy.js',
	    'java                   ../syntaxhighlighter_3.0.83/scripts/shBrushJava.js',
	    'jfx javafx             ../syntaxhighlighter_3.0.83/scripts/shBrushJavaFX.js',
	    'js jscript javascript  ../syntaxhighlighter_3.0.83/scripts/shBrushJScript.js',
	    'perl pl                ../syntaxhighlighter_3.0.83/scripts/shBrushPerl.js',
	    'php                    ../syntaxhighlighter_3.0.83/scripts/shBrushPhp.js',
	    'text plain             ../syntaxhighlighter_3.0.83/scripts/shBrushPlain.js',
	    'py python              ../syntaxhighlighter_3.0.83/scripts/shBrushPython.js',
	    'ruby rails ror rb      ../syntaxhighlighter_3.0.83/scripts/shBrushRuby.js',
	    'sass scss              ../syntaxhighlighter_3.0.83/scripts/shBrushSass.js',
	    'scala                  ../syntaxhighlighter_3.0.83/scripts/shBrushScala.js',
	    'sql                    ../syntaxhighlighter_3.0.83/scripts/shBrushSql.js',
	    'vb vbnet               ../syntaxhighlighter_3.0.83/scripts/shBrushVb.js',
	    'xml xhtml xslt html    ../syntaxhighlighter_3.0.83/scripts/shBrushXml.js'
	);
})