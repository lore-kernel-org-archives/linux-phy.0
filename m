Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55B7CC021BE
	for <linux-phy@archiver.kernel.org>; Thu, 27 Feb 2025 07:04:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QO3ZFTtN5XZQxCIXTLm/hKPS7m6H5ruNnEqIVrjw5oc=; b=fFBPghqU2eyPmv
	vTc1m0sj4NaJ+snUlgfdajRCqNJgTe4QdBotiA8T0kB7AsGAW2cJiLC1qFKqd0/+sWFz/hzO0DH4U
	jHSiGDydNcP43Aq9FkuCeRPJ5lKA3cliQaWn7z7NbUcUs4DKyjM279Oqtlql19jI8U3FoUgO7sECs
	cD5yfdfvnC5XbaltRJTC7l2THCDurAwabMyqZeUZyVte2eDGNFQwMWpsptMkti3cQjyrLLRZlsPLN
	h4pcFyGCAV7j4GqrRq32xHQQMwBZRDR8hqd8iv/raq4oIBjH+jdSXul1SdtU0PNfPPQokAivhoCc6
	Za3CE+/zuICftS771BCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnXwx-00000006WIg-3Omm;
	Thu, 27 Feb 2025 07:04:51 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnXut-00000006W18-0kjY
	for linux-phy@lists.infradead.org;
	Thu, 27 Feb 2025 07:02:46 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-abb4944fa73so7045166b.3
        for <linux-phy@lists.infradead.org>; Wed, 26 Feb 2025 23:02:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740639761; x=1741244561; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=nt30vxCZ8dDJGA9f6yl5mbEhlcuKQimFoXdE6IW4R8k=;
        b=U3+QOGRRovfLqpHyznbNI7khYzEwkgJKLsFiRHLi12Odo0BJutHz8vP50Ba2wYiwYR
         c9EV23n7/961hcNCSA0cCDjm88KOIwuI7LhHSbssuJmNc17DxEr7Y7iPN4SIhKzLytKf
         u2/LqrTnfyl9SWurZeluHASZUqK/ZU19p7E2rLShSNVrGRJZnJANSzjVvaq3JQN1Uye/
         AgbVEbdgVD2abLsCAdfoCCQmXIuW4VxCHOknzC/80TMJYDbseXhfEXlzyWhEUXO4uI3G
         b8uKJRIxTku7ee3jB+2wdEWMzrIXkBX5xRkjxU1F7/PIQI8VfiAg6+wDr81wK6v7Cu5p
         m5fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740639761; x=1741244561;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nt30vxCZ8dDJGA9f6yl5mbEhlcuKQimFoXdE6IW4R8k=;
        b=MadugYnP0wXveS5aZCd/frbwouip2xqhA3pMMj9cMLnFt2oRJZzRt7PXKG9S2eegf/
         qYPyrq1YjRFCE8v9+ACrAcVNc8LHdWMDdEQhCBcEGUeKqvxg7ZsiEda00zH033uBWzJW
         q9VEgWdJ//l0kgW6Su4cSZb7mQKB2Mmy+yi+1ucdsgVmZM1+E8j77/obtHfCSwyKZQ+J
         i++gJScBj2Xvv1o8z3xr90MkE/MKPVgVDrBQBQrQ5JKy07cOZwRyloEkEPTHh9yGU1Oc
         wcy/AtznvYsGrFB7HcZoP4KZlMo5tq8mf+gUWAXIaGX4YbUT8SlX29o0VFYDBCs/9+UZ
         gTwA==
X-Forwarded-Encrypted: i=1; AJvYcCUktDUqB1eNowqOKriM8ayubTZyjVEiMy3uTqKq2n5b8wzXLXy1dM1ck2ia3nI/yhmP/mXw+UyRESQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YyWi2uP8TkR90ni4/kIdPMvko0KjlvRBKBIEqGF3HeFxyBk1D7S
	yZcYqjko8HHnvrGmaQtJClmYOa19qeAl8RwGaaLYCHHHM+M9BzKVhtZlDJfBtE0=
