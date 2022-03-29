Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55DA7C433FE
	for <linux-phy@archiver.kernel.org>; Tue, 29 Mar 2022 23:48:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=F2y76H4or1rNQUQsfnXujddKZhdb+kWIyZLE73MEqfg=; b=Qq5M8yBLZ93SQy4u9Up3Z7KeQl
	3MF4dQoC8lVlCDV+7iXp1+8Ip3/TpHdnewHF23K0jS5Cc4R4BcdnuToaGOSNOudgyHbJOtZXFM8/i
	UqT3fo34+tO+2wlgUxAFRbxFXfNU4Ti6/Atm6wUnABOWmMfD1fgX7aN+2ELDcDk1Q767z84/cyE4j
	VsNI2Y8wSV00QVm8I8aqnAuhWb7eSIVQq0zBba1guNGoarNh6y+F4sySPvzod8XgEkhJxypPWSc7t
	JAyTKMNUAp8L2g2cIafmTB6qv0D1/v8dhJKUPPRvSMy3JpiygchYAM2YD0wwqNJnzQUNTVVyRAV8k
	XDSSVzIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZLZx-00DmhQ-N3; Tue, 29 Mar 2022 23:48:49 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZLZl-00DmeW-2v; Tue, 29 Mar 2022 23:48:38 +0000
Received: from unknown (HELO iyokan2-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 30 Mar 2022 08:48:33 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by iyokan2-ex.css.socionext.com (Postfix) with ESMTP id 968F82058B50;
 Wed, 30 Mar 2022 08:48:33 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Wed, 30 Mar 2022 08:48:33 +0900
Received: from [10.212.182.122] (unknown [10.212.182.122])
 by kinkan2.css.socionext.com (Postfix) with ESMTP id 83659B62B7;
 Wed, 30 Mar 2022 08:48:32 +0900 (JST)
Subject: Re: [PATCH 3/3] dt-bindings: phy: uniphier-ahci: Fix missing
 reset-names
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Masami Hiramatsu <mhiramat@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <1648433152-23126-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1648433152-23126-4-git-send-email-hayashi.kunihiko@socionext.com>
 <2e0be70f-f800-e3f8-363e-6598468fa091@linaro.org>
 <54a88acd-49ed-01f6-4108-b74bc653a612@socionext.com>
 <1ff5682f-3f59-8635-631f-d648e604044f@linaro.org>
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Message-ID: <1dbe4ef7-25bc-2f8a-6ce5-3a39453a8b1c@socionext.com>
Date: Wed, 30 Mar 2022 08:48:32 +0900
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <1ff5682f-3f59-8635-631f-d648e604044f@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_164837_280048_99503176 
X-CRM114-Status: GOOD (  20.61  )
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

On 2022/03/29 20:45, Krzysztof Kozlowski wrote:
> On 29/03/2022 12:55, Kunihiko Hayashi wrote:
>> Hi Krzysztof,
>>
>> Thank you for reviewing.
>>
>> On 2022/03/29 3:58, Krzysztof Kozlowski wrote:
>>> On 28/03/2022 04:05, Kunihiko Hayashi wrote:
>>>> Add missing "phy" reset-names to fix the following warning:
>>>>
>>>>     uniphier-pro4-ace.dtb: ahci-phy@10: resets: [[26, 28], [26, 12], [26,
>>>> 30], [36, 0], [36, 1], [36, 2]] is too long
>>>>         From schema:
>>>> Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
>>>>     uniphier-pro4-ace.dtb: ahci-phy@10: reset-names: 'oneOf' conditional
>>>> failed, one must be fixed:
>>>>         ['link', 'gio', 'phy', 'pm', 'tx', 'rx'] is too long
>>>>         From schema:
>>>> Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
>>>
>>> There is no ahci-phy in current sources...
>>
>> Oops, I'm going to add ahci controller to the existing devicetree,
>> but not yet. I shouldn't write the future warning in the commit message,
>> so I'll fix it.
>>
>>>>
>>>> Fixes: 34f92b67621f ("dt-bindings: phy: uniphier-ahci: Add bindings for
>>>> Pro4 SoC")
>>>> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
>>>> ---
>>>>    .../devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml   | 3 ++-
>>>>    1 file changed, 2 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git
>>>> a/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
>>>> b/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
>>>> index 3b400a85b44a..14f7579e7daa 100644
>>>> ---
>>>> a/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
>>>> +++
>>>> b/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
>>>> @@ -43,13 +43,14 @@ properties:
>>>>
>>>>      resets:
>>>>        minItems: 2
>>>> -    maxItems: 5
>>>> +    maxItems: 6
>>>>
>>>>      reset-names:
>>>>        oneOf:
>>>
>>> As a separate commit, this oneOf should be converted into allOf:if:then:
>>> cases which will enforce the resets per compatible.
>>>
>>> Can you do that as well?
>>
>> Ok, I've found some examples using "allOf:if:them:" cases,
>> so I'll try to convert it with another commit.
>>
> 
> For an example, you can take a look at (linux-next):
> Documentation/devicetree/bindings/clock/samsung,exynos7885-clock.yaml
> 
> and clocks/clock-names properties.

Thanks for your suggestion.
I understand how to write it and am trying to convert the *-names to this case.

I also found such cases and some mistakes in the other phys (usb3 and pcie),
so I'll fix and resend them next.

Thank you,

---
Best Regards
Kunihiko Hayashi

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
