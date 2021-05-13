Return-Path: <SRS0=66Jo=KI=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C213BC433ED
	for <linux-phy@archiver.kernel.org>; Thu, 13 May 2021 06:48:42 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8315F61434
	for <linux-phy@archiver.kernel.org>; Thu, 13 May 2021 06:48:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8315F61434
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:CC:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MKEqrC/YUwHpyHxW3DOlOUTheKxO8DOt6GKiIauoL98=; b=GwyJjoKl9BihubHLwa+Fn2Cc+
	AAxVpyi8x/qMUfpUE823gaB9n5GlI5weF+UbGxfroS2VscuDJ7hNeU5Fnw3M3Jwcp96YsuZO7+E13
	MFVsR0pFOpOYPw13QtgD6JtCZ5uxmWH8pQszFUnb2+K5KqKTwWpPvotJuBhbDSiHM3X7+/YfrpQN1
	HWPcJSLeyylRw9iQ8y7e/vj/9uwKt5KtzwOHeFSq2cuQOBX2RLTYGYm6E4tNA72k/9H/2/G2Efk4K
	Se8Odem+wmDJ50zZHAxUyFhcQFxB/Dzu/fq9Yjd5UQfNqoLZhhMk0z87R0IessqKBmkrE+7KRR297
	avOnDEJlg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lh59D-004wyz-Si; Thu, 13 May 2021 06:48:39 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lh59A-004wyZ-Ql
 for linux-phy@desiato.infradead.org; Thu, 13 May 2021 06:48:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:CC:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=YM9jQqwJ6ARigSutj6Ij3NgjDZfo4dlj4EN8wKI6yXU=; b=dJxRofJJ3idwwdg2wteYznijCS
 2MVBl1cHxVJhOcbx4U93QzoFp8FTw0nyAieUnsSa+xXmSGvvgQ7z3elK4TD3pEQ6cZYPv2L4CX7xE
 pnOGUMMG6IyvQDAN9yvV/uU9G+9jWb/Mozn6VeYiSQ61ZEn3yxrkOK9YpuUyJMRJAwrCFZxoM77pm
 hMv3cfJQTuaEtTCI56jeJoWvPbnvdOSUnvNijVSbzD3XSg5pOYa49odlK2MC8oU3P49S7pP8f9geg
 TfsnU4MEt3SLplRmi18YSGmUfJQeSj0qLjWeLRY/wbipDaU2MdUAWW3gTxNlSMwEYbmTy2u3Qb+d1
 hhL7YDhA==;
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lh596-00B3Sb-5Z
 for linux-phy@lists.infradead.org; Thu, 13 May 2021 06:48:35 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 14D6mT8U103781;
 Thu, 13 May 2021 01:48:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1620888509;
 bh=YM9jQqwJ6ARigSutj6Ij3NgjDZfo4dlj4EN8wKI6yXU=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=EDAW4s2qQUeGJiqdGIoxW9ndL8SFdtVilzwUl39NMaA3Ev3zdppyURZE5j7H/t5WK
 xqnrLa/1s2mVUCJOVt/wzsVZjfI0lM587Y6LWsG7oKEhgHuRYYot4F/X9QAGkG6CeV
 ErMO/MMbEfh2Eqdvh5B5OdsrinMB0vZyCyfr6LyE=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 14D6mTsa111623
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 13 May 2021 01:48:29 -0500
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Thu, 13
 May 2021 01:48:29 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Thu, 13 May 2021 01:48:29 -0500
Received: from [10.250.232.157] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 14D6mODO088816;
 Thu, 13 May 2021 01:48:25 -0500
Subject: Re: [PATCH 04/14] phy: cadence-torrent: Select register configuration
 based on PHY reference clock
To: Swapnil Jakhade <sjakhade@cadence.com>, <vkoul@kernel.org>,
 <p.zabel@pengutronix.de>, <linux-phy@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
CC: <mparab@cadence.com>, <lokeshvutla@ti.com>
References: <1617946456-27773-1-git-send-email-sjakhade@cadence.com>
 <1617946456-27773-5-git-send-email-sjakhade@cadence.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <bec56d27-8646-dd19-8bc3-1e8cb108f6d1@ti.com>
Date: Thu, 13 May 2021 12:18:23 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <1617946456-27773-5-git-send-email-sjakhade@cadence.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210512_234832_351382_552AFB90 
X-CRM114-Status: GOOD (  16.96  )
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
> Add PHY input reference clock frequency as a new dimension to select proper
> register configuration.

Please add additional details in the commit message here as to why you
are doing this change and also mention you don't expect any functional
change with this patch.

