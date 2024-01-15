# mailing-label-cli

`mailing-label-cli` generates PDFs for printing on labels. It can do a data merge ("mail merge") for label content.

It uses the Ruby [Prawn](https://github.com/prawnpdf/prawn) library to generate PDFs directly.

## Usage

Run `bin/make-labels --help` for information on various options.

By default, make-labels will generate a debug sheet for the current template that can be printed and used to check the measurements.

To generate the same text content on each label, use `--content`.

To generate label content from a TSV data source, use `--merge-data` and `--format` to reference columns in the data. Use `%street` to output a column with the header `street`.

You can use Prawn inline styles in your format string, like `<font size='8'>Small</font>`. See "text/inline.rb" in the [Prawn manual](https://prawnpdf.org/manual.pdf) for information about supported formatting.

## Examples
Each directory in `./examples` contains `run.sh` with a sample invocation of `make-labels`.

Run `bin/examples` to generate the output of all examples. To run a single example, `cd` to that directory, add the `bin` directory to the path, and run `run.sh`:

```sh
cd examples/debug
PATH="../../bin:$PATH" ./run.sh
```
