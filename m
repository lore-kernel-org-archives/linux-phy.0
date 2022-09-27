Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5AAC7C6FA83
	for <linux-phy@archiver.kernel.org>; Tue, 27 Sep 2022 14:31:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sjCcvvZnj6RaMD/IlirCJCm2qmNVvTLDuWrN/p3PAfM=; b=CgD3A8Qq2Ld4H9
	1+QV/wlHRxkZxAH6bMCp3/LA+o6z+S1aa4GdNHLCQkewz+VD4ZZTC6m35sBbTzTYJS9kgdrznIeyn
	XTetM1gi8hyIhcej0CijJ9XrfKtfnGfhAqaEeDne3Dh47luSP26vr1/ECzYqR+OFKa5321/1Dyg75
	EGGI+eNvKXDOuGfo16kD0eAyVPC/6QAdRo4P0Do4rtSrSh90KGnaQOHtOyDufCp//fUX3Kvh4iw8K
	8Es1bRUw2OCEnICr/AHgllVX79iNXTteNsZDe7YTQZBgI2Cbg5qLEkgH8Is++qOAEjurFYYu9iRQx
	gqWZx3thP+gGGA+/xFmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odBcl-00BFd9-OV; Tue, 27 Sep 2022 14:31:51 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odBcj-00BFc0-5q
	for linux-phy@lists.infradead.org; Tue, 27 Sep 2022 14:31:50 +0000
Received: by mail-lf1-x129.google.com with SMTP id a8so15969419lff.13
        for <linux-phy@lists.infradead.org>; Tue, 27 Sep 2022 07:31:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=NUfI4SCRisddpR+Mrk1Ab5N6zdnsa7HpNGyqDE8S3Ak=;
        b=N5H3PvxU0f/K1m+Ie5ZB11BDUfHM5/7rmKTWERCI16RPnFP93poTMnQCJcmimNQyb+
         iM26D7OsLJcsmOZU/xMHANBiDKZIn9q2gs+chOxXtKyJdRoM3jcDS5xdhCqh3NMrfRvl
         d4IWDb/pXsaeTkuCa9br1kfnKDF0YN9oUcBRFQWU75t855LH3pbtJP9ynWm4chBxGG+z
         6dailbrZEc3YIZTVHATQ5QYGCP/Jr9uNtyCEmGyO7YdW7A+jIrhldXH2mH7IJvdPcHDI
         n9XprOk48xR/fUdkCmm9j3V13OUbMExg0fBRQ2uf4Tl6H1UI5g9KWgvQc3JkKwQP3qBL
         L0Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=NUfI4SCRisddpR+Mrk1Ab5N6zdnsa7HpNGyqDE8S3Ak=;
        b=aR69t6KNLll87bjZ4HQGwmahYoQM0CfIq3uNUhkFv+kARoqoP5Cfqhh2zM0rTxz176
         oULLk4hffIyxEORNMl6E6MncVNkjGgBEuXh5nvRZ/x4jw6GCfrUxI0cDJRcbn5lnQIsl
         81CJK97HVhDZSpQa+GQiqndxVZ0RdiNA9eig0yLGWhpAFYBL2kag2K2vnTf6h7S9RfdN
         MZwQSHSuBCu/woIux1Q5A/FJCKlMr/OuJRAK/2x8EzXtL+7SHWkyuuV761v9ogdaJne5
         6QuLZqJgvCNZcdhcc8dr+b/H0jWxJGL5bJuXWQgSre6JF5UnyAhGbLx/+1jrkDcfusuO
         XYhg==
X-Gm-Message-State: ACrzQf0QMRwBNLb36+QEdoUjdEf3rlnoIl3f0ZFd6kk4nyDYFTF6BKNv
	d2YFWz0o17W2j2jzsF4h7NIQ9g==
