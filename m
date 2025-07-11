Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7290BC8303C
	for <linux-phy@archiver.kernel.org>; Fri, 11 Jul 2025 07:14:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J5yA6+tH1YZg/e/Aj8tSPbICJw4Y7yAPitMHO17LRjk=; b=2Mkf88VemMoWJa
	C5Yx9HO5AYejcxKis0peF+I9dNj5S0JdFG+QAWfo6QbXhG9cB5EelRrhoS6oLt+hXvEfSCHQIIKty
	8rcAxaslW2+d44IuFppubuj4vUvOGHowmbVqH4ELD5DGgREE5dD9Kp2QAvxTbzZrrOFVjlx+MdGOD
	HAI6dPKcDotzjfgr3FvC5ql543o6rhgcLwDVQZ1hB+0PVtS43xZyDRl85UgEybL1Fa6NVh69OeVsn
	frbFa7IQi6VDClzN3TbsjDLbab0MxPcqQkqJ/p5Yj4fwY/cVMOL9LXpkO5CIv1cezXJADqq8sTNqt
	1cBq6WPNHg20x73xB4uA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ua7xK-0000000DvIj-0skD;
	Fri, 11 Jul 2025 07:14:02 +0000
Received: from mgamail.intel.com ([198.175.65.18])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ua7xI-0000000DvHj-1dfm
	for linux-phy@lists.infradead.org;
	Fri, 11 Jul 2025 07:14:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1752218040; x=1783754040;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=/a5/cmTFwfGsSy5KThxd9G4sDvgIOEC9EzVwlO1Hz3Q=;
  b=huGkSrfZLCPXGpNHj6IcFPJGuyZG1JspZ13utPp65xgTKMjfKy3a/Jx8
   cV8ug8oMvwgwjn2vO49gd/p5gx8NxNWO4K5/yWoks75NFgKDg082P2DXy
   KocT/k5Ttz7r8YU4JPr3MdJAYFyR2JRk5/GmYDF5LD9Gufj8Howt1dK5q
   9DnOQiF+kt9fRc5uPgosSratBPiPJSgXNEGCwHcIPvtWNevzGmG09COQL
   7nZlh0zR96VeW7ewzlJPDcruzVzPg5sD33DItYhmgUaigYQzbBdhB9tsK
   r3GeLLrUUt+m+sHrm6gVcdraJ9fVUvM3BaWQzJNkphQWtHXZ/OKKDzvZQ
   g==;
X-CSE-ConnectionGUID: 6/G3BRoHSn+0go6hfpt/Dw==
X-CSE-MsgGUID: UNFmO4+YS6C7Oa0FWCifyQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11490"; a="54638610"
X-IronPort-AV: E=Sophos;i="6.16,302,1744095600"; 
   d="scan'208";a="54638610"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
  by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Jul 2025 00:13:59 -0700
X-CSE-ConnectionGUID: g7SdpPTpTa2TCKfUZ0hk7A==
X-CSE-MsgGUID: e77LfgKXRkWvHNFw49V9Ug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,302,1744095600"; 
   d="scan'208";a="179997241"
Received: from lkp-server01.sh.intel.com (HELO 9ee84586c615) ([10.239.97.150])
  by fmviesa002.fm.intel.com with ESMTP; 11 Jul 2025 00:13:55 -0700
Received: from kbuild by 9ee84586c615 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1ua7xA-00064R-2n;
	Fri, 11 Jul 2025 07:13:52 +0000
Date: Fri, 11 Jul 2025 15:13:13 +0800
From: kernel test robot <lkp@intel.com>
To: Karthik Poduval <kpoduval@lab126.com>, jyxiong@amazon.com,
	miguel.lopes@synopsys.com, anishkmr@amazon.com, vkoul@kernel.org,
	kishon@kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org
Cc: oe-kbuild-all@lists.linux.dev, Karthik Poduval <kpoduval@lab126.com>
Subject: Re: [PATCH v2 1/2] phy: dw-dphy-rx: Add Synopsys DesignWare D-PHY RX
Message-ID: <202507111412.83Oiz7hO-lkp@intel.com>
References: <2383f8cf2a8f5e1b914d4cf9bd11674ed55876d2.1752106239.git.kpoduval@lab126.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2383f8cf2a8f5e1b914d4cf9bd11674ed55876d2.1752106239.git.kpoduval@lab126.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250711_001400_480927_E54725DD 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
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

Hi Karthik,

kernel test robot noticed the following build warnings:

