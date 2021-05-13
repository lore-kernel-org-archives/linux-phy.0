Return-Path: <SRS0=66Jo=KI=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A025C433B4
	for <linux-phy@archiver.kernel.org>; Thu, 13 May 2021 07:47:22 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E9B29613F7
	for <linux-phy@archiver.kernel.org>; Thu, 13 May 2021 07:47:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E9B29613F7
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:CC:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7K7Y0mr6tQ6xxy1HaQAddRWnK6i8+8bpQqR5VqJySn0=; b=SsjbQEL36SUL1Ty+59pKdybFO
	dyczGFrxSI8fD6lKFpgpvmPreL+triV+nGHfmbwJYydPKhK5imff8Pvs1DFRwq3+/t0freDFFc/Yj
	zbfTyW/6wxGOuSCFfkReOveKzNSyfJgEAtyguuucGEXfePEXVGTKXyFSk6eoI7fSc9dpcoR0ovEGG
	YuLdxQBEy6fybpp6xNEj8jwJewFyM81lTfoTaLDjrtpkXwcF7Ent92t+R1xPoV8l+qMDbUknEyObG
	DqcB2dD7fUsYrOHroOxVemxJRKjUFWPVtVJ9HWnC7pDGiDM4FsG2U+ZCrAJx0HCtnzUSyVt14Co44
	DOc4URH+w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lh640-0051ti-8f; Thu, 13 May 2021 07:47:20 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lh63x-0051tT-Ne
 for linux-phy@desiato.infradead.org; Thu, 13 May 2021 07:47:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:CC:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=QDWqwx1gf8f3V7AtFn1vm/kiWoZ6TPo3awiUQv8OkPs=; b=fN7ZmXco7FVeRC2Q7KQpZzFpV4
 0rZG6JCfHt/2ByhrWxG5fvqw9r3qpLhWu1p78TE3SATtd5+quk9ZQxwlX0UeG09AzYfoG73Yw6Zg9
 JaaiGHMZHp2CqDbcQSj2m/XjZZSOdwNRfls6EjnOUtwsyiUzSZ/b7SQ/CYEPmRTCn6rmuxSU5CKYD
 12uhaTyd/8xyWnCG+gzaCYMRYd37w3bnarlYqLFX4rJ4AlrASvraB4q3FhFWBb4AlL423m5MZvZ14
 IgdwK4SUlUf8w9gjkm1TsnmwSUmleVi7N01U9FD8uJoCri7CY5qaiNziQ5QHn+aKUO3xoso7NPzr4
 spU/fSbQ==;
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lh63u-00B5YZ-GV
 for linux-phy@lists.infradead.org; Thu, 13 May 2021 07:47:16 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 14D7lCV7129730;
 Thu, 13 May 2021 02:47:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1620892032;
 bh=QDWqwx1gf8f3V7AtFn1vm/kiWoZ6TPo3awiUQv8OkPs=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=AiHgsg5HbzLRgunBQZn9eMhR5VtCDYzCFA5gh9dhszQoXsg6bJOTyHPQUa4aUinCn
 BErDZq5oirl520JBLI4CN8ieYXrqsq6g98N3CRFZUwhBtSNwq3ropWDmEWp+rk3Tan
 KA4zN1CvBqeeqjiwD8U1oI7T5wFREqv9Q+OGJnE0=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 14D7lBHs061314
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 13 May 2021 02:47:11 -0500
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Thu, 13
 May 2021 02:47:11 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Thu, 13 May 2021 02:47:11 -0500
Received: from [10.250.232.157] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 14D7l8WY056199;
 Thu, 13 May 2021 02:47:09 -0500
Subject: Re: [PATCH 12/14] phy: cadence-torrent: Add PCIe + DP multilink
 configuration
To: Swapnil Jakhade <sjakhade@cadence.com>, <vkoul@kernel.org>,
 <p.zabel@pengutronix.de>, <linux-phy@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
