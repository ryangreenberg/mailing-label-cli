# mailing-label-cli

`mailing-label-cli` generates PDFs for printing on labels. It can output the same content on each label or do a data merge ("mail merge") to output unique labels.

This CLI is a simple Ruby program that generates PDFs directly using the [Prawn](https://github.com/prawnpdf/prawn) library. You can adapt it for your own purposes by copying a single file.

## Usage

Run `bin/make-labels --help` for information on various options.

By default, `make-labels` will generate a debug sheet for the current template that can be printed and used to check the measurements.

Use `--template` to specify the output template to use.

To generate a PDF the same text content on each label, use `--content`.

To generate a PDF where each label's content comes from a TSV data source, use `--merge-data` with the input file path. Use `--format` to reference columns in the data. For example, use `%street` to output a column with the header `street`.

You can use Prawn inline styles in your format string, like `<font size='8'>Small</font>`. See "text/inline.rb" in the [Prawn manual](https://prawnpdf.org/manual.pdf) for information about supported formatting.

## Examples
Each directory in `./examples` contains `run.sh` with a sample invocation of `make-labels`.

Run `bin/examples` to generate the output of all examples. To run a single example, `cd` to that directory, add the `bin` directory to the path, and run `run.sh`:

```sh
cd examples/debug
PATH="../../bin:$PATH" ./run.sh
```

## Acknowledgements

Some of the code in this tool is adapted from [prawn-labels](https://github.com/jordanbyron/prawn-labels).
