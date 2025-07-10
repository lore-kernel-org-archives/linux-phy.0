Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 837ECC83F1D
	for <linux-phy@archiver.kernel.org>; Thu, 10 Jul 2025 12:53:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0w2N9mlCl8MUqcBWxEKZ7fG2+nfHq8ujASeaaYRwNXw=; b=KlIzibicLJ/FOc
	1xvjA177Fj6FUbRp0lXRaAtLAcXkezHhlOgSrmPPcTKiIkEihCo1xxoKWV3ZWVDVttDaZRzMCpppC
	GNEmbFx4105OIDg17RBVxJnptZ2mAFSIMmRHvvx9d72e29K+SBd3I6p2FkuhCoU/qJ9gh+uavvETg
	c9qwdYALcf6LjTQdaUKO6skXnQU33WCbs7WzqENr6vgNH8FddVzNtcejaLVfktFO7Vha0ixIuQBNQ
	uD5f6YpR5B/GPBFJorScjSQ7tokfgncHdoA0LKB3R7JD9uQ7kduALO4I/J0ceO2SVQhWyTjDzGtBD
	J9In4cCcgr3Kl+cIQA1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZqlq-0000000Bpx1-19al;
	Thu, 10 Jul 2025 12:53:02 +0000
Received: from lelvem-ot02.ext.ti.com ([198.47.23.235])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZpZc-0000000BeYh-1Haz
	for linux-phy@lists.infradead.org;
	Thu, 10 Jul 2025 11:36:21 +0000
Received: from fllvem-sh04.itg.ti.com ([10.64.41.54])
	by lelvem-ot02.ext.ti.com (8.15.2/8.15.2) with ESMTP id 56ABa26k1763929;
	Thu, 10 Jul 2025 06:36:02 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1752147363;
	bh=rNTlqiHfvedDzNwAPVAxz8dEvxTfvjoNT8uo1s4H/iE=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=VAg73U0XXr7mcqHWsQkfbro7OfWhpnHDkblpOi9YUGZZ/lGMqJDy2IAqRa2coe3JD
	 UkiTG1P2uoJnibNBaa7YDYsj/koGRYHAE/1agTBKQDlkvRzezxIK4KrGIAK3YicgXm
	 shWYhDRyQchy4unKZcctLOkczf6EhB4pEp5lrxxc=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
	by fllvem-sh04.itg.ti.com (8.18.1/8.18.1) with ESMTPS id 56ABa2s83460955
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=FAIL);
	Thu, 10 Jul 2025 06:36:02 -0500
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55; Thu, 10
 Jul 2025 06:36:02 -0500
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55 via
 Frontend Transport; Thu, 10 Jul 2025 06:36:02 -0500
Received: from [172.24.227.193] (devarsh-precision-tower-3620.dhcp.ti.com [172.24.227.193])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 56ABZvml1266887;
	Thu, 10 Jul 2025 06:35:58 -0500
Message-ID: <dc494a08-9e5c-4ce7-8d60-3680f1658328@ti.com>
Date: Thu, 10 Jul 2025 17:05:57 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] phy: cadence: cdns-dphy: Fix PLL lock and
 O_CMN_READY polling
To: kernel test robot <lkp@intel.com>, <vkoul@kernel.org>, <kishon@kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>
CC: <llvm@lists.linux.dev>, <oe-kbuild-all@lists.linux.dev>,
        <aradhya.bhatia@linux.dev>, <s-jain1@ti.com>, <r-donadkar@ti.com>,
        <tomi.valkeinen@ideasonboard.com>, <j-choudhary@ti.com>,
        <a0512644@ti.com>
References: <20250704125915.1224738-2-devarsht@ti.com>
 <202507051038.XCl5miJ7-lkp@intel.com>
