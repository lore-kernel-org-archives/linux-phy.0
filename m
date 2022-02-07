Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2FB0C433F5
	for <linux-phy@archiver.kernel.org>; Mon,  7 Feb 2022 08:50:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LrJ19d4Kl+MOvH+o/Eqwm3oWFbea+vhxZL7JuDDgIa4=; b=02FVH3RJXSBbDc
	dRnWZC7RAbUkI8gccJHurK5MGIm3mbL+afF/vnUJmO+hAVVDANKqvVSeyKNiSwSARaloOp4P7TbBk
	GSn1cDCcywQT/dKkiOnmb1XB0PLr+odvGcUHlqHijIdrxqAmyb77QLjmMINz9G4m/YBQbUwd17Nk5
	sI4NrK9i3m3YM8txaQE/aVKGrWGKSiPZMwthe479BwkYK0OQi7/tY9zgaeAgYnLTv52n7b2/tHpyn
	PF9sME+asqxTcXSmfXN3FJJVgGFQ4MpEF9rlZHL0upaQtP5LgKt993xd3GWo/iu2KgjqO9Uhvd4Ww
	w6Gjq/R2wZV/7cxjHSFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGzj1-009QK7-4l; Mon, 07 Feb 2022 08:50:19 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGzio-009QHB-Dt; Mon, 07 Feb 2022 08:50:07 +0000
Received: by mail-ej1-x633.google.com with SMTP id og43so15865681ejc.0;
 Mon, 07 Feb 2022 00:50:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kp8nZg26AuEMvm8QEtueCcP+FrKWg8a9EQmnI5dKMtc=;
 b=i9NmlbplMBKyJptoV+0Ap8F9ZDNfpzM54h3O+whKY55ghEvHjqUCIQCPE3Vc9y4XfN
 SdPnc1zwArIgWqV9fIhoPMKyO73MpLg5XV/24wUbnMuveF3DCkgjjXZZPmMZa/BqjdmO
 kXV+wu2MlLamw4IqRXaFIQ1JWx95IvHQUJhIxh0QUodKAIeE7+qQD86oPdTQjmthaC1n
 HRl4F/EuM83ftwuIKQORLweYYBiWXs/Nh2Hfj0XuPSy0ehR8X4rCHvMQgct1nulZmpEc
 PqpRfpNMmc6oH4pKLjFX5f4aSKl/+WKldpaxPh9IP8Oi3H1NC5cP6acRJ5KG4muZ8KwE
 RayA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kp8nZg26AuEMvm8QEtueCcP+FrKWg8a9EQmnI5dKMtc=;
 b=TJA2NcDQOk6q5zITMQ4c4PF/GLEaLWPDmyjedXDpkYyViUkjfhSGwv0IeUjGhN84y1
 EWkNEkNCPllVMu1bGZ2wCiDOFHTZYCxHtC06bwLGH3s5EhT3i2pN2EjVVKzYeJ4yUx48
 fIVi+p1OLB6WOIIhRQx49UQiWHEdWU2kb9kDkJONEf7H42eIGCivN0wJOinYXWvT9YiW
 WG/ykmJ1U/r5gDiDKGi9dI6z94MI1zB+ctC1sHAFSLQ9ZnzzXTN+uwN58rZt8PmjeVYx
 UEUe17nEoR6b5onlS405LNbYBiwm8EoscWjIgQVrSLJTbO24kizwRBV0VTmtddtuwGw2
 rAZg==
X-Gm-Message-State: AOAM5312BpICl8J5L+m7czKEwMvwxXVZMq4yau1vhSh2dzYxHTac4GtP
 FDql2rfRjKPL/bxIKFrq6fo=
X-Google-Smtp-Source: ABdhPJxIrJn4H6z5Uh+XugYTFQFkEqQT/xm3/GRroGI4nndtytFjOtPRhPBD8MtsV1QLALi1vZOmmQ==
X-Received: by 2002:a17:906:619:: with SMTP id
 s25mr9129849ejb.341.1644223803512; 
 Mon, 07 Feb 2022 00:50:03 -0800 (PST)
Received: from jernej-laptop.localnet (89-212-178-211.dynamic.t-2.net.
 [89.212.178.211])
 by smtp.gmail.com with ESMTPSA id hq28sm3417230ejc.204.2022.02.07.00.50.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Feb 2022 00:50:02 -0800 (PST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Samuel Holland <samuel@sholland.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-staging@lists.linux.dev,
 Yong Deng <yong.deng@magewell.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hans.verkuil@cisco.com>, Chen-Yu Tsai <wens@csie.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v2 02/66] dt-bindings: interconnect: sunxi: Add V3s mbus
 compatible
Date: Mon, 07 Feb 2022 09:50:00 +0100
Message-ID: <8021451.T7Z3S40VBb@jernej-laptop>
In-Reply-To: <YgDbv8aQEOOjwTb0@aptenodytes>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
 <5386b1f5-9e75-4ce3-6641-bd7667c85d42@sholland.org>
 <YgDbv8aQEOOjwTb0@aptenodytes>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220207_005006_518486_7D410A9F 
X-CRM114-Status: GOOD (  19.71  )
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

Hi Paul,

Dne ponedeljek, 07. februar 2022 ob 09:43:43 CET je Paul Kocialkowski 
napisal(a):
> Hi,
> 
> On Sat 05 Feb 22, 14:14, Samuel Holland wrote:
> > On 2/5/22 12:53 PM, Paul Kocialkowski wrote:
> > > Since the V3s uses the internal mbus, document its compatible.
> > > 
> > > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > > ---
> > > 
> > >  .../devicetree/bindings/arm/sunxi/allwinner,sun4i-a10-mbus.yaml  | 1 +
> > >  1 file changed, 1 insertion(+)
> > > 
> > > diff --git
> > > a/Documentation/devicetree/bindings/arm/sunxi/allwinner,sun4i-a10-mbus.
> > > yaml
> > > b/Documentation/devicetree/bindings/arm/sunxi/allwinner,sun4i-a10-mbus.
> > > yaml index 29c9961ee2d8..b67bf9261a6a 100644
> > > ---
> > > a/Documentation/devicetree/bindings/arm/sunxi/allwinner,sun4i-a10-mbus.
> > > yaml +++
> > > b/Documentation/devicetree/bindings/arm/sunxi/allwinner,sun4i-a10-mbus.
> > > yaml> > 
> > > @@ -31,6 +31,7 @@ properties:
> > >        - allwinner,sun5i-a13-mbus
> > >        - allwinner,sun8i-h3-mbus
> > >        - allwinner,sun8i-r40-mbus
> > > 
> > > +      - allwinner,sun8i-v3s-mbus
> > 
> > Please enable the expanded binding added in commit 245578ba9f03
> > ("dt-bindings: arm: sunxi: Expand MBUS binding")[1] by adding the new
> > compatible to the "if" block lower in the file. That way we can add V3S
> > devfreq support in the future without changing that binding.
> 
> I had missed that new driver but surely I will expand the updated binding.
> 
> By the way do you have an explanation about the cell index given to the
> interconnects (after &mbus)?

This is mbus channel. You can find appropriate one checking DRAM driver in U-
Boot, where mbus is configured.

Best regards,
Jernej

> 
> Paul
> 
> > Regards,
> > Samuel
> > 
> > [1]: https://git.kernel.org/torvalds/c/245578ba9f03
> > 
> > >        - allwinner,sun50i-a64-mbus
> > >    
> > >    reg:





-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
