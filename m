Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 078FEC61D9C
	for <linux-phy@archiver.kernel.org>; Wed, 22 Nov 2023 10:16:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FRGN8pIX2rBZfTOxJJ8zQTx/A1wGvl2cTKSU9eCxn1s=; b=BCNtWNiMumscOv
	3q1bjOidGIWx2OrPNtzFxr1Vs1acrNMK3hgcqdGtW9Psgf8iHe3dTA7PzpF0BQMP/MRJDrB6QlEW8
	TmcIiPKLO2y5dKIZ1BIODM9aXjycm3bKF/gpRLtDWz9BDLDkQW7Rgyoc5dMUY0i33Ueo+PvCBWNee
	hiOhy68Sv83FvvHjaFCXfob2YrAmpUplHt/NUOtJziowmwxXrBWubaZGaGRjTuffZ7Kc0FMDpr+ni
	qHBEzyZowb0JmLfhcd/MU3frezWnjy6shW7laA1bHXav16nEkotLgWdSc/0sIXs/nZyBNqEmvRejW
	UlH1v0T9GfXi17W+/jiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5kH4-001PDK-2E;
	Wed, 22 Nov 2023 10:16:02 +0000
Received: from mail-yw1-x1135.google.com ([2607:f8b0:4864:20::1135])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5kH0-001PCi-2x
	for linux-phy@lists.infradead.org;
	Wed, 22 Nov 2023 10:16:00 +0000
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-5b383b4184fso71886197b3.1
        for <linux-phy@lists.infradead.org>; Wed, 22 Nov 2023 02:15:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700648155; x=1701252955; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=PgkvyLwfQR26thZuHZr5M17A0Ohem0nIDMb8RLB6UYs=;
        b=azRuVoWw124EljgvZ9SQyeSZFcm8gEeynBg5gqYaXkwpvDGvJmNBN63veDvtO902sl
         dsvS1gQDM3DZ5YzVRgEzibOFOXJsyhcGPL68yTVXRp8OIaWYd3s/0HxSFyjVLihp/IiL
         9OvzbVnSm6OB9Sgxv/h9cz6cEtskX0tP8fivCddC1O1ziuZ78/v9HfgnuMbQ5pr63fmG
         uK9BRnJ5nenTkHU8OPus3qgJWLRjna1JYjgH15forrSL2dUocRwVzffx1bVLa02qdQd1
         C9aCYbmG5JYCIzWPiXD/kgbl1CtoL0ZztQJy5yp1O+7UD9F+yfa7Q3Vk1O8zYk2Ko6Pj
         a8Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700648155; x=1701252955;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PgkvyLwfQR26thZuHZr5M17A0Ohem0nIDMb8RLB6UYs=;
        b=NevobF8KuaEGll9AROtjp+t1olps6RkoByBa0rFWO9+M+bCoeEhngxf1xIAQ7Q0RSZ
         H1FxGC4A0q2NVtgf3zlmsIj1oK3Qq6tiyJhXYYi5pZV4mL0jb7bdzL0fxI21ojdGRyWL
         Fwb7QcS8FYwCREipnoIVniVVvRi0REA1tSR2QC+FxowjluLl1IgoNz3Gv4uH/Yi8E7I/
         3yIIwTfw58IEq85xoF3UtLCCAwFpp/ZKtEoBqG2VA4MPpaoFIXCirDE0ShGsGftrDjyH
         tEX4AbuoYY0P1yn+wnvEi8KkH1lrf+HtYthLMzLeI6tHGm1a2WoGyINhuBbaSypl5qGG
         RrkA==
X-Gm-Message-State: AOJu0Yz0ucuqqcNKevFIfj7NKHMGOSuZOqX6+PUCRAT9s866SKP2FDLA
	MRjudonbjr8T/LxvmzWWld+zoXAkEB9Hp5HzTU7THw==
