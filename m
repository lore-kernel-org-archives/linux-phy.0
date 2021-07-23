Return-Path: <SRS0=Vlgz=MP=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 263CEC41537
	for <linux-phy@archiver.kernel.org>; Fri, 23 Jul 2021 16:13:58 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BF85860F41
	for <linux-phy@archiver.kernel.org>; Fri, 23 Jul 2021 16:13:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org BF85860F41
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YiWBXQu/L01r5k9RX85Br/toO/coCGwDsVIMW80X42M=; b=cW+OSMY9P8ygcH
	w32Ltj/EVWI2qRW8nSGupbQop6V8+Y/6gDT7qUmTMlkgzbuZ8fQb/SNL9toCY/ty+BUCYmgP7geUH
	g0PBrjsRbQ8e8dK8klZeS5hz+TA89vn0upMFdP+pnuSpH9FRRTQUjh4SgJtZXBF4GosZgWtxYB+oB
	MagKsrol7zt7Z+J8ZFml1QXhV8KS1XuNwPJLSE/Ojw4GH/+rL7m3ZaoB7rhEYa/Nc7MyaHMl9I6PM
	4PpZPYZ6WO33xZ8GEYmX3ZrR9SAjJP94qDW9/qkA3GkaFD3D8byLsAeEjDxC7boUcvn7g2jVTFmGT
	TjSsSzhc5Nbch5q+A7Vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m6xoD-005KEc-AS; Fri, 23 Jul 2021 16:13:57 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m6xoB-005KEA-I8
 for linux-phy@lists.infradead.org; Fri, 23 Jul 2021 16:13:56 +0000
Received: by mail-lf1-x12c.google.com with SMTP id d18so2929020lfb.6
 for <linux-phy@lists.infradead.org>; Fri, 23 Jul 2021 09:13:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZG8EM0ibWzAiSvgD/0B7tPbf0jFZ6hKm+43FjwPiK0k=;
 b=rlD9kU3EsUgSAXXwAp5ElP1YPzxO3q0z7M6zy8r9F8vzIGyuKKeFnlfR9ePbi3O+MU
 iKrGUnx/6N3cB1WpOZ3l8JtjE9kKvbBMcWMS/7maqJLonFHGN4PMWzQzYUYx0S8sf0TZ
 fRm7+ki8JlaKrLWfiuAWY1vq+4PhJc2PsEviDvGe6iOMTui96hfNscclgm+3wlXss7Iz
 QloERXBZuBfrXWAaeZsHGAF3yuWj8k0znpzgm0Bg31Fr/VQJ+dU3lm1pyEknTf2xdyIQ
 aJeXg082bW/eiNMFNYX4m/WuwYqi151M+Np4xmVwExaBSvO//B5JCmj+UIgUgMhnG4ls
 S59A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZG8EM0ibWzAiSvgD/0B7tPbf0jFZ6hKm+43FjwPiK0k=;
 b=c7iN7MGaGMRhbe6mWQ9Lof0kTCnCGpyqdRhkOS4Iq8b5uCx2o10WRcumHUU7Vobz5g
 fb0YT7r9vfEBeCPSK4d8GIPRUxf2na8D7S7jec21ZnkVgcZEeq3U50WoK0IeUIwgw7PN
 vxoH8e92txXvuUNH4gYY1J/sRS5OAVxMvwJhr8tKq3wpRNduT+jaZskZ76UrlhAhC8ac
 IulFEY5k5KMnf1sg+Tz22uDBNZMSLiAxOMC/Pd9LtxmG29tvu6wQ7kh1G6Ke9eLantuy
 MlR0E8zAyeaIkXhKQKk7XDprSsaqnZT3lYeInx7GT3jhWBwPH7OEokHK2vJl6yLsPcsW
 DSOA==
X-Gm-Message-State: AOAM531UxbsuQklFTKhXUgNmcAWszdlOzUOFDbnxT0MEAapFBdW2+hNU
 vK0QvSWINK0JQ6aJVvgr3UaoOUuBx4Ri6tlsylP02A==
X-Google-Smtp-Source: ABdhPJxugAzgYOKChCqv3cRo/aKnwy4Bq+Q7V7eWSMFB1s+HkNGhWLe4KTH/emdsfmJ5hrY2eynft8sPj9YUAjJjH8k=
X-Received: by 2002:a05:6512:3696:: with SMTP id
 d22mr3678649lfs.586.1627056830723; 
 Fri, 23 Jul 2021 09:13:50 -0700 (PDT)
MIME-Version: 1.0
References: <20210627045631.2882-1-jiaxun.yang@flygoat.com>
 <20210627045631.2882-7-jiaxun.yang@flygoat.com>
In-Reply-To: <20210627045631.2882-7-jiaxun.yang@flygoat.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 23 Jul 2021 18:13:39 +0200
Message-ID: <CACRpkdZkvSg___ZxdE639SMbTs5rJbjHBq-HkTCuv0e645Rssg@mail.gmail.com>
Subject: Re: [PATCH 6/9] pinctrl: pistachio: Make it as a option
To: Jiaxun Yang <jiaxun.yang@flygoat.com>
Cc: linux-mips@vger.kernel.org, 
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Michael Turquette <mturquette@baylibre.com>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 linux-phy@lists.infradead.org, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210723_091355_655969_E2367C8F 
X-CRM114-Status: UNSURE (   7.35  )
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

On Sun, Jun 27, 2021 at 6:57 AM Jiaxun Yang <jiaxun.yang@flygoat.com> wrote:

> So it will be avilable for generic MIPS kernel.
>
> Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>

Is this solved, or should I apply this patch?

Yours,
Linus Walleij

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
