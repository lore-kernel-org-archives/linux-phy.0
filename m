Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE4B7C3DA78
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jan 2023 13:57:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=50WYp/p3yCEndVJ4EM0+rtRZI+6AqFybmtm80PsZrqk=; b=QEHFlJMuN0WmZ2
	FoXokHaQFsX0ElfYD0QnXA/azKKUqKTe/WSYvEqiB49IjMJYtjZenwibA+bGOlHmvxFFmL7NYuqCF
	KNFZqdzPxTX+K2Da8F2P4+ThjDW3HjB2qlTL9dhfAVivQhZB/GnAAweigwvJpx0gOBZQWRVE0/WPl
	YT6Myl2ie4CXu+KV3mdBSzbktMA//YtQM8CVEDVxtTvdHBjahsgHVzsozdLcHWLyZACsKcxPH5Smg
	EuKrcbnP3EvXeoIheq3kmt8+XGLeeaZ6yZQ0vxlDZ47MvV4SiiUWIRtKrRKEeSK9YEqxkSCR2X/n5
	lVRU25XcPiaN8ONEYkzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHmTF-00EVRs-VP; Tue, 17 Jan 2023 13:57:49 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHmTA-00EVOG-3f
	for linux-phy@lists.infradead.org; Tue, 17 Jan 2023 13:57:46 +0000
Received: by mail-wm1-x32f.google.com with SMTP id m5-20020a05600c4f4500b003db03b2559eso2448466wmq.5
        for <linux-phy@lists.infradead.org>; Tue, 17 Jan 2023 05:57:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4kCyxjJmoaa1FDcEajHuj+dQpqP0MwFN9vsb9Y+ywzQ=;
        b=HZpx4xuXI8CivTeDtjvPGRvMZhgEEHW5jMhKC9NQFm9CGaxGqBH+sa38Pp6fPHPiWm
         uO3Tk5ozaVULZdo+DkSq1y2hw4ZDJ6NP3UPgp++YRwKia3LyINs59JBHhyFL9BPDeBO8
         h9JESjNj7cqf2zs3etHlsWLj+vMQyN3/NWbyo5P/CJTSZsIKhjVxBmEtdvX+eWh5vD3n
         iKzTix12wTuVgGuQIDXuOUTf4UZImshvogZkfxIPiygrPC7l/vdMO/kCC8Y7Es8geYRm
         cjc4fd0pRId/FjLsA8HCEgwYDvCBvxV3817k17ZQU1KtZyYU5h+z0jEfMrXt+sE5Jq1Y
         cjzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4kCyxjJmoaa1FDcEajHuj+dQpqP0MwFN9vsb9Y+ywzQ=;
        b=0KK9l4vj0C7GFN09O1LF5nLkQC8K+CUEldapG/zAC/yDJX+N+Q4+rSzxu5DNIFmcjx
         tfoQI6+n7MspnVKiQZ9YX5EDSGkDFGGV2yiCBz5c5CwVZxaT0Q6PC8KrB765q6VGy9tQ
         TswU/T0yj/opCTWWQnu4ssdIMXUsdfie0fk4AiUVvWCaAhU2dRNqmlknPE3H2u+yONEg
         GlZ3shdJBGQ6n+d7hBnuTvPotL56EJCHA3fWeBgf8byLdN73/jMMGS744EQdQcfxIDsZ
         WFm2lUEisugTH45OPypGSsajNKgU5WKSVMG7BLv1yO3LpfEEV/umRXyeOWJOCgVtxoIO
         sycA==
X-Gm-Message-State: AFqh2koitSeKsSFoPcChM+XGyqAgsWyPt1PhsPNyFVQLeJppWNH78GrZ
	6NjcA7X7ftmcvP7543pjwB4NoA==
