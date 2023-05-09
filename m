Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADDCAC7EE23
	for <linux-phy@archiver.kernel.org>; Tue,  9 May 2023 18:22:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=84ak6otpSsi3XqULr8FWc6V1CdMn5RpY2pn50hre4/k=; b=UAzF0G4W8BEyxH
	tKoJ9N2XEB7+GpY4t/AF/bPUZ8WnnjkHtWXmum88TmO8Lgsiy7d2QUcGRHsZtBaZSHYZ5ABp5CuQd
	HI6UKXId1+EXmrNXXn80DUsHbaW+LMqGcn9b3CrDfS3krL3lsOyB2t0fXLZift6JOxHK0x1zW/P8J
	25D/D/XdwZV7acOsJSKqrfrggah7+lzr17jOKVpIjCeiyP62fSntRHCvy3NoiI5nu/0ngJSvXDsUi
	zjNh5vcOFaMyGNGKaBBAJ1co67vqSHp1AyQ8qSaIv40YfWJXpVQH5lOaGnQ++WXBXBGPziw1+acKY
	enQRDf/MknmKV/I2rAmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwRyy-0040Ch-18;
	Tue, 09 May 2023 18:22:40 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwRyw-0040BN-0L
	for linux-phy@lists.infradead.org;
	Tue, 09 May 2023 18:22:39 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-9661047f8b8so725514066b.0
        for <linux-phy@lists.infradead.org>; Tue, 09 May 2023 11:22:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683656555; x=1686248555;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7dMhyasFr9nXSZl5Z5p5MReNTd4O4eHsrz0nla4Qm+s=;
        b=RMWGy7UP/JCkXpB3JKA2udiLxmUUOLWkyxxUMXXqsW+USiwJjT5yYUyCzL0hpyzENU
         6b7S6DwQW3rs7FYIMNJxBIxNL8/wfZ6EU+0LJa2x/errkOe16fJQYOGvBZIhd1tTgDKd
         5SxIHuICNQmrlSIRjzJ6ZcKgIVcF0TgB+KN6FCeXWkVac8W8U9t8+r5LvH+rZd//DDHO
         b02IJrUqA3qMztIJjAYtsa8YLbmhQUKmQU3rYN/gwHueJH+g5qID4fFcYvHEgTRaj+gU
         7OCv3HRUvrBa/+CHeBBd02Niw04FseRjJz7nojmaD6+Hl/afWqLYN2Lnkx5fmUefaxw9
         qmMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683656555; x=1686248555;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7dMhyasFr9nXSZl5Z5p5MReNTd4O4eHsrz0nla4Qm+s=;
        b=RctABQO70+xwv15PGdX0OvIFjp33MP4EP0iwDl2VdtzLA6cUMz7iFBk8cAR7SLwoFO
         EulIeYAE3qjh9mlwdjGAlaAi+QTlP1r7mffDxRomg+AzanIzCKmdG4H8d5ABHjIKiIjt
         KpXYwJ1E/itodvZIJVrWHdCAG2wKQKaWpyh68es2kYDpbstqavj5CsZn9u5EVynjGV4L
         MOenPpQ/PvJr5QRlGr5Us1+6Xb2UOeleVX/ZbxRbdGGP+MRNCu24wzgVC0S2PJ2UTB72
         BuCbTvysFS89b3Waq/ubALLfkea24WtSRDNgB9H/wFd6JtGSlEY8L5QS8Rn3vIO9Uj58
         H2/w==
X-Gm-Message-State: AC+VfDw27Dw2yGDpAomawSo/BFrfr3Ovflsexq+6WE8S3wwqWI6mXXu2
	xheKDP5cI+nAXSKNqdMtvTHcUw==
X-Google-Smtp-Source: ACHHUZ7GGPqJakf4qQTpgmeEUROOguTzfeOp6RuEtJHlxvapmbgQvPl4hRK3FghMJ3pOX/WWzIFvEA==
X-Received: by 2002:a17:906:58d5:b0:969:9fd0:7cee with SMTP id e21-20020a17090658d500b009699fd07ceemr5319936ejs.10.1683656554867;
        Tue, 09 May 2023 11:22:34 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:d0d5:7818:2f46:5e76? ([2a02:810d:15c0:828:d0d5:7818:2f46:5e76])
        by smtp.gmail.com with ESMTPSA id hy26-20020a1709068a7a00b0095fd0462695sm1630087ejc.5.2023.05.09.11.22.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 May 2023 11:22:34 -0700 (PDT)
Message-ID: <7c724dc9-fef6-54e0-3470-7e8473494319@linaro.org>
Date: Tue, 9 May 2023 20:22:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v3 00/13] Re-introduce Exynos4212 support and add Samsung
 Galaxy Tab 3 8.0 boards
Content-Language: en-US
To: Artur Weber <aweber.kernel@gmail.com>
Cc: Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Tomasz Figa <tomasz.figa@gmail.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Olof Johansson <olof@lixom.net>, soc@kernel.org,
 Russell King <linux@armlinux.org.uk>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Kukjin Kim <kgene@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-media@vger.kernel.org, linux-phy@lists.infradead.org,
 ~postmarketos/upstreaming@lists.sr.ht
References: <20230501195525.6268-1-aweber.kernel@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230501195525.6268-1-aweber.kernel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230509_112238_154561_776CE023 
X-CRM114-Status: GOOD (  12.42  )
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

On 01/05/2023 21:55, Artur Weber wrote:
> This patches re-introduces the Exynos4212 platform and adds support
> for the Samsung Galaxy Tab 3 8.0 series of tablets that uses it:
> 
>  - Samsung Galaxy Tab 3 8.0 WiFi (SM-T310/lt01wifi)
>  - Samsung Galaxy Tab 3 8.0 3G (SM-T311/lt013g)
>  - Samsung Galaxy Tab 3 8.0 LTE (SM-T315/lt01lte)
> 
> What works:
> 
>  - Display and backlight
>  - Touchscreen (without touchkeys)
>  - GPIO buttons, hall sensor
>  - WiFi and Bluetooth
>  - USB, fuel gauge, charging
>  - Accelerometer and magnetometer
>  - WiFi model only: light sensor


Thanks for the patches, nice work.

I applied parts of the set. Please:
1. Split the patchset per subsystems, so separate to media, phy and me.
2. Check reviews and resend bindings for display and LP855X.
3. Rebase and check/fix DTS and send a new version. I cannot apply DTS
without bindings being reviewed.


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
