Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F281C433F5
	for <linux-phy@archiver.kernel.org>; Sat, 12 Feb 2022 16:37:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1s9sjWduZNpiFUa8TYbQ8CMaegXm21T8GSi9LKrzT7k=; b=TTsGAmoa2EksF3
	dYNYSvXBevzh7ug69FBclPSjjLpwjrovw/fkY4t2hbp+aV/tK8EP+EZKlZ5uCqsjKIiUZdPuzeyy1
	QWZnkkV2fXg9LStunbq6N6qXegSCgumQDRamIw2MWyDtGQBqG+ybe0w0xGqPzy3cDeA0wS9UXi9CD
	lnDgq1VB/0QtvJ+3hY3ina3hx1tcXvrvkg3nlu0ekjGrfVM6doiH/MqDYrd4Sv6OoHAP6fhFYveMo
	tgpAIjSrF8mDd5yvikmQ1b+Q8hqOVoXYV/otH5yU285hve7+CeoyAAgWXcTGfba8W98lSlZX4tPuC
	bYuvAQQPmkNkryntDB2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nIvOc-00ABIh-MH; Sat, 12 Feb 2022 16:37:14 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIvOZ-00ABHH-Mz
 for linux-phy@lists.infradead.org; Sat, 12 Feb 2022 16:37:13 +0000
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 603CE407C1
 for <linux-phy@lists.infradead.org>; Sat, 12 Feb 2022 16:37:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1644683830;
 bh=tMqilUYIpgE4D+Oy8hol1pf8fg4uaneK2N51DubcZr4=;
 h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version:Content-Type;
 b=TiRW7YRnNGf2WNlYqFkEI9zM+jgoTc4a5gPK1pQSH55ZdZOw8GRiz27Jkhp31nsrh
 5uAjjzhv/lF+uY4GcEweIVsqksr6y2Ec4PY4u6ls3ClJ36C9Pq0v6D7pZADmIa5ZtP
 Be1Cy8mZh+DeJZ0rxWwhwz0xzw4knFdQfROeTcPtmavSDg0BfJ8Epvd4thXv9wxedu
 SfsbfE5WXWCnGunbAfQOiFz8Gzt1w5+QOZl/ZvqtsuJRh1a1n6C1b/hoJ18MoYzD4H
 MZPhzvp3u7hydYvuEVdijUB1aCCM36EfpLDVqJLbmmO1k7pii+v+p2pCWNN8F2wFE3
 OBu7LkCF4vlQQ==
Received: by mail-ed1-f71.google.com with SMTP id
 l3-20020a50cbc3000000b0041083c11173so2001799edi.4
 for <linux-phy@lists.infradead.org>; Sat, 12 Feb 2022 08:37:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tMqilUYIpgE4D+Oy8hol1pf8fg4uaneK2N51DubcZr4=;
 b=J0dhQzhYkOYE/Lb74bQHqZVOOhbDyi1Ub0yUmDGZUNkhtgfHp04mK0T3bU4SBYqr+F
 AmwkK+rnQhVrWpU7CI331QucY9vAWIFpW/XHaPaw6SqTvF1qPz3TttJs9uCokbBHdVfg
 5sn9HP7KGIap8jV5kI4uR8hk0V8/8C/1NJ+oCYr5iFDdIP4OwVlq1H+SZ2yS2V1ef9Yt
 203fEOk0MGjUPxXF9hY0yMTCajsYQOGVH4GIVXFgRSXGHnTbjyPry1yiwGQsAxjyaEBk
 g+wReoiODk2hpPzgeJonEjbi2CNbC7SisXEBQ1gTcaFPZUWfRTgP1bq9jN+zxWTBj3Du
 Bocw==
X-Gm-Message-State: AOAM532/FEINP4UhGfd7RVumCkqFNQtK1ERZTTgNfCgkoCrBofalyIAs
 0m4txAWmN/3XkdUntkYuf0Hvk1McUZIcYCVoNCKJ/Zz2/MRxjwkLIch9p3XDER9FT7AdCU+xdAd
 9DF9L6iXOWJSw7gy1IPSq9t4NOeT6vX0PNPetZoWaUgw=
X-Received: by 2002:a17:907:c07:: with SMTP id
 ga7mr5546531ejc.536.1644683829515; 
 Sat, 12 Feb 2022 08:37:09 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxD2vBUSSwJtNtb2tnnNYmZ8ce5zaQGnbpfOOmEuusMoNeqmKg6uKEeUXp4CHd4UHdvHqCobg==
X-Received: by 2002:a17:907:c07:: with SMTP id
 ga7mr5546511ejc.536.1644683829366; 
 Sat, 12 Feb 2022 08:37:09 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id x10sm2494443edd.20.2022.02.12.08.37.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 12 Feb 2022 08:37:08 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To: linux-phy@lists.infradead.org, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-arm-kernel@lists.infradead.org,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>, linux-samsung-soc@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 dri-devel@lists.freedesktop.org, Kyungmin Park <kyungmin.park@samsung.com>,
 Vinod Koul <vkoul@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Joonyoung Shim <jy0922.shim@samsung.com>, David Airlie <airlied@linux.ie>,
 devicetree@vger.kernel.org, Inki Dae <inki.dae@samsung.com>,
 linux-kernel@vger.kernel.org
Cc: stable@vger.kernel.org, Sylwester Nawrocki <snawrocki@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: (subset) [PATCH 01/10] ARM: dts: exynos: add missing HDMI
 supplies on SMDK5250
Date: Sat, 12 Feb 2022 17:37:03 +0100
Message-Id: <164468382250.54495.17179167915023420156.b4-ty@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220208171823.226211-2-krzysztof.kozlowski@canonical.com>
References: <20220208171823.226211-1-krzysztof.kozlowski@canonical.com>
 <20220208171823.226211-2-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220212_083711_906284_AD217200 
X-CRM114-Status: UNSURE (   9.48  )
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

On Tue, 8 Feb 2022 18:18:14 +0100, Krzysztof Kozlowski wrote:
> Add required VDD supplies to HDMI block on SMDK5250.  Without them, the
> HDMI driver won't probe.  Because of lack of schematics, use same
> supplies as on Arndale 5250 board (voltage matches).
> 
> 

Applied, thanks!

[01/10] ARM: dts: exynos: add missing HDMI supplies on SMDK5250
        commit: 60a9914cb2061ba612a3f14f6ad329912b486360

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
