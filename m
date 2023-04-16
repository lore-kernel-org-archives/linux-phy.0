Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81747C77B7A
	for <linux-phy@archiver.kernel.org>; Sun, 16 Apr 2023 10:53:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KBzXcYKxI7MegOc4pGX+fRJJkNRU/nDMh4ZtBZ8+7Bw=; b=CC3Gew7d/eAP6A
	nLOvYnwEyNLwbP62odZkklVi9PpjTXkv9pYKqPriGLkO7RwfLOLnDPpPfdKWqwIYWfCyfIje39JMn
	JgRQxP9FknysYggM8YRrcIUwQNedCMUDPEwaxJDRY0v9T6Y8DjBoZ6WijXprnhAQK6vAW6onhIvVL
	POHObgUnxdWyzCqT2h5p/6VvZiWeheRUhxGsFraY35Jmh8l1pvnZwT2cV4JerjJ7kvymk9D6eAMF/
	HaLOPiS3qxKx29zpCGzT9rB+RDecN1UM0dHnbVG3kH30wNIqy10FL6mN33OYMoS+ZFNatJJwU3I5b
	23qMqeF0yyaNDg1hV2sQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1po00Z-00DflW-0h;
	Sun, 16 Apr 2023 10:53:23 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1po00V-00DfhW-0E
	for linux-phy@lists.infradead.org;
	Sun, 16 Apr 2023 10:53:20 +0000
Received: by mail-ej1-x62c.google.com with SMTP id fw30so4113776ejc.5
        for <linux-phy@lists.infradead.org>; Sun, 16 Apr 2023 03:53:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681642397; x=1684234397;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/ouacL5jzwqdrqc6h6cItWvGdIc1UJBQ5F31zwjpSlE=;
        b=ySR9w98P8RnXzxDyjT5uqepX//GbkqEGw5tC571tl0ZdhTXPQQcvJP7AgNxP3neV9P
         TUrP0pJcjwpwNyjp6mpS6tPz2rTywKDvBijjxzSescmDF7HJHCwc8m2mStVWnb8TKbEE
         nu5SA27QGxsybnotK16UiRK5mGrc608EqMjJ6jxME5EtP3rb3yx8/WkZKy1AMRRkdvf7
         UtyMxDuCF32w7IRYMcYRULAceslZlfudSH6sxwzy88KJx/r2mjfWNoBFMfxwXIn4AVQs
         /OF4CSYzEyPpdE0bElp8yyr8ISlrXyZhbehmQ8O1MxpPKUtIdtUu19Mcm2kL8j92KFdh
         MkYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681642397; x=1684234397;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/ouacL5jzwqdrqc6h6cItWvGdIc1UJBQ5F31zwjpSlE=;
        b=fG10kqbsAiyWEl40DjV2dxDUaMSoDfzKhmS/MSBvNNMqjrGJTbXCSxRjrWSLOG1MJB
         3cBA6mVFF6xH93M1sxt/6BuCdcjRGH47HzKNQOtJFuwP4hUJosBAxWaShMFANKK+JlL1
         v67fgMUoF6sPmgGIfC52Z98n0uS8TuVXwLXBfUsXvk1IIJCsfrjrKNmWyMcw6jFmCedx
         RW46ImetiPUaEt/11SPHr6aiZUGz/hlgTxyH/TcqV1A3U+tRd9JoeHywj6RjrDNtyKU+
         a0JiGd2HX+Lb1+FKEbASUk/oedDDYRhYNmWeHwh5/if6NXradkpCpjmc+FqrA32nF7Z0
         VQhw==
X-Gm-Message-State: AAQBX9eBeNT0Q+eLpF5+aKG93xypUJN/WyjYmiClUW742z5a56fzFjcS
	aB4wK4B1B1r+EwHGcXOaglwoHQ==
X-Google-Smtp-Source: AKy350YiRHdtMmcT7j7PJPXYEMEyZ4e1Bw1LhCILnCce78Lp2xLtZeLuqXkwcSyY8+YlACLr4t7D3Q==
X-Received: by 2002:a17:906:f14f:b0:94a:171:83b1 with SMTP id gw15-20020a170906f14f00b0094a017183b1mr4650225ejb.2.1681642397392;
        Sun, 16 Apr 2023 03:53:17 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:29dd:ded4:3ccc:83db? ([2a02:810d:15c0:828:29dd:ded4:3ccc:83db])
        by smtp.gmail.com with ESMTPSA id qw24-20020a170906fcb800b009353066595csm4913522ejb.136.2023.04.16.03.53.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 Apr 2023 03:53:17 -0700 (PDT)
Message-ID: <d0b2868f-cade-feb1-52cd-2aacd537c9c6@linaro.org>
Date: Sun, 16 Apr 2023 12:53:15 +0200
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
 <ba148e6c-1685-f6d4-458f-bbdf1dd674cf@linaro.org>
 <36287654-c6e6-f4bd-320c-866bef692d2f@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <36287654-c6e6-f4bd-320c-866bef692d2f@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230416_035319_159977_A14100F9 
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 16/04/2023 12:49, Artur Weber wrote:
> On 16/04/2023 12:34, Krzysztof Kozlowski wrote:
>> On 16/04/2023 12:26, Artur Weber wrote:
>>> On 16/04/2023 12:16, Artur Weber wrote:
>>>> This patches re-introduces the Exynos4212 platform and adds support
>>>> for the Samsung Galaxy Tab 3 8.0 series of tablets that uses it:
>>>>
>>>>    - Samsung Galaxy Tab 3 8.0 WiFi (SM-T310/lt01wifi)
>>>>    - Samsung Galaxy Tab 3 8.0 3G (SM-T311/lt013g)
>>>>    - Samsung Galaxy Tab 3 8.0 LTE (SM-T315/lt01lte)
>>>>
>>>> What works:
>>>>
>>>>    - Display and backlight
>>>>    - Touchscreen (without touchkeys)
>>>>    - GPIO buttons, hall sensor
>>>>    - WiFi and Bluetooth
>>>>    - USB, fuel gauge, charging (partial)
>>>>    - Accelerometer and magnetometer
>>>>    - WiFi model only: light sensor
>>>
>>> This patchset depends on "[PATCH 0/3] Add Samsung S6D7AA0 panel
>>> controller driver" for the display panel support for the Samsung Galaxy
>>> 3 8.0 boards.
>>
>> Why? DTS and ARM code cannot depend on driver changes. Please rework
>> your patchsets to remove any of such dependencies.
> 
> Ah, that makes sense. I'll re-send the patchset in a second with the 
> panel node removed.

I am sorry, I don't understand. Why would you remove anything from DTS?
Are bindings NAKed?

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
