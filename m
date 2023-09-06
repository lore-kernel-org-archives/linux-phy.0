Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7564AEB8FAF
	for <linux-phy@archiver.kernel.org>; Wed,  6 Sep 2023 09:30:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=66lX/7Dn5DnPvoJy9pS1ERB5uJl2mvK/bFi9SsQ3h+0=; b=azFga9Nyc+dt7Y
	hVRH7uTNcV4nwEcSsGlrER74Ozh40JT37UQA07YO6J8QXTtH0eh48Oa6b/z+4nVvCeMm1lLw36s9+
	B4v1aFcF/Mpa3ZNUugSD/7mayGBbCKkPK/fLLeket/APgnGPK7JsaE3oViSWKZRKRsM7W/FYl6n3v
	MaTeex+ALXR3tola7gIB/nfOQy7FEOlLv5zn/QXn8WkLrnbrPSHyuYjgOnwNsiDzYtaXMhGNz8ky6
	MAzQEnWcdjWnTEF3U3IF5L1E+QbDqtjicYhvBh/OHlnyDdcudnhrhy25zCpBq/W1AIubqCuPh9NRj
	z6w8GK1q/vfV5pR9TLKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdorx-007vUr-07;
	Wed, 06 Sep 2023 09:30:41 +0000
Received: from mail-yw1-f179.google.com ([209.85.128.179])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdnqC-007hkg-1I
	for linux-phy@lists.infradead.org;
	Wed, 06 Sep 2023 08:24:50 +0000
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-58d31f142eeso33814047b3.0
        for <linux-phy@lists.infradead.org>; Wed, 06 Sep 2023 01:24:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693988679; x=1694593479; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8FgxJYQb5sLipJEPTb1HHkrkVVLFLdqlnrCZ9IiecQk=;
        b=muLa8Hz036jvIvR+pJcdyjYPJcScexkpdA5vk+YEBO3rHqkOkx6b0IEJNYpA430/Cs
         9ZiRUPZXxFSLuB4Ld+PuQT3c9PrNTVExGge8TlnUpscBwT1zG/89GJszSEEDYqAgimpU
         ucSR22HKph78s+9jxvYeXK9ztbtjfETSyrjfUwY/HdWb++6c9ddMs49hh9gZtoz+k78y
         Bd92g4S8/xpeNelhN2+C2oym9iBvU/j3+hxG7Yd7UFy16pGw2B3mcugNq4l3bp0u2K6j
         VQs1GYonkkteCtVI0gGNvr3DegZMcRfNgAjZgbIxmhqksDeSkQClwRJhN6N9mhRHrNTQ
         crSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693988679; x=1694593479;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8FgxJYQb5sLipJEPTb1HHkrkVVLFLdqlnrCZ9IiecQk=;
        b=OwlmmquMEQmoB3Qu7jrHVHTyd33CRYptz91q8IAlxmycKwljV1SC7a+S2/lihN8QXs
         xdI9+WEEhyrutFWGh1KzHcc/mShnaEOehp/doZADLoRyPq4134cLAITEkhMBT0iB7gcK
         rd/ScYz8UxWYF289LYu0/gwtrADMoUgLaN3Tg6h1GuCSCz1CK3UzNdcgRQy59AryiweI
         lgUcHcVANG7HRcAHVtxxi56HsQG+0Ljo2GsdynSBv4sZwKRd5BNGK/w5YpszntZ8DLmg
         3aHssCmqYaiM2zkr39yVTKvKq1kTTgFxNqpl+H8IJmxwtK4dWGmZ+B1qT8zIxTHJ/85U
         sDVA==
X-Gm-Message-State: AOJu0YyemuJ+MbhPfTfRjjCiDbOhk0cSYQlTbWdxyOqzhhldlnJud8rh
	stoLxrR37EMw6Ajv81VrWzvKJpmvs6v3MOd6k9oSew==
X-Google-Smtp-Source: AGHT+IH6dwGRkIdDTuRt/pJIYHdJLKEfCH3A3hLT0H8bBotdEyhTza76gcd+4blN/xWaXY/M85goEM/KfWPQg7cULj0=
X-Received: by 2002:a25:26cd:0:b0:d0c:3be2:b626 with SMTP id
 m196-20020a2526cd000000b00d0c3be2b626mr17084269ybm.30.1693988679382; Wed, 06
 Sep 2023 01:24:39 -0700 (PDT)
MIME-Version: 1.0
References: <20230906075823.7957-1-dmitry.baryshkov@linaro.org>
 <20230906075823.7957-2-dmitry.baryshkov@linaro.org> <4f6ec540-9cf7-4505-ada8-2e203eaafca6@linaro.org>
