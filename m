Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10EA0C5479D
	for <linux-phy@archiver.kernel.org>; Wed, 11 Jan 2023 09:01:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Shy7dt+7rWn8kxXXPjNyuEuP15ptuboZ7eI0Yn0Uozk=; b=bEYn/6XM9BZHDgakncDHqtTxhH
	oib4RLv94A7VfbyDPuzYMykwan5O02xg9jG89dGtX52umaaa4VviP259TaAAsgADiRSGXz4lCYhRe
	pW2pdzHoRqYZpsQruqP+imcb0ytXu9dFzxbUNOZz2JbKL/pU/IyweC+D87d5ZR8gIz5v0osD1UIsy
	SSi0q4MutvCrYnUV9oBajFJN26R3cIB8VLZMUh0o8jYYIYJEF+id0uuZxauYHWLCI0BGtKdhdLnrI
	YG0+WWGrX8L55QOsVkyKO+D7usMCl06VEW7mM0bv2wmwpUDGByrfaMKYA8ZT2QPbBBBQbaUZ++iqO
	bfX3mOTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFWz4-00ARkk-A6; Wed, 11 Jan 2023 09:01:22 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFWye-00ARVZ-UC
	for linux-phy@lists.infradead.org; Wed, 11 Jan 2023 09:00:58 +0000
Received: by mail-wm1-x32b.google.com with SMTP id o15so10583839wmr.4
        for <linux-phy@lists.infradead.org>; Wed, 11 Jan 2023 01:00:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=UIgNk4h0ykNf4W9R10f+g8s9MtlXPDlZWGID0CLp804=;
        b=ACz2pUEAplUyKMwahar14IEYYnawh0ar2G+KL0+AdO+fXKDb6L1+7Aq1cR/JhRxMxF
         mptt0m7OE+hHLEPyv2GGxmbq78+4PKJIg2OU+Et0ss+4vM4s35EB+0jdnp7VOr0n3o4Y
         sVNrXDS1NCtl4llNRycijVOG7GqCqJE9sTXrkMnrFCkCNHARqK/VingD2ZFf2CaIyh5R
         BkUyz70LPfPlxaoLoSrL9Eyv1OPob/snhvTSgSee+4oBHoO28UzKBMYs7qZmo3PKc7Oj
         TZY7YEEZvny5IzPNF2MZFoR+8B8dExdbws1pT2JocEc7BXwbvR4fsYcDcyxTp6JjTglr
         yNAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UIgNk4h0ykNf4W9R10f+g8s9MtlXPDlZWGID0CLp804=;
        b=tc8PImaZYz12mqCGIhHzqrCqf1EhQW9d8Oput5GdzoXKp8JEHNDsyfY7OEolaOxCva
         LAVAmCIV/sfTS860gOky6BqjqfIFR2VP0L8I0OuUCLzVmFAUlUKbDTwJ1jB/bEFKoNX9
         8XUolCd1ivjuUxJC5pvuDtr8PajL9wGym/wJfOaIxtLsZClfO5qam4WJDUZ5kDjIrl5G
         IXLsY5HGbZZbsD7zX5R/c+jKW/9DBul0rare90CYoO1HJweYFpK9CG6gynVhfmErfiKn
         3Zv88KsNWaj4X5Y9fN3VpFmSDLmPorXB7Nhv90U33slWiXXBDwnK15Et/xooM83Ffe7Y
         FMaQ==
X-Gm-Message-State: AFqh2koPLJO2mY4I+hM1BMI2n5A18mBVCeUuL7+TGEpJYER89jDaMlMY
	/DrBeO1iFdGQM6NGuvt9+SM0Kw==
X-Google-Smtp-Source: AMrXdXu50nuURvF/uZXf+xmLuSwesdnOY8E4IcaZoYRp8Au4jWUve2YDc0RJ8X2U2aelNYBfkHhv2g==
X-Received: by 2002:a05:600c:34d0:b0:3d6:b691:b80d with SMTP id d16-20020a05600c34d000b003d6b691b80dmr50949988wmq.21.1673427652953;
        Wed, 11 Jan 2023 01:00:52 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:d95d:43b7:d6a9:39a5? ([2a01:e0a:982:cbb0:d95d:43b7:d6a9:39a5])
        by smtp.gmail.com with ESMTPSA id o21-20020a1c7515000000b003d995a704fdsm17507540wmc.33.2023.01.11.01.00.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Jan 2023 01:00:52 -0800 (PST)
Message-ID: <08698c06-49b0-1cf7-efd3-1038104972cf@linaro.org>
Date: Wed, 11 Jan 2023 10:00:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 00/11] dt-bindings: first batch of dt-schema
 conversions for Amlogic Meson bindings
Content-Language: en-US
To: Jakub Kicinski <kuba@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck
 <linux@roeck-us.net>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, Bjorn Helgaas <bhelgaas@google.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Heiner Kallweit <hkallweit1@gmail.com>, Russell King
 <linux@armlinux.org.uk>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org,
 linux-media@vger.kernel.org, linux-rtc@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-mmc@vger.kernel.org,
 linux-pci@vger.kernel.org, netdev@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20221117-b4-amlogic-bindings-convert-v2-0-36ad050bb625@linaro.org>
 <20230110152324.1e19974d@kernel.org>
Organization: Linaro Developer Services
In-Reply-To: <20230110152324.1e19974d@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_010057_015436_C9C43079 
X-CRM114-Status: GOOD (  10.18  )
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
Reply-To: neil.armstrong@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi,

On 11/01/2023 00:23, Jakub Kicinski wrote:
> On Mon, 09 Jan 2023 13:53:25 +0100 Neil Armstrong wrote:
>> - patch 12: added reviewed-by
>> - Link to v1: https://lore.kernel.org/r/20221117-b4-amlogic-bindings-convert-v1-0-3f025599b968@linaro.org
> 
> I'm guessing patch 12 is patch 11 in this posting.
> Should we take it via net-next? Looks acked & ready.

Exact it's ready to be taken

Thanks,
Neil


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
