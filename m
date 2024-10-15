Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92A49D1D88D
	for <linux-phy@archiver.kernel.org>; Tue, 15 Oct 2024 17:24:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hfVuntUDZ//SuVhqr0T7LV6czOR8e17czUoSE45QdVQ=; b=xtsUPj8aegJ2Iz
	Oi0i3boXtvmYew7uqhlRVDyZNsKiOAE1/V5uh9flCNG6r2QH9mN/SceKY/VlLF+6/HSY2ASuVLogi
	bapaWd5+QJ06ahDeT9y/fnPrAFY6eP6rSb51JTGEYz6PrsMEFRDV2CIl7gIW5H2AVhcqBbXbaZ8m9
	gx2fTve5w/Jb3DH6cKLCkyhh3abzx6i94+i1QLzQ/GACDOzc+JlzAVliI4p9cA/cDzK94VUfJ3fN9
	y9zZJUeLSVeHm+pb1iTJt3bv1sH7MDyq/bwsvfutBpBLOJRJp7hOqeBJ7+eFtjVGJaBur3P/RYN/Q
	iYVo1Xi3y2liRuiksgNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0lHC-000000091Cj-3TW5;
	Tue, 15 Oct 2024 17:24:06 +0000
Received: from mgamail.intel.com ([192.198.163.12])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0lFt-0000000915K-0cPs
	for linux-phy@lists.infradead.org;
	Tue, 15 Oct 2024 17:22:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1729012965; x=1760548965;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=2mEhCPVHCTTAzl9fFpCjcQJlAPr5oWmayIG8kPhHBtE=;
  b=aQX1Lb8VIrpvA85K2dhCQ849o5L3lQmaNKYFY7zbGKJto3P6WQY1OHy9
   V/ognlwQzcXIZf8ODyNxmzV19Ho0zk8QFFdhECv8IlJEAlQ/bnpOgKbJv
   uIe3IPHM8rb6hiS8tCLDekPing9QK6t4lrfRURYnj7oQDYVx3SCTDCyOM
   heyo5A9EIT5TJUuHaWVy+C58fAOHJRVaUCUrhU3YERtevNraGFpYZXM7C
   Kh8i+sFHiEa5AttCuuywUcrS2Qg/HC7BNTEwbEGT5GWNR3TBSy5S0jNK6
   blDrDYXqtVcBRWRHK7kVkPLAeL/tAmhYVWl3QEH6spDZDTbJLMrKFaPM9
   g==;
X-CSE-ConnectionGUID: fuOkAOcPSrK02lHgDtd6Yw==
X-CSE-MsgGUID: Pj74d05gRfK3+fq2g2dvGA==
X-IronPort-AV: E=McAfee;i="6700,10204,11225"; a="32342115"
X-IronPort-AV: E=Sophos;i="6.11,205,1725346800"; 
   d="scan'208";a="32342115"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
  by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Oct 2024 10:22:42 -0700
X-CSE-ConnectionGUID: B7LxWq2jSfqCuscHEOUpXQ==
X-CSE-MsgGUID: wP3pTVDTS76bfIPaiBUpkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,205,1725346800"; 
   d="scan'208";a="77627834"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
  by fmviesa007.fm.intel.com with ESMTP; 15 Oct 2024 10:22:39 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1t0lFl-000Jex-0h;
	Tue, 15 Oct 2024 17:22:37 +0000
Date: Wed, 16 Oct 2024 01:22:15 +0800
From: kernel test robot <lkp@intel.com>
To: Markus Stockhausen <markus.stockhausen@gmx.de>, vkoul@kernel.org,
	kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, chris.packham@alliedtelesis.co.nz
Cc: oe-kbuild-all@lists.linux.dev,
	Markus Stockhausen <markus.stockhausen@gmx.de>
