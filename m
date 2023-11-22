Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22A63C61D9B
	for <linux-phy@archiver.kernel.org>; Wed, 22 Nov 2023 10:19:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yIaa95OnfoiXpTH1HhpedqsEiZQWt1ljsvM5ePehl5w=; b=doG1/e1Q+6AEcC
	ohWlg4Ob36MR/XObggEKbSaGusfIgkw2nnp3J+LuAlwd0abU+znRtdR3MJ7ZGeX0Chb/a3qJvxcqq
	+Tzew2Lj20T1vcywPjRlX8ENgpI3VZmcc20FCGCsg5lBUylC1YsqpxhTEa03UppivM341wiXa1AYf
	+TUw+VSdV9W6LU7lAZX73IkFLEblCPn6+WBC2hU/g2/mVfRLvjssQvz78vSQNvchKh472lbhX1iPI
	L4Lni//U5eev2H1EsnyXPYC8LCXu2ihZqO4CBiLLtIVzm4PBblMHfW3Et3kUUMRGev7SCR9iw4v9y
	PcRa6dEhGRao+NsVcESA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5kJy-001PdK-2c;
	Wed, 22 Nov 2023 10:19:02 +0000
Received: from mail-yb1-xb2e.google.com ([2607:f8b0:4864:20::b2e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5kJw-001Pcc-1U
	for linux-phy@lists.infradead.org;
	Wed, 22 Nov 2023 10:19:01 +0000
Received: by mail-yb1-xb2e.google.com with SMTP id 3f1490d57ef6-da077db5145so6048691276.0
        for <linux-phy@lists.infradead.org>; Wed, 22 Nov 2023 02:18:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700648338; x=1701253138; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9c11pFvupFPnQhEf8NQ0gBbEB8fE0d+93nnxiRUqcLg=;
        b=wDpFQfax0CRcfEXJ5RoBSyX6Bl9MCOPsRjtXKx9e2vh+N1lwgS/eSYLxjJtv+HB+dZ
         Di2QmUbj6KC+1FGhtnFEcNpbg4wuntjgcOK3hyor4Jc5vhBtK8Sg8Er8qAvaoc6pbxTJ
         FQFtlKnz4Ey1YhgmdsWnluzD1/KAnXvUK5lKIZFpV2f5Vkk7aAXBgo3XiBuj3fJ/TWnQ
         3nQcDYQBbXINLem3WC/CEQ2Vc52zL1BJCcBj+38Fh5j6Gmazc/A13KnZ2BgjmKknPRqH
         UKeKcFI8OVKZrjG7KUAMrlia5nPKv9q3QHSDYKDYAiYKXy/h35zOBoB13xiQJj5TGyM5
         bvKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700648338; x=1701253138;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9c11pFvupFPnQhEf8NQ0gBbEB8fE0d+93nnxiRUqcLg=;
        b=ItRm9cfcbaS7JvyCKzT6i6sl+a1uhjXxC6hmvsldI4AfZesgKQ7KaYxxLP6L8X8D4y
         vK4+BEDCgMXuypc2HTNl9efXda8jdsz3Sy719la06aixB8ITziigohCew/agjytYHL1A
         hVfqk0o3TuKtTLaUVkjJamv+FTgPXOreiLiLcoBs1RTtsvEC+e6uzQz2s8OM1oqgrFAT
         jgDpcy8/ugzhPPTQK5sNgoVzdXNpSXyseTTAGXKqgFVWknBuyK70wsh+Fbwwl9Eq7v+9
         W11Jn/6BbTRuLCn267Erw36/aW/o77CbK456tFu2GgfIs1BoFjKEzuyG6acoiz4fKUjO
         FAfA==
X-Gm-Message-State: AOJu0YyMgutgpBwNAcKty2y7a0KUKY+wydUtnsoITiMEvKgN/HCaMm6A
	MXpTxH3iwU1QdLve4tTVi72ZOxzganN/kYCZu8EjwQ==
X-Google-Smtp-Source: AGHT+IHbEev2I5tUtnx8XY+aYZY4ijq+jp+sr4M76Qn2LzFRDutzsRzlkmQ4g5DWOee0/SQLVPpI4jwELA55NaoeLVE=
X-Received: by 2002:a5b:4d1:0:b0:da0:622b:5539 with SMTP id
 u17-20020a5b04d1000000b00da0622b5539mr1470086ybp.58.1700648338139; Wed, 22
 Nov 2023 02:18:58 -0800 (PST)
MIME-Version: 1.0
References: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v1-0-d9340d362664@linaro.org>
 <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v1-4-d9340d362664@linaro.org>
In-Reply-To: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v1-4-d9340d362664@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 22 Nov 2023 12:18:47 +0200
Message-ID: <CAA8EJpouPmst-ZcJSZ-qMPB2regi1saTyjczQnN5E=zE57C-Fg@mail.gmail.com>
Subject: Re: [PATCH 4/7] phy: qcom-qmp: pcs-usb: Add v7 register offsets
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_021900_521177_A6839EE8 
X-CRM114-Status: GOOD (  14.84  )
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
> The X1E80100 platform bumps the HW version of QMP phy to v7 for USB.
> Add the new PCS USB specific offsets in a dedicated header file.
>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v7.h | 31 ++++++++++++++++++++++++++
>  1 file changed, 31 insertions(+)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v7.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v7.h
> new file mode 100644
> index 000000000000..dbb75964cef7
> --- /dev/null
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v7.h
> @@ -0,0 +1,31 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (c) 2023, Linaro Limited
> + */
> +
> +#ifndef QCOM_PHY_QMP_PCS_USB_V7_H_
> +#define QCOM_PHY_QMP_PCS_USB_V7_H_
> +
> +/* Only for QMP V6 PHY - USB3 have different offsets than V5 */

V7

> +#define QPHY_USB_V7_PCS_LOCK_DETECT_CONFIG1            0xc4
> +#define QPHY_USB_V7_PCS_LOCK_DETECT_CONFIG2            0xc8
> +#define QPHY_USB_V7_PCS_LOCK_DETECT_CONFIG3            0xcc
> +#define QPHY_USB_V7_PCS_LOCK_DETECT_CONFIG6            0xd8
> +#define QPHY_USB_V7_PCS_REFGEN_REQ_CONFIG1             0xdc
> +#define QPHY_USB_V7_PCS_USB3_POWER_STATE_CONFIG1       0x90
> +#define QPHY_USB_V7_PCS_RX_SIGDET_LVL                  0x188
> +#define QPHY_USB_V7_PCS_RCVR_DTCT_DLY_P1U2_L           0x190
> +#define QPHY_USB_V7_PCS_RCVR_DTCT_DLY_P1U2_H           0x194
> +#define QPHY_USB_V7_PCS_CDR_RESET_TIME                 0x1b0
> +#define QPHY_USB_V7_PCS_ALIGN_DETECT_CONFIG1           0x1c0
> +#define QPHY_USB_V7_PCS_ALIGN_DETECT_CONFIG2           0x1c4
> +#define QPHY_USB_V7_PCS_PCS_TX_RX_CONFIG               0x1d0
> +#define QPHY_USB_V7_PCS_EQ_CONFIG1                     0x1dc
> +#define QPHY_USB_V7_PCS_EQ_CONFIG5                     0x1ec

Some (most) of these registers do not belong here, they are the same
as the generic PCS register names. Please drop them.

> +
> +#define QPHY_USB_V7_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL   0x18
> +#define QPHY_USB_V7_PCS_USB3_RXEQTRAINING_DFE_TIME_S2  0x3c
> +#define QPHY_USB_V7_PCS_USB3_RCVR_DTCT_DLY_U3_L                0x40
> +#define QPHY_USB_V7_PCS_USB3_RCVR_DTCT_DLY_U3_H                0x44

Drop the _USB_ part, please, there is already PCS_USB3 prefix.

> +
> +#endif
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
