Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13D54C46467
	for <linux-phy@archiver.kernel.org>; Mon, 16 Jan 2023 14:24:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gXKU6pPitZHYcD9nsvRjNvigbxbmXxEPF2eBewCStj0=; b=jN6gYL+OIwSC5f
	7QvpMq/LEVNhfQ47JsbMu4zoUdavYSdGBrPq/WwI6M0a1dTf7H4jRbANIS29wCtzf9d0gycbZZ7lt
	KeuKJJn440L5IFmj9wszrbHAeuA7x+U6m3UvqSndSo8lmUOQ+IDUN2/An1a6DpN+91pMj12K3ALlU
	KX4e4Qisr9QnL//lUm14MggM13U3I496MyM89AML++Ez9u5NWKwlhOmBP0fOLU27BVsOuaMEtj4gY
	FBvlCI+pdaYjvNP5FDCbtPIvbhrT1WeU4DKvT3fE+apeE32L9NLxS7ZbpTPzMWUmrpTN824q67649
	Dv3okaB8LkGzti8XA7Fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHQP7-00Arw0-9P; Mon, 16 Jan 2023 14:24:05 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHQGL-00AnZr-4V
	for linux-phy@lists.infradead.org; Mon, 16 Jan 2023 14:15:03 +0000
Received: by mail-ed1-x52a.google.com with SMTP id m21so40876535edc.3
        for <linux-phy@lists.infradead.org>; Mon, 16 Jan 2023 06:14:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=PxWXmWcLQ+ZIknAtpo/VTrs5PfqFx9sefku166Jyecw=;
        b=lG2jWb+J5HLvrWszvvybXPjb7IPaErSAiwIUBVWb5qlcA3I8+l6J0mmbat/04JWP0E
         UrRKrpCVDgDq2VCdHtDOnzuRSLtthlJ6JtAyZNA+LqpF/gUMH1BV9WqMwFdVVGgOhxCv
         wgMNLiti//slLJWlUiF1wZmOvosdEde6WHcR5zoXYppXGMj9sMcchC6Y8KPcsUCYLTbx
         iKPwej56sTot2iQVIEeFaCskeJV2VJACzJGr/qpnhjMJ9+9ZTSsjk09NdoV1et3xIvDx
         nCTVfBlkGt9cMWCifaek42Mi8aSdMb+q2HQu9CXB3dcL6+mXz9DIURyP3xCdfOYrXncG
         tQFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PxWXmWcLQ+ZIknAtpo/VTrs5PfqFx9sefku166Jyecw=;
        b=dReErONjdAjAisi5roGoB0ksixNYNnraONDjKfk2qgLxWuop+ITJTdVmqIcyYySJs0
         ET3oIlHqyx90zFNITJeVYVpiyVnE8M8wFZU56PFaZxwqAzeTGQ3ubBn0Bh2vet7Dz77k
         XcrRL7EyO7muf9eekRjTfZwaSSELkLCoLy1DKywvdpmdXqm0wvO+KA3EaU/THJMPK829
         vnrUEu841RVCQZdaf5CaSskovqqUlVTHrF5Fq0IlU5/p3UQ7cSbd84mN295GSXgfneWG
         l72qM1T0QWvXoXg6KYgAF09zamRYEmswwe6SMOc0CfaeWgsZzIDb+I+GYnp0l85MuhSF
         Ug6g==
X-Gm-Message-State: AFqh2kqyijSGxWSEasgGWLQfrGCWalG/11w02ubua6zrFWWg4U3tP1Xb
	pOdAye77uVvy8BAWh6njuXGadA==
X-Google-Smtp-Source: AMrXdXtKQkmYiR8b4sgoBLLQVNlMUBW4jlnwYSbaHNAIN+T0Fhw2pI/kQSEyKvuC2H5sGY6b5pBcRA==
X-Received: by 2002:a50:cc4c:0:b0:463:e2cd:a8b5 with SMTP id n12-20020a50cc4c000000b00463e2cda8b5mr81548431edi.11.1673878496707;
        Mon, 16 Jan 2023 06:14:56 -0800 (PST)
