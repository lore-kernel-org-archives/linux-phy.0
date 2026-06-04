Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7A1FCD6E60
	for <linux-phy@archiver.kernel.org>; Thu,  4 Jun 2026 00:30:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zI8JPAlIzCEowwAioPrP9gEY6OQ1z9RlcTU7Usqb5t8=; b=mT/VDQmbUG8jSM
	0yMJKR+xjzTQwVRu7/VOZBqNIgMev2qzVN0f1eGZ9s5ioAHr4FXzL1CrVetO9qIxBMqTuwwYwOjGE
	un3p9SpmGRZDyOkgmJM2sWSGWYPaDuS2ZBIcYwKew1qDlijVkbaspMOVjkQSp+L+PolgQRBfVeRZl
	dAZgLmEANFL1pYKQ/rRRN5N32Xs+mbCG0oyvhDDkDupF0RRHXqC8fJhVVC/JvUWS82pwjCN6NMGAc
	wI7zJOXUoIxpe9qRnxo46cZreCbJOzJ1kSaeQB7blmcITypwAbDyta4op27JjL+t+HB8NpzHWRUQI
	OiWFJRZdVM5eAiEgIoCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUvyt-0000000Fxqr-1XY2;
	Thu, 04 Jun 2026 00:30:43 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUvyq-0000000FxqP-0odz
	for linux-phy@lists.infradead.org;
	Thu, 04 Jun 2026 00:30:41 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-490abf12f0fso465825e9.0
        for <linux-phy@lists.infradead.org>; Wed, 03 Jun 2026 17:30:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1780533038; x=1781137838; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vjGmXAmM+3Nn1KtSjLMnBrRs8nWD00igFoG8wE5QxV0=;
        b=iL3c7uBz+yCNrZmmEJO9nXh0sB4t9Z8/39EoHNgnKtjj5L8aIvH1e0vv/yiqdXeijI
         ighZXJhqIkWzYH1F1Y8Gdkr2vv3rOquQG4GIL9WZFFl0brEvn24YjsiqdJQ5Qo2In3Hx
         qktK4p634tIwTWlWisnl1sHO7VjsPj5qhOUMgQq+0NnCQjCaa3obnac7lE/zSICBiRmh
         kH6UikZ/Emvq62wx+ZcKnlNNaAAU9eeS+2qS06WCm7UZbrb1R6Wt9qLF4sSU/NO96EoH
         CqqdiADvs3czyGRsqKJIfKaOyZFsYn+k8oGfl0GejILD4o1uYld7Bsfrc4uuMa6HfvFA
         w+Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780533038; x=1781137838;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vjGmXAmM+3Nn1KtSjLMnBrRs8nWD00igFoG8wE5QxV0=;
        b=fkmfMgJqbMRXjzPGzGQk44v2JuTWhFIgpDp1JBppox4lMVUkUdk4kmNgO/ShMhBwyB
         ZaQKD3amoQFOPqzkCOVQRtwM/jRBs7os8aD96WSPdRAkYlgR1rqQh73+iGMs6Kh1CozE
         UU/vGj+q3RnK/XIMLI3jSJY126MygWVXLTes8Okrg2eclnwC4EpE2CL810wSWGkysyY0
         pv5UZpSDNsOoB69//IBaOvRdh+F7da23G2RAlHnnWlSZPf2NQDok8Q0DfJdDn5KzPseT
         B5+zQe8RssX1xgSWmnlENY/492p9jhdR084ib1pR+u8WIQsVRH3XeF6yNOC0IY6W3Mw4
         z36Q==
X-Forwarded-Encrypted: i=1; AFNElJ/5YmMXakcKRygsRgVn3iWnE7RTXbIx3xdGZlcuXENR8ojMJHx1zsT3AgrFnVgTwPUXP99my9bw6vY=@lists.infradead.org
X-Gm-Message-State: AOJu0YwKUtK8KM3UR/g73qg239EB7TKujxwKc3EiKpFm3pyv+hlBowrO
	+vshSO+ZI/2e1qvqqdbHKrcVr1KbYk7OKZcdNXqaa12oys6pk5T1CHT1451cPIaa/8U=
