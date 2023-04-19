Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C670C77B75
	for <linux-phy@archiver.kernel.org>; Wed, 19 Apr 2023 11:07:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/F4W+bWv2OFL/VNqKJetezuIChiGA9tfHbAulWM+hXQ=; b=zizT17SI+kuIQY
	si3a0NPjYVw8+o8CwUpYAQr0zjxpBkYL33vSz9SG3Jm5MwrOXTyIsC0hZnHixdnzV66iH/1sx1vop
	5bUOu36KS5gupVHep4jdh4gnDG9SbmkoZUodI7rrs5YSZn1PTGvs55Pcm0onB6FG5/2ucjm6vHZTL
	kWq6wx28po1tC4kpj5Zb8f8zGtuHaMFeUf0nLAB6rUnuGqrNgmmt/+T63So1XARijqUSv7VcQDD6D
	9wery+O5Ww39KSZOEwS9rMd2hwHiTYmZdbwqD9oyyxvHCi8NBfb4HkwOH2HfECu6af98YW68jc/+s
	hS6bSBuxmnadR8ymg/dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pp5fD-0057eg-2l;
	Wed, 19 Apr 2023 11:07:51 +0000
Received: from mail-yw1-x1129.google.com ([2607:f8b0:4864:20::1129])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pp5fA-0057d8-20
	for linux-phy@lists.infradead.org;
	Wed, 19 Apr 2023 11:07:50 +0000
Received: by mail-yw1-x1129.google.com with SMTP id 00721157ae682-54fb615ac3dso282068037b3.2
        for <linux-phy@lists.infradead.org>; Wed, 19 Apr 2023 04:07:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681902465; x=1684494465;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/9Ddcy28AQvgkYKDUWdOvB6YfbaMyaHlxkJl7KwWfDY=;
        b=l51RaSDNen29BvZ4wsxn6mP3IzAAGLMo1pjRCVRrNjrX/l6X5JGCVrbVSn7k0iV9qW
         ySDuPHCT/iTPA/DwfHCd043jTHVbysDsqNeQ7BY/I2bX+ES2NtCeoFxKcgBO8cIX+axv
         ovTJc6GWRQQKTK83oueQ/oERSrPjwpiHOARJzp5hdtU5+4TP+R5ysg5uQ2Bxx7BQ0uqm
         uWgVJ4Wo8BXYZFNSZIZAFv59IAuMtycwwgoHFal2jFBQYppTeuWM9iWtiCt1VrYjhMIH
         y4NaDbgXX4x6JbJDwuJMfSQujGtlGSeRCv7jeWvjVcDdX62rOEtMozCvStvgTz52I21l
         6Gyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681902465; x=1684494465;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/9Ddcy28AQvgkYKDUWdOvB6YfbaMyaHlxkJl7KwWfDY=;
        b=AfbAbSFgbtkgfJmSxq8H6U98QRHFkVxEq6va9sJXtMTQStV4gpcH8BLyJSVjpkZ+Qm
         eAC1wVjMXY0V+Rvzv7Fa+Ay7203ClJBs/rv0w+W2UKAkdR6ksocDwal3sxe+AFzhSQ33
         /7bLeu982ngAUEYRD4u8qFlpZtA+vIimeTwjpqrCHGeAI1VD8LMYdsSzi4ZRIaQ368bD
         ar4Pq05vbLfNNwiyrmo3Y1HVoPubEiDBrlMZeFLV79pDLTlRMe6RdcJoUWTgzEDZUqCs
         keHRx/GN7lcmGz81XCvzvZnj75/QZO2on6FovP7HuEZix5ctUq25N7wBl/AdNRCbVbw+
         C0kw==
X-Gm-Message-State: AAQBX9dp0NVAZtfogrlLfDY5LOUMnx9QNiG7Hqtjo6B2pgdbkHcxDhMw
	IQfeVkWdBEUfKBhtrpJCYlWrXFJzgoPo8q4zaXHLMg==
