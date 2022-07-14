Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 887DCC433EF
	for <linux-phy@archiver.kernel.org>; Thu, 14 Jul 2022 09:33:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Swe8PsXoJe9jK5bX7KXerOYDEY+HqTO6OaED02OyihA=; b=JN+aEIGW5N6HSR
	6muP+L4auzqt1PYzZrSP8/gOM/mC9iU4/bryFq9lmRWUHyDS3Mjqrl3O4wZxtF0S15YLNvjwkCZzo
	bOn2J+Tx7oUodK964fRT3LaYTl6UhZhbNAF9SIUL411/jStfCVoljjLqeDZArAwc6MIpKdkLQgNKe
	r4w5WoISZZSmAidMUb1lBCz4V2i+583kYC2sRBnevJMurGsqeJf7/vNjNbvWv2beLth/hETGItaEz
	bHQpYAWJOfzw/bQr4wPAqRhNlyNV2sPg7ClN6RLwD+vk7QzA811IbZxnO4MGCkS0+DFHPusZOk6WU
	VXNhTfKLrvuwu0xbuFqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBvDT-00CtI4-Kw; Thu, 14 Jul 2022 09:33:03 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBvBu-00CrzH-Ng
	for linux-phy@lists.infradead.org; Thu, 14 Jul 2022 09:31:28 +0000
Received: by mail-lj1-x22d.google.com with SMTP id c15so1526749ljr.0
        for <linux-phy@lists.infradead.org>; Thu, 14 Jul 2022 02:31:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=zUUauj6xWQlBKhAmggWRJiHEqd+Uc2FLH1vOt4Xe2hc=;
        b=xOohA+X0/I6OlznNLZVRA2ZiFsMx+FSzNZpiqTOZlDUlQldcKqbYKMGrBYmQlZISA6
         OmYD3wdYcIQhEJmaVMMF5F4wl448dPyxDp/nscvjJdYjYyFQxduw8m4RBI0L4wdTYx4x
         oVnVkFi2IYVqFw89GRDrja22fhTDfDz5yvT1jAiMogAAKdo3OOvWJx+T9T/n7WcO9SCl
         3WIp5dx9o9YHn8Kv54r3/61aRZG6p+F+MmrI4pzcBHEBYAJqw7Jw3MylRn83m1LfFtyS
         6lxNweJ2Pg8BwdZ5GpzfNkz7yl0CJTB+S0QdmJhNHjacRkftXAzytlpPrmKSV/Fh1fRt
         EJ5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=zUUauj6xWQlBKhAmggWRJiHEqd+Uc2FLH1vOt4Xe2hc=;
        b=tyG0zfG6bDyY2peVsnnbiAs91ViugNvcHy864Qt27qGHieHPLeNLBiY0Jf2vzgAzJ8
         UEE5A3vQB0ZpwPxgtJVGnS4D55mLTlkMoSpzKLmtIc91AP5vEXjMMlVG6h7osqQY5DS7
         ioIOYrjCZIfz4vMgRjwU2TbDRlYeLS3Wcl3gWy50Eqmeddx0kuRgh/P8g6//7Vqk6Taw
         g8qYP2pmjAomXv3wP0fBUk8Z/XD+o8t4wiirJNhnb1OYL+so9uggSI40rJLeL3OIDTln
         A2m7Uf3It/Ta+BYr29s+0k0mz3K6DRsQTxoW6q2mYew4fXq8P5BscqGkFL2fEmkn2uoG
         JAvA==
X-Gm-Message-State: AJIora/McQQNbwbFAgb5A3mVhEoASDvM3PrMX/61QBw2wesx/mOBkqVV
	V+7IgaI2+T1xx1MifoZzDSQ68Q==
X-Google-Smtp-Source: AGRyM1uoaKWpRhIDIlpLpcxTXkubmgIVBqbNjuwoyADerFM3djjjrtYD5bxDk4+gHIcEyN3xNoHMAQ==
X-Received: by 2002:a2e:8046:0:b0:25d:82b2:b328 with SMTP id p6-20020a2e8046000000b0025d82b2b328mr3907457ljg.185.1657791085189;
        Thu, 14 Jul 2022 02:31:25 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id u20-20020a05651220d400b0047255d21132sm260453lfr.97.2022.07.14.02.31.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jul 2022 02:31:24 -0700 (PDT)
Message-ID: <5187985c-7f86-320b-aee9-a1107c8ce0a7@linaro.org>
Date: Thu, 14 Jul 2022 11:31:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 00/30] phy: qcom,qmp: fix dt-bindings and deprecate
 lane suffix
Content-Language: en-US
To: Johan Hovold <johan@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220707134725.3512-1-johan+linaro@kernel.org>
 <Ys/QBPJmkWO6O3Fw@hovoldconsulting.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Ys/QBPJmkWO6O3Fw@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_023126_826069_7BF7F9C3 
X-CRM114-Status: GOOD (  18.94  )
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

On 14/07/2022 10:12, Johan Hovold wrote:
> On Thu, Jul 07, 2022 at 03:46:55PM +0200, Johan Hovold wrote:
>> When adding support for SC8280XP to the QMP PHY driver I noticed that
>> the PHY provider child node was not described by the current DT schema.
>>
>> The SC8280XP PHYs also need a second fixed-divider PIPE clock
>> ("pipediv2") and I didn't want to have to add a bogus "lane" suffix to
>> the clock name just to match the current "pipe0" name so I decided to
>> deprecate the unnecessary suffix in the current binding instead.
>>
>> To be able to add the missing child-node schema and handle device
>> specifics like additional PIPE clocks, it quickly became obvious that
>> the binding needs to be split up.
>>
>> This series clean up and fixes some issue with the current schema before
>> splitting it up in separate schemas for PCIe, UFS and USB and adding
>> missing parts like the child PHY provider nodes.
>>
>> The MSM8996 PCIe PHY gets its own schema as this is the only non-combo
>> PHY that actually provides more than one PHY per IP block. Note that the
>> "lane" suffix is still unnecessary and misleading.
>>
>> The final patches add support for the updated binding to the (recently
>> split up) PHY drivers. Included is also a related combo PHY cleanup.
>>
>> Johan
>>
>>
>> Changes in v2
>>  - squash split + cleanup + example patches (Krzysztof)
>>  - deprecate clock-names instead of dropping suffix (Krzysztof)
>>  - deprecate reset-names instead of dropping suffix (Krzysztof)
>>  - flatten child reg if/then schemas (Krzysztof)
>>  - add back optional vddp-ref-clk to all bindings even though it likely
>>    only applies to MSM8996/98 UFS (Krzysztof)
>>  - add missing sc7180 schema to USB binding
>>  - misc clean ups
>>    - shorten or drop descriptions
>>    - drop quotes around $id and $schema (Krzysztof)
>>    - use maxItems with clock-output-names
>>    - combine two USB clock+reset schemas
>>  - add Reviewed-by/Acked-by tags
> 
> Any further comments to this series?
> 
> Vinod, I noticed there was a conflict when rebasing on linux-next due to
> commit 85d43a69db2d ("dt-bindings: phy: qcom,qmp: add IPQ8074 PCIe Gen3
> PHY binding").
> 

I got few comments. Apologies for a slow review, I am a bit overloaded.

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
