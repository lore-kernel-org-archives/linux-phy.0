Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D2F8CCF9EE
	for <linux-phy@archiver.kernel.org>; Thu, 30 Oct 2025 02:50:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ODcAvQ6fO0csYl64g3TBh1hcYKwMFAvgLB1sVG8E004=; b=h+eTx6OgpnXZif
	JYncjignG7AyJ8OvVmt79fPZFAgHnteuI85h4qyt16adFKERnAI8PYDNJC4cPZA/XZpHIFfyiPaMX
	sq1nlfvXKTSduwcOjnRI9fc6levtg04VtZ1VutkIGgNEn1iDq8eX5eFXNkYFMF0JtC+OmaRCcheR2
	xq73bxWBMaYhAiPrWdHt1eGNnffkNaTo7WGK3YnvLdpARhiKZq+apPzQ98ZMme6zkYqK1TAMqeaBN
	WwaTdLYgMdf3isrzRS13u8xXOx7DUai+hjWI3L49wylWDulfbh5FMhazh8mQDZtPelsvmHX52bcTo
	2HpftRguvEPKkDtukuqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEIkA-00000003ODp-013Z;
	Thu, 30 Oct 2025 02:50:30 +0000
Received: from mail-yw1-x1130.google.com ([2607:f8b0:4864:20::1130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEIk7-00000003OCp-1hW2
	for linux-phy@lists.infradead.org;
	Thu, 30 Oct 2025 02:50:28 +0000
Received: by mail-yw1-x1130.google.com with SMTP id 00721157ae682-78487b0960bso6725227b3.2
        for <linux-phy@lists.infradead.org>; Wed, 29 Oct 2025 19:50:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761792626; x=1762397426; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=49j9QrYlm4qxZHbvYSYUJsJt0aMp426fig3D6hH+fj0=;
        b=RjFaqvbQQVIDPxnxkMUBRrFD5iXa9xILxEHh+h0XTa6Gy6j7iETuGSV7hZFhSpFb3S
         ZljjAVg3hF+yxyXL+VNrR5F/RKwlEayFTRfSfCeW+2gMqgEwMEyjZmAa/ncWm4UsFSQw
         l6riOl/vpWdsc8n480A/AryB+d8UNe1dHLvnkFTgCuwGPxZAejNd8mHJz2GZ5rsqfZhg
         5OMsQl0JmoU1eDJNa5E53rpfD3gTxZSDmIhC1wCQSoNdjszMY0GcPKsqluzz3SbRfwrv
         aTtdEvL/nqIoNXDRwCYxuKQ+1M1N67c4DMCMlBfjPy6J5Gx8jGTGvwg+p1m68Sb2jSwl
         CO4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761792626; x=1762397426;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=49j9QrYlm4qxZHbvYSYUJsJt0aMp426fig3D6hH+fj0=;
        b=Q5i/LNEG6caKVhXQJ5wZG+oVJQZo3Eou64RQwTz8PH+X8dKLJK4jSScemM7iI6gYTC
         DknYIbdjj17d7pXzI/rl9G4FcMESZ89aYYNi6uJQ/UwcDLGds1goG39fgpbMz+tq9MK/
         rBbqWWzKAckgc/U104g2QsyQRUM4HLk8ZqDTiycBxJICZ80Otw+Yk4RlPsFLlg/E3GeN
         j0XFLM7q7tEjWnrpUrasoGNrraq8melCXa25vBYVFG61iKXX/094S0tNsvV+Vp2KcGKH
         o1IMgKELtnvJGhQuGpr2i1MvKLUFBHP5AoI1BheQb1nxXCO8IecuJCuAb8h6GxHt+tu/
         dneQ==
X-Forwarded-Encrypted: i=1; AJvYcCWwAxjGrXDW0OUFZZqrNow8aA2uE841nRv/TaOm1Ix3IoO514qYeBm3HhNTbWSKis/1cwTVj0HsiRw=@lists.infradead.org
X-Gm-Message-State: AOJu0YwuCbZY/46hnPL1gdFKS1XIB50LI1heS0DIvPHYNo0suVqtgjq2
	IkAL5Fuj5iVCzZkrwdelhnV0kKSlxKkGl7t491PXBcle0oSPaMsQiKSp91KIgqFs71Sms8a1jSI
	Y1ngcPozobnjeIEAdm2OoSdf37Mhk8eY=
X-Gm-Gg: ASbGncvm0YDjf18lVCTTrtg4JYUv37V6Ky+wK8OEC5MfBBh9GOW7/nzDF1nCksUTElE
	6frAkO99/AT5XPOLWmVwbE2H9WOJeLQMaBe9Dknl5IzcUAVD97VdNiA8kxSN/YHrigpeum9nL+V
	RJAkckHE6wun0oX10oowJHI8N6Vs3cUlqzjQ8+Soq8AY2GHk7sDrPObRTcJoVnkygiqWt/6E212
	gtV53iIMiOevhQKfyhqbvTihwp0E5j6oARdpeUj9D+ygczOiGw6HZNu8aNoAIOCF82hmA==
X-Google-Smtp-Source: AGHT+IHyoJ9K1Vnf2DZwS2Kk6JM2P4IoAuduJ5ZhKYBvP2Erk/Knw6rAfD9/QlPYp3ts6NwBBaU6zsVdEYEe2Nqfv+s=
X-Received: by 2002:a05:690c:22c2:b0:784:8a26:b74 with SMTP id
 00721157ae682-78628cf728dmr50871897b3.0.1761792625956; Wed, 29 Oct 2025
 19:50:25 -0700 (PDT)
MIME-Version: 1.0
References: <20251029071435.88-1-kernel@airkyi.com> <20251029071435.88-11-kernel@airkyi.com>
 <CAL411-o6mF71oBeRsJ-OPZNbLegn4iJ_ELN9xVdppTM3ssUPOw@mail.gmail.com>
 <cc8b583a-77ec-4a7f-97cc-2d148f7fee9f@rock-chips.com> <e0c5bda3-7428-49e0-9955-fa23f1e4f35d@rock-chips.com>
 <CAL411-oXfvp-iqN+uRmFHijdmW=1omKwozKOoZ2shxukMHmwPg@mail.gmail.com> <C6253E8254C80B0F+839b71d0-1bd8-40b7-9515-7ce4a1eb8673@airkyi.com>
In-Reply-To: <C6253E8254C80B0F+839b71d0-1bd8-40b7-9515-7ce4a1eb8673@airkyi.com>
From: Peter Chen <hzpeterchen@gmail.com>
Date: Thu, 30 Oct 2025 10:50:15 +0800
X-Gm-Features: AWmQ_bl1mNxPmQHnKmASAzhusTRjlDlCn6q9Kp_CyHmpybtPIUgHFck3iJTK_U4
Message-ID: <CAL411-pULVu4AYybW9oW7kmr4M_kJhdytgBjLPb4y6w_2dj+0w@mail.gmail.com>
Subject: Re: [PATCH v8 10/10] arm64: dts: rockchip: rk3399-evb-ind: Add
 support for DisplayPort
To: Chaoyi Chen <kernel@airkyi.com>
Cc: Chaoyi Chen <chaoyi.chen@rock-chips.com>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>, 
	Andy Yan <andy.yan@rock-chips.com>, Yubing Zhang <yubing.zhang@rock-chips.com>, 
	Frank Wang <frank.wang@rock-chips.com>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Amit Sunil Dhamne <amitsd@google.com>, Dragan Simic <dsimic@manjaro.org>, Johan Jonker <jbx6244@gmail.com>, 
	Diederik de Haas <didi.debian@cknow.org>, Peter Robinson <pbrobinson@gmail.com>, linux-usb@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251029_195027_456883_6F25ACB8 
X-CRM114-Status: GOOD (  20.42  )
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

> > Okay.  My question is basic: USB2 PHY supplies DP/DM, and the DP/DM is
> > short for Type-C connector,
> > and no control is needed for Type-C application.
> > Why is there a remote-endpoint connection between USB2 PHY and Type-C connector?
>
>  From the perspective of Type-C, this should not be added.  Is the approach in v2 correct [0] ?
>

Have you tried debugging based on upstream code?
v2 is correct, but the dts needs to improve.
- There is a remote-endpoint connection for USB role switch between
Type-C connector
device and USB controller device
- There is a remote-endpoint connection for orientation and lane configuration
between Type-C connector device and USB/DP PHY device.

Peter

> [0]: https://lore.kernel.org/all/20250715112456.101-6-kernel@airkyi.com/
>
> Or is the following approach correct?
>
>
> port@0 {
>      reg = <0>;
>
>      usbc_hs: endpoint {
>          remote-endpoint = <&tcphy0>;
>      };
> };
>
> port@1 {
>      reg = <1>;
>
>      usbc_ss: endpoint {
>          remote-endpoint = <&tcphy0>;
>      };
> };
>
> port@2 {
>      reg = <2>;
>
>      usbc_dp: endpoint {
>          remote-endpoint = <&tcphy0_typec_dp>;
>      };
> };
>
>
> >
> >>>>> +                               port@1 {
> >>>>> +                                       reg = <1>;
> >>>>> +
> >>>>> +                                       usbc_ss: endpoint {
> >>>>> + remote-endpoint = <&tcphy0_typec_ss>;
> >>>>> +                                       };
> >>>>> +                               };
> >>>>> +
> >>>>> +                               port@2 {
> >>>>> +                                       reg = <2>;
> >>>>> +
> >>>>> +                                       usbc_dp: endpoint {
> >>>>> + remote-endpoint = <&tcphy0_typec_dp>;
> >>>>> +                                       };
> >>>>> +                               };
> >>>>> +                       };
> >>>>> +               };
> >>>>> +       };
> >>>>> +};
> >>>>> +
> >>>> .....
> >>>>>    &u2phy0 {
> >>>>>           status = "okay";
> >>>>> +
> >>>>> +       port {
> >>>>> +               u2phy0_typec_hs: endpoint {
> >>>>> +                       remote-endpoint = <&usbc_hs>;
> >>>>> +               };
> >>>>> +       };
> >>>>>    };
> >>>>>
> >>>> There is no switch and mux, how to co-work with Type-C?
> >>> I checked the phy-rockchip-inno-usb2.c but did not find any switch or mux. Does this mean that we need to implement them? Thank you.
> >> Wait a minute, actually we have multiple hardware interfaces, one of which is Type-C, eventually connected to USBDPPHY, and the other is micro-usb connected to U2PHY.
> > I assume the Micro-USB connector does not use Type-C/PD IC, is it
> > right? Does it relate to this patch?
> >
> > Best regards,
> > Peter
> >
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
