Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 269E0C021B0
	for <linux-phy@archiver.kernel.org>; Wed, 19 Feb 2025 16:15:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PJGFN7QhtixXS6RaJCO/SRr0XfAx1RzsvsqJFYmTbO0=; b=AwRfygzxTbA9hf
	Nckyw8Y+myrJRwscj60aess/YrMe7Tj31PF+ngt6Yq5eHrb1HBP5NNcyryKNP2Jv1RGt1F5Q0E/gz
	V6a2wFyTBsycSbHx6BrweDDz5g3R61Ko15NEIftiNjou1bamwKnefrbC/cKBOV3ipChSlmAG9kPgy
	wtI+OHO9o89dJzyTazeG02xunJfv7VtYSB7NNZ023ekwGf4cF84S0R/0+11bZuwsIgjPuImIXZGPy
	c9e/rsDjdLlOCWv0neZAbEgbnD65vXMj8G2d59okp9wqz0J1RyPaDwjPTj+0ovZ1I9t3KGut91xNR
	eOGqxCeycgp/cAOWheaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkmjr-0000000DlDN-3nPP;
	Wed, 19 Feb 2025 16:15:55 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkmjp-0000000DlCE-1X7f
	for linux-phy@lists.infradead.org;
	Wed, 19 Feb 2025 16:15:54 +0000
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-abb9709b5b5so689931566b.2
        for <linux-phy@lists.infradead.org>; Wed, 19 Feb 2025 08:15:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1739981751; x=1740586551; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=h89HTe/tN0B10+LNl92cdXHG46JoxeywocoM5Bh9DWc=;
        b=bV/zU6nUyIUnzuVwk3W7CYckOUDVnNzaXazT+qFSMffUv6cA104DTkvvagt1UxTU5q
         pHAeujFUjV3eSW8/wuIgEdCtylmAWHlXnTIWdojV1+00/sAYN24jzJ1OtAxFdYv5supG
         lFiC3p0R3aDSaeOuTHlXSzX31HNSbr1i0cV9hwEP/2mjEwUULyj/HRbzj9Sa7Q7i9RS/
         7L1NVhnob2DZGP2lX8pVlZlbX+rP7UC2mer+2I1ailbHjX2YOUD0QkzY+//BYhjidMxw
         xpJN+WOFt1slAVKLOBRkeo8EcnOvmOueM7qB80X6X6+8crUq8EU4jrbCQ55V6pZgog/K
         nS/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739981751; x=1740586551;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=h89HTe/tN0B10+LNl92cdXHG46JoxeywocoM5Bh9DWc=;
        b=M5ISQSB/sWv0Z6ShTJ8+2PHgaHUJ3R4F3K41Cltyfjo9L+KAdxRdi7yJV+jhe8Wrz3
         K9woU6PfZOsEdHECgyTQmlf3l+zFlD6KOSvjG44Df9qQ8Sd0KF732GOSIon6wLRKGO6X
         CDp3qjSYQPNg42ZFnT97RwSaVIU8TD1mhR5Jy+PWSUdfAaSryFXCf9ex2loyJ5InkUM8
         zD/eBMm2o0OcTotj/ZJt4QG8JiKrzR00xe69BdHnS7MuvtsCWYzYE9yIt4DkhOBtlg2t
         jT6bg8CYzEKXgxUupz+Pi+ztRz8AQzOWJxgbkOF9SAOgDCgREgpPX7RhUogXoSmYLyC/
         FEyw==
X-Forwarded-Encrypted: i=1; AJvYcCVJLxTsmaQJ6x06ZJi74sb5SpcfMSSCYyV4giBi/ByUGhOo6hT7u7wJcY2m8jYmTPjDo2UewMmFvE0=@lists.infradead.org
X-Gm-Message-State: AOJu0YxMZn/79fEVGTS9jo4trcyTYGoojAV+TiLJjUaZWd+7y3mwHIDh
	+la28COHoeP/yj8tmlgXmqyzrdlXUahKnQinH8j+bRg0nk+xc5rTYX1ytGh4LDTAQkvV12UxsY3
	K
