Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73E35C61D9B
	for <linux-phy@archiver.kernel.org>; Wed, 22 Nov 2023 11:00:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hGTlVlmYLwIE384+hrDalmh3KfBX/3c+qlwfKS7ISkA=; b=u+99OOQFBVjLz2
	NrvYM1xXqi0QSXWh67pF1g7d+oXRdUrJLmZcvml878aoK3hRlX3qHM5UDNPvSgSUypjV2+0xX+I7t
	K3C8qaH79+hIfK/oCeGQt31mwVyBS50L3CIdb5Me/3O9dF1oY+WV+PtV+fZjWrvCM8OryA/FxD1NA
	mHwKhx3MBxI/gULURJ+T4/iU5x3pujQnhtsvlCUITtlvDjVaSKH1i81UEc/GRhEjTDITCoc4mLQ5j
	FbxuvCmyhIyZYcdgxyFBLMZDtmMBYFSN4iItM3uIpLOOBf5aUVdxXep8p9YbVbu+njz84G30hpFRj
	48aOa5O7AA1GjYun7wgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5ky6-001UxE-0d;
	Wed, 22 Nov 2023 11:00:30 +0000
Received: from mail-yw1-x1129.google.com ([2607:f8b0:4864:20::1129])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5ky1-001Uvi-2F
	for linux-phy@lists.infradead.org;
	Wed, 22 Nov 2023 11:00:28 +0000
Received: by mail-yw1-x1129.google.com with SMTP id 00721157ae682-5cc5988f85eso6204577b3.2
        for <linux-phy@lists.infradead.org>; Wed, 22 Nov 2023 03:00:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700650824; x=1701255624; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=kg8M6qjMh6qn9AeF+M9NmS2zY4r4lH0n+umvebz3HPE=;
        b=LWhIIeb6syedmsL3iSXJADX9ByeoAv42Q8Zaeb8zNcluxCLXxHopfARzz1IRxlrSdW
         ljj8mp5nr33aGNKV7hEuF6u6/8jIzOnHAcjNQwlC7rMPaAfkDT4xmb3KvRc8wfFnlEbT
         N0dIcaxvmUF6fp/eOqXG0ZPiMefDO9hevd2ZQmcQq6rKb58Vvzp2Gmc5G8QEUjnqsMZg
         jg3vAsEV45h977UgpauVvvCP/HHOql1/WvLZobPiCJdHPo7mItdTiMAwgG16l0VE73tp
         OEy4are3Qe92wypsA1Pw+g2j8uoA5rn9ovitET9e1UWBU3FmOULT1S5iTnAVU0hjbNhK
         B6zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700650824; x=1701255624;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kg8M6qjMh6qn9AeF+M9NmS2zY4r4lH0n+umvebz3HPE=;
        b=IlkQJeX3jj9JML1iVjyjYwUs/DPbmOU7oZdznhbY6CNhlXjGC44Ypgnb/K2cJkNt7O
         b+ViiSDt0TNQWdRLWB4R+g4AY7b5RHWoAHAi9Fie4BlMSMY0UN5Yg2fnExoh34pO12WA
         InxiYYUGt3lgk6/qvpP9SgDgWSsvhWSecw+ZiRz1/lg2OiaVTXfajjmHAxMCC0KD6PdJ
         Bj3/N4bqWtbB7mdUP/j1W1qqkvbjz6KsAaqLOs/0FY3jFsFo4MZpmagYHf0a5QmIMEJ3
         6bz8Ta9teNVhSzbo0nbBcQ4fm/FBHDgUO6nwRa3Kzv41ILLjPRH/e/J/O11/5EUVIS7Q
         fkHQ==
X-Gm-Message-State: AOJu0YyYbjk/U2HYb0tiAgPDLDONlcs2H4NRx5lzqfx3pr3qrn3KxbMb
	CZ8whZVnMjgicWI3Ha+ss4Ayh4IqUiR1gzTmAMMxJQ==
X-Google-Smtp-Source: AGHT+IHXe2nj9VIkkh1xrZL7Jcp8+62Q93ZaBQ3zsC7hcFjuW/C8MKcG9ffcvjbX6zeSnEZFPecf1WCLlN2FdmEu1Bg=
X-Received: by 2002:a25:aac1:0:b0:da0:514a:8f42 with SMTP id
 t59-20020a25aac1000000b00da0514a8f42mr1856386ybi.32.1700650823400; Wed, 22
 Nov 2023 03:00:23 -0800 (PST)
