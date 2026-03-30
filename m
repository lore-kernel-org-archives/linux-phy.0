Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 723CCFB3D07
	for <linux-phy@archiver.kernel.org>; Mon, 30 Mar 2026 10:39:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LNWAy7HruvPXGErQJb9fjeQLGY6mrezxFrR/oeLXm8o=; b=Zhi94PV4pnu8Le
	0YKJMh8CV9y4kTLPECw/xldUBFOqo/PO3p8tELQladYNK2Xes5xBnRnBHTXxbOFtzkbNhaBi3DX8d
	6m632+TQFcmL7DJfEcyZQ2jTXlGlBlJ0LkYOMEfR66icHzWfove6+BMC5sDl+eIsCAiqoMenm0mwR
	5ApIryLe1COD+9Q1Pc6asQNged3f8TZNT8pcIF0yytyuGXDWKeFPKvPmrtTDwixS4ARyFiiQ773gE
	wCAPeWB8zkN/pL1kKrfFo2V98CWgXbOaSCC29g0vLR7org4PvsoONHepEnEXJkN8VkbXbOtkVEnKo
	H+BDzAFZXmt7amUrgH5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7A1p-0000000B5BW-0gxQ;
	Mon, 30 Mar 2026 10:39:29 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7A1n-0000000B5Ak-2t4v
	for linux-phy@lists.infradead.org;
	Mon, 30 Mar 2026 10:39:28 +0000
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-38a428745e2so5258631fa.1
        for <linux-phy@lists.infradead.org>; Mon, 30 Mar 2026 03:39:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1774867165; x=1775471965; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kjWd3BKgQaFoYYfVE9rGe8nNVHUMawLjZDnU5IK/ObE=;
        b=OU4kMwnL/AmJbzuNYcXCLRoIpKD5QN3ESNTDm3ixICGdEg5Tb5NVcd/r8wf5p9vr2L
         OhNrbIkQ69wyIPP53GMVrznwoO7zt2vnQ4qV7uQBZyToHue/IxzKkVdJwVlfw4FPfeNG
         0fWQTv11uK4QdiJOnrZRGNrDZSH+760qTraoNsGh9v98XHLgwjc+QkIIbE9REu9AnaY4
         OdaKzBvLygou4kU0RH8gkkkBcGEZIYSigdzadV2hPP1AKunF8J3DDkIKw5jLWpKXu/IM
         HMJ20QhqiEGqPE9rhzkTuGPfFpnHzx2alEIsqZJc1YRX4Vb8liASCYnLsx2/8PqVfxHD
         p8Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774867165; x=1775471965;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kjWd3BKgQaFoYYfVE9rGe8nNVHUMawLjZDnU5IK/ObE=;
        b=hZ9siYO/yg8aY1uAFxCs8giqcDilY7UhvP90ekQ6mFHrdT5RNTTnkPq/Ay1y2WmLAr
         hbm6j4i5vCzgw7glDahfLKbLlCl2CTQe8sm8pajMmDoncJkjHJYdrISX8MwBfqdD72HH
         Qcwtsh2O8nwvIya4YWrRujUC+hyWnJfraXCPRm4uTS8d6GfaKkmNrUC6evrjiHKHYElQ
         +KXFXxoFrj3ahBgdmp/380kKVUAo2+kVQQAtU4xDJ23XosEnJ5mUNrN3GoE7Dipzc03k
         LK4ZUlzQkVYtcPTFXbhaJOmLC9PHMDjcRnlO0na0EUUd1PBx0LmQsKQsQdYRxFcBfsol
         DBoQ==
X-Forwarded-Encrypted: i=1; AJvYcCXGKyyJczRiW7K51tHM2gL5qKYurwN+bb5UZbEd4DDW01C+wi86J+kJZ1BwADqUA8DmSkn/0HeIifo=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy/uODc4lDFRTTibtwZKGg6CUs6DqXrqyNqwUnGqEV0OcMtDidn
	RVZ5H1ryLFJiNGa7aCgICakiVlrxnTL2bmeLzxn+8H+kTJV9zTduems+VSKutwOmduk=
X-Gm-Gg: ATEYQzwIqbsOWgok8tOGXsEFO+MJR4aYnBGFuuYlf2lwcW+pcTpP/ibdqKabVbYUPHO
	vav85fNH4WTgB8gq+V8LWZB6KZDx8spDjbtc9exMbh5+bhATPZslQdfW736i/6JdhZh/Ln83kiL
	L3Fg7HOq2+/erGrKSpMJCmN5v34AlN1u6zShFOaNOtFc7ah4hd34IcQqr/5besJFStruv6FdaXV
	4vSnqiGqRzg/4VG6Fz+2in1i2qoqSFHisNW7nN23eNSeI3ip+Wxi+8LIDCcPSdrf4OZHeatOwMB
	tzVxNDZ/SetFjzEV8yZzOKAPHZrLC0yrVqNy8K5XxLE7ms/xLvYUtwB9I4Q/Hv4ht4lvxDN4nQJ
	OEYclZlR0oONspLaMwFCvovSl7jOBlMcIR5oLPMC6VKPSPijtYOM/G6NpiWGzXptzWwMLNovUUN
	xeK7MHrtNEpxNOnSW7hLVhcK4Hdr7BRzypk6WJ0wsMX2l4ayDguMTLYgt6ERVzoIR+jj14plC3j
	SQG9w==
