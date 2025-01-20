Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 001EFC02181
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jan 2025 10:52:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NVCnT31qFPeq4ZCZFu723FGqqP2eWfSf9FeY4Ebzhds=; b=NHMTm2obcwBkyt
	lCVxeCKdTc24z+jAsBTeDNnRvz6Dy8EbAAYpAeHc2n7btkDSKFKZfylcRNZqHiqFY3r582sN+AN49
	a9xEayiUAcIzKxwBPD7ZNRCVBZi30PRNThBJ6gzn5Gu4sZemhe8HQjxV/thNi65tPOmLtmfx8EqOV
	rVjJ/+wOsY3sDrrNM5Gs8lV55Pv3zX8Ec4kSsYH+JbJA+mPC8nZBsVI3YBAbo1MGdnJi58ouBsYtE
	AQ6l46vL6UqvZlVonwP5GTf3CVmvEcdQqpZsebhYCrdg0qRXaaJD9pwMGz36oFNwGsDWslngGM2Sc
	gEg1IfS+fTZZrqndtAcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tZpOD-00000005NbF-0yod;
	Mon, 20 Jan 2025 10:52:17 +0000
Received: from mail-vs1-f44.google.com ([209.85.217.44])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tZpOB-00000005Nas-2OSK
	for linux-phy@lists.infradead.org;
	Mon, 20 Jan 2025 10:52:16 +0000
Received: by mail-vs1-f44.google.com with SMTP id ada2fe7eead31-4b68cb2abacso488779137.3
        for <linux-phy@lists.infradead.org>; Mon, 20 Jan 2025 02:52:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737370334; x=1737975134;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nUfDCIfdbaWdrkZkEs1WBIzMBZMPC5SuqVxZEuwtdC8=;
        b=wGvG3eYJaxD7jRQGm9gizlHFhPoKBopPw5d5BSzZYE144YaYydd3B3HmDJDjU43vyy
         VpH7UnpWnZ5BeVZ1cNaQsKcZo/EpG5SwzDn2JwLKXTBXWUfPyi5QZipi08zcVPWh0r8t
         pJ8IbPSehgirijMU95m/DnxuDJZRn69VBluCxo+ijuAUEqxAeBF5Sruq0L6irEQoyxNC
         bZTJ224lj8xVrBRmLQ1E+DfeZbkFesJC0WnQpodms+NrOHewSs3ZoYnCJyQy2C9f2Jrx
         +qjTfA3TkD5ZEnxQ3kr8QrXdqx58X529WZabG4oVD45cHwengLwpBxd3iuRwNTn3MyBc
         4twA==
X-Forwarded-Encrypted: i=1; AJvYcCVzDw34hEw5e9YmUnoXj5LhboouZt95YltXlhyD8xA6s1HE5vkYF8+z64PTk4zERvGS4oqiLKWnMw4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxi9rnKTBotcT29XkFdydlchnvAkDclqXgs/INzmMtalKoY9j/u
	7aQeaxPpcL1K/WwVlPsXTLPe4vrbSMoFdCCkUtCwI22uCQdGWIvIw4FCnIc2
X-Gm-Gg: ASbGncsipxWWb2jmpLXU6LvO704FQZBLS0LNWrqRLyEjqhOBKDwRrYga7lFI1lISZl/
	TCuoeEvf5M1V1W/iNlmr400n4z5ubND9HQdjtPjpKzYN65UHgRDZ7Iu5AkJ1DEyTvvi7aCL9KK3
	1j46Gb+nIAT6ggpUGXNKcHqrFE9+t4NAS939EpyFzxi7JgRuXLHNLMB4qvKq9YcOpBQ4+BKkpyG
	Np1fnj3tAeh4uSfzbCKvBkdgsBSKsPTxahOTiuDEIxIlF8jiOybC+OZYNejFXG2+x5IMmEoEDxJ
	PKfPRfd1q+Fj13Ml2IiXLEtjaWK628pL
X-Google-Smtp-Source: AGHT+IEpjx0g7fJJTe9Qi5iGlWiSHqNG+I8I1VpAS/F3KfghxbPeCq6tXT5mRiiODnpwlbciD7QOUw==
X-Received: by 2002:a05:6102:5110:b0:4af:bf45:39a8 with SMTP id ada2fe7eead31-4b690c9e5a4mr7419540137.16.1737370333968;
        Mon, 20 Jan 2025 02:52:13 -0800 (PST)
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com. [209.85.222.48])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-8642cb08c59sm1812538241.20.2025.01.20.02.52.13
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jan 2025 02:52:13 -0800 (PST)
Received: by mail-ua1-f48.google.com with SMTP id a1e0cc1a2514c-85bb264993cso826681241.1
        for <linux-phy@lists.infradead.org>; Mon, 20 Jan 2025 02:52:13 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWakqMhkca9ITCGrYdFr2ffy/HWDESHpWD53uGsSA848OO8xFAMgMZWvedSpTV4pGZ7iYSbMYLC+R0=@lists.infradead.org
X-Received: by 2002:a05:6102:41a6:b0:4b1:1a11:fe3 with SMTP id
 ada2fe7eead31-4b690bbf701mr9052702137.8.1737370333645; Mon, 20 Jan 2025
 02:52:13 -0800 (PST)
MIME-Version: 1.0
References: <cover.1737118595.git.geert+renesas@glider.be> <84393e59efa7a76b89d4164fd64ca85b8739f6ee.1737118595.git.geert+renesas@glider.be>
In-Reply-To: <84393e59efa7a76b89d4164fd64ca85b8739f6ee.1737118595.git.geert+renesas@glider.be>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 20 Jan 2025 11:52:01 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUrrDTvMeRPCMNc36fkJLRszcSoqPZMG8J9fuXO3P6ObA@mail.gmail.com>
X-Gm-Features: AbW1kvaIn2URdiaybkdWDK2SpQfOiSAmt9-fIQqujHK7eDp6C49TllFDHpTnPOo
Message-ID: <CAMuHMdUrrDTvMeRPCMNc36fkJLRszcSoqPZMG8J9fuXO3P6ObA@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] irqchip: LAN966X_OIC should depend on MFD_LAN966X_PCI
To: Herve Codina <herve.codina@bootlin.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, devicetree@vger.kernel.org, 
	linux-phy@lists.infradead.org, Geert Uytterhoeven <geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250120_025215_610299_53FBA082 
X-CRM114-Status: GOOD (  20.69  )
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

On Fri, 17 Jan 2025 at 14:04, Geert Uytterhoeven
<geert+renesas@glider.be> wrote:
> The Microchip LAN966x outband interrupt controller is only present on
> Microchip LAN966x SoCs, and only used in PCI endpoint mode.  Hence add a
> dependency on MCHP_LAN966X_PCI, to prevent asking the user about this
> driver when configuring a kernel without Microchip LAN966x PCIe support.
>
> Fixes: 3e3a7b35332924c8 ("irqchip: Add support for LAN966x OIC")
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
> v2:
>   - Drop dependency on SOC_LAN966, as the OIC is used only in LAN966x
>     PCI endpoint mode,
>   - Replace MFD_LAN966X_PCI by MCHP_LAN966X_PCI, as the latter is the
>     symbol that ended upstream.

Bummer, I messed up the subject here as well...

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