[auto build test WARNING on robh/for-next]
[also build test WARNING on linus/master v6.16-rc5 next-20250710]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Karthik-Poduval/phy-dw-dphy-rx-Add-Synopsys-DesignWare-D-PHY-RX/20250710-104505
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
patch link:    https://lore.kernel.org/r/2383f8cf2a8f5e1b914d4cf9bd11674ed55876d2.1752106239.git.kpoduval%40lab126.com
patch subject: [PATCH v2 1/2] phy: dw-dphy-rx: Add Synopsys DesignWare D-PHY RX
config: sparc-randconfig-r123-20250711 (https://download.01.org/0day-ci/archive/20250711/202507111412.83Oiz7hO-lkp@intel.com/config)
compiler: sparc-linux-gcc (GCC) 12.4.0
reproduce: (https://download.01.org/0day-ci/archive/20250711/202507111412.83Oiz7hO-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202507111412.83Oiz7hO-lkp@intel.com/

sparse warnings: (new ones prefixed by >>)
>> drivers/phy/phy-dw-dphy.c:112:24: sparse: sparse: symbol 'range_gen3' was not declared. Should it be static?
>> drivers/phy/phy-dw-dphy.c:427:24: sparse: sparse: symbol 'dw_dphy_1p2' was not declared. Should it be static?

vim +/range_gen3 +112 drivers/phy/phy-dw-dphy.c

   107	
   108	/*
   109	 * DW DPHY Gen3 calibration table
   110	 *
   111	 */
 > 112	struct range_dphy_gen3 range_gen3[] = {
   113		{ 80, 0b0000000, 460 },	  { 90, 0b0010000, 460 },
   114		{ 100, 0b0100000, 460 },  { 110, 0b0110000, 460 },
   115		{ 120, 0b0000001, 460 },  { 130, 0b0010001, 460 },
   116		{ 140, 0b0100001, 460 },  { 150, 0b0110001, 460 },
   117		{ 160, 0b0000010, 460 },  { 170, 0b0010010, 460 },
   118		{ 180, 0b0100010, 460 },  { 190, 0b0110010, 460 },
   119		{ 205, 0b0000011, 460 },  { 220, 0b0010011, 460 },
   120		{ 235, 0b0100011, 460 },  { 250, 0b0110011, 460 },
   121		{ 275, 0b0000100, 460 },  { 300, 0b0010100, 460 },
   122		{ 325, 0b0100101, 460 },  { 350, 0b0110101, 460 },
   123		{ 400, 0b0000101, 460 },  { 450, 0b0010110, 460 },
   124		{ 500, 0b0100110, 460 },  { 550, 0b0110111, 460 },
   125		{ 600, 0b0000111, 460 },  { 650, 0b0011000, 460 },
   126		{ 700, 0b0101000, 460 },  { 750, 0b0111001, 460 },
   127		{ 800, 0b0001001, 460 },  { 850, 0b0011001, 460 },
   128		{ 900, 0b0101001, 460 },  { 950, 0b0111010, 460 },
   129		{ 1000, 0b0001010, 460 }, { 1050, 0b0011010, 460 },
   130		{ 1110, 0b0101010, 460 }, { 1150, 0b0111011, 460 },
   131		{ 1200, 0b0001011, 460 }, { 1250, 0b0011011, 460 },
   132		{ 1300, 0b0101011, 460 }, { 1350, 0b0111100, 460 },
   133		{ 1400, 0b0001100, 460 }, { 1450, 0b0011100, 460 },
   134		{ 1500, 0b0101100, 460 }, { 1550, 0b0111101, 285 },
   135		{ 1600, 0b0001101, 295 }, { 1650, 0b0011101, 304 },
   136		{ 1700, 0b0101110, 313 }, { 1750, 0b0111110, 322 },
   137		{ 1800, 0b0001110, 331 }, { 1850, 0b0011110, 341 },
   138		{ 1900, 0b0101111, 350 }, { 1950, 0b0111111, 359 },
   139		{ 2000, 0b0001111, 368 }, { 2050, 0b1000000, 377 },
   140		{ 2100, 0b1000001, 387 }, { 2150, 0b1000010, 396 },
   141		{ 2200, 0b1000011, 405 }, { 2250, 0b1000100, 414 },
   142		{ 2300, 0b1000101, 423 }, { 2350, 0b1000110, 432 },
   143		{ 2400, 0b1000111, 442 }, { 2450, 0b1001000, 451 },
   144		{ 2500, 0b1001001, 460 }
   145	};
   146	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
