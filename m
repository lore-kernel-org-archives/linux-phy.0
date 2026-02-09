Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2054EE7C706
	for <linux-phy@archiver.kernel.org>; Mon,  9 Feb 2026 08:10:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SZcCx8HIYf+CFVj4w4pBk6rANGb/46vHPhouH4Xp+9s=; b=CTzXzYBU8rI2gO
	Ihm98ySOLonJsdqx64w8w+O6jEx32TxGIxmMvgvRXHsGAcWP6XGupEd6oHY1XpsszSjw1x/PgdqO0
	7ki96q1XGTB2MPyvaKh7I9ad7Z+YmKIQvCBPlTsu7MFFBs+3vBA6Oiwm7+oJUGwz2C1SjsuGFet3I
	5edfy7fdkh+tE/74BfFG9DvkLlnqlgZnMjvDF5uB8ojswSh5/rbLjB9yeRS0zTYo3LbMdi46Exy9X
	EJFM0oF+eqImZp3zERNAOeREgn3E073ICEQ3groSu+im+u/TPHlT8vDv3gxxWQOdbB4lYV+fTrKmn
	4ukQIvT9IjYSOAZoYtmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpMLh-0000000EzH5-2q45;
	Mon, 09 Feb 2026 08:10:25 +0000
Received: from mail-ua1-f49.google.com ([209.85.222.49])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpMLf-0000000EzGP-2ihQ
	for linux-phy@lists.infradead.org;
	Mon, 09 Feb 2026 08:10:25 +0000
Received: by mail-ua1-f49.google.com with SMTP id a1e0cc1a2514c-94aaa5d3bfcso1161492241.3
        for <linux-phy@lists.infradead.org>; Mon, 09 Feb 2026 00:10:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770624621; x=1771229421;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2bAsoauLtymOFaOmBSRU1sXzH6MyMCHQePcHPtAadtM=;
        b=BVzy8m3Sl1x2IoWzmE2m5hYG7QQFI2ERg/h1iBH4znP2yQmFKCPasqHxbEVMlNnr6f
         +swjegfxt34rnNUqRP4BbJmv10MPqw42vwgqKMmuBbJl6xdpQtuIlmlFUnAelpwpi9OA
         C/n5lG//X5TsTglLKB9Hs6jFDntqoBqDqgsIsUOijmc2zDwpCxvWJTtT1wXzwx0o1I3m
         +vL2KRX5BtfMR/xqIjRvXq9ZXMvkEnnajpu5NMS/RW5KYpbd2telvgpd+XqN1lKqIq2n
         kXEEjg8CIFXOjCWcwK8E5iqbtUyUlAIP2YALtFdIk8DLrNh6A0ZDvy173q0wQG8N+8+v
         Pr9g==
X-Forwarded-Encrypted: i=1; AJvYcCXC8JgWywZEbnMBJNaETELFWnNUT5o5z9nFzyYm39MGByytAfgkhqA3X9K5Wep5q/CQdvKNKJ5GWo8=@lists.infradead.org
X-Gm-Message-State: AOJu0YyWYl4eIGe+i8oSyYV825bVezSncePxdvYP1U8yDOWfy8pyVdTy
	1UCYyB6gFD3hvw1+UCVCHwd8PxSTHFIeN9XLALCT+Iu6QbHlzsh9jdMurswXYMoq
X-Gm-Gg: AZuq6aKMr8Ow/8cApJhF+2Z7iqn/GqaETxWQLKw1pIKJ87dh9/VMU76SDjA13PN5Nzo
	LVq6ziEL9EZTa4mpgzVkqmE6fA8FkqvvwrmyuuGzG7KUeSxtjlYKkRsFBAKHHCafsDR0EfQeBiP
	hRUi8SLiGK/tuu2hlGEHIxiHkfy0WYTqgkfCheto3PlwV7SBOfduhSUBHv71YzBcaxbzhJ9FORx
	EBzp5X+qylPJKBb02QXQ8lZNeX/jk/h6eLXO6S38ezbxiAGvdgMoosiqnRw9tgaR4fvU3O6gRlG
	LiEXfQzMBuQQknxdloZM3qZ4fL7l650ownsOR/hY+DlNLUmnNbzG12BHD//Gs3x4E5QAAI42/Vm
	YOzOjLHIwTOkQeOHAWnuTAP1GeteCj7LiQG2Woc2OJdCRN4xj36zoaCuF7UPCu60Y3AAiJDs4DX
	mFVz4Ns+pw6NDboOLo6wPpBv7PCKJdkkkngEfHdwc7mqtsgDY3
