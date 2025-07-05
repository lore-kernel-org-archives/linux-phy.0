Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF653C83F03
	for <linux-phy@archiver.kernel.org>; Sat,  5 Jul 2025 03:03:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mN/EjNEL4bpCzAJu9S6BDF9znwOuMfTwwRAdNjE+2vM=; b=pOZWs8yim+aLMc
	Ka+qsT91L00V9IZmHMvIi/po/okhD1dUkjNZN42ivltKw5gHgu9o8bqvNQwodPOrznQm+Xd8+AitA
	koXzXOPhV2SFtwUoVxaIVzt41Xfio+8n0Gxtvs1KSjBsRw+NIy3e9jWOUmQwmvpsK4WBpCW6gkej0
	LPO7RgME5931w3xCglYWmmbJJX5XIhUbr5r3yTCiBKtxpe+SPRVHx4G0smSytmubn3vwl8O8ayult
	5MmURJBRCuydMnrolVR5JPVcjWoneKun+WxYYcxo32V9BGxfC2FGxQUivHdmKB8JnXANPUDLU6d0l
	VP6irMIQh7ZkcvJQ3Llw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXtBR-0000000Fw9t-1VTa;
	Sat, 05 Jul 2025 03:03:21 +0000
Received: from mgamail.intel.com ([198.175.65.20])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXtBO-0000000Fw9O-1XaY
	for linux-phy@lists.infradead.org;
	Sat, 05 Jul 2025 03:03:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1751684598; x=1783220598;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=KU2HkhyZ7OIUpZr/uwk3LrvlICUxGwjXLAKYY1viuVc=;
  b=dKfiIOU7N6U+bspieqDoybz+MBaQjCoe2X7MGoiJYUx+OJgoCZuNRcCw
   IKI67hJl8gzLV6Vup4kAgapyf/T1NLLh77D3jm0iVeVl2EiK9BLQdpfZS
   OuqCYfDdkawNtMXVS7rfFi72VNHhCCsJG6O4KemHqh4mTEyg/nSJRP37w
   MJo94939ZWhSKzcWNX4hLxr/0YezlX79xvTKQpXnBstwC/HiadG19U54R
   kY192bXHvmLhzQRFJYOpRrRa2f9WDvJ57ij8Fgki2mf2K+REUCW6gFS4d
   6sEFp0ON91OiXxOV+jX90hH+zIVcGzRgN3fM7DYqwdOUL+KbRPJfi7L1r
   A==;
X-CSE-ConnectionGUID: pEcDSeziRPmPtYWRe7fV7w==
X-CSE-MsgGUID: un6YHgmcRSqBK2+XMHyDxg==
X-IronPort-AV: E=McAfee;i="6800,10657,11484"; a="53720390"
X-IronPort-AV: E=Sophos;i="6.16,289,1744095600"; 
   d="scan'208";a="53720390"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
  by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Jul 2025 20:03:14 -0700
X-CSE-ConnectionGUID: wEDPN7bJTFibulDKDz+rog==
X-CSE-MsgGUID: 48b7g6n8Qqi7SxCOKlhq9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,289,1744095600"; 
   d="scan'208";a="159101587"
Received: from lkp-server01.sh.intel.com (HELO 0b2900756c14) ([10.239.97.150])
  by orviesa003.jf.intel.com with ESMTP; 04 Jul 2025 20:03:10 -0700
Received: from kbuild by 0b2900756c14 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1uXtBE-0004EX-0L;
	Sat, 05 Jul 2025 03:03:08 +0000
Date: Sat, 5 Jul 2025 11:02:38 +0800
From: kernel test robot <lkp@intel.com>
To: Devarsh Thakkar <devarsht@ti.com>, vkoul@kernel.org, kishon@kernel.org,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
	aradhya.bhatia@linux.dev, s-jain1@ti.com, r-donadkar@ti.com,
	tomi.valkeinen@ideasonboard.com, j-choudhary@ti.com,
	a0512644@ti.com, devarsht@ti.com
Subject: Re: [PATCH v4 1/2] phy: cadence: cdns-dphy: Fix PLL lock and
 O_CMN_READY polling
Message-ID: <202507051038.XCl5miJ7-lkp@intel.com>
References: <20250704125915.1224738-2-devarsht@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250704125915.1224738-2-devarsht@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250704_200318_475659_E29734EF 
X-CRM114-Status: GOOD (  13.58  )
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

Hi Devarsh,

kernel test robot noticed the following build errors:

