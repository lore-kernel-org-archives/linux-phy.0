Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7A7EC83F25
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jul 2025 10:53:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+hc0EW8e0u9ZxddLpJ8xuNY4E572xDCqD2ml/RPKU3U=; b=Oq++CuUvaGUYt9
	nPM3uRCF6w0QQCXURRiQthlNCCUJnYTaIEcXfHmjsRcdR5nMWNdXgWrT0MlfT7EpCNcT27zR+nEWw
	dLKejuYyVzfT/ganDV/RlWEA4h3wDvnIy0GzTDCUjbco2Ltd1g6dv7l/htB0i4IDJma+81R+/X0Op
	JbF+xFUIvVnwKDwnpf+AolxW2vxbMLVZc3GkZXmkGPVwNzyBcYFn86TWcU/6mV1JBRMKU/YLmg+HT
	dGIxVzuTqL+ZvjZnp+2R59j940aiukyT9W5kS3kWdQE1u/ZQULtOfQRS/xVVTYCivu29ztTtEs79A
	TOjeP0cMimNKwe08i0aA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueAcK-00000002CVK-1VTP;
	Tue, 22 Jul 2025 10:53:04 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueAN4-00000002Aoe-3geH
	for linux-phy@lists.infradead.org;
	Tue, 22 Jul 2025 10:37:19 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-45611a6a706so28181135e9.1
        for <linux-phy@lists.infradead.org>; Tue, 22 Jul 2025 03:37:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753180637; x=1753785437; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/Y4ZK31qukkhLkAHxdpW7gih6/ZCt1oA0i9NknuiOE4=;
        b=P54siI35MRvFABM1pWJmjcjH8OcT/Tfbt5Q10ogQMawczJGIC5d4wm/W+gYx7p56c8
         bIoXAhCTdiYrjUEwxg8GFYeQuKP65OgfXa3lpYMaQVh6od7pAmBgzmvrtYSPNJ3jmsB2
         HnVih3+BcxEu19HlgP4A0dH09Gz3kUv9DIwYjqGBNtNwYGeaUMqMPc0QIzCJCjyuUa6x
         TmpWSPmvYoXKT8v5H8HuFnx6f6raYLossahyoyx8p9oqNaD1uhxDABedbSD1sCYtmx5M
         uvLFMoR4FXw6V0Pdd7GE4brYadlwOVEoklxvSk2ogFfcGDog09b8bs+LiVXustzXOJB4
         FHNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753180637; x=1753785437;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/Y4ZK31qukkhLkAHxdpW7gih6/ZCt1oA0i9NknuiOE4=;
        b=JFWhiuB1RF5CiJANB0ONjkNcEC+Arg/CMIU4r5RB2XrUQT5fgjzZoiYhYlTtZcgsU2
         0INEx3bowZ6pr2hupVA92bXlFMGY4eyjEhtZG3ijucpbV2+2QhmmsFR1alxW3QUE5pSt
         gShj9uHvZ8IWd6OD0Fe/QvvTD8QQGVh/wzUqFiS76stLCgIVbdLaYvlN8bex2ehVBFef
         Qsb/58DNxZFkWgn287cR4Zwzri55Ex3H/vp9wf+5xzY49CYvstBCRGd1JvI38kPNECuv
         LgWxDrlEwjtmrwhqCOoQu9lPqZZMrxT4UQf79BgHePrhHWxbEktJvh/nT0QH2Y5xSiIu
         ZrQw==
X-Forwarded-Encrypted: i=1; AJvYcCXwktfOlA0sYFUPAzxTFzT5d9Cb3HKnqwb7zlNPZabE9uAhxdSu94PJJkauuahxabEyetV1jCSole0=@lists.infradead.org
X-Gm-Message-State: AOJu0YyVL9QezBK/t1UkZ0hfSKC5aPvMUpz3xMTDTm2cqajGbBA/eTBO
	CPvctBJXwxz6toR9pWnJHxYP4fNZIcM3PkNatq97yYFtEqRLiufwdh3bjMI920gCP78=
X-Gm-Gg: ASbGnct7h5GPggd+oF2qZcRY9xGH7jlVuuuW9hpuKn4ndhalROvzZByI7B5C+vLSlz7
	k/XGsJADNDgAaa/wCqP9A3DaNghYAt2RpzE4hfw5P5F0oT+cq+pisesjgh++fI1qoOyzkoAUnqn
	59ub/tkJK0j2rDf+TzxNeXyyD9MHVJdmE+Plh3cXMUyr38jXqQvssFGJxrGbu7Aq4VhMVN8z9RE
	+qHYrW65jnc3HRSSI34xi/GFIpoA/Y5PF/NvaBGbl2e3i8I05CFweC+q8V3Q6sLC9k1euLRHXaz
	my4jpNcDs8lghBdI1UWpUB86lD6MPWHEUiwJBPzbMwR+gKRaKg8dBwkshF59w+eCtA9wasB+sVE
	2ekwzr1FgMQPOON5RZUmD9jIF2iZPrnurgBn66kznP7psoY2ltcJTK/tjcqDo9Ec=
