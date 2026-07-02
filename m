Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35E06C43458
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jul 2026 09:28:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XDPEFt2hWWDwwGtL++6VrCRrSjLT6I9IG2qmZFwCelg=; b=ZAPLYERFgXnz8n
	FHfBKbNigg1wc6lFc2rTyIpEH3P3M0m8bJJLrktfdAuLvkM+uN4IXIRuiOaQECRW3HGlr2WjFrH0S
	E2mjg1nQsADzQhs9XvypbQJT1pa7RSAo/FunBTD6sQNYCnLjIqzRp074zUpUEzYqhM6dKT5FKKpoE
	1hwWV6LBCreP2PoGq0RqGxqMYEBZQMoVbeEV7e1Rd3RdtnJIr6FbQzHR3Ml+tC7zh3gxarshUq0fY
	WrRTvFLKA8G+foDlQPirtQZFFoaZkC/M/lPzcit3f2hsv2BZ/UAvANSLRT4icoZp4s3TnZg9c7GLh
	Ly5CF8Sf95VaoPkxwNZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfDis-0000000415S-3heC;
	Thu, 02 Jul 2026 09:28:42 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfDiq-0000000414V-0Qds
	for linux-phy@lists.infradead.org;
	Thu, 02 Jul 2026 09:28:41 +0000
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-39b24dfddf7so1188041fa.1
        for <linux-phy@lists.infradead.org>; Thu, 02 Jul 2026 02:28:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1782984518; x=1783589318; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=r0zPwWUyPadxaQfjwDx9HdrEaUrpGJfxmRrHbmv0dro=;
        b=s8k4+vOSFeZIZzqVt/VwsF1SgjiWP7jyc2LgyfQCpEQZLryb4CEfiKMHrWd6TLO1tD
         1eXrI7jCxU41lsGvyJtLhBD4rtTkWlDX+BlVNyzNZyzT+OC/ALt3Ao02xvHHfYJwKuXr
         833xc4OG/Fm2PrzQXTtIdCQ0+eDFVhrgf+4Ckx6pKB6F8c2niDixXtBLqfQTG0NY9jT/
         U/ndGDIY8g18cAlL52elMuyf5TZ8IPTfbV4ZglwvP8+i/wz+qCMR30buXIYsvh9nKsr1
         WdQj7ZI7vg3joxXOZvoLsxzNoMw34+JxAmpVjJFW+JPIwGVwjei7Z9IQK6MicSMSHXEx
         kqpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782984518; x=1783589318;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=r0zPwWUyPadxaQfjwDx9HdrEaUrpGJfxmRrHbmv0dro=;
        b=Cz7TQ2Gn5fmvTXJE0pVpa18rofhpJqJEXBdv755D+brq+MiL2KnkZJbx6BCHKEpY8C
         mPtavb1T5R8AIv0FNzvWMmr5FeL0ypk74DQo0HsfgtqD1uD51o3C4Yd1QW0GlFc37r34
         ePYTCqSdxLQ5OMyUkynkbaV46gi1o7xuyXOOQLgDSJ0iK9KXiNEDFShK8fJxa8nQGBX3
         ejf5/kml+GeCfNa9hJH5BptpLQUgqPd+YLMpHvW2+GKwtiAVbF46//3K27PSHlZ17xif
         pMwC36wa3iK2YZ+WVG7RTz/Q3JYUSJCHtxoeJJCUSDlK1Rlra43gzY/4NbjEuZ3oa9PX
         Q2TQ==
X-Forwarded-Encrypted: i=1; AHgh+RpnAml3SftUCdjOvTrJ4DIF5z4S76A1Tc6HHnvbwUsfuegLHO5rsapHeZpQJzNOvHbVgPwm0a320Eo=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyv30spbAPrJhUStAlV1MEn5kVq+9QY5vm0oBWX6aSY7xevOfgJ
	VxfgNKCWuz4M++TdfCKsXS/05KrWjEbV2SoaFP8y8mq0uWBCefQ8XN46oCR04jT+oFU=
