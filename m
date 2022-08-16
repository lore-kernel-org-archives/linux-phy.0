Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2350C2BB41
	for <linux-phy@archiver.kernel.org>; Tue, 16 Aug 2022 10:18:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zJe4VJUF5JDpOn+9KgyeC44eeDTKcB6joJolMEvQ9WQ=; b=yzzwlcxAQZ2LgJ
	EG5Z1bzTbUVObirWjD02HGw+qfD9O4oMMu/GwrgV2chK524BumSga3Jn5YfeKIz5XCdxOB+qK70Ok
	AbIcSsU5vrqcNczKTvnSO0AkA2PLsa07slCiol1R3EM195J8cGqcNTaprX+y4BD1KMWjHJspCZ3w3
	YMjIr1XM0Hqmk7Zf00QGrzLkPcrVUFEr4GfT3hf1zTZ4jkfdvZjY1iFcAMPC8kqUEy/8pHQS/eaK8
	1X8CI+2p44Whdltu8v9CCePZ127pnL/D2SNPRh6tc7HEeHpwXlOaxEhkhIMDVZjZgzYkYiLxYmYwN
	HbQY3V0/KVdwfV0ZbiJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNtep-0012CV-U4; Tue, 16 Aug 2022 10:18:47 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNteV-00122o-LK
	for linux-phy@lists.infradead.org; Tue, 16 Aug 2022 10:18:30 +0000
Received: by mail-lj1-x234.google.com with SMTP id z20so10060946ljq.3
        for <linux-phy@lists.infradead.org>; Tue, 16 Aug 2022 03:18:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=3TSQJ+ajQb7oi0SISNRrwjgay+bQ0YpimkdDJopO6Zw=;
        b=xjjTCVqjAVU4Lr5HgNJZklHzY+wpNtU8v8mBhm7o2HhzogdL4vRU0XJ5fmJngd0tx6
         XUIqZRhJNKcv5N0ShN0JyVq4DwxmiBYBzQ2D9SWNJ6eBdsYwRiPwhCdcLy6xHgtnPuAb
         yIAzq3JRL3olX9nF6shP/M+zDzdv7jKNFT6B2vJ+cD05EXOJIyfY987amxAjAjb8ujvP
         9iG3K2/BBp1lbWYwfvxaHS5t56ZO7+sRxXWEtYU8qGOfkuWsyD4ROUkWO/iMf13WRH9+
         Jft38ypd0UnUyRKrnUnNihg9qT9Pu2PK4ZH9rkbsL1i0BvqSiTg1Zil7aMKBokMKyTVI
         ZsWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=3TSQJ+ajQb7oi0SISNRrwjgay+bQ0YpimkdDJopO6Zw=;
        b=zMOtqkFJ9XKaybTWiOPOUHiHKyjMO+txmSUJXi8psVSd5ed42rmCz/MVuM/bwuf4/o
         cYRiSPauWj3U6OVE1qQov/UcUGxPvOwSwispx5irG/ZbbbqTIfjU6gVNOR/AR58CkCFM
         sg6YKMzltiaypAJAMbT6VyuupdvpFzwGFdRL0go+uzdq19LvPQ7oJRjaamrPYJU7T4lg
         yQtTRxbIjTKoQGDlHn4SbohatytIWCBcmNcpu9wx4SW7xXyJFzW8KxEREM1KuOad+NYk
         X/7YZFqMmVdgqzCQfTklEE24H7AiOr5m/SUhc+EpvnBaLnky9b61hXKKjRkxg5FgPRNb
         kZoQ==
X-Gm-Message-State: ACgBeo2IPAqINaiO9ngyHgX/Lz4qkJoZMw9m+acf5kZEk7iHNIxWwk/t
	WN3mRDoxaYsuL/LICQmO7Sr1eQ==
X-Google-Smtp-Source: AA6agR4zLM19yV8AIxJngm1cQTBt04mcHmIAWaf59FHTXRvmruyL3ih96C0EcgpAUCdxQ8T6G7uvdA==
X-Received: by 2002:a2e:8096:0:b0:25e:4024:5fb6 with SMTP id i22-20020a2e8096000000b0025e40245fb6mr5956281ljg.332.1660645105391;
        Tue, 16 Aug 2022 03:18:25 -0700 (PDT)
Received: from ?IPV6:2001:14bb:ae:539c:1782:dd68:b0c1:c1a4? (d15l54g8c71znbtrbzt-4.rev.dnainternet.fi. [2001:14bb:ae:539c:1782:dd68:b0c1:c1a4])
        by smtp.gmail.com with ESMTPSA id w13-20020a05651c118d00b0025fe2049beesm1677215ljo.60.2022.08.16.03.18.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Aug 2022 03:18:24 -0700 (PDT)
Message-ID: <3e897c2c-c2a0-b815-e6b4-374bd80b98e0@linaro.org>
Date: Tue, 16 Aug 2022 13:18:23 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 1/8] dt-bindings: sun6i-a31-mipi-dphy: Add the interrupts
 property
Content-Language: en-US
To: Samuel Holland <samuel@sholland.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maxime Ripard <mripard@kernel.org>
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Maxime Ripard <maxime@cerno.tech>, Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-sunxi@lists.linux.dev
References: <20220812075603.59375-1-samuel@sholland.org>
 <20220812075603.59375-2-samuel@sholland.org>
 <c85ec3a3-fa6e-aa71-a847-22062b9683e9@linaro.org>
 <0d2bf232-8aa6-2dc1-121d-f0439bfd7b54@sholland.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <0d2bf232-8aa6-2dc1-121d-f0439bfd7b54@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220816_031827_781727_EA6127A8 
X-CRM114-Status: GOOD (  16.74  )
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

On 13/08/2022 01:19, Samuel Holland wrote:
> On 8/12/22 5:45 AM, Krzysztof Kozlowski wrote:
>> On 12/08/2022 10:55, Samuel Holland wrote:
>>> The sun6i DPHY can generate several interrupts, mostly for reporting
>>> error conditions, but also for detecting BTA and UPLS sequences.
>>> Document this capability in order to accurately describe the hardware.
>>>
>>> The DPHY has no interrupt number provided in the vendor documentation
>>> because its interrupt line is shared with the DSI controller.
>>>
>>> Fixes: c25b84c00826 ("dt-bindings: display: Convert Allwinner DSI to a schema")
>>
>> I don't understand what is being fixed in that commit. That commit did
>> not have interrupts in D-PHY, so what was broken by it?
>>
>> The Fixes tag annotates the commit which introduced a bug.
> 
> The binding had a bug because it did not accurately describe the hardware. If
> you don't think this warrants a Fixes tag, I can remove it. Or are you
> suggesting that the Fixes tag should instead reference the commit adding the
> original .txt binding?

Yes, the latter. If original binding were not complete (although just
"incompleteness" is not really a bug, unless it is something
serious/obvious etc), then TXT commit should be the fixed one.

The backports of course will not go that deep, but Fixes tag is used
also for statistics which kernel release actually brought the bug.
Therefore adjusting Fixes just for sake of backporting is not good -
messes up with statistics.


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
