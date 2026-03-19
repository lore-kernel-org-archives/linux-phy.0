Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6FEC1090258
	for <linux-phy@archiver.kernel.org>; Thu, 19 Mar 2026 16:56:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MBTljpb5mUrlcQjUF49ROh9eOfTSqx0bPhJVrpU3sZA=; b=UaRasyfIs3yhlr
	fFPwYpN6f2lCY872di41G2Jx9wAjOFX2iNVSW7LCPUgAdXKRSXQ0KsIU7XE+9mmDUoVautnJt8J0o
	xwg9xAWh2eb/IwWX+MQ3bhD7jLNZ2DTByFlon0noU4FxJ19FDuxqni0vCCnnqJl+/Ptym0C77hW/2
	gjk90ks0iwa0FHluGV69uAE4O5tsqpYnZBAUSqDE8ppn6kgavwzdBKs6etg7p/JIpfntwjmLYHjxD
	F7vbPNHStEm4QHTPEk2SN6zxMNHV6mLo//F0bkP63L8dYWeYroxr8PngPWnyujLr2LqEWgHN+wUiS
	xz/I9X4vZBlchZjHdJoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3GfR-0000000B7tV-0rb4;
	Thu, 19 Mar 2026 16:56:17 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3GfO-0000000B7ps-0NOh
	for linux-phy@lists.infradead.org;
	Thu, 19 Mar 2026 16:56:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id A6FB440972;
	Thu, 19 Mar 2026 16:56:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E1545C19424;
	Thu, 19 Mar 2026 16:56:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773939373;
	bh=buYrNumzH/okacfb8t8YTg6twr52GbLA8hyuw2Qrde0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=VfxAbkedya6W5dDpsCCpwpmqzNrQQwq+Jsd47RPrQBhpDQg5YKcZg3o6RQS7d5chf
	 0pZhvP2Kf9atcFnbXgfmOfakWJr2AgcWSZXtII5w6wS1sn3OrlzhgvgqHFHAakwhUE
	 jLuGyXKwkdtQEuVFMCPzRKYB1pv8r9+IxZcmoraAeECHGHUEevPSs0l728rlx64hJ8
	 azh+bRjkRGst9R32RskjuPDo42tPB9fQJ0l6DgcUtHbL4wTgo7qLtQ/xvJ+epBOR2P
	 uG0spqZ8z3ngmo+1mYHLOh7ngaDTuOe1FGf+iHY68yf8o5L3tBi+VVch6pMJ0Pg07b
	 VmbqZRxYFqwLw==
Message-ID: <a42f837c-4b90-4e0f-a98f-793fbd20a140@kernel.org>
Date: Thu, 19 Mar 2026 16:56:28 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
To: Neil Armstrong <neil.armstrong@linaro.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Bryan O'Donoghue <bod@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260315-x1e-csi2-phy-v4-0-90c09203888d@linaro.org>
 <20260315-x1e-csi2-phy-v4-2-90c09203888d@linaro.org>
 <3f11de22-b729-4d06-b6c8-18e649e1979c@linaro.org>
 <80ddc2b4-d6f8-4e8d-a45e-69c05d100aa2@linaro.org>
 <16b10f17-ecd3-4cdd-ac3f-f64127d60ace@linaro.org>
 <ulenfus552ggobis4gmi7eh27tikdaxbgm2oj63b5l2vemlfxc@ib5f2xaqurj6>
 <26XTdUyQTB41Oc4D5HnMtSm_QpZRjlkljQRJVw-u1Zp3Ltn9s4LVU-LQkP6drdl3Z3GGssLCCbsVYPFEqssHcQ==@protonmail.internalid>
 <65e06b2e-eeb9-45af-97ac-4ae60f652361@linaro.org>
 <9578400d-30ac-4d8c-9295-ee4ec8af3b2c@kernel.org>
 <d6616fc0-75fb-47e2-96cd-ae81fa1a8e82@linaro.org>
 <f3c62284-ac78-42c6-a4f0-cd984b7124cd@linaro.org>
 <7eda931a-f30e-4e01-a130-996ec7f450d1@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bod@kernel.org>
In-Reply-To: <7eda931a-f30e-4e01-a130-996ec7f450d1@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_095614_178607_B29A75D9 
X-CRM114-Status: GOOD (  14.75  )
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

On 19/03/2026 16:08, Neil Armstrong wrote:
> On 3/19/26 16:18, Bryan O'Donoghue wrote:
>> On 19/03/2026 14:56, Vladimir Zapolskiy wrote:
>>>> There's no reason to remove that from CAMSS - it would be an ABI break
>>>> in user-space anyway.
>>>
>>> If technically CAMSS CSIPHY could be excluded from the list of CAMSS 
>>> media
>>> subdevices, then for the sake of simplification it should be done for 
>>> all
>>> supported platforms in advance, such a change will be independent 
>>> from this
>>> particular phy series, and vice versa, this CAMSS only driver change 
>>> will
>>> prepare a ground for media-less CAMSS CSIPHY device drivers, hence it 
>>> shall
>>> precede this particular CAMSS CSIPHY series.
>>>
>>> For backward compatibility with userspace a noop stub will be good 
>>> enough,
>>> it's not an issue at all.
>>
>> The standalone PHY driver doesn't require removing the CSIPHY media
>> entity from CAMSS. They serve different purposes and coexist - its 
>> important to have a NOP from user-space perspective for legacy and 
>> indeed for new implementations.
>>
>> How the PHY gets represented in the kernel is of zero interest to 
>> user-sapce.
>>
>> That said, stubbing out the media entity is independent work that can 
>> happen in any order and IMO is a separate debate. Whether or not 
>> CSIPHY init sequences live inside of a monolithic CAMSS driver or live 
>> inside off a discrete csiphy driver is not related to the media graph.
>>
>> Happy to have that debate - and if indicated, carefully apply patches 
>> separately.
> 
> So what does this actually solves ?
> 
> Neil
Per-PHY voltage rails, per-PHY power domains and per-PHY OPP scaling.

Using the PHY API instead of rolling our own, as well as separate nodes 
in the DT.

We've been getting away with power-domains, opp scaling etc by sheer 
luck. The feedback from the list alone now addressed in this driver 
makes the conversion worthwhile.

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
