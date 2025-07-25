Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E22CC87FCA
	for <linux-phy@archiver.kernel.org>; Fri, 25 Jul 2025 11:15:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hKgPXsc3NbMO9OHME6DiSAqbl9q71rJHqU5lC3BmVFc=; b=NhW69O7Jzvu1Qm
	8J6xqItXrcqluAG+EnmfW38v+b1scGi7JH7sJqshlUMG4HEjuE5O781eDdvlNt9bU5BdB6BprbcS+
	/t0iS0ogxL2/zXuT15xDViiH4LTazDbin35l4P7KRYE0LixE+mQIxTlU2rnCjTIYxFgkaVQVEa4Oc
	PjnUS2tUni7JHa3S7wHngx2lXspOhGoib2n4wTkFVxUVwku24+Ntorj4CBGD2AV5J3mZRY/iMLnUQ
	Y5ydaMXfRN2Zfxq5oXCqUzT9QMoTl8KPi+9Rgx/Ty6uAZ7usmRyxKpiktFJ4G3HMB7Uajv0WpaxGW
	mJfdnWnatxo1i0jpeNPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufGOT-00000009gpj-2s0D;
	Fri, 25 Jul 2025 11:15:17 +0000
Received: from mail-oa1-x2f.google.com ([2001:4860:4864:20::2f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufFYI-00000009Zjs-3Mvo
	for linux-phy@lists.infradead.org;
	Fri, 25 Jul 2025 10:21:23 +0000
Received: by mail-oa1-x2f.google.com with SMTP id 586e51a60fabf-301a83477e5so1511736fac.1
        for <linux-phy@lists.infradead.org>; Fri, 25 Jul 2025 03:21:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753438881; x=1754043681; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=h+W8o1tXdHgTSySdRh3T8J3kSRDgzM5YrIz/Xilyxtc=;
        b=ZC037kd9vhhOoVgN4KDYUL2e60E1P3qmtnz+BCLyIfw+deIXHsV8RLrzIHRtJKBq1V
         nsZK6i5Ezi7ch+uEwVGzS8caAp03TpGASzZugTOQp1QFrZyrUeKoVbhJBBf2lnQyMcRk
         VtDRsm0umCe1aZZv4T/sljApi+UGs6JRpW9CVVhQSXBgdrfBnIAj4TlrB+DHkRtY6JLc
         BQLgMYWm90zJl09zfDg62M0/x2HoXQJXixBZ2Zi/2Pjzm/32N31I5CwGfUODSkv/amAb
         82g7CSFJCHsjs5oQssRqQjvFYX1tCAkwDd8rC7rlEcjm5Hq1FYwKdXlAs0AUgXHLe64e
         BYEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753438881; x=1754043681;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h+W8o1tXdHgTSySdRh3T8J3kSRDgzM5YrIz/Xilyxtc=;
        b=T4m4irIRmhsuJ9/XxxKQZkfyj18387wqZ/tPZ43QheY2wF3nwT7zmWyTw4FavE+v6e
         mp7n/4tSsMbvhvo1Sda8sAPIJOf4yoPYv2MA776M/pGzapNpN8RMon/jHDogD1Fq/DpK
         XvWu1KHxR+CVDPbFJw3AsNxOpKEL7VIk0fVvvKEanYxg9qodjZF6q0pjGufpAukOaQkF
         49N7PHrl442jYvpSazgnUVRIyiSED0cmqMMUieQ/7axJcPJupkAbZUogw0IWc6j45ViX
         uV5SHbqECH1oe8OjNVgmichdVatpjdtZJ2oQuPSAW0SKK7RzT0ZVcSb+c9eX0gHLMG1p
         V9Vw==
X-Forwarded-Encrypted: i=1; AJvYcCVpdP1tYWP9fQquZvwtfRXw1pbjkrFyX5LcSXzdRLS8Zzk6a+KKf9LnSQYOq22RQPSzRlU0Q2473Es=@lists.infradead.org
X-Gm-Message-State: AOJu0YwNuovYRxfp1pzZWnXeXy54tUJfRqlMYQc+6dWed1BleSsMhqiN
	b5yzKBKlsELu1rCymRJUiD/8tS6+w5OIeABmql6nyPNDsMGJ0PKsyYOgMbFXNkfiMK6v+S4QACh
	MzE9eBiXQrer1cnYfxNzKOZ2c4V9llHQDOSt/ZAAdYA==
X-Gm-Gg: ASbGncvBmaIuYe4AR264OBBqp+IPH3N8X8N4+3XOIO5/Xo5U/qLeQRYmNdzca8HYPvY
	PllUa1Oi8nky8Y0yS7z42pujvvFarn4WEx5js8JvjD5GM5PlwEeTsNVdvmGr10nlN2uYuAnEV1j
	TSESfiaUbV8Rxmlppfmj2ZZS9Fj0C1DqBMvW9TzywvsT5oSj3zCwErMEuI+7jVJr7Ts6r86s008
	YwL3vQ5
X-Google-Smtp-Source: AGHT+IF4IPPeqGE8IrCql8xlUV+MwQLcQZYEPRKBMxQR/S2iO04ByExRiRrPSmHU2qswauG+HfoP94tz8CGpjmGBGP0=
X-Received: by 2002:a05:6870:b98:b0:2bc:7e72:2110 with SMTP id
 586e51a60fabf-30701d11d29mr708886fac.13.1753438880979; Fri, 25 Jul 2025
 03:21:20 -0700 (PDT)
MIME-Version: 1.0
References: <20250703-phy-notify-pmstate-v2-0-fc1690439117@linaro.org>
 <20250703-phy-notify-pmstate-v2-1-fc1690439117@linaro.org>
 <e2lhm237c3xtbdjux2wuesq5fwu7nky3w7oq2fnsgn2pqcg5kh@xhxktriooyes>
 <aICKM-ebp9SMAkZ_@vaman> <yaz4ozb55t3pkwd2gj4l4d2hdspdcsqjm2dfsux7lfdxy6lxjl@uae2qz2vjo64>
In-Reply-To: <yaz4ozb55t3pkwd2gj4l4d2hdspdcsqjm2dfsux7lfdxy6lxjl@uae2qz2vjo64>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Fri, 25 Jul 2025 11:21:10 +0100
X-Gm-Features: Ac12FXxv6c8kZOcLBybYFZLsdsetcBPXWMr6v-O5jaqEZC0sK8Rly_5B_kDSrns
Message-ID: <CADrjBPpE0ab3MD6tAS-JQns1HaPfmngRhixkUpqqAfj_2D5nmw@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] phy: add new phy_notify_pmstate() api
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	=?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, kernel-team@android.com, 
	William Mcvicker <willmcvicker@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250725_032122_837705_6B097A9F 
X-CRM114-Status: GOOD (  34.84  )
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

Hi Vinod, Mani & Neil,

Thanks a lot for the valuable review feedback.

On Wed, 23 Jul 2025 at 09:04, Manivannan Sadhasivam <mani@kernel.org> wrote:
>
> On Wed, Jul 23, 2025 at 12:37:31PM GMT, Vinod Koul wrote:
> > On 22-07-25, 22:04, Manivannan Sadhasivam wrote:
> > > On Thu, Jul 03, 2025 at 02:03:22PM GMT, Peter Griffin wrote:
> > > > Add a new phy_notify_pmstate() api that notifies and configures a phy for a
> > > > given PM link state transition.
> > > >
> > > > This is intended to be by phy drivers which need to do some runtime
> > > > configuration of parameters during the transition that can't be handled by
> > > > phy_calibrate() or phy_power_{on|off}().
> > > >
> > > > The first usage of this API is in the Samsung UFS phy that needs to issue
> > > > some register writes when entering and exiting the hibernate link state.
> > > >
> > > > Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> > > > ---
> > > >  drivers/phy/phy-core.c  | 25 +++++++++++++++++++++++++
> > > >  include/linux/phy/phy.h | 25 +++++++++++++++++++++++++
> > > >  2 files changed, 50 insertions(+)
> > > >
> > > > diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
> > > > index 04a5a34e7a950ae94fae915673c25d476fc071c1..0b29bc2c709890d7fc27d1480a35cda6a826fd30 100644
> > > > --- a/drivers/phy/phy-core.c
> > > > +++ b/drivers/phy/phy-core.c
> > > > @@ -520,6 +520,31 @@ int phy_notify_disconnect(struct phy *phy, int port)
> > > >  }
> > > >  EXPORT_SYMBOL_GPL(phy_notify_disconnect);
> > > >
> > > > +/**
> > > > + * phy_notify_pmstate() - phy link state notification
> > >
> > > 'pmstate' doesn't correspond to 'link state'. So how about,
> > > phy_notify_link_state()?
> > >
> > > s/phy/PHY (here and below)

will fix

> > >
> > > > + * @phy: the phy returned by phy_get()
> > > > + * @state: the link state
> > > > + *
> > > > + * Notify the phy of some PM link state transition. Used to notify and
> > >
> > > Link state change is common for the PHY. So remove 'PM'.
> >
> > Is it really link or phy state?

I think it is likely both link and phy state.

Looking at the wording in section '9.5 Hibernate' in mipi unipro 1.8
spec we have phrases such as

9.5 Hibernate "Hibernate is a UniPro state in which the PHY is in the
HIBERNATE_STATE, and the UniPro stack keeps only a minimal set of
features active."

9.5 Figure 99 describes Link hibernation where one Device, typically a
Host Device, initiates Link hibernation with a peer Device.

9.5.1.2 The local PA Layer receives this request and places the M-PHY
Link into hibernate using the PACP protocol (detailed description of
PACP protocol can be found in Section 5.7.7). Once the PA Layer has
successfully hibernated the M-PHY Link, subsequent layers of the local
and peer
UniPro stack (L4 to L2) shall be hibernated by the DME by sending a
<layer-identifer>_LM_HIBERNATE_ENTER.req SAP primitive to the
respective layers.

> >
>
> This is a bit of ambiguity. But as per the spec, Hibern8 is the low power state
> of the M-PHY and Unipro controller.
>
> Maybe, phy_notify_state()?
>

phy_notify_state() seems like a good name. It might be better suited
for other peripherals as well rather than narrowing it with link_state
or pmstate.

Vinod, any thoughts on your preferred name?

> > >

> > > > + * configure the phy accordingly.
> > > > + *
> > > > + * Returns: %0 if successful, a negative error code otherwise
> > > > + */
> > > > +int phy_notify_pmstate(struct phy *phy, enum phy_linkstate state)
> > >
> > > I think you need to use 'int state' and let drivers pass their own link state
> > > values. You cannot have generic link states across all peripherals.
> >
> > I would avoid that, people start overloading this if we let it keep
> > open! I would like to avoid the api -(ab)use
> >
>
> Then we will end up with peripheral specific enums in include/linux/phy/phy.h.
> If you are OK with that, fine with me.

Ok I'll add peripheral specific enums to include/linux/phy/phy.h in
the next version.

Thanks,

Peter

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
