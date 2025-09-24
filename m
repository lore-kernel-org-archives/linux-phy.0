Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C60E2CAC5AE
	for <linux-phy@archiver.kernel.org>; Wed, 24 Sep 2025 13:58:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uwsaV/w81CXYxetPtffCvZBAfzP78LSRhmYSz08p3fI=; b=B/9eQ+SWFXbLpv
	2C6uUg51tL7Tv8wRDZ9hgdPJp1id4Wkq6IScY9xrekjwQ02iWcXO3DOMY3u8Id2aUZKj+jzKO5GnM
	pP6Uag/cIsTDDTF2hcJpH/GmcH9iJBJGUUbrMZJSEr0QtL7BaVBqdJ43sUvaQV8pieL9czlaFEZ7t
	EszRZqXIKxXZMDOmy6pTbdgAJXzMEIQER8ldqo8bs/ikP3ikMZ6L67BAWthaaxtDq3/kc9l31j231
	MriIcBGsC1GA9yed86MOPQfZY5s/19x0NNUs87P7iyuIlpHHNt7oFZNNgBnnBfi0VkGsebnP6IYTq
	xPlZ0+vnJtMOfuI/p79w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1Q1C-00000000Qms-1rfr;
	Wed, 24 Sep 2025 13:58:50 +0000
Received: from mail-vs1-f46.google.com ([209.85.217.46])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1Q1A-00000000QlG-2DXb
	for linux-phy@lists.infradead.org;
	Wed, 24 Sep 2025 13:58:49 +0000
Received: by mail-vs1-f46.google.com with SMTP id ada2fe7eead31-5a4c7410de9so1446134137.0
        for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 06:58:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758722327; x=1759327127;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JsHa4BTdlxzG8oL6cTUTw8znwap/WVMmft0DoAQSEiM=;
        b=OTY8K1ISHg3kHFGETiZPq8AZMEOfkM7zs7xO4Rd1sUFJM/5UzYSkBH6rCLgSU5aUgw
         43xAgvfM6iF6EIyLSNKW1vWYPw8Hs8rDCYHdLtfxeOLCSky+YTzVoerje3p0jIiNaKHl
         5FJlk7NesF+LAHWw4wceNRGqLezHKTLna7gjWwPWy7WfGD1tr80yKKs5gdFO7ULbj1kk
         w5FmTf8VN7Qv8RQC+B+hWt00vD5R2ZGbjt8RXS1fWB60KTQPcEV+1hx0FM+ikCenj278
         wfTHSejE8Zo0LT14rwT1C7L1iEX0Q2gOAuDgxMAd3wNcwFXf67Nb8MJTiSbmWQiGkq/Y
         t99Q==
X-Forwarded-Encrypted: i=1; AJvYcCWvaHmpV/smVT0z5+Rbs/tlbdY7c7kiaMQ+G5iW1SjhEY+xoDgTsscOeV5tw/scd63pISJSkZE6OAk=@lists.infradead.org
X-Gm-Message-State: AOJu0YzofBjCmm/SNGqj7GRL79pn+sTD6nqyra/S0QoOa/BucCnKDgnY
	WypKzGCON/CsCVL70HA0OfR9MV04dk8nxa57vSSaeiAeXMGAIfF6AtKptfte7/VG
X-Gm-Gg: ASbGnctSYY72RyPsxmJ+PngA+1BVDBjXnomcRoprInfvZh1brvCGVMFEgAHDu6ix4UY
	R3OeJQLr9UgET23J+TlWmIDLLZStR/SZhX9hYRXPTX8ug0KHBQPEqoDcUTEhnz1fld9+YQHlNCl
	l5ATvwAGm9VOeCTauqWakApljcDGdWVd23jpadlmkXH+WgBnzuDb5hqM7r4FimWkGsprM9/ilOL
	0c/Ty3ZjbAzLsfDgdf6dEKCeFz6IzBduuAR6+s9Y7YvDAfZfuDDMCWIAy/E4OzsZTFlCv8xu3Fw
	p3kguOL6Fvzs0zjfNRbkvQahol9ZFtzT3Pq4mLSEZPgZdHhiSzjEQOtHP8MmhWYZlh0jyVSEZTa
	4XThOa7Udl/YFaV8YI702BYGZkH/fNohulj8C2aYbAz943qqBqolM9lvol5iL2gtmLy/yeU9Z2o
	g=
X-Google-Smtp-Source: AGHT+IGcav+Z+7giYFEAJ01eGc1EByVqJbF8VCoNzow/242l6rDi9HdMQoIjxY+Y+/mm3WotwB2Yag==
X-Received: by 2002:a05:6102:4489:b0:555:56e0:f357 with SMTP id ada2fe7eead31-5a5806da14amr2218340137.23.1758722326884;
        Wed, 24 Sep 2025 06:58:46 -0700 (PDT)
Received: from mail-vk1-f169.google.com (mail-vk1-f169.google.com. [209.85.221.169])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-579ed35f674sm4702029137.7.2025.09.24.06.58.46
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Sep 2025 06:58:46 -0700 (PDT)
Received: by mail-vk1-f169.google.com with SMTP id 71dfb90a1353d-54bc08ef45dso1017604e0c.1
        for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 06:58:46 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVJwfRGZNYI18iPlx1wO5KRxf8kVI5l/FPCa2e5ILq9oVtmKSeGyTdnzgGmEOgz7szWjgo9jVKM3qA=@lists.infradead.org
X-Received: by 2002:a05:6122:3115:b0:54a:96ce:786e with SMTP id
 71dfb90a1353d-54bcb0b6125mr2198963e0c.8.1758722326099; Wed, 24 Sep 2025
 06:58:46 -0700 (PDT)
MIME-Version: 1.0
References: <20250910140305.541961-1-claudiu.beznea.uj@bp.renesas.com> <20250910140305.541961-7-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20250910140305.541961-7-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 24 Sep 2025 15:58:34 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVrGbRHXa+13nGTf-S_cgHvDASvDTUSqhiC8updddJUFA@mail.gmail.com>
X-Gm-Features: AS18NWAg1I_dL3GYezwY1MvHo4wl2EuUyKfvLAv7l_tUzF74SJUhWeo0uWlshA8
Message-ID: <CAMuHMdVrGbRHXa+13nGTf-S_cgHvDASvDTUSqhiC8updddJUFA@mail.gmail.com>
Subject: Re: [PATCH v6 6/7] arm64: dts: renesas: r9a08g045: Add USB support
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, p.zabel@pengutronix.de, magnus.damm@gmail.com, 
	yoshihiro.shimoda.uh@renesas.com, biju.das.jz@bp.renesas.com, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_065848_573239_5F81FD3D 
X-CRM114-Status: GOOD (  16.11  )
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

On Wed, 10 Sept 2025 at 16:03, Claudiu <claudiu.beznea@tuxon.dev> wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>
> Add USB nodes for the Renesas RZ/G3S SoC. This consists of PHY reset,
> host and device support.
>
> Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

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
