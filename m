Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 103ADC636CC
	for <linux-phy@archiver.kernel.org>; Tue,  7 Feb 2023 13:12:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZDWM5W+Ui7vewM1sbtDAjyfBpdPXy+A4/ZK+A8XYOuc=; b=u7x4nEUdCtpa7j
	GSbggdj0u17MKph8we0bdlqlWcch8DdjXZC5LqRzW7wybmfw3Op9XI9fEUSOtuINJtlOQ+irDFk1+
	R+7MiJNBjHbzx7Aj2+VUIBH1ahBtzUrGOybn9OrV9Ov/NdfLfISeVpwQdQMxxx3ORJyPGYqGueJdG
	Ds4RtDtFa3iHOH692z5xWoaj15YS6la8LLHFv8msJpYqjcOA5mJrf4o9DFHvZSxbR6dy5QeLRMSdg
	eCBbd6hx+B1ffw3LFDlI/nvqdnuejEjy5YRYIzAFzhnUeq031fEN9xBmPJO4D5h8z+KDQi5Qr/hku
	c28k5HD9OiR9m+hb4egQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPNln-00CE7V-Bt; Tue, 07 Feb 2023 13:12:23 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPNkL-00CDI3-29
	for linux-phy@lists.infradead.org; Tue, 07 Feb 2023 13:10:54 +0000
Received: by mail-wm1-x331.google.com with SMTP id q8so10990523wmo.5
        for <linux-phy@lists.infradead.org>; Tue, 07 Feb 2023 05:10:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Q8ZVzS/Or3KR8UiUvojWhtaTH2I6W2qDKBwwtWezZUk=;
        b=yIZUOYqhlAxZk+DNz2B3PvW492ztZIOUXQdlhFVkOOAnMrA1273NMH+FM+kBzsx9pE
         OzWxp3ccrFNAgasFi3oDC/eElCmzkIs6Gj7RjAfw8bgkBTd+HA9ayJYDIB8YEBlT5+AX
         r66ns5LAWGWWZas0f7tXU9CrsgTmmUykia5Sh90MC2bWNi85v9SHsuMliu6ZJ55ymV+E
         Jdcloh3wdkXc7atf/i5EeFqI+ci+EAYJh6kQxvBrk4A5OufAfPLBtplISDS5yUiUtY7k
         a8e3vFnOUD9o5aFsAqkALGLUY5k4F13nqOwC6SpLLv4cXaXR8uXi8egBi5ON3jap5hjI
         fbEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q8ZVzS/Or3KR8UiUvojWhtaTH2I6W2qDKBwwtWezZUk=;
        b=Al/cA8Jxa8yp6TgOm+DfV4BKS8vRsXqmTklQNE4UWGBR20MErZQyDPZ6lwItlUPvzP
         /sAlnYEuVl3ECpKtDQDNXZS1zDOx7schZg/z2bDnmFWdVwbdrpuzrL7Q+KEHfyjufZD+
         zZ0npMin05PdtZD7E5FsavnU2uNuGy4JeHWfHX14gupUDQ1ElKbOw/lcibsNpE2nTk8I
         JzGcr6xP5tkRVx/nE4ADgUPXVxIsbc7/9KJsTg4UutrffXkGXNtxEDEXJoYeckK9OoIg
         8NxEhePhEX4qB10gaDaB/L2LDRcfNCtuu8q/qTLLRpCWXSZ+t5zTwcVyrwzGGPrnVlS6
         lkBg==
X-Gm-Message-State: AO0yUKXsDQhPZIlRo0BkP9pGDTRuxij7x0SXwjgKw3PKmFNREGukJkcA
	ybqgU82u/EPT257ovovsiCSp5w==
X-Google-Smtp-Source: AK7set/jLpZMUh5jPBqbq1Zy33IPPDv+VmTQIjMzqb6M7NjqI1BqgoRNB3EtQJGu3TsQTy6Z/h6Lrw==
X-Received: by 2002:a05:600c:3416:b0:3df:57aa:db52 with SMTP id y22-20020a05600c341600b003df57aadb52mr2965431wmp.4.1675775451783;
        Tue, 07 Feb 2023 05:10:51 -0800 (PST)
