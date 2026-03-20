Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4F291093168
	for <linux-phy@archiver.kernel.org>; Fri, 20 Mar 2026 00:37:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xlxCRKeCu+gsGDwtPGAyp4BV3UDNFnP0ZcjwQ2fyKnA=; b=hRy9rBp7s4hxp7
	LQKIDVQFU3t0AhM5obi/4kU67icOV18Xe9a+vIANzwHQOuJEjLIgNWK8NEcn4reDHunp9m1ijUnh7
	1Lsumu0rHM8izXUoMHg+fxWG377kAhMidbolMdfJn2nBnIK6GpzM2/n/QZp0TfUq6qGiLbqxlFZ2Z
	vMZsGlMTMq6gPapwqdeEnX1hzZglyjNurc4re+PlkxyRBZSmu/V1chmz+XrI2ObC5Toksi4NF3gdS
	tdBPJRdIWR7vmn79CJ01EdnAK66D0ptQn7O+Bia6+18rAx1O7JrIBnJ+lAneVNIoeYckra5e0ifIF
	P+beAzxeEWMtQe9emSMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3NsC-0000000BqXs-0Fwn;
	Fri, 20 Mar 2026 00:37:56 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3NsA-0000000BqXj-1eL7
	for linux-phy@bombadil.infradead.org;
	Fri, 20 Mar 2026 00:37:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=pemwfzPMjVzwk3ZmFBYOgrrlysIkLu8Wo12oBjLmwB4=; b=Dgo8hfdqfb+T271ZWIjGvSoXZd
	FvO/PZT74WIF9so/iOb7zNz+J4CJWN9sUtcJ7wdkXUKcqxR3hihQwAtse28uxfjFYy14RxibFVO9B
	el1W6IKfZbNqcrLYe5W3iCxZjEk6fdlhxRv5VEpsbP+dXZS3LdIsspd2yNAiwUdnUbYhPYJam6H+E
	7C1+HxRJdffhO17Mf/ufrhkyv7nKMSwaG/cwg4H8Oj6njy8b0dKV0GmF1uITuUOlOJWz0PofVvPeG
	JoTDTtJx+3NEb9hkMhTUI4PfvS8+C9eI1kZgKu6g0qmC0Exmjos1WE2u7LAaLDE2JQ+qWsJyo6e2j
	3tH/fB0A==;
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3Ns1-0000000Eief-1Qir
	for linux-phy@lists.infradead.org;
	Fri, 20 Mar 2026 00:37:49 +0000
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-38a2e23e209so1178161fa.2
        for <linux-phy@lists.infradead.org>; Thu, 19 Mar 2026 17:37:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773967062; x=1774571862; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pemwfzPMjVzwk3ZmFBYOgrrlysIkLu8Wo12oBjLmwB4=;
        b=iUqo6QjFqR9YvgOOIwgBYbpZmvQcR8uGCYwKcLlTuc0hBTmfkNXQW6S4GmsxJKbsdC
         86z7R1lqAbVra9vJYEKAr20Ele7y7PbsRhEVGA9FQSIqfhmlN53hlRpafx1XGBEEL2mU
         vWqIrcofAyj2RuHJGgdRV49Ddt89EnMf0RS2dwpihem7SIVXKzu3QxgtzE1UcP+wQ2Od
         mz0ECSfjnCXQIzW6+UT73LiDnL4avZZaX9mEkVi9z/FVU7cyt08wZVMmabHuArFGV11E
         UctKn2JetR2p/J0o+q76hZhg2jS0HjPm4jDWYQJuqJmi/HSSyVrHk7SQ/tAAgmJKYHcg
         GEuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773967062; x=1774571862;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pemwfzPMjVzwk3ZmFBYOgrrlysIkLu8Wo12oBjLmwB4=;
        b=mbdMnrAr4yb7qzcNFxwrSPxNFwgkgMAfy80AzurjtrYLZTeomsUzvU9jtFW2+rPW8l
         gogyaONedpQmA8N5PF6qSjJnHXDTp1yOijMqBcPLs8ZVaI4EGkrQSNNJu3mQI6tJFBLA
         ZZdfb/hWEPVEhw7Rj8FfPESpzL6eV0YFHNMfWObRpyMufMQ3DHiFTGj8XgZ+jKbU033A
         fARr8Cq0jON4aHc15+CCwDGQ1sKcEAWN0x05f7O2jStiNX3vYqq1JULVTmYPmHF2bMgV
         PEEX1yG4JalIqPccT/Q/+eTBKn+cRX3R4BL7FVKsVdflZdAcOlUPQLlx70DHG4yFRlb6
         muDg==