X-Google-Smtp-Source: AMrXdXuOl0NZkqnzos2TZ/x/h4aRU+3wEkFoW3+Ru+XZ7cp5+rO9dEvXWzNL1jbcyLjWNzICRdhnOQ==
X-Received: by 2002:a05:600c:1c21:b0:3d1:e1f4:21d1 with SMTP id j33-20020a05600c1c2100b003d1e1f421d1mr3200080wms.26.1673963859357;
        Tue, 17 Jan 2023 05:57:39 -0800 (PST)
Received: from linaro.org ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id t5-20020a1c7705000000b003daffc2ecdesm4726173wmi.13.2023.01.17.05.57.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 05:57:38 -0800 (PST)
Date: Tue, 17 Jan 2023 15:57:37 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"vkoul@kernel.org" <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 07/10] phy: qualcomm: qmp-pcie: Add support for SM8550
 g3x2 and g4x2 PCIEs
Message-ID: <Y8apUXpfAyaMMmH/@linaro.org>
References: <20221116120157.2706810-1-abel.vesa@linaro.org>
 <20221116120157.2706810-8-abel.vesa@linaro.org>
 <bbfba6ca-c410-b4aa-ba3c-2fbf55065b24@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bbfba6ca-c410-b4aa-ba3c-2fbf55065b24@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_055744_190354_8525580B 
X-CRM114-Status: GOOD (  33.46  )
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

