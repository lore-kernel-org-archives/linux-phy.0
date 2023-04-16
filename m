Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5A37C77B73
	for <linux-phy@archiver.kernel.org>; Sun, 16 Apr 2023 14:14:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P87tXL9ju9tzET3SMIZzvv8GArcCoeyDGZ0dCa1xSCA=; b=drpvTMgDZSPBl6
	BCzh9ViQY5wwonORQqCQkgbhqh9o8u91lEAHsrqiyGp4akjL3+GJIDINFdHQoZ6Bz5RGOcd6tc4kv
	YabNC2cqXkfI0zFIgMt6q+nloM7U3JBKdlnZoCYbOKgogUXbIPM5nrJTjZRUxsn2DcWaaI7TzhS7+
	bhoL0Uk5O0ZaNo8okcX9Sx9PXKc4SmoMq3yz/Z0KAzdsbv2+uEVWKsxPUv1Thnqa3J5zlPJcpSWbs
	ytPtds/6O6oaVU6YxHcmLrjx7ZCnTN5uxRZ7IiyjrerTWUG/HAXZ4UyRg2uuazehMzk/0KQGdZerf
	EvFm1itfOfh4RYEidfaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1po38x-00DwPe-14;
	Sun, 16 Apr 2023 14:14:15 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1po38v-00DwNj-1U
	for linux-phy@lists.infradead.org;
	Sun, 16 Apr 2023 14:14:14 +0000
Received: by mail-ej1-x62b.google.com with SMTP id fy21so14652244ejb.9
        for <linux-phy@lists.infradead.org>; Sun, 16 Apr 2023 07:14:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681654443; x=1684246443;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CqjZpfyKPAXa2my2S9Kqm0ywJgkkRuAyH0u0+ZgWeBo=;
        b=j4GkOa4aNXRE+r4a4/nRTgrCWkl7MYHpNnYSl0JUMuXQMFmbIBleGTKd4PpQexnVfb
         ybv3marMchyBRQjoztB01LrSlUdnNIgEC2ZRC9/I9vufBTND2fzAkZTAK27uji8UbvVN
         eXR7Vj1YD0XwMQTYaih7Z7jTeVysyDnc2M/CwTZYD7pe01ug16FiAD3Excw0mMBKNXxE
         ZLVfBxHmOA3nj0qVdBkY6gXLPmuqkoPl62SIH8BJpmyd/dkWX6gNXzS9gq9SWdgsZX6a
         WW3kWlsSnOis2a9y4OWL5EztRceKZZ4dk438V1Mjju23FydTqMpKSxldchxID3YY+pFo
         zGFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681654443; x=1684246443;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CqjZpfyKPAXa2my2S9Kqm0ywJgkkRuAyH0u0+ZgWeBo=;
        b=V1jQDReKTzk7T2JRwR7v4gCaAtqHmeu8/+DMtnwB419jS05l54+o8uoCZ4jJzoimaX
         dYOIXegw2f2syyAhvZJuStBCeZpi6g+SqWABsk2NuF4zU24s1GQOjnTwk9pGyG6f49MP
         INismhW4Iw113hzaeoN+59s1LV6vU/c895Qed7EsJOogEhiFm1iKYnmrIPx1h6BdEKgz
         XhIVQB1+b9mQTFVqCr1Tfsy2dOznFjUrH7SEKo2sckmVQJW76z6YTJzpsbnT8JhstcUE
         wQdFbOcrBchKB0rNu8LNjUr+5mJM10T5T84WfQMtPCxrzJ4SBVeVxAeWnyxjYJtHduSe
         1AzQ==
X-Gm-Message-State: AAQBX9cDP0F2aEG8Dsx+N1GTZ+UA4ISOtG7TPQ2ksjGsAiSFU4K4Pe2u
	gzV+TTxfehqBqofIDOxOUMQbPw==
X-Google-Smtp-Source: AKy350ayEmg9ZXfl/HB5LQ9Hom4UKULeEgkxZWgCAIx/UHNm3rrpWuZPfU3gw9Fv1tjxFQ4I1e04Cw==
X-Received: by 2002:a17:906:6091:b0:94c:93e4:b0c with SMTP id t17-20020a170906609100b0094c93e40b0cmr4922508ejj.76.1681654443262;
        Sun, 16 Apr 2023 07:14:03 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:ba4d:301c:484d:5c9? ([2a02:810d:15c0:828:ba4d:301c:484d:5c9])
        by smtp.gmail.com with ESMTPSA id ce18-20020a170906b25200b0094ee2b8ab77sm3589650ejb.73.2023.04.16.07.14.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 Apr 2023 07:14:02 -0700 (PDT)
Message-ID: <421f998a-8d66-d333-4e41-58a74bc687e9@linaro.org>
Date: Sun, 16 Apr 2023 16:14:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v2 00/12] Re-introduce Exynos4212 support and add Samsung
 Galaxy Tab 3 8.0 boards
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
References: <20230416133422.1949-1-aweber.kernel@gmail.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230416133422.1949-1-aweber.kernel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230416_071413_501556_9B773A69 
X-CRM114-Status: GOOD (  13.34  )
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

On 16/04/2023 15:34, Artur Weber wrote:
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
>  - USB, fuel gauge, charging (partial)
>  - Accelerometer and magnetometer
>  - WiFi model only: light sensor
> 
> Display panel bindings used by the Tab3 DTSI are added in a separate
> patchset - "[PATCH 0/3] Add Samsung S6D7AA0 panel controller driver":
> https://lore.kernel.org/all/20230416131632.31673-1-aweber.kernel@gmail.com/
> 
> Signed-off-by: Artur Weber <aweber.kernel@gmail.com>
> 
> Changed in v2:
>  - Added note about display panel bindings to cover letter and
>    Tab3 DTSI commit

That's not really a reason for resend and you explained me the bindings.
Wait for at least a day before sending big patchsets, to get a chance of
review.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