X-Google-Smtp-Source: AGHT+IEkdUG9+zaFUBVAnoJGDXIM87u6PIrFmQ+T/ZMjVtONGnL/iE3hI7EqXnjaRE+awRnTSMD0+xsOQ6T0bnb+1T4=
X-Received: by 2002:a81:4746:0:b0:5a7:baac:7b34 with SMTP id
 u67-20020a814746000000b005a7baac7b34mr1621814ywa.28.1700648154790; Wed, 22
 Nov 2023 02:15:54 -0800 (PST)
MIME-Version: 1.0
References: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v1-0-d9340d362664@linaro.org>
 <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v1-3-d9340d362664@linaro.org>
In-Reply-To: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v1-3-d9340d362664@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 22 Nov 2023 12:15:43 +0200
Message-ID: <CAA8EJpq5NdZKaDSjKnJhFBCD+pwb3jaHgsSXAu6ODmSPU+g_ww@mail.gmail.com>
Subject: Re: [PATCH 3/7] phy: qcom-qmp: pcs: Add v7 register offsets
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_021558_985274_FAFB31C1 
X-CRM114-Status: GOOD (  15.13  )
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
> The X1E80100 platform bumps the HW version of QMP phy to v7 for USB,
> and PCIe. Add the new PCS offsets in a dedicated header file.
>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-v7.h | 28 ++++++++++++++++++++++++++++
>  drivers/phy/qualcomm/phy-qcom-qmp.h        |  2 ++
>  2 files changed, 30 insertions(+)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v7.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v7.h
> new file mode 100644
> index 000000000000..520f28d802f6
> --- /dev/null
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v7.h
> @@ -0,0 +1,28 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (c) 2023, Linaro Limited
> + */
> +
> +#ifndef QCOM_PHY_QMP_PCS_V7_H_
> +#define QCOM_PHY_QMP_PCS_V7_H_
> +
> +/* Only for QMP V6 PHY - USB/PCIe PCS registers */

V7

> +
> +#define QPHY_V7_PCS_LOCK_DETECT_CONFIG1                        0xc4
> +#define QPHY_V7_PCS_LOCK_DETECT_CONFIG2                        0xc8
> +#define QPHY_V7_PCS_LOCK_DETECT_CONFIG3                        0xcc
> +#define QPHY_V7_PCS_LOCK_DETECT_CONFIG6                        0xd8
> +#define QPHY_V7_PCS_REFGEN_REQ_CONFIG1                 0xdc
> +#define QPHY_V7_PCS_RX_SIGDET_LVL                      0x188
> +#define QPHY_V7_PCS_RCVR_DTCT_DLY_P1U2_L               0x190
> +#define QPHY_V7_PCS_RCVR_DTCT_DLY_P1U2_H               0x194
> +#define QPHY_V7_PCS_RATE_SLEW_CNTRL1                   0x198
> +#define QPHY_V7_PCS_RX_CONFIG                          0x1b0
> +#define QPHY_V7_PCS_ALIGN_DETECT_CONFIG1               0x1c0
> +#define QPHY_V7_PCS_ALIGN_DETECT_CONFIG2               0x1c4
> +#define QPHY_V7_PCS_PCS_TX_RX_CONFIG                   0x1d0
> +#define QPHY_V7_PCS_EQ_CONFIG1                         0x1dc
> +#define QPHY_V7_PCS_EQ_CONFIG2                         0x1e0
> +#define QPHY_V7_PCS_EQ_CONFIG5                         0x1ec
> +
> +#endif
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
> index 71f063f4a56e..21f6a56e7ae3 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp.h
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
> @@ -44,6 +44,8 @@
>
>  #include "phy-qcom-qmp-pcs-v6_20.h"
>
> +#include "phy-qcom-qmp-pcs-v7.h"
> +
>  /* Only for QMP V3 & V4 PHY - DP COM registers */
>  #define QPHY_V3_DP_COM_PHY_MODE_CTRL                   0x00
>  #define QPHY_V3_DP_COM_SW_RESET                                0x04
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