MIME-Version: 1.0
References: <20231122-phy-qualcomm-edp-x1e80100-v1-0-a9938990edb3@linaro.org> <20231122-phy-qualcomm-edp-x1e80100-v1-2-a9938990edb3@linaro.org>
In-Reply-To: <20231122-phy-qualcomm-edp-x1e80100-v1-2-a9938990edb3@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 22 Nov 2023 13:00:12 +0200
Message-ID: <CAA8EJppjqJPjUf-eWZjMeE6PKFH-F08eJqkhKAjZaYAONQ8znA@mail.gmail.com>
Subject: Re: [PATCH 2/2] phy: qcom: edp: Add X1E80100 eDP and DP PHYs
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_030025_747392_F202AE5F 
X-CRM114-Status: GOOD (  21.34  )
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

On Wed, 22 Nov 2023 at 12:56, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> The Qualcomm X1E80100 platform has a number of eDP and DP PHY instances,
> add support for these.
>
> Co-developed-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
> Signed-off-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-edp.c | 305 +++++++++++++++++++++++++++---------
>  1 file changed, 231 insertions(+), 74 deletions(-)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> index 8e5078304646..9eca9a8f8824 100644
> --- a/drivers/phy/qualcomm/phy-qcom-edp.c
> +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
> @@ -23,6 +23,9 @@
>
>  #include "phy-qcom-qmp.h"
>
> +#define QSERDES_V4     0
> +#define QSERDES_V6     1

enum ?

