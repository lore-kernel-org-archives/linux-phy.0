Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4FF4CCD185
	for <linux-phy@archiver.kernel.org>; Thu,  9 Oct 2025 13:48:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DFsNCYx7jN7ojqylR+fOQGwH12W0210c6k/+y4NCmq0=; b=zJjhee0Dr9u5g2
	IXpbyAqZxrAqIK7Qkg/LgbbWdSsDSH1Z6vef9WcBo1Wpj6nBtLEGxFrtvqcBtwrFISWlOSHcya6Ht
	B7cIx/tZMegmgnk6EDypYv4r4cli9uEvupKdiK4hgWgMjyrJa+WB/c+mRV5dD7GNK2SHHQLYp97qW
	hTSBP60Mr/PK3Bz6msccKOfYAsCQmP/1Vij1gHl7jSG3BWs/ajAbnaLMFiV7mpZOjYPZsePHjtKGy
	xneBm6h462U2xCfu1W2IJeUOzfvBCA+RgyHGeRNPcT5O/LbPUmp9EtmOe09GgZk1OcjOkwJUiLL2z
	814Q1gnqDpIt2cQ7lWeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6r0J-00000006GOD-2e8h;
	Thu, 09 Oct 2025 13:48:23 +0000
Received: from mail-vs1-f41.google.com ([209.85.217.41])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6r0H-00000006GNM-2dWi
	for linux-phy@lists.infradead.org;
	Thu, 09 Oct 2025 13:48:22 +0000
Received: by mail-vs1-f41.google.com with SMTP id ada2fe7eead31-5ce093debf6so987756137.1
        for <linux-phy@lists.infradead.org>; Thu, 09 Oct 2025 06:48:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760017700; x=1760622500;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i8nqM9b1HtBdmvYyNLXKVVMOUuh6yunOxpZ3Ex1Hy4k=;
        b=p2YMfpiZDSINUp7cEWn4odFY75n391kD1evGKxCk8HBwHcR6LjnHfrpPJoW8KC7YFZ
         2ez3DJZc2HTADcQYViWPbnuzu2ph+pyoR3bl1QaFrZscX2AJ43fAStaBmkU4CqryuIFq
         ZQm9McqXpQB39TKyMoOtuY04Slz5/ESIA03psRpB+Ekc/ScQBqdXXsF1Npz1MQ6Vmj7Q
         1bs4UsHluEhaKYIs9RP0s1QB8xhhh2j8TU+5IEZmX+F6qwPdqchszwNGIbvd/gxBSUDq
         Z4JvotyGyk/GbzTbDYrmPOwgyuJq072GA24NV19YoH8yK0KanT9ru0w5wzMJOte4YawC
         6Q0g==
X-Forwarded-Encrypted: i=1; AJvYcCWYNzDF80iRdSX0MmBwaR9TV0SGTX6iVok4Y14cbp2hAPZMMTsmf5YBJkaT35smhlWD0bI6llieN5k=@lists.infradead.org
X-Gm-Message-State: AOJu0Yze6p7EwglzuDc9Ft459bL3esDbCr6Bc5l4+7V2Sv6MrQw42Wal
	5LT9tnA3FhobcKvso5NH5Uo2sb49iXJwMcA5po1fxItKO0lM9b/WU4K4yf4MBB0t
X-Gm-Gg: ASbGncsDcYwVucGTsMX5MywTlL3QXUNLih1lIxn9CzzYl/9PnfRLHcfvnLPYY5vleVL
	RpRMhxsK5G8inGPdjftTfcpTxFBuxzdPRIm30swoBNG3EZbOHvV4FdKWbboPrTzZtMkyLDaOcjA
	GbE8IRaV+Ob7Und69QC24DutsxCjUn6F97gwwuv+fLesgQ81wwGJMaInNwOEmtYU2l1Hud7chL2
	IFKizSrHcIQYqY0idjM87QC9Vz3JDORvpLRsKs2dhYJvCSZP2oOLU1K7twhG35uW2jGNBotf1tN
	mr5DHBzmsCGUdSMEfj2IV/tmV1qWsOvFI2tjTtvG/QvMLaGDkrpml0urQO4ieGV6V21cQ312UOZ
	I/QrKCKPSoxTgN9uv65CqIZom6JIw4IaboKLZTKlUNdMagvHfV96HTXSAHMEDFLdpoQhxO2o+qm
	X7Q1PTpKF/
X-Google-Smtp-Source: AGHT+IHCn+IZ2y2NmbmrG6rY/0VhumcEskqxQNglOaPm2JBh4sYAQpe6AL2zDgUasYzVrgE5NPoqxQ==
X-Received: by 2002:a05:6102:1445:20b0:5d5:f6ae:390e with SMTP id ada2fe7eead31-5d5f6ae3efemr507539137.44.1760017699637;
        Thu, 09 Oct 2025 06:48:19 -0700 (PDT)
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com. [209.85.217.52])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-92eb4ede9e8sm4628413241.15.2025.10.09.06.48.17
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Oct 2025 06:48:17 -0700 (PDT)
Received: by mail-vs1-f52.google.com with SMTP id ada2fe7eead31-5ce093debf6so987720137.1
        for <linux-phy@lists.infradead.org>; Thu, 09 Oct 2025 06:48:17 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUmSBjYZpS6a8tAEIOeiojT5jSFvSgHv7IVAPunAg6tI7pDXACXzRetBFqf6yU7KQcNbmBL3poLfKg=@lists.infradead.org
X-Received: by 2002:a05:6102:418a:b0:520:dbc0:6ac4 with SMTP id
 ada2fe7eead31-5d5e21d04b4mr3948255137.2.1760017697372; Thu, 09 Oct 2025
 06:48:17 -0700 (PDT)
MIME-Version: 1.0
References: <20251001212709.579080-1-tommaso.merciai.xr@bp.renesas.com> <20251001212709.579080-9-tommaso.merciai.xr@bp.renesas.com>
In-Reply-To: <20251001212709.579080-9-tommaso.merciai.xr@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 9 Oct 2025 15:48:06 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUHe7KWiUiLLTYpn2xhq9B-xUoZ6pdnTst0NTMMwuKoow@mail.gmail.com>
X-Gm-Features: AS18NWDDR7-ixkdtwTI6rYs3jroTCBn6LCN-Tix-imcePNZM2CXum5UmVX7CU2c
Message-ID: <CAMuHMdUHe7KWiUiLLTYpn2xhq9B-xUoZ6pdnTst0NTMMwuKoow@mail.gmail.com>
Subject: Re: [PATCH 08/18] dt-bindings: clock: renesas,r9a09g047-cpg: Add USB2
 PHY core clocks
To: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
Cc: tomm.merciai@gmail.com, linux-renesas-soc@vger.kernel.org, 
	biju.das.jz@bp.renesas.com, 
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251009_064821_666094_D598C163 
X-CRM114-Status: GOOD (  14.35  )
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

On Wed, 1 Oct 2025 at 23:28, Tommaso Merciai
<tommaso.merciai.xr@bp.renesas.com> wrote:
> Add definitions for USB2 PHY core clocks in the R9A09G047 CPG DT
> bindings header file.
>
> Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in a branch shared by renesas-clk and renesas-dts.

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