X-Received: by 2002:a05:6512:514:b0:5a2:abe0:dada with SMTP id 2adb3069b0e04-5a2abe0e165mr1264088e87.1.1774867165161;
        Mon, 30 Mar 2026 03:39:25 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a2b13f4294sm1570390e87.8.2026.03.30.03.39.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2026 03:39:24 -0700 (PDT)
Message-ID: <6870033a-a483-401b-97c6-1df5508181b8@linaro.org>
Date: Mon, 30 Mar 2026 13:39:24 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Bryan O'Donoghue <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260326-x1e-csi2-phy-v5-0-0c0fc7f5c01b@linaro.org>
 <20260326-x1e-csi2-phy-v5-1-0c0fc7f5c01b@linaro.org>
 <7712fbdd-a225-49f0-aeb9-ebcbb9d5abac@oss.qualcomm.com>
 <da3ed78d-fb5e-4820-95d6-527d540cf03e@linaro.org>
 <1f38187a-9464-4aa9-b70a-03b767349d56@linaro.org>
 <c5278028-dfe9-4d09-970a-a25977967bdd@linaro.org>
 <016c03b8-27c3-41dc-a630-8e7095db1f88@linaro.org>
 <456ded59-d13e-4b61-975b-97ca48b5e771@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <456ded59-d13e-4b61-975b-97ca48b5e771@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260330_033927_772706_C4E7EE4C 
X-CRM114-Status: GOOD (  28.16  )
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

On 3/30/26 12:02, Bryan O'Donoghue wrote:
> On 30/03/2026 08:49, Neil Armstrong wrote:
>> On 3/27/26 18:42, Bryan O'Donoghue wrote:
>>> On 27/03/2026 15:28, Neil Armstrong wrote:
>>>>> To be frankly honest you can make an argument for it either way.
>>>>> However my honestly held position is analysing other upstream
>>>>> implementations connecting to the PHY means we can't make the PHY
>>>>> device a drivers/phy device - it would have to be a V4L2 device and
>>>>> then for me the question is why is that even required ?
>>>>
>>>> This is plain wrong, DT definition is different from software
>>>> implementation, you can do whatever you want if you describe HW
>>>> accurately.
>>>
>>> I'm not sure what point it is you are trying to make here. Are you
>>> trying to say drivers/phy is OK with you but you want an endpoint ? If
>>> so, please just say so.
>>
>> I'm against using the "phys = <>" property in the CAMSS to reference the
>> PHYs, a "PHY" in the classic terminology is tied to a single consumer,
>> and if it can be shared to multiple consumer you must model a mux or
>> whatever in the middle.
> 
> The CSIPHY-to-CSID routing is runtime-configurable and is already
> managed by the media controller framework.
> 
> DT describes static hardware connections. The dynamic mux is a software
> concern, not a hardware description concern.
> 
> 
>> The PHY API as an internal software implementation is probably fine,
>> even if it makes implementation of split mode much much harder and
>> doesn't really solve anything, you can just call init()/poweron()/
>> poweroff()/exit() directly from the CSIPHY media callbacks.
> 
> Great.
> 
>>> I can see an argument for that hence my response to Konrad, I just
>>> don't see why its a Qualcomm specific argument and of course
>>> understood stuff bubbles up in review, we have a public debate and
>>> come to a consensus - that's a good thing.
>>>
>>> However, I'd want wider buy-in and understanding that endpoints in the
>>> PHYs is a more accurate description of the data-flow.
>>
>> It is, and it was designed for that, and extensively used in the media
>> DT representation, so I wonder here you would not use it...
>> In an ideal world, you would add nodes for each CAMSS hw elements and
>> adds port/endpoints links between all nodes to describe the data graph,
>> this would be used to construct the media controller graph, and make it
>> much easier supporting new hardware.
> 
> Yes but be pragmatic Neil. The first step in making the monolith into
> sub-nodes is the CSIPHY.
> 
> Once the CSIPHY is in, we can follow on with adding new nodes that way
> IPE, BPS, ICP, JPEG whatever and also work on implementing the old stuff
> in that new way.
> 
> 
>>
>>>
>>> We've been applying DT bindings aplenty without that so far. So we
>>> would establish new CSI2 PHY bindings should represent the sensor
>>> endpoints.
>>
>> We've been using a dummy representation of CAMM in a single node with
>> only endpoints connecting to the sensors and hiding all the hardware
>> layout in code, it doesn't scale and makes supporting new HW hard.
>> I mean this is common sense, why would we continue to stick to the
>> current CAMSS bindings ???
> 
> We _won't_ I just don't support a big bang integration. Progressive
> changes over a longer timeline make the transition manageable, without
> accepting endless sub-standard stuff in the meantime or holding up all
> new SoC submission unless/until.
> 
> I mean there is a CAMSS meeting which I've been running for nearly a
> year now that both you and Vlad are invited to where we have been
> discussing this for months...

The established process of Linux kernel development is based on email
discussions, the sent changes including CSIPHY dt bindings were plainly
ignored by the maintainer, because it's a NIH material or whatever.

There was a chance to discuss CSIPHY dt bindings changes one year ago,
now it might be not a coincidence that eventually after the series of
updates the new CSIPHY dt bindings will be very close to the once
displayed ones, it took a year, but still this is a good progress IMO.

-- 
Best wishes,
Vladimir

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
