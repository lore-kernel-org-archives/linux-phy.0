Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3723C35274
	for <linux-phy@archiver.kernel.org>; Mon, 18 Dec 2023 21:09:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aEyMn2mq25o5NQgqLUaMxLlqYqXyAbXdBqPQw6wzUjo=; b=z4SqlNZPHYEXn0
	kLlKtne30fE7CtkNmhJ7WTRcPbyqAUFhcb5m14nB3yTLAhT4IqniMJBdCCiUxiwnK6Lc1O3B+uH93
	tvTe0isaWnyxcHMCwy/Z2EbiUd/pICmEr6xCMPY51iH5KsRsYYmH+VpLVII6Y9N+rgXZlb/5PAjSN
	ihDhiw5s0ai64IDyzFDI1YViqf3728levfWFx65qriDvNbpLR3JMODCLWX+IA68VErTzJ2oXcNnwA
	zMnhIVlUao8HyjddPDvsRjHVYXHWbfSt3+yryvh3dc8cZVCUHVRhn7C85XKZwplG5HVIAIx7JLJFu
	ZY9yPVsCu6jN0CDlRbrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFKrg-00C69G-1D;
	Mon, 18 Dec 2023 21:09:28 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFKrd-00C67u-0p
	for linux-phy@lists.infradead.org;
	Mon, 18 Dec 2023 21:09:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id B6BF6CE12CD;
	Mon, 18 Dec 2023 21:09:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4BEA4C433C8;
	Mon, 18 Dec 2023 21:09:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702933761;
	bh=3MosmBp20tBwmMyOMpL4/9U1Iq8BUk5yFmEzT3FIu+Y=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ciLWQEvoFSIjUWoq7MmMjRuQzmeI40nckoq5YN8t+0TKtP3DKxNW1UkupnFIUkZdY
	 ANbkYGZEHTUf/auALal47E3J4Os4Rdqcp4D3QhBmndZ9gcPWugEz0W2aZvSMy2b09e
	 0+0/RjTSlyMNLBW/Fy4gXIyYRLt4wwf3Q19zD/pjzdxM0jo3Wstr5asw6R6liPa9iw
	 hWYJRM6x5Kal//jGmY+K+9meZ3k/kPxRF2jkBzNvxrtEXIwZItFQT5iv4IyDBrKGPc
	 Ko9hV7HU2RmP4YOvNURGhU6MggWrbnOF0FIr80iAzVxgohZigkCZq1aZAJYLGd6odG
	 ZOQIh1zNj/BBQ==
Message-ID: <9a86efae-2855-484e-be01-cf5fffdf9f95@kernel.org>
Date: Mon, 18 Dec 2023 23:09:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/5] dt-bindings: phy: cadence-torrent: Add optional
 input reference clock for PLL1
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Swapnil Kashinath Jakhade <sjakhade@cadence.com>,
 "vkoul@kernel.org" <vkoul@kernel.org>, "kishon@kernel.org"
 <kishon@kernel.org>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Cc: Milind Parab <mparab@cadence.com>, "s-vadapalli@ti.com"
 <s-vadapalli@ti.com>
References: <20231212114840.1468903-1-sjakhade@cadence.com>
 <20231212114840.1468903-2-sjakhade@cadence.com>
 <e09e4df8-ec36-4953-9bb0-75a3ce0b535d@linaro.org>
 <DM6PR07MB61548DC520B4BA66D6FC625AC58CA@DM6PR07MB6154.namprd07.prod.outlook.com>
 <38d171ee-b94b-4d1c-8702-60735a005596@linaro.org>
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <38d171ee-b94b-4d1c-8702-60735a005596@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_130925_767272_3C17EECA 
X-CRM114-Status: GOOD (  15.53  )
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


On 14/12/2023 09:22, Krzysztof Kozlowski wrote:
> On 14/12/2023 08:02, Swapnil Kashinath Jakhade wrote:
>> Hi Krzysztof,
>>
>>> -----Original Message-----
>>> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>> Sent: Wednesday, December 13, 2023 12:19 PM
>>> To: Swapnil Kashinath Jakhade <sjakhade@cadence.com>; vkoul@kernel.org;
>>> kishon@kernel.org; robh+dt@kernel.org; krzysztof.kozlowski+dt@linaro.org;
>>> conor+dt@kernel.org; linux-phy@lists.infradead.org; linux-
>>> kernel@vger.kernel.org; devicetree@vger.kernel.org
>>> Cc: Milind Parab <mparab@cadence.com>; rogerq@kernel.org; s-
>>> vadapalli@ti.com
>>> Subject: Re: [PATCH v2 1/5] dt-bindings: phy: cadence-torrent: Add optional
>>> input reference clock for PLL1
>>>
>>> EXTERNAL MAIL
>>>
>>>
>>> On 12/12/2023 12:48, Swapnil Jakhade wrote:
>>>> Torrent PHY can have two input reference clocks. Update bindings
>>>
>>> It already supports two.
>>>
>>
>> Thanks for your comments.
>> refclk and pll1_refclk are the two input reference clocks for the PLLs.
>> phy_en_refclk is used to enable output reference clock in some cases.
> 
> Why input clock is used to enable output reference clock?

Looking at the driver code, "phy_en_refclk" is used at 2 places only to
set the parent of 2 clocks apparently called "received reference clock"
and "derived reference clock", either of which can be used to enable an
optional reference clock output feature.

My understanding is that it is a separate refclk input than 'refclk' (pll0)
or 'pll1_refclk' which can be used to enable a reference clock output feature.

So this PHY can support a total of 3 input reference clocks:
"refclk" is PLL0 reference clock and is required on all platforms
"pll1_refclk" is PLL1 reference clock and is required on some platforms
"phy_en_refclk" is reference for output reference clock generator and is optional on all platforms

Swapnil, can you please confirm my understanding? Thanks!

> 
>>
>>>> to support dual reference clock multilink configurations.
>>>>
>>>> Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>
>>>> ---
>>>>  .../devicetree/bindings/phy/phy-cadence-torrent.yaml        | 6 +++---
>>>>  1 file changed, 3 insertions(+), 3 deletions(-)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/phy/phy-cadence-
>>> torrent.yaml b/Documentation/devicetree/bindings/phy/phy-cadence-
>>> torrent.yaml
>>>> index dfb31314face..98946f549895 100644
>>>> --- a/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
>>>> +++ b/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
>>>> @@ -35,14 +35,14 @@ properties:
>>>>      minItems: 1
>>>>      maxItems: 2
>>>>      description:
>>>> -      PHY reference clock for 1 item. Must contain an entry in clock-names.
>>>> -      Optional Parent to enable output reference clock.
>>>> +      PHY input reference clocks - refclk & pll1_refclk (optional).
>>>> +      Optional Parent to enable output reference clock (phy_en_refclk).
>>>
>>> So third clock? But you allow only two? Confusing.
>>>
>>
>> Yes, if both refclk and pll1_refclk are present, phy_en_refclk can't be used.
>>
>>>>
>>>>    clock-names:
>>>>      minItems: 1
>>>>      items:
>>>>        - const: refclk
>>>> -      - const: phy_en_refclk
>>>> +      - enum: [ pll1_refclk, phy_en_refclk ]
>>>
>>> This does not match your commit msg. You already had two clocks there.
>>>
>> Yes, but refclk was the single input reference clock used for PLLs earlier.
>> As stated in commit message, a new input reference clock (pll1_refclk) is added here.
> 
> existing phy_en_refclk is also input reference clock, isn't it?
> 
>>
> 
> Best regards,
> Krzysztof
> 

-- 
cheers,
-roger

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