On 23-01-01 22:15:55, Dmitry Baryshkov wrote:
> On 16/11/2022 14:01, Abel Vesa wrote:
> > Add the SM8550 both g4 and g3 configurations. In addition, there is a
> > new "lane shared" table that needs to be configured for g4, along with
> > the No-CSR list of resets.
> > 
> > Co-developed-by: Neil Armstrong <neil.armstrong@linaro.org>
> > Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> >   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 354 +++++++++++++++++++++++
> >   1 file changed, 354 insertions(+)
> > 
> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > index 47cccc4b35b2..87c7c20dfc8d 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> 
> [skipped tables]
> 
> > @@ -1473,6 +1701,8 @@ struct qmp_pcie_offsets {
> >   struct qmp_phy_cfg_tbls {
> >   	const struct qmp_phy_init_tbl *serdes;
> >   	int serdes_num;
> > +	const struct qmp_phy_init_tbl *ln_shrd_serdes;
> > +	int ln_shrd_serdes_num;
> >   	const struct qmp_phy_init_tbl *tx;
> >   	int tx_num;
> >   	const struct qmp_phy_init_tbl *rx;
> > @@ -1510,6 +1740,9 @@ struct qmp_phy_cfg {
> >   	/* resets to be requested */
> >   	const char * const *reset_list;
> >   	int num_resets;
> > +	/* no CSR resets to be requested */
> > +	const char * const *nocsr_reset_list;
> > +	int num_nocsr_resets;
> 
> Is there any difference between 'no CSR' resets and the plain ones? Can we
> handle them in a single array instead?

Yes, on power on, only the 'No CSR' are necessary to be deasserted.

So we need to differentiate between 'No CSR' and the rest.

> 
> >   	/* regulators to be requested */
> >   	const char * const *vreg_list;
> >   	int num_vregs;
> > @@ -1523,6 +1756,9 @@ struct qmp_phy_cfg {
> >   	bool skip_start_delay;
> > +	/* true, if PHY has lane shared serdes table */
> > +	bool has_ln_shrd_serdes_tbl;
> 
> s/shrd/shared/g ? I think it's easier to read and to understand.

Sure. Will do.

> 
> > +
> >   	/* QMP PHY pipe clock interface rate */
> >   	unsigned long pipe_clock_rate;
> >   };
> > @@ -1534,6 +1770,7 @@ struct qmp_pcie {
> >   	bool tcsr_4ln_config;
> >   	void __iomem *serdes;
> > +	void __iomem *ln_shrd_serdes;
> >   	void __iomem *pcs;
> >   	void __iomem *pcs_misc;
> >   	void __iomem *tx;
> > @@ -1548,6 +1785,7 @@ struct qmp_pcie {
> >   	int num_pipe_clks;
> >   	struct reset_control_bulk_data *resets;
> > +	struct reset_control_bulk_data *nocsr_resets;
> >   	struct regulator_bulk_data *vregs;
> >   	struct phy *phy;
> > @@ -1595,11 +1833,19 @@ static const char * const sdm845_pciephy_clk_l[] = {
> >   	"aux", "cfg_ahb", "ref", "refgen",
> >   };
> > +static const char * const sm8550_pciephy_clk_l[] = {
> > +	"aux", "aux_phy", "cfg_ahb", "ref", "refgen",
> > +};
> > +
> >   /* list of regulators */
> >   static const char * const qmp_phy_vreg_l[] = {
> >   	"vdda-phy", "vdda-pll",
> >   };
> > +static const char * const sm8550_qmp_phy_vreg_l[] = {
> > +	"vdda-phy", "vdda-pll", "vdda-qref",
> > +};
> > +
> >   /* list of resets */
> >   static const char * const ipq8074_pciephy_reset_l[] = {
> >   	"phy", "common",
> > @@ -1609,6 +1855,10 @@ static const char * const sdm845_pciephy_reset_l[] = {
> >   	"phy",
> >   };
> > +static const char * const sm8550_pciephy_nocsr_reset_l[] = {
> > +	"pcie_1_nocsr_com_phy_reset",
> > +};
> > +
> >   static const struct qmp_pcie_offsets qmp_pcie_offsets_v5 = {
> >   	.serdes		= 0,
> >   	.pcs		= 0x0200,
> > @@ -2084,6 +2334,65 @@ static const struct qmp_phy_cfg sm8450_qmp_gen4x2_pciephy_cfg = {
> >   	.phy_status		= PHYSTATUS_4_20,
> >   };
> > +static const struct qmp_phy_cfg sm8550_qmp_gen3x2_pciephy_cfg = {
> > +	.lanes = 2,
> > +
> > +	.tbls = {
> > +		.serdes		= sm8550_qmp_gen3x2_pcie_serdes_tbl,
> > +		.serdes_num	= ARRAY_SIZE(sm8550_qmp_gen3x2_pcie_serdes_tbl),
> > +		.tx		= sm8550_qmp_gen3x2_pcie_tx_tbl,
> > +		.tx_num		= ARRAY_SIZE(sm8550_qmp_gen3x2_pcie_tx_tbl),
> > +		.rx		= sm8550_qmp_gen3x2_pcie_rx_tbl,
> > +		.rx_num		= ARRAY_SIZE(sm8550_qmp_gen3x2_pcie_rx_tbl),
> > +		.pcs		= sm8550_qmp_gen3x2_pcie_pcs_tbl,
> > +		.pcs_num	= ARRAY_SIZE(sm8550_qmp_gen3x2_pcie_pcs_tbl),
> > +		.pcs_misc	= sm8550_qmp_gen3x2_pcie_pcs_misc_tbl,
> > +		.pcs_misc_num	= ARRAY_SIZE(sm8550_qmp_gen3x2_pcie_pcs_misc_tbl),
> > +	},
> > +	.clk_list		= sdm845_pciephy_clk_l,
> > +	.num_clks		= ARRAY_SIZE(sdm845_pciephy_clk_l),
> > +	.reset_list		= sdm845_pciephy_reset_l,
> > +	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
> > +	.vreg_list		= qmp_phy_vreg_l,
> > +	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
> > +	.regs			= sm8250_pcie_regs_layout,
> > +
> > +	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
> > +	.phy_status		= PHYSTATUS,
> > +};
> > +
> > +static const struct qmp_phy_cfg sm8550_qmp_gen4x2_pciephy_cfg = {
> > +	.lanes = 2,
> > +
> > +	.tbls = {
> > +		.serdes			= sm8550_qmp_gen4x2_pcie_serdes_tbl,
> > +		.serdes_num		= ARRAY_SIZE(sm8550_qmp_gen4x2_pcie_serdes_tbl),
> > +		.ln_shrd_serdes		= sm8550_qmp_gen4x2_pcie_serdes_ln_shrd_tbl,
> > +		.ln_shrd_serdes_num	= ARRAY_SIZE(sm8550_qmp_gen4x2_pcie_serdes_ln_shrd_tbl),
> > +		.tx			= sm8550_qmp_gen4x2_pcie_tx_tbl,
> > +		.tx_num			= ARRAY_SIZE(sm8550_qmp_gen4x2_pcie_tx_tbl),
> > +		.rx			= sm8550_qmp_gen4x2_pcie_rx_tbl,
> > +		.rx_num			= ARRAY_SIZE(sm8550_qmp_gen4x2_pcie_rx_tbl),
> > +		.pcs			= sm8550_qmp_gen4x2_pcie_pcs_tbl,
> > +		.pcs_num		= ARRAY_SIZE(sm8550_qmp_gen4x2_pcie_pcs_tbl),
> > +		.pcs_misc		= sm8550_qmp_gen4x2_pcie_pcs_misc_tbl,
> > +		.pcs_misc_num		= ARRAY_SIZE(sm8550_qmp_gen4x2_pcie_pcs_misc_tbl),
> > +	},
> > +	.clk_list		= sm8550_pciephy_clk_l,
> > +	.num_clks		= ARRAY_SIZE(sm8550_pciephy_clk_l),
> > +	.reset_list		= sdm845_pciephy_reset_l,
> > +	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
> > +	.nocsr_reset_list	= sm8550_pciephy_nocsr_reset_l,
> > +	.num_nocsr_resets	= ARRAY_SIZE(sm8550_pciephy_nocsr_reset_l),
> > +	.vreg_list		= sm8550_qmp_phy_vreg_l,
> > +	.num_vregs		= ARRAY_SIZE(sm8550_qmp_phy_vreg_l),
> > +	.regs			= sm8250_pcie_regs_layout,
> > +
> > +	.has_ln_shrd_serdes_tbl	= true,
> > +	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
> > +	.phy_status		= PHYSTATUS_4_20,
> > +};
> > +
> >   static void qmp_pcie_configure_lane(void __iomem *base,
> >   					const struct qmp_phy_init_tbl tbl[],
> >   					int num,
> > @@ -2132,6 +2441,7 @@ static void qmp_pcie_init_registers(struct qmp_pcie *qmp, const struct qmp_phy_c
> >   {
> >   	const struct qmp_phy_cfg *cfg = qmp->cfg;
> >   	void __iomem *serdes = qmp->serdes;
> > +	void __iomem *ln_shrd_serdes = qmp->ln_shrd_serdes;
> >   	void __iomem *tx = qmp->tx;
> >   	void __iomem *rx = qmp->rx;
> >   	void __iomem *tx2 = qmp->tx2;
> > @@ -2159,6 +2469,10 @@ static void qmp_pcie_init_registers(struct qmp_pcie *qmp, const struct qmp_phy_c
> >   		qmp_pcie_configure(serdes, cfg->serdes_4ln_tbl, cfg->serdes_4ln_num);
> >   		qmp_pcie_init_port_b(qmp, tbls);
> >   	}
> > +
> > +	if (cfg->has_ln_shrd_serdes_tbl)
> > +		qmp_pcie_configure(ln_shrd_serdes, tbls->ln_shrd_serdes,
> > +				       tbls->ln_shrd_serdes_num);
> >   }
> >   static int qmp_pcie_init(struct phy *phy)
> > @@ -2179,6 +2493,14 @@ static int qmp_pcie_init(struct phy *phy)
> >   		goto err_disable_regulators;
> >   	}
> > +	if (qmp->nocsr_resets) {
> > +		ret = reset_control_bulk_assert(cfg->num_nocsr_resets, qmp->nocsr_resets);
> > +		if (ret) {
> > +			dev_err(qmp->dev, "no-csr reset assert failed\n");
> > +			goto err_disable_regulators;
> > +		}
> > +	}
> > +
> >   	usleep_range(200, 300);
> >   	ret = reset_control_bulk_deassert(cfg->num_resets, qmp->resets);
> > @@ -2240,6 +2562,14 @@ static int qmp_pcie_power_on(struct phy *phy)
> >   	if (ret)
> >   		return ret;
> > +	if (qmp->nocsr_resets) {
> > +		ret = reset_control_bulk_deassert(cfg->num_nocsr_resets, qmp->nocsr_resets);
> > +		if (ret) {
> > +			dev_err(qmp->dev, "no-csr reset deassert failed\n");
> > +			goto err_disable_pipe_clk;
> > +		}
> > +	}
> > +
> >   	/* Pull PHY out of reset state */
> >   	qphy_clrbits(pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
> > @@ -2373,6 +2703,21 @@ static int qmp_pcie_reset_init(struct qmp_pcie *qmp)
> >   	if (ret)
> >   		return dev_err_probe(dev, ret, "failed to get resets\n");
> > +	if (cfg->nocsr_reset_list) {
> > +		qmp->nocsr_resets = devm_kcalloc(dev, cfg->num_nocsr_resets,
> > +				   sizeof(*qmp->nocsr_resets), GFP_KERNEL);
> > +		if (!qmp->nocsr_resets)
> > +			return -ENOMEM;
> > +
> > +		for (i = 0; i < cfg->num_nocsr_resets; i++)
> > +			qmp->nocsr_resets[i].id = cfg->nocsr_reset_list[i];
> > +
> > +		ret = devm_reset_control_bulk_get_exclusive(dev, cfg->num_nocsr_resets,
> > +								qmp->nocsr_resets);
> > +		if (ret)
> > +			return dev_err_probe(dev, ret, "failed to get no CSR resets\n");
> > +	}
> > +
> >   	return 0;
> >   }
> > @@ -2502,6 +2847,9 @@ static int qmp_pcie_parse_dt_legacy(struct qmp_pcie *qmp, struct device_node *np
> >   			return PTR_ERR(qmp->rx2);
> >   		qmp->pcs_misc = devm_of_iomap(dev, np, 5, NULL);
> > +
> > +		if (cfg->has_ln_shrd_serdes_tbl)
> > +			qmp->ln_shrd_serdes = devm_of_iomap(dev, np, 6, NULL);
> 
> I think we also need to check the returned value. Also, I think we can drop
> the conditional check here. we don't have to validate the DT, so if the reg
> is present in DT, then it's present. If not, it's not required.

Yeah, but I was trying to make sure that if there is a new type of reg
for some upcomming SoC, we don't take that as ln_shrd. That's why the check
was added.

I'll add the returned value check though.

> 
> >   	} else {
> >   		qmp->pcs_misc = devm_of_iomap(dev, np, 3, NULL);
> >   	}
> > @@ -2729,6 +3077,12 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
> >   	}, {
> >   		.compatible = "qcom,sm8450-qmp-gen4x2-pcie-phy",
> >   		.data = &sm8450_qmp_gen4x2_pciephy_cfg,
> > +	}, {
> > +		.compatible = "qcom,sm8550-qmp-gen3x2-pcie-phy",
> > +		.data = &sm8550_qmp_gen3x2_pciephy_cfg,
> > +	}, {
> > +		.compatible = "qcom,sm8550-qmp-gen4x2-pcie-phy",
> > +		.data = &sm8550_qmp_gen4x2_pciephy_cfg,
> >   	},
> >   	{ },
> >   };
> 
> -- 
> With best wishes
> Dmitry
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
