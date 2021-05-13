Return-Path: <SRS0=66Jo=KI=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FEB4C433B4
	for <linux-phy@archiver.kernel.org>; Thu, 13 May 2021 06:38:06 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8AABA61428
	for <linux-phy@archiver.kernel.org>; Thu, 13 May 2021 06:38:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8AABA61428
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:CC:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+yiXn0yFyxQZndWkn2ORVNuPYEKaHjfFnfrc5uvhOiA=; b=KtyeNvdlna1mchpng+15j8XRj
	GYZvFyGVjh5p408BuuKPQdqyTElx4toN9onQj32xUNG2uSpucjV2rRobHj5EAJiz/Jah6lRcRYAXa
	CtUDRaYpIrwKmfX65k9p4rWvVhGeQ+WcZgYV3CCv3C/fKPmgtdCaUSBFJm5kiu3cMgjynrUH0vxk9
	3mQjvbMcjI8ESzE8VfRN7Hr2nsn+ZPfpTZ2eUpZCQhbtWkCZdFf8hvAtpNc/pf10TlcDQvvuMasmi
	ZIRWvnTnVQxkKC/CcjbTP5Pb32hN80DEET+VE9GRQINN0sjKkOVgeuDuJkoD6qFWtHOHVMu+4cX2s
	kC0UcdVew==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lh4yx-004vlC-Pw; Thu, 13 May 2021 06:38:03 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lh4yu-004vkm-RK
 for linux-phy@desiato.infradead.org; Thu, 13 May 2021 06:38:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:CC:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=mffXkUFwoAbjKjsb0vLd1lzYCI2TVNQ9N8Snpv0SbM4=; b=uONTy+x41xICXpTSlovpt0JJVY
 ru8v94fCTDBwG2W+6TTbd0qlDTFDxW9Xy+qhSFRfqaxP8+OXln6E3FZBQ5uXiVTw6VmsUAs/2MUIX
 PeFP/mCugxabC5uz6LG5IPY9DcUltQSfQ/JYLoJNWNyQ/432gc2sLrSzIADyBlJAagfXzUG/ARi1B
 mlVayrxyu6POvEtbucM7FCkr63NBzHS3JqUGHIM0O+62hI77FaXVCbJEAjhvRcN0m3wf5AdUaoh7H
 tCbyZPamyInq9Z7YQg0VxrGJXzCRvTL20V8lSmMIagOwwdp+ymoKmDbe0ckWhqwIK0i1O5uzBe8Mg
 /gZ84CEw==;
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lh4yr-00B3B6-7i
 for linux-phy@lists.infradead.org; Thu, 13 May 2021 06:37:59 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 14D6bs6J091511;
 Thu, 13 May 2021 01:37:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1620887874;
 bh=mffXkUFwoAbjKjsb0vLd1lzYCI2TVNQ9N8Snpv0SbM4=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=JvyZ+SELKD6SMHsMqQ6G84U1uCn7fDXfI4TrKNKXlbTtjJEi8KrOamwywe25x9CEL
 4Cu/fn/uM/YFWcJ1qTJLgVFMHZWP+GZdTkFzbP4OSbl96eKLxdvw7d/qrwataZ3Ikn
 RB3K7f4C+++SzzNg3iIZ/NRP21mQXDpio0Kamo3I=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 14D6bsJS101026
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 13 May 2021 01:37:54 -0500
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Thu, 13
 May 2021 01:37:53 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Thu, 13 May 2021 01:37:53 -0500
Received: from [10.250.232.157] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 14D6bnKc071392;
 Thu, 13 May 2021 01:37:50 -0500
Subject: Re: [PATCH 02/14] phy: cadence-torrent: Reorder few functions to
 remove function declarations
To: Swapnil Jakhade <sjakhade@cadence.com>, <vkoul@kernel.org>,
 <p.zabel@pengutronix.de>, <linux-phy@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
CC: <mparab@cadence.com>, <lokeshvutla@ti.com>
References: <1617946456-27773-1-git-send-email-sjakhade@cadence.com>
 <1617946456-27773-3-git-send-email-sjakhade@cadence.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <509084ce-1425-4dab-ac0d-9e57e8786eb0@ti.com>
Date: Thu, 13 May 2021 12:07:49 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <1617946456-27773-3-git-send-email-sjakhade@cadence.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210512_233757_404556_52B0DD41 
X-CRM114-Status: GOOD (  28.46  )
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

Hi Swapnil,

