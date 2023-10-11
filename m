Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDF02CD6E5D
	for <linux-phy@archiver.kernel.org>; Wed, 11 Oct 2023 11:37:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LeoMiBine6wW2PiTzM59Gk8QjwKKt/yrQHVNWzyB/uw=; b=l0qBckip3zJIA5
	cH1xvjsOPrUHTt9jFoq10NGioBTGUAG0R49HWpu0Y6w6sd8UOUbVLdlT/0jaAiQVZC8lZTszZyyiU
	qLz83/hVqIEeDfjpwH2sTCEWn8+Q+m6PaGne2NSnDNzByxmRZgXxbawWAIm8a+JUt3ntweKBG4WfX
	TyjLFWcY3zXDtC47G707F+sEnJr1EKGwZ+iEwTBpf/wZnGr+2zpSHUIgcNvbi3S9xormqn+ARraNX
	cndfFs8pwF5jD6e5DyBktxNo3gnnLjvyrdsP8dF1loyp00fXUjjaCXBl5NRWCu6IiaMMEtims2CjQ
	ye8AZYkq6XFk/szsoURw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqXWe-00FlUm-21;
	Wed, 11 Oct 2023 11:37:16 +0000
Received: from mail-yw1-x112c.google.com ([2607:f8b0:4864:20::112c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqXWZ-00FlTt-2b
	for linux-phy@lists.infradead.org;
	Wed, 11 Oct 2023 11:37:14 +0000
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-5a7c93507d5so17576337b3.2
        for <linux-phy@lists.infradead.org>; Wed, 11 Oct 2023 04:37:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697024228; x=1697629028; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ADnQSRKfiE11Fw6NWJPg4jyr5BhP2bgI5UYJpaw9Vtc=;
        b=mn3q2JKDkVZVdd8QOTX+N6zZybq3u4S1MFmB3TUaBJWb1LMgHQiPUNQEhDnAxbSFzE
         6TTfnvYMM1h8JgIijvWiJ+GqM+rdVHrA5ebNqqRimo1WliyBxC8t1INpSTc0ln1SoxLM
         nrmVL8OMq+Say9KW9yulZFK4oLtY84mcdM8TyqeVQ/B2a8ppdCzYiKKzXC7rtGGFGDiy
         H9sSiWTkE4yyLhZT5llqgD6Eg4XyadmYENn8w3O9MBe3IijBGt/Bv+fYAmNGVwcELNUM
         RKN0G44eSix9eVGGYnC1xNoWBXkih2mYJYLvJRnrn05TST68w2H37RWC8yBqgpyG1tDd
         vFfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697024228; x=1697629028;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ADnQSRKfiE11Fw6NWJPg4jyr5BhP2bgI5UYJpaw9Vtc=;
        b=Y2OD4JQIDDgh3k6eY9OocniIIiZXdL0Xd8JJJtOgvKnlmTRpf6yPr2aG9J4WmOKMle
         u8hrayjw+IoY/EtqsOCrrBjGwe1MyFPsQRMOHIUHLLHIJW/OExXpN+Ee9bBPU5iXDr2B
         YQMoE1rTz9GihGtYBGtecBmfq2P0vIyNQgbkbackZjKgoRQ+G2WUG4/MnnTXM4/3oUJ7
         rge7gsvQyo9eOZDqbE4bZ5OrgCJqzS73GI6HnzSXFFML17JuhzZ30F/4H/zrL5irSwnW
         yvv3sXOWODzCfqa981vQIMdBKa/vDgS0tbZ+f4LSoCM4xedDC2+5i8eEVGk3Fvmzx9qt
         klqA==
X-Gm-Message-State: AOJu0YzXJCatvCnUjtlDSZyxT1bAB++c7iZSJkkX5HijWgtNnMCYNYD8
	glR0WYUhHFcSmi3v5qxnVcEJtHoHBzQX756wQZYDHQ==
X-Google-Smtp-Source: AGHT+IFRpepGKSGvXbAwCvg5/0it467EZf0qhpiwowhNbkcbVmcXi8gnzAdqnBvYtzILhbVKUdAlRHR97OtZsiekmHc=
X-Received: by 2002:a5b:20d:0:b0:d15:7402:f7cd with SMTP id
 z13-20020a5b020d000000b00d157402f7cdmr19392771ybl.27.1697024228604; Wed, 11
 Oct 2023 04:37:08 -0700 (PDT)
MIME-Version: 1.0
References: <1697023109-23671-1-git-send-email-quic_msarkar@quicinc.com> <1697023109-23671-3-git-send-email-quic_msarkar@quicinc.com>
In-Reply-To: <1697023109-23671-3-git-send-email-quic_msarkar@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 11 Oct 2023 14:36:55 +0300
Message-ID: <CAA8EJpoLxeSvxjcyq1BMR9XuAffrxLmO-eaBYJ+Fhnb4zYmxUQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] phy: qcom-qmp-pcie: add endpoint support for sa8775p
To: Mrinmay Sarkar <quic_msarkar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, konrad.dybcio@linaro.org, mani@kernel.org, 
	quic_shazhuss@quicinc.com, quic_nitegupt@quicinc.com, quic_ramkri@quicinc.com, 
	quic_nayiluri@quicinc.com, robh@kernel.org, quic_krichai@quicinc.com, 
	quic_vbadigan@quicinc.com, quic_parass@quicinc.com, 
	Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, mhi@lists.linux.dev, 
	linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231011_043711_993877_3BF61D6F 
X-CRM114-Status: GOOD (  17.42  )
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

On Wed, 11 Oct 2023 at 14:19, Mrinmay Sarkar <quic_msarkar@quicinc.com> wrote:
>
> Add support for dual lane end point mode PHY found on sa8755p platform.
>
> Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c   | 41 ++++++++++++++++++++++++++++++
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h |  2 ++
>  2 files changed, 43 insertions(+)

Two minor questions.

>
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index a63ca74..962b4a1 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -2147,6 +2147,38 @@ static const struct qmp_phy_init_tbl sa8775p_qmp_gen4x4_pcie_rc_serdes_alt_tbl[]
>         QMP_PHY_INIT_CFG(QSERDES_V5_COM_CLK_SELECT, 0x34),
>  };
>
> +static const struct qmp_phy_init_tbl sa8775p_qmp_gen4x2_pcie_ep_serdes_alt_tbl[] = {
> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_BG_TIMER, 0x02),
> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_SYS_CLK_CTRL, 0x07),
> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_CP_CTRL_MODE0, 0x27),
> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_CP_CTRL_MODE1, 0x0a),
> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_PLL_RCTRL_MODE0, 0x17),
> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_PLL_RCTRL_MODE1, 0x19),
> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_PLL_CCTRL_MODE0, 0x00),
> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_PLL_CCTRL_MODE1, 0x03),
> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_SYSCLK_EN_SEL, 0x00),
> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_INTEGLOOP_GAIN0_MODE0, 0xfb),
> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_INTEGLOOP_GAIN1_MODE0, 0x01),
> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_INTEGLOOP_GAIN0_MODE1, 0xfb),
> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_INTEGLOOP_GAIN1_MODE1, 0x01),
> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_CMN_MODE, 0x14),

