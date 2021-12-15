Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7B9DC4332F
	for <linux-phy@archiver.kernel.org>; Wed, 15 Dec 2021 22:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C+iJJtNNgaA9RfWOldU9GFBRWBcs+ZG0w8iANxztK0A=; b=tjdY1JHPSuf38X
	kuOHJAquHod+0d94Vmdyxjl6FnKuNAh0nRsupMqibS7To29H/qFKhTT3ffy+PZcX0pBeoZcoiPLq3
	aTk6tMaRvgMyWBfmt8+Hyd346QtWuWAeVt4JMK3GElczPdzfI1x7+78Tb8aQkvNKJ53+fn1OLk/ti
	hj4f8pW5vE3Go5IeNYb8JxivYGmzJd0QNrOOlxy11odgPkJKeFQZKKXnllPKJK7oo/VyDwpcoqlvd
	pVh6CYmnzXF/CYTqBnxFN9cP8rcM+DVqD+LJIQuG8Rzrw8Y1mmVzJOJd38DEqLJW36j+5YHUJIXPk
	WY3+WGBHYwuIwN0dkPNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxcKi-002tdl-CA; Wed, 15 Dec 2021 22:01:08 +0000
Received: from mail-ot1-f54.google.com ([209.85.210.54])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxcKg-002td2-HB
 for linux-phy@lists.infradead.org; Wed, 15 Dec 2021 22:01:07 +0000
Received: by mail-ot1-f54.google.com with SMTP id
 x19-20020a9d7053000000b0055c8b39420bso26652055otj.1
 for <linux-phy@lists.infradead.org>; Wed, 15 Dec 2021 14:01:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=c6UAbQUHh0bkbgJxZcIXfdq0YkmNnPRTN+bKL3wTqVE=;
 b=YGWlWefeHial8V+NhulZms3vKuqnS1h1BPCjqQXCUJLoV2z7WDcAIOv3Wwvon7U8oE
 YeyDrDQFpunksksiBhNXc6Tf55DSOujjbsp9z1UyU2CROkdyKiouTMXSDKvs3tAhzrVp
 VQEF/QjtrMqdD1ZRnfv/tcHtY8I2EkHb51YSNIc8jqlunoShILuG3iRT2O6z+f0LCYfp
 ZOf0GtRJPbbfo6OWWl87hb29HRvRVN9yxTf1YYstm+fK5TCjuTOWz0vcV9/wvm/gOlAr
 x+mEXvBfHFznFzMUD9FR4mOsNIxua8C4JbIFM0eUmKcHI4xty7bWRfqrEqilTKS/xndA
 lh3Q==
X-Gm-Message-State: AOAM530yoKgw781APz7lrc5VLXLzrXWiCDB7r8kyHAOB9PCkEuxs+udN
 hfTppuC0Vn3JeDDarIC9Hw==
X-Google-Smtp-Source: ABdhPJzi1VlR+ywnlwkQqkC5KG28HperBuxf4J3TLrSNqTTA96sfQi7zRIPPudAX/GBAnpVnIBNS/Q==
X-Received: by 2002:a05:6830:2082:: with SMTP id
 y2mr10338584otq.15.1639605665874; 
 Wed, 15 Dec 2021 14:01:05 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id x13sm673179oof.19.2021.12.15.14.01.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Dec 2021 14:01:05 -0800 (PST)
Received: (nullmailer pid 1916578 invoked by uid 1000);
 Wed, 15 Dec 2021 22:01:04 -0000
Date: Wed, 15 Dec 2021 16:01:04 -0600
From: Rob Herring <robh@kernel.org>
To: Marek =?iso-8859-1?Q?Beh=FAn?= <kabel@kernel.org>
Cc: Andrew Lunn <andrew@lunn.ch>, devicetree@vger.kernel.org,
 Vladimir Oltean <olteanv@gmail.com>,
 Holger Brunck <holger.brunck@hitachienergy.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Russell King <rmk+kernel@armlinux.org.uk>, linux-phy@lists.infradead.org,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH devicetree 2/2] dt-bindings: phy: Add
 `tx-amplitude-microvolt` property binding
Message-ID: <YbploCb6sJRN+HJH@robh.at.kernel.org>
References: <20211214233432.22580-1-kabel@kernel.org>
 <20211214233432.22580-3-kabel@kernel.org>
 <YbnJhI2Z3lwC3vF9@lunn.ch> <20211215182222.620606a0@thinkpad>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211215182222.620606a0@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211215_140106_598317_469CDB4F 
X-CRM114-Status: GOOD (  19.03  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Wed, Dec 15, 2021 at 06:22:22PM +0100, Marek Beh=FAn wrote:
> On Wed, 15 Dec 2021 11:55:00 +0100
> Andrew Lunn <andrew@lunn.ch> wrote:
> =

> > On Wed, Dec 15, 2021 at 12:34:32AM +0100, Marek Beh=FAn wrote:
> > > Common PHYs often have the possibility to specify peak-to-peak voltage
> > > on the differential pair - the default voltage sometimes needs to be
> > > changed for a particular board.  =

> > =

> > Hi Marek
> > =

> > Common PHYs are not the only user of this. Ethernet PHYs can also use
> > it, as well as SERDESes embedded within Ethernet switches.
> > =

> > That is why i suggested these properties go into something like
> > serdes.yaml. That can then be included into Common PHY, Ethernet PHYs,
> > switch drivers etc.
> > =

> > Please could you make such a split?
> > =

> >        Andrew
> =

> Hi Andrew,
> =

> and where (into which directory) should this serdes.yaml file go?
> =

> My idea was to put the properties into common PHY and then refer to
> them from other places, so for example this would be put into ethernet
> PHY binding:
> =

>   serdes-tx-amplitude-microvolt:

Why do you need a different name here? =


>     $ref: '/schemas/phy/phy.yaml#/properties/tx-amplitude-microvolt'

This is a pattern I try to avoid generally. Put what's common in 1 =

schema file and then reference all of it from the top level.

Rob

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