Thanks
Kishon
> 
> Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>
> ---
>  drivers/phy/cadence/phy-cadence-torrent.c | 830 +++++++++++-----------
>  1 file changed, 422 insertions(+), 408 deletions(-)
> 
> diff --git a/drivers/phy/cadence/phy-cadence-torrent.c b/drivers/phy/cadence/phy-cadence-torrent.c
> index 252920ea7fdf..39a26a1a4c51 100644
> --- a/drivers/phy/cadence/phy-cadence-torrent.c
> +++ b/drivers/phy/cadence/phy-cadence-torrent.c
> @@ -375,12 +375,12 @@ struct cdns_torrent_data {
>  						[NUM_SSC_MODE];
>  	struct cdns_torrent_vals *pcs_cmn_vals[NUM_PHY_TYPE][NUM_PHY_TYPE]
>  					      [NUM_SSC_MODE];
> -	struct cdns_torrent_vals *cmn_vals[NUM_PHY_TYPE][NUM_PHY_TYPE]
> -					  [NUM_SSC_MODE];
> -	struct cdns_torrent_vals *tx_ln_vals[NUM_PHY_TYPE][NUM_PHY_TYPE]
> -					    [NUM_SSC_MODE];
> -	struct cdns_torrent_vals *rx_ln_vals[NUM_PHY_TYPE][NUM_PHY_TYPE]
> -					    [NUM_SSC_MODE];
> +	struct cdns_torrent_vals *cmn_vals[NUM_REF_CLK][NUM_PHY_TYPE]
> +					  [NUM_PHY_TYPE][NUM_SSC_MODE];
> +	struct cdns_torrent_vals *tx_ln_vals[NUM_REF_CLK][NUM_PHY_TYPE]
> +					    [NUM_PHY_TYPE][NUM_SSC_MODE];
> +	struct cdns_torrent_vals *rx_ln_vals[NUM_REF_CLK][NUM_PHY_TYPE]
> +					    [NUM_PHY_TYPE][NUM_SSC_MODE];
>  };
>  
>  struct cdns_regmap_cdb_context {
> @@ -1958,6 +1958,7 @@ static int cdns_torrent_phy_init(struct phy *phy)
>  	struct cdns_torrent_phy *cdns_phy = dev_get_drvdata(phy->dev.parent);
>  	const struct cdns_torrent_data *init_data = cdns_phy->init_data;
>  	struct cdns_torrent_vals *cmn_vals, *tx_ln_vals, *rx_ln_vals;
> +	enum cdns_torrent_ref_clk ref_clk = cdns_phy->ref_clk_rate;
>  	struct cdns_torrent_vals *link_cmn_vals, *xcvr_diag_vals;
>  	struct cdns_torrent_inst *inst = phy_get_drvdata(phy);
>  	enum cdns_torrent_phy_type phy_type = inst->phy_type;
> @@ -2023,7 +2024,7 @@ static int cdns_torrent_phy_init(struct phy *phy)
>  	}
>  
>  	/* PMA common registers configurations */
> -	cmn_vals = init_data->cmn_vals[phy_type][TYPE_NONE][ssc];
> +	cmn_vals = init_data->cmn_vals[ref_clk][phy_type][TYPE_NONE][ssc];
>  	if (cmn_vals) {
>  		reg_pairs = cmn_vals->reg_pairs;
>  		num_regs = cmn_vals->num_regs;
> @@ -2034,7 +2035,7 @@ static int cdns_torrent_phy_init(struct phy *phy)
>  	}
>  
>  	/* PMA TX lane registers configurations */
> -	tx_ln_vals = init_data->tx_ln_vals[phy_type][TYPE_NONE][ssc];
> +	tx_ln_vals = init_data->tx_ln_vals[ref_clk][phy_type][TYPE_NONE][ssc];
>  	if (tx_ln_vals) {
>  		reg_pairs = tx_ln_vals->reg_pairs;
>  		num_regs = tx_ln_vals->num_regs;
> @@ -2047,7 +2048,7 @@ static int cdns_torrent_phy_init(struct phy *phy)
>  	}
>  
>  	/* PMA RX lane registers configurations */
> -	rx_ln_vals = init_data->rx_ln_vals[phy_type][TYPE_NONE][ssc];
> +	rx_ln_vals = init_data->rx_ln_vals[ref_clk][phy_type][TYPE_NONE][ssc];
>  	if (rx_ln_vals) {
>  		reg_pairs = rx_ln_vals->reg_pairs;
>  		num_regs = rx_ln_vals->num_regs;
> @@ -2088,6 +2089,7 @@ int cdns_torrent_phy_configure_multilink(struct cdns_torrent_phy *cdns_phy)
>  {
>  	const struct cdns_torrent_data *init_data = cdns_phy->init_data;
>  	struct cdns_torrent_vals *cmn_vals, *tx_ln_vals, *rx_ln_vals;
> +	enum cdns_torrent_ref_clk ref_clk = cdns_phy->ref_clk_rate;
>  	struct cdns_torrent_vals *link_cmn_vals, *xcvr_diag_vals;
>  	enum cdns_torrent_phy_type phy_t1, phy_t2, tmp_phy_type;
>  	struct cdns_torrent_vals *pcs_cmn_vals;
> @@ -2176,7 +2178,7 @@ int cdns_torrent_phy_configure_multilink(struct cdns_torrent_phy *cdns_phy)
>  		}
>  
>  		/* PMA common registers configurations */
> -		cmn_vals = init_data->cmn_vals[phy_t1][phy_t2][ssc];
> +		cmn_vals = init_data->cmn_vals[ref_clk][phy_t1][phy_t2][ssc];
>  		if (cmn_vals) {
>  			reg_pairs = cmn_vals->reg_pairs;
>  			num_regs = cmn_vals->num_regs;
> @@ -2187,7 +2189,7 @@ int cdns_torrent_phy_configure_multilink(struct cdns_torrent_phy *cdns_phy)
>  		}
>  
>  		/* PMA TX lane registers configurations */
> -		tx_ln_vals = init_data->tx_ln_vals[phy_t1][phy_t2][ssc];
> +		tx_ln_vals = init_data->tx_ln_vals[ref_clk][phy_t1][phy_t2][ssc];
>  		if (tx_ln_vals) {
>  			reg_pairs = tx_ln_vals->reg_pairs;
>  			num_regs = tx_ln_vals->num_regs;
> @@ -2200,7 +2202,7 @@ int cdns_torrent_phy_configure_multilink(struct cdns_torrent_phy *cdns_phy)
>  		}
>  
>  		/* PMA RX lane registers configurations */
> -		rx_ln_vals = init_data->rx_ln_vals[phy_t1][phy_t2][ssc];
> +		rx_ln_vals = init_data->rx_ln_vals[ref_clk][phy_t1][phy_t2][ssc];
>  		if (rx_ln_vals) {
>  			reg_pairs = rx_ln_vals->reg_pairs;
>  			num_regs = rx_ln_vals->num_regs;
> @@ -3496,230 +3498,236 @@ static const struct cdns_torrent_data cdns_map_torrent = {
>  		},
>  	},
>  	.cmn_vals = {
> -		[TYPE_PCIE] = {
> -			[TYPE_NONE] = {
> -				[NO_SSC] = NULL,
> -				[EXTERNAL_SSC] = NULL,
> -				[INTERNAL_SSC] = &sl_pcie_100_int_ssc_cmn_vals,
> +		[CLK_100_MHZ] = {
> +			[TYPE_PCIE] = {
> +				[TYPE_NONE] = {
> +					[NO_SSC] = NULL,
> +					[EXTERNAL_SSC] = NULL,
> +					[INTERNAL_SSC] = &sl_pcie_100_int_ssc_cmn_vals,
> +				},
> +				[TYPE_SGMII] = {
> +					[NO_SSC] = &pcie_100_no_ssc_cmn_vals,
> +					[EXTERNAL_SSC] = &pcie_100_no_ssc_cmn_vals,
> +					[INTERNAL_SSC] = &pcie_100_int_ssc_cmn_vals,
> +				},
> +				[TYPE_QSGMII] = {
> +					[NO_SSC] = &pcie_100_no_ssc_cmn_vals,
> +					[EXTERNAL_SSC] = &pcie_100_no_ssc_cmn_vals,
> +					[INTERNAL_SSC] = &pcie_100_int_ssc_cmn_vals,
> +				},
> +				[TYPE_USB] = {
> +					[NO_SSC] = &pcie_100_no_ssc_cmn_vals,
> +					[EXTERNAL_SSC] = &pcie_100_no_ssc_cmn_vals,
> +					[INTERNAL_SSC] = &pcie_100_int_ssc_cmn_vals,
> +				},
>  			},
>  			[TYPE_SGMII] = {
> -				[NO_SSC] = &pcie_100_no_ssc_cmn_vals,
> -				[EXTERNAL_SSC] = &pcie_100_no_ssc_cmn_vals,
> -				[INTERNAL_SSC] = &pcie_100_int_ssc_cmn_vals,
> +				[TYPE_NONE] = {
> +					[NO_SSC] = &sl_sgmii_100_no_ssc_cmn_vals,
> +				},
> +				[TYPE_PCIE] = {
> +					[NO_SSC] = &sgmii_100_no_ssc_cmn_vals,
> +					[EXTERNAL_SSC] = &sgmii_100_no_ssc_cmn_vals,
> +					[INTERNAL_SSC] = &sgmii_100_int_ssc_cmn_vals,
> +				},
> +				[TYPE_USB] = {
> +					[NO_SSC] = &sgmii_100_no_ssc_cmn_vals,
> +					[EXTERNAL_SSC] = &sgmii_100_no_ssc_cmn_vals,
> +					[INTERNAL_SSC] = &sgmii_100_no_ssc_cmn_vals,
> +				},
>  			},
>  			[TYPE_QSGMII] = {
> -				[NO_SSC] = &pcie_100_no_ssc_cmn_vals,
> -				[EXTERNAL_SSC] = &pcie_100_no_ssc_cmn_vals,
> -				[INTERNAL_SSC] = &pcie_100_int_ssc_cmn_vals,
> -			},
> -			[TYPE_USB] = {
> -				[NO_SSC] = &pcie_100_no_ssc_cmn_vals,
> -				[EXTERNAL_SSC] = &pcie_100_no_ssc_cmn_vals,
> -				[INTERNAL_SSC] = &pcie_100_int_ssc_cmn_vals,
> -			},
> -		},
> -		[TYPE_SGMII] = {
> -			[TYPE_NONE] = {
> -				[NO_SSC] = &sl_sgmii_100_no_ssc_cmn_vals,
> -			},
> -			[TYPE_PCIE] = {
> -				[NO_SSC] = &sgmii_100_no_ssc_cmn_vals,
> -				[EXTERNAL_SSC] = &sgmii_100_no_ssc_cmn_vals,
> -				[INTERNAL_SSC] = &sgmii_100_int_ssc_cmn_vals,
> +				[TYPE_NONE] = {
> +					[NO_SSC] = &sl_qsgmii_100_no_ssc_cmn_vals,
> +				},
> +				[TYPE_PCIE] = {
> +					[NO_SSC] = &qsgmii_100_no_ssc_cmn_vals,
> +					[EXTERNAL_SSC] = &qsgmii_100_no_ssc_cmn_vals,
> +					[INTERNAL_SSC] = &qsgmii_100_int_ssc_cmn_vals,
> +				},
> +				[TYPE_USB] = {
> +					[NO_SSC] = &qsgmii_100_no_ssc_cmn_vals,
> +					[EXTERNAL_SSC] = &qsgmii_100_no_ssc_cmn_vals,
> +					[INTERNAL_SSC] = &qsgmii_100_no_ssc_cmn_vals,
> +				},
>  			},
>  			[TYPE_USB] = {
> -				[NO_SSC] = &sgmii_100_no_ssc_cmn_vals,
> -				[EXTERNAL_SSC] = &sgmii_100_no_ssc_cmn_vals,
> -				[INTERNAL_SSC] = &sgmii_100_no_ssc_cmn_vals,
> -			},
> -		},
> -		[TYPE_QSGMII] = {
> -			[TYPE_NONE] = {
> -				[NO_SSC] = &sl_qsgmii_100_no_ssc_cmn_vals,
> -			},
> -			[TYPE_PCIE] = {
> -				[NO_SSC] = &qsgmii_100_no_ssc_cmn_vals,
> -				[EXTERNAL_SSC] = &qsgmii_100_no_ssc_cmn_vals,
> -				[INTERNAL_SSC] = &qsgmii_100_int_ssc_cmn_vals,
> -			},
> -			[TYPE_USB] = {
> -				[NO_SSC] = &qsgmii_100_no_ssc_cmn_vals,
> -				[EXTERNAL_SSC] = &qsgmii_100_no_ssc_cmn_vals,
> -				[INTERNAL_SSC] = &qsgmii_100_no_ssc_cmn_vals,
> -			},
> -		},
> -		[TYPE_USB] = {
> -			[TYPE_NONE] = {
> -				[NO_SSC] = &sl_usb_100_no_ssc_cmn_vals,
> -				[EXTERNAL_SSC] = &sl_usb_100_no_ssc_cmn_vals,
> -				[INTERNAL_SSC] = &sl_usb_100_int_ssc_cmn_vals,
> -			},
> -			[TYPE_PCIE] = {
> -				[NO_SSC] = &usb_100_no_ssc_cmn_vals,
> -				[EXTERNAL_SSC] = &usb_100_no_ssc_cmn_vals,
> -				[INTERNAL_SSC] = &usb_100_int_ssc_cmn_vals,
> -			},
> -			[TYPE_SGMII] = {
> -				[NO_SSC] = &sl_usb_100_no_ssc_cmn_vals,
> -				[EXTERNAL_SSC] = &sl_usb_100_no_ssc_cmn_vals,
> -				[INTERNAL_SSC] = &sl_usb_100_int_ssc_cmn_vals,
> -			},
> -			[TYPE_QSGMII] = {
> -				[NO_SSC] = &sl_usb_100_no_ssc_cmn_vals,
> -				[EXTERNAL_SSC] = &sl_usb_100_no_ssc_cmn_vals,
> -				[INTERNAL_SSC] = &sl_usb_100_int_ssc_cmn_vals,
> +				[TYPE_NONE] = {
> +					[NO_SSC] = &sl_usb_100_no_ssc_cmn_vals,
> +					[EXTERNAL_SSC] = &sl_usb_100_no_ssc_cmn_vals,
> +					[INTERNAL_SSC] = &sl_usb_100_int_ssc_cmn_vals,
> +				},
> +				[TYPE_PCIE] = {
> +					[NO_SSC] = &usb_100_no_ssc_cmn_vals,
> +					[EXTERNAL_SSC] = &usb_100_no_ssc_cmn_vals,
> +					[INTERNAL_SSC] = &usb_100_int_ssc_cmn_vals,
> +				},
> +				[TYPE_SGMII] = {
> +					[NO_SSC] = &sl_usb_100_no_ssc_cmn_vals,
> +					[EXTERNAL_SSC] = &sl_usb_100_no_ssc_cmn_vals,
> +					[INTERNAL_SSC] = &sl_usb_100_int_ssc_cmn_vals,
> +				},
> +				[TYPE_QSGMII] = {
> +					[NO_SSC] = &sl_usb_100_no_ssc_cmn_vals,
> +					[EXTERNAL_SSC] = &sl_usb_100_no_ssc_cmn_vals,
> +					[INTERNAL_SSC] = &sl_usb_100_int_ssc_cmn_vals,
> +				},
>  			},
>  		},
>  	},
>  	.tx_ln_vals = {
> -		[TYPE_PCIE] = {
> -			[TYPE_NONE] = {
> -				[NO_SSC] = NULL,
> -				[EXTERNAL_SSC] = NULL,
> -				[INTERNAL_SSC] = NULL,
> +		[CLK_100_MHZ] = {
> +			[TYPE_PCIE] = {
> +				[TYPE_NONE] = {
> +					[NO_SSC] = NULL,
> +					[EXTERNAL_SSC] = NULL,
> +					[INTERNAL_SSC] = NULL,
> +				},
> +				[TYPE_SGMII] = {
> +					[NO_SSC] = NULL,
> +					[EXTERNAL_SSC] = NULL,
> +					[INTERNAL_SSC] = NULL,
> +				},
> +				[TYPE_QSGMII] = {
> +					[NO_SSC] = NULL,
> +					[EXTERNAL_SSC] = NULL,
> +					[INTERNAL_SSC] = NULL,
> +				},
> +				[TYPE_USB] = {
> +					[NO_SSC] = NULL,
> +					[EXTERNAL_SSC] = NULL,
> +					[INTERNAL_SSC] = NULL,
> +				},
>  			},
>  			[TYPE_SGMII] = {
> -				[NO_SSC] = NULL,
> -				[EXTERNAL_SSC] = NULL,
> -				[INTERNAL_SSC] = NULL,
> +				[TYPE_NONE] = {
> +					[NO_SSC] = &sgmii_100_no_ssc_tx_ln_vals,
> +				},
> +				[TYPE_PCIE] = {
> +					[NO_SSC] = &sgmii_100_no_ssc_tx_ln_vals,
> +					[EXTERNAL_SSC] = &sgmii_100_no_ssc_tx_ln_vals,
> +					[INTERNAL_SSC] = &sgmii_100_no_ssc_tx_ln_vals,
> +				},
> +				[TYPE_USB] = {
> +					[NO_SSC] = &sgmii_100_no_ssc_tx_ln_vals,
> +					[EXTERNAL_SSC] = &sgmii_100_no_ssc_tx_ln_vals,
> +					[INTERNAL_SSC] = &sgmii_100_no_ssc_tx_ln_vals,
> +				},
>  			},
>  			[TYPE_QSGMII] = {
> -				[NO_SSC] = NULL,
> -				[EXTERNAL_SSC] = NULL,
> -				[INTERNAL_SSC] = NULL,
> +				[TYPE_NONE] = {
> +					[NO_SSC] = &qsgmii_100_no_ssc_tx_ln_vals,
> +				},
> +				[TYPE_PCIE] = {
> +					[NO_SSC] = &qsgmii_100_no_ssc_tx_ln_vals,
> +					[EXTERNAL_SSC] = &qsgmii_100_no_ssc_tx_ln_vals,
> +					[INTERNAL_SSC] = &qsgmii_100_no_ssc_tx_ln_vals,
> +				},
> +				[TYPE_USB] = {
> +					[NO_SSC] = &qsgmii_100_no_ssc_tx_ln_vals,
> +					[EXTERNAL_SSC] = &qsgmii_100_no_ssc_tx_ln_vals,
> +					[INTERNAL_SSC] = &qsgmii_100_no_ssc_tx_ln_vals,
> +				},
>  			},
>  			[TYPE_USB] = {
> -				[NO_SSC] = NULL,
> -				[EXTERNAL_SSC] = NULL,
> -				[INTERNAL_SSC] = NULL,
> -			},
> -		},
> -		[TYPE_SGMII] = {
> -			[TYPE_NONE] = {
> -				[NO_SSC] = &sgmii_100_no_ssc_tx_ln_vals,
> -			},
> -			[TYPE_PCIE] = {
> -				[NO_SSC] = &sgmii_100_no_ssc_tx_ln_vals,
> -				[EXTERNAL_SSC] = &sgmii_100_no_ssc_tx_ln_vals,
> -				[INTERNAL_SSC] = &sgmii_100_no_ssc_tx_ln_vals,
> -			},
> -			[TYPE_USB] = {
> -				[NO_SSC] = &sgmii_100_no_ssc_tx_ln_vals,
> -				[EXTERNAL_SSC] = &sgmii_100_no_ssc_tx_ln_vals,
> -				[INTERNAL_SSC] = &sgmii_100_no_ssc_tx_ln_vals,
> -			},
> -		},
> -		[TYPE_QSGMII] = {
> -			[TYPE_NONE] = {
> -				[NO_SSC] = &qsgmii_100_no_ssc_tx_ln_vals,
> -			},
> -			[TYPE_PCIE] = {
> -				[NO_SSC] = &qsgmii_100_no_ssc_tx_ln_vals,
> -				[EXTERNAL_SSC] = &qsgmii_100_no_ssc_tx_ln_vals,
> -				[INTERNAL_SSC] = &qsgmii_100_no_ssc_tx_ln_vals,
> -			},
> -			[TYPE_USB] = {
> -				[NO_SSC] = &qsgmii_100_no_ssc_tx_ln_vals,
> -				[EXTERNAL_SSC] = &qsgmii_100_no_ssc_tx_ln_vals,
> -				[INTERNAL_SSC] = &qsgmii_100_no_ssc_tx_ln_vals,
> -			},
> -		},
> -		[TYPE_USB] = {
> -			[TYPE_NONE] = {
> -				[NO_SSC] = &usb_100_no_ssc_tx_ln_vals,
> -				[EXTERNAL_SSC] = &usb_100_no_ssc_tx_ln_vals,
> -				[INTERNAL_SSC] = &usb_100_no_ssc_tx_ln_vals,
> -			},
> -			[TYPE_PCIE] = {
> -				[NO_SSC] = &usb_100_no_ssc_tx_ln_vals,
> -				[EXTERNAL_SSC] = &usb_100_no_ssc_tx_ln_vals,
> -				[INTERNAL_SSC] = &usb_100_no_ssc_tx_ln_vals,
> -			},
> -			[TYPE_SGMII] = {
> -				[NO_SSC] = &usb_100_no_ssc_tx_ln_vals,
> -				[EXTERNAL_SSC] = &usb_100_no_ssc_tx_ln_vals,
> -				[INTERNAL_SSC] = &usb_100_no_ssc_tx_ln_vals,
> -			},
> -			[TYPE_QSGMII] = {
> -				[NO_SSC] = &usb_100_no_ssc_tx_ln_vals,
> -				[EXTERNAL_SSC] = &usb_100_no_ssc_tx_ln_vals,
> -				[INTERNAL_SSC] = &usb_100_no_ssc_tx_ln_vals,
> +				[TYPE_NONE] = {
> +					[NO_SSC] = &usb_100_no_ssc_tx_ln_vals,
> +					[EXTERNAL_SSC] = &usb_100_no_ssc_tx_ln_vals,
> +					[INTERNAL_SSC] = &usb_100_no_ssc_tx_ln_vals,
> +				},
> +				[TYPE_PCIE] = {
> +					[NO_SSC] = &usb_100_no_ssc_tx_ln_vals,
> +					[EXTERNAL_SSC] = &usb_100_no_ssc_tx_ln_vals,
> +					[INTERNAL_SSC] = &usb_100_no_ssc_tx_ln_vals,
> +				},
> +				[TYPE_SGMII] = {
> +					[NO_SSC] = &usb_100_no_ssc_tx_ln_vals,
> +					[EXTERNAL_SSC] = &usb_100_no_ssc_tx_ln_vals,
> +					[INTERNAL_SSC] = &usb_100_no_ssc_tx_ln_vals,
> +				},
> +				[TYPE_QSGMII] = {
> +					[NO_SSC] = &usb_100_no_ssc_tx_ln_vals,
> +					[EXTERNAL_SSC] = &usb_100_no_ssc_tx_ln_vals,
> +					[INTERNAL_SSC] = &usb_100_no_ssc_tx_ln_vals,
> +				},
>  			},
>  		},
>  	},
>  	.rx_ln_vals = {
> -		[TYPE_PCIE] = {
> -			[TYPE_NONE] = {
> -				[NO_SSC] = &pcie_100_no_ssc_rx_ln_vals,
> -				[EXTERNAL_SSC] = &pcie_100_no_ssc_rx_ln_vals,
> -				[INTERNAL_SSC] = &pcie_100_no_ssc_rx_ln_vals,
> +		[CLK_100_MHZ] = {
> +			[TYPE_PCIE] = {
> +				[TYPE_NONE] = {
> +					[NO_SSC] = &pcie_100_no_ssc_rx_ln_vals,
> +					[EXTERNAL_SSC] = &pcie_100_no_ssc_rx_ln_vals,
> +					[INTERNAL_SSC] = &pcie_100_no_ssc_rx_ln_vals,
> +				},
> +				[TYPE_SGMII] = {
> +					[NO_SSC] = &pcie_100_no_ssc_rx_ln_vals,
> +					[EXTERNAL_SSC] = &pcie_100_no_ssc_rx_ln_vals,
> +					[INTERNAL_SSC] = &pcie_100_no_ssc_rx_ln_vals,
> +				},
> +				[TYPE_QSGMII] = {
> +					[NO_SSC] = &pcie_100_no_ssc_rx_ln_vals,
> +					[EXTERNAL_SSC] = &pcie_100_no_ssc_rx_ln_vals,
> +					[INTERNAL_SSC] = &pcie_100_no_ssc_rx_ln_vals,
> +				},
> +				[TYPE_USB] = {
> +					[NO_SSC] = &pcie_100_no_ssc_rx_ln_vals,
> +					[EXTERNAL_SSC] = &pcie_100_no_ssc_rx_ln_vals,
> +					[INTERNAL_SSC] = &pcie_100_no_ssc_rx_ln_vals,
> +				},
>  			},
>  			[TYPE_SGMII] = {
> -				[NO_SSC] = &pcie_100_no_ssc_rx_ln_vals,
> -				[EXTERNAL_SSC] = &pcie_100_no_ssc_rx_ln_vals,
> -				[INTERNAL_SSC] = &pcie_100_no_ssc_rx_ln_vals,
> +				[TYPE_NONE] = {
> +					[NO_SSC] = &sgmii_100_no_ssc_rx_ln_vals,
> +				},
> +				[TYPE_PCIE] = {
> +					[NO_SSC] = &sgmii_100_no_ssc_rx_ln_vals,
> +					[EXTERNAL_SSC] = &sgmii_100_no_ssc_rx_ln_vals,
> +					[INTERNAL_SSC] = &sgmii_100_no_ssc_rx_ln_vals,
> +				},
> +				[TYPE_USB] = {
> +					[NO_SSC] = &sgmii_100_no_ssc_rx_ln_vals,
> +					[EXTERNAL_SSC] = &sgmii_100_no_ssc_rx_ln_vals,
> +					[INTERNAL_SSC] = &sgmii_100_no_ssc_rx_ln_vals,
> +				},
>  			},
>  			[TYPE_QSGMII] = {
> -				[NO_SSC] = &pcie_100_no_ssc_rx_ln_vals,
> -				[EXTERNAL_SSC] = &pcie_100_no_ssc_rx_ln_vals,
> -				[INTERNAL_SSC] = &pcie_100_no_ssc_rx_ln_vals,
> -			},
> -			[TYPE_USB] = {
> -				[NO_SSC] = &pcie_100_no_ssc_rx_ln_vals,
> -				[EXTERNAL_SSC] = &pcie_100_no_ssc_rx_ln_vals,
> -				[INTERNAL_SSC] = &pcie_100_no_ssc_rx_ln_vals,
> -			},
> -		},
> -		[TYPE_SGMII] = {
> -			[TYPE_NONE] = {
> -				[NO_SSC] = &sgmii_100_no_ssc_rx_ln_vals,
> -			},
> -			[TYPE_PCIE] = {
> -				[NO_SSC] = &sgmii_100_no_ssc_rx_ln_vals,
> -				[EXTERNAL_SSC] = &sgmii_100_no_ssc_rx_ln_vals,
> -				[INTERNAL_SSC] = &sgmii_100_no_ssc_rx_ln_vals,
> +				[TYPE_NONE] = {
> +					[NO_SSC] = &qsgmii_100_no_ssc_rx_ln_vals,
> +				},
> +				[TYPE_PCIE] = {
> +					[NO_SSC] = &qsgmii_100_no_ssc_rx_ln_vals,
> +					[EXTERNAL_SSC] = &qsgmii_100_no_ssc_rx_ln_vals,
> +					[INTERNAL_SSC] = &qsgmii_100_no_ssc_rx_ln_vals,
> +				},
> +				[TYPE_USB] = {
> +					[NO_SSC] = &qsgmii_100_no_ssc_rx_ln_vals,
> +					[EXTERNAL_SSC] = &qsgmii_100_no_ssc_rx_ln_vals,
> +					[INTERNAL_SSC] = &qsgmii_100_no_ssc_rx_ln_vals,
> +				},
>  			},
>  			[TYPE_USB] = {
> -				[NO_SSC] = &sgmii_100_no_ssc_rx_ln_vals,
> -				[EXTERNAL_SSC] = &sgmii_100_no_ssc_rx_ln_vals,
> -				[INTERNAL_SSC] = &sgmii_100_no_ssc_rx_ln_vals,
> -			},
> -		},
> -		[TYPE_QSGMII] = {
> -			[TYPE_NONE] = {
> -				[NO_SSC] = &qsgmii_100_no_ssc_rx_ln_vals,
> -			},
> -			[TYPE_PCIE] = {
> -				[NO_SSC] = &qsgmii_100_no_ssc_rx_ln_vals,
> -				[EXTERNAL_SSC] = &qsgmii_100_no_ssc_rx_ln_vals,
> -				[INTERNAL_SSC] = &qsgmii_100_no_ssc_rx_ln_vals,
> -			},
> -			[TYPE_USB] = {
> -				[NO_SSC] = &qsgmii_100_no_ssc_rx_ln_vals,
> -				[EXTERNAL_SSC] = &qsgmii_100_no_ssc_rx_ln_vals,
> -				[INTERNAL_SSC] = &qsgmii_100_no_ssc_rx_ln_vals,
> -			},
> -		},
> -		[TYPE_USB] = {
> -			[TYPE_NONE] = {
> -				[NO_SSC] = &usb_100_no_ssc_rx_ln_vals,
> -				[EXTERNAL_SSC] = &usb_100_no_ssc_rx_ln_vals,
> -				[INTERNAL_SSC] = &usb_100_no_ssc_rx_ln_vals,
> -			},
> -			[TYPE_PCIE] = {
> -				[NO_SSC] = &usb_100_no_ssc_rx_ln_vals,
> -				[EXTERNAL_SSC] = &usb_100_no_ssc_rx_ln_vals,
> -				[INTERNAL_SSC] = &usb_100_no_ssc_rx_ln_vals,
> -			},
> -			[TYPE_SGMII] = {
> -				[NO_SSC] = &usb_100_no_ssc_rx_ln_vals,
> -				[EXTERNAL_SSC] = &usb_100_no_ssc_rx_ln_vals,
> -				[INTERNAL_SSC] = &usb_100_no_ssc_rx_ln_vals,
> -			},
> -			[TYPE_QSGMII] = {
> -				[NO_SSC] = &usb_100_no_ssc_rx_ln_vals,
> -				[EXTERNAL_SSC] = &usb_100_no_ssc_rx_ln_vals,
> -				[INTERNAL_SSC] = &usb_100_no_ssc_rx_ln_vals,
> +				[TYPE_NONE] = {
> +					[NO_SSC] = &usb_100_no_ssc_rx_ln_vals,
> +					[EXTERNAL_SSC] = &usb_100_no_ssc_rx_ln_vals,
> +					[INTERNAL_SSC] = &usb_100_no_ssc_rx_ln_vals,
> +				},
> +				[TYPE_PCIE] = {
> +					[NO_SSC] = &usb_100_no_ssc_rx_ln_vals,
> +					[EXTERNAL_SSC] = &usb_100_no_ssc_rx_ln_vals,
> +					[INTERNAL_SSC] = &usb_100_no_ssc_rx_ln_vals,
> +				},
> +				[TYPE_SGMII] = {
> +					[NO_SSC] = &usb_100_no_ssc_rx_ln_vals,
> +					[EXTERNAL_SSC] = &usb_100_no_ssc_rx_ln_vals,
> +					[INTERNAL_SSC] = &usb_100_no_ssc_rx_ln_vals,
> +				},
> +				[TYPE_QSGMII] = {
> +					[NO_SSC] = &usb_100_no_ssc_rx_ln_vals,
> +					[EXTERNAL_SSC] = &usb_100_no_ssc_rx_ln_vals,
> +					[INTERNAL_SSC] = &usb_100_no_ssc_rx_ln_vals,
> +				},
>  			},
>  		},
>  	},
> @@ -3905,230 +3913,236 @@ static const struct cdns_torrent_data ti_j721e_map_torrent = {
>  		},
>  	},
>  	.cmn_vals = {
> -		[TYPE_PCIE] = {
> -			[TYPE_NONE] = {
> -				[NO_SSC] = NULL,
> -				[EXTERNAL_SSC] = NULL,
> -				[INTERNAL_SSC] = &sl_pcie_100_int_ssc_cmn_vals,
> +		[CLK_100_MHZ] = {
> +			[TYPE_PCIE] = {
> +				[TYPE_NONE] = {
> +					[NO_SSC] = NULL,
> +					[EXTERNAL_SSC] = NULL,
> +					[INTERNAL_SSC] = &sl_pcie_100_int_ssc_cmn_vals,
> +				},
> +				[TYPE_SGMII] = {
> +					[NO_SSC] = &pcie_100_no_ssc_cmn_vals,
> +					[EXTERNAL_SSC] = &pcie_100_no_ssc_cmn_vals,
> +					[INTERNAL_SSC] = &pcie_100_int_ssc_cmn_vals,
> +				},
> +				[TYPE_QSGMII] = {
> +					[NO_SSC] = &pcie_100_no_ssc_cmn_vals,
> +					[EXTERNAL_SSC] = &pcie_100_no_ssc_cmn_vals,
> +					[INTERNAL_SSC] = &pcie_100_int_ssc_cmn_vals,
> +				},
> +				[TYPE_USB] = {
> +					[NO_SSC] = &pcie_100_no_ssc_cmn_vals,
> +					[EXTERNAL_SSC] = &pcie_100_no_ssc_cmn_vals,
> +					[INTERNAL_SSC] = &pcie_100_int_ssc_cmn_vals,
> +				},
>  			},
>  			[TYPE_SGMII] = {
> -				[NO_SSC] = &pcie_100_no_ssc_cmn_vals,
> -				[EXTERNAL_SSC] = &pcie_100_no_ssc_cmn_vals,
> -				[INTERNAL_SSC] = &pcie_100_int_ssc_cmn_vals,
> +				[TYPE_NONE] = {
> +					[NO_SSC] = &sl_sgmii_100_no_ssc_cmn_vals,
> +				},
> +				[TYPE_PCIE] = {
> +					[NO_SSC] = &sgmii_100_no_ssc_cmn_vals,
> +					[EXTERNAL_SSC] = &sgmii_100_no_ssc_cmn_vals,
> +					[INTERNAL_SSC] = &sgmii_100_int_ssc_cmn_vals,
> +				},
> +				[TYPE_USB] = {
> +					[NO_SSC] = &sgmii_100_no_ssc_cmn_vals,
> +					[EXTERNAL_SSC] = &sgmii_100_no_ssc_cmn_vals,
> +					[INTERNAL_SSC] = &sgmii_100_no_ssc_cmn_vals,
> +				},
>  			},
>  			[TYPE_QSGMII] = {
> -				[NO_SSC] = &pcie_100_no_ssc_cmn_vals,
> -				[EXTERNAL_SSC] = &pcie_100_no_ssc_cmn_vals,
> -				[INTERNAL_SSC] = &pcie_100_int_ssc_cmn_vals,
> -			},
> -			[TYPE_USB] = {
> -				[NO_SSC] = &pcie_100_no_ssc_cmn_vals,
> -				[EXTERNAL_SSC] = &pcie_100_no_ssc_cmn_vals,
> -				[INTERNAL_SSC] = &pcie_100_int_ssc_cmn_vals,
> -			},
> -		},
> -		[TYPE_SGMII] = {
> -			[TYPE_NONE] = {
> -				[NO_SSC] = &sl_sgmii_100_no_ssc_cmn_vals,
> -			},
> -			[TYPE_PCIE] = {
> -				[NO_SSC] = &sgmii_100_no_ssc_cmn_vals,
> -				[EXTERNAL_SSC] = &sgmii_100_no_ssc_cmn_vals,
> -				[INTERNAL_SSC] = &sgmii_100_int_ssc_cmn_vals,
> +				[TYPE_NONE] = {
> +					[NO_SSC] = &sl_qsgmii_100_no_ssc_cmn_vals,
> +				},
> +				[TYPE_PCIE] = {
> +					[NO_SSC] = &qsgmii_100_no_ssc_cmn_vals,
> +					[EXTERNAL_SSC] = &qsgmii_100_no_ssc_cmn_vals,
> +					[INTERNAL_SSC] = &qsgmii_100_int_ssc_cmn_vals,
> +				},
> +				[TYPE_USB] = {
> +					[NO_SSC] = &qsgmii_100_no_ssc_cmn_vals,
> +					[EXTERNAL_SSC] = &qsgmii_100_no_ssc_cmn_vals,
> +					[INTERNAL_SSC] = &qsgmii_100_no_ssc_cmn_vals,
> +				},
>  			},
>  			[TYPE_USB] = {
> -				[NO_SSC] = &sgmii_100_no_ssc_cmn_vals,
> -				[EXTERNAL_SSC] = &sgmii_100_no_ssc_cmn_vals,
> -				[INTERNAL_SSC] = &sgmii_100_no_ssc_cmn_vals,
> -			},
> -		},
> -		[TYPE_QSGMII] = {
> -			[TYPE_NONE] = {
> -				[NO_SSC] = &sl_qsgmii_100_no_ssc_cmn_vals,
> -			},
> -			[TYPE_PCIE] = {
> -				[NO_SSC] = &qsgmii_100_no_ssc_cmn_vals,
> -				[EXTERNAL_SSC] = &qsgmii_100_no_ssc_cmn_vals,
> -				[INTERNAL_SSC] = &qsgmii_100_int_ssc_cmn_vals,
> -			},
> -			[TYPE_USB] = {
> -				[NO_SSC] = &qsgmii_100_no_ssc_cmn_vals,
> -				[EXTERNAL_SSC] = &qsgmii_100_no_ssc_cmn_vals,
> -				[INTERNAL_SSC] = &qsgmii_100_no_ssc_cmn_vals,
> -			},
> -		},
> -		[TYPE_USB] = {
> -			[TYPE_NONE] = {
> -				[NO_SSC] = &sl_usb_100_no_ssc_cmn_vals,
> -				[EXTERNAL_SSC] = &sl_usb_100_no_ssc_cmn_vals,
> -				[INTERNAL_SSC] = &sl_usb_100_int_ssc_cmn_vals,
> -			},
> -			[TYPE_PCIE] = {
> -				[NO_SSC] = &usb_100_no_ssc_cmn_vals,
> -				[EXTERNAL_SSC] = &usb_100_no_ssc_cmn_vals,
> -				[INTERNAL_SSC] = &usb_100_int_ssc_cmn_vals,
> -			},
> -			[TYPE_SGMII] = {
> -				[NO_SSC] = &sl_usb_100_no_ssc_cmn_vals,
> -				[EXTERNAL_SSC] = &sl_usb_100_no_ssc_cmn_vals,
> -				[INTERNAL_SSC] = &sl_usb_100_int_ssc_cmn_vals,
> -			},
> -			[TYPE_QSGMII] = {
> -				[NO_SSC] = &sl_usb_100_no_ssc_cmn_vals,
> -				[EXTERNAL_SSC] = &sl_usb_100_no_ssc_cmn_vals,
> -				[INTERNAL_SSC] = &sl_usb_100_int_ssc_cmn_vals,
> +				[TYPE_NONE] = {
> +					[NO_SSC] = &sl_usb_100_no_ssc_cmn_vals,
> +					[EXTERNAL_SSC] = &sl_usb_100_no_ssc_cmn_vals,
> +					[INTERNAL_SSC] = &sl_usb_100_int_ssc_cmn_vals,
> +				},
> +				[TYPE_PCIE] = {
> +					[NO_SSC] = &usb_100_no_ssc_cmn_vals,
> +					[EXTERNAL_SSC] = &usb_100_no_ssc_cmn_vals,
> +					[INTERNAL_SSC] = &usb_100_int_ssc_cmn_vals,
> +				},
> +				[TYPE_SGMII] = {
> +					[NO_SSC] = &sl_usb_100_no_ssc_cmn_vals,
> +					[EXTERNAL_SSC] = &sl_usb_100_no_ssc_cmn_vals,
> +					[INTERNAL_SSC] = &sl_usb_100_int_ssc_cmn_vals,
> +				},
> +				[TYPE_QSGMII] = {
> +					[NO_SSC] = &sl_usb_100_no_ssc_cmn_vals,
> +					[EXTERNAL_SSC] = &sl_usb_100_no_ssc_cmn_vals,
> +					[INTERNAL_SSC] = &sl_usb_100_int_ssc_cmn_vals,
> +				},
>  			},
>  		},
>  	},
>  	.tx_ln_vals = {
> -		[TYPE_PCIE] = {
> -			[TYPE_NONE] = {
> -				[NO_SSC] = NULL,
> -				[EXTERNAL_SSC] = NULL,
> -				[INTERNAL_SSC] = NULL,
> +		[CLK_100_MHZ] = {
> +			[TYPE_PCIE] = {
> +				[TYPE_NONE] = {
> +					[NO_SSC] = NULL,
> +					[EXTERNAL_SSC] = NULL,
> +					[INTERNAL_SSC] = NULL,
> +				},
> +				[TYPE_SGMII] = {
> +					[NO_SSC] = NULL,
> +					[EXTERNAL_SSC] = NULL,
> +					[INTERNAL_SSC] = NULL,
> +				},
> +				[TYPE_QSGMII] = {
> +					[NO_SSC] = NULL,
> +					[EXTERNAL_SSC] = NULL,
> +					[INTERNAL_SSC] = NULL,
> +				},
> +				[TYPE_USB] = {
> +					[NO_SSC] = NULL,
> +					[EXTERNAL_SSC] = NULL,
> +					[INTERNAL_SSC] = NULL,
> +				},
>  			},
>  			[TYPE_SGMII] = {
> -				[NO_SSC] = NULL,
> -				[EXTERNAL_SSC] = NULL,
> -				[INTERNAL_SSC] = NULL,
> +				[TYPE_NONE] = {
> +					[NO_SSC] = &ti_sgmii_100_no_ssc_tx_ln_vals,
> +				},
> +				[TYPE_PCIE] = {
> +					[NO_SSC] = &ti_sgmii_100_no_ssc_tx_ln_vals,
> +					[EXTERNAL_SSC] = &ti_sgmii_100_no_ssc_tx_ln_vals,
> +					[INTERNAL_SSC] = &ti_sgmii_100_no_ssc_tx_ln_vals,
> +				},
> +				[TYPE_USB] = {
> +					[NO_SSC] = &ti_sgmii_100_no_ssc_tx_ln_vals,
> +					[EXTERNAL_SSC] = &ti_sgmii_100_no_ssc_tx_ln_vals,
> +					[INTERNAL_SSC] = &ti_sgmii_100_no_ssc_tx_ln_vals,
> +				},
>  			},
>  			[TYPE_QSGMII] = {
> -				[NO_SSC] = NULL,
> -				[EXTERNAL_SSC] = NULL,
> -				[INTERNAL_SSC] = NULL,
> +				[TYPE_NONE] = {
> +					[NO_SSC] = &ti_qsgmii_100_no_ssc_tx_ln_vals,
> +				},
> +				[TYPE_PCIE] = {
> +					[NO_SSC] = &ti_qsgmii_100_no_ssc_tx_ln_vals,
> +					[EXTERNAL_SSC] = &ti_qsgmii_100_no_ssc_tx_ln_vals,
> +					[INTERNAL_SSC] = &ti_qsgmii_100_no_ssc_tx_ln_vals,
> +				},
> +				[TYPE_USB] = {
> +					[NO_SSC] = &ti_qsgmii_100_no_ssc_tx_ln_vals,
> +					[EXTERNAL_SSC] = &ti_qsgmii_100_no_ssc_tx_ln_vals,
> +					[INTERNAL_SSC] = &ti_qsgmii_100_no_ssc_tx_ln_vals,
> +				},
>  			},
>  			[TYPE_USB] = {
> -				[NO_SSC] = NULL,
> -				[EXTERNAL_SSC] = NULL,
> -				[INTERNAL_SSC] = NULL,
> -			},
> -		},
> -		[TYPE_SGMII] = {
> -			[TYPE_NONE] = {
> -				[NO_SSC] = &ti_sgmii_100_no_ssc_tx_ln_vals,
> -			},
> -			[TYPE_PCIE] = {
> -				[NO_SSC] = &ti_sgmii_100_no_ssc_tx_ln_vals,
> -				[EXTERNAL_SSC] = &ti_sgmii_100_no_ssc_tx_ln_vals,
> -				[INTERNAL_SSC] = &ti_sgmii_100_no_ssc_tx_ln_vals,
> -			},
> -			[TYPE_USB] = {
> -				[NO_SSC] = &ti_sgmii_100_no_ssc_tx_ln_vals,
> -				[EXTERNAL_SSC] = &ti_sgmii_100_no_ssc_tx_ln_vals,
> -				[INTERNAL_SSC] = &ti_sgmii_100_no_ssc_tx_ln_vals,
> -			},
> -		},
> -		[TYPE_QSGMII] = {
> -			[TYPE_NONE] = {
> -				[NO_SSC] = &ti_qsgmii_100_no_ssc_tx_ln_vals,
> -			},
> -			[TYPE_PCIE] = {
> -				[NO_SSC] = &ti_qsgmii_100_no_ssc_tx_ln_vals,
> -				[EXTERNAL_SSC] = &ti_qsgmii_100_no_ssc_tx_ln_vals,
> -				[INTERNAL_SSC] = &ti_qsgmii_100_no_ssc_tx_ln_vals,
> -			},
> -			[TYPE_USB] = {
> -				[NO_SSC] = &ti_qsgmii_100_no_ssc_tx_ln_vals,
> -				[EXTERNAL_SSC] = &ti_qsgmii_100_no_ssc_tx_ln_vals,
> -				[INTERNAL_SSC] = &ti_qsgmii_100_no_ssc_tx_ln_vals,
> -			},
> -		},
> -		[TYPE_USB] = {
> -			[TYPE_NONE] = {
> -				[NO_SSC] = &usb_100_no_ssc_tx_ln_vals,
> -				[EXTERNAL_SSC] = &usb_100_no_ssc_tx_ln_vals,
> -				[INTERNAL_SSC] = &usb_100_no_ssc_tx_ln_vals,
> -			},
> -			[TYPE_PCIE] = {
> -				[NO_SSC] = &usb_100_no_ssc_tx_ln_vals,
> -				[EXTERNAL_SSC] = &usb_100_no_ssc_tx_ln_vals,
> -				[INTERNAL_SSC] = &usb_100_no_ssc_tx_ln_vals,
> -			},
> -			[TYPE_SGMII] = {
> -				[NO_SSC] = &usb_100_no_ssc_tx_ln_vals,
> -				[EXTERNAL_SSC] = &usb_100_no_ssc_tx_ln_vals,
> -				[INTERNAL_SSC] = &usb_100_no_ssc_tx_ln_vals,
> -			},
> -			[TYPE_QSGMII] = {
> -				[NO_SSC] = &usb_100_no_ssc_tx_ln_vals,
> -				[EXTERNAL_SSC] = &usb_100_no_ssc_tx_ln_vals,
> -				[INTERNAL_SSC] = &usb_100_no_ssc_tx_ln_vals,
> +				[TYPE_NONE] = {
> +					[NO_SSC] = &usb_100_no_ssc_tx_ln_vals,
> +					[EXTERNAL_SSC] = &usb_100_no_ssc_tx_ln_vals,
> +					[INTERNAL_SSC] = &usb_100_no_ssc_tx_ln_vals,
> +				},
> +				[TYPE_PCIE] = {
> +					[NO_SSC] = &usb_100_no_ssc_tx_ln_vals,
> +					[EXTERNAL_SSC] = &usb_100_no_ssc_tx_ln_vals,
> +					[INTERNAL_SSC] = &usb_100_no_ssc_tx_ln_vals,
> +				},
> +				[TYPE_SGMII] = {
> +					[NO_SSC] = &usb_100_no_ssc_tx_ln_vals,
> +					[EXTERNAL_SSC] = &usb_100_no_ssc_tx_ln_vals,
> +					[INTERNAL_SSC] = &usb_100_no_ssc_tx_ln_vals,
> +				},
> +				[TYPE_QSGMII] = {
> +					[NO_SSC] = &usb_100_no_ssc_tx_ln_vals,
> +					[EXTERNAL_SSC] = &usb_100_no_ssc_tx_ln_vals,
> +					[INTERNAL_SSC] = &usb_100_no_ssc_tx_ln_vals,
> +				},
>  			},
>  		},
>  	},
>  	.rx_ln_vals = {
> -		[TYPE_PCIE] = {
> -			[TYPE_NONE] = {
> -				[NO_SSC] = &pcie_100_no_ssc_rx_ln_vals,
> -				[EXTERNAL_SSC] = &pcie_100_no_ssc_rx_ln_vals,
> -				[INTERNAL_SSC] = &pcie_100_no_ssc_rx_ln_vals,
> +		[CLK_100_MHZ] = {
> +			[TYPE_PCIE] = {
> +				[TYPE_NONE] = {
> +					[NO_SSC] = &pcie_100_no_ssc_rx_ln_vals,
> +					[EXTERNAL_SSC] = &pcie_100_no_ssc_rx_ln_vals,
> +					[INTERNAL_SSC] = &pcie_100_no_ssc_rx_ln_vals,
> +				},
> +				[TYPE_SGMII] = {
> +					[NO_SSC] = &pcie_100_no_ssc_rx_ln_vals,
> +					[EXTERNAL_SSC] = &pcie_100_no_ssc_rx_ln_vals,
> +					[INTERNAL_SSC] = &pcie_100_no_ssc_rx_ln_vals,
> +				},
> +				[TYPE_QSGMII] = {
> +					[NO_SSC] = &pcie_100_no_ssc_rx_ln_vals,
> +					[EXTERNAL_SSC] = &pcie_100_no_ssc_rx_ln_vals,
> +					[INTERNAL_SSC] = &pcie_100_no_ssc_rx_ln_vals,
> +				},
> +				[TYPE_USB] = {
> +					[NO_SSC] = &pcie_100_no_ssc_rx_ln_vals,
> +					[EXTERNAL_SSC] = &pcie_100_no_ssc_rx_ln_vals,
> +					[INTERNAL_SSC] = &pcie_100_no_ssc_rx_ln_vals,
> +				},
>  			},
>  			[TYPE_SGMII] = {
> -				[NO_SSC] = &pcie_100_no_ssc_rx_ln_vals,
> -				[EXTERNAL_SSC] = &pcie_100_no_ssc_rx_ln_vals,
> -				[INTERNAL_SSC] = &pcie_100_no_ssc_rx_ln_vals,
> +				[TYPE_NONE] = {
> +					[NO_SSC] = &sgmii_100_no_ssc_rx_ln_vals,
> +				},
> +				[TYPE_PCIE] = {
> +					[NO_SSC] = &sgmii_100_no_ssc_rx_ln_vals,
> +					[EXTERNAL_SSC] = &sgmii_100_no_ssc_rx_ln_vals,
> +					[INTERNAL_SSC] = &sgmii_100_no_ssc_rx_ln_vals,
> +				},
> +				[TYPE_USB] = {
> +					[NO_SSC] = &sgmii_100_no_ssc_rx_ln_vals,
> +					[EXTERNAL_SSC] = &sgmii_100_no_ssc_rx_ln_vals,
> +					[INTERNAL_SSC] = &sgmii_100_no_ssc_rx_ln_vals,
> +				},
>  			},
>  			[TYPE_QSGMII] = {
> -				[NO_SSC] = &pcie_100_no_ssc_rx_ln_vals,
> -				[EXTERNAL_SSC] = &pcie_100_no_ssc_rx_ln_vals,
> -				[INTERNAL_SSC] = &pcie_100_no_ssc_rx_ln_vals,
> -			},
> -			[TYPE_USB] = {
> -				[NO_SSC] = &pcie_100_no_ssc_rx_ln_vals,
> -				[EXTERNAL_SSC] = &pcie_100_no_ssc_rx_ln_vals,
> -				[INTERNAL_SSC] = &pcie_100_no_ssc_rx_ln_vals,
> -			},
> -		},
> -		[TYPE_SGMII] = {
> -			[TYPE_NONE] = {
> -				[NO_SSC] = &sgmii_100_no_ssc_rx_ln_vals,
> -			},
> -			[TYPE_PCIE] = {
> -				[NO_SSC] = &sgmii_100_no_ssc_rx_ln_vals,
> -				[EXTERNAL_SSC] = &sgmii_100_no_ssc_rx_ln_vals,
> -				[INTERNAL_SSC] = &sgmii_100_no_ssc_rx_ln_vals,
> +				[TYPE_NONE] = {
> +					[NO_SSC] = &qsgmii_100_no_ssc_rx_ln_vals,
> +				},
> +				[TYPE_PCIE] = {
> +					[NO_SSC] = &qsgmii_100_no_ssc_rx_ln_vals,
> +					[EXTERNAL_SSC] = &qsgmii_100_no_ssc_rx_ln_vals,
> +					[INTERNAL_SSC] = &qsgmii_100_no_ssc_rx_ln_vals,
> +				},
> +				[TYPE_USB] = {
> +					[NO_SSC] = &qsgmii_100_no_ssc_rx_ln_vals,
> +					[EXTERNAL_SSC] = &qsgmii_100_no_ssc_rx_ln_vals,
> +					[INTERNAL_SSC] = &qsgmii_100_no_ssc_rx_ln_vals,
> +				},
>  			},
>  			[TYPE_USB] = {
> -				[NO_SSC] = &sgmii_100_no_ssc_rx_ln_vals,
> -				[EXTERNAL_SSC] = &sgmii_100_no_ssc_rx_ln_vals,
> -				[INTERNAL_SSC] = &sgmii_100_no_ssc_rx_ln_vals,
> -			},
> -		},
> -		[TYPE_QSGMII] = {
> -			[TYPE_NONE] = {
> -				[NO_SSC] = &qsgmii_100_no_ssc_rx_ln_vals,
> -			},
> -			[TYPE_PCIE] = {
> -				[NO_SSC] = &qsgmii_100_no_ssc_rx_ln_vals,
> -				[EXTERNAL_SSC] = &qsgmii_100_no_ssc_rx_ln_vals,
> -				[INTERNAL_SSC] = &qsgmii_100_no_ssc_rx_ln_vals,
> -			},
> -			[TYPE_USB] = {
> -				[NO_SSC] = &qsgmii_100_no_ssc_rx_ln_vals,
> -				[EXTERNAL_SSC] = &qsgmii_100_no_ssc_rx_ln_vals,
> -				[INTERNAL_SSC] = &qsgmii_100_no_ssc_rx_ln_vals,
> -			},
> -		},
> -		[TYPE_USB] = {
> -			[TYPE_NONE] = {
> -				[NO_SSC] = &usb_100_no_ssc_rx_ln_vals,
> -				[EXTERNAL_SSC] = &usb_100_no_ssc_rx_ln_vals,
> -				[INTERNAL_SSC] = &usb_100_no_ssc_rx_ln_vals,
> -			},
> -			[TYPE_PCIE] = {
> -				[NO_SSC] = &usb_100_no_ssc_rx_ln_vals,
> -				[EXTERNAL_SSC] = &usb_100_no_ssc_rx_ln_vals,
> -				[INTERNAL_SSC] = &usb_100_no_ssc_rx_ln_vals,
> -			},
> -			[TYPE_SGMII] = {
> -				[NO_SSC] = &usb_100_no_ssc_rx_ln_vals,
> -				[EXTERNAL_SSC] = &usb_100_no_ssc_rx_ln_vals,
> -				[INTERNAL_SSC] = &usb_100_no_ssc_rx_ln_vals,
> -			},
> -			[TYPE_QSGMII] = {
> -				[NO_SSC] = &usb_100_no_ssc_rx_ln_vals,
> -				[EXTERNAL_SSC] = &usb_100_no_ssc_rx_ln_vals,
> -				[INTERNAL_SSC] = &usb_100_no_ssc_rx_ln_vals,
> +				[TYPE_NONE] = {
> +					[NO_SSC] = &usb_100_no_ssc_rx_ln_vals,
> +					[EXTERNAL_SSC] = &usb_100_no_ssc_rx_ln_vals,
> +					[INTERNAL_SSC] = &usb_100_no_ssc_rx_ln_vals,
> +				},
> +				[TYPE_PCIE] = {
> +					[NO_SSC] = &usb_100_no_ssc_rx_ln_vals,
> +					[EXTERNAL_SSC] = &usb_100_no_ssc_rx_ln_vals,
> +					[INTERNAL_SSC] = &usb_100_no_ssc_rx_ln_vals,
> +				},
> +				[TYPE_SGMII] = {
> +					[NO_SSC] = &usb_100_no_ssc_rx_ln_vals,
> +					[EXTERNAL_SSC] = &usb_100_no_ssc_rx_ln_vals,
> +					[INTERNAL_SSC] = &usb_100_no_ssc_rx_ln_vals,
> +				},
> +				[TYPE_QSGMII] = {
> +					[NO_SSC] = &usb_100_no_ssc_rx_ln_vals,
> +					[EXTERNAL_SSC] = &usb_100_no_ssc_rx_ln_vals,
> +					[INTERNAL_SSC] = &usb_100_no_ssc_rx_ln_vals,
> +				},
>  			},
>  		},
>  	},
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
