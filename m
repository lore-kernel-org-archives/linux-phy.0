Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04FD2C4345F
	for <linux-phy@archiver.kernel.org>; Thu, 25 Apr 2024 16:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ncAhfDK2SxDyw7Q2k2RuZRMIr0nwChYWxA8AFoFC6fI=; b=nC1+InPAzf3haB
	Y/ZHdFe5t5nnqmtTC7r1AprGLSYO0UNvg9RvqCBxYZP4+zNs3u2ZYOlb3o4tCbOVq3OIi0z1ZPcnD
	/SKQ9ZYm5YwRCVp5SG+fmU7Uw2LR29/qUpn81X6tO1CNLftv6EGPBJofvyhFkm8t0S1r+klT4Mzwe
	43KRsTmQ7nknuJGkVfofhOL5jRe2J7mq4it0lXEM/PUFVqLHh4pusa/WfEQLE6ZJh5v6DiOzbqAhF
	3mDM6X8kVQKC8rl08cH9iMnDd93ZLT4ASjG7/wzpBx9abd9G2IOjK4zxVjYen1VfnRFp8CM9L686a
	n2M5d/qyOuJ9ky+Qb+XA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s02Ht-00000009Ryx-2gev;
	Thu, 25 Apr 2024 16:49:33 +0000
Received: from mail-oo1-xc32.google.com ([2607:f8b0:4864:20::c32])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s02Hr-00000009Rwc-0yKF
	for linux-phy@lists.infradead.org;
	Thu, 25 Apr 2024 16:49:32 +0000
Received: by mail-oo1-xc32.google.com with SMTP id 006d021491bc7-5acb90b2a82so770729eaf.0
        for <linux-phy@lists.infradead.org>; Thu, 25 Apr 2024 09:49:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714063765; x=1714668565; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=5ukGEv4eef9O4oU5FT2ArMRccMeqiVjOsIZWttkttWM=;
        b=WoTgQE0bAved2U78ahdo1Gvg1RCdVVgVW1XtTqJNh2srR5bOUw0cBOhMfmjGdRORP0
         jCMe21ZuCGmIUeoanppeecoZwsDKGZxjjUOHTKgKmLd41wZGEb96YqcVyj78IHa8F+5Z
         G+oc6bS0CBn/BTuyEQBzxQ3mp4i/lsaX0nBYhle9d+PEAjNd0HxqOgphfSNsYUdFOvcc
         geCc0P6WwK2yYYs/OGrcvLR17oWTo4rQbVk+53itk9QLnDTEu8hUWOBnvdNZ6jSaMeT1
         C0W3PJbJuklnqAdpJvMOEcJaj/tx2BB1YcxU6Axg48p9nDpnq6TYfbFLtf0Lr5aVT0yz
         OsmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714063765; x=1714668565;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5ukGEv4eef9O4oU5FT2ArMRccMeqiVjOsIZWttkttWM=;
        b=mOAXTiNj5SpqYtXsSbAo0FUrhxSbCUFY5zUN76TEYoMus2H2Xc9WBC2h+FFfnVHxEF
         jIaI1E6JNUMn86uyoCzPIxjAkOGvOEaMpreYCOPHfLS9NauvD/gxprSQqgqEkhHjh2oK
         qXvMAr7c7SBjY2pTOdXbiMxUyXIpQRtqXo2SwzttHDbgzuP0gDJ2ehrhsMDzNCZ9fYG5
         qnM/CsThrANWO2dkvUIDpUFwVJ2E12jlX6Q446doqImKfOjqfFRBZNsEGBDGVmcyJRIo
         3pOwEf0XtrKtdZhk/Eqa0jAgl1hysxcj9DQLQP8WY3gL4+xYiFQpEWVBw2Uc3gsXBTbs
         JlwQ==
X-Forwarded-Encrypted: i=1; AJvYcCUBC3CrbCfBa+fm1ZcMk+AvK5RLScl64upCSbldfRNBF+jo3MRHurN+68pNoSTlFjpWQjw526X0OCSC0RKUOvy2dkfuEG81LSE9Bf0J0g==
X-Gm-Message-State: AOJu0YyhVVlr0MHpZSOs4UYN0UUbf6MxohVMkANCuf7ijsOmQomTrpap
	FgOQdNyO0w07i9nCoAPbieOy24RB20Vst7KNtbTH9/FX4N/bw6KNs/CVZBlyDdHtvpdkz8PlzXP
	8T0OKCx6ughr/a2wlsBJVK6j2s5EtSJYOraLPhg==
X-Google-Smtp-Source: AGHT+IHZ1YGe8mBmpi+s6MNal/Tnn6pc3qt4P8KtR6rNBxE+ojMFISn6UD+3xJRSRmAITd10pNraylhnueFfb1V3Mzo=
X-Received: by 2002:a05:6870:4201:b0:22e:e26e:73ad with SMTP id
 u1-20020a056870420100b0022ee26e73admr6867939oac.58.1714063765265; Thu, 25 Apr
 2024 09:49:25 -0700 (PDT)
MIME-Version: 1.0
References: <20240423205006.1785138-1-peter.griffin@linaro.org>
 <20240423205006.1785138-4-peter.griffin@linaro.org> <20240424195318.GA367166-robh@kernel.org>
In-Reply-To: <20240424195318.GA367166-robh@kernel.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Thu, 25 Apr 2024 17:49:11 +0100
Message-ID: <CADrjBPpQE2bMkVUHQHmBBZfRO8Hjb86xPvLQgSvn4BN0guY9xQ@mail.gmail.com>
Subject: Re: [PATCH v2 03/14] dt-bindings: ufs: exynos-ufs: Add gs101 compatible
To: Rob Herring <robh@kernel.org>
Cc: mturquette@baylibre.com, sboyd@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org, 
	alim.akhtar@samsung.com, avri.altman@wdc.com, bvanassche@acm.org, 
	s.nawrocki@samsung.com, cw00.choi@samsung.com, jejb@linux.ibm.com, 
	martin.petersen@oracle.com, James.Bottomley@hansenpartnership.com, 
	ebiggers@kernel.org, linux-scsi@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	tudor.ambarus@linaro.org, andre.draszik@linaro.org, saravanak@google.com, 
	willmcvicker@google.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240425_094931_426109_4C7F031C 
X-CRM114-Status: GOOD (  13.85  )
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

Hi Rob,

Thanks for the review.

On Wed, 24 Apr 2024 at 20:53, Rob Herring <robh@kernel.org> wrote:
>
> On Tue, Apr 23, 2024 at 09:49:55PM +0100, Peter Griffin wrote:
> > Add dedicated google,gs101-ufs compatible for Google Tensor gs101
> > SoC.
> >
> > Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> > ---
> >  .../bindings/ufs/samsung,exynos-ufs.yaml      | 38 +++++++++++++++++--
> >  1 file changed, 35 insertions(+), 3 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml b/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
> > index b2b509b3944d..1179527d29d1 100644
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
> > @@ -38,14 +36,24 @@ properties:
> >        - const: ufsp
> >
> >    clocks:
> > +    minItems: 2
> >      items:
> >        - description: ufs link core clock
> >        - description: unipro main clock
> > +      - description: fmp clock
> > +      - description: ufs aclk clock
> > +      - description: ufs pclk clock
> > +      - description: sysreg clock
> >
> >    clock-names:
> > +    minItems: 2
> >      items:
> >        - const: core_clk
> >        - const: sclk_unipro_main
> > +      - const: fmp
> > +      - const: ufs_aclk
> > +      - const: ufs_pclk
>
> 'ufs_' is redundant.

Will fix.

Thanks,

Peter.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