> +
>  /* EDP_PHY registers */
>  #define DP_PHY_CFG                              0x0010
>  #define DP_PHY_CFG_1                            0x0014
> @@ -70,6 +73,7 @@
>
>  struct qcom_edp_cfg {
>         bool is_dp;
> +       int qserdes_version;
>
>         /* DP PHY swing and pre_emphasis tables */
>         const u8 (*swing_hbr_rbr)[4][4];
> @@ -94,7 +98,7 @@ struct qcom_edp {
>
>         struct phy_configure_opts_dp dp_opts;
>
> -       struct clk_bulk_data clks[2];
> +       struct clk_bulk_data clks[3];
>         struct regulator_bulk_data supplies[2];
>  };
>
> @@ -126,8 +130,18 @@ static const u8 dp_pre_emp_hbr2_hbr3[4][4] = {
>         { 0x04, 0xff, 0xff, 0xff }
>  };
>
> -static const struct qcom_edp_cfg dp_phy_cfg = {
> +static const struct qcom_edp_cfg dp_v4_phy_cfg = {
>         .is_dp = true,
> +       .qserdes_version = QSERDES_V4,
> +       .swing_hbr_rbr = &dp_swing_hbr_rbr,
> +       .swing_hbr3_hbr2 = &dp_swing_hbr2_hbr3,
> +       .pre_emphasis_hbr_rbr = &dp_pre_emp_hbr_rbr,
> +       .pre_emphasis_hbr3_hbr2 = &dp_pre_emp_hbr2_hbr3,
> +};
> +
> +static const struct qcom_edp_cfg dp_v6_phy_cfg = {
> +       .is_dp = true,
> +       .qserdes_version = QSERDES_V6,
>         .swing_hbr_rbr = &dp_swing_hbr_rbr,
>         .swing_hbr3_hbr2 = &dp_swing_hbr2_hbr3,
>         .pre_emphasis_hbr_rbr = &dp_pre_emp_hbr_rbr,
> @@ -162,8 +176,18 @@ static const u8 edp_pre_emp_hbr2_hbr3[4][4] = {
>         { 0x00, 0xff, 0xff, 0xff }
>  };
>
> -static const struct qcom_edp_cfg edp_phy_cfg = {
> +static const struct qcom_edp_cfg edp_v4_phy_cfg = {
> +       .is_dp = false,
> +       .qserdes_version = QSERDES_V4,
> +       .swing_hbr_rbr = &edp_swing_hbr_rbr,
> +       .swing_hbr3_hbr2 = &edp_swing_hbr2_hbr3,
> +       .pre_emphasis_hbr_rbr = &edp_pre_emp_hbr_rbr,
> +       .pre_emphasis_hbr3_hbr2 = &edp_pre_emp_hbr2_hbr3,
> +};
> +
> +static const struct qcom_edp_cfg edp_v6_phy_cfg = {
>         .is_dp = false,
> +       .qserdes_version = QSERDES_V6,
>         .swing_hbr_rbr = &edp_swing_hbr_rbr,
>         .swing_hbr3_hbr2 = &edp_swing_hbr2_hbr3,
>         .pre_emphasis_hbr_rbr = &edp_pre_emp_hbr_rbr,
> @@ -190,7 +214,10 @@ static int qcom_edp_phy_init(struct phy *phy)
>                edp->edp + DP_PHY_PD_CTL);
>
>         /* Turn on BIAS current for PHY/PLL */
> -       writel(0x17, edp->pll + QSERDES_V4_COM_BIAS_EN_CLKBUFLR_EN);
> +       if (cfg->qserdes_version == QSERDES_V4)
> +               writel(0x17, edp->pll + QSERDES_V4_COM_BIAS_EN_CLKBUFLR_EN);
> +       else if (cfg->qserdes_version == QSERDES_V6)
> +               writel(0x1f, edp->pll + QSERDES_V6_COM_PLL_BIAS_EN_CLK_BUFLR_EN);
>
>         writel(DP_PHY_PD_CTL_PSR_PWRDN, edp->edp + DP_PHY_PD_CTL);
>         msleep(20);
> @@ -205,6 +232,8 @@ static int qcom_edp_phy_init(struct phy *phy)
>         else
>                 cfg8 = 0x37;
>
> +       cfg8 = 0x37;
> +
>         writel(0xfc, edp->edp + DP_PHY_MODE);
>
>         writel(0x00, edp->edp + DP_PHY_AUX_CFG0);
> @@ -261,7 +290,10 @@ static int qcom_edp_set_voltages(struct qcom_edp *edp, const struct phy_configur
>         if (swing == 0xff || emph == 0xff)
>                 return -EINVAL;
>
> -       ldo_config = (cfg && cfg->is_dp) ? 0x1 : 0x0;
> +       if (cfg->qserdes_version == QSERDES_V4)
> +               ldo_config = (cfg && cfg->is_dp) ? 0x1 : 0x0;
> +       else if (cfg->qserdes_version == QSERDES_V6)
> +               ldo_config |= 0x91;

If you are using or here, what is the default value?

>
>         writel(ldo_config, edp->tx0 + TXn_LDO_CONFIG);
>         writel(swing, edp->tx0 + TXn_TX_DRV_LVL);
> @@ -291,6 +323,7 @@ static int qcom_edp_phy_configure(struct phy *phy, union phy_configure_opts *opt
>  static int qcom_edp_configure_ssc(const struct qcom_edp *edp)
>  {
>         const struct phy_configure_opts_dp *dp_opts = &edp->dp_opts;
> +       const struct qcom_edp_cfg *cfg = edp->cfg;
>         u32 step1;
>         u32 step2;
>
> @@ -298,13 +331,24 @@ static int qcom_edp_configure_ssc(const struct qcom_edp *edp)
>         case 1620:
>         case 2700:
>         case 8100:
> -               step1 = 0x45;
> -               step2 = 0x06;
> +               if (cfg->qserdes_version == QSERDES_V4) {
> +                       step1 = 0x45;
> +                       step2 = 0x06;
> +               } else if (cfg->qserdes_version == QSERDES_V6) {
> +                       step1 = 0x92;
> +                       step2 = 0x01;

Ugh. This looks like a bad idea. Maybe switching the order of
conditions will help? Like having separate functions for qserdes
version?

> +               }
>                 break;
>
>         case 5400:
> -               step1 = 0x5c;
> -               step2 = 0x08;
> +               if (cfg->qserdes_version == QSERDES_V4) {
> +                       step1 = 0x5c;
> +                       step2 = 0x08;
> +               } else if (cfg->qserdes_version == QSERDES_V6) {
> +                       step1 = 0x18;
> +                       step2 = 0x02;
> +               }
> +
>                 break;
>
>         default:
> @@ -312,12 +356,21 @@ static int qcom_edp_configure_ssc(const struct qcom_edp *edp)
>                 return -EINVAL;
>         }
>
> -       writel(0x01, edp->pll + QSERDES_V4_COM_SSC_EN_CENTER);
> -       writel(0x00, edp->pll + QSERDES_V4_COM_SSC_ADJ_PER1);
> -       writel(0x36, edp->pll + QSERDES_V4_COM_SSC_PER1);
> -       writel(0x01, edp->pll + QSERDES_V4_COM_SSC_PER2);
> -       writel(step1, edp->pll + QSERDES_V4_COM_SSC_STEP_SIZE1_MODE0);
> -       writel(step2, edp->pll + QSERDES_V4_COM_SSC_STEP_SIZE2_MODE0);
> +       if (cfg->qserdes_version == QSERDES_V4) {
> +               writel(0x01, edp->pll + QSERDES_V4_COM_SSC_EN_CENTER);
> +               writel(0x00, edp->pll + QSERDES_V4_COM_SSC_ADJ_PER1);
> +               writel(0x36, edp->pll + QSERDES_V4_COM_SSC_PER1);
> +               writel(0x01, edp->pll + QSERDES_V4_COM_SSC_PER2);
> +               writel(step1, edp->pll + QSERDES_V4_COM_SSC_STEP_SIZE1_MODE0);
> +               writel(step2, edp->pll + QSERDES_V4_COM_SSC_STEP_SIZE2_MODE0);
> +       } else if (cfg->qserdes_version == QSERDES_V6) {
> +               writel(0x01, edp->pll + QSERDES_V6_COM_SSC_EN_CENTER);
> +               writel(0x00, edp->pll + QSERDES_V6_COM_SSC_ADJ_PER1);
> +               writel(0x6b, edp->pll + QSERDES_V6_COM_SSC_PER1);
> +               writel(0x02, edp->pll + QSERDES_V6_COM_SSC_PER2);
> +               writel(step1, edp->pll + QSERDES_V6_COM_SSC_STEP_SIZE1_MODE0);
> +               writel(step2, edp->pll + QSERDES_V6_COM_SSC_STEP_SIZE2_MODE0);
> +       }

Definitely a strong NAK.

>
>         return 0;
>  }
> @@ -325,48 +378,99 @@ static int qcom_edp_configure_ssc(const struct qcom_edp *edp)
>  static int qcom_edp_configure_pll(const struct qcom_edp *edp)
>  {
>         const struct phy_configure_opts_dp *dp_opts = &edp->dp_opts;
> +       const struct qcom_edp_cfg *cfg = edp->cfg;
>         u32 div_frac_start2_mode0;
>         u32 div_frac_start3_mode0;
>         u32 dec_start_mode0;
>         u32 lock_cmp1_mode0;
>         u32 lock_cmp2_mode0;
> +       u32 code1_mode0;
> +       u32 code2_mode0;
>         u32 hsclk_sel;
>
>         switch (dp_opts->link_rate) {
>         case 1620:
>                 hsclk_sel = 0x5;
> -               dec_start_mode0 = 0x69;
> -               div_frac_start2_mode0 = 0x80;
> -               div_frac_start3_mode0 = 0x07;
> -               lock_cmp1_mode0 = 0x6f;
> -               lock_cmp2_mode0 = 0x08;
> +
> +               if (cfg->qserdes_version == QSERDES_V4) {
> +                       dec_start_mode0 = 0x69;
> +                       div_frac_start2_mode0 = 0x80;
> +                       div_frac_start3_mode0 = 0x07;
> +                       lock_cmp1_mode0 = 0x6f;
> +                       lock_cmp2_mode0 = 0x08;
> +               } else if (cfg->qserdes_version == QSERDES_V6) {
> +                       dec_start_mode0 = 0x34;
> +                       div_frac_start2_mode0 = 0xc0;
> +                       div_frac_start3_mode0 = 0x0b;
> +                       lock_cmp1_mode0 = 0x37;
> +                       lock_cmp2_mode0 = 0x04;
> +                       code1_mode0 = 0x71;
> +                       code2_mode0 = 0x0C;
> +               }
> +
>                 break;
>
>         case 2700:
>                 hsclk_sel = 0x3;
> -               dec_start_mode0 = 0x69;
> -               div_frac_start2_mode0 = 0x80;
> -               div_frac_start3_mode0 = 0x07;
> -               lock_cmp1_mode0 = 0x0f;
> -               lock_cmp2_mode0 = 0x0e;
> +
> +               if (cfg->qserdes_version == QSERDES_V4) {
> +                       dec_start_mode0 = 0x69;
> +                       div_frac_start2_mode0 = 0x80;
> +                       div_frac_start3_mode0 = 0x07;
> +                       lock_cmp1_mode0 = 0x0f;
> +                       lock_cmp2_mode0 = 0x0e;
> +               } else if (cfg->qserdes_version == QSERDES_V6) {
> +                       dec_start_mode0 = 0x34;
> +                       div_frac_start2_mode0 = 0xc0;
> +                       div_frac_start3_mode0 = 0x0b;
> +                       lock_cmp1_mode0 = 0x07;
> +                       lock_cmp2_mode0 = 0x07;
> +                       code1_mode0 = 0x71;
> +                       code2_mode0 = 0x0C;
> +               }
> +
>                 break;
>
>         case 5400:
>                 hsclk_sel = 0x1;
> -               dec_start_mode0 = 0x8c;
> -               div_frac_start2_mode0 = 0x00;
> -               div_frac_start3_mode0 = 0x0a;
> -               lock_cmp1_mode0 = 0x1f;
> -               lock_cmp2_mode0 = 0x1c;
> +
> +               if (cfg->qserdes_version == QSERDES_V4) {
> +                       dec_start_mode0 = 0x8c;
> +                       div_frac_start2_mode0 = 0x00;
> +                       div_frac_start3_mode0 = 0x0a;
> +                       lock_cmp1_mode0 = 0x1f;
> +                       lock_cmp2_mode0 = 0x1c;
> +               } else if (cfg->qserdes_version == QSERDES_V6) {
> +                       dec_start_mode0 = 0x46;
> +                       div_frac_start2_mode0 = 0x00;
> +                       div_frac_start3_mode0 = 0x05;
> +                       lock_cmp1_mode0 = 0x0f;
> +                       lock_cmp2_mode0 = 0x0e;
> +                       code1_mode0 = 0x97;
> +                       code2_mode0 = 0x10;
> +               }
> +
>                 break;
>
>         case 8100:
>                 hsclk_sel = 0x0;
> -               dec_start_mode0 = 0x69;
> -               div_frac_start2_mode0 = 0x80;
> -               div_frac_start3_mode0 = 0x07;
> -               lock_cmp1_mode0 = 0x2f;
> -               lock_cmp2_mode0 = 0x2a;
> +
> +               if (cfg->qserdes_version == QSERDES_V4) {
> +                       dec_start_mode0 = 0x69;
> +                       div_frac_start2_mode0 = 0x80;
> +                       div_frac_start3_mode0 = 0x07;
> +                       lock_cmp1_mode0 = 0x2f;
> +                       lock_cmp2_mode0 = 0x2a;
> +               } else if (cfg->qserdes_version == QSERDES_V6) {
> +                       dec_start_mode0 = 0x34;
> +                       div_frac_start2_mode0 = 0xc0;
> +                       div_frac_start3_mode0 = 0x0b;
> +                       lock_cmp1_mode0 = 0x17;
> +                       lock_cmp2_mode0 = 0x15;
> +                       code1_mode0 = 0x71;
> +                       code2_mode0 = 0x0C;
> +               }
> +
>                 break;
>
>         default:
> @@ -374,36 +478,70 @@ static int qcom_edp_configure_pll(const struct qcom_edp *edp)
>                 return -EINVAL;
>         }
>
> -       writel(0x01, edp->pll + QSERDES_V4_COM_SVS_MODE_CLK_SEL);
> -       writel(0x0b, edp->pll + QSERDES_V4_COM_SYSCLK_EN_SEL);
> -       writel(0x02, edp->pll + QSERDES_V4_COM_SYS_CLK_CTRL);
> -       writel(0x0c, edp->pll + QSERDES_V4_COM_CLK_ENABLE1);
> -       writel(0x06, edp->pll + QSERDES_V4_COM_SYSCLK_BUF_ENABLE);
> -       writel(0x30, edp->pll + QSERDES_V4_COM_CLK_SELECT);
> -       writel(hsclk_sel, edp->pll + QSERDES_V4_COM_HSCLK_SEL);
> -       writel(0x0f, edp->pll + QSERDES_V4_COM_PLL_IVCO);
> -       writel(0x08, edp->pll + QSERDES_V4_COM_LOCK_CMP_EN);
> -       writel(0x36, edp->pll + QSERDES_V4_COM_PLL_CCTRL_MODE0);
> -       writel(0x16, edp->pll + QSERDES_V4_COM_PLL_RCTRL_MODE0);
> -       writel(0x06, edp->pll + QSERDES_V4_COM_CP_CTRL_MODE0);
> -       writel(dec_start_mode0, edp->pll + QSERDES_V4_COM_DEC_START_MODE0);
> -       writel(0x00, edp->pll + QSERDES_V4_COM_DIV_FRAC_START1_MODE0);
> -       writel(div_frac_start2_mode0, edp->pll + QSERDES_V4_COM_DIV_FRAC_START2_MODE0);
> -       writel(div_frac_start3_mode0, edp->pll + QSERDES_V4_COM_DIV_FRAC_START3_MODE0);
> -       writel(0x02, edp->pll + QSERDES_V4_COM_CMN_CONFIG);
> -       writel(0x3f, edp->pll + QSERDES_V4_COM_INTEGLOOP_GAIN0_MODE0);
> -       writel(0x00, edp->pll + QSERDES_V4_COM_INTEGLOOP_GAIN1_MODE0);
> -       writel(0x00, edp->pll + QSERDES_V4_COM_VCO_TUNE_MAP);
> -       writel(lock_cmp1_mode0, edp->pll + QSERDES_V4_COM_LOCK_CMP1_MODE0);
> -       writel(lock_cmp2_mode0, edp->pll + QSERDES_V4_COM_LOCK_CMP2_MODE0);
> -
> -       writel(0x0a, edp->pll + QSERDES_V4_COM_BG_TIMER);
> -       writel(0x14, edp->pll + QSERDES_V4_COM_CORECLK_DIV_MODE0);
> -       writel(0x00, edp->pll + QSERDES_V4_COM_VCO_TUNE_CTRL);
> -       writel(0x17, edp->pll + QSERDES_V4_COM_BIAS_EN_CLKBUFLR_EN);
> -       writel(0x0f, edp->pll + QSERDES_V4_COM_CORE_CLK_EN);
> -       writel(0xa0, edp->pll + QSERDES_V4_COM_VCO_TUNE1_MODE0);
> -       writel(0x03, edp->pll + QSERDES_V4_COM_VCO_TUNE2_MODE0);
> +       if (cfg->qserdes_version == QSERDES_V4) {
> +               writel(0x01, edp->pll + QSERDES_V4_COM_SVS_MODE_CLK_SEL);
> +               writel(0x0b, edp->pll + QSERDES_V4_COM_SYSCLK_EN_SEL);
> +               writel(0x02, edp->pll + QSERDES_V4_COM_SYS_CLK_CTRL);
> +               writel(0x0c, edp->pll + QSERDES_V4_COM_CLK_ENABLE1);
> +               writel(0x06, edp->pll + QSERDES_V4_COM_SYSCLK_BUF_ENABLE);
> +               writel(0x30, edp->pll + QSERDES_V4_COM_CLK_SELECT);
> +               writel(hsclk_sel, edp->pll + QSERDES_V4_COM_HSCLK_SEL);
> +               writel(0x0f, edp->pll + QSERDES_V4_COM_PLL_IVCO);
> +               writel(0x08, edp->pll + QSERDES_V4_COM_LOCK_CMP_EN);
> +               writel(0x36, edp->pll + QSERDES_V4_COM_PLL_CCTRL_MODE0);
> +               writel(0x16, edp->pll + QSERDES_V4_COM_PLL_RCTRL_MODE0);
> +               writel(0x06, edp->pll + QSERDES_V4_COM_CP_CTRL_MODE0);
> +               writel(dec_start_mode0, edp->pll + QSERDES_V4_COM_DEC_START_MODE0);
> +               writel(0x00, edp->pll + QSERDES_V4_COM_DIV_FRAC_START1_MODE0);
> +               writel(div_frac_start2_mode0, edp->pll + QSERDES_V4_COM_DIV_FRAC_START2_MODE0);
> +               writel(div_frac_start3_mode0, edp->pll + QSERDES_V4_COM_DIV_FRAC_START3_MODE0);
> +               writel(0x02, edp->pll + QSERDES_V4_COM_CMN_CONFIG);
> +               writel(0x3f, edp->pll + QSERDES_V4_COM_INTEGLOOP_GAIN0_MODE0);
> +               writel(0x00, edp->pll + QSERDES_V4_COM_INTEGLOOP_GAIN1_MODE0);
> +               writel(0x00, edp->pll + QSERDES_V4_COM_VCO_TUNE_MAP);
> +               writel(lock_cmp1_mode0, edp->pll + QSERDES_V4_COM_LOCK_CMP1_MODE0);
> +               writel(lock_cmp2_mode0, edp->pll + QSERDES_V4_COM_LOCK_CMP2_MODE0);
> +
> +               writel(0x0a, edp->pll + QSERDES_V4_COM_BG_TIMER);
> +               writel(0x14, edp->pll + QSERDES_V4_COM_CORECLK_DIV_MODE0);
> +               writel(0x00, edp->pll + QSERDES_V4_COM_VCO_TUNE_CTRL);
> +               writel(0x17, edp->pll + QSERDES_V4_COM_BIAS_EN_CLKBUFLR_EN);
> +               writel(0x0f, edp->pll + QSERDES_V4_COM_CORE_CLK_EN);
> +               writel(0xa0, edp->pll + QSERDES_V4_COM_VCO_TUNE1_MODE0);
> +               writel(0x03, edp->pll + QSERDES_V4_COM_VCO_TUNE2_MODE0);
> +       } else if (cfg->qserdes_version == QSERDES_V6) {
> +               writel(0x01, edp->pll + QSERDES_V6_COM_SVS_MODE_CLK_SEL);
> +               writel(0x0b, edp->pll + QSERDES_V6_COM_SYSCLK_EN_SEL);
> +               writel(0x02, edp->pll + QSERDES_V6_COM_SYS_CLK_CTRL);
> +               writel(0x0c, edp->pll + QSERDES_V6_COM_CLK_ENABLE1);
> +               writel(0x06, edp->pll + QSERDES_V6_COM_SYSCLK_BUF_ENABLE);
> +               writel(0x30, edp->pll + QSERDES_V6_COM_CLK_SELECT);
> +               writel(hsclk_sel, edp->pll + QSERDES_V6_COM_HSCLK_SEL_1);
> +               writel(0x07, edp->pll + QSERDES_V6_COM_PLL_IVCO);
> +               writel(0x08, edp->pll + QSERDES_V6_COM_LOCK_CMP_EN);
> +               writel(0x36, edp->pll + QSERDES_V6_COM_PLL_CCTRL_MODE0);
> +               writel(0x16, edp->pll + QSERDES_V6_COM_PLL_RCTRL_MODE0);
> +               writel(0x6, edp->pll + QSERDES_V6_COM_CP_CTRL_MODE0);
> +               writel(dec_start_mode0, edp->pll + QSERDES_V6_COM_DEC_START_MODE0);
> +               writel(0x00, edp->pll + QSERDES_V6_COM_DIV_FRAC_START1_MODE0);
> +               writel(div_frac_start2_mode0, edp->pll + QSERDES_V6_COM_DIV_FRAC_START2_MODE0);
> +               writel(div_frac_start3_mode0, edp->pll + QSERDES_V6_COM_DIV_FRAC_START3_MODE0);
> +               writel(0x12, edp->pll + QSERDES_V6_COM_CMN_CONFIG_1);
> +               writel(0x3f, edp->pll + QSERDES_V6_COM_INTEGLOOP_GAIN0_MODE0);
> +               writel(0x00, edp->pll + QSERDES_V6_COM_INTEGLOOP_GAIN1_MODE0);
> +               writel(0x00, edp->pll + QSERDES_V6_COM_VCO_TUNE_MAP);
> +               writel(lock_cmp1_mode0, edp->pll + QSERDES_V6_COM_LOCK_CMP1_MODE0);
> +               writel(lock_cmp2_mode0, edp->pll + QSERDES_V6_COM_LOCK_CMP2_MODE0);
> +
> +               writel(0x0a, edp->pll + QSERDES_V6_COM_BG_TIMER);
> +               writel(0x14, edp->pll + QSERDES_V6_COM_PLL_CORE_CLK_DIV_MODE0);
> +               writel(0x00, edp->pll + QSERDES_V6_COM_VCO_TUNE_CTRL);
> +               writel(0x17, edp->pll + QSERDES_V6_COM_PLL_BIAS_EN_CLK_BUFLR_EN);
> +               writel(0x0f, edp->pll + QSERDES_V6_COM_CORE_CLK_EN);
> +
> +               writel(code1_mode0, edp->pll + QSERDES_V6_COM_BIN_VCOCAL_CMP_CODE1_MODE0);
> +               writel(code2_mode0, edp->pll + QSERDES_V6_COM_BIN_VCOCAL_CMP_CODE2_MODE0);
> +       }
>
>         return 0;
>  }
> @@ -462,13 +600,21 @@ static int qcom_edp_phy_power_on(struct phy *phy)
>                edp->edp + DP_PHY_PD_CTL);
>         writel(0xfc, edp->edp + DP_PHY_MODE);
>
> -       timeout = readl_poll_timeout(edp->pll + QSERDES_V4_COM_CMN_STATUS,
> -                                    val, val & BIT(7), 5, 200);
> +       if (cfg->qserdes_version == QSERDES_V4) {
> +               timeout = readl_poll_timeout(edp->pll + QSERDES_V4_COM_CMN_STATUS,
> +                                            val, val & BIT(7), 5, 200);
> +       } else if (cfg->qserdes_version == QSERDES_V6) {
> +               timeout = readl_poll_timeout(edp->pll + QSERDES_V6_COM_CMN_STATUS,
> +                                            val, val & BIT(7), 5, 200);
> +       }
>         if (timeout)
>                 return timeout;
>
>
> -       ldo_config = (cfg && cfg->is_dp) ? 0x1 : 0x0;
> +       if (cfg->qserdes_version == QSERDES_V4)
> +               ldo_config = (cfg && cfg->is_dp) ? 0x1 : 0x0;
> +       else if (cfg->qserdes_version == QSERDES_V6)
> +               ldo_config |= 0x91;
>
>         writel(ldo_config, edp->tx0 + TXn_LDO_CONFIG);
>         writel(ldo_config, edp->tx1 + TXn_LDO_CONFIG);
> @@ -512,10 +658,18 @@ static int qcom_edp_phy_power_on(struct phy *phy)
>         writel(0x01, edp->edp + DP_PHY_CFG);
>         writel(0x09, edp->edp + DP_PHY_CFG);
>
> -       writel(0x20, edp->pll + QSERDES_V4_COM_RESETSM_CNTRL);
> +       if (cfg->qserdes_version == QSERDES_V4) {
> +               writel(0x20, edp->pll + QSERDES_V4_COM_RESETSM_CNTRL);
> +
> +               timeout = readl_poll_timeout(edp->pll + QSERDES_V4_COM_C_READY_STATUS,
> +                                            val, val & BIT(0), 500, 10000);
> +       } else if (cfg->qserdes_version == QSERDES_V6) {
> +               writel(0x20, edp->pll + QSERDES_V6_COM_RESETSM_CNTRL);
> +
> +               timeout = readl_poll_timeout(edp->pll + QSERDES_V6_COM_C_READY_STATUS,
> +                                            val, val & BIT(0), 500, 10000);
> +       }
>
> -       timeout = readl_poll_timeout(edp->pll + QSERDES_V4_COM_C_READY_STATUS,
> -                                    val, val & BIT(0), 500, 10000);
>         if (timeout)
>                 return timeout;
>
> @@ -744,7 +898,6 @@ static int qcom_edp_clks_register(struct qcom_edp *edp, struct device_node *np)
>         data = devm_kzalloc(edp->dev, struct_size(data, hws, 2), GFP_KERNEL);
>         if (!data)
>                 return -ENOMEM;
> -       data->num = 2;
>
>         snprintf(name, sizeof(name), "%s::link_clk", dev_name(edp->dev));
>         init.ops = &qcom_edp_dp_link_clk_ops;
> @@ -764,6 +917,7 @@ static int qcom_edp_clks_register(struct qcom_edp *edp, struct device_node *np)
>
>         data->hws[0] = &edp->dp_link_hw;
>         data->hws[1] = &edp->dp_pixel_hw;
> +       data->num = 2;
>
>         return devm_of_clk_add_hw_provider(edp->dev, of_clk_hw_onecell_get, data);
>  }
> @@ -806,6 +960,7 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
>
>         edp->supplies[0].supply = "vdda-phy";
>         edp->supplies[1].supply = "vdda-pll";
> +       edp->clks[2].id = "tcsr";
>         ret = devm_regulator_bulk_get(dev, ARRAY_SIZE(edp->supplies), edp->supplies);
>         if (ret)
>                 return ret;
> @@ -841,8 +996,10 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
>  static const struct of_device_id qcom_edp_phy_match_table[] = {
>         { .compatible = "qcom,sc7280-edp-phy" },
>         { .compatible = "qcom,sc8180x-edp-phy" },
> -       { .compatible = "qcom,sc8280xp-dp-phy", .data = &dp_phy_cfg },
> -       { .compatible = "qcom,sc8280xp-edp-phy", .data = &edp_phy_cfg },
> +       { .compatible = "qcom,sc8280xp-dp-phy", .data = &dp_v4_phy_cfg },
> +       { .compatible = "qcom,sc8280xp-edp-phy", .data = &edp_v4_phy_cfg },
> +       { .compatible = "qcom,x1e80100-dp-phy", .data = &dp_v6_phy_cfg },
> +       { .compatible = "qcom,x1e80100-edp-phy", .data = &edp_v6_phy_cfg },
>         { }
>  };
>  MODULE_DEVICE_TABLE(of, qcom_edp_phy_match_table);
>
> --
> 2.34.1
>
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