Subject: Re: [PATCH v3 2/2] phy: Realtek Otto SerDes driver
Message-ID: <202410160026.e4fdH3Ov-lkp@intel.com>
References: <20241012134834.1306992-3-markus.stockhausen@gmx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241012134834.1306992-3-markus.stockhausen@gmx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241015_102245_241939_0F1083A0 
X-CRM114-Status: GOOD (  16.78  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi Markus,

kernel test robot noticed the following build warnings:

[auto build test WARNING on robh/for-next]
[also build test WARNING on linus/master v6.12-rc3 next-20241015]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Markus-Stockhausen/dt-bindings-phy-add-realtek-rtl8380m-serdes/20241012-214949
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
patch link:    https://lore.kernel.org/r/20241012134834.1306992-3-markus.stockhausen%40gmx.de
patch subject: [PATCH v3 2/2] phy: Realtek Otto SerDes driver
config: s390-allyesconfig (https://download.01.org/0day-ci/archive/20241016/202410160026.e4fdH3Ov-lkp@intel.com/config)
compiler: s390-linux-gcc (GCC) 14.1.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20241016/202410160026.e4fdH3Ov-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202410160026.e4fdH3Ov-lkp@intel.com/

All warnings (new ones prefixed by >>):

   In file included from include/linux/device.h:15,
                    from include/linux/dma-mapping.h:8,
                    from include/linux/skbuff.h:28,
                    from include/linux/if_ether.h:19,
                    from include/linux/ethtool.h:18,
                    from include/linux/phy.h:16,
                    from drivers/phy/realtek/phy-rtk-otto-serdes.c:13:
   drivers/phy/realtek/phy-rtk-otto-serdes.c: In function 'rtsds_fw_load':
>> drivers/phy/realtek/phy-rtk-otto-serdes.c:119:29: warning: format '%d' expects argument of type 'int', but argument 4 has type 'size_t' {aka 'long unsigned int'} [-Wformat=]
     119 |         dev_info(ctrl->dev, "firmware %s: loaded with %d bytes, %d sequences\n",
         |                             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/dev_printk.h:110:30: note: in definition of macro 'dev_printk_index_wrap'
     110 |                 _p_func(dev, fmt, ##__VA_ARGS__);                       \
         |                              ^~~
   include/linux/dev_printk.h:160:58: note: in expansion of macro 'dev_fmt'
     160 |         dev_printk_index_wrap(_dev_info, KERN_INFO, dev, dev_fmt(fmt), ##__VA_ARGS__)
         |                                                          ^~~~~~~
   drivers/phy/realtek/phy-rtk-otto-serdes.c:119:9: note: in expansion of macro 'dev_info'
     119 |         dev_info(ctrl->dev, "firmware %s: loaded with %d bytes, %d sequences\n",
         |         ^~~~~~~~
   drivers/phy/realtek/phy-rtk-otto-serdes.c:119:56: note: format string is defined here
     119 |         dev_info(ctrl->dev, "firmware %s: loaded with %d bytes, %d sequences\n",
         |                                                       ~^
         |                                                        |
         |                                                        int
         |                                                       %ld


vim +119 drivers/phy/realtek/phy-rtk-otto-serdes.c

  > 13	#include <linux/phy.h>
    14	#include <linux/phy/phy.h>
    15	#include <linux/platform_device.h>
    16	
    17	#include "phy-rtk-otto-serdes.h"
    18	
    19	/*
    20	 * A Realtek Otto SerDes is configured/patched by writing specific values into its registers.
    21	 * These values are bound to the individual hardware and the transceivers that are connected to
    22	 * it. Depending on the model some of this might be integrated into the bootloader. To fully
    23	 * support different configurations allow the driver to load firmware files and run patch
    24	 * sequences.
    25	 *
    26	 * A firmware file contains a head, a directory and at the end the raw patch data. See
    27	 * structure rtsds_fw_head, rtsds_fw_dir an rtsds_fw_seq for more details.
    28	 *
    29	 * header
    30	 *	(u32) magic = 0x83009300, see RTSDS_FW_MAGIC
    31	 *	(u32) CRC checksum of the following data
    32	 *	(u32) filesize
    33	 *	(u32) directory size = number of sequences
    34	 *
    35	 * directory with n elements consisting of
    36	 *	(u32) id of the sequence. See RTSDS_FW_EVT_xxx
    37	 *	(u32) offset of patch data for this directory entry
    38	 *
    39	 * patch data with x elements consisting of
    40	 *	(u16) action to process. See RTSDS_FW_OP_xxx
    41	 *	(u16) mode for which the command is to be executed. See RTSDS_FW_MODE_xxx
    42	 *	(u16) SerDes ports bitmask for which the command is to be executed
    43	 *	(u16) page for action
    44	 *	(u16) register for action
    45	 *	(u16) value for action
    46	 *	(u16) mask for write operations
    47	 *	(u16) future use to avoid structure breakage
    48	 */
    49	
    50	static const char *rtsds_fw_events[RTSDS_FW_EVT_CNT] = {
    51		[RTSDS_FW_EVT_SETUP]		= "setup",
    52		[RTSDS_FW_EVT_INIT]		= "init",
    53		[RTSDS_FW_EVT_POWER_ON]		= "power-on",
    54		[RTSDS_FW_EVT_PRE_SET_MODE]	= "pre-set-mode",
    55		[RTSDS_FW_EVT_POST_SET_MODE]	= "post-set-mode",
    56		[RTSDS_FW_EVT_PRE_RESET]	= "pre-reset",
    57		[RTSDS_FW_EVT_POST_RESET]	= "post-reset",
    58		[RTSDS_FW_EVT_PRE_POWER_OFF]	= "pre-power-off",
    59		[RTSDS_FW_EVT_POST_POWER_OFF]	= "post-power-off",
    60	};
    61	
    62	static const u8 rtsds_fw_modes[PHY_INTERFACE_MODE_MAX] = {
    63		[PHY_INTERFACE_MODE_NA]		= RTSDS_FW_MODE_ALL,
    64		[PHY_INTERFACE_MODE_QSGMII]	= RTSDS_FW_MODE_QSGMII,
    65		[PHY_INTERFACE_MODE_XGMII]	= RTSDS_FW_MODE_XGMII,
    66		[PHY_INTERFACE_MODE_USXGMII]	= RTSDS_FW_MODE_USXGMII,
    67		[PHY_INTERFACE_MODE_1000BASEX]	= RTSDS_FW_MODE_1000BASEX,
    68		[PHY_INTERFACE_MODE_2500BASEX]	= RTSDS_FW_MODE_2500BASEX,
    69		[PHY_INTERFACE_MODE_10GBASER]	= RTSDS_FW_MODE_10GBASER,
    70	};
    71	
    72	static int rtsds_fw_load(struct rtsds_ctrl *ctrl)
    73	{
    74		int ret;
    75		struct rtsds_fw_head *h;
    76		u32 checksum;
    77		const char *msg;
    78		const char *fwprop;
    79		char fwname[128];
    80	
    81		ret = device_property_read_string(ctrl->dev, "firmware-name", &fwprop);
    82		if (ret)
    83			snprintf(fwname, sizeof(fwname), "realtek/%s", ctrl->conf->fwname);
    84		else if (strcmp(fwprop, ""))
    85			snprintf(fwname, sizeof(fwname), "realtek/%s", fwprop);
    86		else {
    87			dev_info(ctrl->dev, "firmware deactivated, patching disabled\n");
    88			return 0;
    89		}
    90	
    91		ret = firmware_request_nowarn(&ctrl->firmware, fwname, ctrl->dev);
    92		if (ret < 0) {
    93			msg = "not found";
    94			goto error;
    95		}
    96	
    97		if (ctrl->firmware->size < 16) {
    98			msg = "size to small";
    99			goto error;
   100		}
   101	
   102		h = (struct rtsds_fw_head *)ctrl->firmware->data;
   103		if (h->magic != RTSDS_FW_MAGIC) {
   104			msg = "magic mismatch";
   105			goto error;
   106		}
   107	
   108		if (h->filesize != ctrl->firmware->size) {
   109			msg = "size mismatch";
   110			goto error;
   111		}
   112	
   113		checksum = ~crc32(0xFFFFFFFFU, ctrl->firmware->data + 8, ctrl->firmware->size - 8);
   114		if (h->checksum != checksum) {
   115			msg = "checksum mismatch";
   116			goto error;
   117		}
   118	
 > 119		dev_info(ctrl->dev, "firmware %s: loaded with %d bytes, %d sequences\n",
   120			 fwname, ctrl->firmware->size, h->dirsize);
   121	
   122		return 0;
   123	error:
   124		dev_err(ctrl->dev, "firmware %s: %s, patching disabled\n", fwname, msg);
   125		ctrl->firmware = NULL;
   126		return -EINVAL;
   127	}
   128	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
