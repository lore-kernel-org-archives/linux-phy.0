Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E912C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 16 Dec 2021 01:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tIrQ4ivNMhoIMvyWTty5lfYyakO6TEtMelJ3mZFE9Ls=; b=ET5Z1OnjQAXZoI
	NjArLU1aT7G5Giv9+XyoAzjAgHQ9dLmeSNBkL8ofEfBu4SLQSTtdWHhKdun4q6dFqtb4Eknt5Eb8F
	Du1+x1YroWWSwhbt1APxgPw2RraK3+zsxDRoMaspWD15RWZ+EB3lM7Y62dRUto5VxXMivqooWt+ia
	WwAP0afgjREwaEFnul46cLmkAm6/r5NV468S9I1iS0VshiCQq8rPKOSdK7d5l7C9ZXpIweu3BTO+V
	M9Q+S/v/OvAR+w4F8GaEJi+sMIUDeVNqxkhkGtqybchYjIkaWdBY80BPs2mhHZOFZBmhHm+SqnN1g
	MHi2LCAoCHEZ9Jxqyb8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxfZp-003FrI-HP; Thu, 16 Dec 2021 01:28:57 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxfZm-003Fpg-4Z
 for linux-phy@lists.infradead.org; Thu, 16 Dec 2021 01:28:56 +0000
Received: by mail-lf1-x12b.google.com with SMTP id l22so46485503lfg.7
 for <linux-phy@lists.infradead.org>; Wed, 15 Dec 2021 17:28:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UlrS5zFZyVHdYpzgyW8iT06BJPhA6vt2JDCBzzIikOM=;
 b=rYGn/JjVv1JYKGBRRlsCAmx4jl7d0xgMlmBd2UBDlyRNkQTCeinptwxJAfvj8CLImK
 RPgC68lNQmL/wp2wlthfpjvL96n2DohBpBEYZUq66VCm3m0ODkbTGIYcsi+TaP7HlI6Y
 Xfx2uBzvVxjWMOLy4dDfmCmwLVIvJww8xkoIpUC2rJIdm9DS169+eYoHtjuy3ImiRneH
 SYAvVZwylg7Ov4XRl8SqzO7wrmmd8tQs4Z0lSnPp4+yxHI57a44kaWxdRNccLj/yTQVv
 b5gz8WJm0iGYdV2u7SqsKqnM4h95sHLOWVxUKL7riYZsYcy6JX5yJIhejL/HKeAg7a2v
 E3MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UlrS5zFZyVHdYpzgyW8iT06BJPhA6vt2JDCBzzIikOM=;
 b=Rt211wZ5naQFLh/s2Sr9L3JIqx7NgJcvca/I2+tJ0v6SHJeAXNpnXMDSexKN5/m06S
 +FdI1p2HEgwXK5JBrexdb27dTah3unlbLbXVu51DhCbyV5UIPR5/sdF8kZkKKemlTKEa
 I9E/Kul2lQvDVBeA4wVUQO7spZDi/jAT05/rASk3hTlrcVV0PWIfKyHQYHKKbJU4lyCY
 GRhGWRfm5yQeavve7jTOvFZ/C20gXkp+FEjuP5hA+CGry5k7wbR/sEvlhZ2dQUWhC5ES
 W7XXlRLt8l1kPrO5oGbyOf8xqMKq34iYi+DYqIWRV3lCoycGIbCgXoNK0NrIJD4fHQ4n
 OtSA==
X-Gm-Message-State: AOAM53116zqBAgeP80PUy0c4TeILmAzJqI2+I1IZ/JrN6tnE/gtqOJg9
 Ly9BJIrWWo7Q8uhDsvRl2feZtgJfc5e8M44X4ZwdV4c3vRMYIo7o
X-Google-Smtp-Source: ABdhPJyh3Iw4723/46nsuXnrbnrvsXRWMqvSUoqgbqtqdsU8ngYy/mqAO55xEC1qWNFgiVztN/kFKphRSKjSeiNHJmU=
X-Received: by 2002:a05:6512:ac5:: with SMTP id
 n5mr12335152lfu.246.1639618130292; 
 Wed, 15 Dec 2021 17:28:50 -0800 (PST)
MIME-Version: 1.0
References: <20211211021758.1712299-1-dmitry.baryshkov@linaro.org>
 <20211211021758.1712299-4-dmitry.baryshkov@linaro.org>
 <YbpuCRqCmMmiC6EM@builder.lan>
