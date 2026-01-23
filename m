Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3ED8D74ECB
	for <linux-phy@archiver.kernel.org>; Fri, 23 Jan 2026 13:29:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QxPXwtjbzfqyUmb9fLm7QuX+yoznUyCQc3jYGFvgFao=; b=KVBXn7GNeaRvXS
	6uvMpqB6hHeUzKWKypkcz8cM1y5uBe7/3K1CVcDo3yx1Ny8wMi7D7F4/SNJkGZ9AUf9Tley77wZiW
	3I1IWvh7isVSHcwow2iv8hXRhJGI29Hwar+Ss8WdTAbjD2k2qsPRDc4MHJBlACMgl7X5PhAY6JO13
	PsPnlhy5GXhHDpjQCFUfmq9Nf+mgFgawWVQF/Cj2pGhu0ihN0RlLwLSZb9bq2MPNKH4Oka3HHp4L4
	NSFNbwiI7CX/LvqM/JRyxJRL37qc/5f7Qa/yAZEctITCqra1SFgsuJfml3hnVUMHXFOPJCJhMLyXu
	+b3olvoIZuCelWk7f3AA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjHE0-00000008xmC-1w1w;
	Fri, 23 Jan 2026 13:29:20 +0000
Received: from mail-vk1-f179.google.com ([209.85.221.179])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjHDy-00000008xlX-00Un
	for linux-phy@lists.infradead.org;
	Fri, 23 Jan 2026 13:29:19 +0000
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-5635e6b80easo531134e0c.2
        for <linux-phy@lists.infradead.org>; Fri, 23 Jan 2026 05:29:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769174956; x=1769779756;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7uRZVas5P6xxkBpdwTHJQR+xs1A0EdTWP84ona+zohk=;
        b=McQddV+m2f3llGYPon9IIU71uS/FSUkBh3AP7nADIrGRtx+HdxhrEgVr4yl9dkgNsI
         e7UB5CdVg1f3Ml7Mj8MjJLeu9/jHj1UXb8J4ElEothThdKUZ32ULnqYgCm2yCJwJd76U
         5RLjdWbh9BTo61fRsLhTPijeO3tX52wtiiAyGaP7/Bh68ouYMLmQ2M83HMdWk15rMLf5
         lx+eGa4IDLoWigBuz1pl1Oytt6oNpDSRhP5dsBmkSfn3oJy0C4y1gIqtZottpe7Texpk
         VEJ1g1IwQDKkxZJQWhZzUb8eZQSwllI3JoYylwrBL3UQTMEX+YCWQ4sCCJnQ8yE98Nt6
         ospg==
X-Forwarded-Encrypted: i=1; AJvYcCVxZ8tYtAlBzXUtbBcpAL4Kd7J/D3+CRm20p03h2C0CmCYicIaOjiu1W0eLzlvajUPC5UQcqn4afP0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzn4JjCLb1MiZjVhugXZ4KpuFqnyumkZbSo4aag8GDjxCTxtMnI
	UC/kbCYn9kMMeyiQngf12FoZ2KH4CCx02XsDVS5OBZGIbTwjGyO0ULZJvjmeHHMK
X-Gm-Gg: AZuq6aKhKvvOXAW7PnZ0UQxHJR6P9IFgIACGKjNV/XD2LcoW8DOWXiTKYFIRCiETOmW
	F+NqdiamVGiWZGk/zb0FMInn6hbiwS7ZZ+ZljEH04JODF9WBP7JEYOMT04xhrDEPokHvhkpRbas
	DjM/qUYySXRtatXRSbbAEGzWJOfFshSAIYzKnV1TpUd5TFdJf5Q5q7GVkzF0sHkbjmhNQ0yBFO7
	JlYgbv17H0YncXR0lTVXpAyFX4mvkvja5XIfch/sqXVog9GzNrbdwovjl5QM3hLmzGK8iU8yiCU
	RzwnSgnBzJqdsHmXa0tuSFHhAgJqt1pC3+3P5zarlNAF1yX2pcUI/Ex2Cmg+b/vNoXfyAEncj8k
	eDH54nZGrKt0ZnB13hCr6VJv3Xh5dQAL6hR51b9uANhEJxxLdZVOdeHjMyLeahOdcHd2GtTuqe3
	cTyvEG/YNai6nsfLLwbe8GraX2yJtB++/QnyVmn8OeOkTr/bD0
X-Received: by 2002:a05:6122:628f:b0:566:34e3:2476 with SMTP id 71dfb90a1353d-5663ea777b2mr957219e0c.3.1769174956175;
        Fri, 23 Jan 2026 05:29:16 -0800 (PST)
Received: from mail-ua1-f52.google.com (mail-ua1-f52.google.com. [209.85.222.52])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5663fb7e98asm479944e0c.16.2026.01.23.05.29.15
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Jan 2026 05:29:15 -0800 (PST)
Received: by mail-ua1-f52.google.com with SMTP id a1e0cc1a2514c-93f64ae67dbso534615241.1
        for <linux-phy@lists.infradead.org>; Fri, 23 Jan 2026 05:29:15 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVRMJCK4HVVgXSec7Yj02EhsUZVu45KG6SmiF/HxV/XDQ6FLB5Kh8NZzqjp6IQHkrAqcy2IF35gx6w=@lists.infradead.org
X-Received: by 2002:a05:6102:12d9:b0:5f5:5c89:12e8 with SMTP id
 ada2fe7eead31-5f55c891584mr122473137.3.1769174954825; Fri, 23 Jan 2026
 05:29:14 -0800 (PST)
MIME-Version: 1.0
References: <20260118135038.8033-1-marek.vasut+renesas@mailbox.org> <20260118135038.8033-2-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20260118135038.8033-2-marek.vasut+renesas@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 23 Jan 2026 14:29:03 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWW6KwSXqKkYBGVDpbhSn+eznA1Y1-9iPs4jR9W9pJb3A@mail.gmail.com>
X-Gm-Features: AZwV_Qja41EG5GwRG8B7m5dFnkBsNMOHUZuH503OCKweOMnCriK-91TiyZZrpMw
Message-ID: <CAMuHMdWW6KwSXqKkYBGVDpbhSn+eznA1Y1-9iPs4jR9W9pJb3A@mail.gmail.com>
Subject: Re: [PATCH v2 1/9] arm64: dts: renesas: r8a77951: Describe PCIe root ports
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
	devicetree@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260123_052918_174580_01C794CE 
X-CRM114-Status: GOOD (  15.87  )
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

On Sun, 18 Jan 2026 at 14:51, Marek Vasut
<marek.vasut+renesas@mailbox.org> wrote:
> Add nodes which describe the root ports in the PCIe controller DT nodes.
> This can be used together with the pwrctrl driver to control clock and
> power supply to a PCIe slot.
>
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.21.

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
