Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A576BC4345F
	for <linux-phy@archiver.kernel.org>; Tue, 16 Apr 2024 11:31:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lvRIH0OCK4R5hfRqVr2qgb1wxOX6cnbA0WqvTQBsUIw=; b=DDPPD7TJnS1u25
	tYSGRezngS/F+ppChBVbbJxR/KoI9Ok7y/KeuM+IcaXgNvuO5xaPkPSxxnCEIfU+xW0I3nvSBJM3B
	XLwsRivxplyEYQWan/tq3ySL+hxcinLmO35z2N4WBjYnUs32tKygShaIq7XFuXemn2gTnJ8Xa5XG8
	OU7xeMuwylaF5PB9bn99DlyRake6RgN87s1HCuPOih4t+Ik4dTxCZmAhcIIDpHAPSZk/kyfz8hkj8
	tneb7QbzSRu0XmrCXK5O0deq6NIF0Hcam9cpgj61hQi3sMREUL40HWgNGvrkyIeACsaOhWf4Zsm8V
	x5EajoMzZrQk8WCU4ktQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwh1i-0000000ByNO-1PAj;
	Tue, 16 Apr 2024 11:31:02 +0000
Received: from mail-oo1-xc30.google.com ([2607:f8b0:4864:20::c30])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwh1e-0000000ByLj-1CVv
	for linux-phy@lists.infradead.org;
	Tue, 16 Apr 2024 11:30:59 +0000
Received: by mail-oo1-xc30.google.com with SMTP id 006d021491bc7-5ac5376c4b2so2662092eaf.2
        for <linux-phy@lists.infradead.org>; Tue, 16 Apr 2024 04:30:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713267057; x=1713871857; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=C99IZrp/03ZNQcNBczYUdY5va9+oRjMXPShyuShNODA=;
        b=ItdxAF9jUfrd1xLA66ZQyrfOuOQJ1JQkscaHdKJFrjxynS82IHkkIKMrLyEsId2Sxm
         IwGTp81ICt3oFd7V9DBbDPafq4uB/DHJhR/E9HAPkyurcMhuW0Xj3jr4QPYBdHGJ0JDk
         T0aw/8EjmFRYV/DDfVsKHrgaHVcMS3aLdOre/jyjLPK0ZVNWV/KErrQhZrKhMxoZSm89
         EW7rqeisfVyLK3cjd8ytPuqYTBoZlUauIrK/6fXuCLZEjihAReQKllZsXY+fRRoSH9e3
         4ZgzMKHIkHDLADixE0TzR3c+V8pvcgyr4IoOxTekOW66aDa8b22NVga4/4VyWawd/4Ht
         wpnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713267057; x=1713871857;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=C99IZrp/03ZNQcNBczYUdY5va9+oRjMXPShyuShNODA=;
        b=g9r9Jd0PSsiXSUfa5GTyF/dJgxXfhVlHpgFDmUn6XMSDM4eNsY3uN5qtks54m9pPBh
         NZn/aSMwwfxWz1tcVjtwp1y5TWSEIg4yZfed7eiMXiFwVuBiKeQaewgyjSwa7PZYqi4g
         sZnsI8gplDZ0gsk1Z4wNl9fLsieIwx7Q5YD0uPGPeKoq+2KK7lwBloBKas2yTAaadLRL
         4VPzvl/eDMGln/bWpXaBPYc3z4d2/Tc+1yON97xwoKFbwshOUHbQPmf2xZeiVLzYJMTY
         5GMT2dwOgukqBeq0JQ4zYI4+OcCW4K+7BuaJyvYPlm6jcMPo3lXe6/uZMN93HECn2xZk
         QweA==
X-Forwarded-Encrypted: i=1; AJvYcCWHVZM/fgDBqfkFlxfDaxC3pHpFGtuAwbkYJYPe0ei0SnqeQ31wZnWUW1DgMHSZ/eihBUIG5MFTZBneoNEYFXlzdLEq7qgyJDWkqsGr/w==
X-Gm-Message-State: AOJu0Yw+M4wLCgBy45AvUsTFaw5XomBab/9xkqY2e1xet1/wdtAiLpYk
	x2/scYNzWDKbLV1wy39DLFZN6XyV1WNPL2BJwFirodX1BPI1cxqfYsXLVyGJG7n81olLV1J2fgY
	n9oefk1TPRX6qsM5GENr1UwuqxAfTA7pyIGJpkQ==