X-Google-Smtp-Source: AGHT+IGTCim13XVcGSW21AueFsi3fYd4EJtmzmvQeTtBGNVJD3KZN4i5HjdFzRy4dW3lSossDfE26A==
X-Received: by 2002:a05:6000:288b:b0:3a5:8934:493a with SMTP id ffacd0b85a97d-3b60e51bb18mr20015822f8f.44.1753180637147;
        Tue, 22 Jul 2025 03:37:17 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b61ca4d581sm12938939f8f.64.2025.07.22.03.37.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Jul 2025 03:37:16 -0700 (PDT)
Message-ID: <7e1073da-6773-489e-80f5-97409f013acc@linaro.org>
Date: Tue, 22 Jul 2025 11:37:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI D-PHY driver
To: Neil Armstrong <neil.armstrong@linaro.org>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250710-x1e-csi2-phy-v1-0-74acbb5b162b@linaro.org>
 <20250710-x1e-csi2-phy-v1-2-74acbb5b162b@linaro.org>
 <11b573d5-ce4d-476c-b94c-216d427cd838@linaro.org>
 <08261aa4-689b-4d6b-bfd2-221c1976d254@linaro.org>
 <a7f64b31-4767-4281-b452-a2bc5351d745@mleia.com>
 <c93624bb-ee7b-45ac-8b53-b5391f11c9c9@linaro.org>
 <eac3a877-a4aa-4789-9013-ab8b6c91e0f3@linaro.org>
 <0a12879f-dc4a-47fb-87a0-ac4b8bcd4d75@linaro.org>
 <53a19b1d-5665-4937-a07c-5dd1fcde06c5@linaro.org>
 <3b760685-97db-46e3-80a3-7fad69ad31cd@oss.qualcomm.com>
 <94b75177-9401-4e0c-966b-5847a29cb6f7@linaro.org>
 <427548c0-b0e3-4462-a15e-bd7843f00c7f@oss.qualcomm.com>
 <3UXVZ6ANM9mDjVdMV4SXsiIx_pT3S1lp3RC_Q7mh_o7jF2dpYsni1Sl2TAWv6OCMCRTFmi9aE6BxDquGkOnwEg==@protonmail.internalid>
 <8b908a20-0bf3-447d-82ea-a5ecee1bf54c@linaro.org>
 <57501e81-7e9c-4cb1-9a37-18307d1e06ca@linaro.org>
 <33d76d7f-ab14-4e76-8ffb-eb370901a046@linaro.org>
 <4edefe21-27b6-4884-befa-ddb451bb9376@linaro.org>
 <84eea632-02d8-4b7f-a4ca-36ce7159a170@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <84eea632-02d8-4b7f-a4ca-36ce7159a170@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250722_033718_926236_71B93DF8 
X-CRM114-Status: GOOD (  19.65  )
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

On 22/07/2025 10:59, Neil Armstrong wrote:
> On 22/07/2025 11:08, Bryan O'Donoghue wrote:
>> On 22/07/2025 09:32, Neil Armstrong wrote:
>>> The whole key point here is the combo mode, as I understood the combo 
>>> mode feature
>>> makes the PHY lanes available as 2 separate streams, like if you got 
>>> 2 "controllers"
>>> attached to the same PHY. So in fact, the PHY should have a single 
>>> node, but 2 PHY
>>> interfaces in combo mode.
>>>
>>> This makes all this controller/phy model very complex to handle and 
>>> add a lot of
>>> logic in the camss side. Moving the "csiphy" as an independent media 
>>> device that
>>> can declare up to 2 endpoints in combo mode makes things much 
>>> simpler, and allows
>>> us to attach each "csiphy" stream to any "controller" side of camss.
>>
>> I think there should be a generic extension to PHY/linux-media to 
>> support that instead of something Qualcomm specific.
> 
> Can you point out what's missing ? AFAIK it's more a matter of proper 
> representation of all
> the CAMSS components with a proper ports/endpoint graph design that 
> adding new kernel APIs.

Perhaps I'm not understanding the pushback.

Vlad's design puts the CSIPHY nodes under CAMSS and doesn't use the 
upstream PHY API, which if I've understood right is done to facilitate 
multiple sensors on the same CSIPHY.

If the kernel APIs or standard representations of CSIPHYs in the 
upstream kernel are insufficent to facilitate this model, then I think 
that change should be done separately so that all of the existing 
upstream stuff can benefit.

CAMSS should have a standard PHY interface. That's what this series 
provides.

If multiple sensors on the CSIPHY can't fit into that standard model, 
then we need a series to rectify.

I've given an example of how two sensors could be routed to one CSIPHY 
in DT. Another possibility is virtual channels.

I don't know if your sensors support VCs, have you explored that ?

If the message is "we need a custom PHY interface in CAMSS for multiple 
sensors" then I think in fact what that points to additional work that 
needs to be done in CAMSS and perhaps in the kernel linux-media and PHY 
layer to facilitate.

Like I say I'm happy to help you guys do that, ship me some hardware.

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
