Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A973C88E64
	for <linux-phy@archiver.kernel.org>; Mon, 14 Sep 2026 11:37:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tUW4oXTCWnFlu/ic7fVSk8eUQCAGPdOgjfOycssrcqw=; b=wyfRA85npx9QJL
	iVt7bvNOs9/z9DFsqboMhERSfSHr69zBOmV5ET8w6DOE4QWeyafnk7HbJTyjHzepY2ka0+l53JLuy
	UQmUZ1ntck+B7fvqalwLait6iJ/pTImv93pishLghj33H0TldUqrvAK5CGfc/aikQ8RYKRMhdUZAy
	i+CYHLVj+DXvLxpcg07cO+oiHLrpMThN/Ytfopum772hEe/c5TJF5sf90G1qDGJSFwVfGf78SzW6r
	kr0VhnBIwTgb0EHxoJkVIQzUJBfkXGkfgvyGn9i9vy8mF5vHsNV97oWGUU8DUx5x69cMVgz5ZOTq2
	sAklf4asyoi2n+t3A8Lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x64zq-00000003I0R-43Zx;
	Mon, 14 Sep 2026 11:37:14 +0000
Received: from mail-ej2-x10.google.com ([2a00:1450:4864:34::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x64zn-00000003HyS-459b
	for linux-phy@lists.infradead.org;
	Mon, 14 Sep 2026 11:37:13 +0000
Received: by mail-ej2-x10.google.com with SMTP id a640c23a62f3a-c264788fd58so281799466b.1
        for <linux-phy@lists.infradead.org>; Mon, 14 Sep 2026 04:37:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1789385830; x=1789990630; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=BrFobApx96GbKEm837whkFKjtf7GL+qiMSoZ+3ZGcro=;
        b=UIzlNvBcN/lIkf/yVvg8LKay8aJL6GIftqfvzbWaeBsDcv2pI3BiBv6qiUKiPjzHOQ
         DMTZgHnUJkBLf2ugbL5vJmtBrcT9FAV93swUpik2drhltFbbXFhxSAJ+3OOi5+Hc0YI6
         oDiCXOJ28b1FoHNMmWXA/d0Ldthdvv4hT+kO0wSbIbqUq6CvY88q9BFGRGwWz+PhNhzE
         1iI2ihhUMKcT/dCGpZmp2JrdOuin0oV3H0Tqw0YiDiCwPUkAJOE0NFpGk+GaZjEsMgqn
         1Ff4g7kAYPZwL+OObgc3qyGLX+fKEKlH44wlUMi5yJ11d1vaCfbFfv9MTyOYAJHYvV77
         wnRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789385830; x=1789990630;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=BrFobApx96GbKEm837whkFKjtf7GL+qiMSoZ+3ZGcro=;
        b=VDvblzxtiJJCNXURvzvbR+eF1X/LnHkUxdAdGczO57v93qfyRabD3snjVAVM76ER1b
         QRnOzy3c5yR/u0bJbpE7+EwWbVaktj1TP+eTofbqQqYsFurcS3VUKdeuRDTkCgqMic5u
         aVDhCYwYyB2Dt2Z4T12xupOBm8Q5rx3KvD5p8hcMdtimvPVF2QBnwwG6Oo8qJMP+sUUl
         hwHeDpfMZiQL6XptIhBH75vowlMtfG598giE/gka+P9VdE57urltEkHrd1w4dIyFdFCG
         tSZSF4RBWkyOR5HRGHyqyfjC9J3V9xuB3uOPTZaQE5cSJMauOHoUYn1IxT0+L24sHpok
         Sm2g==
X-Forwarded-Encrypted: i=1; AKwUvBzf0H8EruPMsj6OkUo1ymPGlQ8fz7B7T5x7eCS0crDAYbAxDrAvyOj3xhEPN33iQpnLYxyRc4PZI+c=@lists.infradead.org
X-Gm-Message-State: AFuF++kz0iH47np8WAUVEtpg2j6fo9QlmbDFpyfMq2sNhzxOynYUboow
	Z8qkSOTtZ3PZkY8GnvhsYPTAqMuL6Fq6pJkpe+KVlFKsAChpETlwTVfyFOXO9X6pqaw=
X-Gm-Gg: AYBFou0HT8sS4bafIwbyP5Wwr8JYDICYLcaU8Jb7Xy7I/TB+0UqP50vCZJitRZgL0s4
	6JR7nxmCdatPw9HOVYDqOUITUwj57nXabg0mnEheaWoeujyOQxS4ZGgceBqMjUws0u7VIk2N8D2
	PdhuKhja/WNSu0/hC1tsPmRyP2K1qVTAc9Qq6xwxsrfSRf/2SHz+FtgQsLkSO6A1Jp4YBirozMl
	SbDHsjB7DaMHYSGOrn3YunVqyxCp+xx0v0ZvMs4J+j5Fq9tXRv1bnBCqmq298YZtTVwUGXQriYu
	B7G4BW7uEprZ+S1wAaK+b4IxXtHgA3TDy1Gs7/TKFnYyHP5Fqr1o9wtoVNIRAIuQGLBjeCFahe4
	204MgzTVfLgwPa8LLtugLmHd60Ezur2OLNDdVmi5tTe5hlPKNZL6ZGlvJ2n6CN6SmqIqe3DGv67
	iLpSYVwJ7+m1rMhR0ps5CH6VYvwdmCLPNgTx5ssi2xxD94eb7Duc3ZyVn/seRVOtmkqKVg9PC1n
	eCyUiKXwg==
X-Received: by 2002:a17:907:806:b0:c29:53b5:c69d with SMTP id a640c23a62f3a-c29b86f99a5mr151242966b.28.1789385830007;
        Mon, 14 Sep 2026 04:37:10 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.248.34])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c29660219ecsm412455366b.16.2026.09.14.04.37.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2026 04:37:09 -0700 (PDT)