X-Gm-Gg: Acq92OEyxLA4WFBmVGkST75h0OLw1ZX0W6ubJnbc2AnNR4jqTV3XaS2kIECN3rxO2Nz
	XWi9cue0mzRd/1LVxxFNtoh5ecy1oXtVeJGKKX5W8kRuyr7ySh+UT67yAdeZ9Qno1J0ZRINe0mM
	13lk9cctfEDaXSR3OQ89P056urzRWsKXa1MpXjZcXD5w3rvHTSTdJ/xfoztEJeVB/swUCs5k+mo
	mhIytVyPw3f2+EY9qCBPj2z94k37NKJ0gW3ORtWDvEuYo0oGu3rTrLOn28+1JoxJ+MBKhntYDzP
	3/pogCgYdaLIom5RJLAtPzqCl+8ipBg9hCQQW7AdXzCp8HAmAQYFZNVE47srnDW4+Hw8jQlWs7D
	HXUeiSKuERldwh9ryxz3E+iqCRFuxf5aP49dqSzoKzdz7g0lQIcliMw5NGmPZqoYtC1iCph1rgs
	WpV4wP3hZvTf4EFzwrcYbFefTWaMJUUAMHc9EADrV1LbUaNw==
X-Received: by 2002:a05:600c:4c19:b0:48a:5236:7f38 with SMTP id 5b1f17b1804b1-490bc5166a0mr12416105e9.14.1780533037608;
        Wed, 03 Jun 2026 17:30:37 -0700 (PDT)
Received: from [192.168.0.101] ([109.77.42.178])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4601f2dc412sm11926549f8f.4.2026.06.03.17.30.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jun 2026 17:30:37 -0700 (PDT)
Message-ID: <83c12dc5-fcb4-4089-9917-9f0fcc4f940d@linaro.org>
Date: Thu, 4 Jun 2026 01:30:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Bryan O'Donoghue <bod@kernel.org>,
 Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260523-x1e-csi2-phy-v8-0-a85668459521@linaro.org>
 <20260523-x1e-csi2-phy-v8-1-a85668459521@linaro.org>
 <rpnNMsR9GY8gbynzeBO8Zm61JAOq3ubt6sp0x3WDPPwkMAJzlcofECD1kabN-IUoK6sSwP5P6l28UIZLFCOpjQ==@protonmail.internalid>
 <dda32577-04e0-4507-acaf-a5694f4f31b3@linaro.org>
 <478df3ed-d4ef-43aa-bb84-e2075798542b@kernel.org>
 <ec98ef2f-02b4-4086-8b4b-07b6953dbd20@oss.qualcomm.com>
 <514cf213-5778-45e1-8d70-d3fe27991fcc@oss.qualcomm.com>
 <7JNJ4dUNz4ennJ5dkzhfLSuVo72JpfZAbprICPRqlRYnSzVDJw6x3h-1nESd_PK-3us9f1V3qOiLiywsTqP8vQ==@protonmail.internalid>
 <f01c0e22-4e5c-44e7-9ea4-4bc8d53aea2e@linaro.org>
 <29e8491f-20e8-4082-8943-66bee7e3af1d@kernel.org>
 <5ca611b1-0663-4975-bd56-b1343851e5fd@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <5ca611b1-0663-4975-bd56-b1343851e5fd@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_173040_291599_30B28598 
X-CRM114-Status: GOOD (  16.08  )
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

On 04/06/2026 01:07, Vladimir Zapolskiy wrote:
> On 6/4/26 00:18, Bryan O'Donoghue wrote:
>> On 03/06/2026 21:51, Vladimir Zapolskiy wrote:
>>>> Actually, one more thing, Why isn't TITAN TOP GDSC here?>>>> +
>>> If CSIPHYs are true subdevices under the umbrella CAMSS device and well
>>> described as subnodes, then likely none of power domains are needed 
>>> to be
>>> repeatedly described in the children device nodes, since this 
>>> information
>>> can be obtained from the parent device by the driver.
>>>
>>> Technically 'power-domains' property can be safely removed, I believe.
>>
>> The policy is to describe the power-domain dependency fully since DT
>> describes hardware not software architecture.
> 
> It brings no contardiction to the statement I've given above, the needed
> power domans will be properly described in the parent device, and there 
> is no
> sense to repeat the properties it again and again in every child subdevice.
> 
>> Also for a very practical reason a sub-devices can probe/run
>> asynchronously of the parent device being active so in fact we do need
>> to describe the PDs fully.
> 
> In opposite to the above this one is precisely a software centric argument,
> which should be excluded from the consideration, as well it's not a big
> deal to make a proper async initialization, removing excessive dt 
> properties
> is worth it.
> 

Right look forget about that.

- DT requires you to describe your hardware. You're not entitled to have
   some other device vote for a clock or a PD you rely on.

   That's exactly the type of downstream short cut we are trying to zap.

- In our case we also need to vote on PDs individually when the PHY
   is active.

In extremis say we are only running the TPG then we have no reason to 
vote for CSIPHY specific rails or operating points in the parent device.

We could make the parent power-domain argument for CAMSS and CCI but we 
have TITAN_TOP_GDSC in CCI specifically because we have to model the 
hardware - including the PDs for that device.

If tomorrow we put CCI as a sub-device of top-level CAMSS, that won't 
negate the need to include that GDSC.

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