[auto build test ERROR on linus/master]
[also build test ERROR on v6.16-rc4 next-20250704]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Devarsh-Thakkar/phy-cadence-cdns-dphy-Fix-PLL-lock-and-O_CMN_READY-polling/20250704-210349
base:   linus/master
patch link:    https://lore.kernel.org/r/20250704125915.1224738-2-devarsht%40ti.com
patch subject: [PATCH v4 1/2] phy: cadence: cdns-dphy: Fix PLL lock and O_CMN_READY polling
config: x86_64-buildonly-randconfig-003-20250705 (https://download.01.org/0day-ci/archive/20250705/202507051038.XCl5miJ7-lkp@intel.com/config)
compiler: clang version 20.1.7 (https://github.com/llvm/llvm-project 6146a88f60492b520a36f8f8f3231e15f3cc6082)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250705/202507051038.XCl5miJ7-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202507051038.XCl5miJ7-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/phy/cadence/cdns-dphy.c:408:45: error: no member named 'hs_clk_rate' in 'struct cdns_dphy_cfg'
     408 |         ret = cdns_dphy_tx_get_band_ctrl(dphy->cfg.hs_clk_rate);
         |                                          ~~~~~~~~~ ^
   1 error generated.


vim +408 drivers/phy/cadence/cdns-dphy.c

   370	
   371	static int cdns_dphy_power_on(struct phy *phy)
   372	{
   373		struct cdns_dphy *dphy = phy_get_drvdata(phy);
   374		int ret;
   375		u32 reg;
   376	
   377		if (!dphy->is_configured || dphy->is_powered)
   378			return -EINVAL;
   379	
   380		clk_prepare_enable(dphy->psm_clk);
   381		clk_prepare_enable(dphy->pll_ref_clk);
   382	
   383		/*
   384		 * Configure the internal PSM clk divider so that the DPHY has a
   385		 * 1MHz clk (or something close).
   386		 */
   387		ret = cdns_dphy_setup_psm(dphy);
   388		if (ret) {
   389			dev_err(&dphy->phy->dev, "Failed to setup PSM with error %d\n", ret);
   390			goto err_power_on;
   391		}
   392	
   393		/*
   394		 * Configure attach clk lanes to data lanes: the DPHY has 2 clk lanes
   395		 * and 8 data lanes, each clk lane can be attache different set of
   396		 * data lanes. The 2 groups are named 'left' and 'right', so here we
   397		 * just say that we want the 'left' clk lane to drive the 'left' data
   398		 * lanes.
   399		 */
   400		cdns_dphy_set_clk_lane_cfg(dphy, DPHY_CLK_CFG_LEFT_DRIVES_LEFT);
   401	
   402		/*
   403		 * Configure the DPHY PLL that will be used to generate the TX byte
   404		 * clk.
   405		 */
   406		cdns_dphy_set_pll_cfg(dphy, &dphy->cfg);
   407	
 > 408		ret = cdns_dphy_tx_get_band_ctrl(dphy->cfg.hs_clk_rate);
   409		if (ret < 0) {
   410			dev_err(&dphy->phy->dev, "Failed to get band control value with error %d\n", ret);
   411			goto err_power_on;
   412		}
   413	
   414		reg = FIELD_PREP(DPHY_BAND_CFG_LEFT_BAND, ret) |
   415		      FIELD_PREP(DPHY_BAND_CFG_RIGHT_BAND, ret);
   416		writel(reg, dphy->regs + DPHY_BAND_CFG);
   417	
   418		/* Start TX state machine. */
   419		writel(DPHY_CMN_SSM_EN | DPHY_CMN_TX_MODE_EN,
   420		       dphy->regs + DPHY_CMN_SSM);
   421	
   422		ret = cdns_dphy_wait_for_pll_lock(dphy);
   423		if (ret) {
   424			dev_err(&dphy->phy->dev, "Failed to lock PLL with error %d\n", ret);
   425			goto err_power_on;
   426		}
   427	
   428		ret = cdns_dphy_wait_for_cmn_ready(dphy);
   429		if (ret) {
   430			dev_err(&dphy->phy->dev, "O_CMN_READY signal failed to assert with error %d\n",
   431				ret);
   432			goto err_power_on;
   433		}
   434	
   435		dphy->is_powered = true;
   436	
   437		return 0;
   438	
   439	err_power_on:
   440		clk_disable_unprepare(dphy->pll_ref_clk);
   441		clk_disable_unprepare(dphy->psm_clk);
   442	
   443		return ret;
   444	}
   445	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
