Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 958E6C77B79
	for <linux-phy@archiver.kernel.org>; Sun, 16 Apr 2023 10:35:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NPtWYnGpnDJ6DO/HmZQqL8T9p7V0eAdkK22tRG5PkWE=; b=Gh9/YoyVP/phiz
	6COx6oAZO2FLLH3C9jcO5WZCNoTJacdCoJ8+kyQSGvMDr8AlmEllH4/WZHSVfAhYwb/Kyxj9uV8gC
	JldIAhccM1YRdqSCre+r5FKHPLZZR3rY3rS8pJdBPMDXZ7XuT5CV+Iz/WP/xV2NaKbnp4HMPgJPss
	F2x7EKMgRe0xuScestQVd8iuHoUWnHN8tq/jPATeaV7r+bLqBJpdhLB2Sb58jlbbyB4bfVHrC73RP
	HeAxJNKihrpnx10DCXAENTyLCNwaFR8yPP8wyJH2xkK5P+YP+S5ljxVLI2+l7bg0yX7sfigt9NhG3
	RJu6LXK7prLHEArJ1k3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnzin-00DYkd-0s;
	Sun, 16 Apr 2023 10:35:01 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnzik-00DYjg-15
	for linux-phy@lists.infradead.org;
	Sun, 16 Apr 2023 10:34:59 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-94eff00bcdaso114668066b.1
        for <linux-phy@lists.infradead.org>; Sun, 16 Apr 2023 03:34:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681641296; x=1684233296;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oThM9IADx5S8GurQFnUC5Iudz8a82Ypmc1jPK7EMt28=;
        b=ojsL8rvxTKjkZ3105QQ6qMpe909jhc5eSavPPOPpTnGmPG3+UETC9x2kSBwk+kxBak
         hPE9Vp4Oll90PdjOzUdkRMk130wHf41avhU/MgtP+A9UilsLqMpmIF3pOW9wmmhs/nYx
         Abzva2M7DoABQkkxTw8FImLZJI7a6XZN+FtlFIP6TDsA4t8FPZNUWQ+BHN555glXUdGt
         V8oRqyRrs8LVJc5HBDxTs5hWYKFbuQlPV1ODN+bqee/uC+9eKdN8NfOUmtZcbbfPlatZ
         moXRSEmtJbKOnRBScf1hTSjzaLOJkqliRLaB7N9g3yI+1ujsz5tQkmG6r7p+/xPj1lVh
         CgpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681641296; x=1684233296;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oThM9IADx5S8GurQFnUC5Iudz8a82Ypmc1jPK7EMt28=;
        b=Jnp3/nzdIL+TT470FPnTeVGvXBkySY9Ekx/Zj5cRfp8uLYL9pkcOqVRP86IqMSnu1P
         FCwADIT/FRSIZyM/+9hk/xqIe8sDoWZqIbx+pw3mQH2AhtZ6E8IY8oz/08hGPUuoialM
         8dQm4oCNDj2ehqGEso5PTdlfA+FATqwgTY9hyv+z6Lun7m9kf5xAxXSKzq7ABv05cLI+
         MiZoek4AFiqOzQZu+/bohhPH1Mk7cL5JToHB05wM/dgMa5SEiGoxJspkET2J9A+l+gP4
         ESOXJNkt0PJVR/6Hh95GCv5MECzxMmAxwVdkCs/JXrbgD2IJOcB89bHdKjiPYpngutlV
         V7Tw==
X-Gm-Message-State: AAQBX9eLJFvs3yCV0GYkVyveFuR+JwKhbWoWQadlF/HsaUZvQJb07rba
	IaOiCyfQgKpKeLKZ9nO/A48i+g==
X-Google-Smtp-Source: AKy350Z0EYHAjycSnA/78baWXdJiAPBIp74WUoY2hN5f7HmirWp3PlBkc720nyajl9PAE44hpfE7Ng==
X-Received: by 2002:a05:6402:2d0:b0:502:7767:3c73 with SMTP id b16-20020a05640202d000b0050277673c73mr10051680edx.22.1681641295977;
        Sun, 16 Apr 2023 03:34:55 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:29dd:ded4:3ccc:83db? ([2a02:810d:15c0:828:29dd:ded4:3ccc:83db])
        by smtp.gmail.com with ESMTPSA id o23-20020aa7dd57000000b005047847d3e5sm4364064edw.36.2023.04.16.03.34.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 Apr 2023 03:34:55 -0700 (PDT)
Message-ID: <ba148e6c-1685-f6d4-458f-bbdf1dd674cf@linaro.org>
Date: Sun, 16 Apr 2023 12:34:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH 00/12] Re-introduce Exynos4212 support and add Samsung
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
References: <20230416101624.15866-1-aweber.kernel@gmail.com>
 <3e513119-4d6a-18ec-aaec-1c6b2b7e35b4@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <3e513119-4d6a-18ec-aaec-1c6b2b7e35b4@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230416_033458_406067_A1D0C789 
X-CRM114-Status: GOOD (  11.41  )
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

On 16/04/2023 12:26, Artur Weber wrote:
> On 16/04/2023 12:16, Artur Weber wrote:
>> This patches re-introduces the Exynos4212 platform and adds support
>> for the Samsung Galaxy Tab 3 8.0 series of tablets that uses it:
>>
>>   - Samsung Galaxy Tab 3 8.0 WiFi (SM-T310/lt01wifi)
>>   - Samsung Galaxy Tab 3 8.0 3G (SM-T311/lt013g)
>>   - Samsung Galaxy Tab 3 8.0 LTE (SM-T315/lt01lte)
>>
>> What works:
>>
>>   - Display and backlight
>>   - Touchscreen (without touchkeys)
>>   - GPIO buttons, hall sensor
>>   - WiFi and Bluetooth
>>   - USB, fuel gauge, charging (partial)
>>   - Accelerometer and magnetometer
>>   - WiFi model only: light sensor
> 
> This patchset depends on "[PATCH 0/3] Add Samsung S6D7AA0 panel 
> controller driver" for the display panel support for the Samsung Galaxy 
> 3 8.0 boards.

Why? DTS and ARM code cannot depend on driver changes. Please rework
your patchsets to remove any of such dependencies.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