Received: from linaro.org ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id o37-20020a05600c512500b003c6bbe910fdsm20845580wms.9.2023.02.07.05.10.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Feb 2023 05:10:51 -0800 (PST)
Date: Tue, 7 Feb 2023 15:10:49 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org" <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-phy@lists.infradead.org
Subject: Re: [RFC v3 4/7] phy: qcom: Add QCOM SNPS eUSB2 repeater driver
Message-ID: <Y+JN2d09YrYNRAkH@linaro.org>
References: <20230202133816.4026990-1-abel.vesa@linaro.org>
 <20230202133816.4026990-5-abel.vesa@linaro.org>
 <6f326ed7-6799-b965-fe3a-1f046546ed44@linaro.org>
 <Y+JDQt/T7pXh2/P7@linaro.org>
 <CAA8EJpq8ihMDGiJodA=AtoZOs31R6ceVrVB-9-d-vni4m8+adQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA8EJpq8ihMDGiJodA=AtoZOs31R6ceVrVB-9-d-vni4m8+adQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230207_051053_151017_90971407 
X-CRM114-Status: GOOD (  26.34  )
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

On 23-02-07 15:03:39, Dmitry Baryshkov wrote:
> On Tue, 7 Feb 2023 at 14:25, Abel Vesa <abel.vesa@linaro.org> wrote:
> >
> > On 23-02-03 18:51:13, Dmitry Baryshkov wrote:
> > > On 02/02/2023 15:38, Abel Vesa wrote:
> > > > PM8550B contains a eUSB2 repeater used for making the eUSB2 from
> > > > SM8550 USB 2.0 compliant. This can be modelled SW-wise as a Phy.
> > > > So add a new phy driver for it.
> > > >
> > > > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > > > ---
> > > >   drivers/phy/qualcomm/Kconfig                  |   9 +
> > > >   drivers/phy/qualcomm/Makefile                 |   1 +
> > > >   .../phy/qualcomm/phy-qcom-eusb2-repeater.c    | 278 ++++++++++++++++++
> > > >   3 files changed, 288 insertions(+)
> > > >   create mode 100644 drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
> > > >
> >
> > [ ... ]
> >
> > > > +
> > > > +static int eusb2_repeater_init(struct phy *phy)
> > > > +{
> > > > +   struct eusb2_repeater *rptr = phy_get_drvdata(phy);
> > > > +   const struct eusb2_repeater_init_tbl *init_tbl = rptr->cfg->init_tbl;
> > > > +   int num = rptr->cfg->init_tbl_num;
> > > > +   int ret = 0;
> > > > +   u32 val;
> > > > +   int i;
> > > > +
> > > > +   ret = regulator_bulk_enable(rptr->cfg->num_vregs, rptr->vregs);
> > > > +   if (ret)
> > > > +           return ret;
> > > > +
> > > > +   regmap_update_bits(rptr->regmap, rptr->base + EUSB2_EN_CTL1,
> > > > +                           EUSB2_RPTR_EN, EUSB2_RPTR_EN);
> > > > +
> > > > +   for (i = 0; i < num; i++)
> > > > +           regmap_update_bits(rptr->regmap,
> > > > +                                   rptr->base + init_tbl[i].offset,
> > > > +                                   init_tbl[i].val, init_tbl[i].val);
> > >
> > > I'd move this to a separate function. Then you can use it in the set_mode()
> > > too.
> > >
> >
> > I don't think this is necessary in set_mode.
> 
> It's not necessary. However as set_mode() is also a sequence of simple
> register updates, it might be easy to have everything as an
> offset-mask-value table.

Yeah, but then you would reinit the repeater on set_mode, which should
not be done.

> 
> >
> > > > +
> > > > +   ret = regmap_read_poll_timeout(rptr->regmap,
> > > > +                                   rptr->base + EUSB2_RPTR_STATUS, val,
> > > > +                                   val & RPTR_OK, 10, 5);
> > > > +   if (ret)
> > > > +           dev_err(rptr->dev, "initialization timed-out\n");
> > > > +
> > > > +   return ret;
> > > > +}
> > > > +
> >
> > [ ... ]
> 
> 
> 
> -- 
> With best wishes
> Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
