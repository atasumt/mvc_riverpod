import 'package:logger/logger.dart';

/// Prefer using this function over [Logger] for intercepting [Logger].
Logger logger({LogFilter? logFilter, LogPrinter? printer, LogOutput? output}) {
  var logger = Logger(
    filter: logFilter, // Use the default LogFilter (-> only log in debug mode)
    printer: printer ??
        PrettyPrinter(), // Use the PrettyPrinter to format and print log
    output: output, // Use the default LogOutput (-> send everything to console)
  );

  return logger;
}
