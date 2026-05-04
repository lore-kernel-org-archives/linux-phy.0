Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5A6ECD342C
	for <linux-phy@archiver.kernel.org>; Mon,  4 May 2026 10:21:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Puc6pTvsJlGLbATTDrJGOv8YHGEPTsWBbbwBXHsUdLc=; b=r06EO5hWkg+U4o
	p+dtf6qqR1w2Gn2VR09N4oTZehxeEaupK0RcNtRFhAFt/Uze9O4BZm5ObytGK4HsgPX+miN3SHbe0
	yiqg+TE5eAgYDFUYzklqr+opGuVpvcB0B4vcbz81H9RWlOqMOG6hgNHZiM7gqr4smwfRqePqwWz0j
	1hN+STH1mLAekDKz5xY0QAXDfPsO4ef3xt72Iytz5grQjpdvTdiOX/AuGw17jGQ79/2k1/uFanASV
	cTIJvOc4DEf72TQJ2y7cWCUNy+g+rZbf8ecRa+3weTehtEqKpZ694/Ri5tOQ8yak1/0VT7kueicg1
	B3WgStynv8BzOfXdD8RQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJqQT-0000000CutR-25na;
	Mon, 04 May 2026 10:21:21 +0000
Received: from mail-pg1-x530.google.com ([2607:f8b0:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJqQQ-0000000Cus2-3qcm
	for linux-phy@lists.infradead.org;
	Mon, 04 May 2026 10:21:20 +0000
Received: by mail-pg1-x530.google.com with SMTP id 41be03b00d2f7-c80227b1f6cso306037a12.1
        for <linux-phy@lists.infradead.org>; Mon, 04 May 2026 03:21:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777890075; x=1778494875; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=AzJI2062NMt5980YtQqfww16vShKlaQt7llmD/pl5fY=;
        b=A4SCVC4+mX7kqal0kCUmDC/emAx0KuaDbjRw0kmpaRtWx2SQR0fekYFqLtQa6ikkmq
         UFJgMfM4jRn1+OHe/0UNkvfGyyh/jdD0tqWIzooB5rlhvvqm4TE+2Z1xIHpemxf+rSTT
         k+jrh0jz4aVp0r2sFQ67KO8rOxmk9sKNjYVf1SxkXk5wvwT5HhgiBplgZw516y+MmPBB
         +cwm8ptRuk1uZw96wiL9rEW+ZZgq4vXLOlo52rEyHwvHHXWURQ9kBF+xlSzjhMdEdl+6
         HSsIezki6bDUf5/KbVAqlU5DbP0dMPL0/Sh7wOmHEPAqHhxECvpPZnRmdAocqdayxwqs
         1Krw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777890075; x=1778494875;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AzJI2062NMt5980YtQqfww16vShKlaQt7llmD/pl5fY=;
        b=fQ+ocJxtzfy8xiPtrO6wCEqPJBdRecE7m7jqlnc0zj9Sc65p/ocyZdmyXnrfu2RgbE
         RIITECrJv8T35F6akYH+YQ0dDEJ6jAxwpbPQVRe5anbLRJPacFn53kq/BTAjHr1w5RO5
         ZWVZvCFSl705FUQLtyoQb8yw+6hXPZJwyn5rdzJIytsX6wg3c8lIZo5uekmej87xrXp2
         FWn2ZBkG9/FX55dh/yxTXxbf+acmNVfsBr4FBvAAGIWCGDoDbSIN8t6rLP4WN9pCTx7h
         8lOm2ulSvPaQGhZH1SFbaZoiojrI2qlGuhUbwJPEmcAUI+4MSJsMWX9ZiA98ed2/QFKc
         GWTg==
X-Forwarded-Encrypted: i=1; AFNElJ8zcb5KXAg97cfYHrazs+7dJOd32IR7Vo6i1RT2TfXg7XN14iBykDyLX63029k0cN/bSdbx+EMNt2E=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx2wHZlTftZ++UMLV5XRUaysozLAvN2N9hnk2NBl3RYdtCtLyEe
	fcZWXdeZPkgXzZHPsS7/fAbmFKUPWQ58enO6By1q6Q2hqVP0e5Eb/gBy
X-Gm-Gg: AeBDievD4xSNPmIzz2qkCbGtyOjURESfisupx1mMKpbSJ2hVk/Z51bNo7zmV3K9sbfj
	/nq/2mKehUc9UDvDMXto8RHUnXfrjU2bikKoXJTnnE3hzjEXoPcZBOkhnbmpRmdtTvKoo+Zz27t
	ZZqOHMAY+QuzD4hKpqgs1LhFXI2nSVCYLjCvVuUcFuh2pePxIxEzuGKtnhI2677ibRaHuRYZGO7
	cPzrZRqm8Ek7syFunj/6Cik1sM+1e+Capw8L8sCMst4Hu1TUziPfPPhqiBHEKxgTLgH3JvjVlhh
	ab9i2ajzxM/w1oZlOLm9eGcBUPXwUuUlvO4J5J4mP8Zj4QTEXx0Iro3NEdU4YDRTX/0qiD8hLwu
	jO3wDvparA0yZQqoGPsf3W9Ub+TkS7/+WzFxc5GaL49cU1/dhwDmLOcC/Yqv5OBvkzissbmZuWm
	8cTjV9E2hRI6ZbaIx4A9r2XNX5N/0X6+XySEJnSapIvpZ/
X-Received: by 2002:a05:6a00:340f:b0:835:4291:6975 with SMTP id d2e1a72fcca58-835429173d9mr5262314b3a.39.1777890075240;
        Mon, 04 May 2026 03:21:15 -0700 (PDT)
Received: from localhost ([2001:19f0:8001:1b2d:5400:5ff:fefa:a95d])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8357c4f4530sm4335636b3a.9.2026.05.04.03.21.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 May 2026 03:21:14 -0700 (PDT)
Date: Mon, 4 May 2026 18:20:59 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, 
	Inochi Amaoto <inochiama@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@kernel.org>, 
	Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, 
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, Ze Huang <huang.ze@linux.dev>, 
	Alex Elder <elder@riscstar.com>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev, linux-kernel@vger.kernel.org, 
	linux-hardening@vger.kernel.org, Yixun Lan <dlan@gentoo.org>, Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: phy: Add Spacemit K3 USB3/PCIe comb phy
 support
Message-ID: <afhx6C2EvDbMJc92@inochi.infowork>
References: <20260430022843.1090138-1-inochiama@gmail.com>
 <20260430022843.1090138-2-inochiama@gmail.com>
 <20260504-logical-nice-python-1e1f43@quoll>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260504-logical-nice-python-1e1f43@quoll>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260504_032118_973091_49C0341C 
X-CRM114-Status: GOOD (  18.46  )
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

On Mon, May 04, 2026 at 11:54:11AM +0200, Krzysztof Kozlowski wrote:
> On Thu, Apr 30, 2026 at 10:28:40AM +0800, Inochi Amaoto wrote:
> > +properties:
> > +  compatible:
> > +    const: spacemit,k3-comb-phy
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  "#phy-cells":
> > +    const: 2
> > +    description:
> > +      The first one is phy id, the second one is phy type.
> 
> You could mention here the defines representing supported phy types.
> 

OK.

> > +
> > +  spacemit,apb-spare:
> > +    $ref: /schemas/types.yaml#/definitions/phandle
> > +    description:
> > +      Phandle to APB SPARE system controller interface, used for
> > +      PHY calibration.
> > +
> > +  spacemit,apmu:
> > +    $ref: /schemas/types.yaml#/definitions/phandle-array
> > +    items:
> > +      - items:
> > +          - description: phandle of APMU syscon
> > +          - description: configuration of the PHY lanes
> > +    description: |
> > +      Phandle to control PHY mux configuration. The configuration
> > +      is described as follows:
> > +      bit 4: 0 - PCIe A x8 mode, 1 - PCIe lane share mode
> > +      bit 3: 0 - PCIe A x4 mode, 1 - PCIe A x2 and PCIe B x2 mode
> > +      bit 2: 0 - PCIe C lane 0 is PCIe mode , 1 - USB mode
> > +      bit 1: 0 - PCIe C lane 1 is PCIe mode , 1 - USB mode
> > +      bit 0: 0 - PCIe D lane is PCIe mode , 1 - USB mode
> 
> I assume this device k3-comb-phy handles phys for PCIe A, B, C and D?
> 

In fact it handles phys for PCIe A-E. The mux for the phy of PCIe E 
(the id is 5) is controlled by bit 4. If the comb PHY is in shared
mode, the PCIe E always got one lane.

I think it is good to add a public link for this configuration, but
Spacemit has no opened any document for this publicly....

> > +
> > +      The bit[3:0] is only valid when bit 4 is 1.
> > +
> > +required:
> > +  - compatible
> 
> reg required.
> 

It is fine for me

> > +  - "#phy-cells"
> > +  - spacemit,apb-spare
> > +  - spacemit,apmu
> > +
> > +additionalProperties: false
> 
> Best regards,
> Krzysztof
> 

Regards,
Inochi

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
