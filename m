Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3DBAC433FE
	for <linux-phy@archiver.kernel.org>; Mon,  7 Nov 2022 17:44:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jf0C/PU0jul5t3abgAA53atgFB10GR2Z7F2+/CmatAw=; b=aUq/u3S20Dq+zR
	eo8XYlm2OfkNuSJem/bbJ8kTwL+q5Ap/fzkymgt3DpdOWaVVKnl6e30UbOxcjSVJ+zNaM4BQVGESC
	PvqwMlKkaNxDj6hTO6GOkBkzEIEk3NS8FMwYI0oiW7nJ2MDNVUZSVXZLDGrtHEZ858ZvSxcFUSUNi
	bhSMLT19VB9tQnrACOwnPjK2iIuD1LhRrE/0XXR0LeFY1lE7eZzWdD0HUWPnxFpGGQCFzI9wqGHaE
	wyvWm7uEDJOD/FpBsCtfzq/mk5z9Pw7ASaMNkTyt1Hkci8ktuekPJMsXd8XeC68jvN39MzzFn/jxI
	augWzPBkSTHQRqoyrorQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os6Ag-00GtoU-4g; Mon, 07 Nov 2022 17:44:30 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os6AS-00GtnF-HP; Mon, 07 Nov 2022 17:44:20 +0000
Received: by mail-ej1-x633.google.com with SMTP id f5so32198957ejc.5;
        Mon, 07 Nov 2022 09:44:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7eWjaoBznqoj2kM89mZeHCIKl3bnIdWJhw4wamO+Cyo=;
        b=gQi8cQ8zlsuNHXSruqHBWQD7jzzllZymlS2SVI594uYKR2I2PAK8IcakFFIhp4s0sa
         lplCEl40Iv5NK8qEomSZ2cy2dT8/yxbOf0ZegzW7Itqh3vbYTI5vcrmSCwmdWu49TRZa
         ugoayL7w+pfrzqcrwVljsvaJRq2BaDEQEwOIIPGFQ/p2V0WvBcjfz11VYLswsRuAQqla
         ii7YJSmTazshE9zf1sSJ1Hv559UsUxzgcwgUDKoIF9Ho2yFx+co//WLc7xaKXa6g62T5
         eZLSUZUMAdlB70cagU28SAaXkI35MH7LaNSRCea0EXsT6zX+TtpvUwmZCaV5jpi0Ms5X
         Rhfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7eWjaoBznqoj2kM89mZeHCIKl3bnIdWJhw4wamO+Cyo=;
        b=zWkWkqMrHeA8L6beZTv7arlLwp6JSRDxQh/KkDg5AoJnoqBvdoK7R2IrzEHDRLDovi
         P58kFq6b8AvDjyt8HKAwlbgFQIMvQgPhharTfDE5EQg+QAMl9HWO7c3gvouUxnCPAjld
         LhEU15wL4NxzAXDpyRGsVOT/AuOrb7x3Vxm/HNrd4iVJJUeddRgmKkNqwX4SZksG5N+3
         BbOgsgKPs29MMvnpw9fcZxGTQrxwioBUSvEFuDtZw4lu6q6DAZRbpyGaLwrqqukuw2Pq
         q9oMZoKdtigfhfQ7vCQlCuhp5VGrMndT3FOaPjaBALfRpRYVSt+Z4XFdNabUErh79Hd0
         Fb5g==
X-Gm-Message-State: ACrzQf0yxdtLSbwdFiwCMRqyr0aLG1NoJtXl8SAQYk5aU/bizhduBGHl
	9h1Yt1+GqEzxNBFLBFM4QM4=
X-Google-Smtp-Source: AMsMyM5u1DyyUIQOXXJaLbM+lyY524+zMvhbc3473zPBgeiGrfroqdUpFBfrRcxzqBUKNFxQ4IT/5A==
X-Received: by 2002:a17:907:60c8:b0:78d:bc8d:8457 with SMTP id hv8-20020a17090760c800b0078dbc8d8457mr47448621ejc.418.1667843054363;
        Mon, 07 Nov 2022 09:44:14 -0800 (PST)
Received: from kista.localnet (82-149-19-102.dynamic.telemach.net. [82.149.19.102])
        by smtp.gmail.com with ESMTPSA id u18-20020a509512000000b004611c230bd0sm4565884eda.37.2022.11.07.09.44.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Nov 2022 09:44:14 -0800 (PST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Chen-Yu Tsai <wens@csie.org>, Samuel Holland <samuel@sholland.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Icenowy Zheng <uwu@icenowy.me>, Andre Przywara <andre.przywara@arm.com>
Cc: soc@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, linux-phy@lists.infradead.org, linux-usb@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH v3 10/11] phy: sun4i-usb: Replace types with explicit quirk flags
Date: Mon, 07 Nov 2022 18:44:12 +0100
Message-ID: <2120524.irdbgypaU6@kista>
In-Reply-To: <20221106154826.6687-11-andre.przywara@arm.com>
References: <20221106154826.6687-1-andre.przywara@arm.com> <20221106154826.6687-11-andre.przywara@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221107_094416_621847_BBE46EAF 
X-CRM114-Status: UNSURE (   8.28  )
X-CRM114-Notice: Please train this message.
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

Dne nedelja, 06. november 2022 ob 16:48:25 CET je Andre Przywara napisal(a):
> So far we were assigning some crude "type" (SoC name, really) to each
> Allwinner USB PHY model, then guarding certain quirks based on this.
> This does not only look weird, but gets more or more cumbersome to
> maintain.
> 
> Remove the bogus type names altogether, instead introduce flags for each
> quirk, and explicitly check for them.
> This improves readability, and simplifies future extensions.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>

Thanks for working on that, nice cleanup!

Reviewed-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
