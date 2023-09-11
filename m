Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9A19C71153
	for <linux-phy@archiver.kernel.org>; Mon, 11 Sep 2023 19:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OiE2mt6KIy1Ec0+vQ3LL0EL4DeHmtF54FD8aLBjTFHE=; b=A/z5y8VryMDg4M
	+avt7ILTo2WSkvUGdmXfXoTh9tGjw2T36lLM5kVeRjaYsoiTWayv/PUo2wwCGCq6Wnjf6JdL0lxqJ
	6VM87lwtFKOAJHYa5z7fIf7yh2UErfYLoXnqAA+angJ+z/XFZj9UST1EwAasLEyp80A1Pe+b27lpv
	qxQb67COyZi3DcJRQyWolEXa3bwp0NaCYE7ddWxPqLgfEMM8uvVdZH6BwbU73f4N9WBfOxExEYtl6
	skHculBCpKdbNAm4OLdvfMMZ7Wdw3/fQbsgaQzdu5sNz6Zp9FymxmyaJVjFqFHW3x/Rua9ZjFPbmN
	c0MesM+S2PbrgvezLNkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfmiz-001DHB-22;
	Mon, 11 Sep 2023 19:37:33 +0000
Received: from mail-ot1-x334.google.com ([2607:f8b0:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfmiw-001DG5-1o
	for linux-phy@lists.infradead.org;
	Mon, 11 Sep 2023 19:37:32 +0000
Received: by mail-ot1-x334.google.com with SMTP id 46e09a7af769-6c0c6370e5eso2264903a34.3
        for <linux-phy@lists.infradead.org>; Mon, 11 Sep 2023 12:37:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694461049; x=1695065849; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=equAb98+MDoXTFD0Qn2BcTK9XaWv7WQjzYAJlfVROPE=;
        b=cEGGZRDwJ2ITkt4mwBJalD+DJuPhbtgA5EoPZuWbcQ8u0qhG8m4QNFJ5cfox9D1M3N
         Bhln1EH47Nl8RTS0/0NgmMA+hZg4NyVQ4/3LCzmPJx3AJ38q9jE8vXrHx6aneShjXe5m
         GLoDbthyJD4f3ETxAuqhHhNnY8I2zogtpB+bgeMR7nGaCqToegX3BaFiaKCdfaqwesI9
         ZzMQAdowXE9h5Jz7SUqmdUE3soZqFY/FLSwTEVtFulvuCss6+3ECV04g1IhTn502k0G0
         qAfvODKwleSBonLrdsSMjXkt7ULmK12ytI/3XbSAcbk94IRWqbCjkYuT9osElCvtIPAh
         UzdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694461049; x=1695065849;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=equAb98+MDoXTFD0Qn2BcTK9XaWv7WQjzYAJlfVROPE=;
        b=HOsLn3aW8avCMmOniL5xgySUeidxgQJf05p7pBKYtp/4ezeQH01y4kXNvb4x5IF2vo
         Q+C0JYyx9wgCx/MIJuDhJyQmiYchAKME43H+OXKimMRlvgv6hgNrBhbNnYKKIzOUuMrA
         H8onV8R7wYTeJaIxaE+aXwQmO65sNUC1gB1HBqJt90oOTSNlgoxEQ+LBuxY+v5jqmdzu
         MGdtYRTj6y7eys6NUIJzX85yU2Sdqa9SSAw6/bhxhONScVuaRKfRC3zRzKIY60c4Hs5+
         oL1uIp6AOW4VEAFAIOUK5AaV90Gxm+9fvB9T3RfrVjhy+Gg44BEFLZFTpuurHpJ2V59k
         DCTQ==
X-Gm-Message-State: AOJu0YyCNjPFovYatO6k3J+9quitROMwRUYo0mwXBYFpYXx1g6AVISD5
	xjwT5g18RNar9R5pjpsnz+28LlrwCTadMSchNVOvbg==
X-Google-Smtp-Source: AGHT+IHlhxgtmO7tiyrDYj+HzY/4j2EIuZNEIP9VA79lo1De8xszz8bgpU9rqTSS45gbydj/7QtcRpuKH4sFAZZm+uk=
X-Received: by 2002:a9d:6e03:0:b0:6b7:4efe:a9a4 with SMTP id
 e3-20020a9d6e03000000b006b74efea9a4mr12026934otr.23.1694461049001; Mon, 11
 Sep 2023 12:37:29 -0700 (PDT)
MIME-Version: 1.0
References: <20230829-topic-8550_usbphy-v2-0-a72f43311d19@linaro.org> <20230829-topic-8550_usbphy-v2-1-a72f43311d19@linaro.org>
In-Reply-To: <20230829-topic-8550_usbphy-v2-1-a72f43311d19@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 11 Sep 2023 22:37:17 +0300
Message-ID: <CAA8EJppHVs18rhb3p7_LGrE02wD_tYzTbOMr46cAHV7imG+rDQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] phy: qcom-qmp-combo: Square out 8550 POWER_STATE_CONFIG1
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Abel Vesa <abel.vesa@linaro.org>, 
	Johan Hovold <johan+linaro@kernel.org>, Marijn Suijten <marijn.suijten@somainline.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_123730_674453_DCA4306A 
X-CRM114-Status: GOOD (  18.73  )
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

On Mon, 11 Sept 2023 at 22:32, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> There are two instances of the POWER_STATE_CONFIG1 register: one in
> the PCS space and another one in PCS_USB.
>
> The downstream init sequence pokes the latter one while we've been poking
> the former one (and misnamed it as the latter one, impostor!). Fix that
> up to avoid UB.
>
> Fixes: 49742e9edab3 ("phy: qcom-qmp-combo: Add support for SM8550")
> Reviewed-by: Abel Vesa <abel.vesa@linaro.org>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c      | 2 +-
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h | 3 ++-
>  2 files changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index cbb28afce135..843099d314bf 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -859,10 +859,10 @@ static const struct qmp_phy_init_tbl sm8550_usb3_pcs_tbl[] = {
>         QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_PCS_TX_RX_CONFIG, 0x0c),
>         QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_EQ_CONFIG1, 0x4b),
>         QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_EQ_CONFIG5, 0x10),
> -       QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_USB3_POWER_STATE_CONFIG1, 0x68),
>  };
>
>  static const struct qmp_phy_init_tbl sm8550_usb3_pcs_usb_tbl[] = {
> +       QMP_PHY_INIT_CFG(QPHY_USB_Q6_PCS_USB3_POWER_STATE_CONFIG1, 0x68),

And this is still _Q6_

>         QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL, 0xf8),
>         QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_USB3_RXEQTRAINING_DFE_TIME_S2, 0x07),
>         QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_USB3_RCVR_DTCT_DLY_U3_L, 0x40),
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
> index 9510e63ba9d8..c38530d6776b 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
> @@ -12,7 +12,7 @@
>  #define QPHY_USB_V6_PCS_LOCK_DETECT_CONFIG3            0xcc
>  #define QPHY_USB_V6_PCS_LOCK_DETECT_CONFIG6            0xd8
>  #define QPHY_USB_V6_PCS_REFGEN_REQ_CONFIG1             0xdc
> -#define QPHY_USB_V6_PCS_USB3_POWER_STATE_CONFIG1       0x90
> +#define QPHY_USB_V6_PCS_POWER_STATE_CONFIG1            0x90
>  #define QPHY_USB_V6_PCS_RX_SIGDET_LVL                  0x188
>  #define QPHY_USB_V6_PCS_RCVR_DTCT_DLY_P1U2_L           0x190
>  #define QPHY_USB_V6_PCS_RCVR_DTCT_DLY_P1U2_H           0x194
> @@ -23,6 +23,7 @@
>  #define QPHY_USB_V6_PCS_EQ_CONFIG1                     0x1dc
>  #define QPHY_USB_V6_PCS_EQ_CONFIG5                     0x1ec
>
> +#define QPHY_USB_V6_PCS_USB3_POWER_STATE_CONFIG1       0x00
>  #define QPHY_USB_V6_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL   0x18
>  #define QPHY_USB_V6_PCS_USB3_RXEQTRAINING_DFE_TIME_S2  0x3c
>  #define QPHY_USB_V6_PCS_USB3_RCVR_DTCT_DLY_U3_L                0x40
>
> --
> 2.42.0
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