In-Reply-To: <YbpuCRqCmMmiC6EM@builder.lan>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 16 Dec 2021 04:28:39 +0300
Message-ID: <CAA8EJpqqO46ni74ihQV15jvDqgMB3pJJg9kz80-meLC01idqnw@mail.gmail.com>
Subject: Re: [PATCH v3 03/10] phy: qcom-qmp: Add SM8450 PCIe0 PHY support
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Stanimir Varbanov <svarbanov@mm-sol.com>, 
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>, 
 "Krzysztof Wilczy??ski" <kw@linux.com>, linux-arm-msm@vger.kernel.org,
 linux-pci@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211215_172854_220692_B9B4F4FE 
X-CRM114-Status: GOOD (  22.25  )
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

On Thu, 16 Dec 2021 at 01:37, Bjorn Andersson
<bjorn.andersson@linaro.org> wrote:
>
> On Fri 10 Dec 20:17 CST 2021, Dmitry Baryshkov wrote:
>
> > There are two different PCIe PHYs on SM8450, one having one lane (v5)
> > and another with two lanes (v5.20). This commit adds support for the
> > first PCIe phy only, support for the second PCIe PHY is coming in next
> > commits.
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>
> Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
>
> Note that this is going to be merged separately from the PCIe controller
> patches, sending them in separate series would make that clearer to the
> maintainers.

Hmm. If you think it would be better, I can split it into 3 series:
- PCIe RC
- PCIe PHY
- dts changes

Does that make sense?

