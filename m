Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1C18D1D88B
	for <linux-phy@archiver.kernel.org>; Tue, 15 Oct 2024 17:24:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YyLzBPYk2EGavSMaEEQ2q7mugc3f22MVxRrs71c/uhc=; b=0L/rIUZq1l3zbp
	zRA2K2AUswMBuXwCZfVV10UltA8vmIY/+iKoIZfeFNi9kC5U1Bv3b1nDzm3rmge5BXumPcbfYldtw
	JUDfslJWzCeSObk0wpToP6bhnEEkek7BvqhT4S1UQGNj6xbVmPgK44d3rR6rQhqdMVZQSwBN5RspH
	b0eUpWG2Lt8vlzL+durSNVWMYfqGxV7vKU8e4Q2aZpZm8p3ZsmvHNZHZv2v2op5/zxcGPWQr554aw
	XA6gZE3kYqRz8wvIq0pKMvVC7fY78xCCT9+pGy63lgKX0IwbV+04XhdpBd4DaDLdJ7NXD1Gwid+JV
	/2z0xYSaiSV+R1ibG+XQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0lHD-000000091Ct-0Uj6;
	Tue, 15 Oct 2024 17:24:07 +0000
Received: from mgamail.intel.com ([192.198.163.12])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0lFv-0000000915K-0DqO
	for linux-phy@lists.infradead.org;
	Tue, 15 Oct 2024 17:22:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1729012967; x=1760548967;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Lot1+gKgQJ4DS8C3BfB5DwPPrYEDl7u6igAbiWgKgV0=;
  b=UwD4u5BETAy8hIHOFnsCtlF6aaOFMDD4o2mCkE47h415rHKyOS6MnWPB
   7G0WjTDZqEJG0yf9M9aQKLdUTAR4ZpMF7eUi4WkHG63tJnv1A7xW1NIzz
   qU8aLSO6ADeBUx6mn1dEqsvA8VWFyRZHxlAStgSL/nrh47SJUhrtrMBTX
   ZtW/Ia0JlrDMz4hrWiyb4tjJ8NTVzq6kcc5swhBlJax9Y9BTSiIV072Of
   e2sYv4tuKR86LW/QdjscuHbzEUDqyaWruL9UkV7art/QDMzqc9lwXuqgU
   GVSwlP+siXqJJai7kDJ0TldtV+yxtVZlmpu5928meW4d0PrpgYoCh1HZT
   g==;
X-CSE-ConnectionGUID: taAFBqf6QVG9XLRJP6MZhw==
X-CSE-MsgGUID: 2ABoMlBpTIeUz6daJP5rqw==
X-IronPort-AV: E=McAfee;i="6700,10204,11225"; a="32342121"
X-IronPort-AV: E=Sophos;i="6.11,205,1725346800"; 
   d="scan'208";a="32342121"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
  by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Oct 2024 10:22:42 -0700
X-CSE-ConnectionGUID: oyrji+fDSWOQBSTWfFdqww==
X-CSE-MsgGUID: wS/0al/+RIGuii96E6E9Ig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,205,1725346800"; 
   d="scan'208";a="77627836"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
  by fmviesa007.fm.intel.com with ESMTP; 15 Oct 2024 10:22:39 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1t0lFl-000Jf3-11;
	Tue, 15 Oct 2024 17:22:37 +0000
Date: Wed, 16 Oct 2024 01:22:16 +0800
From: kernel test robot <lkp@intel.com>
To: Markus Stockhausen <markus.stockhausen@gmx.de>, vkoul@kernel.org,
	kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, chris.packham@alliedtelesis.co.nz
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
	Markus Stockhausen <markus.stockhausen@gmx.de>
Subject: Re: [PATCH v3 2/2] phy: Realtek Otto SerDes driver
Message-ID: <202410160149.TNGsZcue-lkp@intel.com>
References: <20241012134834.1306992-3-markus.stockhausen@gmx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241012134834.1306992-3-markus.stockhausen@gmx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241015_102247_160724_B23BBF26 
X-CRM114-Status: GOOD (  11.25  )
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
config: x86_64-allyesconfig (https://download.01.org/0day-ci/archive/20241016/202410160149.TNGsZcue-lkp@intel.com/config)
compiler: clang version 18.1.8 (https://github.com/llvm/llvm-project 3b5b5c1ec4a3095ab096dd780e84d7ab81f3d7ff)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20241016/202410160149.TNGsZcue-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202410160149.TNGsZcue-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/phy/realtek/phy-rtk-otto-serdes.c:120:12: warning: format specifies type 'int' but the argument has type 'size_t' (aka 'unsigned long') [-Wformat]
     119 |         dev_info(ctrl->dev, "firmware %s: loaded with %d bytes, %d sequences\n",
         |                                                       ~~
         |                                                       %zu
     120 |                  fwname, ctrl->firmware->size, h->dirsize);
         |                          ^~~~~~~~~~~~~~~~~~~~
   include/linux/dev_printk.h:160:67: note: expanded from macro 'dev_info'
     160 |         dev_printk_index_wrap(_dev_info, KERN_INFO, dev, dev_fmt(fmt), ##__VA_ARGS__)
         |                                                                  ~~~     ^~~~~~~~~~~
   include/linux/dev_printk.h:110:23: note: expanded from macro 'dev_printk_index_wrap'
     110 |                 _p_func(dev, fmt, ##__VA_ARGS__);                       \
         |                              ~~~    ^~~~~~~~~~~
   1 warning generated.

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for MODVERSIONS
   Depends on [n]: MODULES [=y] && !COMPILE_TEST [=y]
   Selected by [y]:
   - RANDSTRUCT_FULL [=y] && (CC_HAS_RANDSTRUCT [=y] || GCC_PLUGINS [=n]) && MODULES [=y]


vim +120 drivers/phy/realtek/phy-rtk-otto-serdes.c

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
   119		dev_info(ctrl->dev, "firmware %s: loaded with %d bytes, %d sequences\n",
 > 120			 fwname, ctrl->firmware->size, h->dirsize);
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