X-Google-Smtp-Source: AGHT+IHHl5CehcMHiAGofB/MGumUwf+S69MfIMUrqcYu9S1e+tFfuYa+Ox55juYnjaCvhTxe0MHk6mCUuL3AOdxNCzc=
X-Received: by 2002:a05:6820:250b:b0:5ac:5c78:390e with SMTP id
 cr11-20020a056820250b00b005ac5c78390emr10859247oob.2.1713267056734; Tue, 16
 Apr 2024 04:30:56 -0700 (PDT)
MIME-Version: 1.0
References: <20240404122559.898930-1-peter.griffin@linaro.org>
 <20240404122559.898930-4-peter.griffin@linaro.org> <a82e9859-b74e-44e8-a256-317b8c3fe6b7@kernel.org>
In-Reply-To: <a82e9859-b74e-44e8-a256-317b8c3fe6b7@kernel.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Tue, 16 Apr 2024 12:30:45 +0100
Message-ID: <CADrjBPouYqYJo8m4_=oCXEi+2208+Gt_Gn13Y3-9V587HOzc8A@mail.gmail.com>
Subject: Re: [PATCH 03/17] dt-bindings: ufs: exynos-ufs: Add gs101 compatible
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org, 
	alim.akhtar@samsung.com, avri.altman@wdc.com, bvanassche@acm.org, 
	s.nawrocki@samsung.com, cw00.choi@samsung.com, jejb@linux.ibm.com, 
	martin.petersen@oracle.com, chanho61.park@samsung.com, ebiggers@kernel.org, 
	linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, tudor.ambarus@linaro.org, 
	andre.draszik@linaro.org, saravanak@google.com, willmcvicker@google.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_043058_728492_5EEEAF61 
X-CRM114-Status: GOOD (  15.96  )
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

Hi Krzysztof,

Thanks for the review.

On Fri, 5 Apr 2024 at 08:49, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On 04/04/2024 14:25, Peter Griffin wrote:
> > Add dedicated google,gs101-ufs compatible for Google Tensor gs101
> > SoC.
> >
> > Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> > ---
> >  .../bindings/ufs/samsung,exynos-ufs.yaml      | 51 +++++++++++++++----
> >  1 file changed, 42 insertions(+), 9 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml b/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
> > index b2b509b3944d..898da6c0e94f 100644
> > --- a/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
> > +++ b/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
> > @@ -12,12 +12,10 @@ maintainers:
> >  description: |
> >    Each Samsung UFS host controller instance should have its own node.
> >
> > -allOf:
> > -  - $ref: ufs-common.yaml
> > -
> >  properties:
> >    compatible:
> >      enum:
> > +      - google,gs101-ufs
> >        - samsung,exynos7-ufs
> >        - samsung,exynosautov9-ufs
> >        - samsung,exynosautov9-ufs-vh
> > @@ -38,14 +36,12 @@ properties:
> >        - const: ufsp
> >
> >    clocks:
> > -    items:
> > -      - description: ufs link core clock
> > -      - description: unipro main clock
> > +    minItems: 2
> > +    maxItems: 5
>
> Keep here minItems and:
>
> +            - description: ufs link core clock
> +            - description: unipro main clock
> +            - description: fmp clock
> +            - description: ufs aclk clock
> +            - description: ufs pclk clock
>
> >
> >    clock-names:
> > -    items:
> > -      - const: core_clk
> > -      - const: sclk_unipro_main
> > +    minItems: 2
> > +    maxItems: 5
>
> Similarly here
>
> >
> >    phys:
> >      maxItems: 1
> > @@ -72,6 +68,43 @@ required:
> >    - clocks
> >    - clock-names
> >
> > +allOf:
> > +  - $ref: ufs-common.yaml
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            const: google,gs101-ufs
> > +
> > +    then:
> > +      properties:
> > +        clocks:
>
> Enough is:
> minItems: 5
>
> > +          items:
>
> and drop the items since they are defined in top-level.
>
> Your original code is correct, but with my approach we keep the list
> synced between variants, at least part of the list. If another variant
> appears, then maybe it will go back to your approach, but maybe we can
> still have the same clocks and their order.

Will update like you suggest in v2.

Thanks,

Peter

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
