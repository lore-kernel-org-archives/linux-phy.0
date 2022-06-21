Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD411C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jun 2022 23:08:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=43mDUxSqU4UrZtx1AZFzrUpMc7K+dMLIgT3Kb7FZhhA=; b=eJi6YEUbHpkl5h
	y789GqcuizqyztLMPA/cSBGN+lH0Lc1JxunBDiqF1qbUF7ESDMWbxGE1cEVQiC8y4ZOu+r8ow2iLU
	QJOID9GheAn34NmM62BLE8arlmZzzuw7hMtxRJct+o1MZTX5ynqAK6Vxao+CfCZPIxI/VEY4s6P40
	iU1Ypv5ebNPGGOHO2JkotM0XPLlYASpQ6vvPgX7/67DHsrNco0tBh2Ix2WHk6BJTd6VQl5gBk2xi+
	Bigot6igbPPcX9TRdcMoSUU6skP+egmXcoo0/9ZH49FVe5gNlJjQgdIldy5u9YZD8szUGb6mr3cW6
	T+mXT9nCdbza72BoqX9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3myy-007fnF-7s; Tue, 21 Jun 2022 23:08:28 +0000
Received: from mga06b.intel.com ([134.134.136.31] helo=mga06.intel.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3myu-007fmo-Vu
	for linux-phy@lists.infradead.org; Tue, 21 Jun 2022 23:08:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1655852904; x=1687388904;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=fbNcvbxt2AEX50zg7N51mEeNHFJNVXxxyBoLBKPjpeg=;
  b=SWyw4bO5kiqJnEBGrh0YbzolbYW44A2IpDN7+cET10Wodzy7kOm5wCSZ
   /epUrDCYpx26dXBmu8g76izo/xynXdLKfxKxwcAxAdrslY86MG+6ou/a+
   3G0nbrIE0TyHX0Xo2O+Z0x1kvLSPApLWOe4BfHp3PkQgQTX2HG+tW0Kfd
   XM7sWAGeIm4SeGO1EcWRIUwD527Pa3YC9ijk9nHD4oxJlZrZNMPTHtuEv
   cziUDmfmQUmK5rlD+hHbDJC/nqIgJlXdf1Xwtvnog3e807P2xKN46HH22
   OfKGOLf1WYSrgu4l/2Aa0PqFPW08l79Tu/XC8zVTdOY0aQeXBBWbQX6Z8
   Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10385"; a="341945022"
X-IronPort-AV: E=Sophos;i="5.92,210,1650956400"; 
   d="scan'208";a="341945022"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Jun 2022 16:08:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,210,1650956400"; 
   d="scan'208";a="586435848"
Received: from lkp-server02.sh.intel.com (HELO a67cc04a5eeb) ([10.239.97.151])
  by orsmga002.jf.intel.com with ESMTP; 21 Jun 2022 16:08:17 -0700
Received: from kbuild by a67cc04a5eeb with local (Exim 4.95)
	(envelope-from <lkp@intel.com>)
	id 1o3myn-0000X2-9P;
	Tue, 21 Jun 2022 23:08:17 +0000
Date: Wed, 22 Jun 2022 07:07:47 +0800
From: kernel test robot <lkp@intel.com>
To: Rahul T R <r-ravikumar@ti.com>, linux-phy@lists.infradead.org,
	kishon@ti.com, vkoul@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org
Cc: llvm@lists.linux.dev, kbuild-all@lists.01.org, p.yadav@ti.com,
	tomi.valkeinen@ideasonboard.com, laurent.pinchart@ideasonboard.com,
	linux-kernel@vger.kernel.org, jpawar@cadence.com,
	sjakhade@cadence.com, mparab@cadence.com,
	devicetree@vger.kernel.org, vigneshr@ti.com, lee.jones@linaro.org,
	Rahul T R <r-ravikumar@ti.com>
Subject: Re: [PATCH 2/3] phy: cdns-dphy: Add band config for dphy tx
Message-ID: <202206220747.oBZNVia0-lkp@intel.com>
References: <20220621180332.28767-3-r-ravikumar@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220621180332.28767-3-r-ravikumar@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220621_160825_109112_AB093737 
X-CRM114-Status: GOOD (  14.98  )
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

Hi Rahul,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on robh/for-next]
[also build test ERROR on linus/master v5.19-rc3 next-20220621]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/intel-lab-lkp/linux/commits/Rahul-T-R/Add-support-for-DPHY-TX-on-J721E/20220622-020528
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
config: hexagon-randconfig-r041-20220622 (https://download.01.org/0day-ci/archive/20220622/202206220747.oBZNVia0-lkp@intel.com/config)
compiler: clang version 15.0.0 (https://github.com/llvm/llvm-project af6d2a0b6825e71965f3e2701a63c239fa0ad70f)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/846aa076b0d86dd2ebc49c2a437c7b452305691d
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Rahul-T-R/Add-support-for-DPHY-TX-on-J721E/20220622-020528
        git checkout 846aa076b0d86dd2ebc49c2a437c7b452305691d
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=hexagon SHELL=/bin/bash drivers/phy/cadence/

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/phy/cadence/cdns-dphy.c:324:8: error: call to undeclared function 'FIELD_PREP'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
           reg = FIELD_PREP(DPHY_BAND_CFG_LEFT_BAND, band_ctrl) |
                 ^
   1 error generated.


vim +/FIELD_PREP +324 drivers/phy/cadence/cdns-dphy.c

   285	
   286	static int cdns_dphy_configure(struct phy *phy, union phy_configure_opts *opts)
   287	{
   288		struct cdns_dphy *dphy = phy_get_drvdata(phy);
   289		struct cdns_dphy_cfg cfg = { 0 };
   290		int ret, band_ctrl;
   291		unsigned int reg;
   292	
   293		ret = cdns_dphy_config_from_opts(phy, &opts->mipi_dphy, &cfg);
   294		if (ret)
   295			return ret;
   296	
   297		/*
   298		 * Configure the internal PSM clk divider so that the DPHY has a
   299		 * 1MHz clk (or something close).
   300		 */
   301		ret = cdns_dphy_setup_psm(dphy);
   302		if (ret)
   303			return ret;
   304	
   305		/*
   306		 * Configure attach clk lanes to data lanes: the DPHY has 2 clk lanes
   307		 * and 8 data lanes, each clk lane can be attache different set of
   308		 * data lanes. The 2 groups are named 'left' and 'right', so here we
   309		 * just say that we want the 'left' clk lane to drive the 'left' data
   310		 * lanes.
   311		 */
   312		cdns_dphy_set_clk_lane_cfg(dphy, DPHY_CLK_CFG_LEFT_DRIVES_LEFT);
   313	
   314		/*
   315		 * Configure the DPHY PLL that will be used to generate the TX byte
   316		 * clk.
   317		 */
   318		cdns_dphy_set_pll_cfg(dphy, &cfg);
   319	
   320		band_ctrl = cdns_dphy_tx_get_band_ctrl(opts->mipi_dphy.hs_clk_rate);
   321		if (band_ctrl < 0)
   322			return band_ctrl;
   323	
 > 324		reg = FIELD_PREP(DPHY_BAND_CFG_LEFT_BAND, band_ctrl) |
   325		      FIELD_PREP(DPHY_BAND_CFG_RIGHT_BAND, band_ctrl);
   326		writel(reg, dphy->regs + DPHY_BAND_CFG);
   327	
   328		return 0;
   329	}
   330	

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
