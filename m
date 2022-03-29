Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C143C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 29 Mar 2022 15:46:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dMn1MuNaS6alxPc23nweqVWcNbKX+/5zIGJQ4gUjtVM=; b=ZMdeOTTwaQdNJ3
	a/fX8DfjP0liqqLy6QiI0abLOfnb8EJPb26NjJW5s6cmKMvCr1DxZRTokDxlk2F0egQucfexeQwah
	ife3QOqycFx1VZmKNFEEo0+lxhfYn6qKjcJJz4iJDRT1GtTBk1isOiqig0q6M0F3pTNUQEO2HdFa7
	SawiMWetvlOHM6G5EUmudCnXfITYDNWoYFGcP0EX0Jt6q1y5Jdh8hZaBt+De8BYSzcDULuPcuMsYd
	9dmv/LAkeHEW5EwtiLI7PqoZbggz17/qXAczolgEv1cbjqjPjtjFKV1908M4IoGTGmPq/lm4LiSCU
	u1Q5Cu7M6X85wjySSFHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZE31-00CnBv-HK; Tue, 29 Mar 2022 15:46:19 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZE2y-00Cn9i-BF
 for linux-phy@lists.infradead.org; Tue, 29 Mar 2022 15:46:18 +0000
Received: by mail-lj1-x22b.google.com with SMTP id s13so6923560ljd.5
 for <linux-phy@lists.infradead.org>; Tue, 29 Mar 2022 08:46:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tzsX+Z/Ob1Uq1Bl1zjv6NpTlPhHDx16mmOiOaqiohic=;
 b=hW0k5QP3S+OQzUO7KyNkwKzpkeUych1UA8cIIOUlFUiS1PALQl5iYa+c5Z2OWI3Et+
 +ASK2QEkL/qYaVTDJ73mN8Iul39x/qiuK6ymqkBWXNfpRs0glgDoqWm4qUGtVJ7wxQB/
 IPrdIDps5eVBIj1pp4R0U4FUR0DckGfB2Nmlc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tzsX+Z/Ob1Uq1Bl1zjv6NpTlPhHDx16mmOiOaqiohic=;
 b=Tfions4w1/g10nNmBBRh1WDFkPpQOU0EUniu46lbdVMJX7Nc7mhRVKK5B4/r0W7unR
 lLSqSaPj1LahfZlh5Chop083iU9Tmv9Um9cQ0Cjp7dkp+H7idmC6DjicrXrqmFg9uMuI
 sY+Pau8hr/mWYxZrh0ZcqN79VirpFNd5vFb3NzzT49/SXTqELx1/Y6msd9DweQH/xUeu
 kH61HXlAXQDHe0if9BideavzCmQHRDIBluyZ74rGYAsf7iUtJMZrHdpLQYTFUiachBok
 MRjpGX1W0BX9Y0QzRMR0R8hQLv7XM2Bc8emjwLS4mbNX7zrI5tHZTxpBbjxoW7J925eL
 j6RA==
X-Gm-Message-State: AOAM531khRyXNJAlvktDLc0c1jDY0AZgVQoP367vcRGz+cThNpnNa9V8
 Zm0r9tC7KzkDoYLygXDSzTT1DXsYg8IGdD27
X-Google-Smtp-Source: ABdhPJzENBRFd/Gn1Lzv1nji7SAjpx8hJOK9+mhIsYWj9CgllpJnLXAYQnMuswHGwjsuwDyCOrjbqA==
X-Received: by 2002:a2e:a790:0:b0:249:906a:c6f1 with SMTP id
 c16-20020a2ea790000000b00249906ac6f1mr3187780ljf.164.1648568771975; 
 Tue, 29 Mar 2022 08:46:11 -0700 (PDT)
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com.
 [209.85.208.176]) by smtp.gmail.com with ESMTPSA id
 e17-20020ac25cb1000000b0044a145eb359sm2018846lfq.138.2022.03.29.08.46.09
 for <linux-phy@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 29 Mar 2022 08:46:10 -0700 (PDT)
Received: by mail-lj1-f176.google.com with SMTP id b43so19461153ljr.10
 for <linux-phy@lists.infradead.org>; Tue, 29 Mar 2022 08:46:09 -0700 (PDT)
X-Received: by 2002:a2e:9b10:0:b0:247:f28c:ffd3 with SMTP id
 u16-20020a2e9b10000000b00247f28cffd3mr3134201lji.152.1648568769399; Tue, 29
 Mar 2022 08:46:09 -0700 (PDT)
MIME-Version: 1.0
References: <20220329125631.2915388-1-geert@linux-m68k.org>
In-Reply-To: <20220329125631.2915388-1-geert@linux-m68k.org>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 29 Mar 2022 08:45:53 -0700
X-Gmail-Original-Message-ID: <CAHk-=wiQGp40pKtXquewb22ZpfiAFi-iWhE220SrpCRXQHy8EA@mail.gmail.com>
Message-ID: <CAHk-=wiQGp40pKtXquewb22ZpfiAFi-iWhE220SrpCRXQHy8EA@mail.gmail.com>
Subject: Re: [PATCH] phy: PHY_FSL_LYNX_28G should depend on ARCH_LAYERSCAPE
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Richard Zhu <hongxing.zhu@nxp.com>, 
 Ioana Ciornei <ioana.ciornei@nxp.com>, "David S . Miller" <davem@davemloft.net>,
 Greg KH <gregkh@linuxfoundation.org>, linux-phy@lists.infradead.org, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_084616_443611_CD1DDDC1 
X-CRM114-Status: GOOD (  10.10  )
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

On Tue, Mar 29, 2022 at 5:56 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> Freescale Layerscape Lynx 28G SerDes PHYs are only present on
> Freescale/NXP Layerscape SoCs.
>
> Move PHY_FSL_LYNX_28G outside the block for ARCH_MXC, as the latter
> is meant for i.MX8 SoCs, which is a different family than Layerscape.
> Add a dependency on ARCH_LAYERSCAPE, to prevent asking the user about
> this driver when configuring a kernel without Layerscape SoC support.

I took this directly, since one of the bugs it fixed was mine.

Mea culpa,
             Linus

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
