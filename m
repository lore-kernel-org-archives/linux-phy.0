Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3EB91C43334
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jun 2022 23:02:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WW5TAEpkMEM+Dbi6ZqGjPaTovSJ0vgWRvvaxGX1AQfM=; b=naenpNkOYEuO3N
	TYw5nrL20HqFMf+hmxx5FWdRAlinPXge8UHJJGzIaByybCHZu/lTIqH7qwRs3YePLarCYh4iKr3yq
	z+PA1cVLW6lEP0csIYfeHQhXn2A9PFg3FLyMrNV6nFbu1XS2867AW0jMxMuT0WfO1ufUDxkcezpF9
	tmhS+5RuPtMK+kA4ahxOiPGOzfcn/KtjWOlcjFj0T6hxIQh5dk4ugQT9LhwdA8gjgtdI59agULOy3
	7x30oYyFQC/E4hjY/DzNtJf3VZfyQhAZiAu8qUDW/gZZauoCnXMat/sPVMX8GgnA6e4rADQmisQAi
	aG5dKCINBBig22ivkoMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyiDa-009y35-Km; Tue, 07 Jun 2022 23:02:34 +0000
Received: from mail-oa1-x30.google.com ([2001:4860:4864:20::30])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyiDV-009y0F-PE
	for linux-phy@lists.infradead.org; Tue, 07 Jun 2022 23:02:33 +0000
Received: by mail-oa1-x30.google.com with SMTP id 586e51a60fabf-edeb6c3642so25099064fac.3
        for <linux-phy@lists.infradead.org>; Tue, 07 Jun 2022 16:02:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=9B6aSW7/Chcjnv4G5NHTXNMSE1cO1o2NilpL530hfJE=;
        b=UlsEOc61ALqNpzKAz2HjvqRmjxqokvcSEG4XAv8lVCgrtEtaSy+mDRBUL/SaGq73t2
         0aqDl6dM/TdZeo9eTdUaJK2zgiYJ3Im9GhGoTEaKWtsqEbuDTZoaJGejHZ8Kv4mfZBNQ
         R/gxCRTWmqIGSuA9SDuBg+ZkEfCwd70OIGOSMZ+5Ooy3Yf6VTLOH9jFY6kT6IMySx8W1
         g6DBEpe84GF2hYsCtaWegVedDAlA6JlQ9O5PDZgew/p0FEWjyGwdev6YtnMaJR0cmfL2
         2DyhrrIFEqDIzFHwpbMragkl4x2AfAVe5j1rlEj+HNh5a+6XkmXoFA2PJmpp0sjBP+sc
         n2uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=9B6aSW7/Chcjnv4G5NHTXNMSE1cO1o2NilpL530hfJE=;
        b=xcaFtLjmMkkTCMsK4RH3RcyEWw6MbRkP5Fl5hLtLos54UqlHUj3waj1s7fLsTFcY6m
         CJEenDwvVg8XYKZRt2P85Nk1Un/+fw4Iq7Rn0uv7t/hsDac2WEmH65OiHM6aHFGNFCv0
         ObUSExEWpIP9Gq3pzq7Vm1JEwBqM06Wp1AC8QmmjBahNPjtlOvZRrtLXa8aCikw3mgLq
         NWK+pt0yBvlvKycVErqtxKVzS3C3QwUlLNF354nyfu8Gve1UeU/mjuEDiTnPqISm4Ha+
         Z2f2gg3Dhq60wensky+SZ8MBNEgNvFGhEbysBoHKTdB6QnhpXdLvijyphnPe8qAh6VqB
         nVPw==
X-Gm-Message-State: AOAM533JNrpUqFHtXTrsXQzBn00ugXWI+3cuC+96xstWjnrKyjpKa/EP
	jhijIW2liHt2ubBE4SlfTZDN0w==
X-Google-Smtp-Source: ABdhPJwBw13NfSGhhxI1OscL7/lZqhKpxazhnJYLV7KwjIuP1RdS1jLVKqkXTETUKnAIAO30zlZ2fw==
X-Received: by 2002:a05:6870:3046:b0:fc:f47d:4c7d with SMTP id u6-20020a056870304600b000fcf47d4c7dmr781932oau.199.1654642948445;
        Tue, 07 Jun 2022 16:02:28 -0700 (PDT)
