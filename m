Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84B2BC7EE25
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jun 2023 08:40:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SzxOT+V/raeeWKTQ73P9dJNdVlp3uCo3Ig5HjS8nXdw=; b=uao1MM6dpG+Na7
	OwANTmCOGQ8vQwDej9jJRRJdcXcADV9kMtK6KUAzj1PmM0Vn3TtQjh8fMlsJiV1yrzPKVTNKA841W
	do0MTVkMTJDrJYikDriqQAHrDVJM4Z+UNC+ATnEI8tvWB5bHw9wnwcPuOfbmfb1ubSxjH85E9Tg5d
	nHoRe1IpRDNMKfv8q+V4jhTHCCHWUmH4qu1+na3CovDSLhpOmm8Sak7sTXsY1AUPgI9seoeY7p9HK
	AuED/UP0DjFkgLrAscQnuV8Cex1ZYTNNlSy8jYgfpkC5JVxGIpYmK2GBv9GPBk8AxlVVy7MFUA2c8
	Wp6BtQiUteQrJGCsKJFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8d5q-0038Rt-0b;
	Mon, 12 Jun 2023 08:40:06 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8d5n-0038Qt-2b
	for linux-phy@lists.infradead.org;
	Mon, 12 Jun 2023 08:40:05 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-977ed383b8aso668266966b.3
        for <linux-phy@lists.infradead.org>; Mon, 12 Jun 2023 01:40:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686559200; x=1689151200;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=02uq97znLW4jmjI8z3bfmKNKoaY1pURh+uCJ5ILlpl4=;
        b=r3TsQrkeAGuvV2odOjldtDHX2T+L/m8a6yRAR6lIrc1jRs/1Pi7KK6zsjHLQaR8cFi
         SxaiTckU4XCvA2DPqjaaReqb+/Ae0hBbsLNK5bvqVBAI2no9Okt7LkqEigfQIl88nkDa
         w7wumWQefYsGZSbmJ1MQso5m0yw6SrQjAHkcXfTMBztqlxs+oQbcCNSNhRQ49gBbDecK
         3ULlREI4GhYIh6OYo/CtkDRCa61kLyeP5IohYjEoxQaXLHbRuB93Jam2vFM/NLuA9yk9
         eOoNeqarG51IqFkVglJ+aCHvRNBS7EBfpFXnulWi3Erhu2A6GnEgPgDwE7YVB48i9yIX
         SLMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686559200; x=1689151200;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=02uq97znLW4jmjI8z3bfmKNKoaY1pURh+uCJ5ILlpl4=;
        b=U3ulVX21P+0y/BTshq40tXL/5fmLc05cSIz6tDRllSod6AjnB71bTCp2Ur9nkSFo+2
         /6Hi1G0QmNDGSz7OUdDDhggXQUfUjneu+btifWgJzXnZS8gmiIyEFWpMqbsF6kQ1MvVu
         LD5SJm4YklWvRZwKQ8BQk106AmArLIyXRhlZv9I6idftt1ex74ynR2TJpi0/oFwDs0GF
         988//5Mb2c5Nllcgje1ZIt0E9b5V358bf3SCDgo5CRPDqVtFk6BDqVdg3bnYOsw90EXC
         Ekclqnnm2d4TnupgBJA3JOaA69RTBdyTdlw40rG7/QwyOVVhLmsXa5fYaOV/IO2ckm85
         gmrA==
X-Gm-Message-State: AC+VfDxpZEQ6VHEN0cKYp6OeKP5Dia5SI+cOQQVLDOgkWdVLhHB/Bb/2
	sZFlL0E38c3iesXm9jl0aR1JWQ==
X-Google-Smtp-Source: ACHHUZ4xrQwuUVb3h5HfV5TapbFL6CRyh+HdmkFi6c1IQyUy5wmGPCLKe5LhyIoZ9pNqf/4ghHn8Qg==
X-Received: by 2002:a17:907:9617:b0:974:1ef7:1e88 with SMTP id gb23-20020a170907961700b009741ef71e88mr9928825ejc.13.1686559200150;
        Mon, 12 Jun 2023 01:40:00 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id m3-20020a170906258300b00977d194bf42sm4851790ejb.161.2023.06.12.01.39.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jun 2023 01:39:59 -0700 (PDT)
Message-ID: <838ed0e6-985d-9a45-7ece-c607bda15871@linaro.org>
Date: Mon, 12 Jun 2023 10:39:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v3 2/5] dt-bindings: ata: dwc-ahci: add Rockchip RK3588
Content-Language: en-US
To: Serge Semin <fancer.lancer@gmail.com>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 linux-ide@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20230608162238.50078-1-sebastian.reichel@collabora.com>
 <20230608162238.50078-3-sebastian.reichel@collabora.com>
 <4c914503-c2e5-a5d8-97af-daaee0b4ec7c@linaro.org>
 <20230612083536.q3sq7w6cyiuxaqtv@mobilestation>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230612083536.q3sq7w6cyiuxaqtv@mobilestation>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_014003_873595_23921134 
X-CRM114-Status: GOOD (  14.59  )
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

On 12/06/2023 10:35, Serge Semin wrote:
> On Mon, Jun 12, 2023 at 10:24:06AM +0200, Krzysztof Kozlowski wrote:
>> On 08/06/2023 18:22, Sebastian Reichel wrote:
>>> This adds Rockchip RK3588 AHCI binding. In order to narrow down the
>>> allowed clocks without bloating the generic binding, the description
>>> of Rockchip's AHCI controllers has been moved to its own file.
>>>
>>> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
>>> ---
>>
>> ...
>>
>>> +
>>> +properties:
>>> +  compatible:
>>> +    items:
>>> +      - enum:
>>> +          - rockchip,rk3568-dwc-ahci
>>> +          - rockchip,rk3588-dwc-ahci
>>> +      - const: snps,dwc-ahci
>>> +
>>> +  ports-implemented:
>>> +    const: 1
>>> +
>>> +patternProperties:
>>> +  "^sata-port@[0-9a-e]$":
>>> +    $ref: /schemas/ata/snps,dwc-ahci-common.yaml#/$defs/dwc-ahci-port
>>> +
>>> +    unevaluatedProperties: false
>>
> 
>> You should be able to skip this patternProperties entirely, because it
>> comes from dwc-ahci-common -> ahci-common schema. Did you try the patch
>> without it?
> 
> Please see my message about this. The "sata-port@[0-9a-e]$" sub-node
> bindings could be updated with the "reg" property constraint which,
> based on the "ports-implemented" property value, most likely is
> supposed to be always set to const: 1.

Then anyway the pattern is wrong as it should be @1 always.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
