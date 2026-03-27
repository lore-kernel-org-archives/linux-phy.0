Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB24B10F2861
	for <linux-phy@archiver.kernel.org>; Fri, 27 Mar 2026 17:42:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=plLYtgqfV1qcuf9yTzNThBzjMwsLwoj0fkPLlKizTxk=; b=r8Lkv/UfxIklo4
	1lMXl6sjTv/QwNe34/guxTPpU7YsQqoF+Vlftq6HZyr+TumjxjMH0qM9grHItUHjLn74zTMUB6lV4
	+wk5T8cNJr4cwihDELu3SLtyVl/oQ6ubtdoCSD4hVwMzzNxDQWHp2ZvlQ2qqrl771ebM1OdXrG2AA
	Yz+mr4EjSCrRbA++i4GVoWxrXuEm+dfYORmiOfpqWt1G2i7FVtRTYTbIGkgCVR5AblYLbBY5Lkz50
	Au9LwV2RlGo3bHYwVz1xPpvJz+kFEAHgrE/cfrfEDM+4/ySwC3XEzFYCqBdyiWLGJOyrsKfDRe4Es
	AmhuKqlUjl/l6lpvmJ8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w6BCP-00000007s8i-2AZE;
	Fri, 27 Mar 2026 17:42:21 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w6BCM-00000007s8L-4B7d
	for linux-phy@lists.infradead.org;
	Fri, 27 Mar 2026 17:42:20 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-43b7481f9d3so1389657f8f.3
        for <linux-phy@lists.infradead.org>; Fri, 27 Mar 2026 10:42:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1774633337; x=1775238137; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Yfu/d6+o0zctQTHLu2MWPdnz/JwccY9dTbonya9Zlio=;
        b=tgvxq8I9gxzFsMWbrKxDOp9e2r+9wR/zO01b64zCR09v2F27catEeCCJyzTj+Mxybt
         1y3uUOYE3fkYUSepiWdpvG//Bf4yAoRVRlSVr/AAj/JkkbFK/nUc5f7070gy+6sgmoTV
         /2jCMzzNHOGeoezX38ujXaWBWAu9944IjMpztUO175GVhVFUvoptCPXFhX0t5A2CHhau
         qelQKRuqannBimcE/MzXAFnSLr0tbWbaSImqeE9Y1vgV60RmjeBYfTLJOts7H8u5kFXZ
         2tsHjOSjuFE1IuZJ45z+ct9bGiIH9fTEA11pq2sLA+OGPpfegHcW2JuHoxWV1NDPSj5Z
         9Pww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774633337; x=1775238137;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Yfu/d6+o0zctQTHLu2MWPdnz/JwccY9dTbonya9Zlio=;
        b=WUYWCDvtD/nVBGrO9KwH8TSazw7/I3KL6Vuf9TAh1gpuAYBwrLLaXWZgFZ4QyPpn/6
         ch4mg1wGeLtHmEu7vqn6kE02qyW5qri+3+gI04rozrTiry6KpySnIpF+VU2mrh6kzvlY
         IAx7HKz+Z6dWBW/C11ReIQW/jwdrGh7pzTM0aZCSrdqJQ/09WcXwG4l/79Oz1HHU6n/B
         pxVvsX2VlnnGeL+npyl/o8QLt8gRSvhz2ZZu3Q3++O2i71N/KweIZkWDiYWIKsd2y1FV
         4WhJ2+EyHZzwwxDYDXtJfBKzc6WD2QNdv9YhxFtKLziX6Seibs0DdxMqgjHgmW1MDlCf
         gwIg==
X-Forwarded-Encrypted: i=1; AJvYcCWhUqJ0Q1SYyPO2e3DhmKCCvi0xnAHyJEpeFXdNomZDT7cVqpaBAGTh3xbcYW1Pyc/h9HIGCKfiSyc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz+NM1/yBUrStbCXSStaqoq5bvHQ+uCa13U9P0DEtnbtuYQYqWk
	jQ7Rt7Zc38saSbVYyeFomkS+dH6+T9cDc26n1LiLCCbLdNC9+nzyUsq9p7rmAEMWDw4=
