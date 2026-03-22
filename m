Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 625A6FC72C4
	for <linux-phy@archiver.kernel.org>; Sun, 22 Mar 2026 16:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DmBigWIHQwWnpt/1J3QXb62QTChvTNQw+U3r6c6bE28=; b=Q99w+BQzH6AOjf
	3XRIIUpE9CcJ3SuVM1ILJ6eqaEWJ4FrKYBir+OreqmCOX/uD/SC23YFDco48cY7pylGmmvZxCpQOz
	+GircImTomQAWhY5j9QC2N7I7ywZSrBFyjJ3kB2k2YXc1PThVpyymlJdFNpO3KiYiy5mY0oRhQrlv
	WpqedcdmBd2J+t0ZYIEMQQl1ABdmFTCRpZPpPb1vgc4uzHzpg5lt1/BNONe/L+U91H6UPRSAad/La
	j4BGpJr7CNeZBvhfOHWMrihKaa0TvWR8s2g3+SrEO6KkvrDzLHvKQYvJk8Swrh4I+oBhFbcHIV+OU
	YILbkgkFf23V+F4KzmJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4Lvg-0000000FW28-2nU0;
	Sun, 22 Mar 2026 16:45:32 +0000
Received: from mgamail.intel.com ([192.198.163.17])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4Lvd-0000000FW1e-1pSw
	for linux-phy@lists.infradead.org;
	Sun, 22 Mar 2026 16:45:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1774197929; x=1805733929;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=rGui68uRyg3X6940x/LNfy9+wopMGRcwkbytlfYAgxw=;
  b=dJgjekb1Db+LEXyDo7Yvy69NddDAL34CBtntFBo1MX4lmzMCkPR9gG+q
   M2cct1ab83EiMy8Xzwdl9iSGoS5O+8MSXCZIVlfOXHWaYS1SvVxVqE7ne
   qc8D2g/vGSc9v0GEti6Nhv9BKFEUmrBbNFkPLuoG7bOhQt40zbjOQqRl9
   0SwtgyYrgSzt6+wiM861jspaFQkm9I18ukDc6M+nvk9j2xUPPPxLSY+RD
   EcuHrQIQFaL/1cpc4bWS8/cmQKY37yHYKbPw4O9ieBmOXF3CQITPl+mM7
   Y4U64CCy04H3cWMkeTbYM9BDm2t0ggLTjJNkgLKEqBhsufKyZAIRM5Efu
   Q==;
X-CSE-ConnectionGUID: kgZ4WOg5RzO57nGrf3nP1g==
X-CSE-MsgGUID: emD5AEuESFGscojA23Pfyw==
X-IronPort-AV: E=McAfee;i="6800,10657,11737"; a="75118686"
X-IronPort-AV: E=Sophos;i="6.23,135,1770624000"; 
   d="scan'208";a="75118686"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
  by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Mar 2026 09:45:27 -0700
X-CSE-ConnectionGUID: SXflohIkSweq+msEphRqWA==
X-CSE-MsgGUID: AuNdDOZfQ2a4F3et6wkiZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,135,1770624000"; 
   d="scan'208";a="246829831"
Received: from lkp-server02.sh.intel.com (HELO d7fefbca0d04) ([10.239.97.151])
  by fmviesa002.fm.intel.com with ESMTP; 22 Mar 2026 09:45:24 -0700
Received: from kbuild by d7fefbca0d04 with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1w4LvK-000000002Of-3ofZ;
	Sun, 22 Mar 2026 16:45:12 +0000
Date: Mon, 23 Mar 2026 00:44:13 +0800
From: kernel test robot <lkp@intel.com>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Cc: oe-kbuild-all@lists.linux.dev, Bryan O'Donoghue <bod@kernel.org>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
Message-ID: <202603230048.ZxbvVL5L-lkp@intel.com>
References: <20260315-x1e-csi2-phy-v4-2-90c09203888d@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260315-x1e-csi2-phy-v4-2-90c09203888d@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260322_094530_379046_A193E2E5 
X-CRM114-Status: UNSURE (   9.96  )
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

Hi Bryan,

kernel test robot noticed the following build warnings:

[auto build test WARNING on c824345288d11e269ce41b36c105715bc2286050]

url:    https://github.com/intel-lab-lkp/linux/commits/Bryan-O-Donoghue/dt-bindings-phy-qcom-Add-CSI2-C-PHY-DPHY-schema/20260316-081353
base:   c824345288d11e269ce41b36c105715bc2286050
patch link:    https://lore.kernel.org/r/20260315-x1e-csi2-phy-v4-2-90c09203888d%40linaro.org
patch subject: [PATCH v4 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
config: arc-allyesconfig (https://download.01.org/0day-ci/archive/20260323/202603230048.ZxbvVL5L-lkp@intel.com/config)
compiler: arc-linux-gcc (GCC) 15.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260323/202603230048.ZxbvVL5L-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202603230048.ZxbvVL5L-lkp@intel.com/

All warnings (new ones prefixed by >>):

   drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c: In function 'phy_qcom_mipi_csi2_power_off':
>> drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c:153:13: warning: unused variable 'i' [-Wunused-variable]
     153 |         int i;
         |             ^


vim +/i +153 drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c

   149	
   150	static int phy_qcom_mipi_csi2_power_off(struct phy *phy)
   151	{
   152		struct mipi_csi2phy_device *csi2phy = phy_get_drvdata(phy);
 > 153		int i;
   154	
   155		for (int i = 0; i < csi2phy->num_pds; i++)
   156			dev_pm_genpd_set_performance_state(csi2phy->pds[i], 0);
   157	
   158		clk_bulk_disable_unprepare(csi2phy->soc_cfg->num_clk,
   159					   csi2phy->clks);
   160		regulator_bulk_disable(csi2phy->soc_cfg->num_supplies,
   161				       csi2phy->supplies);
   162	
   163		return 0;
   164	}
   165	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
