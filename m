Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63606C636D6
	for <linux-phy@archiver.kernel.org>; Tue,  7 Feb 2023 13:03:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HBvSvBIHTDixyA0yOHAxVUJqJCoVSaKuwVhKLzWhdS4=; b=4I2VGoM22oBOsT
	++zbULzSFungbjnC2vgkI6g2+7v80qdpfyjeTVQtvlzeIy5EtokfBuQeWCOQwdu56fBgWAtynU0j3
	ceXknZ/k5mtBDFCRktSDZuzM1Q25dCVQHcVRO5yBd/dwdGxAjV3VyXVAohZFOvJ5k0ADKh49G4Yuh
	Tz+p2JtR2i1/t2e6xiP3r9/8MjPkYsIroIDoPQ0yC08gMDMTCED1XcsjkGKKGLL2i9dj5XkKTJ13C
	EH+iYzjScAMZOcDTqGJ2pVjQlO2I1LPu5X3bqQYp7Tb9VmJauC8pvp+lF65MqTIWgroQBPFwdJHlR
	Wez/UWCEGxhru5eqTEmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPNdc-00CBqI-P7; Tue, 07 Feb 2023 13:03:56 +0000
Received: from mail-yw1-x112b.google.com ([2607:f8b0:4864:20::112b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPNda-00CBp5-MN
	for linux-phy@lists.infradead.org; Tue, 07 Feb 2023 13:03:56 +0000
Received: by mail-yw1-x112b.google.com with SMTP id 00721157ae682-52a849206adso49222897b3.4
        for <linux-phy@lists.infradead.org>; Tue, 07 Feb 2023 05:03:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=3Xd+/5Y9VTyL6XxO9VJQ62sf2ccIN1/K2xW1odJL8Mo=;
        b=uWLALjwdLTy33c8dzkuoCBH5sSws4MdJkcHWMKUJ68n89+1DYYNLO/nHpKqfwWIKR2
         GckGI3CGQmfFKbnzwTbE2Qlg/MNBvKKT+R2nnvKMGsbVtyf2Cktm5eUoB4AuIOMLyiLB
         jJKLbjIo02MIev/iBsEEKLaGLk5bwNQ4UGh34TjhXCwtdU1EZ+Rq41w6SV4dTniHkUtF
         dMRDd6bxXLGBCT7MNb7tmxxYEZ2tq0EMBkFIu7p6suMbgxIC3QVwk2+1s6Gqjy76gz4g
         rkGhjeWxJC+XXO0qSHQIlqmVNmEaT7tMc25EVhqMhyrufIP95/Gporvw/sIuGz/Tk+Am
         +cFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3Xd+/5Y9VTyL6XxO9VJQ62sf2ccIN1/K2xW1odJL8Mo=;
        b=hQyxXohsC0bOaX2WokPrEptok5nFlsnCQqjratt0nk5GP5oREfu1XGnaAARmSUxAiJ
         Fo5vtXld7YU2xGpqLSAuXf+B0zj3JLfNKAm1hq+deoP3OzyZwVvdD0S3o32rc0+ZsRjC
         9M84jMnl8Uw8/UZ11ZH5ceWKpamQqkx12yvpV0xszS/eyn/uuwyd6MBM4xIy2xcKZFNN
         6kJ2IarQBv2eM1RuCny77TmuPiKBY5Ts91HyB6pzH02MvVI4rxqfEOhEML/rsnHYGgyw
         FqOdyGhxWTDqjuwuR3wZ+Z1ol20saCRunga+udBtRLwF66vmk+PuHfCZOSk1cW9qK2En
         dJ+w==
X-Gm-Message-State: AO0yUKXSc26IU52Xk5h+yzP2dRQR9Z3go5HchknNA1/91jqlb79UfLkt
	HatNBvq4e0ui/1RcCmERQtujnjOeb0quNh2sUsUYiA==
X-Google-Smtp-Source: AK7set80cxJ9Kb2iR+lHvpLM2k5mPTgvJUc4GK/bdANgCT+MK42k1rMj1ZkHPioNfa6E4lhwrcgs9S6voONnZ8inhxw=
X-Received: by 2002:a81:6c81:0:b0:527:af02:df16 with SMTP id
 h123-20020a816c81000000b00527af02df16mr317532ywc.138.1675775030572; Tue, 07
 Feb 2023 05:03:50 -0800 (PST)
MIME-Version: 1.0
References: <20230202133816.4026990-1-abel.vesa@linaro.org>
 <20230202133816.4026990-5-abel.vesa@linaro.org> <6f326ed7-6799-b965-fe3a-1f046546ed44@linaro.org>
 <Y+JDQt/T7pXh2/P7@linaro.org>
In-Reply-To: <Y+JDQt/T7pXh2/P7@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 7 Feb 2023 15:03:39 +0200
Message-ID: <CAA8EJpq8ihMDGiJodA=AtoZOs31R6ceVrVB-9-d-vni4m8+adQ@mail.gmail.com>
Subject: Re: [RFC v3 4/7] phy: qcom: Add QCOM SNPS eUSB2 repeater driver
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Lee Jones <lee@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, "vkoul@kernel.org" <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230207_050354_752388_53349EC7 
X-CRM114-Status: GOOD (  22.11  )
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

On Tue, 7 Feb 2023 at 14:25, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> On 23-02-03 18:51:13, Dmitry Baryshkov wrote:
> > On 02/02/2023 15:38, Abel Vesa wrote:
> > > PM8550B contains a eUSB2 repeater used for making the eUSB2 from
> > > SM8550 USB 2.0 compliant. This can be modelled SW-wise as a Phy.
> > > So add a new phy driver for it.
> > >
> > > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > > ---
> > >   drivers/phy/qualcomm/Kconfig                  |   9 +
> > >   drivers/phy/qualcomm/Makefile                 |   1 +
> > >   .../phy/qualcomm/phy-qcom-eusb2-repeater.c    | 278 ++++++++++++++++++
> > >   3 files changed, 288 insertions(+)
> > >   create mode 100644 drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
> > >
>
> [ ... ]
>
> > > +
> > > +static int eusb2_repeater_init(struct phy *phy)
> > > +{
> > > +   struct eusb2_repeater *rptr = phy_get_drvdata(phy);
> > > +   const struct eusb2_repeater_init_tbl *init_tbl = rptr->cfg->init_tbl;
> > > +   int num = rptr->cfg->init_tbl_num;
> > > +   int ret = 0;
> > > +   u32 val;
> > > +   int i;
> > > +
> > > +   ret = regulator_bulk_enable(rptr->cfg->num_vregs, rptr->vregs);
> > > +   if (ret)
> > > +           return ret;
> > > +
> > > +   regmap_update_bits(rptr->regmap, rptr->base + EUSB2_EN_CTL1,
> > > +                           EUSB2_RPTR_EN, EUSB2_RPTR_EN);
> > > +
> > > +   for (i = 0; i < num; i++)
> > > +           regmap_update_bits(rptr->regmap,
> > > +                                   rptr->base + init_tbl[i].offset,
> > > +                                   init_tbl[i].val, init_tbl[i].val);
> >
> > I'd move this to a separate function. Then you can use it in the set_mode()
> > too.
> >
>
> I don't think this is necessary in set_mode.

It's not necessary. However as set_mode() is also a sequence of simple
register updates, it might be easy to have everything as an
offset-mask-value table.

>
> > > +
> > > +   ret = regmap_read_poll_timeout(rptr->regmap,
> > > +                                   rptr->base + EUSB2_RPTR_STATUS, val,
> > > +                                   val & RPTR_OK, 10, 5);
> > > +   if (ret)
> > > +           dev_err(rptr->dev, "initialization timed-out\n");
> > > +
> > > +   return ret;
> > > +}
> > > +
>
> [ ... ]



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
