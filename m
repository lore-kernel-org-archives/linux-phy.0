Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84D2AE7BD84
	for <linux-phy@archiver.kernel.org>; Mon, 16 Feb 2026 10:08:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+FxCkMF+g5r/N7Foh9bLnOItmkkqNCE/fKeD5BfTfAw=; b=Jksd6DeZ4xxYTE
	ErzW8P3JgFou4JT2iVDbGmOydvovCqb9zUnShuI9O7Ve6+sOSmNd/cP7bUZyIidTrWJGb9RhyU1PB
	d0I0SXLBp+t3Pg/CSU9dzX5SAECgqC1psSAvhk3hMeEGtNf3+Lv8r/jKRPWQS+A99s/geVbiQdVXG
	81GxX3jTiRCly/A6zbENbEl96IpkLqxSS2a9ynn8XiTCVqa7DqLtStCqJxkpNCi37UAiWAUea4RKO
	C0Fja4JylfeVKbSxWBSYIkvjyrHIcwWiEOwbAX5Jbbp2pclZffej6z7sD1kKseZNt7z5IBdRm80G7
	eVgBYpqAvB2MeYpPoV+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrvWk-00000006KIf-0rDU;
	Mon, 16 Feb 2026 10:08:26 +0000
Received: from mail-vk1-f174.google.com ([209.85.221.174])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrvWf-00000006KFe-3fII
	for linux-phy@lists.infradead.org;
	Mon, 16 Feb 2026 10:08:24 +0000
Received: by mail-vk1-f174.google.com with SMTP id 71dfb90a1353d-566390e7db3so2248800e0c.1
        for <linux-phy@lists.infradead.org>; Mon, 16 Feb 2026 02:08:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771236497; x=1771841297;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8QwpdPffhWm62Ds9NyNo/SaQsJWiUgFomKDnAW7WiSg=;
        b=pKZDRKgO4eDaDidPstg3N87LyTd1MTPN9lBup4P4vTFe1uHZ7ugvBZeY+NqlIy+hpr
         j993Jq5AzqktVpVRsukwE8w7Zrva9FRqyNlCGzs1p0ZklDK5tj048ESnU6wenm8jkmQc
         uJ1HjiSYBhAUuhBeBZUxUx31K5Y/d4qsNaRPp8xu6Gpz0+JR5qnWPfZpdhYc6xctKHB2
         QJXLq0caTZSn6nEpNvUfdfxLgNF07ZYR7mj3Cas+GwFdHbX7yr1/nkXQTga3dXTktYKv
         dizIAMQYcEjSDnOfrxQ2zkgZXFKyPVjqkfidRRM2jh8r+4gRB/UoBXzSCdF5FFTrNFvh
         ThtA==
X-Forwarded-Encrypted: i=1; AJvYcCVsqx4Cgj0WSy00RlREO/+RFiK5exy4SOXsVmyhiR0p+e2j3yUHUSkZorYr6npa3U4J/DK7yh/zxaM=@lists.infradead.org
X-Gm-Message-State: AOJu0YwVTOclYgus/JLB9wt89oNhcLiImi/R06w1oe/4VqbIzEh/HsAR
	ZXQHsjFbmosJShnRB5JKPB6w6Bmnb0xX2uFmqe3XX/0KJaegfUUvihi4G3dP1RFz
X-Gm-Gg: AZuq6aKVQSptWTS+jMfzR4WBaY48h1/C0mreM/NoTzjCjZAnVoCY8eH679kBQn+9iZQ
	NPqO01iXO00klOLhc1sHrcNqXpbtP02uHv+MI8d8hZ21aXthZ8o1MYUare3n2J6xomjhCvT7jk7
	0P+x1QxbfJZ+ZR2TjGsHEtJssGn6T3786UVzlp/rOWsLsWxGJUPn+x/fTGhoYva0gNyWj5n+MaC
	5F6j4yooqTQZatSxeRJ9fV9UxoU4fu7kjpjEv/IBUB/S2hGC9LX2irv5PPh/uJEpOoPb6ix3TE+
	sut/kiBx/UmJ4LHfpLJG+fM+I8SA5ZHKlFIOqjVIE5X45j9sB1PRtmw0f3u0yyvXeT4XkhCste3
	ACeYAh04hBY16MfwpZiR5AB+XcRzXt5DU0W0lHlpouqBC6WwALzm6waS7qMc1jdMP8f39BrGrMx
	3u27M5nF7jcFCReedZcsfUbThlAIjtbCeRlvVUYdFKac6Z/UBV/FhbWmUULqsrqPtS
