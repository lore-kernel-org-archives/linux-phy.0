Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F06F5C77B7A
	for <linux-phy@archiver.kernel.org>; Sun, 16 Apr 2023 10:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JCrUIXIe4HWj3LSNuldRPrDTksCVShZdeBAyAW4BS5o=; b=yCjIUzQGnYjwKF
	rF5wQXHTAcT7Vx7I76Io/B+aoC9JhkLYWySKx5HDCABRL2aazX9cOf93bWNsG4P12Ty85WuBVIikF
	t2KP8tOk6HnpNUoR+zRYK6i0M2d9jOSbtItk/HHyjvI1HySEyiKJUIRJSL9thh4l3Ls4UTClY4Iqq
	sGdeNIE8xO7E0zPBPOJM0Gg4N3lpw4u1iox/DWAO91TKtt/319C4DlUEIBgFUBPKb5S8p3No9uyeJ
	I+duVpjP0zF/1Hic9V8N+K7kzOtW7z/nXEf1jnhz7Dksnv+ryAmFsR2NfrYabJG2DiblwdrWqBN0w
	BIlkBW7LbEt45q1iD4Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnzxN-00DdqJ-20;
	Sun, 16 Apr 2023 10:50:05 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnzxG-00Ddkr-0O;
	Sun, 16 Apr 2023 10:49:59 +0000
Received: by mail-ej1-x632.google.com with SMTP id dx24so12869208ejb.11;
        Sun, 16 Apr 2023 03:49:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681642196; x=1684234196;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BibkchVpgNQZFLMyVpH9dMmq5gXEMqLoVYGl24gL/LE=;
        b=FNmxjCNuVJEW1wzbJhBhNa4rhwTePIcUwtK1gGe+SxlYGVzzIfN2NhGydt7BZD0p2h
         0FXzUOln5q8tn9q2Txy8735GhUI9pzTyPx85OgW7CUhCSVvF98P5noDuzGAPlGu6qRY1
         LYLnALhNEoaHZ+POCl/HiYCXZ7jg3YWwYpi2i73N67gYGoe3u0veQGoRUQN7V2RnWexA
         ohDhgvxruBJC2kNmI/J05a0LAEuBCkU+wJb01kQ8cqckZHS96Nl+PXccv9EH8iN2nNe8
         CTIi1O2LApEAJN95m8QezV4pcPJ89tBH+4LYKLMW6a3ZwfCDM0LKNBWH+cIasKhYX8uD
         aFqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681642196; x=1684234196;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BibkchVpgNQZFLMyVpH9dMmq5gXEMqLoVYGl24gL/LE=;
        b=lG50Sa0VNzfvbFsiZfihJJJbV/qKMCldC6peLtdocjubgBlgYJl37/uawJiEE+ONa4
         q4JlMRPsljfwLqMD6JO+0KDXzlOJyQ1F1FH69BVVRDpjLdGrlkcrPZ2RPUmpF7y2UthB
         uHHdO3S+8JWJspo2eeSHoliOO3GKNXpuNdgM9Q0KVVZjygUgVdSTrkGDiLqpRg2bk46Z
         nmcROO9FxEV+hKxG8YcBGvgz4YRt+usRJKjmZVabQP/jwgtDQbMSa1j64Ij9mOx5ex1A
         OWEC0mhPUqpaiqNyHpY+z7gKHPvdA2ZHn4z5IWnQSI4u39CSGUzzOgYOpcDxgQsaHfGV
         S2Gg==
X-Gm-Message-State: AAQBX9f0qMm40JCfpjYKbUSqIXZI8fdqJDNWB6g9Pz40lYJfPq0Bz6qE
	wv+L8IxE3MDRUoAZd+8mUTI=
X-Google-Smtp-Source: AKy350b3gK1lQb0qbsz4ilgiLjCfmtji8PDJG74IvoKxlOG8p+9hOgmdVoSmln/+2mWbUc32g9X/ow==
X-Received: by 2002:a17:906:5384:b0:94e:c306:f42f with SMTP id g4-20020a170906538400b0094ec306f42fmr3610946ejo.16.1681642196157;
        Sun, 16 Apr 2023 03:49:56 -0700 (PDT)
Received: from [192.168.50.244] (83.8.121.70.ipv4.supernova.orange.pl. [83.8.121.70])
        by smtp.gmail.com with ESMTPSA id yk17-20020a17090770d100b0094f442c6399sm937253ejb.90.2023.04.16.03.49.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 Apr 2023 03:49:55 -0700 (PDT)
Message-ID: <36287654-c6e6-f4bd-320c-866bef692d2f@gmail.com>
Date: Sun, 16 Apr 2023 12:49:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH 00/12] Re-introduce Exynos4212 support and add Samsung
 Galaxy Tab 3 8.0 boards
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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
 <ba148e6c-1685-f6d4-458f-bbdf1dd674cf@linaro.org>
From: Artur Weber <aweber.kernel@gmail.com>
In-Reply-To: <ba148e6c-1685-f6d4-458f-bbdf1dd674cf@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230416_034958_202790_FBA13C0D 
X-CRM114-Status: GOOD (  11.72  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 16/04/2023 12:34, Krzysztof Kozlowski wrote:
> On 16/04/2023 12:26, Artur Weber wrote:
>> On 16/04/2023 12:16, Artur Weber wrote:
>>> This patches re-introduces the Exynos4212 platform and adds support
>>> for the Samsung Galaxy Tab 3 8.0 series of tablets that uses it:
>>>
>>>    - Samsung Galaxy Tab 3 8.0 WiFi (SM-T310/lt01wifi)
>>>    - Samsung Galaxy Tab 3 8.0 3G (SM-T311/lt013g)
>>>    - Samsung Galaxy Tab 3 8.0 LTE (SM-T315/lt01lte)
>>>
>>> What works:
>>>
>>>    - Display and backlight
>>>    - Touchscreen (without touchkeys)
>>>    - GPIO buttons, hall sensor
>>>    - WiFi and Bluetooth
>>>    - USB, fuel gauge, charging (partial)
>>>    - Accelerometer and magnetometer
>>>    - WiFi model only: light sensor
>>
>> This patchset depends on "[PATCH 0/3] Add Samsung S6D7AA0 panel
>> controller driver" for the display panel support for the Samsung Galaxy
>> 3 8.0 boards.
> 
> Why? DTS and ARM code cannot depend on driver changes. Please rework
> your patchsets to remove any of such dependencies.

Ah, that makes sense. I'll re-send the patchset in a second with the 
panel node removed.

Best regards
Artur Weber


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
