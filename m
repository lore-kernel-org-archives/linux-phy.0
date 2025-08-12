Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBE45CA0EDC
	for <linux-phy@archiver.kernel.org>; Tue, 12 Aug 2025 19:23:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o9U5BHtkyguwDLkbvcfCA2c1CPy5M/AnBof4zNXYImM=; b=hY/xWS/+HXqLWU
	dRAvjfXL5hjMW7jdre9784wVs+/4qijA9VvohzCDyVXtlO7PJGo5cXczhXc7ZVkejMNK75LmmW+Ex
	dwH4b4suSN1ClO1F3g5aEq+WitTw/rk+HKDFUQXQ9L2wiQnd4cpaibp6yQ+Du0v/aNzNSsgKmyP6R
	Em88480hiuhP8MXBjSR247ts3X2FCKBgyMJxpNUIya1mxRPOSf5UkNeRwG6OVH3mvMdRMp9ZR/9JW
	JYMjs/41Z4sKWixA4dxWVZ4RJobNvB9BMWwr3r9NsWaqgeFydJh0FoeL+sxO/I5K4gwXz7rICZxkU
	GWgMvIlzjrMxUKOOafCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uluaj-0000000Bmx5-1c4W;
	Tue, 12 Aug 2025 19:23:25 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulqZJ-0000000B909-3E7I
	for linux-phy@lists.infradead.org;
	Tue, 12 Aug 2025 15:05:42 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-458baf449cbso54262465e9.0
        for <linux-phy@lists.infradead.org>; Tue, 12 Aug 2025 08:05:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755011140; x=1755615940; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iFiyXHmzPTJSM/FpIqJQMHXEodXhM8NURp+djBOJcws=;
        b=Zgqniad38RvXAzUWc4NE0JD/KZs8c9itQu5mWGOH1pxBD51pGRBiaJnfapStlRBHWI
         ig6rx9Xewe+vekdnLN3sPzHdaDk2Uu/7eAmCWKZKi156SSJJt7jTvrbtw1kWkS2nJNne
         v9TL+6OuMpA2imquEKhy+t2kv/C7H7/oTIEa6t1DW9lCVDzZsUh1qmNT1/Lpt1PCCQez
         B3yUXUjUXkDC+oumNxbbb5xcJ3NxPWIQPNcVJzSSF2vyT4E6wxyLKwklTNIO7h1pjbxd
         8o/Wh7jBx7SVTNvwqgMl7vjFm2wme/ljWEJdCO9Q/0TguK4j/85GWyI5jbi436rwxfO1
         uokw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755011140; x=1755615940;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iFiyXHmzPTJSM/FpIqJQMHXEodXhM8NURp+djBOJcws=;
        b=DDgTfxaomzEkfNNDKnL6Q8PptnVahcq8i/Qhb1UGvIqfu6mRLfp0I9/4GyTL/EN/jV
         97ys1AaC9aADVdRgWgOmF0h60GXw1ZlhMmd/GxYIakbqoifmGQ9KdB6bR9YNEyPwBEoB
         NOtJcfGrAQ8KrqdMWUvwrGdbIQl4Plo49/UX4CHSb7T8yinbiX13vSx8CEsxQhFf4RHE
         Ax9YBvXA3CgYX8VyKmgFC2YJUzkZGF0CqjCMNDKNZ9Q5NV0O9Xm6TNgFYSCwl6TqviVh
         Jnfodrv5aduMmJ7X2dX3ahs2Xgm0YDEJ/me3fj5mM4x/0aO8umLnOSdRQuUBKQNBxUQe
         3TXg==