I should check whether we miss QSERDES_V5_COM_CMN_MODE in
sm8450_qmp_gen4x2_pcie_ep_serdes_tbl, which is otherwise nearly
identical.
Also do you need to set QSERDES_V5_COM_CORE_CLK_EN here?

> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_LOCK_CMP1_MODE0, 0xff),
> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_LOCK_CMP2_MODE0, 0x04),
> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_LOCK_CMP1_MODE1, 0xff),
> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_LOCK_CMP2_MODE1, 0x09),
> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_DEC_START_MODE0, 0x19),
> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_DEC_START_MODE1, 0x28),
> +};
> +
> +static const struct qmp_phy_init_tbl sa8775p_qmp_gen4_pcie_ep_pcs_misc_tbl[] = {
> +       QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_PCIE_OSC_DTCT_MODE2_CONFIG5, 0x08),
> +};

This is the same as sm8450_qmp_gen4x2_pcie_ep_pcs_misc_tbl

> +
> +static const struct qmp_phy_init_tbl sa8775p_qmp_gen4x2_pcie_ep_pcs_alt_tbl[] = {
> +       QMP_PHY_INIT_CFG(QPHY_V5_PCS_INSIG_MX_CTRL7, 0x00),
> +       QMP_PHY_INIT_CFG(QPHY_V5_PCS_INSIG_SW_CTRL7, 0x00),
> +};

Could you please confirm that these registers belong to the V5
namespace rather than V5_20 one?

> +
>  struct qmp_pcie_offsets {
>         u16 serdes;
>         u16 pcs;
> @@ -3043,6 +3075,15 @@ static const struct qmp_phy_cfg sa8775p_qmp_gen4x2_pciephy_cfg = {
>                 .pcs_misc_num   = ARRAY_SIZE(sa8775p_qmp_gen4_pcie_rc_pcs_misc_tbl),
>         },
>
> +       .tbls_ep = &(const struct qmp_phy_cfg_tbls) {
> +               .serdes         = sa8775p_qmp_gen4x2_pcie_ep_serdes_alt_tbl,
> +               .serdes_num     = ARRAY_SIZE(sa8775p_qmp_gen4x2_pcie_ep_serdes_alt_tbl),
> +               .pcs_misc       = sa8775p_qmp_gen4_pcie_ep_pcs_misc_tbl,
> +               .pcs_misc_num   = ARRAY_SIZE(sa8775p_qmp_gen4_pcie_ep_pcs_misc_tbl),
> +               .pcs            = sa8775p_qmp_gen4x2_pcie_ep_pcs_alt_tbl,
> +               .pcs_num        = ARRAY_SIZE(sa8775p_qmp_gen4x2_pcie_ep_pcs_alt_tbl),
> +       },
> +
>         .reset_list             = sdm845_pciephy_reset_l,
>         .num_resets             = ARRAY_SIZE(sdm845_pciephy_reset_l),
>         .vreg_list              = qmp_phy_vreg_l,
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h
> index 36cc80b..6ee1c33 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h
> @@ -11,6 +11,8 @@
>  #define QPHY_V5_PCS_PCS_STATUS1                                0x014
>  #define QPHY_V5_PCS_POWER_DOWN_CONTROL                 0x040
>  #define QPHY_V5_PCS_START_CONTROL                      0x044
> +#define QPHY_V5_PCS_INSIG_SW_CTRL7                     0x060
> +#define QPHY_V5_PCS_INSIG_MX_CTRL7                     0x07c
>  #define QPHY_V5_PCS_LOCK_DETECT_CONFIG1                        0x0c4
>  #define QPHY_V5_PCS_LOCK_DETECT_CONFIG2                        0x0c8
>  #define QPHY_V5_PCS_LOCK_DETECT_CONFIG3                        0x0cc
> --
> 2.7.4
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