X-Gm-Gg: AfdE7clEq12goWq6unyDiBLc1vjsfLDVanh9OC0AcWR6dTChfb9urCAJpV7ezlwzd12
	evAgTX0EQisBC3JPcu4CU9GSz1EjtdNOyMoy/lNbPAQxbBgdRnl0JP8qAXJLeGCrUvwxXH18FJd
	2vtjYe0ho6f6g8pdlG42T/eQsmb62H6aTDhhGQawW31R6CjumoVV8GqKbRkTcT2SY/KXU9PvnaD
	XQLEC96qiRZa/wWzDMo8KdF4F5rVOdHPEjSyWixBHZegKXOABjKI8xu4PcVJl58kSnmKAJ54Ax8
	+oLUKYoQnv6lyfz2TZNxxJmVqiJWsf00fXMnxjepPUS4996PO547F/cId/DOEN2F98JT0sMAk0m
	GR7Z2IlvpfwoXZV0QEhtZ/AzaixxxIUBjO8y9btPzmCb9j27aahvNjHlovLSaOfsuCm4cDdiPfR
	DJDg0da3F7XKtD4de48EzVYo76gjOYLqIonxdCk6qKCmVBvoaYdf8PhKePY53iUSGSBAI=
X-Received: by 2002:a2e:be03:0:b0:396:67c6:9338 with SMTP id 38308e7fff4ca-39b33c3891fmr7815541fa.0.1782984517842;
        Thu, 02 Jul 2026 02:28:37 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-39b38004dbasm4980591fa.40.2026.07.02.02.28.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jul 2026 02:28:37 -0700 (PDT)
Message-ID: <b8226ab3-2ff8-42db-8110-7947c59cf343@linaro.org>
Date: Thu, 2 Jul 2026 12:28:36 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260523-x1e-csi2-phy-v8-0-a85668459521@linaro.org>
 <20260523-x1e-csi2-phy-v8-1-a85668459521@linaro.org>
 <rpnNMsR9GY8gbynzeBO8Zm61JAOq3ubt6sp0x3WDPPwkMAJzlcofECD1kabN-IUoK6sSwP5P6l28UIZLFCOpjQ==@protonmail.internalid>
 <dda32577-04e0-4507-acaf-a5694f4f31b3@linaro.org>
 <7c564df8-5c5a-4b43-806e-5e017e5c51db@kernel.org>
 <ae3a381b-5697-43ee-bdfd-aaf2d22ceedf@linaro.org>
 <6b6492a4-7610-4dce-a81c-8dc0387a4061@linaro.org>
 <1c583e24-09db-4d90-8f32-d3d3961188a0@linaro.org>
 <3e2e6184-e020-49cc-9a4b-609c05aed846@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <3e2e6184-e020-49cc-9a4b-609c05aed846@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_022840_171005_AED1A22F 
X-CRM114-Status: GOOD (  17.38  )
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

On 7/2/26 11:46, Bryan O'Donoghue wrote:
> On 02/07/2026 09:31, Vladimir Zapolskiy wrote:
>>>>> phy-cells = 1 with CPHY/DPHY specified in the consumer, as was Rob's
>>>>> suggestion will specify the mode.
>>>>
>>>> This cell is just not needed, and unneeded complexity should not be
>>>> added.
>>>
>>> I'm going to stick to Rob's initial guidance on this.
>>>
>>> https://lore.kernel.org/linux-media/20250710230846.GA44483-
>>> robh@kernel.org/
>>>
>>
>> Sure, the discussion will be continued abouve v9 of the series, it's
>> just a chance to do it now. Rob properly pointed out, that the invented
>> "phy-type" is not needed at all.
> 
> I'll quote here
> 
>   >> +  phy-type:
>   >> +    description: D-PHY or C-PHY mode
>   >> +    enum: [ 10, 11 ]
>   >> +    $ref: /schemas/types.yaml#/definitions/uint32
> 
>   > Perhaps putting this in phy cells would be better because the consumer
>   > decides on the mode.
> 
> A clear instruction which I'm implementing.

It has no contradiction with what I've said above, you have a chance to
discuss the matter now or at v9 time.

>> Ther fact is that the whole placement of the CSIPHY to phy subsystem
>> looks execessive, since you add a driver for a media device, there will
>> be nothing PHY driver specific left in the CSIPHY driver but name.
> No, a block with its own pins, external voltage rails, even its own
> specific votes to scale individual clocks, is a distinct PHY.
> 
> There will be no further CSIPHY init sequences getting buried in CAMSS.
> It is well past time to dispense with the monolith.
> 

Again, there is no contradiction with what I've said above, so far there
is no argument to support CSIPHY driver registration within phy framework.

-- 
Best wishes,
Vladimir

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
