Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7EC0C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 30 Mar 2022 09:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rAg3aAoL2OPmF/g1fF75Zq5LwQmr4ostdyGS2FGkBLM=; b=kF6kzfpfX5DWNkNhTlV4+w1MAV
	1U/jR0NsGDrtUl50OxCxqivEfxc0f/XJ5afzBEFzkbV4G07jRIW07iKKkk8N/iWJfDBBbhPJUi7ul
	wSsv0ETrhXnGFnSAXNqmO36YSyTQc2HaHlysxefwZvHwqpeqNkT6buzeCUHjOcScXQd8Aj1Bl7A4/
	T7LmYxLYLD9EroeLKaFmWzGH/m58ithKBcsgByZfgOB76/UGG0WQbvXJGxKu3sVVvOV1H1MKUQP0T
	4V7qB90nTbvwNeIXU9dZrUkV4Yd0djONcfK9inkEUq6Lvh0AIIRrskaMENUq0jIH60ffS6lN8M/lp
	Ce+57y9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZURG-00ExMe-75; Wed, 30 Mar 2022 09:16:26 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZUR3-00ExKI-KT; Wed, 30 Mar 2022 09:16:15 +0000
Received: from unknown (HELO kinkan2-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 30 Mar 2022 18:16:11 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by kinkan2-ex.css.socionext.com (Postfix) with ESMTP id E3D2D2058443;
 Wed, 30 Mar 2022 18:16:11 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Wed, 30 Mar 2022 18:16:11 +0900
Received: from [10.212.182.122] (unknown [10.212.182.122])
 by kinkan2.css.socionext.com (Postfix) with ESMTP id AE3D5B62B7;
 Wed, 30 Mar 2022 18:16:10 +0900 (JST)
Subject: Re: [PATCH v2 5/5] dt-bindings: phy: uniphier: Clean up clock-names
 and reset-names using compatible string
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Masami Hiramatsu <mhiramat@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <1648617651-9004-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1648617651-9004-6-git-send-email-hayashi.kunihiko@socionext.com>
 <ecc821cb-4dd0-48e6-668d-45c178efbbf0@linaro.org>
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Message-ID: <076c1292-053e-759d-3e6f-c262093d9d1c@socionext.com>
Date: Wed, 30 Mar 2022 18:16:10 +0900
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <ecc821cb-4dd0-48e6-668d-45c178efbbf0@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220330_021613_821721_C89CFC3C 
X-CRM114-Status: GOOD (  16.20  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi Krzysztof,

On 2022/03/30 17:13, Krzysztof Kozlowski wrote:
> On 30/03/2022 07:20, Kunihiko Hayashi wrote:
>> Instead of "oneOf:" choices, use "allOf:" and "if:" to define clock-names
>> and reset-names that can be taken by the compatible string.
>>
>> The order of clock-names and reset-names doesn't change here.
>>
>> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
>> ---
>>   .../phy/socionext,uniphier-ahci-phy.yaml      | 73 ++++++++++++------
>>   .../phy/socionext,uniphier-pcie-phy.yaml      | 37 ++++++---
>>   .../phy/socionext,uniphier-usb3hs-phy.yaml    | 75 +++++++++++++-----
>>   .../phy/socionext,uniphier-usb3ss-phy.yaml    | 77 ++++++++++++++-----
>>   4 files changed, 188 insertions(+), 74 deletions(-)
>>
>> diff --git
>> a/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
>> b/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
>> index 14f7579e7daa..61d9306e1852 100644
>> ---
>> a/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
>> +++
>> b/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
>> @@ -30,33 +30,62 @@ properties:
>>       minItems: 1
>>       maxItems: 2
>>
>> -  clock-names:
>> -    oneOf:
>> -      - items:          # for PXs2
>> -          - const: link
>> -      - items:          # for Pro4
>> -          - const: link
>> -          - const: gio
>> -      - items:          # for others
>> -          - const: link
>> -          - const: phy
>> +  clock-names: true
>>
>>     resets:
>>       minItems: 2
>>       maxItems: 6
>>
>> -  reset-names:
>> -    oneOf:
>> -      - items:          # for Pro4
>> -          - const: link
>> -          - const: gio
>> -          - const: phy
>> -          - const: pm
>> -          - const: tx
>> -          - const: rx
>> -      - items:          # for others
>> -          - const: link
>> -          - const: phy
>> +  reset-names: true
>> +
>> +allOf:
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            const: socionext,uniphier-pro4-ahci-phy
>> +    then:
>> +      properties:
>> +        clock-names:
>> +          items:
>> +            - const: link
>> +            - const: gio
>> +        reset-names:
>> +          items:
>> +            - const: link
>> +            - const: gio
>> +            - const: phy
>> +            - const: pm
>> +            - const: tx
>> +            - const: rx
> 
> Constrain also everywhere clocks and resets, so here should be:
>    resets:
>      minItems: 6
>      maxItems: 6

If I put the constraint here, it would conflict with the original one.
Should I also replace the original resets

     resets:
       minItems: 2
       maxItems: 6

with "resets: true"?

Thank you,

---
Best Regards
Kunihiko Hayashi

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
