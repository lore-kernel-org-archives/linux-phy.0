Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A93DCD1284
	for <linux-phy@archiver.kernel.org>; Thu,  4 Apr 2024 22:53:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZCUqkZf/krrXXPDjLyTglAoMeJaqePDP02k9JLONs24=; b=vE3H1DeWkkmIYG
	WBS+8oCJdKck18x8nnyZefvb6geRTOZLIEkYJkqMaZGrk61oD9VoXS16URTY4w+WiO3sPetPm3wVn
	2ywnuo13trgf2xTe4xJRIdU5LQ4PSj6negsaqgquBYQOmrcAMAa+GA1pZ8Eutuj+P/2IrD6nWQEI9
	t48IKfxh4EivjSHCoHK49TdpgxtuKVxwn9TXeSsSRFB66I7ZwUsQoliiHzPON69Gf0k6/U3C0gz/u
	HEvbRuiA69PnGAj1HS0IBmhJLnu8kFz35TbA124+NdwQn5IktJIzmSH3kwftdlOe88/wHAFGzETfA
	xg1pRtig5ZEGbfBqz2IQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsVxU-00000004UeC-2xJ2;
	Thu, 04 Apr 2024 22:53:24 +0000
Received: from mgamail.intel.com ([198.175.65.18])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsVxR-00000004Udk-3aGl;
	Thu, 04 Apr 2024 22:53:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1712271202; x=1743807202;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=nHDeIZjgG/ABq+COPbhriixxj1CJ1aiFsFPnz9B5/Ew=;
  b=jI6yA9Ein2vQr/xrpwN8Wdagm7yBeJxof7VWn5CEPxe/EsC71g1w9spL
   Y+VSCINywYjsWn4HO8pgnux8klDq/AJ4LGrR0UIyHE2tduDWPEIrx6IRg
   Fpe7WN5hDQpt/GaO7Fo0cb2yFBTxU1Tgjq+EeDtn6R1yEEP9CoggIE28E
   XHyyct9M1XPrvh6lVz6z7eW5Plzsyl0MpUh/X76w5Fj0weCWVjYMHycQt
   r7J+3KzNtqMPZFwbTN1M8Ux+1+g6Z6Bc1CNRqylefVbjnTnrZnySJjGI/
   HaY73yb3c9C07Q99wWYCCrNFAcsH+Yd+Nh1d3IDcDISvD8zA4rCAm1a8S
   w==;
X-CSE-ConnectionGUID: q6GDp3RPQLOEVdMpd5r6pQ==
X-CSE-MsgGUID: dIEHMXykSMy9VvqNlfp/jA==
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="7747181"
X-IronPort-AV: E=Sophos;i="6.07,180,1708416000"; 
   d="scan'208";a="7747181"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
  by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Apr 2024 15:53:21 -0700
X-CSE-ConnectionGUID: DMVI8dVNQt+mFpCKldjuFw==
X-CSE-MsgGUID: qHDgff3ISNujXJMguBDG9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,180,1708416000"; 
   d="scan'208";a="50191958"
Received: from lkp-server01.sh.intel.com (HELO e61807b1d151) ([10.239.97.150])
  by fmviesa001.fm.intel.com with ESMTP; 04 Apr 2024 15:53:14 -0700
Received: from kbuild by e61807b1d151 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1rsVxH-0001b6-2d;
	Thu, 04 Apr 2024 22:53:11 +0000
Date: Fri, 5 Apr 2024 06:52:21 +0800
From: kernel test robot <lkp@intel.com>
To: Peter Griffin <peter.griffin@linaro.org>, mturquette@baylibre.com,
	sboyd@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org,
	alim.akhtar@samsung.com, avri.altman@wdc.com, bvanassche@acm.org,
	s.nawrocki@samsung.com, cw00.choi@samsung.com, jejb@linux.ibm.com,
	martin.petersen@oracle.com, chanho61.park@samsung.com,
	ebiggers@kernel.org
Cc: oe-kbuild-all@lists.linux.dev, linux-scsi@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	tudor.ambarus@linaro.org, andre.draszik@linaro.org,
	saravanak@google.com, willmcvicker@google.com,
	Peter Griffin <peter.griffin@linaro.org>