CC: <mparab@cadence.com>, <lokeshvutla@ti.com>
References: <1617946456-27773-1-git-send-email-sjakhade@cadence.com>
 <1617946456-27773-13-git-send-email-sjakhade@cadence.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <58a18b90-9062-a44c-f712-977025142de5@ti.com>
Date: Thu, 13 May 2021 13:17:07 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <1617946456-27773-13-git-send-email-sjakhade@cadence.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210513_004714_673123_7C61A2F2 
X-CRM114-Status: GOOD (  16.22  )
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
> Add PCIe + DP no SSC multilink configuration sequences.

Looks neat! Exactly how it was all intended to look like. Thanks!

I would defer merging this till it gets tested in a platform though.

Thanks
Kishon

> 
> Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>
> ---
>  drivers/phy/cadence/phy-cadence-torrent.c | 131 ++++++++++++++++++++++
>  1 file changed, 131 insertions(+)
> 
> diff --git a/drivers/phy/cadence/phy-cadence-torrent.c b/drivers/phy/cadence/phy-cadence-torrent.c
> index becbf8456b2d..bf37569c6c51 100644
> --- a/drivers/phy/cadence/phy-cadence-torrent.c
> +++ b/drivers/phy/cadence/phy-cadence-torrent.c
> @@ -2572,6 +2572,77 @@ static int cdns_torrent_phy_remove(struct platform_device *pdev)
>  	return 0;
>  }
>  
> +/* PCIe and DP link configuration */
> +static struct cdns_reg_pairs pcie_dp_link_cmn_regs[] = {
> +	{0x0003, PHY_PLL_CFG},
> +	{0x0601, CMN_PDIAG_PLL0_CLK_SEL_M0},
> +	{0x0400, CMN_PDIAG_PLL0_CLK_SEL_M1}
> +};
> +
> +static struct cdns_reg_pairs pcie_dp_xcvr_diag_ln_regs[] = {
> +	{0x0000, XCVR_DIAG_HSCLK_SEL},
> +	{0x0001, XCVR_DIAG_HSCLK_DIV},
> +	{0x0012, XCVR_DIAG_PLLDRC_CTRL}
> +};
> +
> +static struct cdns_reg_pairs dp_pcie_xcvr_diag_ln_regs[] = {
> +	{0x0001, XCVR_DIAG_HSCLK_SEL},
> +	{0x0009, XCVR_DIAG_PLLDRC_CTRL}
> +};
> +
> +static struct cdns_torrent_vals pcie_dp_link_cmn_vals = {
> +	.reg_pairs = pcie_dp_link_cmn_regs,
> +	.num_regs = ARRAY_SIZE(pcie_dp_link_cmn_regs),
> +};
> +
> +static struct cdns_torrent_vals pcie_dp_xcvr_diag_ln_vals = {
> +	.reg_pairs = pcie_dp_xcvr_diag_ln_regs,
> +	.num_regs = ARRAY_SIZE(pcie_dp_xcvr_diag_ln_regs),
> +};
> +
> +static struct cdns_torrent_vals dp_pcie_xcvr_diag_ln_vals = {
> +	.reg_pairs = dp_pcie_xcvr_diag_ln_regs,
> +	.num_regs = ARRAY_SIZE(dp_pcie_xcvr_diag_ln_regs),
> +};
> +
> +/* DP Multilink, 100 MHz Ref clk, no SSC */
> +static struct cdns_reg_pairs dp_100_no_ssc_cmn_regs[] = {
> +	{0x007F, CMN_TXPUCAL_TUNE},
> +	{0x007F, CMN_TXPDCAL_TUNE}
> +};
> +
> +static struct cdns_reg_pairs dp_100_no_ssc_tx_ln_regs[] = {
> +	{0x00FB, TX_PSC_A0},
> +	{0x04AA, TX_PSC_A2},
> +	{0x04AA, TX_PSC_A3},
> +	{0x000F, XCVR_DIAG_BIDI_CTRL}
> +};
> +
> +static struct cdns_reg_pairs dp_100_no_ssc_rx_ln_regs[] = {
> +	{0x0000, RX_PSC_A0},
> +	{0x0000, RX_PSC_A2},
> +	{0x0000, RX_PSC_A3},
> +	{0x0000, RX_PSC_CAL},
> +	{0x0000, RX_REE_GCSM1_CTRL},
> +	{0x0000, RX_REE_GCSM2_CTRL},
> +	{0x0000, RX_REE_PERGCSM_CTRL}
> +};
> +
> +static struct cdns_torrent_vals dp_100_no_ssc_cmn_vals = {
> +	.reg_pairs = dp_100_no_ssc_cmn_regs,
> +	.num_regs = ARRAY_SIZE(dp_100_no_ssc_cmn_regs),
> +};
> +
> +static struct cdns_torrent_vals dp_100_no_ssc_tx_ln_vals = {
> +	.reg_pairs = dp_100_no_ssc_tx_ln_regs,
> +	.num_regs = ARRAY_SIZE(dp_100_no_ssc_tx_ln_regs),
> +};
> +
> +static struct cdns_torrent_vals dp_100_no_ssc_rx_ln_vals = {
> +	.reg_pairs = dp_100_no_ssc_rx_ln_regs,
> +	.num_regs = ARRAY_SIZE(dp_100_no_ssc_rx_ln_regs),
> +};
> +
>  /* Single DisplayPort(DP) link configuration */
>  static struct cdns_reg_pairs sl_dp_link_cmn_regs[] = {
>  	{0x0000, PHY_PLL_CFG},
> @@ -3514,6 +3585,9 @@ static const struct cdns_torrent_data cdns_map_torrent = {
>  			[TYPE_NONE] = {
>  				[NO_SSC] = &sl_dp_link_cmn_vals,
>  			},
> +			[TYPE_PCIE] = {
> +				[NO_SSC] = &pcie_dp_link_cmn_vals,
> +			},
>  		},
>  		[TYPE_PCIE] = {
>  			[TYPE_NONE] = {
> @@ -3536,6 +3610,9 @@ static const struct cdns_torrent_data cdns_map_torrent = {
>  				[EXTERNAL_SSC] = &pcie_usb_link_cmn_vals,
>  				[INTERNAL_SSC] = &pcie_usb_link_cmn_vals,
>  			},
> +			[TYPE_DP] = {
> +				[NO_SSC] = &pcie_dp_link_cmn_vals,
> +			},
>  		},
>  		[TYPE_SGMII] = {
>  			[TYPE_NONE] = {
> @@ -3595,6 +3672,9 @@ static const struct cdns_torrent_data cdns_map_torrent = {
>  			[TYPE_NONE] = {
>  				[NO_SSC] = &sl_dp_xcvr_diag_ln_vals,
>  			},
> +			[TYPE_PCIE] = {
> +				[NO_SSC] = &dp_pcie_xcvr_diag_ln_vals,
> +			},
>  		},
>  		[TYPE_PCIE] = {
>  			[TYPE_NONE] = {
> @@ -3617,6 +3697,9 @@ static const struct cdns_torrent_data cdns_map_torrent = {
>  				[EXTERNAL_SSC] = &pcie_usb_xcvr_diag_ln_vals,
>  				[INTERNAL_SSC] = &pcie_usb_xcvr_diag_ln_vals,
>  			},
> +			[TYPE_DP] = {
> +				[NO_SSC] = &pcie_dp_xcvr_diag_ln_vals,
> +			},
>  		},
>  		[TYPE_SGMII] = {
>  			[TYPE_NONE] = {
> @@ -3715,6 +3798,9 @@ static const struct cdns_torrent_data cdns_map_torrent = {
>  				[TYPE_NONE] = {
>  					[NO_SSC] = &sl_dp_100_no_ssc_cmn_vals,
>  				},
> +				[TYPE_PCIE] = {
> +					[NO_SSC] = &dp_100_no_ssc_cmn_vals,
> +				},
>  			},
>  			[TYPE_PCIE] = {
>  				[TYPE_NONE] = {
> @@ -3737,6 +3823,9 @@ static const struct cdns_torrent_data cdns_map_torrent = {
>  					[EXTERNAL_SSC] = &pcie_100_no_ssc_cmn_vals,
>  					[INTERNAL_SSC] = &pcie_100_int_ssc_cmn_vals,
>  				},
> +				[TYPE_DP] = {
> +					[NO_SSC] = NULL,
> +				},
>  			},
>  			[TYPE_SGMII] = {
>  				[TYPE_NONE] = {
> @@ -3812,6 +3901,9 @@ static const struct cdns_torrent_data cdns_map_torrent = {
>  				[TYPE_NONE] = {
>  					[NO_SSC] = &sl_dp_100_no_ssc_tx_ln_vals,
>  				},
> +				[TYPE_PCIE] = {
> +					[NO_SSC] = &dp_100_no_ssc_tx_ln_vals,
> +				},
>  			},
>  			[TYPE_PCIE] = {
>  				[TYPE_NONE] = {
> @@ -3834,6 +3926,9 @@ static const struct cdns_torrent_data cdns_map_torrent = {
>  					[EXTERNAL_SSC] = NULL,
>  					[INTERNAL_SSC] = NULL,
>  				},
> +				[TYPE_DP] = {
> +					[NO_SSC] = NULL,
> +				},
>  			},
>  			[TYPE_SGMII] = {
>  				[TYPE_NONE] = {
> @@ -3909,6 +4004,9 @@ static const struct cdns_torrent_data cdns_map_torrent = {
>  				[TYPE_NONE] = {
>  					[NO_SSC] = &sl_dp_100_no_ssc_rx_ln_vals,
>  				},
> +				[TYPE_PCIE] = {
> +					[NO_SSC] = &dp_100_no_ssc_rx_ln_vals,
> +				},
>  			},
>  			[TYPE_PCIE] = {
>  				[TYPE_NONE] = {
> @@ -3931,6 +4029,9 @@ static const struct cdns_torrent_data cdns_map_torrent = {
>  					[EXTERNAL_SSC] = &pcie_100_no_ssc_rx_ln_vals,
>  					[INTERNAL_SSC] = &pcie_100_no_ssc_rx_ln_vals,
>  				},
> +				[TYPE_DP] = {
> +					[NO_SSC] = &pcie_100_no_ssc_rx_ln_vals,
> +				},
>  			},
>  			[TYPE_SGMII] = {
>  				[TYPE_NONE] = {
> @@ -3996,6 +4097,9 @@ static const struct cdns_torrent_data ti_j721e_map_torrent = {
>  			[TYPE_NONE] = {
>  				[NO_SSC] = &sl_dp_link_cmn_vals,
>  			},
> +			[TYPE_PCIE] = {
> +				[NO_SSC] = &pcie_dp_link_cmn_vals,
> +			},
>  		},
>  		[TYPE_PCIE] = {
>  			[TYPE_NONE] = {
> @@ -4018,6 +4122,9 @@ static const struct cdns_torrent_data ti_j721e_map_torrent = {
>  				[EXTERNAL_SSC] = &pcie_usb_link_cmn_vals,
>  				[INTERNAL_SSC] = &pcie_usb_link_cmn_vals,
>  			},
> +			[TYPE_DP] = {
> +				[NO_SSC] = &pcie_dp_link_cmn_vals,
> +			},
>  		},
>  		[TYPE_SGMII] = {
>  			[TYPE_NONE] = {
> @@ -4077,6 +4184,9 @@ static const struct cdns_torrent_data ti_j721e_map_torrent = {
>  			[TYPE_NONE] = {
>  				[NO_SSC] = &sl_dp_xcvr_diag_ln_vals,
>  			},
> +			[TYPE_PCIE] = {
> +				[NO_SSC] = &dp_pcie_xcvr_diag_ln_vals,
> +			},
>  		},
>  		[TYPE_PCIE] = {
>  			[TYPE_NONE] = {
> @@ -4099,6 +4209,9 @@ static const struct cdns_torrent_data ti_j721e_map_torrent = {
>  				[EXTERNAL_SSC] = &pcie_usb_xcvr_diag_ln_vals,
>  				[INTERNAL_SSC] = &pcie_usb_xcvr_diag_ln_vals,
>  			},
> +			[TYPE_DP] = {
> +				[NO_SSC] = &pcie_dp_xcvr_diag_ln_vals,
> +			},
>  		},
>  		[TYPE_SGMII] = {
>  			[TYPE_NONE] = {
> @@ -4197,6 +4310,9 @@ static const struct cdns_torrent_data ti_j721e_map_torrent = {
>  				[TYPE_NONE] = {
>  					[NO_SSC] = &sl_dp_100_no_ssc_cmn_vals,
>  				},
> +				[TYPE_PCIE] = {
> +					[NO_SSC] = &dp_100_no_ssc_cmn_vals,
> +				},
>  			},
>  			[TYPE_PCIE] = {
>  				[TYPE_NONE] = {
> @@ -4219,6 +4335,9 @@ static const struct cdns_torrent_data ti_j721e_map_torrent = {
>  					[EXTERNAL_SSC] = &pcie_100_no_ssc_cmn_vals,
>  					[INTERNAL_SSC] = &pcie_100_int_ssc_cmn_vals,
>  				},
> +				[TYPE_DP] = {
> +					[NO_SSC] = NULL,
> +				},
>  			},
>  			[TYPE_SGMII] = {
>  				[TYPE_NONE] = {
> @@ -4294,6 +4413,9 @@ static const struct cdns_torrent_data ti_j721e_map_torrent = {
>  				[TYPE_NONE] = {
>  					[NO_SSC] = &sl_dp_100_no_ssc_tx_ln_vals,
>  				},
> +				[TYPE_PCIE] = {
> +					[NO_SSC] = &dp_100_no_ssc_tx_ln_vals,
> +				},
>  			},
>  			[TYPE_PCIE] = {
>  				[TYPE_NONE] = {
> @@ -4316,6 +4438,9 @@ static const struct cdns_torrent_data ti_j721e_map_torrent = {
>  					[EXTERNAL_SSC] = NULL,
>  					[INTERNAL_SSC] = NULL,
>  				},
> +				[TYPE_DP] = {
> +					[NO_SSC] = NULL,
> +				},
>  			},
>  			[TYPE_SGMII] = {
>  				[TYPE_NONE] = {
> @@ -4391,6 +4516,9 @@ static const struct cdns_torrent_data ti_j721e_map_torrent = {
>  				[TYPE_NONE] = {
>  					[NO_SSC] = &sl_dp_100_no_ssc_rx_ln_vals,
>  				},
> +				[TYPE_PCIE] = {
> +					[NO_SSC] = &dp_100_no_ssc_rx_ln_vals,
> +				},
>  			},
>  			[TYPE_PCIE] = {
>  				[TYPE_NONE] = {
> @@ -4413,6 +4541,9 @@ static const struct cdns_torrent_data ti_j721e_map_torrent = {
>  					[EXTERNAL_SSC] = &pcie_100_no_ssc_rx_ln_vals,
>  					[INTERNAL_SSC] = &pcie_100_no_ssc_rx_ln_vals,
>  				},
> +				[TYPE_DP] = {
> +					[NO_SSC] = &pcie_100_no_ssc_rx_ln_vals,
> +				},
>  			},
>  			[TYPE_SGMII] = {
>  				[TYPE_NONE] = {
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