Received: from linaro.org ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id o7-20020aa7d3c7000000b0045bd14e241csm11586818edr.76.2023.01.16.06.14.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Jan 2023 06:14:56 -0800 (PST)
Date: Mon, 16 Jan 2023 16:14:54 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: mani@kernel.org, Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 6/6] phy: qcom-qmp-ufs: Add SM8550 support
Message-ID: <Y8Vb3jBR2AtAJlWQ@linaro.org>
References: <20230112130542.1399921-1-abel.vesa@linaro.org>
 <20230112130542.1399921-7-abel.vesa@linaro.org>
 <Y8GkZKwvOc5nPSjI@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y8GkZKwvOc5nPSjI@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230116_061501_236051_9D7E32E7 
X-CRM114-Status: GOOD (  18.62  )
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

On 23-01-14 00:05:16, Vinod Koul wrote:
> On 12-01-23, 15:05, Abel Vesa wrote:
> > Add SM8550 specific register layout and table configs.
> 
> Not related, but was this tested with the UFS Gear 4 support from Mani?
> It would be great to have that added (here or separately)

I mentioned both Mani's and Dmitry's patchsets in the cover letter.
This patchset is based on both those patchsets.

> 
> > 
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> >  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 100 ++++++++++++++++++++++++
> >  1 file changed, 100 insertions(+)
> > 
> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> > index 5936a3a05002..a9b666f32f59 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> > @@ -95,6 +95,13 @@ static const unsigned int sm8150_ufsphy_regs_layout[QPHY_LAYOUT_SIZE] = {
> >  	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V4_PCS_UFS_POWER_DOWN_CONTROL,
> >  };
> >  
> > +static const unsigned int sm8550_ufsphy_regs_layout[QPHY_LAYOUT_SIZE] = {
> > +	[QPHY_START_CTRL]		= QPHY_V6_PCS_UFS_PHY_START,
> > +	[QPHY_PCS_READY_STATUS]		= QPHY_V6_PCS_UFS_READY_STATUS,
> > +	[QPHY_SW_RESET]			= QPHY_V6_PCS_UFS_SW_RESET,
> > +	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V6_PCS_UFS_POWER_DOWN_CONTROL,
> > +};
> > +
> >  static const struct qmp_phy_init_tbl msm8996_ufsphy_serdes[] = {
> >  	QMP_PHY_INIT_CFG(QSERDES_COM_CMN_CONFIG, 0x0e),
> >  	QMP_PHY_INIT_CFG(QSERDES_COM_SYSCLK_EN_SEL, 0xd7),
> > @@ -599,6 +606,61 @@ static const struct qmp_phy_init_tbl sm8350_ufsphy_g4_pcs[] = {
> >  	QMP_PHY_INIT_CFG(QPHY_V5_PCS_UFS_BIST_FIXED_PAT_CTRL, 0x0a),
> >  };
> >  
> > +static const struct qmp_phy_init_tbl sm8550_ufsphy_serdes[] = {
> > +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SYSCLK_EN_SEL, 0xd9),
> > +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CMN_CONFIG_1, 0x16),
> > +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_HSCLK_SEL_1, 0x11),
> > +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_HSCLK_HS_SWITCH_SEL_1, 0x00),
> > +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP_EN, 0x01),
> > +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE_MAP, 0x04),
> > +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_IVCO, 0x0f),
> > +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE_INITVAL2, 0x00),
> > +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE0, 0x41),
> > +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE0, 0x0a),
> > +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE0, 0x18),
> > +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE0, 0x14),
> > +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE0, 0x7f),
> > +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE0, 0x06),
> > +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE0, 0x4c),
> > +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE0, 0x0a),
> > +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE0, 0x18),
> > +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE0, 0x14),
> > +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE0, 0x99),
> > +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE0, 0x07),
> > +};
> > +
> > +static const struct qmp_phy_init_tbl sm8550_ufsphy_tx[] = {
> > +	QMP_PHY_INIT_CFG(QSERDES_V6_TX_LANE_MODE_1, 0x05),
> > +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_TX_RES_CODE_LANE_OFFSET_TX, 0x07),
> > +};
> > +
> > +static const struct qmp_phy_init_tbl sm8550_ufsphy_rx[] = {
> > +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_UCDR_FO_GAIN_RATE2, 0x0c),
> > +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_UCDR_FO_GAIN_RATE4, 0x0f),
> > +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_VGA_CAL_MAN_VAL, 0x0e),
> > +
> > +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE_0_1_B0, 0xc2),
> > +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE_0_1_B1, 0xc2),
> > +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE_0_1_B3, 0x1a),
> > +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE_0_1_B6, 0x60),
> > +
> > +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE2_B3, 0x9e),
> > +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE2_B6, 0x60),
> > +
> > +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE3_B3, 0x9e),
> > +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE3_B4, 0x0e),
> > +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE3_B5, 0x36),
> > +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE3_B8, 0x02),
> > +};
> > +
> > +static const struct qmp_phy_init_tbl sm8550_ufsphy_pcs[] = {
> > +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_RX_SIGDET_CTRL2, 0x69),
> > +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_LARGE_AMP_DRV_LVL, 0x0f),
> > +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_MID_TERM_CTRL1, 0x43),
> > +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_PLL_CNTL, 0x2b),
> > +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_MULTI_LANE_CTRL1, 0x02),
> > +};
> > +
> >  struct qmp_ufs_offsets {
> >  	u16 serdes;
> >  	u16 pcs;
> > @@ -703,6 +765,10 @@ static const char * const sm8450_ufs_phy_clk_l[] = {
> >  	"qref", "ref", "ref_aux",
> >  };
> >  
> > +static const char * const sm8550_ufs_phy_clk_l[] = {
> > +	"qref", "ref",
> > +};
> > +
> >  static const char * const sdm845_ufs_phy_clk_l[] = {
> >  	"ref", "ref_aux",
> >  };
> > @@ -721,6 +787,15 @@ static const struct qmp_ufs_offsets qmp_ufs_offsets_v5 = {
> >  	.rx2		= 0xa00,
> >  };
> >  
> > +static const struct qmp_ufs_offsets qmp_ufs_offsets_v6 = {
> > +	.serdes		= 0,
> > +	.pcs		= 0x400,
> > +	.tx		= 0x1000,
> > +	.rx		= 0x1200,
> > +	.tx2		= 0x1800,
> > +	.rx2		= 0x1a00,
> > +};
> > +
> >  static const struct qmp_phy_cfg msm8996_ufsphy_cfg = {
> >  	.lanes			= 1,
> >  
> > @@ -958,6 +1033,28 @@ static const struct qmp_phy_cfg sm8450_ufsphy_cfg = {
> >  	.regs			= sm8150_ufsphy_regs_layout,
> >  };
> >  
> > +static const struct qmp_phy_cfg sm8550_ufsphy_cfg = {
> > +	.lanes			= 2,
> > +
> > +	.offsets		= &qmp_ufs_offsets_v6,
> > +
> > +	.tbls = {
> > +		.serdes		= sm8550_ufsphy_serdes,
> > +		.serdes_num	= ARRAY_SIZE(sm8550_ufsphy_serdes),
> > +		.tx		= sm8550_ufsphy_tx,
> > +		.tx_num		= ARRAY_SIZE(sm8550_ufsphy_tx),
> > +		.rx		= sm8550_ufsphy_rx,
> > +		.rx_num		= ARRAY_SIZE(sm8550_ufsphy_rx),
> > +		.pcs		= sm8550_ufsphy_pcs,
> > +		.pcs_num	= ARRAY_SIZE(sm8550_ufsphy_pcs),
> > +	},
> > +	.clk_list		= sm8550_ufs_phy_clk_l,
> > +	.num_clks		= ARRAY_SIZE(sm8550_ufs_phy_clk_l),
> > +	.vreg_list		= qmp_phy_vreg_l,
> > +	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
> > +	.regs			= sm8550_ufsphy_regs_layout,
> > +};
> > +
> >  static void qmp_ufs_configure_lane(void __iomem *base,
> >  					const struct qmp_phy_init_tbl tbl[],
> >  					int num,
> > @@ -1467,6 +1564,9 @@ static const struct of_device_id qmp_ufs_of_match_table[] = {
> >  	}, {
> >  		.compatible = "qcom,sm8450-qmp-ufs-phy",
> >  		.data = &sm8450_ufsphy_cfg,
> > +	}, {
> > +		.compatible = "qcom,sm8550-qmp-ufs-phy",
> > +		.data = &sm8550_ufsphy_cfg,
> >  	},
> >  	{ },
> >  };
> > -- 
> > 2.34.1
> 
> -- 
> ~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