X-Google-Smtp-Source: AKy350bV/FU6PgqfAJS+Si54A+i2xqPl7MusskZwg/guLRpeJO/sQP6AtVhr8dqMUbekAzagk7flXPpDjvWhKbvXPJs=
X-Received: by 2002:a81:8701:0:b0:54e:ffbd:7a7e with SMTP id
 x1-20020a818701000000b0054effbd7a7emr2906584ywf.45.1681902464961; Wed, 19 Apr
 2023 04:07:44 -0700 (PDT)
MIME-Version: 1.0
References: <20230414205425.3878902-1-dmitry.baryshkov@linaro.org> <999af225-2f21-0cf5-0292-3c5afa332121@linaro.org>
In-Reply-To: <999af225-2f21-0cf5-0292-3c5afa332121@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 19 Apr 2023 14:07:34 +0300
Message-ID: <CAA8EJpq0Xe+ycNj6wuCyRdLCW7J5XgUJrSjqtHFkNFXhQvZ-Fw@mail.gmail.com>
Subject: Re: [PATCH] phy: qcom-qmp-pcie: correct sm8350 PHY tables
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230419_040748_660562_EFBE7733 
X-CRM114-Status: GOOD (  20.94  )
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

On Wed, 19 Apr 2023 at 13:59, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
>
>
> On 14.04.2023 22:54, Dmitry Baryshkov wrote:
> > Correct sm8350 PCIe PHY tables according to the vendor dtsi file.
> > This accounts some additional differences between PHY programming on
> > sm8350 and sm8450.
> >
> > The name for the PCS register 0x8 is not present in the vendor kernels,
> > but since on other generations the register prior to POWER_STATE_CONFIG2
> > is called POWER_STATE_CONFIG1, we can establish that as its name.
> >
> > Fixes: c70052739d16 ("phy: qcom-qmp-pcie: add support for sm8350 platform")
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> Are you referencing the entries in lahaina-2.1.dtsi?

Let me double check it. I had this patch for quite some time in my tree.