X-Received: by 2002:a05:6102:3747:b0:5f8:e2d3:c463 with SMTP id ada2fe7eead31-5fae8a3b31bmr2936798137.3.1770624621534;
        Mon, 09 Feb 2026 00:10:21 -0800 (PST)
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com. [209.85.217.42])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5fae8b5ede7sm3452116137.0.2026.02.09.00.10.19
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Feb 2026 00:10:19 -0800 (PST)
Received: by mail-vs1-f42.google.com with SMTP id ada2fe7eead31-5eea9f9c29bso1652074137.2
        for <linux-phy@lists.infradead.org>; Mon, 09 Feb 2026 00:10:19 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVTo02HYBMxrhScKqURLPTpzbzLe8uZP6XuKuBZTBqfeYNhZxUjheWhGudVL/t2LdHMouJs9/5pKoE=@lists.infradead.org
X-Received: by 2002:a05:6102:5092:b0:5f5:3c96:983f with SMTP id
 ada2fe7eead31-5fae8a3ad9cmr3362584137.1.1770624619183; Mon, 09 Feb 2026
 00:10:19 -0800 (PST)
MIME-Version: 1.0
References: <20260208-rz-sdio-mux-v9-0-9a3be13c1280@solid-run.com> <20260208-rz-sdio-mux-v9-3-9a3be13c1280@solid-run.com>
In-Reply-To: <20260208-rz-sdio-mux-v9-3-9a3be13c1280@solid-run.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 9 Feb 2026 09:10:07 +0100
X-Gmail-Original-Message-ID: <CAMuHMdV2a7uvtrJpSprU3YbgFSTmtKkMi+Z6j0m9-4vVXWK4=A@mail.gmail.com>
X-Gm-Features: AZwV_QhXlEX6D1abbrehjsrn3uf8WxyCcirF_ZvMoX3URB-GFlRdZjQEEn6kewA
Message-ID: <CAMuHMdV2a7uvtrJpSprU3YbgFSTmtKkMi+Z6j0m9-4vVXWK4=A@mail.gmail.com>
Subject: Re: [PATCH v9 3/7] mux: add help text for MULTIPLEXER config option
To: Josua Mayer <josua@solid-run.com>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol <mailhol@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Peter Rosin <peda@axentia.se>, Aaro Koskinen <aaro.koskinen@iki.fi>, 
	Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, 
	Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, 
	Janusz Krzysztofik <jmkrzyszt@gmail.com>, Vignesh R <vigneshr@ti.com>, 
	Andi Shyti <andi.shyti@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Yazan Shhady <yazan.shhady@solid-run.com>, Jon Nettleton <jon@solid-run.com>, 
	Mikhail Anikin <mikhail.anikin@solid-run.com>, linux-can@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-omap@vger.kernel.org, linux-i2c@vger.kernel.org, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_001023_696052_A2CDC931 
X-CRM114-Status: GOOD (  16.47  )
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

Hi Josua,

On Sun, 8 Feb 2026 at 16:39, Josua Mayer <josua@solid-run.com> wrote:
> Add prompt and help text for CONFIG_MULTIPLEXER to allow enabling this
> option thorugh the kernel configuration without explicit "select" driver
> dependencies.
>
> Select it by default when COMPILE_TEST is set for better coverage.

Merely enabling COMPILE_TEST must not enable additional functionality.

> Signed-off-by: Josua Mayer <josua@solid-run.com>

Nacked-by: Geert Uytterhoeven <geert+renesas@glider.be>

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