X-Gm-Gg: ASbGncv7MpdF07oBYRpyGGEEGcfYF+Sc862LyxQeZNMl4ceIPXzQaeqhPRXklkHIGhj
	JYvbRtB9ESW2onVayTk6Qq7FE4UkEBPbQ5YcDAj9N8mdELYe+QmoaG1oiApnz91yGyIzngBB1yE
	5PALKRCGo8OZNGKC0QTidmK5soY9aYo+hAJ8NH4kdGXGpK5APSz8h6SwLsITbfi3jki+uDSltc6
	4ph+4thCXXQr1rcjzfBDOwW/Mc3aNybnlh6WMduPK8jyP1Dg0IqJbBPqafKYnsM1nThXUwByh9D
	TSxqrb4wdSGfkxbVyxE1L9QBNGIJ2pmA7/slO3KfypizDw==
X-Google-Smtp-Source: AGHT+IFaX5Xx465ynY+QBW+bAA7zOiG4EkIiD1sgmpBcYUZdAaaw8LwpWoTVpJIUbrMT2ZdTel9FfA==
X-Received: by 2002:a17:907:96ac:b0:ab7:5fcd:d4db with SMTP id a640c23a62f3a-abc09e321a0mr931418366b.9.1740639761342;
        Wed, 26 Feb 2025 23:02:41 -0800 (PST)
Received: from [192.168.1.20] ([178.197.206.225])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abf0c0dc5d5sm75582566b.63.2025.02.26.23.02.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Feb 2025 23:02:40 -0800 (PST)
Message-ID: <58a96f60-b748-493e-b935-649044c4a750@linaro.org>
Date: Thu, 27 Feb 2025 08:02:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: exynos5-usbdrd: Fix broken USB on Exynos5422 (TYPEC
 dependency)
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar
 <alim.akhtar@samsung.com>, =?UTF-8?Q?Andr=C3=A9_Draszik?=
 <andre.draszik@linaro.org>, Peter Griffin <peter.griffin@linaro.org>,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
References: <20250215094122.60535-1-krzysztof.kozlowski@linaro.org>
 <Z7/+gXVFVzGadc4z@vaman>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <Z7/+gXVFVzGadc4z@vaman>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250226_230243_232907_4DA2D094 
X-CRM114-Status: GOOD (  17.03  )
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

On 27/02/2025 06:56, Vinod Koul wrote:
> Hi Krzysztof,
> 
> On 15-02-25, 10:41, Krzysztof Kozlowski wrote:
> 
> Can you revise the title to "phy: exynos5-usbdrd: dont depend on type-c"
> or something relevenant which describes the change rather than the
> Fix something!

Sure, it won't change the fact that we are fixing broken USB dependency.

> 
>> Older Exynos designs, like Exynos5422, do not have USB Type-C and the
>> USB DRD PHY does not really depend on Type-C for these devices at all.
>> Incorrectly added dependency on CONFIG_TYPEC caused this driver to be
>> missing for exynos_defconfig and as result Exynos5422-based boards like
>> Hardkernel Odroid HC1 failed to probe USB.
>>
>> Drop incorrect dependency and rely on module to be reachable by the
>> compiler.
> 
> Changelog lgtm
> 
>>
>> Reported-by: Krzysztof Kozlowski <krzk@kernel.org>
>> Closes: https://krzk.eu/#/builders/21/builds/6139
>> Reported-by: Marek Szyprowski <m.szyprowski@samsung.com>
>> Closes: https://lore.kernel.org/all/3c0b77e6-357d-453e-8b63-4757c3231bde@samsung.com/
>> Fixes: 09dc674295a3 ("phy: exynos5-usbdrd: subscribe to orientation notifier if required")
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>
>> ---
>>
>> Patch for issue in linux-next
>> ---
>>  drivers/phy/samsung/Kconfig              | 1 -
>>  drivers/phy/samsung/phy-exynos5-usbdrd.c | 2 +-
>>  2 files changed, 1 insertion(+), 2 deletions(-)
>>
>> diff --git a/drivers/phy/samsung/Kconfig b/drivers/phy/samsung/Kconfig
>> index 7fba571c0e2b..e2330b0894d6 100644
>> --- a/drivers/phy/samsung/Kconfig
>> +++ b/drivers/phy/samsung/Kconfig
>> @@ -81,7 +81,6 @@ config PHY_EXYNOS5_USBDRD
>>  	tristate "Exynos5 SoC series USB DRD PHY driver"
>>  	depends on (ARCH_EXYNOS && OF) || COMPILE_TEST
>>  	depends on HAS_IOMEM
>> -	depends on TYPEC || (TYPEC=n && COMPILE_TEST)
> 
> So how would this dependency be sorted..?

That was a v1 and new versions are on the lists with simpler approach.

> 


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
