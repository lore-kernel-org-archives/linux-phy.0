Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3E43C61D9B
	for <linux-phy@archiver.kernel.org>; Wed, 22 Nov 2023 10:19:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1hti4OANncUQ3y2XlbcgeRBzV2tB91ZUMUPgZRxJEN8=; b=w6r/GrMzudI3Wb
	w2gAh7uGOmmLgxm9S91vrn8oy4g1vFWj4wBq9luQDG7BZG6soLDpCwgdC/z+lpF6KWXu4C6PhRBCT
	DlT0XPSzl+Y+vSxzRylTX99k1Lyv7pW0uRCtE5CdcrQPSUOY4OeM2CH7yWcRdhlSb4BNjdMETreXt
	a80SzP3qVj6oktzEaXAyuGvpVf+FKBm6cvkf2vLDhRgyYU5DfIhNayfWT8T/ei0ZO+ZoeWTwW5K63
	Rn7kzoQvZeREn+3seiB+jaG8ssYKeus/C9NRVEQwV0z1bFsc5UMTFkxBuGnBv6pc80ItDKxEH6lp7
	uziXpwUdprumX5jmgUuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5kKr-001Po8-1v;
	Wed, 22 Nov 2023 10:19:57 +0000
Received: from mail-yw1-x112c.google.com ([2607:f8b0:4864:20::112c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5kKo-001Pnb-1m
	for linux-phy@lists.infradead.org;
	Wed, 22 Nov 2023 10:19:56 +0000
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-5cca68f6e01so2523387b3.2
        for <linux-phy@lists.infradead.org>; Wed, 22 Nov 2023 02:19:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700648393; x=1701253193; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Xa4yoDJ99qgDyOwb3Frc4L8eVPVTNWGXGxm7LgxKRAg=;
        b=a2nSabrLQVkUpteL7pAKoOasMAKGAqR89lM0UvJdT5Rtk4ZyVzoiz74PDpLVYZFpP7
         sO/euQ+gUoKra4EdBIyu1bPvNvumHLab99jM7UbQ2fww8Tlh4HU2HmDxEJmpGAwGXm14
         FBkIIzdV2QcomD+AxPs90hcVFZgmZOIIsXs+Q7qeoVM2422Ktyb+NFcYI+JepVL86p5t
         Yu8PqUu/W0MS4TJmRPoC/1mLaXrSkDW4l5fKnRWJIZwrHeM3P4OKOAD/NbqEe8DMQxlh
         m8JCODCJo6N4foKzTX73E63bu0szoJ0l6vM07Q+FTDtdVA5x9CIIDWY+BiegWSqps5zZ
         JFow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700648393; x=1701253193;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Xa4yoDJ99qgDyOwb3Frc4L8eVPVTNWGXGxm7LgxKRAg=;
        b=jbpgcLzNSy6MD/VX7vGKwM8HwzKgmJs24WjfgZW9m1wogw5IqN5udK2lGMotZp94cs
         ShOPk6Uo4kk139o6+PIKrWBWo+OSjlRk/Rnzy7qmZLwANJU+16f68/2gHoXAqOdf3QNy
         2GFsAskK8c3BW3FxHv912qBRcEYo9LAoxGgsIGQ65NpxKq7+uIFOgAgZpNbSY9NE0fQn
         RMjVkmNmOUHTLZSCtHsaXeC5ApOr33gXd9ZPKoKFoUcR6lEb1GpJkh2yHFtW6rEF0Y8B
         i4t+xYOchMIQ3R0bP44hXOhHAWElPeHQTRN/Q7uyDujo+kWCCWJVHc5WTVcyRh8LsPb8
         V8eA==
X-Gm-Message-State: AOJu0YxRne1rBQHTWYD5QlwoSeJpywPdkvDijdpdbYh9EOC8UDvtzVfp
	xUMKyn4Luc3Xzt/sKyaatA1yjnJpYOjVab9KhO4hbw==
X-Google-Smtp-Source: AGHT+IHyQL9bZ4Ghj5CX7F1v3C0dFVe3YZOmFxa/kONpM8WCFF4uftId1viFYuVU5ZYljfyaJ9ewMjF2XT5pRvvMjn0=
X-Received: by 2002:a0d:f683:0:b0:5cc:3695:6afd with SMTP id
 g125-20020a0df683000000b005cc36956afdmr1792638ywf.38.1700648393605; Wed, 22
 Nov 2023 02:19:53 -0800 (PST)
MIME-Version: 1.0
References: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v1-0-d9340d362664@linaro.org>
 <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v1-5-d9340d362664@linaro.org>
In-Reply-To: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v1-5-d9340d362664@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 22 Nov 2023 12:19:42 +0200
Message-ID: <CAA8EJprPf+AOKLm4q8xjXUNkKkkZzkMw-9wenVP3Zws3dCf7gQ@mail.gmail.com>
Subject: Re: [PATCH 5/7] phy: qcom-qmp: qserdes-com: Add v7 register offsets
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_021954_586251_43C7722A 
X-CRM114-Status: GOOD (  15.81  )
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

On Wed, 22 Nov 2023 at 12:04, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> The X1E80100 platform bumps the HW version of QMP phy to v7 for USB
> and PCIE g3x2. Add the new qserdes com offsets in a dedicated
> header file.
>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v7.h | 86 ++++++++++++++++++++++
>  drivers/phy/qualcomm/phy-qcom-qmp.h                |  2 +
>  2 files changed, 88 insertions(+)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v7.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v7.h
> new file mode 100644
> index 000000000000..c8775ca1ab6b
> --- /dev/null
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v7.h
> @@ -0,0 +1,86 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (c) 2023, Linaro Limited
> + */
> +
> +#ifndef QCOM_PHY_QMP_QSERDES_COM_V7_H_
> +#define QCOM_PHY_QMP_QSERDES_COM_V7_H_
> +
> +/* Only for QMP V6 PHY - QSERDES COM registers */

V7

> +
> +#define QSERDES_V7_COM_SSC_STEP_SIZE1_MODE1                    0x00
> +#define QSERDES_V7_COM_SSC_STEP_SIZE2_MODE1                    0x04
> +#define QSERDES_V7_COM_CP_CTRL_MODE1                           0x10
> +#define QSERDES_V7_COM_PLL_RCTRL_MODE1                         0x14
> +#define QSERDES_V7_COM_PLL_CCTRL_MODE1                         0x18
> +#define QSERDES_V7_COM_CORECLK_DIV_MODE1                       0x1c
> +#define QSERDES_V7_COM_LOCK_CMP1_MODE1                         0x20
> +#define QSERDES_V7_COM_LOCK_CMP2_MODE1                         0x24
> +#define QSERDES_V7_COM_DEC_START_MODE1                         0x28
> +#define QSERDES_V7_COM_DEC_START_MSB_MODE1                     0x2c
> +#define QSERDES_V7_COM_DIV_FRAC_START1_MODE1                   0x30
> +#define QSERDES_V7_COM_DIV_FRAC_START2_MODE1                   0x34
> +#define QSERDES_V7_COM_DIV_FRAC_START3_MODE1                   0x38
> +#define QSERDES_V7_COM_HSCLK_SEL_1                             0x3c
> +#define QSERDES_V7_COM_INTEGLOOP_GAIN0_MODE1                   0x40
> +#define QSERDES_V7_COM_INTEGLOOP_GAIN1_MODE1                   0x44
> +#define QSERDES_V7_COM_VCO_TUNE1_MODE1                         0x48
> +#define QSERDES_V7_COM_VCO_TUNE2_MODE1                         0x4c
> +#define QSERDES_V7_COM_BIN_VCOCAL_CMP_CODE1_MODE1              0x50
> +#define QSERDES_V7_COM_BIN_VCOCAL_CMP_CODE2_MODE1              0x54
> +#define QSERDES_V7_COM_BIN_VCOCAL_CMP_CODE1_MODE0              0x58
> +#define QSERDES_V7_COM_BIN_VCOCAL_CMP_CODE2_MODE0              0x5c
> +#define QSERDES_V7_COM_SSC_STEP_SIZE1_MODE0                    0x60
> +#define QSERDES_V7_COM_SSC_STEP_SIZE2_MODE0                    0x64
> +#define QSERDES_V7_COM_CP_CTRL_MODE0                           0x70
> +#define QSERDES_V7_COM_PLL_RCTRL_MODE0                         0x74
> +#define QSERDES_V7_COM_PLL_CCTRL_MODE0                         0x78
> +#define QSERDES_V7_COM_PLL_CORE_CLK_DIV_MODE0                  0x7c
> +#define QSERDES_V7_COM_LOCK_CMP1_MODE0                         0x80
> +#define QSERDES_V7_COM_LOCK_CMP2_MODE0                         0x84
> +#define QSERDES_V7_COM_DEC_START_MODE0                         0x88
> +#define QSERDES_V7_COM_DEC_START_MSB_MODE0                     0x8c
> +#define QSERDES_V7_COM_DIV_FRAC_START1_MODE0                   0x90
> +#define QSERDES_V7_COM_DIV_FRAC_START2_MODE0                   0x94
> +#define QSERDES_V7_COM_DIV_FRAC_START3_MODE0                   0x98
> +#define QSERDES_V7_COM_HSCLK_HS_SWITCH_SEL_1                   0x9c
> +#define QSERDES_V7_COM_INTEGLOOP_GAIN0_MODE0                   0xa0
> +#define QSERDES_V7_COM_INTEGLOOP_GAIN1_MODE0                   0xa4
> +#define QSERDES_V7_COM_VCO_TUNE1_MODE0                         0xa8
> +#define QSERDES_V7_COM_VCO_TUNE2_MODE0                         0xac
> +#define QSERDES_V7_COM_BG_TIMER                                        0xbc
> +#define QSERDES_V7_COM_SSC_EN_CENTER                           0xc0
> +#define QSERDES_V7_COM_SSC_PER1                                        0xcc
> +#define QSERDES_V7_COM_SSC_PER2                                        0xd0
> +#define QSERDES_V7_COM_PLL_POST_DIV_MUX                                0xd8
> +#define QSERDES_V7_COM_PLL_BIAS_EN_CLK_BUFLR_EN                        0xdc
> +#define QSERDES_V7_COM_CLK_ENABLE1                             0xe0
> +#define QSERDES_V7_COM_SYS_CLK_CTRL                            0xe4
> +#define QSERDES_V7_COM_SYSCLK_BUF_ENABLE                       0xe8
> +#define QSERDES_V7_COM_PLL_IVCO                                        0xf4
> +#define QSERDES_V7_COM_PLL_IVCO_MODE1                          0xf8
> +#define QSERDES_V7_COM_SYSCLK_EN_SEL                           0x110
> +#define QSERDES_V7_COM_RESETSM_CNTRL                           0x118
> +#define QSERDES_V7_COM_LOCK_CMP_EN                             0x120
> +#define QSERDES_V7_COM_LOCK_CMP_CFG                            0x124
> +#define QSERDES_V7_COM_VCO_TUNE_CTRL                           0x13c
> +#define QSERDES_V7_COM_VCO_TUNE_MAP                            0x140
> +#define QSERDES_V7_COM_VCO_TUNE_INITVAL2                       0x148
> +#define QSERDES_V7_COM_VCO_TUNE_MAXVAL2                                0x158
> +#define QSERDES_V7_COM_CLK_SELECT                              0x164
> +#define QSERDES_V7_COM_CORE_CLK_EN                             0x170
> +#define QSERDES_V7_COM_CMN_CONFIG_1                            0x174
> +#define QSERDES_V7_COM_SVS_MODE_CLK_SEL                                0x17c
> +#define QSERDES_V7_COM_CMN_MISC_1                              0x184
> +#define QSERDES_V7_COM_CMN_MODE                                        0x188
> +#define QSERDES_V7_COM_PLL_VCO_DC_LEVEL_CTRL                   0x198
> +#define QSERDES_V7_COM_AUTO_GAIN_ADJ_CTRL_1                    0x1a4
> +#define QSERDES_V7_COM_AUTO_GAIN_ADJ_CTRL_2                    0x1a8
> +#define QSERDES_V7_COM_AUTO_GAIN_ADJ_CTRL_3                    0x1ac
> +#define QSERDES_V7_COM_ADDITIONAL_MISC                         0x1b4
> +#define QSERDES_V7_COM_ADDITIONAL_MISC_2                       0x1b8
> +#define QSERDES_V7_COM_ADDITIONAL_MISC_3                       0x1bc
> +#define QSERDES_V7_COM_CMN_STATUS                              0x1d0
> +#define QSERDES_V7_COM_C_READY_STATUS                          0x1f8
> +
> +#endif
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
> index 21f6a56e7ae3..3a0512c3e07a 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp.h
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
> @@ -26,6 +26,8 @@
>  #include "phy-qcom-qmp-qserdes-txrx-v6_20.h"
>  #include "phy-qcom-qmp-qserdes-ln-shrd-v6.h"
>
> +#include "phy-qcom-qmp-qserdes-com-v7.h"
> +
>  #include "phy-qcom-qmp-qserdes-pll.h"
>
>  #include "phy-qcom-qmp-pcs-v2.h"
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
