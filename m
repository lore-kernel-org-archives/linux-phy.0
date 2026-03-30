Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A993AFB3CE5
	for <linux-phy@archiver.kernel.org>; Mon, 30 Mar 2026 09:25:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TGgSTJ1UxdjQ0gtmaUDam7LDvRp92tBwT1eF9bbmG7A=; b=mMWpurFwd1lQ8D
	ZpcD77oA8x55GPMyckI4L4b2XoEPwhEe6Hx3hJuq6lLVBl6ok7r2ojfVuvJINtdJvLbuweXxUhheW
	YEIskDvTrJ92z2/kw0Q7v0fjCnhkon9dGf3yZxKwl5tlKNY1mio8xHQNgBdszJO/nzXqI/iRbHXYu
	P/5287tTD9AE0e64Mecx6s4Uo3SsB1mac/5OA45IMEabi/4Gw6oMDPiYnStin6Y6u8rK7mx/4XfHT
	FUglQ9pUJePCrO2OGTW3f1YQTNRVtdDcfVBiMiYoQJ7nu9t3uvy5ADo+VJnGpmowWCS4twk/VjgS+
	4U7CB9fa3s1l/Q06zqnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w78sF-0000000AxcU-1njq;
	Mon, 30 Mar 2026 09:25:31 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w78sD-0000000Axbe-0gDt
	for linux-phy@lists.infradead.org;
	Mon, 30 Mar 2026 09:25:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 36A2343BA7;
	Mon, 30 Mar 2026 09:25:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3630EC4CEF7;
	Mon, 30 Mar 2026 09:25:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774862727;
	bh=9bQ/OYfV+keQ5xo2EhGFiUEry34Hic8CujRdJP9iYiM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=i+5ZjBvMd74lpS/usvh16Cm14l1ZC/XvVznSnDamBKq87Kz+frVYkLCeeIgT8Ao1F
	 0UH814n7osomW+K9KR+fL82rfnmrPm2ihy80OUI5NnwfmryCArj8PB8sfEoDl8DvcP
	 JOb2tND7bEzGh+7c28HzhooZX/EkA62Je17T9Vp6ldqMAXZuEdjEvuY/XI2nxfD1O+
	 nlXVybgjDJBgqfeUZcawpxhvS5HsjLMjzNPLfcua+5LcuMxzc9lcmcAxUHO/M76P9v
	 /Ni/qaAGXdqEszH0ywM1aJF6ETqXcHIPSbix/uqx0Br7mejmcnDez5kvqWaJAGsQA9
	 XxeP/Idob3nmg==
Message-ID: <0101d8bc-1ae8-475e-bb9e-cc1e16db87ec@kernel.org>
Date: Mon, 30 Mar 2026 10:25:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Neil Armstrong <neil.armstrong@linaro.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260326-x1e-csi2-phy-v5-0-0c0fc7f5c01b@linaro.org>
 <20260326-x1e-csi2-phy-v5-1-0c0fc7f5c01b@linaro.org>
 <7712fbdd-a225-49f0-aeb9-ebcbb9d5abac@oss.qualcomm.com>
 <da3ed78d-fb5e-4820-95d6-527d540cf03e@linaro.org>
 <1f38187a-9464-4aa9-b70a-03b767349d56@linaro.org>
 <c5278028-dfe9-4d09-970a-a25977967bdd@linaro.org>
 <016c03b8-27c3-41dc-a630-8e7095db1f88@linaro.org>
 <456ded59-d13e-4b61-975b-97ca48b5e771@linaro.org>
 <RAPaPhpxA39W0ykm-Cr1KaDiJKpRqdQTXUeEmt5mQn4lJBHEGaIS010ejjmhUYEBsHjzrTX41Ek9zLU2bae_YA==@protonmail.internalid>
 <76ea03d0-d41b-4880-a48c-06570eb089ed@linaro.org>
From: Bryan O'Donoghue <bod@kernel.org>
Content-Language: en-US
In-Reply-To: <76ea03d0-d41b-4880-a48c-06570eb089ed@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260330_022529_248955_C9D84A3E 
X-CRM114-Status: GOOD (  38.75  )
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

On 30/03/2026 10:17, Neil Armstrong wrote:
> On 3/30/26 11:02, Bryan O'Donoghue wrote:
>> On 30/03/2026 08:49, Neil Armstrong wrote:
>>> On 3/27/26 18:42, Bryan O'Donoghue wrote:
>>>> On 27/03/2026 15:28, Neil Armstrong wrote:
>>>>>> To be frankly honest you can make an argument for it either way. However my honestly held position is analysing other upstream implementations connecting to the PHY means we can't make the PHY device a drivers/phy device - it would have to be a V4L2 device and then for me the question is why is that even required ?
>>>>>
>>>>> This is plain wrong, DT definition is different from software implementation, you can do whatever you want if you describe HW accurately.
>>>>
>>>> I'm not sure what point it is you are trying to make here. Are you trying to say drivers/phy is OK with you but you want an endpoint ? If so, please just say so.
>>>
>>> I'm against using the "phys = <>" property in the CAMSS to reference the PHYs, a "PHY" in the classic terminology is tied to a single consumer, and if it can be shared to multiple consumer you must model a mux or whatever in the middle.
>>
>> The CSIPHY-to-CSID routing is runtime-configurable and is already managed by the media controller framework.
> 
> This is not compatible with the PHY bindings if you don't have a defined MUX device in the middle, it's wrong. You're hiding the muxing details in the CAMSS blob node.
> 
>>
>> DT describes static hardware connections. The dynamic mux is a software concern, not a hardware description concern.
> 
> DT must describe the possible interconnections between the nodes, if a PHY can be used by multiple hardware components, it must be described.

