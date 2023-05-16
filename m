Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E3C0C7EE23
	for <linux-phy@archiver.kernel.org>; Tue, 16 May 2023 21:31:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TPKSBIPnJ0sT3APadpbu2zrMY+W5G8fOQlMnZDlFlC4=; b=EDTN+3hWlMmeob
	g2sNumnS9R1Rf7/POZPE00NLVsVyT28Ulr6BZCQiW3B61V3un+Bw3tGT28s4IYgu95iyOCQr0vONR
	d7fyvP5SUtxN/KGyVeqRCAnzQZEN2GRnEbCnsv/SUVNZsu+kpHgDwQg0TVX//Q2EYtIY33m6Q5C6L
	QkxXVeDMwTkwoEpr+F9BNhBx6amNam0rFIMzaLm+FpAZxDUmh97HwMu9x4ETZ2UQp04PdTlmezUBF
	D1MZ0W+EPmIt0+GY2MibsmFyzY7YOW0bmEAq+kB002w7tE8tYjlZ/SvTOyQ0phPu9Kv48qgKKfX6d
	lUmwimS1IvEdnMWrsBbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pz2GS-007BQp-0C;
	Tue, 16 May 2023 21:31:24 +0000
Received: from mail-pf1-x430.google.com ([2607:f8b0:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pz2GM-007BO4-1q
	for linux-phy@lists.infradead.org;
	Tue, 16 May 2023 21:31:22 +0000
Received: by mail-pf1-x430.google.com with SMTP id d2e1a72fcca58-644d9bf05b7so8643662b3a.3
        for <linux-phy@lists.infradead.org>; Tue, 16 May 2023 14:31:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1684272676; x=1686864676;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=R5CRHn8zU2wZsvy0JRRZis0EWZY7YDhaSFOHEA4KdRg=;
        b=o4uwt/CEsKOFVj4TSBd9vuegw2VIZM9zVBVMpcYfDe9/EKHD52bRQNnaFbjpbkHJ9p
         YplJPVxC1QHPQx5yH/tZwo4tBQAj5EFxdqd9FxWnMi5sjpS4xui7FsgN2dpvILzib/Hk
         faroGEqAEyUgMM0+717KknAxv3UII1KDhg0glpLXzpBYje/KSloSiAtGRvvIx3MkHjgi
         VKD5e/ZjZAztMwm4+LWz2VWSjXW8kVp2htInaNA5jlDsrXioL+90VDshEbq3TdfNjSPc
         Yleugl/EQgz52mrBRjAMGK9M7mauAmyGuptJxSEeCz6+OP4P7/Lm2HNTU4nOZz7xjcob
         bawg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684272676; x=1686864676;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=R5CRHn8zU2wZsvy0JRRZis0EWZY7YDhaSFOHEA4KdRg=;
        b=fu8R8Z85rfapHtE2WDf9zd6D0zM99F9yWhiw4vedv/cKsiJkNP/bG6/4A8esOH7Pfw
         O1ec1iLarBXUtANS2HR0YMyU+2ZuGE0nQPzChb+n3GFFQmS+Hm9vhEEoZHTl4q127mcc
         GJhPu5oKceKSON0cC6LtobZkdoLN+QexoIFCl4HVcMKWO/WORNU50gmz7IuvLOJSwGqH
         JJgr1xQTxrD3/eb/OuClN6+avhLu0D1PBVc+Dr2tbZP26WvjJaTiWSkDtUWuIFPtTeeT
         OM5/2n1ps5D1/BBz0nL/nS0T7WM8QunmpdyR1e5C4SpUhOXx6mfXPjkiZH9KJQo6kFj1
         vDEA==
X-Gm-Message-State: AC+VfDw71hwm9PsgqPnNEy9fjqrWkIN6c0iDuEOhUSOKnW3DnCK9N0UR
	oDunwbJjKcveGLbRmp+bqqDeEw==
X-Google-Smtp-Source: ACHHUZ6+HwilpdkWKX7TFAFXPBYVyOINgkLVoqxcmDktQYsz1CYMpBHtUHdIF5XtrBA17/dhRUjXAg==
X-Received: by 2002:a05:6a00:2d0e:b0:641:699:f353 with SMTP id fa14-20020a056a002d0e00b006410699f353mr52896229pfb.22.1684272676506;
        Tue, 16 May 2023 14:31:16 -0700 (PDT)
Received: from localhost (63-228-113-140.tukw.qwest.net. [63.228.113.140])
        by smtp.gmail.com with ESMTPSA id e11-20020a62ee0b000000b00642ea56f06dsm13790697pfi.26.2023.05.16.14.31.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 May 2023 14:31:14 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Julien Stephan
 <jstephan@baylibre.com>
Cc: robh@kernel.org, chunkuang.hu@kernel.org,
 linux-mediatek@lists.infradead.org, Florian Sylvestre
 <fsylvestre@baylibre.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>, Andy
 Hsieh <andy.hsieh@mediatek.com>, Vinod Koul <vkoul@kernel.org>, Kishon
 Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
 <angelogioacchino.delregno@collabora.com>, "moderated list:ARM/Mediatek
 USB3 PHY DRIVER" <linux-arm-kernel@lists.infradead.org>, "open
 list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>, "open
 list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: add mediatek mipi csi driver v
 0.5
In-Reply-To: <fbf1b0a6-f45d-69a0-5de6-8269567e15b3@linaro.org>
References: <20230515090551.1251389-1-jstephan@baylibre.com>
 <20230515090551.1251389-2-jstephan@baylibre.com>
 <ab9aa30f-82d7-1d14-5561-e19ff10af0b0@linaro.org>
 <4yppinkucchwnwtnnpbqdn4bejmntjq3q6mx6es55f2pwyce3c@qdhdks47lpyt>
 <1853f049-4f00-b7f0-973a-2c4e7b0b2634@linaro.org>
 <7h353w2oug.fsf@baylibre.com>
 <fbf1b0a6-f45d-69a0-5de6-8269567e15b3@linaro.org>
Date: Tue, 16 May 2023 14:31:13 -0700
Message-ID: <7hwn18yndq.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_143118_832716_E5CF204C 
X-CRM114-Status: GOOD (  26.09  )
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

Hi Krzysztof, 

Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> writes:

> On 16/05/2023 19:00, Kevin Hilman wrote:
>>>>>> +  compatible:
>>>>>> +    enum:
>>>>>> +      - mediatek,phy-mipi-csi-0-5
>>>>>
>>>>> SoC based compatibles. 0-5 is odd.
>>>>>
>>>>>> +
>>>>>> +  reg:
>>>>>> +    maxItems: 1
>>>>>> +
>>>>>> +  '#phy-cells':
>>>>>> +    const: 0
>>>>>> +
>>>>>> +  mediatek,is_cdphy:
>>>>>
>>>>> No underscores in node names.
>>>>>
>>>>>> +    description:
>>>>>> +      Specify if the current phy support CDPHY configuration
>>>>>
>>>>> Why this cannot be implied from compatible? Add specific compatibles.
>>>>>
>>>>>
>>>> This cannot be implied by compatible because the number of phys depends
>>>> on the soc and each phy can be either D-PHY only or CD-PHY capable.
>>>> For example mt8365 has 2 phy: CSI0 and CSI1. CSI1 is DPHY only and CSI0 is CD-PHY
>>>
>>> So it is SoC specific so why it cannot be implied by compatible? I don't
>>> understand. You will have SoC specific compatibles, right? or you just
>>> ignored my comments here?
>> 
>> Julien, I think you had SoC specific compatibles in an earlier version
>> but then changed it to be generic based on reviewer feedback.  However,
>> that earlier version of the driver was trying to do a bunch of SoC
>> specific logic internally and support multiple SoCs.  You've now greatly
>> simplified the driver, with only a few SoC specific decisions needed.
>> These can be implied by the driver based SoC specific compatible, as
>> Krzysztof suggests, so you should just go back to having SoC specific
>> compatibles.
>> 
>
> Yes. If there is common part, e.g. several SoCs use the same device with
> same programming model, then the generic recommendation is to have
> SoC-based fallback (used also in the driver) and SoC-specific compatibles.
>
> Second accepted solution is to have generic fallback which does not use
> SoC in the compatible (and of course mandatory SoC-specific comaptibles).
>
> Third is to use versioned IP blocks.
>
> The second case also would work, if it is applicable to you (you really
> have fallback matching all devices). Third solution depends on your
> versioning and Rob expressed dislike about it many times.
>
> We had many discussions on mailing lists, thus simplifying the review -
> I recommend the first choice. For a better recommendation you should say
> a bit more about the block in different SoCs.

I'll try to say a bit more about the PHY block, but in fact, it's not
just about differences between SoCs. On the same SoC, 2 different PHYs
may have different features/capabilities.

For example, on MT8365, There are 2 PHYs: CSI0 and CSI1.  CSI0 can
function as a C-PHY or a D-PHY, but CSI1 can only function as D-PHY
(used as the example in the binding patch[1].)  On another related SoC,
there are 3 PHYs, where CSI0 is C-D but CSI1 & CSI2 are only D.

So that's why it seems (at least to me) that while we need SoC
compatible, it's not enough.  We also need properties to describe
PHY-specific features (e.g. C-D PHY)

Of course, we could rely only on SoC-specific compatibles describe this.
But then driver will need an SoC-specific table with the number of PHYs
and per-PHY features for each SoC encoded in the driver.  Since the
driver otherwise doesn't (and shouldn't, IMHO) need to know how many
PHYs are on each SoC, I suggested to Julien that perhaps the additional
propery was the better solution.  

To me it seems redundant to have the driver encode PHYs-per-SoC info,
when the per-SoC DT is going to have the same info, so my suggestion was
to simplify the driver and have this kind of hardware description in the
DT, and keep the driver simple, but we are definitely open to learning
the "right way" of doing this.

Thanks for your review and guidance,

Kevin

[1] https://lore.kernel.org/linux-mediatek/20230515090551.1251389-2-jstephan@baylibre.com/

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
