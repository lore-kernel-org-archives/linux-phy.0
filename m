Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16A5AC32771
	for <linux-phy@archiver.kernel.org>; Fri, 19 Aug 2022 12:16:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rsPT0nYcewszJ4bI4JgdWNf3YPp8x3/wo37s/oXFQ9A=; b=Nn6cdvMrbmAh/7
	H8R4aMpbnbmrb3b1AoiJbH0esjIqlZ95KH1Wcp6evSdRWbE+qdsieHtYHrFtr76um2bUbaWs55ZPI
	sCljQqbSkqOFSf5igcIbi6bNVW/yuuIciKpEaGqYAxwJyoppgqz85EOtMVCZ6qtk5kaK8niHX7LzV
	p/1RUUmhlNrKRB07bi5Pot96azpkgu2fjDSjGi3Lrtydp1qynVOn/44GGNbValfRtpRQolVeaZD8u
	VC1b6P8J5to5ZQT8KQHdJmpxC34nqbGPmiQE0qkvB8VQ5s+Wo42L9ksRO9Tm7BdHrlK/vQQl9yv7f
	CYtDqwkEGFmNeplKwMsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oP0v9-007eM8-UV; Fri, 19 Aug 2022 12:16:15 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oP0uy-007e7L-70
	for linux-phy@lists.infradead.org; Fri, 19 Aug 2022 12:16:05 +0000
Received: by mail-lf1-x132.google.com with SMTP id z25so5916656lfr.2
        for <linux-phy@lists.infradead.org>; Fri, 19 Aug 2022 05:16:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=iRQAht+syD+WoClHi+abQcpzAmB47QGZmxwK52W8goQ=;
        b=gAnalwOyubLu6+wLXJWbeHG2l/u2fmMgVQ9Vpx1zAjL7bFzAM5ZzxJQcJDTeot4yn+
         i1AJkCiTdquYltpTVt2ufhmroC5Uj/FxxUY6TdC9cKeyHf3f/ViVjSeGky44Bm+U7x03
         7UcAcO4Ol3ry4gVYmwiLyIvga5mk111OYk+z1mTQjAUBS8QbknoRSmXCcSeqxp3J4BAM
         lGS55fHy2ePWP/sOp3TCd1gTP+zRBRsgcPLcehqXQBBqRL8CghXkoR/xGnXewBmiDEEG
         oqeNqSFRTsqamvLgd0nUvdFvmZ0A8GCy2DBVQx14FWpRe3kQcv0YPrMQacMchQJe6X1b
         96MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=iRQAht+syD+WoClHi+abQcpzAmB47QGZmxwK52W8goQ=;
        b=zFUv3oX0Bo1lPc8YzvXBSUDLijFDYirgXK6C9VIj1wzqwp8oTKfKBacd7nJTv8RUjM
         JPabmVI1rkD0zgPz0JurfLEbnsn4vquqqwT/QaScXE0usQbToiussuKJIM6G35VIyN4V
         tlm6gdUmmOIi5fOqouUDMHhkcPnMf2zBjy67ogFRYvWEo6zhr1ue+fwZyuKIIwKZGSww
         fqSCChxI8q0GSRIC4xai7Y4y/iKUcl9/tuSy+LrNkOb1bPU3Q5dGseBmckIC1+baClQs
         UXWagmOhvE4wskgMKBEbAy+vsf3H7AqOQw11lSfQfafnBX8us1oBcH/s3FeJKaXW0P/f
         FFHw==
X-Gm-Message-State: ACgBeo2eVM/lRxMoQZbe2+kI7dKgqlt31UsfFxhmdytoSCjomvNA3RP+
	Rb5u6KUhpoEOvkKRLux2OASGEA==
X-Google-Smtp-Source: AA6agR6ZzDgldit3bbnQaHeffN9D/ccyNG3aT6Z0pYd8NszNFSXmXT7adl+3BQtJYB1uFOadxcnBlQ==
X-Received: by 2002:ac2:5e75:0:b0:492:c50a:3a89 with SMTP id a21-20020ac25e75000000b00492c50a3a89mr1449763lfr.68.1660911360346;
        Fri, 19 Aug 2022 05:16:00 -0700 (PDT)
Received: from ?IPV6:2001:14bb:ac:e5a8:ef73:73ed:75b3:8ed5? (d1xw6v77xrs23np8r6z-4.rev.dnainternet.fi. [2001:14bb:ac:e5a8:ef73:73ed:75b3:8ed5])
        by smtp.gmail.com with ESMTPSA id t14-20020a2e8e6e000000b00261af4754bbsm594964ljk.41.2022.08.19.05.15.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Aug 2022 05:15:59 -0700 (PDT)
Message-ID: <438da392-f419-ad76-7e91-aa4aab36e12c@linaro.org>
Date: Fri, 19 Aug 2022 15:15:58 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 2/7] dt-bindings: phy: mediatek,tphy: add property to set
 pre-emphasis
Content-Language: en-US
To: Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Eddie Hung <eddie.hung@mediatek.com>
References: <20220819091344.2274-1-chunfeng.yun@mediatek.com>
 <20220819091344.2274-2-chunfeng.yun@mediatek.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220819091344.2274-2-chunfeng.yun@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220819_051604_299663_DDDF4A9B 
X-CRM114-Status: GOOD (  13.41  )
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

On 19/08/2022 12:13, Chunfeng Yun wrote:
> Add a property to set usb2 phy's pre-emphasis.
> 
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> ---
>  Documentation/devicetree/bindings/phy/mediatek,tphy.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml b/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
> index 848edfb1f677..aee2f3027371 100644
> --- a/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
> +++ b/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
> @@ -219,6 +219,13 @@ patternProperties:
>          minimum: 1
>          maximum: 15
>  
> +      mediatek,pre-emphasis:
> +        description:
> +          The selection of pre-emphasis (U2 phy)
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        minimum: 1
> +        maximum: 3

Instead of hard-coding register values in bindings, you should rather
describe here feature/effect. If it is in units, use unit suffixes. If
it is some choice, usually string enum is appropriate.

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