Subject: Re: [PATCH 08/17] clk: samsung: gs101: add support for cmu_hsi2
Message-ID: <202404050633.EZfOttFD-lkp@intel.com>
References: <20240404122559.898930-9-peter.griffin@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240404122559.898930-9-peter.griffin@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_155321_952605_890732CF 
X-CRM114-Status: GOOD (  11.57  )
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

Hi Peter,

kernel test robot noticed the following build warnings:

[auto build test WARNING on krzk/for-next]
[also build test WARNING on robh/for-next clk/clk-next linus/master v6.9-rc2 next-20240404]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Peter-Griffin/dt-bindings-clock-google-gs101-clock-add-HSI2-clock-management-unit/20240404-205113
base:   https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git for-next
patch link:    https://lore.kernel.org/r/20240404122559.898930-9-peter.griffin%40linaro.org
patch subject: [PATCH 08/17] clk: samsung: gs101: add support for cmu_hsi2
config: arm64-defconfig (https://download.01.org/0day-ci/archive/20240405/202404050633.EZfOttFD-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240405/202404050633.EZfOttFD-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202404050633.EZfOttFD-lkp@intel.com/

All warnings (new ones prefixed by >>):

   In file included from drivers/clk/samsung/clk-gs101.c:16:
>> drivers/clk/samsung/clk-gs101.c:3640:7: warning: 'mout_hsi2_mmc_card_p' defined but not used [-Wunused-const-variable=]
    3640 | PNAME(mout_hsi2_mmc_card_p)     = { "fout_shared2_pll", "fout_shared3_pll",
         |       ^~~~~~~~~~~~~~~~~~~~
   drivers/clk/samsung/clk.h:229:44: note: in definition of macro 'PNAME'
     229 | #define PNAME(x) static const char * const x[] __initconst
         |                                            ^
>> drivers/clk/samsung/clk-gs101.c:3633:7: warning: 'mout_hsi2_bus_p' defined but not used [-Wunused-const-variable=]
    3633 | PNAME(mout_hsi2_bus_p)          = { "dout_cmu_shared0_div4",
         |       ^~~~~~~~~~~~~~~
   drivers/clk/samsung/clk.h:229:44: note: in definition of macro 'PNAME'
     229 | #define PNAME(x) static const char * const x[] __initconst
         |                                            ^
>> drivers/clk/samsung/clk-gs101.c:3631:7: warning: 'mout_hsi2_pcie_p' defined but not used [-Wunused-const-variable=]
    3631 | PNAME(mout_hsi2_pcie_p)         = { "oscclk", "dout_cmu_shared2_div2" };
         |       ^~~~~~~~~~~~~~~~
   drivers/clk/samsung/clk.h:229:44: note: in definition of macro 'PNAME'
     229 | #define PNAME(x) static const char * const x[] __initconst
         |                                            ^
>> drivers/clk/samsung/clk-gs101.c:3628:7: warning: 'mout_hsi2_ufs_embd_p' defined but not used [-Wunused-const-variable=]
    3628 | PNAME(mout_hsi2_ufs_embd_p)     = { "oscclk", "dout_cmu_shared0_div4",
         |       ^~~~~~~~~~~~~~~~~~~~
   drivers/clk/samsung/clk.h:229:44: note: in definition of macro 'PNAME'
     229 | #define PNAME(x) static const char * const x[] __initconst
         |                                            ^


vim +/mout_hsi2_mmc_card_p +3640 drivers/clk/samsung/clk-gs101.c

  3627	
> 3628	PNAME(mout_hsi2_ufs_embd_p)	= { "oscclk", "dout_cmu_shared0_div4",
  3629					    "dout_cmu_shared2_div2", "fout_spare_pll" };
  3630	
> 3631	PNAME(mout_hsi2_pcie_p)		= { "oscclk", "dout_cmu_shared2_div2" };
  3632	
> 3633	PNAME(mout_hsi2_bus_p)		= { "dout_cmu_shared0_div4",
  3634					    "dout_cmu_shared1_div4",
  3635					    "dout_cmu_shared2_div2",
  3636					    "dout_cmu_shared3_div2",
  3637					    "fout_spare_pll", "oscclk", "oscclk",
  3638					    "oscclk" };
  3639	
> 3640	PNAME(mout_hsi2_mmc_card_p)	= { "fout_shared2_pll", "fout_shared3_pll",
  3641					    "dout_cmu_shared0_div4", "fout_spare_pll" };
  3642	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
