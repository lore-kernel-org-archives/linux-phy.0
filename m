Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 462A6C77B73
	for <linux-phy@archiver.kernel.org>; Tue, 30 May 2023 08:53:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iyvgVrlvJV43Ttlegyctg4Q30zkhscTPeKe54cf8GWs=; b=vK4GKIGuWKqEjR
	2+wIikEGyQ7LG752jUtJr7HoJydF4HIHaOwxpNRlwb4LQlx9ja5OFvIoG4HT2Te79M8u86+Vi+K2O
	dE80y+xqQ5YdtfRBLJE5na4S1q7V2Q7xQxK554cE6YvplBQi8aKGT3lS0EUow4eED+3YI66Njm7gV
	HYrUj/8QLCAHd+BahyVM+jYxaTKBMrQyLFxWko5Jf7wmlxcJA5fiJ42kh+/AHRfTGoLXhkJMrNL50
	1qR0kjgM/DtIbMFUqtDY5yXUaoQYEIkBkO556oVW8WcQmZKoHUmg7ydxzlSvElvf/tahT+QpZFNKO
	tF24EfRfkwFT64QTkixQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3v6u-00D2Hc-30;
	Tue, 30 May 2023 08:53:44 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3v6q-00D2FT-0E
	for linux-phy@lists.infradead.org;
	Tue, 30 May 2023 08:53:43 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-96f8d485ef3so652563866b.0
        for <linux-phy@lists.infradead.org>; Tue, 30 May 2023 01:53:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685436814; x=1688028814;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WkTcWNYD5ZcE8WdcBB1u4fV2IrJSxoZ/lN/xy0mTpWo=;
        b=CxFKiHCCMaH3DClgncsh5rdeISf7tERzqDmbmGkyXXW3Q5pmhcf5SERhzBNkTceWpM
         qWRSAJwz531v0d77LlXVaaEnNAZgVz7kEEid0/0IxItVGUZ4fVa+LX1gaojIceJTzd3i
         9/O7CV7ZylyRtj5iGGdwtQzDZNHSNc1FgexlCYQ2mC+tALhr5HWsXvhp/0ekEXRg5q3+
         gnPRkWB6J8ianlNr6myaSPWJEqAcWA06DdDE8rKDCJ/KTHBJ8yfiCIgG3OcgkBYgfpH8
         XrpuqWaLAuaGTWCffJYQTowFg5GTsVA8YiHJ4GRNAl/TLbw6fs18i0fpwv6/IQTrhUZ5
         Yyzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685436814; x=1688028814;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WkTcWNYD5ZcE8WdcBB1u4fV2IrJSxoZ/lN/xy0mTpWo=;
        b=V+o5os7Q/1Fag4DrBfsBcaA8hwOz/SVBEVd+viA/SsELC3LxAlUkQCGQ4piuQ6WvX6
         2CFgk2uEZvtLIhsWEc2nYHdLzLqCYIN6dAk4vkf0Qa/XpG0biVKF8WkZS06vlfm2rtFu
         vehDeuhK5yNkVctzCBfWHmYKggP2ynkgt49QPn8BTOuyacBysQ28RIJGDQc9gLe9JMxh
         FzEmCnBU/pVKrmPxgWyoI+lmWd6Nxjt8lrgk9eVdW379kls00cf0jX9QJHwBXmoPcL9C
         FcPmbNtQthMscIpeWV9kQYiwdluPGBUxr0TClSYphtRDvVJGvjKWn1jNUEDAF+bTv9Ti
         euDw==
X-Gm-Message-State: AC+VfDzYkOtKlgu9WFfq7fVcdUMOGwZG83ZyDLVZSAexDzqvMDdTHHRd
	2Mm/OeryQLmyZ9+oyraDFRkAQw==
X-Google-Smtp-Source: ACHHUZ63WjWbwgnXPezm+l9Xip+xs9E7Z+W7Fn0pGUcjRvJEy4l7Bq/C37W3jgbRzSCB5OkYArW00Q==
X-Received: by 2002:a17:907:a02:b0:96a:411a:1cc4 with SMTP id bb2-20020a1709070a0200b0096a411a1cc4mr1614333ejc.66.1685436814552;
        Tue, 30 May 2023 01:53:34 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id ja20-20020a170907989400b0096f89c8a2f7sm7091772ejc.90.2023.05.30.01.53.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 May 2023 01:53:34 -0700 (PDT)
Message-ID: <10074d67-394b-3ddb-8bd1-fc051bdb7f79@linaro.org>
Date: Tue, 30 May 2023 10:53:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: add mediatek mipi csi driver v
 0.5
Content-Language: en-US
To: Kevin Hilman <khilman@baylibre.com>,
 Julien Stephan <jstephan@baylibre.com>