X-Forwarded-Encrypted: i=1; AJvYcCX1rbwjrOizgH8Xty19Rdyq2WvbjpZHabl0eFe6dnsOi6VYkXggHN5F0IjZse3AoRGs/Pachmoafz4=@lists.infradead.org
X-Gm-Message-State: AOJu0YyNvd6OlLcZeuyqWooOAmaxx4pZmASnf4vUEeSft8p8TGyCqA4Y
	cJcL4oDGibG94Q9bqoo7OdNXBtW5yI3MIt2zFSbANVW5PrnElMeKoLmnWM38RVpvYVQ=
X-Gm-Gg: ASbGnctVzGY0vlnp9o8hALBk1alCS3phVQ6opcJmmaFYKHZ15u8CUhwnBWiPNMGTK5R
	I60lnPmIoFi8f0swhrYY8BzJAKCHXJIztQNa2TqZM0gbLsRKKuH7T0FLRZQOotA9dUlG/Wfvd6S
	H8fR4O/o3nysxFe5WYkNIt8t2sSx3DZn6hklLVj0aFl0ArxB8g2Cx+SgegiUtg/Nsrf4uOzt/9j
	uaSE1u3+zEtGmhrHeh+XscVSWFY3FVPixxFZKVekCvl7BDSfe819eczV7xzTKC70YwOcRaNADyp
	A7980zoRWuhfgbgt99a6TtchxtmdX6GnwompLNRYctm6u8coAIRObcW6QF+H0u2PQCqtHbO5Qr8
	1gr0hzUcDakt3lOGDRE7ssGPA0+jTRZauTGPxyEisccJaS5rkymi8oBksWYQpwIQ=
X-Google-Smtp-Source: AGHT+IFaF18WlpXLiOPapLF9skeq6bos29ChTJTlyHVAm8O0Lnm+tnZQv8MZbqesSAf81giG9PV3vg==
X-Received: by 2002:a05:600c:474c:b0:456:1923:7549 with SMTP id 5b1f17b1804b1-45a15b555demr1276015e9.26.1755011139689;
        Tue, 12 Aug 2025 08:05:39 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-459e5873c43sm327424985e9.22.2025.08.12.08.05.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Aug 2025 08:05:39 -0700 (PDT)
Message-ID: <16e4883a-a056-46c3-a7c7-a87ff5da89a1@linaro.org>
Date: Tue, 12 Aug 2025 16:05:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI D-PHY driver
To: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Bryan O'Donoghue <bod@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250710-x1e-csi2-phy-v1-0-74acbb5b162b@linaro.org>
 <20250710-x1e-csi2-phy-v1-2-74acbb5b162b@linaro.org>
 <d7949778-73c4-4575-8db3-a3724f75eb38@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <d7949778-73c4-4575-8db3-a3724f75eb38@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250812_080541_809540_4B528FEA 
X-CRM114-Status: UNSURE (   6.96  )
X-CRM114-Notice: Please train this message.
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMTIvMDgvMjAyNSAxNDozOSwgbmVpbC5hcm1zdHJvbmdAbGluYXJvLm9yZyB3cm90ZToKPj4g
K8KgwqDCoCAuY2xrX2ZyZXEgPSB7Cj4+ICvCoMKgwqDCoMKgwqDCoCB6ZXJvLAo+IAo+IEl0IHNl
ZW1zIGNsYW5nIGRvZXNuJ3QgbGlrZSB0aGlzIGF0IGFsbDoKPiBkcml2ZXJzL3BoeS9xdWFsY29t
bS9waHktcWNvbS1taXBpLWNzaTItM3BoLWRwaHkuYzo0ODY6MzogZXJyb3I6IAo+IGluaXRpYWxp
emVyIGVsZW1lbnQgaXMgbm90IGEgY29tcGlsZS10aW1lIGNvbnN0YW50Cj4gIMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCB6ZXJvLAo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgXn5+fgo+IDEgZXJyb3IgZ2VuZXJhdGVkLgoKV2VpcmRseSBJIGNvbXBpbGUgd2l0aCBjbGFu
Zy4uCgp0aHggdGhvdWdoCgotLS0KYm9kCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
