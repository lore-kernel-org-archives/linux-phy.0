Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 244DFC4332F
	for <linux-phy@archiver.kernel.org>; Tue,  8 Nov 2022 05:17:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Subject:References:Cc:To:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fmeCYRNwK4xmS8I4jAEGnkxZGIGHXS+2LMWJzfVweHw=; b=BXsje4cOkJjz4j
	Hk/xTEbVeGsosacUNOkfMXNP9fyCAypaUbN7vLooR/bNaiA8tQdQfD2T6eDlQg07EUlQJJcz0jdsw
	ZrHaJ0HTHBvIreKgvx++MebnpmBfSx3ixuWS9iZvgBlK3M9cHIgZ6f2qamKhOv82Arh4rIXeDdg0M
	tMs9r6RItk/iZpYZSIu0BgL5OxdJbOEqf7guJHd4GeVl3yjkq4PFuCLMkkep9m+nvQX2vR6RQH7Fu
	+6y0jKCRaGS4e5opR8tHsTMAhNc5uMInCi7MjGHrFZURp1KkHEJUi0mDyOGojXZXZmbLS+hUpqmoV
	AZZtS98M7CR2sktNTRbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osGzb-002tNv-JT; Tue, 08 Nov 2022 05:17:47 +0000
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osGzQ-002tMk-1a; Tue, 08 Nov 2022 05:17:37 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id 94A605C012D;
	Tue,  8 Nov 2022 00:17:30 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute1.internal (MEProxy); Tue, 08 Nov 2022 00:17:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
	cc:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1667884650; x=
	1667971050; bh=SJuSQ+jl4Uygd+zShoyysZlrDAWOx7DmYFHRE5FGIXo=; b=S
	kdhmMKzarfOb9xVud6mQlPboh4TpWsge6cXiy8JsE/M8hh9r/7KW2qkOpV136HKj
	aNXOGnrLMS35PbnaY5A7LG2qwbtJcRcf9r7zC6EslEJ9PMJvyOZ3F6eBWCUBiqB1
	qDyPol0ubpbmcBZ2A+OdtkQ0ZVK3bLYfBCH2gFzcgIB0Yx4lwH6CphFYZmYzjYr4
	5cI5/+P29fop02nxsNzybXw7MiPkBpG2XZ4v6+dKloOjDHjFCKvSku6+eHyX+eZo
	BggPYvDKBHaGfzILP4Kj1MKY5fdGntS5LHKrCgKFBLtFKr95OUYh1TXEWeYo3vMF
	a8eeY+ihMWmi9daERIV1g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1667884650; x=
	1667971050; bh=SJuSQ+jl4Uygd+zShoyysZlrDAWOx7DmYFHRE5FGIXo=; b=p
	q00CHf9Fh3THRGWklQr99bPgKGDfkY6/btKw8o670yYtZfrWoRR0DU9yJSBWmFB0
	+0SL3pAHUMbzEq7/+CQdEsSKbqtzG1wVVu2FTPCdBHhCoU6YSsKnRWOh+nF3CzMC
	w0RnKdE+kuKx55R/ioHNFEKxs+fOIXMN5dpRw8BYdSMoVt1ZR/YLWy2bFfdm9c9c
	HT7D4TbITewQVq4OTX7NvLgAFJpFBOoWwy/aim2ujlIP2xeoFvi0oVon1GG2EpDL
	TaU5wqual0+kgR92I/pxbz5gapfV4Oiq3RZY78nQaEb2xTRcAOE3/zUztfOk/kqQ
	KZ9Ff4V4aD+SpeYGMTSoQ==
X-ME-Sender: <xms:aeZpYz3Rr6_glmAIYaIUgfS4A2k9UhEtGfTln3ue10Hy-VyxZRGpEA>
    <xme:aeZpYyEBC9bawdXwSdhMkAYKHU5P2liriSJguUolkqxGsP6rWQiLK2iI5Z3Vuvo6g
    w-6G5mSm07O13LRVA>
X-ME-Received: <xmr:aeZpYz55f6XAaMxTJ-fb7oooC1_w5taPdfuhhQNQIYYt9cAQ-vjWJJGc2CHGRxJPYDNb-oZD4uL5JLvHsCobV0pVz38f4kyH8tOmk-fGwp46CavJqoXNOXZMLQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrvdelgdekfecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefkffggfgfhvfevfhfujggtgfesthejredttdefjeenucfhrhhomhepufgrmhhu
    vghlucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecugg
    ftrfgrthhtvghrnhephffhgeegudehieehtdekuddtgeeluddulefhkeehkedvteduveei
    jeduhfevjeffnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
    homhepshgrmhhuvghlsehshhholhhlrghnugdrohhrgh