>
> Regards,
> Bjorn
>
> > ---
> >  drivers/phy/qualcomm/phy-qcom-qmp.c | 125 ++++++++++++++++++++++++++++
> >  drivers/phy/qualcomm/phy-qcom-qmp.h |  33 ++++++++
> >  2 files changed, 158 insertions(+)
> >
> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp.c
> > index a959c97a699f..19c17678b999 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-qmp.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp.c
> > @@ -2866,6 +2866,97 @@ static const struct qmp_phy_init_tbl qcm2290_usb3_pcs_tbl[] = {
> >       QMP_PHY_INIT_CFG(QPHY_V3_PCS_RX_SIGDET_LVL, 0x88),
> >  };
> >
> > +static const struct qmp_phy_init_tbl sm8450_qmp_gen3x1_pcie_serdes_tbl[] = {
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_COM_SYSCLK_EN_SEL, 0x08),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_COM_CLK_SELECT, 0x34),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_COM_CORECLK_DIV_MODE1, 0x08),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_COM_PLL_IVCO, 0x0f),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_COM_LOCK_CMP_EN, 0x42),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_COM_VCO_TUNE1_MODE0, 0x24),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_COM_VCO_TUNE2_MODE1, 0x03),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_COM_VCO_TUNE1_MODE1, 0xb4),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_COM_VCO_TUNE_MAP, 0x02),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_COM_BIN_VCOCAL_HSCLK_SEL, 0x11),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_COM_DEC_START_MODE0, 0x82),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_COM_DIV_FRAC_START3_MODE0, 0x03),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_COM_DIV_FRAC_START2_MODE0, 0x55),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_COM_DIV_FRAC_START1_MODE0, 0x55),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_COM_LOCK_CMP2_MODE0, 0x1a),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_COM_LOCK_CMP1_MODE0, 0x0a),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_COM_DEC_START_MODE1, 0x68),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_COM_DIV_FRAC_START3_MODE1, 0x02),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_COM_DIV_FRAC_START2_MODE1, 0xaa),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_COM_DIV_FRAC_START1_MODE1, 0xab),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_COM_LOCK_CMP2_MODE1, 0x34),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_COM_LOCK_CMP1_MODE1, 0x14),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_COM_HSCLK_SEL, 0x01),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_COM_CP_CTRL_MODE0, 0x06),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_COM_PLL_RCTRL_MODE0, 0x16),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_COM_PLL_CCTRL_MODE0, 0x36),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_COM_CP_CTRL_MODE1, 0x06),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_COM_PLL_RCTRL_MODE1, 0x16),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_COM_PLL_CCTRL_MODE1, 0x36),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_COM_BIN_VCOCAL_CMP_CODE2_MODE0, 0x1e),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_COM_BIN_VCOCAL_CMP_CODE1_MODE0, 0xca),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_COM_BIN_VCOCAL_CMP_CODE2_MODE1, 0x18),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_COM_BIN_VCOCAL_CMP_CODE1_MODE1, 0xa2),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_COM_SYSCLK_BUF_ENABLE, 0x07),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_COM_SSC_EN_CENTER, 0x01),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_COM_SSC_PER1, 0x31),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_COM_SSC_PER2, 0x01),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_COM_SSC_STEP_SIZE1_MODE0, 0xde),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_COM_SSC_STEP_SIZE2_MODE0, 0x07),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_COM_SSC_STEP_SIZE1_MODE1, 0x4c),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_COM_SSC_STEP_SIZE2_MODE1, 0x06),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_COM_CLK_ENABLE1, 0x90),
> > +};
> > +
> > +static const struct qmp_phy_init_tbl sm8450_qmp_gen3x1_pcie_tx_tbl[] = {
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_TX_PI_QEC_CTRL, 0x20),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_TX_LANE_MODE_1, 0x75),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_TX_LANE_MODE_4, 0x3f),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_TX_RES_CODE_LANE_OFFSET_TX, 0x16),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_TX_RES_CODE_LANE_OFFSET_RX, 0x04),
> > +};
> > +
> > +static const struct qmp_phy_init_tbl sm8450_qmp_gen3x1_pcie_rx_tbl[] = {
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_00_LOW, 0x7f),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_00_HIGH, 0xff),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_00_HIGH2, 0xbf),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_00_HIGH3, 0x3f),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_00_HIGH4, 0xd8),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_01_LOW, 0xdc),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_01_HIGH, 0xdc),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_01_HIGH2, 0x5c),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_01_HIGH3, 0x34),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_01_HIGH4, 0xa6),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_10_HIGH3, 0x34),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_10_HIGH4, 0x38),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_RX_VGA_CAL_CNTRL2, 0x07),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_RX_GM_CAL, 0x00),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_RX_UCDR_SB2_THRESH1, 0x08),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_RX_UCDR_SB2_THRESH2, 0x08),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_RX_UCDR_PI_CONTROLS, 0xf0),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_RX_DFE_CTLE_POST_CAL_OFFSET, 0x38),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_RX_TX_ADAPT_POST_THRESH, 0xf0),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_EQU_ADAPTOR_CNTRL4, 0x07),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_RX_UCDR_FO_GAIN, 0x09),
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_RX_UCDR_SO_GAIN, 0x05),
> > +};
> > +
> > +static const struct qmp_phy_init_tbl sm8450_qmp_gen3x1_pcie_pcs_tbl[] = {
> > +     QMP_PHY_INIT_CFG(QPHY_V5_PCS_RX_SIGDET_LVL, 0x77),
> > +     QMP_PHY_INIT_CFG(QPHY_V5_PCS_RATE_SLEW_CNTRL1, 0x0b),
> > +     QMP_PHY_INIT_CFG(QPHY_V5_PCS_REFGEN_REQ_CONFIG1, 0x05),
> > +};
> > +
> > +static const struct qmp_phy_init_tbl sm8450_qmp_gen3x1_pcie_pcs_misc_tbl[] = {
> > +     QMP_PHY_INIT_CFG(QPHY_V5_PCS_PCIE_OSC_DTCT_ACTIONS, 0x00),
> > +     QMP_PHY_INIT_CFG(QPHY_V5_PCS_PCIE_INT_AUX_CLK_CONFIG1, 0x00),
> > +     QMP_PHY_INIT_CFG(QPHY_V5_PCS_PCIE_EQ_CONFIG2, 0x0f),
> > +     QMP_PHY_INIT_CFG(QPHY_V5_PCS_PCIE_ENDPOINT_REFCLK_DRIVE, 0xc1),
> > +};
> > +
> >  struct qmp_phy;
> >
> >  /* struct qmp_phy_cfg - per-PHY initialization config */
> > @@ -4116,6 +4207,37 @@ static const struct qmp_phy_cfg sm8450_ufsphy_cfg = {
> >       .is_dual_lane_phy       = true,
> >  };
> >
> > +static const struct qmp_phy_cfg sm8450_qmp_gen3x1_pciephy_cfg = {
> > +     .type = PHY_TYPE_PCIE,
> > +     .nlanes = 1,
> > +
> > +     .serdes_tbl             = sm8450_qmp_gen3x1_pcie_serdes_tbl,
> > +     .serdes_tbl_num         = ARRAY_SIZE(sm8450_qmp_gen3x1_pcie_serdes_tbl),
> > +     .tx_tbl                 = sm8450_qmp_gen3x1_pcie_tx_tbl,
> > +     .tx_tbl_num             = ARRAY_SIZE(sm8450_qmp_gen3x1_pcie_tx_tbl),
> > +     .rx_tbl                 = sm8450_qmp_gen3x1_pcie_rx_tbl,
> > +     .rx_tbl_num             = ARRAY_SIZE(sm8450_qmp_gen3x1_pcie_rx_tbl),
> > +     .pcs_tbl                = sm8450_qmp_gen3x1_pcie_pcs_tbl,
> > +     .pcs_tbl_num            = ARRAY_SIZE(sm8450_qmp_gen3x1_pcie_pcs_tbl),
> > +     .pcs_misc_tbl           = sm8450_qmp_gen3x1_pcie_pcs_misc_tbl,
> > +     .pcs_misc_tbl_num       = ARRAY_SIZE(sm8450_qmp_gen3x1_pcie_pcs_misc_tbl),
> > +     .clk_list               = sdm845_pciephy_clk_l,
> > +     .num_clks               = ARRAY_SIZE(sdm845_pciephy_clk_l),
> > +     .reset_list             = sdm845_pciephy_reset_l,
> > +     .num_resets             = ARRAY_SIZE(sdm845_pciephy_reset_l),
> > +     .vreg_list              = qmp_phy_vreg_l,
> > +     .num_vregs              = ARRAY_SIZE(qmp_phy_vreg_l),
> > +     .regs                   = sm8250_pcie_regs_layout,
> > +
> > +     .start_ctrl             = SERDES_START | PCS_START,
> > +     .pwrdn_ctrl             = SW_PWRDN | REFCLK_DRV_DSBL,
> > +     .phy_status             = PHYSTATUS,
> > +
> > +     .has_pwrdn_delay        = true,
> > +     .pwrdn_delay_min        = 995,          /* us */
> > +     .pwrdn_delay_max        = 1005,         /* us */
> > +};
> > +
> >  static const struct qmp_phy_cfg qcm2290_usb3phy_cfg = {
> >       .type                   = PHY_TYPE_USB3,
> >       .nlanes                 = 1,
> > @@ -5774,6 +5896,9 @@ static const struct of_device_id qcom_qmp_phy_of_match_table[] = {
> >       }, {
> >               .compatible = "qcom,sm8350-qmp-usb3-uni-phy",
> >               .data = &sm8350_usb3_uniphy_cfg,
> > +     }, {
> > +             .compatible = "qcom,sm8450-qmp-gen3x1-pcie-phy",
> > +             .data = &sm8450_qmp_gen3x1_pciephy_cfg,
> >       }, {
> >               .compatible = "qcom,sm8450-qmp-ufs-phy",
> >               .data = &sm8450_ufsphy_cfg,
> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
> > index e15f461065bb..08422037f81b 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-qmp.h
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
> > @@ -1069,6 +1069,15 @@
> >  #define QPHY_V4_20_PCS_LANE1_INSIG_MX_CTRL2          0x828
> >
> >  /* Only for QMP V5 PHY - QSERDES COM registers */
> > +#define QSERDES_V5_COM_SSC_EN_CENTER                 0x010
> > +#define QSERDES_V5_COM_SSC_PER1                              0x01c
> > +#define QSERDES_V5_COM_SSC_PER2                              0x020
> > +#define QSERDES_V5_COM_SSC_STEP_SIZE1_MODE0          0x024
> > +#define QSERDES_V5_COM_SSC_STEP_SIZE2_MODE0          0x028
> > +#define QSERDES_V5_COM_SSC_STEP_SIZE1_MODE1          0x030
> > +#define QSERDES_V5_COM_SSC_STEP_SIZE2_MODE1          0x034
> > +#define QSERDES_V5_COM_CLK_ENABLE1                   0x048
> > +#define QSERDES_V5_COM_SYSCLK_BUF_ENABLE             0x050
> >  #define QSERDES_V5_COM_PLL_IVCO                              0x058
> >  #define QSERDES_V5_COM_CP_CTRL_MODE0                 0x074
> >  #define QSERDES_V5_COM_CP_CTRL_MODE1                 0x078
> > @@ -1084,10 +1093,22 @@
> >  #define QSERDES_V5_COM_DEC_START_MODE0                       0x0bc
> >  #define QSERDES_V5_COM_LOCK_CMP2_MODE1                       0x0b8
> >  #define QSERDES_V5_COM_DEC_START_MODE1                       0x0c4
> > +#define QSERDES_V5_COM_DIV_FRAC_START1_MODE0         0x0cc
> > +#define QSERDES_V5_COM_DIV_FRAC_START2_MODE0         0x0d0
> > +#define QSERDES_V5_COM_DIV_FRAC_START3_MODE0         0x0d4
> > +#define QSERDES_V5_COM_DIV_FRAC_START1_MODE1         0x0d8
> > +#define QSERDES_V5_COM_DIV_FRAC_START2_MODE1         0x0dc
> > +#define QSERDES_V5_COM_DIV_FRAC_START3_MODE1         0x0e0
> >  #define QSERDES_V5_COM_VCO_TUNE_MAP                  0x10c
> > +#define QSERDES_V5_COM_VCO_TUNE1_MODE0                       0x110
> > +#define QSERDES_V5_COM_VCO_TUNE2_MODE0                       0x114
> > +#define QSERDES_V5_COM_VCO_TUNE1_MODE1                       0x118
> > +#define QSERDES_V5_COM_VCO_TUNE2_MODE1                       0x11c
> >  #define QSERDES_V5_COM_VCO_TUNE_INITVAL2             0x124
> > +#define QSERDES_V5_COM_CLK_SELECT                    0x154
> >  #define QSERDES_V5_COM_HSCLK_SEL                     0x158
> >  #define QSERDES_V5_COM_HSCLK_HS_SWITCH_SEL           0x15c
> > +#define QSERDES_V5_COM_CORECLK_DIV_MODE1             0x16c
> >  #define QSERDES_V5_COM_BIN_VCOCAL_CMP_CODE1_MODE0    0x1ac
> >  #define QSERDES_V5_COM_BIN_VCOCAL_CMP_CODE2_MODE0    0x1b0
> >  #define QSERDES_V5_COM_BIN_VCOCAL_CMP_CODE1_MODE1    0x1b4
> > @@ -1130,6 +1151,7 @@
> >  #define QSERDES_V5_RX_AC_JTAG_ENABLE                 0x068
> >  #define QSERDES_V5_RX_AC_JTAG_MODE                   0x078
> >  #define QSERDES_V5_RX_RX_TERM_BW                     0x080
> > +#define QSERDES_V5_RX_TX_ADAPT_POST_THRESH           0x0cc
> >  #define QSERDES_V5_RX_VGA_CAL_CNTRL1                 0x0d4
> >  #define QSERDES_V5_RX_VGA_CAL_CNTRL2                 0x0d8
> >  #define QSERDES_V5_RX_GM_CAL                         0x0dc
> > @@ -1167,6 +1189,17 @@
> >  #define QSERDES_V5_RX_DCC_CTRL1                              0x1a8
> >  #define QSERDES_V5_RX_VTH_CODE                               0x1b0
> >
> > +/* Only for QMP V5 PHY - USB/PCIe PCS registers */
> > +#define QPHY_V5_PCS_REFGEN_REQ_CONFIG1                       0x0dc
> > +#define QPHY_V5_PCS_RX_SIGDET_LVL                    0x188
> > +#define QPHY_V5_PCS_RATE_SLEW_CNTRL1                 0x198
> > +
> > +/* Only for QMP V5 PHY - PCS_PCIE registers */
> > +#define QPHY_V5_PCS_PCIE_ENDPOINT_REFCLK_DRIVE               0x20
> > +#define QPHY_V5_PCS_PCIE_INT_AUX_CLK_CONFIG1         0x54
> > +#define QPHY_V5_PCS_PCIE_OSC_DTCT_ACTIONS            0x94
> > +#define QPHY_V5_PCS_PCIE_EQ_CONFIG2                  0xa8
> > +
> >  /* Only for QMP V5 PHY - UFS PCS registers */
> >  #define QPHY_V5_PCS_UFS_TIMER_20US_CORECLK_STEPS_MSB 0x00c
> >  #define QPHY_V5_PCS_UFS_TIMER_20US_CORECLK_STEPS_LSB 0x010
> > --
> > 2.33.0
> >



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