But right now the CAMSS block is described as a single block. There is 
no CSID device in the kernel _yet_.

When we break CSID into its own block then fine, lets have a debate 
about a mux then but right now the "nodes" are CAMSS[MONOLITH] <=> 
CSIPHY there is no DT CSID device to model this to.

> 
>>
>>
>>> The PHY API as an internal software implementation is probably fine, even if it makes implementation of split mode much much harder and doesn't really solve anything, you can just call init()/poweron()/ poweroff()/exit() directly from the CSIPHY media callbacks.
>>
>> Great.
>>
>>>> I can see an argument for that hence my response to Konrad, I just don't see why its a Qualcomm specific argument and of course understood stuff bubbles up in review, we have a public debate and come to a consensus - that's a good thing.
>>>>
>>>> However, I'd want wider buy-in and understanding that endpoints in the PHYs is a more accurate description of the data-flow.
>>>
>>> It is, and it was designed for that, and extensively used in the media DT representation, so I wonder here you would not use it...
>>> In an ideal world, you would add nodes for each CAMSS hw elements and adds port/endpoints links between all nodes to describe the data graph, this would be used to construct the media controller graph, and make it much easier supporting new hardware.
>>
>> Yes but be pragmatic Neil. The first step in making the monolith into sub-nodes is the CSIPHY.
> 
> I am, and I agree it's fine to do it step by step.

Cool.

So let's talk about muxing to CSID devices, when we have CSID devices in 
the DT.

>>
>> Once the CSIPHY is in, we can follow on with adding new nodes that way IPE, BPS, ICP, JPEG whatever and also work on implementing the old stuff in that new way.
> 
> I agree on the approach, I never said otherwise, but you need to have the big picture in mind.
> 
> When you'll have the CSID subnodes, where will you add the phys properties ? you'll keep them in the CAMSS top node ? add all CSIPHY to all CSID nodes ? this is wrong and this needs to be fixed now.
> 
>>
>>
>>>
>>>>
>>>> We've been applying DT bindings aplenty without that so far. So we would establish new CSI2 PHY bindings should represent the sensor endpoints.
>>>
>>> We've been using a dummy representation of CAMM in a single node with only endpoints connecting to the sensors and hiding all the hardware layout in code, it doesn't scale and makes supporting new HW hard.
>>> I mean this is common sense, why would we continue to stick to the current CAMSS bindings ???
>>
>> We _won't_ I just don't support a big bang integration. Progressive changes over a longer timeline make the transition manageable, without accepting endless sub-standard stuff in the meantime or holding up all new SoC submission unless/until.
>>
>> I mean there is a CAMSS meeting which I've been running for nearly a year now that both you and Vlad are invited to where we have been discussing this for months...
>>
>> Anyway one conclusion of that is we want to transition to individual nodes for everything.
>>
>> PHY is the first step which I'm taking because its easier for me as CAMSS maintainer to convince the CAMSS maintainer to take the relevant patches.
>>
>> drivers/phy notwithstanding.
> 
> As I said I agree on the progressive approach, not the PHY DT bindins approach.
> 
>>
>>>>
>>>> Is that what you want ?
>>>>
>>>>> The CSIPHYs are not tied to a single "consumer" block, they can be connected to different consumers at runtime, which is not something classic PHY devices are designed for. So they are de facto a media element in the dynamic camera pipeline.
>>>>
>>>> The existing CAMSS binding and media graph are not changed by this series.
>>>
>>> This is not my point, I don't care about the software implementation at all, I care about accurate hardware representation. Using the "phys = <>" property does not describe hardware accurately.
>>>
>>> In other words: The CSIPHY are not connected to CAMSS. This is _not_ true, tying the CSIPHYs to the CAMSS block hides the real data muxing in software.
>>>
>>> Please remind DT is used by multiple operating systems, and properly describing hardware in DT will help have good software support over all OSes, not just Linux.
>>>
>>>>
>>>>> And actually Rob Herring asked use to define the complete data flow, it was a strong requirement. I don't see why we wouldn't here.
>>>>
>>>> I'm implementing feedback from Rob.
>>>>
>>>> https://lore.kernel.org/linux-media/20250710230846.GA44483- robh@kernel.org/
>>>
>>> Where did he ask using the PHY DT bindings ? Is he aware those CSIPHYs are muxed to multiple consumers which are burried in the CAMSS code ?
>>
>> I freely admit to taking the initiative of phys = <> but Neil there is _no_change_ to the media graph and the "mux" is a runtime configuration that is one register in the CSID.
> 
> Honestly I don't care about the userspace media graph, this is a software problem and we can totally make the transition seamless if we want.
> 
> Don't limit the DT hardware description because of a software userspace ABI breakage, this approach is not the right one.
> 
>>
>> You seriously want a mux device in the kernel to model one bit in a register ?
> 
> Why not ? We have drivers that even toggles even single bit to solve those kind of situations.
> 
> Physically they're a mux to route the CSIPHY to the consumers, it's a fact... even if it's a register or a single bit.

That's fine. I can understanding making that case if/when CSID becomes 
its own node but, I don't think it makes sense when connecting the PHY 
back to the monolith.

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