X-Gm-Gg: ASbGnctPAuL3U9eRWec6wH4Wrn0KP2kTaBqhRKuZcyDigQ3367VpkCu6ql+SsrPhP3V
	lDxuKmgWdb4cBTueXGGfGmD+dRWL/ctmIrbZjswWZuv2qoi9l9mindgNhBGabP2Md+jtOwPsCxa
	uRqr7XWyprDfmrR1astiIhlNLWhRiBNkGPrg5Mb15JbZ5PkbT+PYTDYZSx3eH3iFT+RrWXDkqNL
	/083EaiHj3kleDMNqVg+Ox66txHywDLly51r4R19yJ31kZCkIeLEcNFKT7RitCw2AbbgwWQvjqN
	cjvdoCEgHFIe238jHXrYdvs=
X-Google-Smtp-Source: AGHT+IFiFYqo71zXgrKVNjvpkw6kSC58U3/FltEHaZdAEiHjs1T3I77KF/UZNliKfKxYH2d2UsL+vA==
X-Received: by 2002:a17:906:3118:b0:ab7:da56:af9f with SMTP id a640c23a62f3a-abb711c3de7mr1770699866b.49.1739981751230;
        Wed, 19 Feb 2025 08:15:51 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.25])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abb94e4d0adsm687953066b.56.2025.02.19.08.15.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Feb 2025 08:15:50 -0800 (PST)
Message-ID: <b9b14a25-675e-4e3f-afcc-e82d5ed740a7@tuxon.dev>
Date: Wed, 19 Feb 2025 18:15:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFT 0/5] phy: renesas: rcar-gen3-usb2: Fixes for Renesas
 RZ/G3S
To: yoshihiro.shimoda.uh@renesas.com, vkoul@kernel.org, kishon@kernel.org,
 horms+renesas@verge.net.au, fabrizio.castro@bp.renesas.com, robh@kernel.org
Cc: linux-renesas-soc@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20250219160749.1750797-1-claudiu.beznea.uj@bp.renesas.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20250219160749.1750797-1-claudiu.beznea.uj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250219_081553_407733_77430414 
X-CRM114-Status: GOOD (  13.28  )
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

Adding reference to the missing series (see below).

On 19.02.2025 18:07, Claudiu wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> 
> Hi,
> 
> Series add fixes for the Renesas USB2 PHY driver identified while
> working on the Renesas RZ/G3S USB support. These changes are
> needed for the upcomming RZ/G3S USB support (especially for the
> power management support).
> 
> Series (with [1] on top) was tested on Renesas RZ/G3S with consecutive
> unbind/bind and data transfer tests before/after the unbind/bind.
> 
> The unbind/bind was also tested on the devices with the following
> device trees but w/o checking the data transfer (as I only had
> remote access w/o USB devices connected):
> - r8a7742-iwg21d-q7.dts
> - r8a7743-iwg20d-q7.dts
> - r8a7744-iwg20d-q7.dts
> - r8a7745-iwg22d-sodimm.dts
> - r8a77470-iwg23s-sbc.dts
> - r8a774a1-hihope-rzg2m-ex.dts
> - r8a774b1-hihope-rzg2n-ex.dts
> - r8a774e1-hihope-rzg2h-ex.dts
> - r9a07g043u11-smarc.dts
> - r9a07g044c2-smarc.dts
> - r9a07g044l2-smarc.dts
> - r9a07g054l2-smarc.dts
> - r9a07g043f01-smarc.dts
> 
> Please give it a try also on your devices with [1] on top as well.
> 
> Thank you,
> Claudiu Beznea

[1]
https://lore.kernel.org/all/20250219161239.1751756-1-claudiu.beznea.uj@bp.renesas.com

> 
> Claudiu Beznea (5):
>   phy: renesas: rcar-gen3-usb2: Fix role detection on unbind/bind
>   phy: renesas: rcar-gen3-usb2: Move IRQ request in probe
>   phy: renesas: rcar-gen3-usb2: Lock around hardware registers and
>     driver data
>   phy: renesas: rcar-gen3-usb2: Assert PLL reset on PHY power off
>   phy: renesas: rcar-gen3-usb2: Set timing registers only once
> 
>  drivers/phy/renesas/phy-rcar-gen3-usb2.c | 134 +++++++++++++----------
>  1 file changed, 74 insertions(+), 60 deletions(-)
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
