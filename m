Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52851C7EE25
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jun 2023 08:21:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CNRLbWHFle/Iz5ALg34m3ao+q7ySK/Y6HUe/Mk0V/XM=; b=o4ppMfd70rBitK
	JHmODrzmWbovBRPVjOm8Gg323doZToJjDlFrJshlLC9o56TuFWiOBYa/g4y9nEhmFJ3Zq19YnfMEW
	NHJRu76wzV+WElm/K2Bjccoan/+pwD9YaMGCemf494+cHM6RyuXPKCOwQ6HpshiFr/2KIe1Dd8Z41
	Ei6jniN3QVDswv1KhDTMnux9m/8hxXOFelR1PHyRdY8hjjktvBdf/0ZkzXC4QrKZvmfe87RV7mqT2
	abx2wKjAeHPTZg1IWA0TGmddMFggqhoKl258IucmgPQCkYgXd/TOTqtBVqbFTocIJDDP6M3tp9lfj
	q/LrsVkf5vrzkW0VavTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8cnR-0035GY-3D;
	Mon, 12 Jun 2023 08:21:06 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8cnP-0035AQ-0F
	for linux-phy@lists.infradead.org;
	Mon, 12 Jun 2023 08:21:04 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-9745baf7c13so593679666b.1
        for <linux-phy@lists.infradead.org>; Mon, 12 Jun 2023 01:20:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686558045; x=1689150045;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YuaFtQBhTySWcwWuBPWolxBfBrmsW/EltaLg5KhduEM=;
        b=prYV4Vfp+twLytv23bFpM/12uJ6o15SuH+KBCBEGZup97xeepSjtAAvrTD944DaozP
         dCjjc9Ujk6QS+CQF86cl3MlHaFd5UN5kuHsSWjm4vXGlHVc98S6yQt5ZO28R8vq4WPys
         ihK3woQF+UTH2aZsmhsFj/2qo41/3UH27bQTAGAcJTy+wCNJh1SNneIfI5ouoCjXxz+p
         59gTP01LhXBhWowWJMccPaFA70F8edGy5v1/j5ztzutzZJh6+SRIOTNumpVbECOYmCeG
         v2oIk9ltHs6P5LtcA5oGycO1Qpc4+Cx2+bPqcDqSQRPvAMRG6wk+98bjnDeq7G4fJjKC
         SWTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686558045; x=1689150045;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YuaFtQBhTySWcwWuBPWolxBfBrmsW/EltaLg5KhduEM=;
        b=T8J4UAbR+onP1Cp9EDlob0mzOWB2kYW+96/EGQ+kknAU+EAs5wg4UvS/P1Th0wk2Mx
         ROrFvepw2xpDAbbY96d4xAn+UylmW2Nw5dH8xrAZ5g56wfASsf74ygVNjsQmfffKTIY6
         oKJUHlXKv3G6VLL2z7VUv25Ic7OqZWtYuqV6lAchMy+GAarGmajE8SbtdlxkDI0U8HQq
         CygZoHCU5Nc52UEg+BWAeJTVgfBlM/OVDZgevXo91/wV+rSrzMyasn8glYvRJFxg6TsU
         By+jH33D0A/jbPCXtZegFxI82jkKHKK5wFtWR5uduHWJRM4AMrT6/eVMbkRiQCarnWeh
         dZTA==
X-Gm-Message-State: AC+VfDy2j08iXbx5d+PCVdc7zV2Yty7YS2L+A8AvCb55lua7WycAi+kq
	oPcN4aIEPtBp5QTCTnL+2Ep8PA==
X-Google-Smtp-Source: ACHHUZ7CqvoolRP6p9vsNBwdjEzm/1deg6tIoE5CeBdTRO5Vjig2Mx8w6tz8HJgvL11K7BItxZRBYg==
X-Received: by 2002:a17:907:985:b0:94e:e5fe:b54f with SMTP id bf5-20020a170907098500b0094ee5feb54fmr8999595ejc.23.1686558045382;
        Mon, 12 Jun 2023 01:20:45 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id ot25-20020a170906ccd900b00965f5d778e3sm4800684ejb.120.2023.06.12.01.20.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jun 2023 01:20:44 -0700 (PDT)
Message-ID: <b5201498-f61b-c431-536d-6cfdce8c731f@linaro.org>
Date: Mon, 12 Jun 2023 10:20:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v3 1/5] dt-bindings: ata: dwc-ahci: add PHY clocks
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 Serge Semin <fancer.lancer@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-ide@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
References: <20230608162238.50078-1-sebastian.reichel@collabora.com>
 <20230608162238.50078-2-sebastian.reichel@collabora.com>
 <2e6caba1-3781-156f-4e55-e261f56a10cb@linaro.org>
In-Reply-To: <2e6caba1-3781-156f-4e55-e261f56a10cb@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_012103_114668_40FB8C68 
X-CRM114-Status: GOOD (  11.90  )
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

On 12/06/2023 10:18, Krzysztof Kozlowski wrote:
> On 08/06/2023 18:22, Sebastian Reichel wrote:
>> Add PHY transmit and receive clocks as described by the
>> DW SATA AHCI HW manual.
>>
>> Suggested-by: Serge Semin <fancer.lancer@gmail.com>
>> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
>> ---
>>  .../devicetree/bindings/ata/snps,dwc-ahci-common.yaml     | 8 ++++++--
>>  1 file changed, 6 insertions(+), 2 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/ata/snps,dwc-ahci-common.yaml b/Documentation/devicetree/bindings/ata/snps,dwc-ahci-common.yaml
>> index c1457910520b..34c5bf65b02d 100644
>> --- a/Documentation/devicetree/bindings/ata/snps,dwc-ahci-common.yaml
>> +++ b/Documentation/devicetree/bindings/ata/snps,dwc-ahci-common.yaml
>> @@ -31,11 +31,11 @@ properties:
>>        PM-alive clock, RxOOB detection clock, embedded PHYs reference (Rx/Tx)
>>        clock, etc.
>>      minItems: 1
>> -    maxItems: 4
>> +    maxItems: 6
>>  
>>    clock-names:
>>      minItems: 1
>> -    maxItems: 4
>> +    maxItems: 6
>>      items:
>>        oneOf:
>>          - description: Application APB/AHB/AXI BIU clock
>> @@ -48,6 +48,10 @@ properties:
>>            const: pmalive
>>          - description: RxOOB detection clock
>>            const: rxoob
>> +        - description: PHY Transmit Clock
>> +          const: asic
>> +        - description: PHY Receive Clock
>> +          const: rbc
> 
> Conor's comment was not resolved. Adding entries in the middle breaks
> existing users and commit msg does not explain this.

Wait, this is oneOf, not a list. Damn context.


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
