Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE723C4332F
	for <linux-phy@archiver.kernel.org>; Thu,  9 Nov 2023 09:45:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kIMRCx7TGC4ToOpfWHQN8BozhEBXJLd3TUKgCs/ebxk=; b=eJKihajrvAZ5m2
	wmR4HeuAzxLfSNHaL05KFQcsaeuD8tGHcLozjeEP5yYmNE8EL3TjuxYwHGEB+TDdPYAnNUM+lRSuS
	8DcOndS0hmmOHCSrMpQglPjthYYoCiwEbyDxAiSxiPqKI3Q+P6e+FE6oc8pXngDpvjnFK+8gJbi20
	6Sew7Fji6il0JvYqpjyK/Fzt86qMgjtxLtb4ZsKDy++vO0XG3CqVEAJsAuLMSFkK/2Fu/qL/dVgC7
	7QPgoe0wlywkzs3eKz5ZJw6I9wTltH5EDk+ceo40xRFLKTeTXcifx+TkZ+ylEQp9CedgahkUTjukt
	DQF4dQK0HnRCf9FEuLFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r11bA-005odE-1z;
	Thu, 09 Nov 2023 09:45:16 +0000
Received: from mail-yw1-x1134.google.com ([2607:f8b0:4864:20::1134])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r11b7-005ocW-0z
	for linux-phy@lists.infradead.org;
	Thu, 09 Nov 2023 09:45:15 +0000
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-5a81ab75f21so7888647b3.2
        for <linux-phy@lists.infradead.org>; Thu, 09 Nov 2023 01:45:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699523112; x=1700127912; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=m3j1z3JdsTrjV1Ga7OJY3GeweZCLOf9hKt+iEco6J78=;
        b=VD7rcT5ZqaQBdGTQBACeUxhKhgNP0lTExJMQeTjJ2Wupwh8OExK+MTMgx8z0t2oR00
         Tat0/XB4V/uq2nvrtToVHbv6t3i6sHUw4ZTaaqoluAHEB7+f61j9C+jhXCyPhTz7y4xR
         S7OfAoFS9NiSDk1qBPq36BdzKNckkVmm19FFasq5MOxfmt4CX03gn/6WyIjO/AfsFwzq
         XWSpoANVHtLtSEDJHmSSwVSf9aAA0wkj94uMS0zUQKJHwPi8vnf3Uqcz+ECSHhYa8bVR
         m2gztJWCMWoIJYkm73axwKMBN4xYIPh/YdiWSF8NrTHrOfnlrrhs81vi7uIFjMrPahYe
         Aw1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699523112; x=1700127912;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m3j1z3JdsTrjV1Ga7OJY3GeweZCLOf9hKt+iEco6J78=;
        b=Mo388xafTC26GNap2tUOrNwHQ1Np4IJkWAiqY3bmCLkEc9dcLLOXg9pxuXi9E48CaI
         mL/liKQYQDVI8E2+qmUQXjWQMsJHlDEYlchROK73FVtpLNBDC/jcRnS621CLdVbEQdmc
         naOMu56WzggQf//RiQp64aAv+eurBGa3PjOzeevVG/Q7gkwle9Y+ddtTZWo4kO2fXWkX
         J0DDUtn1xQmkp7VKXJSNSA47wqv1bvDriMz/9N0KwYAIKQ2hstepqeI7zmMRgdHx8MIz
         WGydOgz+os+7R3ONxlRF4/yJk9uKfMrEDoH0+pHWJXGkVvaubMIQgTHBZ20S7ruMMTOJ
         zcUQ==
X-Gm-Message-State: AOJu0YwP4PzJ+7IodIUFoUokZc8gbBVt1IEmEHN0Hq6nE1eLeJ7SmAAG
	sA1GDNhJTBjUwAKsDc6lRw7mb9UPhxEh+Zwu5JmLHQ==
X-Google-Smtp-Source: AGHT+IHsxENxFKAe6hQ6iaJ1WQ/sXmmaQU8ry7Cn4q0Z5XlzXmgqzaQ8cqMSayf6tlAVYKaoDwiwsSz7RpEzRHnY8kE=
X-Received: by 2002:a25:d110:0:b0:da0:6cf3:c629 with SMTP id
 i16-20020a25d110000000b00da06cf3c629mr4322026ybg.41.1699523112296; Thu, 09
 Nov 2023 01:45:12 -0800 (PST)