On 09/04/21 11:04 am, Swapnil Jakhade wrote:
> Reorder some functions to avoid function declarations.
> No functional change.
> 
> Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>

Please squash patches 2, 6 and 7 together unless you have a specific
reason to keep them separate.

Thanks
Kishon

> ---
>  drivers/phy/cadence/phy-cadence-torrent.c | 474 +++++++++++-----------
>  1 file changed, 229 insertions(+), 245 deletions(-)
> 
> diff --git a/drivers/phy/cadence/phy-cadence-torrent.c b/drivers/phy/cadence/phy-cadence-torrent.c
> index ff647669f1a3..6eeb753fbb78 100644
> --- a/drivers/phy/cadence/phy-cadence-torrent.c
> +++ b/drivers/phy/cadence/phy-cadence-torrent.c
> @@ -333,12 +333,6 @@ struct cdns_torrent_derived_refclk {
>  #define to_cdns_torrent_derived_refclk(_hw)	\
>  			container_of(_hw, struct cdns_torrent_derived_refclk, hw)
>  
> -static int cdns_torrent_phy_init(struct phy *phy);
> -static int cdns_torrent_dp_init(struct phy *phy);
> -static int cdns_torrent_dp_run(struct cdns_torrent_phy *cdns_phy,
> -			       u32 num_lanes);
> -static
> -int cdns_torrent_dp_wait_pma_cmn_ready(struct cdns_torrent_phy *cdns_phy);
>  static void cdns_torrent_dp_pma_cfg(struct cdns_torrent_phy *cdns_phy,
>  				    struct cdns_torrent_inst *inst);
>  static
> @@ -353,36 +347,6 @@ void cdns_torrent_dp_pma_cmn_vco_cfg_25mhz(struct cdns_torrent_phy *cdns_phy,
>  					   u32 rate, bool ssc);
>  static void cdns_torrent_dp_pma_lane_cfg(struct cdns_torrent_phy *cdns_phy,
>  					 unsigned int lane);
> -static void cdns_torrent_dp_pma_cmn_rate(struct cdns_torrent_phy *cdns_phy,
> -					 u32 rate, u32 num_lanes);
> -static int cdns_torrent_dp_configure(struct phy *phy,
> -				     union phy_configure_opts *opts);
> -static int cdns_torrent_dp_set_power_state(struct cdns_torrent_phy *cdns_phy,
> -					   u32 num_lanes,
> -					   enum phy_powerstate powerstate);
> -static int cdns_torrent_phy_on(struct phy *phy);
> -static int cdns_torrent_phy_off(struct phy *phy);
> -
> -static const struct phy_ops cdns_torrent_phy_ops = {
> -	.init		= cdns_torrent_phy_init,
> -	.configure	= cdns_torrent_dp_configure,
> -	.power_on	= cdns_torrent_phy_on,
> -	.power_off	= cdns_torrent_phy_off,
> -	.owner		= THIS_MODULE,
> -};
> -
> -static int cdns_torrent_noop_phy_on(struct phy *phy)
> -{
> -	/* Give 5ms to 10ms delay for the PIPE clock to be stable */
> -	usleep_range(5000, 10000);
> -
> -	return 0;
> -}
> -
> -static const struct phy_ops noop_ops = {
> -	.power_on	= cdns_torrent_noop_phy_on,
> -	.owner		= THIS_MODULE,
> -};
>  
>  struct cdns_reg_pairs {
>  	u32 val;
> @@ -669,6 +633,164 @@ static int cdns_torrent_dp_set_pll_en(struct cdns_torrent_phy *cdns_phy,
>  	return ret;
>  }
>  
> +static int cdns_torrent_dp_set_power_state(struct cdns_torrent_phy *cdns_phy,
> +					   u32 num_lanes,
> +					   enum phy_powerstate powerstate)
> +{
> +	/* Register value for power state for a single byte. */
> +	u32 value_part;
> +	u32 value;
> +	u32 mask;
> +	u32 read_val;
> +	u32 ret;
> +	struct regmap *regmap = cdns_phy->regmap_dptx_phy_reg;
> +
> +	switch (powerstate) {
> +	case (POWERSTATE_A0):
> +		value_part = 0x01U;
> +		break;
> +	case (POWERSTATE_A2):
> +		value_part = 0x04U;
> +		break;
> +	default:
> +		/* Powerstate A3 */
> +		value_part = 0x08U;
> +		break;
> +	}
> +
> +	/* Select values of registers and mask, depending on enabled
> +	 * lane count.
> +	 */
> +	switch (num_lanes) {
> +	/* lane 0 */
> +	case (1):
> +		value = value_part;
> +		mask = 0x0000003FU;
> +		break;
> +	/* lanes 0-1 */
> +	case (2):
> +		value = (value_part
> +			 | (value_part << 8));
> +		mask = 0x00003F3FU;
> +		break;
> +	/* lanes 0-3, all */
> +	default:
> +		value = (value_part
> +			 | (value_part << 8)
> +			 | (value_part << 16)
> +			 | (value_part << 24));
> +		mask = 0x3F3F3F3FU;
> +		break;
> +	}
> +
> +	/* Set power state A<n>. */
> +	cdns_torrent_dp_write(regmap, PHY_PMA_XCVR_POWER_STATE_REQ, value);
> +	/* Wait, until PHY acknowledges power state completion. */
> +	ret = regmap_read_poll_timeout(regmap, PHY_PMA_XCVR_POWER_STATE_ACK,
> +				       read_val, (read_val & mask) == value, 0,
> +				       POLL_TIMEOUT_US);
> +	cdns_torrent_dp_write(regmap, PHY_PMA_XCVR_POWER_STATE_REQ, 0x00000000);
> +	ndelay(100);
> +
> +	return ret;
> +}
> +
> +static int cdns_torrent_dp_run(struct cdns_torrent_phy *cdns_phy, u32 num_lanes)
> +{
> +	unsigned int read_val;
> +	int ret;
> +	struct regmap *regmap = cdns_phy->regmap_dptx_phy_reg;
> +
> +	/*
> +	 * waiting for ACK of pma_xcvr_pllclk_en_ln_*, only for the
> +	 * master lane
> +	 */
> +	ret = regmap_read_poll_timeout(regmap, PHY_PMA_XCVR_PLLCLK_EN_ACK,
> +				       read_val, read_val & 1,
> +				       0, POLL_TIMEOUT_US);
> +	if (ret == -ETIMEDOUT) {
> +		dev_err(cdns_phy->dev,
> +			"timeout waiting for link PLL clock enable ack\n");
> +		return ret;
> +	}
> +
> +	ndelay(100);
> +
> +	ret = cdns_torrent_dp_set_power_state(cdns_phy, num_lanes,
> +					      POWERSTATE_A2);
> +	if (ret)
> +		return ret;
> +
> +	ret = cdns_torrent_dp_set_power_state(cdns_phy, num_lanes,
> +					      POWERSTATE_A0);
> +
> +	return ret;
> +}
> +
> +static int cdns_torrent_dp_wait_pma_cmn_ready(struct cdns_torrent_phy *cdns_phy)
> +{
> +	unsigned int reg;
> +	int ret;
> +	struct regmap *regmap = cdns_phy->regmap_dptx_phy_reg;
> +
> +	ret = regmap_read_poll_timeout(regmap, PHY_PMA_CMN_READY, reg,
> +				       reg & 1, 0, POLL_TIMEOUT_US);
> +	if (ret == -ETIMEDOUT) {
> +		dev_err(cdns_phy->dev,
> +			"timeout waiting for PMA common ready\n");
> +		return -ETIMEDOUT;
> +	}
> +
> +	return 0;
> +}
> +
> +static void cdns_torrent_dp_pma_cmn_rate(struct cdns_torrent_phy *cdns_phy,
> +					 u32 rate, u32 num_lanes)
> +{
> +	unsigned int clk_sel_val = 0;
> +	unsigned int hsclk_div_val = 0;
> +	unsigned int i;
> +
> +	/* 16'h0000 for single DP link configuration */
> +	regmap_field_write(cdns_phy->phy_pll_cfg, 0x0);
> +
> +	switch (rate) {
> +	case 1620:
> +		clk_sel_val = 0x0f01;
> +		hsclk_div_val = 2;
> +		break;
> +	case 2160:
> +	case 2430:
> +	case 2700:
> +		clk_sel_val = 0x0701;
> +		hsclk_div_val = 1;
> +		break;
> +	case 3240:
> +		clk_sel_val = 0x0b00;
> +		hsclk_div_val = 2;
> +		break;
> +	case 4320:
> +	case 5400:
> +		clk_sel_val = 0x0301;
> +		hsclk_div_val = 0;
> +		break;
> +	case 8100:
> +		clk_sel_val = 0x0200;
> +		hsclk_div_val = 0;
> +		break;
> +	}
> +
> +	cdns_torrent_phy_write(cdns_phy->regmap_common_cdb,
> +			       CMN_PDIAG_PLL0_CLK_SEL_M0, clk_sel_val);
> +	cdns_torrent_phy_write(cdns_phy->regmap_common_cdb,
> +			       CMN_PDIAG_PLL1_CLK_SEL_M0, clk_sel_val);
> +
> +	/* PMA lane configuration to deal with multi-link operation */
> +	for (i = 0; i < num_lanes; i++)
> +		cdns_torrent_phy_write(cdns_phy->regmap_tx_lane_cdb[i],
> +				       XCVR_DIAG_HSCLK_DIV, hsclk_div_val);
> +}
> +
>  /*
>   * Perform register operations related to setting link rate, once powerstate is
>   * set and PLL disable request was processed.
> @@ -984,6 +1106,56 @@ static int cdns_torrent_dp_configure(struct phy *phy,
>  	return ret;
>  }
>  
> +static int cdns_torrent_phy_on(struct phy *phy)
> +{
> +	struct cdns_torrent_inst *inst = phy_get_drvdata(phy);
> +	struct cdns_torrent_phy *cdns_phy = dev_get_drvdata(phy->dev.parent);
> +	u32 read_val;
> +	int ret;
> +
> +	if (cdns_phy->nsubnodes == 1) {
> +		/* Take the PHY lane group out of reset */
> +		reset_control_deassert(inst->lnk_rst);
> +
> +		/* Take the PHY out of reset */
> +		ret = reset_control_deassert(cdns_phy->phy_rst);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	/*
> +	 * Wait for cmn_ready assertion
> +	 * PHY_PMA_CMN_CTRL1[0] == 1
> +	 */
> +	ret = regmap_field_read_poll_timeout(cdns_phy->phy_pma_cmn_ctrl_1,
> +					     read_val, read_val, 1000,
> +					     PLL_LOCK_TIMEOUT);
> +	if (ret) {
> +		dev_err(cdns_phy->dev, "Timeout waiting for CMN ready\n");
> +		return ret;
> +	}
> +
> +	mdelay(10);
> +
> +	return 0;
> +}
> +
> +static int cdns_torrent_phy_off(struct phy *phy)
> +{
> +	struct cdns_torrent_inst *inst = phy_get_drvdata(phy);
> +	struct cdns_torrent_phy *cdns_phy = dev_get_drvdata(phy->dev.parent);
> +	int ret;
> +
> +	if (cdns_phy->nsubnodes != 1)
> +		return 0;
> +
> +	ret = reset_control_assert(cdns_phy->phy_rst);
> +	if (ret)
> +		return ret;
> +
> +	return reset_control_assert(inst->lnk_rst);
> +}
> +
>  static int cdns_torrent_dp_init(struct phy *phy)
>  {
>  	unsigned char lane_bits;
> @@ -1051,24 +1223,6 @@ static int cdns_torrent_dp_init(struct phy *phy)
>  	return ret;
>  }
>  
> -static
> -int cdns_torrent_dp_wait_pma_cmn_ready(struct cdns_torrent_phy *cdns_phy)
> -{
> -	unsigned int reg;
> -	int ret;
> -	struct regmap *regmap = cdns_phy->regmap_dptx_phy_reg;
> -
> -	ret = regmap_read_poll_timeout(regmap, PHY_PMA_CMN_READY, reg,
> -				       reg & 1, 0, POLL_TIMEOUT_US);
> -	if (ret == -ETIMEDOUT) {
> -		dev_err(cdns_phy->dev,
> -			"timeout waiting for PMA common ready\n");
> -		return -ETIMEDOUT;
> -	}
> -
> -	return 0;
> -}
> -
>  static void cdns_torrent_dp_pma_cfg(struct cdns_torrent_phy *cdns_phy,
>  				    struct cdns_torrent_inst *inst)
>  {
> @@ -1478,53 +1632,6 @@ void cdns_torrent_dp_pma_cmn_vco_cfg_25mhz(struct cdns_torrent_phy *cdns_phy,
>  	cdns_torrent_phy_write(regmap, CMN_PLL1_LOCK_PLLCNT_START, 0x00C7);
>  }
>  
> -static void cdns_torrent_dp_pma_cmn_rate(struct cdns_torrent_phy *cdns_phy,
> -					 u32 rate, u32 num_lanes)
> -{
> -	unsigned int clk_sel_val = 0;
> -	unsigned int hsclk_div_val = 0;
> -	unsigned int i;
> -
> -	/* 16'h0000 for single DP link configuration */
> -	regmap_field_write(cdns_phy->phy_pll_cfg, 0x0);
> -
> -	switch (rate) {
> -	case 1620:
> -		clk_sel_val = 0x0f01;
> -		hsclk_div_val = 2;
> -		break;
> -	case 2160:
> -	case 2430:
> -	case 2700:
> -		clk_sel_val = 0x0701;
> -		hsclk_div_val = 1;
> -		break;
> -	case 3240:
> -		clk_sel_val = 0x0b00;
> -		hsclk_div_val = 2;
> -		break;
> -	case 4320:
> -	case 5400:
> -		clk_sel_val = 0x0301;
> -		hsclk_div_val = 0;
> -		break;
> -	case 8100:
> -		clk_sel_val = 0x0200;
> -		hsclk_div_val = 0;
> -		break;
> -	}
> -
> -	cdns_torrent_phy_write(cdns_phy->regmap_common_cdb,
> -			       CMN_PDIAG_PLL0_CLK_SEL_M0, clk_sel_val);
> -	cdns_torrent_phy_write(cdns_phy->regmap_common_cdb,
> -			       CMN_PDIAG_PLL1_CLK_SEL_M0, clk_sel_val);
> -
> -	/* PMA lane configuration to deal with multi-link operation */
> -	for (i = 0; i < num_lanes; i++)
> -		cdns_torrent_phy_write(cdns_phy->regmap_tx_lane_cdb[i],
> -				       XCVR_DIAG_HSCLK_DIV, hsclk_div_val);
> -}
> -
>  static void cdns_torrent_dp_pma_lane_cfg(struct cdns_torrent_phy *cdns_phy,
>  					 unsigned int lane)
>  {
> @@ -1568,100 +1675,6 @@ static void cdns_torrent_dp_pma_lane_cfg(struct cdns_torrent_phy *cdns_phy,
>  			       XCVR_DIAG_HSCLK_SEL, 0x0000);
>  }
>  
> -static int cdns_torrent_dp_set_power_state(struct cdns_torrent_phy *cdns_phy,
> -					   u32 num_lanes,
> -					   enum phy_powerstate powerstate)
> -{
> -	/* Register value for power state for a single byte. */
> -	u32 value_part;
> -	u32 value;
> -	u32 mask;
> -	u32 read_val;
> -	u32 ret;
> -	struct regmap *regmap = cdns_phy->regmap_dptx_phy_reg;
> -
> -	switch (powerstate) {
> -	case (POWERSTATE_A0):
> -		value_part = 0x01U;
> -		break;
> -	case (POWERSTATE_A2):
> -		value_part = 0x04U;
> -		break;
> -	default:
> -		/* Powerstate A3 */
> -		value_part = 0x08U;
> -		break;
> -	}
> -
> -	/* Select values of registers and mask, depending on enabled
> -	 * lane count.
> -	 */
> -	switch (num_lanes) {
> -	/* lane 0 */
> -	case (1):
> -		value = value_part;
> -		mask = 0x0000003FU;
> -		break;
> -	/* lanes 0-1 */
> -	case (2):
> -		value = (value_part
> -			 | (value_part << 8));
> -		mask = 0x00003F3FU;
> -		break;
> -	/* lanes 0-3, all */
> -	default:
> -		value = (value_part
> -			 | (value_part << 8)
> -			 | (value_part << 16)
> -			 | (value_part << 24));
> -		mask = 0x3F3F3F3FU;
> -		break;
> -	}
> -
> -	/* Set power state A<n>. */
> -	cdns_torrent_dp_write(regmap, PHY_PMA_XCVR_POWER_STATE_REQ, value);
> -	/* Wait, until PHY acknowledges power state completion. */
> -	ret = regmap_read_poll_timeout(regmap, PHY_PMA_XCVR_POWER_STATE_ACK,
> -				       read_val, (read_val & mask) == value, 0,
> -				       POLL_TIMEOUT_US);
> -	cdns_torrent_dp_write(regmap, PHY_PMA_XCVR_POWER_STATE_REQ, 0x00000000);
> -	ndelay(100);
> -
> -	return ret;
> -}
> -
> -static int cdns_torrent_dp_run(struct cdns_torrent_phy *cdns_phy, u32 num_lanes)
> -{
> -	unsigned int read_val;
> -	int ret;
> -	struct regmap *regmap = cdns_phy->regmap_dptx_phy_reg;
> -
> -	/*
> -	 * waiting for ACK of pma_xcvr_pllclk_en_ln_*, only for the
> -	 * master lane
> -	 */
> -	ret = regmap_read_poll_timeout(regmap, PHY_PMA_XCVR_PLLCLK_EN_ACK,
> -				       read_val, read_val & 1,
> -				       0, POLL_TIMEOUT_US);
> -	if (ret == -ETIMEDOUT) {
> -		dev_err(cdns_phy->dev,
> -			"timeout waiting for link PLL clock enable ack\n");
> -		return ret;
> -	}
> -
> -	ndelay(100);
> -
> -	ret = cdns_torrent_dp_set_power_state(cdns_phy, num_lanes,
> -					      POWERSTATE_A2);
> -	if (ret)
> -		return ret;
> -
> -	ret = cdns_torrent_dp_set_power_state(cdns_phy, num_lanes,
> -					      POWERSTATE_A0);
> -
> -	return ret;
> -}
> -
>  static int cdns_torrent_derived_refclk_enable(struct clk_hw *hw)
>  {
>  	struct cdns_torrent_derived_refclk *derived_refclk = to_cdns_torrent_derived_refclk(hw);
> @@ -1764,56 +1777,6 @@ static int cdns_torrent_derived_refclk_register(struct cdns_torrent_phy *cdns_ph
>  	return 0;
>  }
>  
> -static int cdns_torrent_phy_on(struct phy *phy)
> -{
> -	struct cdns_torrent_inst *inst = phy_get_drvdata(phy);
> -	struct cdns_torrent_phy *cdns_phy = dev_get_drvdata(phy->dev.parent);
> -	u32 read_val;
> -	int ret;
> -
> -	if (cdns_phy->nsubnodes == 1) {
> -		/* Take the PHY lane group out of reset */
> -		reset_control_deassert(inst->lnk_rst);
> -
> -		/* Take the PHY out of reset */
> -		ret = reset_control_deassert(cdns_phy->phy_rst);
> -		if (ret)
> -			return ret;
> -	}
> -
> -	/*
> -	 * Wait for cmn_ready assertion
> -	 * PHY_PMA_CMN_CTRL1[0] == 1
> -	 */
> -	ret = regmap_field_read_poll_timeout(cdns_phy->phy_pma_cmn_ctrl_1,
> -					     read_val, read_val, 1000,
> -					     PLL_LOCK_TIMEOUT);
> -	if (ret) {
> -		dev_err(cdns_phy->dev, "Timeout waiting for CMN ready\n");
> -		return ret;
> -	}
> -
> -	mdelay(10);
> -
> -	return 0;
> -}
> -
> -static int cdns_torrent_phy_off(struct phy *phy)
> -{
> -	struct cdns_torrent_inst *inst = phy_get_drvdata(phy);
> -	struct cdns_torrent_phy *cdns_phy = dev_get_drvdata(phy->dev.parent);
> -	int ret;
> -
> -	if (cdns_phy->nsubnodes != 1)
> -		return 0;
> -
> -	ret = reset_control_assert(cdns_phy->phy_rst);
> -	if (ret)
> -		return ret;
> -
> -	return reset_control_assert(inst->lnk_rst);
> -}
> -
>  static struct regmap *cdns_regmap_init(struct device *dev, void __iomem *base,
>  				       u32 block_offset,
>  				       u8 reg_offset_shift,
> @@ -2091,6 +2054,27 @@ static int cdns_torrent_phy_init(struct phy *phy)
>  	return 0;
>  }
>  
> +static const struct phy_ops cdns_torrent_phy_ops = {
> +	.init		= cdns_torrent_phy_init,
> +	.configure	= cdns_torrent_dp_configure,
> +	.power_on	= cdns_torrent_phy_on,
> +	.power_off	= cdns_torrent_phy_off,
> +	.owner		= THIS_MODULE,
> +};
> +
> +static int cdns_torrent_noop_phy_on(struct phy *phy)
> +{
> +	/* Give 5ms to 10ms delay for the PIPE clock to be stable */
> +	usleep_range(5000, 10000);
> +
> +	return 0;
> +}
> +
> +static const struct phy_ops noop_ops = {
> +	.power_on	= cdns_torrent_noop_phy_on,
> +	.owner		= THIS_MODULE,
> +};
> +
>  static
>  int cdns_torrent_phy_configure_multilink(struct cdns_torrent_phy *cdns_phy)
>  {
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
