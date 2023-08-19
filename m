Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95829EE49A8
	for <linux-phy@archiver.kernel.org>; Sat, 19 Aug 2023 08:32:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LClj7Siaq07XDUFS8JlieJIt1N2VBhMvOPKMgpHn1LI=; b=cbPLcFbJulbLys
	WNOLvpibrugUzBmjJvQMTNf35tbTeHq5n9uG5MX2e5LRRjZGTUg2PvQncwnGSuYzIiDfNePstYbyV
	8lI3veqQYK4gEzVD5aYkd8KQiwqZh3y/oAi6M+pDl1ebTblxmgPP+qx8vXcO3SqUpqSuh9xGvLPzn
	2rf2HE7LpN8rPA1SaM7DOYrexK/NulZwqBYViRMBF8b2hzaJ9TCnWOFT6TiWM8a/SK17qDAZPhrpQ
	3Ju20AYxTq/GQEEFpnq5FyTOu0MFD4/73aSTVrnxaW7Mm6kp5qw8th6TwawMEhfV8u/PHw+J3HviG
	baz9E2+r6mwqa7KGkGvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXHNv-00Aa27-0W;
	Sat, 19 Aug 2023 08:32:39 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXHNr-00Aa16-2m
	for linux-phy@lists.infradead.org;
	Sat, 19 Aug 2023 08:32:37 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-529fb04a234so212806a12.3
        for <linux-phy@lists.infradead.org>; Sat, 19 Aug 2023 01:32:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692433952; x=1693038752;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ix8YOkiCA8Yfy3DAKq6Gdfu5OcCLN5ahy1LqBBsn4wE=;
        b=YaQB7apPrUzQw+O6eG/Yk0FmvmuOjm7Ay1BxfYb5mlEJy6nUwAz8okLIdE8baxHqYF
         xadgxYMSpy89etPzpg2vVMG6UNS7d2ghuYqlGihe1Ow+Vjzu6yQlYo8iAFko8VtNGxSN
         KKbXXUTPtYdWT62ojSawsImuUjSlmsjjaW/NejUDiaUCur28P74X/LNchQH+8FGVft1z
         AbPttNejtTIbwXVSc+DU1xsR9qsJdXGhhwmS0qHoOPZkHBUytYA27JwWWMxdJ4wJHift
         jbmtHvTV/hYtqm87krKtKxz1M2w47gdLFrOSR5wFKXEyJx21qjI7TjD5GeSgffSVSwea
         hjLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692433952; x=1693038752;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ix8YOkiCA8Yfy3DAKq6Gdfu5OcCLN5ahy1LqBBsn4wE=;
        b=I9bvIjrqmsZSYeH7qm7mO1fJN5yWYyKh9xJYgIxHc65K3q243FdXFTspkMvYcfl/qu
         fg5cwQpcsPOLzRSOR8wSGpkH0A3qCNPCEoy2LLq96gF61By1UwPh7vKJmglKDLUKoIRY
         kGwIZ+km2//cuENgWWPgCyzWM/Zu4kznZJNl7URmEdUCj1c24zx2dt0zhczqUadmAYke
         DnPzwN6cUE8m2LkVcP6BXweflIRu4UTPabzSnl4FNAy8p1ASHtSL2QynKo1vPsPuqnv4
         HNJAZ7wfhlEENdV43nob6kYlZVRjv6+gmBkID++XF1LDzPiEUcSG3hfFuU01+WedHDWE
         Su2A==
X-Gm-Message-State: AOJu0YznvMfvtrauyKZxVrau4Ei8JNDH9q+Y3du+x9UMBtfg51uEXVW/
	C7MqpsyseQoDVoMdC6rH2e1Yzw==
X-Google-Smtp-Source: AGHT+IHuS5W+rAGYbQvkT8qr8muLdssch24hUmSNaCYTDbifpEloZHjDQHkxPYQT+aZgwP4zN57W1A==
X-Received: by 2002:aa7:d952:0:b0:525:63f9:a268 with SMTP id l18-20020aa7d952000000b0052563f9a268mr996159eds.42.1692433951262;
        Sat, 19 Aug 2023 01:32:31 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id p6-20020aa7d306000000b0052574ef0da1sm2122455edq.28.2023.08.19.01.32.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 19 Aug 2023 01:32:30 -0700 (PDT)
Message-ID: <0f7babfd-de60-326b-37b3-32fe48927815@linaro.org>
Date: Sat, 19 Aug 2023 10:32:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 6/8] phy: exynos5-usbdrd: Add Exynos850 support
Content-Language: en-US
To: Sam Protsenko <semen.protsenko@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>
Cc: JaeHun Jung <jh0801.jung@samsung.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Marc Kleine-Budde
 <mkl@pengutronix.de>, Heiko Stuebner <heiko@sntech.de>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
References: <20230819031731.22618-1-semen.protsenko@linaro.org>
 <20230819031731.22618-7-semen.protsenko@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230819031731.22618-7-semen.protsenko@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230819_013235_897129_46F5BB7E 
X-CRM114-Status: GOOD (  11.14  )
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

On 19/08/2023 05:17, Sam Protsenko wrote:
> Implement Exynos850 USB 2.0 DRD PHY controller support. Exynos850 has
> quite a different PHY controller than Exynos5 compatible controllers,
> but it's still possible to implement it on top of existing
> exynos5-usbdrd driver infrastructure.
> 
> Only UTMI+ (USB 2.0) PHY interface is implemented, as Exynos850 doesn't
> support USB 3.0.
> 
> Only two clocks are used for this controller:
>   - phy: bus clock, used for PHY registers access
>   - ref: PHY reference clock (OSCCLK)
> 
> Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