Received: from ripper (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id q8-20020a056830440800b0060aeccf6b44sm10415723otv.41.2022.06.07.16.02.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jun 2022 16:02:27 -0700 (PDT)
Date: Tue, 7 Jun 2022 16:04:51 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
	Manu Gautam <mgautam@codeaurora.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/5] phy: qcom-qmp: Add USB4 5NM QMP combo PHY
 registers
Message-ID: <Yp/ZkxNltUgE79nC@ripper>
References: <20220607213543.4057620-1-bjorn.andersson@linaro.org>
 <20220607213543.4057620-4-bjorn.andersson@linaro.org>
 <d9658f54-e594-8f0e-071e-ef627285d281@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d9658f54-e594-8f0e-071e-ef627285d281@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220607_160229_919210_BD1914BA 
X-CRM114-Status: GOOD (  35.77  )
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

On Tue 07 Jun 15:24 PDT 2022, Dmitry Baryshkov wrote:

> On 08/06/2022 00:35, Bjorn Andersson wrote:
> > Add all registers defines from qcom,usb4-5nm-qmp-combo.h of the msm-5.4
> > kernel. Offsets are adjusted to be relative to each sub-block, as we
> > describe the individual pieces in the upstream kernel and "v5_5NM" are
> > injected in the defines to not collide with existing constants.
> > 
> > Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> > ---
> > 
> > Changes since v1:
> > - New patch
> > 
> >   .../qualcomm/phy-qcom-usb4-5nm-qmp-combo.h    | 1547 +++++++++++++++++
> >   1 file changed, 1547 insertions(+)
> >   create mode 100644 drivers/phy/qualcomm/phy-qcom-usb4-5nm-qmp-combo.h
> > 
> > diff --git a/drivers/phy/qualcomm/phy-qcom-usb4-5nm-qmp-combo.h b/drivers/phy/qualcomm/phy-qcom-usb4-5nm-qmp-combo.h
> > new file mode 100644
> > index 000000000000..7be8a50269ec
> > --- /dev/null
> > +++ b/drivers/phy/qualcomm/phy-qcom-usb4-5nm-qmp-combo.h
> > @@ -0,0 +1,1547 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> > +/*
> > + * Copyright (c) 2021, The Linux Foundation. All rights reserved.
> > + */
> > +
> > +#ifndef PHY_QCOM_V5_5NM_QMP_COMBO_USB4_H
> > +#define PHY_QCOM_V5_5NM_QMP_COMBO_USB4_H
> > +
> > +/* USB4-USB3-DP Combo PHY register offsets */
> > +/* Module: USB43DP_COM_USB43DP_COM_USB4_USB3_DP_COM */
> > +#define USB43DP_V5_5NM_COM_PHY_MODE_CTRL				0x00
> > +#define USB43DP_V5_5NM_COM_SW_RESET					0x04
> > +#define USB43DP_V5_5NM_COM_POWER_DOWN_CTRL				0x08
> > +#define USB43DP_V5_5NM_COM_SWI_CTRL					0x0c
> > +#define USB43DP_V5_5NM_COM_TYPEC_CTRL					0x10
> > +#define USB43DP_V5_5NM_COM_TYPEC_PWRDN_CTRL				0x14
> > +#define USB43DP_V5_5NM_COM_DP_BIST_CFG_0				0x18
> > +#define USB43DP_V5_5NM_COM_RESET_OVRD_CTRL1				0x1c
> > +#define USB43DP_V5_5NM_COM_RESET_OVRD_CTRL2				0x20
> > +#define USB43DP_V5_5NM_COM_DBG_CLK_MUX_CTRL				0x24
> > +#define USB43DP_V5_5NM_COM_TYPEC_STATUS					0x28
> > +#define USB43DP_V5_5NM_COM_PLACEHOLDER_STATUS				0x2c
> > +#define USB43DP_V5_5NM_COM_REVISION_ID0					0x30
> > +#define USB43DP_V5_5NM_COM_REVISION_ID1					0x34
> > +#define USB43DP_V5_5NM_COM_REVISION_ID2					0x38
> > +#define USB43DP_V5_5NM_COM_REVISION_ID3					0x3c
> 
> QPHY_V5_DP_COM_foo ?
> 