Content-Language: en-US
From: Devarsh Thakkar <devarsht@ti.com>
In-Reply-To: <202507051038.XCl5miJ7-lkp@intel.com>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_043620_447847_A55D36BC 
X-CRM114-Status: GOOD (  20.23  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hello,

On 05/07/25 08:32, kernel test robot wrote:
> Hi Devarsh,
> 
> kernel test robot noticed the following build errors:
> 
> [auto build test ERROR on linus/master]
> [also build test ERROR on v6.16-rc4 next-20250704]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch#_base_tree_information]
> 
> url:    https://github.com/intel-lab-lkp/linux/commits/Devarsh-Thakkar/phy-cadence-cdns-dphy-Fix-PLL-lock-and-O_CMN_READY-polling/20250704-210349
> base:   linus/master
> patch link:    https://lore.kernel.org/r/20250704125915.1224738-2-devarsht%40ti.com
> patch subject: [PATCH v4 1/2] phy: cadence: cdns-dphy: Fix PLL lock and O_CMN_READY polling
> config: x86_64-buildonly-randconfig-003-20250705 (https://download.01.org/0day-ci/archive/20250705/202507051038.XCl5miJ7-lkp@intel.com/config)
> compiler: clang version 20.1.7 (https://github.com/llvm/llvm-project 6146a88f60492b520a36f8f8f3231e15f3cc6082)
> reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250705/202507051038.XCl5miJ7-lkp@intel.com/reproduce)
> 
> If you fix the issue in a separate patch/commit (i.e. not just a new version of
> the same patch/commit), kindly add following tags
> | Reported-by: kernel test robot <lkp@intel.com>
> | Closes: https://lore.kernel.org/oe-kbuild-all/202507051038.XCl5miJ7-lkp@intel.com/
> 
> All errors (new ones prefixed by >>):
> 
>>> drivers/phy/cadence/cdns-dphy.c:408:45: error: no member named 'hs_clk_rate' in 'struct cdns_dphy_cfg'
>       408 |         ret = cdns_dphy_tx_get_band_ctrl(dphy->cfg.hs_clk_rate);
>           |                                          ~~~~~~~~~ ^
>     1 error generated.
> 

This is expected, since as mentioned in cover-letter this patch needs to 
be applied on top of [1] and [2] from the series [3] as suggested in the 
review [4] for the previous revision.

[1]: 
https://lore.kernel.org/all/20250618-cdns-dsi-impro-v4-4-862c841dbe02@ideasonboard.com/ 

[2]: 
https://lore.kernel.org/all/20250618-cdns-dsi-impro-v4-5-862c841dbe02@ideasonboard.com/ 

[3]: 
https://lore.kernel.org/all/20250618-cdns-dsi-impro-v4-0-862c841dbe02@ideasonboard.com/
[4]: 
https://lore.kernel.org/all/218ba1a0-068d-4bb2-bba2-2739afa7f470@ideasonboard.com/

Regards
Devarsh

> 
> vim +408 drivers/phy/cadence/cdns-dphy.c
> 
>     370	
>     371	static int cdns_dphy_power_on(struct phy *phy)
>     372	{
>     373		struct cdns_dphy *dphy = phy_get_drvdata(phy);
>     374		int ret;
>     375		u32 reg;
>     376	
>     377		if (!dphy->is_configured || dphy->is_powered)
>     378			return -EINVAL;
>     379	
>     380		clk_prepare_enable(dphy->psm_clk);
>     381		clk_prepare_enable(dphy->pll_ref_clk);
>     382	
>     383		/*
>     384		 * Configure the internal PSM clk divider so that the DPHY has a
>     385		 * 1MHz clk (or something close).
>     386		 */
>     387		ret = cdns_dphy_setup_psm(dphy);
>     388		if (ret) {
>     389			dev_err(&dphy->phy->dev, "Failed to setup PSM with error %d\n", ret);
>     390			goto err_power_on;
>     391		}
>     392	
>     393		/*
>     394		 * Configure attach clk lanes to data lanes: the DPHY has 2 clk lanes
>     395		 * and 8 data lanes, each clk lane can be attache different set of
>     396		 * data lanes. The 2 groups are named 'left' and 'right', so here we
>     397		 * just say that we want the 'left' clk lane to drive the 'left' data
>     398		 * lanes.
>     399		 */
>     400		cdns_dphy_set_clk_lane_cfg(dphy, DPHY_CLK_CFG_LEFT_DRIVES_LEFT);
>     401	
>     402		/*
>     403		 * Configure the DPHY PLL that will be used to generate the TX byte
>     404		 * clk.
>     405		 */
>     406		cdns_dphy_set_pll_cfg(dphy, &dphy->cfg);
>     407	
>   > 408		ret = cdns_dphy_tx_get_band_ctrl(dphy->cfg.hs_clk_rate);
>     409		if (ret < 0) {
>     410			dev_err(&dphy->phy->dev, "Failed to get band control value with error %d\n", ret);
>     411			goto err_power_on;
>     412		}
>     413	
>     414		reg = FIELD_PREP(DPHY_BAND_CFG_LEFT_BAND, ret) |
>     415		      FIELD_PREP(DPHY_BAND_CFG_RIGHT_BAND, ret);
>     416		writel(reg, dphy->regs + DPHY_BAND_CFG);
>     417	
>     418		/* Start TX state machine. */
>     419		writel(DPHY_CMN_SSM_EN | DPHY_CMN_TX_MODE_EN,
>     420		       dphy->regs + DPHY_CMN_SSM);
>     421	
>     422		ret = cdns_dphy_wait_for_pll_lock(dphy);
>     423		if (ret) {
>     424			dev_err(&dphy->phy->dev, "Failed to lock PLL with error %d\n", ret);
>     425			goto err_power_on;
>     426		}
>     427	
>     428		ret = cdns_dphy_wait_for_cmn_ready(dphy);
>     429		if (ret) {
>     430			dev_err(&dphy->phy->dev, "O_CMN_READY signal failed to assert with error %d\n",
>     431				ret);
>     432			goto err_power_on;
>     433		}
>     434	
>     435		dphy->is_powered = true;
>     436	
>     437		return 0;
>     438	
>     439	err_power_on:
>     440		clk_disable_unprepare(dphy->pll_ref_clk);
>     441		clk_disable_unprepare(dphy->psm_clk);
>     442	
>     443		return ret;
>     444	}
>     445	
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
