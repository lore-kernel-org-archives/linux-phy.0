Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CDDF7CCD184
	for <linux-phy@archiver.kernel.org>; Thu,  9 Oct 2025 13:49:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BScTj+QHdFj+KLrbZGDVEcjgu6F0zKdEdkEbID9B9EQ=; b=NjjIXOel4s/uHj
	rUEcLT57ht/y+9JvSoS9VWDnFfGu8rRb403RC9eTq7MMsXoYdDL/IZl4s1pqOhk8SplZNvXKwIQh+
	mqCagRfJOWwCz1gmax0B88u9XLGZbhoeh0Zv4ykMT3cHIJ3sJk9mTe1QNK8fcm9376heOe/qGyQoh
	mQx5ZRuuuNTsjE/IvROWRGW/nGFLOX9J6qPS68scUASqjZegkXNJViIphZggxV1IsmoQtfospDkFA
	xcdEfqwudsxHhDwYMOUOeyCmSUpFAJ85oaKM9sUU5+QG1H3WEgP0efDFYFuT0zrVr17/m974D0i/j
	xhDw5/Yp1ABUlR4MZyzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6r1C-00000006Ga8-2NJh;
	Thu, 09 Oct 2025 13:49:18 +0000
Received: from mail-vk1-f172.google.com ([209.85.221.172])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6r1A-00000006GZX-15qQ
	for linux-phy@lists.infradead.org;
	Thu, 09 Oct 2025 13:49:17 +0000
Received: by mail-vk1-f172.google.com with SMTP id 71dfb90a1353d-54aa30f4093so296111e0c.3
        for <linux-phy@lists.infradead.org>; Thu, 09 Oct 2025 06:49:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760017755; x=1760622555;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rG+VBn74V/FeJGvzOBH4i7MNFu3atTCKtUYOgAi8OVI=;
        b=ZDNAoSzK7AzeqbjJbO5s6rfxDi5wbU2hMB7YOv5rEKsvaOT8sVjpyy4QAEKalJN476
         lOSweca24CrFsJSNVZfmZE6GWd86q68t1wSgegdLQ2ouK7YaVmNim7POYtq/+q6qg9nB
         rFJYTR/leThkeB0bFKQx1d/4lVf0+AO3N6zFguLbTivoWzRqcs26ppW/eDX59qBrlavp
         SwD+dxbtnzqFENs7o+byTn23WqmPlytNq7wbY7+2sEEiQ707pY9lPmHlmtO3DqY9hhpc
         dqcAUNPVlz1qrnVAUSNByPdYl4W1R0mmoVipjav55RdZSuNQZ6CWJTboimVtLS7HXhhI
         1TZQ==
X-Forwarded-Encrypted: i=1; AJvYcCVzcSK+mL1wM9HxH3T1cqkPL1VtNT+0I+weRDWlgIrD3HcwaVbd5Y5ga3OO5ni9lUhGO5N/5OE/v9E=@lists.infradead.org
X-Gm-Message-State: AOJu0YwmKL7jOhAKfEZ9IE7yHP1TdgivR+2RMsqzjP75vE+D9424SkgK
	9M6ROr8sB1gnlV/fW+JK/8cp/6dUm2RB0smVoZ7W4Zsre0xrl3JWldE5oOs//E2J
X-Gm-Gg: ASbGnctiPvnWxiTh2bXRZFic3ztosCJUdia4G5++CGEUFWLHlu/m/GvM/7tj3cD/MV/
	KEH8m9y2TYq4vC7V+euzOBD9LyHdCQmA/Q4nhMnrOsWf4dDop/0l8YSvSkKNRFGBwyZLc6dcZts
	4SAoBlWJAZ1o3NiOpyaaOguZO3Ygy0IggjW+XvdBFfq9mMKaDrVv6TDe5n6cg3NOGPnraRfVlv4
	2qcV3du7XPtD3dmA9xwYO2Mc0ops60lWSrDN0yQ6cAFUp8YoUOOeFAt/q3jnb6vwYgg5p+wZut2
	k2MmKP9cQPAHGXPOwwjmplB0hwt4pfvbJKfaUlIKBUPmXw3MWPOmcX15VWYlSOp7pYmKlHPozZf
	RKWFtHr7xyH+TJvtFrw5wV37jlAVor7jOafrV9pmKrevIpncHM/YGq++H4XMTB6jwtLIxltjTsm
	SWc3F2deaBIYY3qLFBFuc=
X-Google-Smtp-Source: AGHT+IG7foBXSO48ViVZAMKOAiY6z05NTujrMsyL1LgQ4QbNqojVc7Litl2qoVgbwrRprObU7WLr6A==
X-Received: by 2002:a05:6122:3c92:b0:551:c3d0:acb2 with SMTP id 71dfb90a1353d-554b8c1b0d7mr3106123e0c.16.1760017754618;
        Thu, 09 Oct 2025 06:49:14 -0700 (PDT)
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com. [209.85.217.52])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5523ce202bbsm5344203e0c.4.2025.10.09.06.49.14
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Oct 2025 06:49:14 -0700 (PDT)
Received: by mail-vs1-f52.google.com with SMTP id ada2fe7eead31-5c72dce3201so358047137.3
        for <linux-phy@lists.infradead.org>; Thu, 09 Oct 2025 06:49:14 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWllu0ns9bPUuby8suhV7O8+aMIASfnb+xdBYPN9VR727UESs7VKDpZuH2K6ILivXGFu6ter9rd/bI=@lists.infradead.org
X-Received: by 2002:a05:6102:b0f:b0:520:a44f:3ddf with SMTP id
 ada2fe7eead31-5d5e224f3f9mr2430732137.10.1760017754092; Thu, 09 Oct 2025
 06:49:14 -0700 (PDT)
MIME-Version: 1.0
References: <20251001212709.579080-1-tommaso.merciai.xr@bp.renesas.com> <20251001212709.579080-10-tommaso.merciai.xr@bp.renesas.com>
In-Reply-To: <20251001212709.579080-10-tommaso.merciai.xr@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 9 Oct 2025 15:49:02 +0200
X-Gmail-Original-Message-ID: <CAMuHMdV0k0k4EQhQ9C_oPUPno7BsgN3tW3ydLrvzD783SgULyw@mail.gmail.com>
X-Gm-Features: AS18NWBiuLuEjgmzyDSlSzZ5zrYLpzbrdlxBs-yvgfRSKSU9hkobcBub0EljavI
Message-ID: <CAMuHMdV0k0k4EQhQ9C_oPUPno7BsgN3tW3ydLrvzD783SgULyw@mail.gmail.com>
Subject: Re: [PATCH 09/18] clk: renesas: r9a09g047: Add clock and reset
 entries for USB2
To: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
Cc: tomm.merciai@gmail.com, linux-renesas-soc@vger.kernel.org, 
	biju.das.jz@bp.renesas.com, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-clk@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251009_064916_302045_200ED876 
X-CRM114-Status: GOOD (  14.66  )
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
> Add clock and reset entries for USB2.
>
> Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>

I couldn't verify all details, due to the lack of the Additional Manual,
but the rest LGTM, so
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-clk for v6.19.

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