X-Gm-Gg: ATEYQzyk7zPGUbOQakJeZT+lf9PBPGeBY5K6u3GqQ56VjfYFaaD8Ap2zQKVCVOIxoNe
	5wNgP8htWSEkEDfRWMqEE0wcZMDoR8q0ulKjlIgCjp6RJsMrY/TBE5P8dzubBMiLX7Hxmk/n2+5
	KxaQj8efBlIspzQyB8UQ+R4IKtpcdu53hjCoFOWUcIfsnZCXMW/2EYepZZi+2LnpL2uO9drqpq2
	x3KygT8LEWA5G1WK459G68EmdRmKsTvUOy2RCV4WueY0zRKGNcsPjMBSaB42i1BZKTXx3bpxw/0
	rq0RCrYcKuaq911TvIptJJjqn/Dia2AB5HB+l/CmETK6/hD4gbu4KDbYcHKnYaLjg72W6EXDC1E
	8mUX8c9JREHFw1PgRoHdAWqCBB0jCrJWNRfpSl37hC++v0Tm5Ypf9j8ksRYazJLYbGiskj3fMFN
	r1fmdoZO0/NoU1sq7I6/yfvnjtmiuRPAhcBQJr
X-Received: by 2002:a05:6000:2006:b0:43b:41df:705e with SMTP id ffacd0b85a97d-43b9ea77850mr5911220f8f.49.1774633336801;
        Fri, 27 Mar 2026 10:42:16 -0700 (PDT)
Received: from [192.168.0.167] ([78.152.214.161])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b919432f0sm17358844f8f.13.2026.03.27.10.42.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Mar 2026 10:42:15 -0700 (PDT)
Message-ID: <c5278028-dfe9-4d09-970a-a25977967bdd@linaro.org>
Date: Fri, 27 Mar 2026 17:42:14 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Neil Armstrong <neil.armstrong@linaro.org>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Bryan O'Donoghue <bod@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260326-x1e-csi2-phy-v5-0-0c0fc7f5c01b@linaro.org>
 <20260326-x1e-csi2-phy-v5-1-0c0fc7f5c01b@linaro.org>
 <7712fbdd-a225-49f0-aeb9-ebcbb9d5abac@oss.qualcomm.com>
 <da3ed78d-fb5e-4820-95d6-527d540cf03e@linaro.org>
 <1f38187a-9464-4aa9-b70a-03b767349d56@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <1f38187a-9464-4aa9-b70a-03b767349d56@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260327_104219_081182_F8C3C781 
X-CRM114-Status: GOOD (  16.79  )
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

On 27/03/2026 15:28, Neil Armstrong wrote:
>> To be frankly honest you can make an argument for it either way. 
>> However my honestly held position is analysing other upstream 
>> implementations connecting to the PHY means we can't make the PHY 
>> device a drivers/phy device - it would have to be a V4L2 device and 
>> then for me the question is why is that even required ?
> 
> This is plain wrong, DT definition is different from software 
> implementation, you can do whatever you want if you describe HW accurately.

I'm not sure what point it is you are trying to make here. Are you 
trying to say drivers/phy is OK with you but you want an endpoint ? If 
so, please just say so.

I can see an argument for that hence my response to Konrad, I just don't 
see why its a Qualcomm specific argument and of course understood stuff 
bubbles up in review, we have a public debate and come to a consensus - 
that's a good thing.

However, I'd want wider buy-in and understanding that endpoints in the 
PHYs is a more accurate description of the data-flow.

We've been applying DT bindings aplenty without that so far. So we would 
establish new CSI2 PHY bindings should represent the sensor endpoints.

Is that what you want ?

> The CSIPHYs are not tied to a single "consumer" block, they can be 
> connected to different consumers at runtime, which is not something 
> classic PHY devices are designed for. So they are de facto a media 
> element in the dynamic camera pipeline.

The existing CAMSS binding and media graph are not changed by this series.

> And actually Rob Herring asked use to define the complete data flow, it 
> was a strong requirement. I don't see why we wouldn't here.

I'm implementing feedback from Rob.

https://lore.kernel.org/linux-media/20250710230846.GA44483-robh@kernel.org/

To me, here is where we stand:

- Individual nodes - we all agree that
- As sub-nodes - I think the majority agrees this Krzsztof, Dmitry
   I'm fine with it too.
- drivers/phy - I think we are accepting this is also fine ?
- endpoints should flow into the PHY and then back to the controller

I get that argument. In fact I _like_ that argument at least I like my 
conception of that argument.

I'll stipulate to that argument meaning then that, new CSI2 PHYs shall 
include endpoints for this purpose globally.

As I've said before, there's nothing Qualcomm specific about this 
discussion, really.

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