My first version of the QMP patch used V5 defines and USB worked
sometimes. So I hacked up a thing to dump the phy sequences of the
downstream and upstream kernels, compared the magic numbers and then
tried to fit suitable constants.

But it obviously was a waste of time and I would have to make up a
different naming scheme for the ones that doesn't match the existing
constants - when we could just use the autogenerated files that exist in
the downstream kernels.

[..]
> > +#define USB43DP_V5_5NM_QSERDES_TXA_DEBUG_BUS1				0xf0
> > +#define USB43DP_V5_5NM_QSERDES_TXA_DEBUG_BUS2				0xf4
> > +#define USB43DP_V5_5NM_QSERDES_TXA_DEBUG_BUS3				0xf8
> > +#define USB43DP_V5_5NM_QSERDES_TXA_TX_BKUP_RO_BUS			0xfc
> 
> QSERDES_V5_20_TX_foo ? This looks compatible with the 4 registers that we
> have in the header, but I can not verify the rest of registers
> 

Exactly the point I was making in my reply to the other patch.

Per the documentation this is version 5.0.0, but these register offsets
happens to match the 5.20 defines that we have...

> > +
> > +/* Module: USB43DP_QSERDES_RXA_USB43DP_QSERDES_RXA_USB4_USB3_DP_QMP_RX */
[..]
> > +#define USB43DP_V5_5NM_QSERDES_RXA_RX_BKUP_READ_BUS3_STATUS		0x3e8

And these, doesn't match either V5 or V5_20.

[..]
> > +#define USB43DP_V5_5NM_QSERDES_TXB_TX_BKUP_RO_BUS			0xfc
> 
> What is the difference between _TXA_ and _TXB_ ?
> 

Nothing, I just don't want us to mess around with these files if we can
get them dumped from the register documentation.

> > +
[..]
> > +
> > +/* Module: USB3_PCS_MISC_USB3_PCS_MISC_USB3_PCS_MISC */
> > +#define USB3_V5_5NM_PCS_MISC_TYPEC_CTRL					0x00
> > +#define USB3_V5_5NM_PCS_MISC_TYPEC_PWRDN_CTRL				0x04
> > +#define USB3_V5_5NM_PCS_MISC_PCS_MISC_CONFIG1				0x08
> > +#define USB3_V5_5NM_PCS_MISC_CLAMP_ENABLE				0x0c
> > +#define USB3_V5_5NM_PCS_MISC_TYPEC_STATUS				0x10
> > +#define USB3_V5_5NM_PCS_MISC_PLACEHOLDER_STATUS				0x14
> 
> QPHY_V4_PCS_MISC (or v5)
> 

Perhaps, but then we're just making up those prefixes and hoping for the
best.

[..]
> > +#define USB3_V5_5NM_PCS_EQ_CONFIG2					0x1e0
> > +#define USB3_V5_5NM_PCS_EQ_CONFIG3					0x1e4
> > +#define USB3_V5_5NM_PCS_EQ_CONFIG4					0x1E8
> > +#define USB3_V5_5NM_PCS_EQ_CONFIG5					0x1EC
> 
> This looks like both QPHY_V4_PCS and QPHY_V5_PCS. Most probably we should
> merge them together and add these defines.
> 

Exactly, all these defines looks like defines we already have and if you
pick the wrong one you end up with things not working - or in my case
something that worked sometimes.

> > +
> > +/* Module: USB3_PCS_USB3_USB3_PCS_USB3_USB3_PCS_USB3 */
[..]
> > +#define USB3_V5_5NM_PCS_USB3_RXTERMINATION_DLY_SEL			0x60
> 
> Again, QPHY_V5_PCS_USB w/o the 0x300 offset
> 

Yeah, that extra region needs to be added to the binding and driver.

Regards,
Bjorn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