X-ME-Proxy: <xmx:aeZpY42_P8wExozIe8TimLAG0Gif9UIs7Ul3aChmned4lySrh3sD-Q>
    <xmx:aeZpY2EBfVVBM4CGZW_8dfvxIw5UH5l9xPjSIZ6j6bjdJKR7ehn8Rg>
    <xmx:aeZpY59YyZlSgentAbJ8QTynuAPTjyZW7ly2CIoJxBDZyyf6BiMyfw>
    <xmx:auZpYyHc8533pLlRx72z0WPK_N1w9fzkG8vmHQ-VhEP8BAQstvydSg>
Feedback-ID: i0ad843c9:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 8 Nov 2022 00:17:28 -0500 (EST)
Message-ID: <41bad30b-b33c-0b68-bdb0-d93ae469ca7b@sholland.org>
Date: Mon, 7 Nov 2022 23:17:27 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux ppc64le; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Content-Language: en-US
From: Samuel Holland <samuel@sholland.org>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maxime Ripard <mripard@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Maxime Ripard <maxime@cerno.tech>, Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-sunxi@lists.linux.dev
References: <20220812075603.59375-1-samuel@sholland.org>
 <20220812075603.59375-2-samuel@sholland.org> <YvZGAEM4B8SdDjwJ@aptenodytes>
 <0c82fb9e-60cd-70d5-96d6-ee06c56eeb85@sholland.org>
Subject: Re: [PATCH 1/8] dt-bindings: sun6i-a31-mipi-dphy: Add the interrupts
 property
In-Reply-To: <0c82fb9e-60cd-70d5-96d6-ee06c56eeb85@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221107_211736_610996_B1093952 
X-CRM114-Status: GOOD (  24.21  )
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

Hi Paul,

On 8/12/22 17:44, Samuel Holland wrote:
> On 8/12/22 7:22 AM, Paul Kocialkowski wrote:
>> On Fri 12 Aug 22, 02:55, Samuel Holland wrote:
>>> The sun6i DPHY can generate several interrupts, mostly for reporting
>>> error conditions, but also for detecting BTA and UPLS sequences.
>>> Document this capability in order to accurately describe the hardware.
>>>
>>> The DPHY has no interrupt number provided in the vendor documentation
>>> because its interrupt line is shared with the DSI controller.
>>
>> Interesting! I do see DPHY_INT_EN*/PD* in the Allwinner BSP's
>> drivers/media/video/sunxi-vfe/mipi_csi/dphy/dphy_reg_i.h
> 
> You can also find some bit of documentation in the T7 User Manual.
> 
>> Maybe it would be useful to import the fields in the driver so that the
>> next person who'll try to debug DSI can use them directly?
>>
>> You might also want to submit a patch as [PATCH NOT FOR MERGE] that
>> adds an interrupt routine and some useful debugging.
> 
> I think this would be more interesting to someone who knew more about MIPI
> CSI/DSI and understood what those errors meant. :)
> 
> I'm mostly concerned with bringing up the D1 SoC at the moment.

I added a trivial IRQ handler that dumps the status registers, just to
verify the interrupt number, and I got several interrupts during DSI
panel setup (so during DCS commands), mostly with DPHY_INT_PD0_REG =
0x03000000, signaling some sort of contention detection.

>> Do you think this is also available without a DSI controller?
>> I could just give it a try on V3/A83t here and find out :)
> 
> I would assume so. It could possibly be shared with the MIPI CSI interrupt (SPI
> 90) or keep its position at SPI 89.

Did you get a chance to try this? I am about to send v2 of this series.
I wonder if I should keep the interrupts property as required, since I
don't know if the interrupt is actually hooked up on SoCs with CSI only.

Regards,
Samuel

>>> Fixes: c25b84c00826 ("dt-bindings: display: Convert Allwinner DSI to a schema")
>>> Signed-off-by: Samuel Holland <samuel@sholland.org>
>>> ---
>>>
>>>  .../bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml           | 4 ++++
>>>  1 file changed, 4 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml
>>> index 22636c9fdab8..cf49bd99b3e2 100644
>>> --- a/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml
>>> +++ b/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml
>>> @@ -24,6 +24,9 @@ properties:
>>>    reg:
>>>      maxItems: 1
>>>  
>>> +  interrupts:
>>> +    maxItems: 1
>>> +
>>>    clocks:
>>>      items:
>>>        - description: Bus Clock
>>> @@ -53,6 +56,7 @@ required:
>>>    - "#phy-cells"
>>>    - compatible
>>>    - reg
>>> +  - interrupts
>>>    - clocks
>>>    - clock-names
>>>    - resets
>>> -- 
>>> 2.35.1
>>>
>>
> 
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
