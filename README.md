A simple ruby command-line tool that allows a spreadsheet to be split into a number of 
separate CSV files, one file per worksheet.

Lots of (UK) Government data is published in this way, often with hidden worksheets. This 
tool makes it simple to split all of the worksheets out into separate files for easier 
processing, e.g. using tools like Google Refine.
  
USAGE
-----

	xls-split [opts] [file]
 
For example, if you have a spreadsheet containing two worksheets, Table1 and Table2 then the following 
command will split that into two CSV files: /tmp/my-data-Table1.csv and /tmp/my-data-Table2.csv
 
 	xls-split -d /tmp -b my-data spreadsheet.xls  
 
There are command-line options available to control location and naming of generated files, 
as well as the ability to only extract specific worksheets, based on a regex match.

INSTALLATION
------------

Grab the source from github and run:

	rake install 	
  
OPTIONS
-------

  --help            , -h
    show this message

  --verbose         , -v
    verbose progress reporting

  --encoding        , -e
    set the encoding of the spreadsheet. Default is UTF-8

  --skip            , -s
    number of rows in each worksheet to skip before writing data

  --dir             , -d
    output directory into which CSV files will be written

  --base            , -b
    set a base file name for generated CSV files. Worksheet name will be appended

  --match           , -m
    regular expression used to match worksheet names. Only matches sheets will be split out

  --tidy-names      , -t
    tidy up worksheet names. Lower case and strips spaces    

LICENSE
--------

Licensed under the Apache License, Version 2.0 (the "License"); 
you may not use this file except in compliance with the License. 
  
You may obtain a copy of the License at 
  
http://www.apache.org/licenses/LICENSE-2.0 
  
Unless required by applicable law or agreed to in writing, 
software distributed under the License is distributed on an "AS IS" BASIS, 
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. 
  
See the License for the specific language governing permissions and limitations 
under the License.     