Message-ID: <44634913-fd6c-454d-a3a2-6a8d541b2c1e@linaro.org>
Date: Mon, 14 Sep 2026 12:37:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v16 1/5] phy: core: Fix use-after-free in phy_get paths
To: Frank Li <Frank.li@oss.nxp.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Bryan O'Donoghue <bod@kernel.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Felipe Balbi <balbi@ti.com>,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-phy@lists.infradead.org,
 Krzysztof Kozlowski <krzk@kernel.org>, stable@vger.kernel.org
References: <20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v16-0-f7bd68b5369f@linaro.org>
 <20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v16-1-f7bd68b5369f@linaro.org>
 <aqRq-xZRIDL1apdI@lizhi-Precision-Tower-5810>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <aqRq-xZRIDL1apdI@lizhi-Precision-Tower-5810>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260914_043712_053728_0D52E717 
X-CRM114-Status: GOOD (  18.04  )
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

On 11/09/2026 21:56, Frank Li wrote:
> suggested subject:
> 
> phy: core: use phy_provider_mutex protect between _of_phy_get and try_module_get()

A pattern I try to encourage and role-model is making fixes very 
explicit and obvious - frequently I'll ask people to prefix their 
patches fixing things with Fix.

I'll split the difference with you since now that I read this submitted 
patch title you're right, it could read better.

"Fix race-condition between _of_phy_get and try_module_get()"
>> Sashiko asked during a patch review if the existing usage pattern had a
>> race condition; specifically in of_phy_get() if it was possible between
>> returning from _of_phy_get() and running try_module_get() that a module
>> might be unbound leading to use-after-free.
>>
>> Looking at the code this appears to be so, there is no linkage between the
>> phy and module under a synchronisation primitive.
>>
>> Using the phy_provider_mutex in phy_get() will ensure there is a link between
>> the returned phy pointer and the module_get() bumping the module reference
>> count.
>>
>> Amend phy_get(), of_phy_get() and devm_of_phy_get_by_index() to fix the
>> same usage pattern.
>>
>> phy_provider_unregister() must take the phy_provider_mutex so amending
>> phy_get()/of_phy_get() to take that same mutex guarantees there is no
>> use-after-free.
>>
>> Fixes: ff764963479a1 ("drivers: phy: add generic PHY framework")
>> Cc:stable@vger.kernel.org
>> Reviewed-by: Loic Poulain<loic.poulain@oss.qualcomm.com>
>> Signed-off-by: Bryan O'Donoghue<bryan.odonoghue@linaro.org>
>> ---
> ...
>> @@ -678,15 +677,21 @@ struct phy *of_phy_get(struct device_node *np, const char *con_id)
>>   	if (con_id)
>>   		index = of_property_match_string(np, "phy-names", con_id);
>>
>> +	mutex_lock(&phy_provider_mutex);
>> +
>>   	phy = _of_phy_get(np, index);
>>   	if (IS_ERR(phy))
>> -		return phy;
>> +		goto out_unlock;
>>
>> -	if (!try_module_get(phy->ops->owner))
>> -		return ERR_PTR(-EPROBE_DEFER);
>> +	if (!try_module_get(phy->ops->owner)) {
>> +		phy = ERR_PTR(-EPROBE_DEFER);
>> +		goto out_unlock;
>> +	}
> why no use auto cleanup guard() for mutex lock?

Technically this fix would apply to kernels predating scoped_guard() - 
kernel 6.5 v Fixes: @ ~ 3.13.

Not really sure how far back the cherry-pick will work but I'd like to 
give the possibility.

We can always sweep this file to use scoped_guard() on tip-of-tree later.

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