X-Google-Smtp-Source: AMsMyM45aqxVkdxZ0HAqRVzU94fLrEHMjS4h00CZmLSIcK6DvgMURloYNRLEY0p/VovPPWPqX6uRGg==
X-Received: by 2002:a05:6512:39ca:b0:497:a0b6:449c with SMTP id k10-20020a05651239ca00b00497a0b6449cmr10908608lfu.308.1664289107724;
        Tue, 27 Sep 2022 07:31:47 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id z40-20020a2ebe28000000b0026c2fec2f8esm176975ljq.84.2022.09.27.07.31.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Sep 2022 07:31:39 -0700 (PDT)
Message-ID: <db8ec605-7038-4cd1-9e70-bbe40404fa06@linaro.org>
Date: Tue, 27 Sep 2022 16:31:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v1 04/17] dt-bindings: display: mediatek: add MT8195 hdmi
 bindings
Content-Language: en-US
To: Guillaume Ranquet <granquet@baylibre.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, David Airlie <airlied@linux.ie>,
 Rob Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Daniel Vetter <daniel@ffwll.ch>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 CK Hu <ck.hu@mediatek.com>, Jitao shi <jitao.shi@mediatek.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Kishon Vijay Abraham I <kishon@ti.com>
Cc: linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org,
 Pablo Sun <pablo.sun@mediatek.com>, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, Mattijs Korpershoek
 <mkorpershoek@baylibre.com>, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org
References: <20220919-v1-0-4844816c9808@baylibre.com>
 <20220919-v1-4-4844816c9808@baylibre.com>
 <260bb17f-efc8-1287-3e03-f9b8e79a6e31@linaro.org>
 <CABnWg9vifOaAgwr7tkELUqbQA_1f-FfMFZ9o7sjZCaneo_FUmw@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CABnWg9vifOaAgwr7tkELUqbQA_1f-FfMFZ9o7sjZCaneo_FUmw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_073149_247711_01F72F93 
X-CRM114-Status: GOOD (  13.01  )
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

On 27/09/2022 15:54, Guillaume Ranquet wrote:
> On Thu, 22 Sep 2022 09:18, Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>> On 19/09/2022 18:56, Guillaume Ranquet wrote:
>>> Add mt8195 SoC bindings for hdmi and hdmi-ddc
>>>
>>> Make port1 optional for mt8195 as it only supports HDMI tx for now.
>>> Requires a ddc-i2c-bus phandle.
>>> Requires a power-domains phandle.
>>>
>>> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
>>>
>>> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,hdmi.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,hdmi.yaml
>>> index bdaf0b51e68c..abb231a0694b 100644
>>> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,hdmi.yaml
>>> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,hdmi.yaml
>>> @@ -21,6 +21,10 @@ properties:
>>>        - mediatek,mt7623-hdmi
>>>        - mediatek,mt8167-hdmi
>>>        - mediatek,mt8173-hdmi
>>> +      - mediatek,mt8195-hdmi
>>> +
>>> +  clocks: true
>>> +  clock-names: true
>>
>> ????
>> Why is this moved?
>>
>>>
>>>    reg:
>>>      maxItems: 1
>>> @@ -28,20 +32,6 @@ properties:
>>>    interrupts:
>>>      maxItems: 1
>>>
>>> -  clocks:
>>> -    items:
>>> -      - description: Pixel Clock
>>> -      - description: HDMI PLL
>>> -      - description: Bit Clock
>>> -      - description: S/PDIF Clock
>>> -
>>> -  clock-names:
>>> -    items:
>>> -      - const: pixel
>>> -      - const: pll
>>> -      - const: bclk
>>> -      - const: spdif
>>
>> Clock definition with constraints should stay here. You just customize
>> it per variant.
>>
> Clocks are different between the two hardwares, so I've tried moving everything
> inside the if/else block.
> 
> Is there a better way to express this?

https://elixir.bootlin.com/linux/v5.19-rc6/source/Documentation/devicetree/bindings/clock/samsung,exynos7-clock.yaml#L38

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
