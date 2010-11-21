                    Core Name: Xilinx LogiCORE FIFO Generator
                    Version: 6.2
                    Release Date: July 23, 2010


================================================================================

This document contains the following sections: 

1. Introduction
2. New Features
3. Supported Devices
4. Resolved Issues
5. Known Issues 
6. Technical Support
7. Core Release History
8. Legal Disclaimer
 
================================================================================
 
1. INTRODUCTION

For the most recent updates to the IP installation instructions for this core,
please go to:

   http://www.xilinx.com/products/ipcenter/FIFO_Generator.htm

 
For system requirements:

   http://www.xilinx.com/ipcenter/coregen/ip_update_system_requirements.htm 


This file contains release notes for the Xilinx LogiCORE IP FIFO Generator v6.2
solution. For the latest core updates, see the product page at:
 
   http://www.xilinx.com/products/ipcenter/FIFO_Generator.htm


2. NEW FEATURES  
 
   - ISE 12.2 software support

3. SUPPORTED DEVICES
 
   - SPARTAN-3, SPARTAN-3 XA, SPARTAN-3E SPARTAN-3E XA, SPARTAN-3A, SPARTAN-3A XA, SPARTAN-3ADSP, SPARTAN-3ADSP XA
   - SPARTAN-6, SPARTAN-6 XA, SPARTAN-6L and QSPARTAN-6
   - VIRTEX-4
   - VIRTEX-5 and QVIRTEX-5
   - VIRTEX-6, VIRTEX-6L and QVIRTEX-6

4. RESOLVED ISSUES 

   - In the FIFO Generator core, PROG_FULL does not assert when set to maximum threshold value.
     - Version fixed: v6.2
     - CR 553279

   - In the FIFO Generator verilog behavioral model, PROG_EMPTY does not assert/de-assert when the threshold
     value is passed through parameter.
     - Version fixed: v6.2
     - CR 549673

   - In the FIFO Generator GUI, read width is reset to write width when the component name is change.
     - Version fixed: v6.2
     - CR 563827

5. KNOWN ISSUES 

   The following are known issues for v6.2 of this core at time of release:

   - In the FIFO generator GUI, after importing an XCO file (Independent clock, distributed memory configuration)
     into a Virtex-4 coregen project, if the FIFO type is changed to "Independent Clocks, Built-in FIFO" in page 1, 
     page 2 does not correctly offer the Read Clock Frequency and Write Clock Frequency options as it should.
     - CR 467240
     - AR 31379
 
   The most recent information, including known issues, workarounds, and
   resolutions for this version is provided in the IP Release Notes User Guide
   located at 

   www.xilinx.com/support/documentation/user_guides/xtp025.pdf 


6. TECHNICAL SUPPORT 

   To obtain technical support, create a WebCase at www.xilinx.com/support.
   Questions are routed to a team with expertise using this product.  
     
   Xilinx provides technical support for use of this product when used
   according to the guidelines described in the core documentation, and
   cannot guarantee timing, functionality, or support of this product for
   designs that do not follow specified guidelines.

7. CORE RELEASE HISTORY 

Date        By            Version      Description
================================================================================
07/23/2010  Xilinx, Inc.  6.2          ISE 12.2 support
04/19/2010  Xilinx, Inc.  6.1          ISE 12.1 support
12/02/2009  Xilinx, Inc.  5.3 rev 1    ISE 11.4 support; Spartan-6 Low Power and Automotive Spartan-6 Device support
09/16/2009  Xilinx, Inc.  5.3          Update to add 11.3; Virtex-6 Low Power and Virtex-6 HXT Device support
06/24/2009  Xilinx, Inc.  5.2          Update to add 11.2 and Virtex-6 CXT device support
04/24/2009  Xilinx, Inc.  5.1          Update to add 11.1 and Virtex-6 and Spartan-6 device support
09/19/2008  Xilinx, Inc.  4.4          Update to add 10.1 SP3 and Virtex-5 TXT device support and miscellaneous bug fixes
03/24/2008  Xilinx, Inc.  4.3          Update to add 10.1 support and miscellaneous bug fixes
10/03/2007  Xilinx, Inc.  4.2          Support for FWFT for Block RAM and Distributed RAM Common Clock FIFOs
08/08/2007  Xilinx, Inc.  4.1          Update to add 9.2i support; Revised to v4.1; ECC support for block RAM FIFO
04/02/2007  Xilinx, Inc.  3.3          Update to add 9.1i support; Revised to v3.3; Spartan-3A and Spartan-3A DSP support; ECC support
09/21/2006  Xilinx, Inc.  3.2          Revised to v3.2; Spartan-3 and Virtex-4 automotive device support
07/13/2006  Xilinx, Inc.  3.1          Update to add 8.2i support; Revised to v3.1; Virtex-5 support
01/11/2006  Xilinx, Inc.  2.3          Update to add 8.1i support; Revised to v2.3
08/31/2005  Xilinx, Inc.  2.2          Update to add 7.1i SP4 support; Revised to v2.2
04/28/2005  Xilinx, Inc.  2.1          Update to add 7.1i SP1 support; Revised to v2.1
11/04/2004  Xilinx, Inc.  2.0          Update to add 6.3i support; Revised to v2.0
05/21/2004  Xilinx, Inc.  1.1          Revised to v1.1; Virtex-4 support
04/23/2004  Xilinx, Inc.  1.0          Update to add 6.2i support; First release
================================================================================

8. Legal Disclaimer

 (c) Copyright 2002 - 2010 Xilinx, Inc. All rights reserved.
 
 This file contains confidential and proprietary information
 of Xilinx, Inc. and is protected under U.S. and
 international copyright and other intellectual property
 laws.
 
 DISCLAIMER
 This disclaimer is not a license and does not grant any
 rights to the materials distributed herewith. Except as
 otherwise provided in a valid license issued to you by
 Xilinx, and to the maximum extent permitted by applicable
 law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
 WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
 AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
 BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
 INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
 (2) Xilinx shall not be liable (whether in contract or tort,
 including negligence, or under any other theory of
 liability) for any loss or damage of any kind or nature
 related to, arising under or in connection with these
 materials, including for any direct, or any indirect,
 special, incidental, or consequential loss or damage
 (including loss of data, profits, goodwill, or any type of
 loss or damage suffered as a result of any action brought
 by a third party) even if such damage or loss was
 reasonably foreseeable or Xilinx had been advised of the
 possibility of the same.
 
 CRITICAL APPLICATIONS
 Xilinx products are not designed or intended to be fail-
 safe, or for use in any application requiring fail-safe
 performance, such as life-support or safety devices or
 systems, Class III medical devices, nuclear facilities,
 applications related to the deployment of airbags, or any
 other applications that could lead to death, personal
 injury, or severe property or environmental damage
 (individually and collectively, "Critical
 Applications"). Customer assumes the sole risk and
 liability of any use of Xilinx products in Critical
 Applications, subject only to applicable laws and
 regulations governing limitations on product liability.
 
 THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
 PART OF THIS FILE AT ALL TIMES.