Cc: robh@kernel.org, chunkuang.hu@kernel.org,
 linux-mediatek@lists.infradead.org,
 Florian Sylvestre <fsylvestre@baylibre.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Andy Hsieh <andy.hsieh@mediatek.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 "moderated list:ARM/Mediatek USB3 PHY DRIVER"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
References: <20230515090551.1251389-1-jstephan@baylibre.com>
 <20230515090551.1251389-2-jstephan@baylibre.com>
 <ab9aa30f-82d7-1d14-5561-e19ff10af0b0@linaro.org>
 <4yppinkucchwnwtnnpbqdn4bejmntjq3q6mx6es55f2pwyce3c@qdhdks47lpyt>
 <1853f049-4f00-b7f0-973a-2c4e7b0b2634@linaro.org>
 <7h353w2oug.fsf@baylibre.com>
 <fbf1b0a6-f45d-69a0-5de6-8269567e15b3@linaro.org>
 <7hwn18yndq.fsf@baylibre.com>
 <c63ebd7e-8658-9cdd-4fc4-ade9c94dfa64@linaro.org>
 <7hcz2snpnw.fsf@baylibre.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <7hcz2snpnw.fsf@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_015340_177380_3D395FDD 
X-CRM114-Status: GOOD (  29.02  )
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

On 22/05/2023 21:15, Kevin Hilman wrote:
> Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> writes:
> 
>> On 16/05/2023 23:31, Kevin Hilman wrote:
>>
>>>> Third is to use versioned IP blocks.
>>>>
>>>> The second case also would work, if it is applicable to you (you really
>>>> have fallback matching all devices). Third solution depends on your
>>>> versioning and Rob expressed dislike about it many times.
>>>>
>>>> We had many discussions on mailing lists, thus simplifying the review -
>>>> I recommend the first choice. For a better recommendation you should say
>>>> a bit more about the block in different SoCs.
>>>
>>> I'll try to say a bit more about the PHY block, but in fact, it's not
>>> just about differences between SoCs. On the same SoC, 2 different PHYs
>>> may have different features/capabilities.
>>>
>>> For example, on MT8365, There are 2 PHYs: CSI0 and CSI1.  CSI0 can
>>> function as a C-PHY or a D-PHY, but CSI1 can only function as D-PHY
>>> (used as the example in the binding patch[1].)  On another related SoC,
>>> there are 3 PHYs, where CSI0 is C-D but CSI1 & CSI2 are only D.
>>>
>>> So that's why it seems (at least to me) that while we need SoC
>>> compatible, it's not enough.  We also need properties to describe
>>> PHY-specific features (e.g. C-D PHY)
>>
>> I recall the same or very similar case... It bugs me now, but
>> unfortunately I cannot find it.
>>
>>>
>>> Of course, we could rely only on SoC-specific compatibles describe this.
>>> But then driver will need an SoC-specific table with the number of PHYs
>>> and per-PHY features for each SoC encoded in the driver.  Since the
>>> driver otherwise doesn't (and shouldn't, IMHO) need to know how many
>>> PHYs are on each SoC, I suggested to Julien that perhaps the additional
>>> propery was the better solution.
>>
>> Phys were modeled as separate device instances, so you would need
>> difference in compatible to figure out which phy is it.
>>
>> Other way could be to create device for all phys and use phy-cells=1.
>> Whether it makes sense, depends on the actual datasheet - maybe the
>> split phy per device is artificial? There is one PHY block with two
>> address ranges for each PHY - CSI0 and CSI1 - but it is actually one
>> block? You should carefully check this because once design is chosen,
>> you won't be able to go back to other and it might be a problem (e.g.
>> there is some top-level block for powering on all CSI instances).
> 
> We're pretty sure these are multiple instances of the IP block as they
> can operate completely independently. 
> 
>>>
>>> To me it seems redundant to have the driver encode PHYs-per-SoC info,
>>> when the per-SoC DT is going to have the same info, so my suggestion was
>>> to simplify the driver and have this kind of hardware description in the
>>> DT, and keep the driver simple, but we are definitely open to learning
>>> the "right way" of doing this.
>>
>> The property then is reasonable. It should not be bool, though, because
>> it does not scale. There can be next block which supports only D-PHY on
>> CSI0 and C-PHY on CSI1? Maybe some enum or list, depending on possible
>> configurations.
> 
> OK, looks like include/dt-bindings/phy/phy.y already has
> 
>   #define PHY_TYPE_DPHY		10
>   #define PHY_TYPE_CPHY		11
> 
> we'll add a PHY_TYPE_CDPHY and use that.   Sound reasonable?

Yes. Currently it is usually used as phy-cells argument (after the phy
number/lane/ID), but cdns,phy-type and intel,phy-mode use it directly as
property in provider. In both cases they have a bit different meaning
than yours. You want to list all supported modes or narrow/restrict
them. Maybe hisilicon,fixed-mode fits your purpose?

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
