Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BBB3109023F
	for <linux-phy@archiver.kernel.org>; Thu, 19 Mar 2026 15:18:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6fa93Y2safDR5wDetcovdg+KY8cjqyJQwaeXxiwxWaU=; b=J2QLjd7fI87CMh
	xIXFT0jvFwKC4Hm5ik9mEQAf2sBHkLF6wkG95q0TY6VbTxnh4KY94BWOsuArdZJBcFHbc1Nl2IPFj
	nnQWjP17Saiwca0tZI9hrb827kBGrbRY9JcLK6huZ5pU3LdZt+o76Q44sdNoX5GUMTof8ZQfsN7TX
	71Pegwu1981E1zIXsZRivBYR/xF5l7hnREOTvz5ZzPdG2dEyy9CkQRUm7tHeNGV0fpmJyL5Ru1vdV
	7oOLu3FUeapLmXj6foFPODt5Gx31pyZX2NwuTctc9AIvy+26NKkaVDEylWi4vDeIqbP+OtlD0D8YD
	fWRGgwDzNN2uO+95A3kQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3F8x-0000000AtX7-3QTD;
	Thu, 19 Mar 2026 15:18:39 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3F8v-0000000AtWC-2mUS
	for linux-phy@lists.infradead.org;
	Thu, 19 Mar 2026 15:18:38 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-b936331786dso85539466b.3
        for <linux-phy@lists.infradead.org>; Thu, 19 Mar 2026 08:18:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773933515; x=1774538315; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DWpVwltXVlWC8w/NEtJeLgYjgTRX+Okg3gaLBnKxQCQ=;
        b=sj/We7H/TU+PlWxANm8R7z9TMO9Wa9cKSx3mDkXNfJnFvVaXQ6YDU8hAVntCxu6KyL
         iYi9YfikLRuz1X9tketaz8w6crXbUW4vCkco6P+HIdi6tpAg/3OkEbWLagcICcoCVzFD
         qFCP/OWNl35KaKnlDMs3AILEsX90Jta/d1MZ8edGyOwotklxM4hAqvYNLCZ2zTfJiq5A
         zw3BG+uwDljzFYcKxxJetLscv5Y112UpECls1X/CAXYzEkCn8QTi9RaciSPxC2aj35oV
         l9+GgXPbwdKYjpswyXB33CgQLpGnEAQFT0mYMWJhUQUgSz/I8TKOg3FzBwK+5mfXjkYJ
         nfTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773933515; x=1774538315;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DWpVwltXVlWC8w/NEtJeLgYjgTRX+Okg3gaLBnKxQCQ=;
        b=bTqG/jhLLxgBcsa+WwJ7w2t6ZS4EcNfxNyID4sZ59G6EiwO2o4b30auYl6RbMI2lIN
         B4PJA1fTVITwGPwiSUlFBclrEbW98YvAb/louQm6NHIBppab+z5MfFRjuPBWNnwn9ytT
         pKMb4/g3CZehT/2K+cJpxqM3vKVGoRkh1SeKlowr51Xl9Vth2e9IoGB4VXMQpBMWEJnr
         jbRu2s8p0LsU/0vTiLpTPhOQeVioKCSLe/Y7mUKTBmPp21NBm3MYzcVY6CIpYVxb0DrV
         de535QNVRhu1j9PLrD+is4XqNvSa5DwdIxsPCGWUXwRogEqaZc54OmPQXLzi42mZt+fz
         XMpA==
X-Forwarded-Encrypted: i=1; AJvYcCXMlHz3zCuML9ImrZ1lf/FWGZP65+YDVbbrgbgUuHx0j1NcCBjUImcezqmqUMJZI0nIXqLJjjv/QeY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy/GovVocfUyYAx7iNT3v8ScMEAulF1teT/zSCv/MK4pCddl37P
	aghfpKjqwZizIXf5ZbEr1kPFarzbjfWUonuOrxWIUZbwFblqIc2hNNi2dYaSts5VZ2c=
X-Gm-Gg: ATEYQzy7ep+42Rjb2FjiPgU5FQaNXsA0UVWuZ5ddaB2o2mR80qCcj4iVmacWE3hkojJ
	LXnKzIb6uq3aEgO9+Rei8OZHfuf1qVVAZll1eSJoP6L2kxDWUDFwdRraw6og2/1dn5PAQIBcylD
	VJUbojqdaIimSaCwov1SRGYE31hN00S3Dq7I1r/ZfzlE0+77kY0+ihCHG/JMr8QW3E2vENzXajs
	AA38AV39gyWwSq4eeucxJyAxi8WqNpOeusXfunKlAiOVSkVjSyPnwwP2wud2CrNX8D/3aTsuZJT
	0Jpc9E5BhdiUTKnCz9um1XqpOEg5f2pTKHhg4fMiuDLEfwcsAFOLVRQZLHCCaLBRIpiQSAs8hCI
	4HnASqQObWS4tPL32Ow706Hd5zATGeTPdwBIsv6/BBntiQV2lAzH0noIxioeOQHvhyB6yG9Ul/Y
	KTAIuDi1oDBSCiV57tCB8kg3MWksITx4HQr7xt
X-Received: by 2002:a17:906:e244:b0:b86:e938:1b21 with SMTP id a640c23a62f3a-b97f496b63dmr353386566b.23.1773933515086;
        Thu, 19 Mar 2026 08:18:35 -0700 (PDT)
Received: from [192.168.0.167] ([109.76.224.118])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97f170e5d4sm464497266b.55.2026.03.19.08.18.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2026 08:18:34 -0700 (PDT)
Message-ID: <f3c62284-ac78-42c6-a4f0-cd984b7124cd@linaro.org>
Date: Thu, 19 Mar 2026 15:18:32 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
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
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <d6616fc0-75fb-47e2-96cd-ae81fa1a8e82@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_081837_749802_2A3F6A8A 
X-CRM114-Status: GOOD (  14.55  )
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

On 19/03/2026 14:56, Vladimir Zapolskiy wrote:
>> There's no reason to remove that from CAMSS - it would be an ABI break
>> in user-space anyway.
> 
> If technically CAMSS CSIPHY could be excluded from the list of CAMSS media
> subdevices, then for the sake of simplification it should be done for all
> supported platforms in advance, such a change will be independent from this
> particular phy series, and vice versa, this CAMSS only driver change will
> prepare a ground for media-less CAMSS CSIPHY device drivers, hence it shall
> precede this particular CAMSS CSIPHY series.
> 
> For backward compatibility with userspace a noop stub will be good enough,
> it's not an issue at all.

The standalone PHY driver doesn't require removing the CSIPHY media
entity from CAMSS. They serve different purposes and coexist - its 
important to have a NOP from user-space perspective for legacy and 
indeed for new implementations.

How the PHY gets represented in the kernel is of zero interest to 
user-sapce.

That said, stubbing out the media entity is independent work that can 
happen in any order and IMO is a separate debate. Whether or not CSIPHY 
init sequences live inside of a monolithic CAMSS driver or live inside 
off a discrete csiphy driver is not related to the media graph.

Happy to have that debate - and if indicated, carefully apply patches 
separately.

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
