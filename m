Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F9D5EB8FA5
	for <linux-phy@archiver.kernel.org>; Wed,  6 Sep 2023 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OC+1FbcDu6UYOhjJQwglJ0Tpn84/QIorhLMbM9z53NI=; b=GNyBTtUeWin/5z
	2zWTtW7MC/a3FdZq3zCQTAhbz6AVd0FBKdEC6fc342sL3uUYN6/DA+YiKs/lSrpBXGklMtRDGE5Lv
	hdjqljsorzyw3i782wGDcVJ4Dr9l0Ol5A8xfRnlmjj91fD4BajqQ1TpzE0Cqo2hm6zemkqPx2K7by
	WwjwJV2zRDwi1e0eEqadwqjPK+sywBXAk9wG2pCxO3EU3qYWnRg7gU9nJvhF9v24IHL0/8Lg3zM0L
	h/D0P2OKaMYFoZNgJXRWoFCyudDL2J1TAxqFmltUg6tX/0ZiQez7ZQtBBo56ItcQ/jcdOaNc76X2c
	bBHhMqHFLZCxoslrpJww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdnrF-007i47-0E;
	Wed, 06 Sep 2023 08:25:53 +0000
Received: from mail-yb1-f175.google.com ([209.85.219.175])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdnrC-007i2j-1A
	for linux-phy@lists.infradead.org;
	Wed, 06 Sep 2023 08:25:51 +0000
Received: by mail-yb1-f175.google.com with SMTP id 3f1490d57ef6-d7e6d9665bcso2884320276.1
        for <linux-phy@lists.infradead.org>; Wed, 06 Sep 2023 01:25:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693988747; x=1694593547; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=79DbEjRFw7HmkEQ+IO681YlD9GfFsatbnb+58bE4v0Y=;
        b=EiaJKzR+XJ27mWvSDxfADxUVvPBF2easAMk2HXlnfdLFeA+Q4Xfwqa6n5GI2bgoIt6
         njKQXmYnpq567p/Zf9vUBPq5QF1OOhV4QneSDFKYEfd6LfAAp1a3JF/aGGhveLJNiW0T
         Qqw+TNRPWtnKtWHQ9YKy2ceVFXMrch1kror/+jyAB6MtyjuxeqXUqnLfNCAq7h7ZlK4k
         U1lxU4OH/r5qy5tOXRIdIBBDgDO2sfoVllrJsBAeEVKQErc3qDD4y5dR2MOPeE1p//lW
         4+S8seY15hWZLKEpkKHulBHXhFWJPuvfXuuwAwtVp3nYlhMW6qVYg0TkF3E6cnXPzl0V
         xUxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693988747; x=1694593547;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=79DbEjRFw7HmkEQ+IO681YlD9GfFsatbnb+58bE4v0Y=;
        b=SIV79HoS1DOWdb+X25eD2bcKGZFdsMLqiSNTY1ffQV3gBD3lB/ottjJsyrR7zKOHZY
         ot4D+M1jMA8XFpYPwJ58VKKbBjiXXZHFfXb3gmmxjiZAlM73CRawbLlRqmxHj3UGu3Ep
         GQ/GpPwC698Owa/EObI3L3vTEBDgTHv4d6Th7tCl3gQR+9Ypj1HvozWNaGTpuu4KVPKz
         p18c8BnqYn10yuTnNtI6JVIuUnc7oP06jKaVeT3tkGG6Fi6g/71wtHH9H7guXZtANViP
         CPiy1oW2EFKuSl4ZTo3gZWnmoKevIG2QpJWyJiLd62BSoyCRKe/TOuX+orOtEdYW4xQn
         eAYA==
X-Gm-Message-State: AOJu0YxGgpIZ8ihUbsPCeZbIZzwj3ovDD65sFDRdAepUy+ks64lLRpHC
	Uunkv5WeD0Qz8tQqoVxkKUeH1d1/XYc0ekrm1f8UrA==
X-Google-Smtp-Source: AGHT+IFINZ7UlmXL2B6gp+9jj6vtDYLtWHJivbIQoiQkMmgQ0gGTbeXcsk7w3X4qyFvjhf/wfMFcf2LjDUKEv7sTqnk=
X-Received: by 2002:a25:502:0:b0:d12:ab1:d88a with SMTP id 2-20020a250502000000b00d120ab1d88amr14968451ybf.40.1693988747287;
 Wed, 06 Sep 2023 01:25:47 -0700 (PDT)
MIME-Version: 1.0
References: <20230906075823.7957-1-dmitry.baryshkov@linaro.org>
 <20230906075823.7957-5-dmitry.baryshkov@linaro.org> <df1323b5-29c0-4daf-8ca0-cb6a85171d9b@linaro.org>
