# Linux Monitoring v1.0

## Implementation Overview

### Part 1: Input Validation and Parameter Processing
Developed a bash script that processes a single text parameter with comprehensive input validation:
- Implemented parameter existence checking to ensure required input is provided
- Added numeric input detection to prevent invalid number parameters
- Created clear error messaging for incorrect input scenarios
- Established proper script exit codes for different failure conditions

### Part 2: Comprehensive System Information Gathering
Built an advanced system research script that collects and displays extensive system metrics:

**System Identification Data:**
- Network hostname retrieval
- Timezone information with UTC offset calculation
- Current user identification
- Operating system type and version detection

**Temporal System Data:**
- Current date and time formatting
- System uptime calculation in human-readable format
- Uptime conversion to precise seconds

**Network Configuration:**
- IP address extraction from network interfaces
- Network mask formatting and validation
- Default gateway identification

**Memory Utilization Analysis:**
- Total RAM capacity calculation with 3-decimal precision
- Used memory quantification
- Available memory measurement
- All memory values converted to GB units

**Storage Space Monitoring:**
- Root partition size analysis in MB with 2-decimal precision
- Used space calculation on root partition
- Free space measurement on root partition

**Data Persistence Feature:**
- Interactive user prompt for data saving
- File naming convention using timestamp format (DD_MM_YY_HH_MM_SS.status)
- Automatic file generation in current directory
- Case-insensitive response handling (Y/y for confirmation)

### Part 3: Advanced Visual Output Formatting
Enhanced the system research script with sophisticated colorization capabilities:

**Color Parameter System:**
- Implemented 4-parameter color configuration (1-6 values)
- Color mapping: 1-white, 2-red, 3-green, 4-blue, 5-purple, 6-black
- Background and font color separation for value names and actual values

**Input Validation and Conflict Prevention:**
- Added color conflict detection between background and text
- Implemented comprehensive parameter validation
- Clear error messaging with usage instructions
- Graceful script termination on validation failures

**Visual Design Features:**
- Separate color schemes for column headers and data values
- Maintained all system information display functionality
- Preserved data accuracy while adding visual enhancements

### Part 4: Configuration File Management System
Created a flexible configuration approach using external files:

**Configuration File Structure:**
- Defined clear parameter naming convention
- Implemented default value fallback system
- Created robust configuration parsing

**Dynamic Configuration Handling:**
- Automatic detection of missing parameters
- Intelligent default value substitution
- Comprehensive configuration validation

**User Interface Enhancements:**
- Added color scheme display after system information
- Clear labeling of default vs. configured values
- Maintained backward compatibility with parameter-based approach

### Part 5: Advanced Filesystem Analysis Tool
Developed a comprehensive directory analysis utility:

**Directory Structure Analysis:**
- Recursive folder counting including all subdirectories
- Identification of top 5 largest folders with full paths
- Total file count calculation

**File Type Classification System:**
- Configuration file detection (.conf extension)
- Text file identification
- Executable file recognition
- Log file analysis (.log extension)
- Archive file detection
- Symbolic link counting

**Advanced File Analytics:**
- Top 10 largest files with type classification
- Executable file analysis with MD5 hash generation
- Performance monitoring with script execution timing

**Output Formatting:**
- Clear, structured reporting with categorized sections
- Proper unit conversion (GB/MB) for size display
- Sequential numbering for ranked listings
- Precise execution time measurement