In-Reply-To: <4f6ec540-9cf7-4505-ada8-2e203eaafca6@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 6 Sep 2023 11:24:28 +0300
Message-ID: <CAA8EJprxvPSvmkz_RU6yc-VxwDubZWe54-OjWQGgA0qvFrAiCg@mail.gmail.com>
Subject: Re: [PATCH 1/4] phy: qcom-qmp-combo: correct sm8550 PHY programming
To: neil.armstrong@linaro.org
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	Abel Vesa <abel.vesa@linaro.org>, stable@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230906_012448_464688_7C5D7492 
X-CRM114-Status: GOOD (  18.68  )
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

On Wed, 6 Sept 2023 at 11:02, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>
> On 06/09/2023 09:58, Dmitry Baryshkov wrote:
> > Move PCS_USB3_POWER_STATE_CONFIG1 register programming from pcs_tbl to
> > the pcs_usb_tbl, where it belongs. Also, while we are at it, correct the
> > offset of this register to point to 0x00, as expected.
>
> Konrad already sent this https://lore.kernel.org/all/20230829-topic-8550_usbphy-v1-1-599ddbfa094a@linaro.org/

Not quite. Or we'd need to land a separate fix for the register address.

>
> >
> > Fixes: 49742e9edab3 ("phy: qcom-qmp-combo: Add support for SM8550")
> > Fixes: 39bbf82d8c2b ("phy: qcom-qmp: pcs-usb: Add v6 register offsets")
> > Cc: Abel Vesa <abel.vesa@linaro.org>
> > Cc: stable@vger.kernel.org
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >   drivers/phy/qualcomm/phy-qcom-qmp-combo.c      | 2 +-
> >   drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h | 2 +-
> >   2 files changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> > index cbb28afce135..41b9be56eead 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> > @@ -859,7 +859,6 @@ static const struct qmp_phy_init_tbl sm8550_usb3_pcs_tbl[] = {
> >       QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_PCS_TX_RX_CONFIG, 0x0c),
> >       QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_EQ_CONFIG1, 0x4b),
> >       QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_EQ_CONFIG5, 0x10),
> > -     QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_USB3_POWER_STATE_CONFIG1, 0x68),
> >   };
> >
> >   static const struct qmp_phy_init_tbl sm8550_usb3_pcs_usb_tbl[] = {
> > @@ -867,6 +866,7 @@ static const struct qmp_phy_init_tbl sm8550_usb3_pcs_usb_tbl[] = {
> >       QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_USB3_RXEQTRAINING_DFE_TIME_S2, 0x07),
> >       QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_USB3_RCVR_DTCT_DLY_U3_L, 0x40),
> >       QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_USB3_RCVR_DTCT_DLY_U3_H, 0x00),
> > +     QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_USB3_POWER_STATE_CONFIG1, 0x68),
> >   };
> >
> >   static const struct qmp_phy_init_tbl qmp_v4_dp_serdes_tbl[] = {
> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
> > index 9510e63ba9d8..5409ddcd3eb5 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
> > @@ -12,7 +12,6 @@
> >   #define QPHY_USB_V6_PCS_LOCK_DETECT_CONFIG3         0xcc
> >   #define QPHY_USB_V6_PCS_LOCK_DETECT_CONFIG6         0xd8
> >   #define QPHY_USB_V6_PCS_REFGEN_REQ_CONFIG1          0xdc
> > -#define QPHY_USB_V6_PCS_USB3_POWER_STATE_CONFIG1     0x90
> >   #define QPHY_USB_V6_PCS_RX_SIGDET_LVL                       0x188
> >   #define QPHY_USB_V6_PCS_RCVR_DTCT_DLY_P1U2_L                0x190
> >   #define QPHY_USB_V6_PCS_RCVR_DTCT_DLY_P1U2_H                0x194
> > @@ -23,6 +22,7 @@
> >   #define QPHY_USB_V6_PCS_EQ_CONFIG1                  0x1dc
> >   #define QPHY_USB_V6_PCS_EQ_CONFIG5                  0x1ec
> >
> > +#define QPHY_USB_V6_PCS_USB3_POWER_STATE_CONFIG1     0x00
> >   #define QPHY_USB_V6_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL        0x18
> >   #define QPHY_USB_V6_PCS_USB3_RXEQTRAINING_DFE_TIME_S2       0x3c
> >   #define QPHY_USB_V6_PCS_USB3_RCVR_DTCT_DLY_U3_L             0x40
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