In-Reply-To: <df1323b5-29c0-4daf-8ca0-cb6a85171d9b@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 6 Sep 2023 11:25:36 +0300
Message-ID: <CAA8EJppNTn2v2kDL7oEb3Topx=kJ8McOGEXEe8x=SMSigBjQ3A@mail.gmail.com>
Subject: Re: [PATCH 4/4] phy: qcom-qmp-combo: use v6 registers in v6 regs layout
To: neil.armstrong@linaro.org
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	Abel Vesa <abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230906_012550_409328_7BF2332D 
X-CRM114-Status: GOOD (  19.29  )
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

On Wed, 6 Sept 2023 at 11:01, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>
> On 06/09/2023 09:58, Dmitry Baryshkov wrote:
> > Make sure that we use only v6 registers in qmp_v6_usb3phy_regs_layout.
>
> Why that if the registers are the same as v5 ?

Because otherwise it is too easy to use the incorrect register when
adding a new register to the regs layout. Been there.

>
> Neil
>
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >   drivers/phy/qualcomm/phy-qcom-qmp-combo.c      | 12 ++++++------
> >   drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h |  2 ++
> >   drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h     |  4 ++++
> >   3 files changed, 12 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> > index bff6231d7de3..9c71a132afea 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> > @@ -194,14 +194,14 @@ static const unsigned int qmp_v5_5nm_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
> >   };
> >
> >   static const unsigned int qmp_v6_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
> > -     [QPHY_SW_RESET]                 = QPHY_V5_PCS_SW_RESET,
> > -     [QPHY_START_CTRL]               = QPHY_V5_PCS_START_CONTROL,
> > -     [QPHY_PCS_STATUS]               = QPHY_V5_PCS_PCS_STATUS1,
> > -     [QPHY_PCS_POWER_DOWN_CONTROL]   = QPHY_V5_PCS_POWER_DOWN_CONTROL,
> > +     [QPHY_SW_RESET]                 = QPHY_V6_PCS_SW_RESET,
> > +     [QPHY_START_CTRL]               = QPHY_V6_PCS_START_CONTROL,
> > +     [QPHY_PCS_STATUS]               = QPHY_V6_PCS_PCS_STATUS1,
> > +     [QPHY_PCS_POWER_DOWN_CONTROL]   = QPHY_V6_PCS_POWER_DOWN_CONTROL,
> >
> >       /* In PCS_USB */
> > -     [QPHY_PCS_AUTONOMOUS_MODE_CTRL] = QPHY_V5_PCS_USB3_AUTONOMOUS_MODE_CTRL,
> > -     [QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = QPHY_V5_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR,
> > +     [QPHY_PCS_AUTONOMOUS_MODE_CTRL] = QPHY_V6_PCS_USB3_AUTONOMOUS_MODE_CTRL,
> > +     [QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = QPHY_V6_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR,
> >
> >       [QPHY_COM_RESETSM_CNTRL]        = QSERDES_V6_COM_RESETSM_CNTRL,
> >       [QPHY_COM_C_READY_STATUS]       = QSERDES_V6_COM_C_READY_STATUS,
> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
> > index 7c16af0b1cc3..0d0089898240 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
> > @@ -8,6 +8,8 @@
> >
> >   /* Only for QMP V6 PHY - USB3 have different offsets than V5 */
> >   #define QPHY_V6_PCS_USB3_POWER_STATE_CONFIG1                0x00
> > +#define QPHY_V6_PCS_USB3_AUTONOMOUS_MODE_CTRL                0x08
> > +#define QPHY_V6_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR               0x14
> >   #define QPHY_V6_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL    0x18
> >   #define QPHY_V6_PCS_USB3_RXEQTRAINING_DFE_TIME_S2   0x3c
> >   #define QPHY_V6_PCS_USB3_RCVR_DTCT_DLY_U3_L         0x40
> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h
> > index c95d3fabd108..496c36522e55 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h
> > @@ -7,6 +7,10 @@
> >   #define QCOM_PHY_QMP_PCS_V6_H_
> >
> >   /* Only for QMP V6 PHY - USB/PCIe PCS registers */
> > +#define QPHY_V6_PCS_SW_RESET                 0x000
> > +#define QPHY_V6_PCS_PCS_STATUS1                      0x014
> > +#define QPHY_V6_PCS_POWER_DOWN_CONTROL               0x040
> > +#define QPHY_V6_PCS_START_CONTROL            0x044
> >   #define QPHY_V6_PCS_LOCK_DETECT_CONFIG1             0x0c4
> >   #define QPHY_V6_PCS_LOCK_DETECT_CONFIG2             0x0c8
> >   #define QPHY_V6_PCS_LOCK_DETECT_CONFIG3             0x0cc
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