MIME-Version: 1.0
References: <20231107-refclk_always_on-v2-0-de23962fc4b3@quicinc.com>
 <20231107-refclk_always_on-v2-2-de23962fc4b3@quicinc.com> <CAA8EJpr8Y+k2FJqFfZVagWxfgsUEnZ1010-xaaUg=c6tqu8Hsw@mail.gmail.com>
 <d2556aad-24cc-c0d1-d71d-bf43bc832036@quicinc.com>
In-Reply-To: <d2556aad-24cc-c0d1-d71d-bf43bc832036@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 9 Nov 2023 11:45:00 +0200
Message-ID: <CAA8EJppeUpmGsoqueRoq_jo1FnyP6uO8P8egmYpysNcD8A8KAA@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] phy: qcom-qmp-pcie: Add endpoint refclk control
 register offset
To: Krishna Chaitanya Chundru <quic_krichai@quicinc.com>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	quic_vbadigan@quicinc.com, quic_ramkri@quicinc.com, quic_nitegupt@quicinc.com, 
	quic_skananth@quicinc.com, quic_vpernami@quicinc.com, quic_parass@quicinc.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_014513_352527_69C5EA1F 
X-CRM114-Status: GOOD (  25.82  )
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

On Thu, 9 Nov 2023 at 11:36, Krishna Chaitanya Chundru
<quic_krichai@quicinc.com> wrote:
>
>
> On 11/7/2023 6:36 PM, Dmitry Baryshkov wrote:
> > On Tue, 7 Nov 2023 at 14:26, Krishna chaitanya chundru
> > <quic_krichai@quicinc.com> wrote:
> >> Some platforms needs to keep endpoint refclk always on, for this
> >> purpose add this offset for all the applicable phy versions.
> >>
> >> And also add reg layout for few controllers as we are adding
> >> endpoint refclk control register which changes based upon phy version.
> >>
> >> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> >
> >> ---
> >>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 26 +++++++++++++++++++---
> >>   drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h    |  1 +
> >>   drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h |  1 +
> >>   drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6_20.h |  1 +
> >>   4 files changed, 26 insertions(+), 3 deletions(-)
> >>
> >> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> >> index a63ca7424974..74d03d217ff2 100644
> >> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> >> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> >> @@ -77,6 +77,7 @@ enum qphy_reg_layout {
> >>          QPHY_START_CTRL,
> >>          QPHY_PCS_STATUS,
> >>          QPHY_PCS_POWER_DOWN_CONTROL,
> >> +       QPHY_PCS_ENDPOINT_REFCLK_CNTRL,
> >>          /* Keep last to ensure regs_layout arrays are properly initialized */
> >>          QPHY_LAYOUT_SIZE
> >>   };
> >> @@ -93,6 +94,7 @@ static const unsigned int pciephy_v3_regs_layout[QPHY_LAYOUT_SIZE] = {
> >>          [QPHY_START_CTRL]               = QPHY_V3_PCS_START_CONTROL,
> >>          [QPHY_PCS_STATUS]               = QPHY_V3_PCS_PCS_STATUS,
> >>          [QPHY_PCS_POWER_DOWN_CONTROL]   = QPHY_V3_PCS_POWER_DOWN_CONTROL,
> >> +       [QPHY_PCS_ENDPOINT_REFCLK_CNTRL]        = QPHY_V3_PCS_ENDPOINT_REFCLK_CNTRL,
> >>   };
> >>
> >>   static const unsigned int sdm845_qhp_pciephy_regs_layout[QPHY_LAYOUT_SIZE] = {
> >> @@ -107,6 +109,7 @@ static const unsigned int pciephy_v4_regs_layout[QPHY_LAYOUT_SIZE] = {
> >>          [QPHY_START_CTRL]               = QPHY_V4_PCS_START_CONTROL,
> >>          [QPHY_PCS_STATUS]               = QPHY_V4_PCS_PCS_STATUS1,
> >>          [QPHY_PCS_POWER_DOWN_CONTROL]   = QPHY_V4_PCS_POWER_DOWN_CONTROL,
> >> +       [QPHY_PCS_ENDPOINT_REFCLK_CNTRL]        = QPHY_V4_PCS_PCIE_ENDPOINT_REFCLK_CNTRL,
> >>   };
> >>
> >>   static const unsigned int pciephy_v5_regs_layout[QPHY_LAYOUT_SIZE] = {
> >> @@ -114,6 +117,23 @@ static const unsigned int pciephy_v5_regs_layout[QPHY_LAYOUT_SIZE] = {
> >>          [QPHY_START_CTRL]               = QPHY_V5_PCS_START_CONTROL,
> >>          [QPHY_PCS_STATUS]               = QPHY_V5_PCS_PCS_STATUS1,
> >>          [QPHY_PCS_POWER_DOWN_CONTROL]   = QPHY_V5_PCS_POWER_DOWN_CONTROL,
> >> +       [QPHY_PCS_ENDPOINT_REFCLK_CNTRL]        = QPHY_V5_PCS_PCIE_ENDPOINT_REFCLK_CNTRL,
> >> +};
> >> +
> >> +static const unsigned int pciephy_v5_20_regs_layout[QPHY_LAYOUT_SIZE] = {
> >> +       [QPHY_SW_RESET]                 = QPHY_V5_PCS_SW_RESET,
> >> +       [QPHY_START_CTRL]               = QPHY_V5_PCS_START_CONTROL,
> >> +       [QPHY_PCS_STATUS]               = QPHY_V5_PCS_PCS_STATUS1,
> >> +       [QPHY_PCS_POWER_DOWN_CONTROL]   = QPHY_V5_PCS_POWER_DOWN_CONTROL,
> > Nit: we should probably define V5_20 and v6_20 versions of these registers
>
> We don't have separate defines for v5_20 and v6_20 for these registers,
> that is why we are using these.
>
> And the offsets are same for those version. That is why I tried to use
> macros.

Mixing versions in a single table can quickly lead to a disaster.

>
> - Krishna Chaitanya.
>
> > If you were to send v3 for any reason, could you please add them?
> >
> >> +       [QPHY_PCS_ENDPOINT_REFCLK_CNTRL]        = QPHY_V5_20_PCS_PCIE_ENDPOINT_REFCLK_CNTRL,
> >> +};
> >> +
> >> +static const unsigned int pciephy_v6_20_regs_layout[QPHY_LAYOUT_SIZE] = {
> >> +       [QPHY_SW_RESET]                 = QPHY_V5_PCS_SW_RESET,
> >> +       [QPHY_START_CTRL]               = QPHY_V5_PCS_START_CONTROL,
> >> +       [QPHY_PCS_STATUS]               = QPHY_V5_PCS_PCS_STATUS1,
> >> +       [QPHY_PCS_POWER_DOWN_CONTROL]   = QPHY_V5_PCS_POWER_DOWN_CONTROL,
> >> +       [QPHY_PCS_ENDPOINT_REFCLK_CNTRL]        = QPHY_PCIE_V6_20_PCS_ENDPOINT_REFCLK_CNTRL,
> >>   };
> >>
> >>   static const struct qmp_phy_init_tbl msm8998_pcie_serdes_tbl[] = {
> >> @@ -2956,7 +2976,7 @@ static const struct qmp_phy_cfg sm8450_qmp_gen4x2_pciephy_cfg = {
> >>          .num_resets             = ARRAY_SIZE(sdm845_pciephy_reset_l),
> >>          .vreg_list              = qmp_phy_vreg_l,
> >>          .num_vregs              = ARRAY_SIZE(qmp_phy_vreg_l),
> >> -       .regs                   = pciephy_v5_regs_layout,
> >> +       .regs                   = pciephy_v5_20_regs_layout,
> >>
> >>          .pwrdn_ctrl             = SW_PWRDN | REFCLK_DRV_DSBL,
> >>          .phy_status             = PHYSTATUS_4_20,
> >> @@ -3012,7 +3032,7 @@ static const struct qmp_phy_cfg sm8550_qmp_gen4x2_pciephy_cfg = {
> >>          .num_resets             = ARRAY_SIZE(sdm845_pciephy_reset_l),
> >>          .vreg_list              = sm8550_qmp_phy_vreg_l,
> >>          .num_vregs              = ARRAY_SIZE(sm8550_qmp_phy_vreg_l),
> >> -       .regs                   = pciephy_v5_regs_layout,
> >> +       .regs                   = pciephy_v6_20_regs_layout,
> >>
> >>          .pwrdn_ctrl             = SW_PWRDN | REFCLK_DRV_DSBL,
> >>          .phy_status             = PHYSTATUS_4_20,
> >> @@ -3047,7 +3067,7 @@ static const struct qmp_phy_cfg sa8775p_qmp_gen4x2_pciephy_cfg = {
> >>          .num_resets             = ARRAY_SIZE(sdm845_pciephy_reset_l),
> >>          .vreg_list              = qmp_phy_vreg_l,
> >>          .num_vregs              = ARRAY_SIZE(qmp_phy_vreg_l),
> >> -       .regs                   = pciephy_v5_regs_layout,
> >> +       .regs                   = pciephy_v5_20_regs_layout,
> >>
> >>          .pwrdn_ctrl             = SW_PWRDN | REFCLK_DRV_DSBL,
> >>          .phy_status             = PHYSTATUS_4_20,
> >> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h
> >> index a469ae2a10a1..9b166286afda 100644
> >> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h
> >> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h
> >> @@ -11,6 +11,7 @@
> >>   #define QPHY_V5_PCS_PCIE_POWER_STATE_CONFIG2           0x0c
> >>   #define QPHY_V5_PCS_PCIE_POWER_STATE_CONFIG4           0x14
> >>   #define QPHY_V5_PCS_PCIE_ENDPOINT_REFCLK_DRIVE         0x20
> >> +#define QPHY_V5_PCS_PCIE_ENDPOINT_REFCLK_CNTRL         0x24
> >>   #define QPHY_V5_PCS_PCIE_INT_AUX_CLK_CONFIG1           0x54
> >>   #define QPHY_V5_PCS_PCIE_OSC_DTCT_ACTIONS              0x94
> >>   #define QPHY_V5_PCS_PCIE_EQ_CONFIG2                    0xa8
> >> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h
> >> index cdf8c04ea078..8b114e538a07 100644
> >> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h
> >> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h
> >> @@ -9,6 +9,7 @@
> >>   /* Only for QMP V5_20 PHY - PCIe PCS registers */
> >>   #define QPHY_V5_20_PCS_PCIE_POWER_STATE_CONFIG2                0x00c
> >>   #define QPHY_V5_20_PCS_PCIE_ENDPOINT_REFCLK_DRIVE      0x01c
> >> +#define QPHY_V5_20_PCS_PCIE_ENDPOINT_REFCLK_CNTRL      0x020
> >>   #define QPHY_V5_20_PCS_PCIE_OSC_DTCT_MODE2_CONFIG5     0x084
> >>   #define QPHY_V5_20_PCS_PCIE_OSC_DTCT_ACTIONS           0x090
> >>   #define QPHY_V5_20_PCS_PCIE_EQ_CONFIG1                 0x0a0
> >> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6_20.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6_20.h
> >> index e3eb08776339..f7abe95c49ad 100644
> >> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6_20.h
> >> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6_20.h
> >> @@ -10,6 +10,7 @@
> >>   #define QPHY_PCIE_V6_20_PCS_POWER_STATE_CONFIG2                0x00c
> >>   #define QPHY_PCIE_V6_20_PCS_TX_RX_CONFIG               0x018
> >>   #define QPHY_PCIE_V6_20_PCS_ENDPOINT_REFCLK_DRIVE      0x01c
> >> +#define QPHY_PCIE_V6_20_PCS_ENDPOINT_REFCLK_CNTRL      0x020
> >>   #define QPHY_PCIE_V6_20_PCS_OSC_DTCT_ATCIONS           0x090
> >>   #define QPHY_PCIE_V6_20_PCS_EQ_CONFIG1                 0x0a0
> >>   #define QPHY_PCIE_V6_20_PCS_EQ_CONFIG5                 0x108
> >>
> >> --
> >> 2.42.0
> >>
> >>
> >



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