>
> [...]
>
> > +static const struct qmp_phy_init_tbl sm8350_qmp_gen3x1_pcie_pcs_tbl[] = {
> > +     QMP_PHY_INIT_CFG(QPHY_V5_PCS_RX_SIGDET_LVL, 0xa8),
> e.g. my downstream says 0x77 here
>
> > +     QMP_PHY_INIT_CFG(QPHY_V5_PCS_RATE_SLEW_CNTRL1, 0x0b),
> > +     QMP_PHY_INIT_CFG(QPHY_V5_PCS_REFGEN_REQ_CONFIG1, 0x05),
>
> Konrad
>
> > +};
> > +
> > +static const struct qmp_phy_init_tbl sm8350_qmp_gen3x1_pcie_pcs_misc_tbl[] = {
> > +     QMP_PHY_INIT_CFG(QPHY_V5_PCS_PCIE_OSC_DTCT_ACTIONS, 0x00),
> > +     QMP_PHY_INIT_CFG(QPHY_V5_PCS_PCIE_INT_AUX_CLK_CONFIG1, 0x00),
> > +     QMP_PHY_INIT_CFG(QPHY_V5_PCS_PCIE_EQ_CONFIG2, 0x0f),
> > +     QMP_PHY_INIT_CFG(QPHY_V5_PCS_PCIE_POWER_STATE_CONFIG1, 0x0f),
> > +     QMP_PHY_INIT_CFG(QPHY_V5_PCS_PCIE_ENDPOINT_REFCLK_DRIVE, 0xc1),
> > +};
> > +
> > +static const struct qmp_phy_init_tbl sm8350_qmp_gen3x2_pcie_rc_serdes_tbl[] = {
> > +     QMP_PHY_INIT_CFG(QSERDES_V5_COM_CLK_ENABLE1, 0x90),
> >  };
> >
> >  static const struct qmp_phy_init_tbl sm8350_qmp_gen3x2_pcie_rc_rx_tbl[] = {
> > @@ -2325,15 +2349,15 @@ static const struct qmp_phy_cfg sm8350_qmp_gen3x1_pciephy_cfg = {
> >               .tx_num         = ARRAY_SIZE(sm8350_qmp_gen3x1_pcie_tx_tbl),
> >               .rx             = sm8450_qmp_gen3_pcie_rx_tbl,
> >               .rx_num         = ARRAY_SIZE(sm8450_qmp_gen3_pcie_rx_tbl),
> > -             .pcs            = sm8450_qmp_gen3_pcie_pcs_tbl,
> > -             .pcs_num        = ARRAY_SIZE(sm8450_qmp_gen3_pcie_pcs_tbl),
> > -             .pcs_misc       = sm8450_qmp_gen3x1_pcie_pcs_misc_tbl,
> > -             .pcs_misc_num   = ARRAY_SIZE(sm8450_qmp_gen3x1_pcie_pcs_misc_tbl),
> > +             .pcs            = sm8350_qmp_gen3x1_pcie_pcs_tbl,
> > +             .pcs_num        = ARRAY_SIZE(sm8350_qmp_gen3x1_pcie_pcs_tbl),
> > +             .pcs_misc       = sm8350_qmp_gen3x1_pcie_pcs_misc_tbl,
> > +             .pcs_misc_num   = ARRAY_SIZE(sm8350_qmp_gen3x1_pcie_pcs_misc_tbl),
> >       },
> >
> >       .tbls_rc = &(const struct qmp_phy_cfg_tbls) {
> > -             .serdes         = sm8450_qmp_gen3x1_pcie_rc_serdes_tbl,
> > -             .serdes_num     = ARRAY_SIZE(sm8450_qmp_gen3x1_pcie_rc_serdes_tbl),
> > +             .serdes         = sm8350_qmp_gen3x1_pcie_rc_serdes_tbl,
> > +             .serdes_num     = ARRAY_SIZE(sm8350_qmp_gen3x1_pcie_rc_serdes_tbl),
> >               .rx             = sm8350_qmp_gen3x1_pcie_rc_rx_tbl,
> >               .rx_num         = ARRAY_SIZE(sm8350_qmp_gen3x1_pcie_rc_rx_tbl),
> >       },
> > @@ -2369,6 +2393,8 @@ static const struct qmp_phy_cfg sm8350_qmp_gen3x2_pciephy_cfg = {
> >       },
> >
> >       .tbls_rc = &(const struct qmp_phy_cfg_tbls) {
> > +             .serdes         = sm8350_qmp_gen3x2_pcie_rc_serdes_tbl,
> > +             .serdes_num     = ARRAY_SIZE(sm8350_qmp_gen3x2_pcie_rc_serdes_tbl),
> >               .rx             = sm8350_qmp_gen3x2_pcie_rc_rx_tbl,
> >               .rx_num         = ARRAY_SIZE(sm8350_qmp_gen3x2_pcie_rc_rx_tbl),
> >               .pcs            = sm8350_qmp_gen3x2_pcie_rc_pcs_tbl,
> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h
> > index a469ae2a10a1..ea466e14ca12 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h
> > @@ -8,6 +8,7 @@
> >  #define QCOM_PHY_QMP_PCS_PCIE_V5_H_
> >
> >  /* Only for QMP V5 PHY - PCS_PCIE registers */
> > +#define QPHY_V5_PCS_PCIE_POWER_STATE_CONFIG1         0x08
> >  #define QPHY_V5_PCS_PCIE_POWER_STATE_CONFIG2         0x0c
> >  #define QPHY_V5_PCS_PCIE_POWER_STATE_CONFIG4         0x14
> >  #define QPHY_V5_PCS_PCIE_ENDPOINT_REFCLK_DRIVE               0x20



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
