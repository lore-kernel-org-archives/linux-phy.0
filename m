Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4538CD8C82
	for <linux-phy@archiver.kernel.org>; Thu, 13 Nov 2025 15:05:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GCWNrsAi3plVQ2FzIPlKl4ispxycRWxbu1e6cf6e93k=; b=meLOpVKxj7YnMc
	AEoIze7UWQjwHePhSV6JRkYw3elSgbf81IZjyDSbCRb0z4eEdGIS1A3tqag7g2b0vW7nMq0EXZvrs
	e1zn6GW3sXCTfdhihaBkwmAHf0KQMvVJwG0woDr2qgkpZ//BUSAbaH0dTVJpOVFJOP+L1hyQgbXDm
	0eqm6pj2E8pq+ZOHe6pWTpX/ONvmNUHsoePCV3Dt8apygnrULowReh7eZ+00IGQZvuTdpDW5VaD7b
	V1XubQHYP9512Qe7l3j4QhJ0wTgXq1Y+SULzR9sBRuQASGpdReS3yRGXCj3nvD02cQmTFCtyIMCxp
	LrDujd3OCP6bzNBB7IlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJYtC-0000000Aeth-2qxS;
	Thu, 13 Nov 2025 15:05:34 +0000
Received: from mail-vk1-f178.google.com ([209.85.221.178])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJYt9-0000000AetH-19Co
	for linux-phy@lists.infradead.org;
	Thu, 13 Nov 2025 15:05:32 +0000
Received: by mail-vk1-f178.google.com with SMTP id 71dfb90a1353d-5599688d574so271949e0c.2
        for <linux-phy@lists.infradead.org>; Thu, 13 Nov 2025 07:05:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763046330; x=1763651130;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bwlUmhYLedxffSiGPT0olVCco0Fmu8rqsu17IPvjiOY=;
        b=gBx5g09oA7MLQrfTy1Ve5JV2CKWkucmdn5OFwT6I2BGnTRsleOO1jBIoJ35iRetQMy
         soLdzc2VtZHA527CeQ+D8roRES5wIepfIi+ks7ODlmXcqKi/t8+2uTqu+9tk9h41nrrR
         Zoa6Xy3R95Dj/VeQJBX463AfP22OtKUNMc8sT3ACWajyVELGtOnctVox+eREVxSz9t5E
         XLQW/S4Fi2faJbp1cOd81DLkNeewDhoY+KhxkGt2O1WLQ1DN8vIovQzECHzHYn8k9F/i
         LZP1l7XrDxIHHjU8jLbQ+EHFRJbKPTWCugpTyudkuiZUa1oFFputkoz+3h6gRIQxbnMH
         IpvA==
X-Forwarded-Encrypted: i=1; AJvYcCVQwm8L+A82uTDxegHokGdPaIJnhDI9tKML4io7o3cnaD1Mw3hMsHLdtZDhXZ/liu1xRHIzlbxXTQU=@lists.infradead.org
X-Gm-Message-State: AOJu0YwGlzi6ACxk2nDo13n4SDD3FHCx1OXGw0LVGm4xKgGrh81Cunte
	1Fqk4PePiIB+sj2c1XdVtH1Jh5H9bcC4qo+JuD7JXMYZ2Dc9znTwwU+j3elfW1DQ0A0=
X-Gm-Gg: ASbGncuRXzZwtl/UmVj4A4tsiaTQbJgikX49fuUTQN9DEQEe/JVJMZ9Vgo9vC7tObz0
	z8liY7H0B49/1hY3o5a9B6T5x4vxeXR6j3IVPc/DN3EXPveQhGB//ecijocpyUICTQydGiRlRYN
	xomDs8C6lPxmqROMxxWLMBIbkyUr3fw3hmvu+UmvOM+wQVhom8SZRuvCvGenVAF/pz0BQHLAnmL
	ZoifHTo+Jfgx7KctUQcQVp4QtpEDG4g4EMWw85rFj0WeDSId8xSsfWsy/G32yJ0w5IlLH7HZ2en
	9xrpc941G/mHKpJxko+TXfoftPdIodGDBTd8QylB9DNWUdsGZd9IFhV/LG8lqOexXBUlcZfQPkp
	spSc3BCowsPSORC4aIQOWBeceLD+TBFUp/Duz2FHk5XX15CziegHwAKDl+YyT3l9MVwR/0Gx+6o
	mWv9jmDiAY5hiMXz7/Js0CrCpWV8d1xmF6aWNJafsW/2wInyyG
X-Google-Smtp-Source: AGHT+IEcbUqxnAlWkCD2y7Rp1XanYBJIhNT8MJHSBS8SK5FTKEtOrtQvUnBH5y6km1GXlgMfCWGpvw==
X-Received: by 2002:a05:6122:2a05:b0:559:3b8a:70ce with SMTP id 71dfb90a1353d-559e7c82a52mr2356408e0c.7.1763046329525;
        Thu, 13 Nov 2025 07:05:29 -0800 (PST)
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com. [209.85.222.43])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-55b0f499b5dsm837751e0c.24.2025.11.13.07.05.29
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Nov 2025 07:05:29 -0800 (PST)
Received: by mail-ua1-f43.google.com with SMTP id a1e0cc1a2514c-9371f6f2813so307173241.0
        for <linux-phy@lists.infradead.org>; Thu, 13 Nov 2025 07:05:29 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVAodlzBwCqKt2MAUhd5XN0Pm1ONSI10634a5rl4+rppM+IyfK17s0QV38bRRAetty7g7goruVmLes=@lists.infradead.org
X-Received: by 2002:a05:6102:498:b0:5df:8f4:61e6 with SMTP id
 ada2fe7eead31-5df098d049amr1727150137.32.1763046328910; Thu, 13 Nov 2025
 07:05:28 -0800 (PST)
MIME-Version: 1.0
References: <20251023135810.1688415-1-claudiu.beznea.uj@bp.renesas.com> <20251023135810.1688415-8-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20251023135810.1688415-8-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 13 Nov 2025 16:05:17 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVaB15yLcGObzF_zuNKSqioE4ktD_u4xkJ-YJuQiD4fdw@mail.gmail.com>
X-Gm-Features: AWmQ_blisT-axhMgcAs5oMipnI2iYyBHU5ygZXj2OjcwlBET81JTXEQGhpMKWtU
Message-ID: <CAMuHMdVaB15yLcGObzF_zuNKSqioE4ktD_u4xkJ-YJuQiD4fdw@mail.gmail.com>
Subject: Re: [PATCH v8 7/7] arm64: dts: renesas: rzg3s-smarc: Enable USB support
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, p.zabel@pengutronix.de, magnus.damm@gmail.com, 
	yoshihiro.shimoda.uh@renesas.com, biju.das.jz@bp.renesas.com, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_070531_334724_455CCF88 
X-CRM114-Status: GOOD (  14.30  )
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

On Thu, 23 Oct 2025 at 20:41, Claudiu <claudiu.beznea@tuxon.dev> wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>
> Enable USB support (host, device, USB PHYs).
>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Thanks, will queue in renesas-devel for v6.19.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