X-Received: by 2002:a05:6122:4683:b0:567:51f4:a13a with SMTP id 71dfb90a1353d-5676aa23d22mr3200458e0c.13.1771236497096;
        Mon, 16 Feb 2026 02:08:17 -0800 (PST)
Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com. [209.85.221.177])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5674c20b0e5sm7196135e0c.12.2026.02.16.02.08.16
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Feb 2026 02:08:16 -0800 (PST)
Received: by mail-vk1-f177.google.com with SMTP id 71dfb90a1353d-5665171836cso3805786e0c.2
        for <linux-phy@lists.infradead.org>; Mon, 16 Feb 2026 02:08:16 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUBxFyTMBJ0N7onjCym9zAmWQWw4vSFj0L9g4rFQasZ+EDqYt0izFky87RHs/myzqaisM9Ppn0D684=@lists.infradead.org
X-Received: by 2002:a05:6102:cd1:b0:5fd:f145:b88a with SMTP id
 ada2fe7eead31-5fe1afcd3b7mr3584435137.40.1771236100546; Mon, 16 Feb 2026
 02:01:40 -0800 (PST)
MIME-Version: 1.0
References: <20260208-rz-sdio-mux-v9-0-9a3be13c1280@solid-run.com>
 <20260208-rz-sdio-mux-v9-1-9a3be13c1280@solid-run.com> <20260212164823.mbeycqwzsy2dfq6e@skbuf>
 <CAMuHMdVOqovkugmCnR4FOfk8VkQyN_dmyKFzbsOSN0mPKQedeQ@mail.gmail.com>
 <f9ede0d3-6a37-449c-b62b-a5c761ece097@solid-run.com> <20260216092914.kmvl7aep7dantcsd@skbuf>
In-Reply-To: <20260216092914.kmvl7aep7dantcsd@skbuf>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 16 Feb 2026 11:01:29 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUH4W9W2uNknr41AgVQfO7inwZP6BfuMatyEUvJtf+Ueg@mail.gmail.com>
X-Gm-Features: AaiRm50a7dRj7dLKtMGILEQb14-VkaVzM5nFFHi-S8Lj08OYuJXTfF9bVPV6HRk
Message-ID: <CAMuHMdUH4W9W2uNknr41AgVQfO7inwZP6BfuMatyEUvJtf+Ueg@mail.gmail.com>
Subject: Re: [PATCH v9 1/7] phy: can-transceiver: rename temporary helper
 function to avoid conflict
To: Vladimir Oltean <olteanv@gmail.com>
Cc: Josua Mayer <josua@solid-run.com>, Marc Kleine-Budde <mkl@pengutronix.de>, 
	Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Peter Rosin <peda@axentia.se>, 
	Aaro Koskinen <aaro.koskinen@iki.fi>, Andreas Kemnade <andreas@kemnade.info>, 
	Kevin Hilman <khilman@baylibre.com>, Roger Quadros <rogerq@kernel.org>, 
	Tony Lindgren <tony@atomide.com>, Janusz Krzysztofik <jmkrzyszt@gmail.com>, Vignesh R <vigneshr@ti.com>, 
	Andi Shyti <andi.shyti@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Yazan Shhady <yazan.shhady@solid-run.com>, Jon Nettleton <jon@solid-run.com>, 
	Mikhail Anikin <mikhail.anikin@solid-run.com>, 
	"linux-can@vger.kernel.org" <linux-can@vger.kernel.org>, 
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-omap@vger.kernel.org" <linux-omap@vger.kernel.org>, 
	"linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>, 
	"linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_020822_467616_B053CB18 
X-CRM114-Status: GOOD (  17.61  )
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

Hi Vladimir,

On Mon, 16 Feb 2026 at 10:29, Vladimir Oltean <olteanv@gmail.com> wrote:
> Then there is the fact that local definitions of devm_mux_state_get_optional()
> keep popping up, possibly in unrelated trees (not the case here). This seems
> to be a bad practice which should be discouraged during review if caught.

This was done on purpose, to (1) avoid having to make too many changes
to the file when a common helper would be introduced later, and (2) make
it easy to find all locations where a future common helper could be used.

The alternative is to use a completely different name (which is thus harder
to find), and having to fix up all the users of that name too.

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