X-Forwarded-Encrypted: i=1; AJvYcCXzRt/VkT5ZXRIpm+mhTe/Ha2DbWDQmNTqqkXKarOgYyroEUsOdVTQq6KLZL274ln3LxggxpheWk0s=@lists.infradead.org
X-Gm-Message-State: AOJu0YxEAZgEqtRrWUxyesbVZX8SPHdRoa1tNAFWhfYXQG+W6l2yxplV
	VboRefVp9ozyyIG7tBv5OAsqlTVA4pPFk9GE11yQDUQqeAJ6fUjwFKtM3E7kMUSuHsc=
X-Gm-Gg: ATEYQzxG4ibQ2vRsJVv0dkd+bT+3rb3KBdMNYd8ZCLGHZLbXR9fxhgZtWzrbHtp3XWH
	Wji/oksF11NFk3WUQkibcFGeGCr/eDoq6LdIFfrNkXg0+WZ31T+7zAzrbbGXBPdCP0jdg8/fN5/
	6WpYtSZ0CiGAhbC2cdkEG/ieQz1XRIdRWt89/cm+jntMxFdjnIpI1DTKLdxOr9xr8XzHGaNtQ+7
	vJp3MAODVq55sGuPv0RddUZbpwvKbrvKcneUN+NPIHulq/V0XGZ7cg2AaXyW4Fb/Oplf9wSSeO4
	ieO0FHfAhJUbdAcW/67Yg8KkhZIqqQRKehAWQrgawqE0lnxV0R6eCxN780QPZzwgoofXSUyU3/4
	j7crfHvx50LSYzGtM1y8Sl7v1xuIekp7pe36zAnAviXL724TYsne3DX0POQENBvYZCHbPkr1V7I
	oMVam8VrCQXVv4dzBOKnLi+9ZXmgE/9r5QE+xdZIMl5h0204YDD75OdVibaezJS6OOwH/eDqYy2
	V6g2g==
X-Received: by 2002:a05:6512:1290:b0:5a1:3e50:423a with SMTP id 2adb3069b0e04-5a285b4fc27mr205134e87.4.1773967061957;
        Thu, 19 Mar 2026 17:37:41 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a2851ae39dsm212218e87.36.2026.03.19.17.37.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2026 17:37:41 -0700 (PDT)
Message-ID: <5b23408d-c996-4785-8294-233d79168a1b@linaro.org>
Date: Fri, 20 Mar 2026 02:37:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Bryan O'Donoghue <bod@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Neil Armstrong <neil.armstrong@linaro.org>
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
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <f3c62284-ac78-42c6-a4f0-cd984b7124cd@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260320_003747_335935_14B96AC5 
X-CRM114-Status: GOOD (  20.43  )
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

On 3/19/26 17:18, Bryan O'Donoghue wrote:
> On 19/03/2026 14:56, Vladimir Zapolskiy wrote:
>>> There's no reason to remove that from CAMSS - it would be an ABI break
>>> in user-space anyway.
>>
>> If technically CAMSS CSIPHY could be excluded from the list of CAMSS media
>> subdevices, then for the sake of simplification it should be done for all
>> supported platforms in advance, such a change will be independent from this
>> particular phy series, and vice versa, this CAMSS only driver change will
>> prepare a ground for media-less CAMSS CSIPHY device drivers, hence it shall
>> precede this particular CAMSS CSIPHY series.
>>
>> For backward compatibility with userspace a noop stub will be good enough,
>> it's not an issue at all.
> 
> The standalone PHY driver doesn't require removing the CSIPHY media
> entity from CAMSS. They serve different purposes and coexist - its
> important to have a NOP from user-space perspective for legacy and
> indeed for new implementations.
> 

There should be no two CAMSS CSIPHY device (or subdevice) drivers, where
one chop of CAMSS CSIPHY device driver remains to sit under media, and
another one is under phy subsystem, since it's a further degradation from
the current already pretty awful state of the CAMSS driver, but at least
CSIPHY is not scattered over different subsystems today.

It might be fine to move device driver parts related to CAMSS CSIPHY
driver from media subsystem to phy subsystem, however if only a partial
transition is planned, and CSIPHY device support is split into two device
(sub-)drivers, then it merely exposes a quite severe design flaw.

It looks like it's still undecided, if CAMSS CSIPHY IP is a phy or media
device, it can not be both at the same time.

> How the PHY gets represented in the kernel is of zero interest to
> user-sapce.
> 
> That said, stubbing out the media entity is independent work that can
> happen in any order and IMO is a separate debate. Whether or not CSIPHY
> init sequences live inside of a monolithic CAMSS driver or live inside
> off a discrete csiphy driver is not related to the media graph.
> 
> Happy to have that debate - and if indicated, carefully apply patches
> separately.
> 

-- 
Best wishes,
Vladimir

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
