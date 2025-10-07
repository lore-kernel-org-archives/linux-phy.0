Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03F60CCD185
	for <linux-phy@archiver.kernel.org>; Tue,  7 Oct 2025 09:09:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LujDLqrmZFDDiKj/iKonN0UHun/gAbaBHzvAb8Ipj+c=; b=KoYJYIzaIOBfrp
	ByA5CdnEVYg+rje+cQuFytP0Cp+S7bRvEjJfnvU38kgQSO4Mj1UGtRONS7FK3dB5rscLGICZApFTQ
	DG/GbplsbthMxz4U/hRzx3pCJKgGcXoUS9KIpn2yisecjxwnokZ1qi6nKNAldQ5j5QImUIYaHcr78
	LfKlirU8IEmH14Rpmk04JJdvXoKTwDFoCmuGKDZpFViBI8TiOZdUjw7CnSXdv2jaNBTrinVn4Awby
	ROjjJvmp4V7hFg55RwZF+mcbzi/ZwOrH9Upn4nGX3DSEJN9ErjfO7jztoAy6uML3kph0FWcNUlsrk
	eNOEqcSGeNfjK0YkiVnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v63hb-00000001fqT-3FVa;
	Tue, 07 Oct 2025 09:09:47 +0000
Received: from mail-ot1-x32e.google.com ([2607:f8b0:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v63hY-00000001fpA-2m0x
	for linux-phy@lists.infradead.org;
	Tue, 07 Oct 2025 09:09:46 +0000
Received: by mail-ot1-x32e.google.com with SMTP id 46e09a7af769-7b97ce4fc60so1810544a34.0
        for <linux-phy@lists.infradead.org>; Tue, 07 Oct 2025 02:09:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759828183; x=1760432983; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=k5Gn50jfOxZiiSgXxR/gre/tjvhockNBFkRAG2DI30U=;
        b=Ahbn+AC9A7qC6Jb+7SqDTXMs17YRFJHPw5+1C5Vo5YhAOvOGeYwvfQFiYq+RHiln+u
         mea3ZcVI9VaF6OGV2A+mGw30IAGgdFHQ/mR0LAnRGSDChjqNMxQYhNIy8IzYzCwqy6Zi
         88ykp/FtEvBFGg6gANvHwlKkKORZBkqqJNAnit9Y6of+9cfPQwb06ApcbiJEIAwGjNc8
         xA+/FbdKaD7ofGSoeGLdNBDyLm9Mb0hw0lcxwZP+ffCjmpwAqBvpvadFNQ9OA4KGW0xj
         yvYHHr+7VQT2nEmzNpQtqPduvPHGoyncn4Sv85Y6P4YTRC1iwyLihUQa/Ro2YUGS/+tQ
         mBzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759828183; x=1760432983;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k5Gn50jfOxZiiSgXxR/gre/tjvhockNBFkRAG2DI30U=;
        b=ZuQ9x8gIxuH4y7s8QflJXXGVQ4lLUyDZYXH38llKTws7WSlaMHaQvlbg+hnjP9mXif
         koXD42XANDV24WTJ1cwkj0TOocnWxqb/LMNBBf9ah+x8e2BeHzjJmKxqX1XiCq5Ux9Fh
         dSw7ImmXp61ZXreFmRyQa1Tn3jX9pLXV0CpIIQLnAp4sC7BVm8dtcRbptsJidKnvtmZF
         xPZJ2IurZpdIreNwsDw8LRXItNgXVeWmQjSI2MF7g6o7+peC1gx9mig0B/GRtd8Pyl3O
         mz9k5ITfk69e9Anqsh5s8ee58j9/zfAFSg/NE0CdQSaUQauH4nRs6zRfneMMuvubq6+W
         HdyA==
X-Forwarded-Encrypted: i=1; AJvYcCVXPtumNIHxxlfiMwiin1U9KsMIl7h+whnYsUYS64knzn9Wi9RsYeYEwOEawjmLDGgcNkRJYWNHZNM=@lists.infradead.org
X-Gm-Message-State: AOJu0YxJ66UWqMaAs7pmbeAbWX80BIA54thUG2O8G8xFvS4MyB8fJnnS
	WJOXsDdY+SJoOackATGqX2ua293FxgiZdoY5k87gdZ6oySTws8yNVt+WZYTwL0kiujCF6qapedc
	y1WubOWi2mfeD8+NsZ+UTTCml039P5chjY4O+x6PVBw==
X-Gm-Gg: ASbGnctIHVkuiizHK2f0WM2xa1EcAdLvxwYBu8zAdR1smXL3l01hH4p7uQwwg3pOerA
	2j4Lh6sJV4p0vTF7ufTWYYx4BrkdPEP/swb22gi+aGtp+2bbwlwBTcaTBMQ5z8arTpAnmF4IBKZ
	ufNbApRS/MjPWG8USFIM7mvPitYtPLKMxEdxYbUcKsiHKNqB0yXMsNhKb1VfzuNA7oW1QGjIz+H
	S2jVDHQIDcdQerKkLOQkmTH9yBfpu+f8Oq9DA==
X-Google-Smtp-Source: AGHT+IFtOrLlwJK0/TEgM+f2IS4t9o4gV7fAIVv15sfMLe5yqLK9nGKna5+x4B1VTMirLjZ+oFvqM3iKI6ns6JfL4hs=
X-Received: by 2002:a05:6808:3096:b0:438:2907:2ead with SMTP id
 5614622812f47-43fc18a2091mr6585032b6e.50.1759828182026; Tue, 07 Oct 2025
 02:09:42 -0700 (PDT)
MIME-Version: 1.0
References: <20251006232125.1833979-1-royluo@google.com> <20251006232125.1833979-3-royluo@google.com>
 <8ca61364-df47-41f2-b0d1-f2a8a74ec728@kernel.org>
In-Reply-To: <8ca61364-df47-41f2-b0d1-f2a8a74ec728@kernel.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Tue, 7 Oct 2025 10:09:31 +0100
X-Gm-Features: AS18NWD7ktu7qt-H0DxecJcoZK61ZH3ap7EbdS2ccz0Z-j7ffn7elGuijfKqbpQ
Message-ID: <CADrjBPr7Jp_ZyGv2Krv6iLG0avgFWpcWJEO-Z=cEkhwEY-+z5Q@mail.gmail.com>
Subject: Re: [PATCH v1 2/4] dt-bindings: usb: dwc3: Add Google SoC DWC3 USB
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Roy Luo <royluo@google.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Joy Chakraborty <joychakr@google.com>, 
	Naveen Kumar <mnkumar@google.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_020944_867120_2B7CF503 
X-CRM114-Status: GOOD (  24.44  )
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

Hi Krzysztof & Roy,

Firstly thanks Roy for your patches, it's great to see more Tensor
support being posted upstream!

On Tue, 7 Oct 2025 at 01:44, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On 07/10/2025 08:21, Roy Luo wrote:
> > Document the DWC3 USB bindings for Google Tensor SoCs.
> >
> > Signed-off-by: Roy Luo <royluo@google.com>
> > ---
> >  .../bindings/usb/google,snps-dwc3.yaml        | 144 ++++++++++++++++++
> >  1 file changed, 144 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/usb/google,snps-dwc3.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/usb/google,snps-dwc3.yaml b/Documentation/devicetree/bindings/usb/google,snps-dwc3.yaml
> > new file mode 100644
> > index 000000000000..3e8bcc0c2cef
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/usb/google,snps-dwc3.yaml
> > @@ -0,0 +1,144 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +# Copyright (c) 2025, Google LLC
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/usb/google,snps-dwc3.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Google DWC3 USB SoC Controller
> > +
> > +maintainers:
> > +  - Roy Luo <royluo@google.com>
> > +
> > +description:
> > +  Describes the Google DWC3 USB block, based on Synopsys DWC3 IP.
> > +
> > +properties:
> > +  compatible:
> > +    items:
> > +      - enum:
> > +          - google,lga-dwc3
> > +      - const: google,snps-dwc3
>
>
> There is no such soc as snps, so you grossly misuse other company name
> as name of SoC. Neither lga. Otherwise please point me to the top-level
> bindings describing that SoC.
>
> You need to better describe the hardware here - why this is something
> completely different than GS which. Or switch to existing bindings and
> existing drivers. Did you align this with Peter Griffin?

I think (from what I've seen at least) this is the first submission
for drivers in the Tensor G5 SoC used in Pixel 10 devices (which as I
understand it isn't based on any Samsung IP). Hence the new drivers,
bindings etc.

However the issue is that none of the other base SoC drivers on which
this driver depends currently exist upstream (like clocks, reset
driver, power domains, pinctrl etc). So it's very hard to reason about
the correctness or otherwise of this submission. It is also likely
that when those drivers are upstreamed things could change in the
review process, to how it looks today in the downstream kernel.

So in summary I think to progress with this we need to get the base
Tensor G5 SoC drivers merged first (e.g. boot to console with pinctrl,
basic clock support, reset driver etc). Then we can start adding in
some of the other peripherals like i2c/spi/usb etc and build up the
mainline support from there.

Thanks,

Peter.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
