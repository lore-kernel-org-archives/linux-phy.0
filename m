Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84156C83F17
	for <linux-phy@archiver.kernel.org>; Mon, 14 Jul 2025 17:10:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NAGZ9Dv394WwWYBt01tp8sbsZldtlBsrSj2tSNJqv4Q=; b=1zddVovZRmAubb
	S6pPIZCK6rtcCE02MfbgAuoZTbyCqyAZ9vjlRUdwUnVzJIo0xBZlql6KimBtGRYD/k+nuSXS5yxpQ
	Tk1v27hIg2rKPdEs+/oLey0tcXW5WY7jGXWDCLtCv6vv1MLj2RTZmZRSi9pAf4qg8NtAcpebMB8jF
	QPb/FhHu5HirffqBagDahwfU8CENC/WJTP11pZJzGhP2Bwgtj2/0u6zT2bW+xep8Zs6XZQUORsJgw
	bAnGQ85EsKNYlw0wDaquBgwU0S6384+0L66lwcarfMwsA6l1gPo+O/0GBpKxUDy1LT/HFxBP2M6P3
	m5XuwDhJ0dsCGE8dRN1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubMgs-00000002vDj-0hNw;
	Mon, 14 Jul 2025 17:10:10 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubKvR-00000002czu-1r1u
	for linux-phy@lists.infradead.org;
	Mon, 14 Jul 2025 15:17:06 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-455b002833bso9561935e9.0
        for <linux-phy@lists.infradead.org>; Mon, 14 Jul 2025 08:17:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752506224; x=1753111024; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xCjJs+mAQ+eyQ0cHltxO4UYluhIlp5Nf/WChKLF+U7U=;
        b=pxD3Q8JQ+oiFFXvibO+AQy3mq7eAd2oObo0tZbRcykY9qKYK70I6HzHwhV6X03XU02
         lwsbPCAkRtntZSJhyXIzJWL8HnOCvIzoU/+xAxMj2RGYLHVlHC5jBFVW/mxUqp0XKO/K
         9dT04CsjXgzspyKDlfn90DVQxBuGMpD69z+4073q44U7cUBL3pYAfEleNekJEwQA8a5+
         eBnOFR3xwDam6w1+LcWYIy8czoqW8ECKi3hkTJ6XB1NoUbfEIL60gi1hz5kb1zxX9h3B
         TPrcQu0HMBCzKQDQK+g6oFjoh6CndPg1uOW1tkABQKCXai/+ROfMaAMKxu3RuD4aKTd1
         /n3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752506224; x=1753111024;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xCjJs+mAQ+eyQ0cHltxO4UYluhIlp5Nf/WChKLF+U7U=;
        b=LFqE9sJ4kmNjdrJF2el2vohOQv918/NS/Hz6jGAQJfXL9uP2RfaZXAj1XzowhnQdtc
         cRvzhiddyNWV9gPMsUJ74I5UkqSJc7QexcEgKePouTZJ9Q1z6TIVpTRgncyVf8mInDWT
         R8QQQf/RiS1mWBpevWr2WhtNpRMJupLC3xlCB+JEgNdU4P9/B6ZeJL4I3i8qtiVGA9ks
         hssQaHFM5CR+n1ekiAuAFn5IjFohpIVJIAGkiBmj7+kZoMNL5WhVwwa+PUofILra/aQG
         t/OuMKlkFOJ1Q1bBQdbHAnFGeFgAaNjq1u2Otu9kjR3yozH/MUrz5CRd1h7yFxHIQ003
         1Whg==
X-Forwarded-Encrypted: i=1; AJvYcCUlhnlGc/VzKd0S0+CjriJU6uBi5nhiT2BipDfXtOzE/EQ5SW0w6NerJg/O2vHzR4AyIZesRALneT0=@lists.infradead.org
X-Gm-Message-State: AOJu0YwLSVRGGJhc8KpRkE3lnrPFSHqEWjqZmDTsJTpltQ2ulrHrXVt7
	E4zMvNbW8mTPefqNSg+z6ucRoFbsy81T+M4ucKO2kLOWyR9RfYF9rSLfS32CzSHRN+A=
X-Gm-Gg: ASbGncsMKvOZCRPMNBygBwaVSHYKKQ4t0zPXjMsOQKf1Jm2o6PdHXtMtr6+irSVHU4t
	y2tcLRdiqSKb9L/ZMbLOvI+QRHJ6LUzWMtPZk1mS+3CjPftN9yrAId7Hv+INNxIvFbmnw/PrCQI
	Wq8LDnfzLfFThvEnxZxx1+B3hJygVejcaR75lH04hBs5tbr6/GzTbj3ZdSXYGD0thbgOenA9xfD
	9MoctlMrFgaeKrOdY8e66OrpuP2SHRjdKMses7XsoIG0sLkLT/q/006/w/PzMMq7BBNtz4vZJi6
	zroR78aOOZhp4P+oJquDrPP6lQrWUDzc/MIQWZPxKvJOVv5DM7tEBZjyquiOLfyV4uEWdOwftpG
	Dn5nTTmTxdiYQbuYaEmlu1ICZESnnKZnDogQKDttt3UV/Z+w0bMCnFAM3yurb1LY=
X-Google-Smtp-Source: AGHT+IEpin0kK7Y62+zwW4eiqts/4lq2fhVPTieQctRVVCnIYpoH+CSOCtblJicWaiIjBRT5U9/Y+A==
X-Received: by 2002:a05:600c:c096:b0:441:a715:664a with SMTP id 5b1f17b1804b1-455e7890b03mr75864705e9.20.1752506223867;
        Mon, 14 Jul 2025 08:17:03 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-454dd540b52sm135696755e9.28.2025.07.14.08.17.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jul 2025 08:17:03 -0700 (PDT)
Message-ID: <c93624bb-ee7b-45ac-8b53-b5391f11c9c9@linaro.org>
Date: Mon, 14 Jul 2025 16:17:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI D-PHY driver
To: Vladimir Zapolskiy <vz@mleia.com>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Bryan O'Donoghue <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250710-x1e-csi2-phy-v1-0-74acbb5b162b@linaro.org>
 <20250710-x1e-csi2-phy-v1-2-74acbb5b162b@linaro.org>
 <11b573d5-ce4d-476c-b94c-216d427cd838@linaro.org>
 <08261aa4-689b-4d6b-bfd2-221c1976d254@linaro.org>
 <a7f64b31-4767-4281-b452-a2bc5351d745@mleia.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <a7f64b31-4767-4281-b452-a2bc5351d745@mleia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250714_081705_484353_3729B32B 
X-CRM114-Status: UNSURE (   8.28  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 14/07/2025 15:58, Vladimir Zapolskiy wrote:
> 
> This proposed device node scheme does not solve the known and already
> discussed technical issue expectedly, namely there is no given way
> to describe a combo mode hardware configuration, when two independant
> sensors are wired to the same CSIPHY. This is an unsolvable problem
> with this design.

I think that is genuinely something we should handle in camss-csid.c 
maybe with some meta-data inside of the ports/endpoints..

> 
> Sensors are conneced to CSIPHY IP blocks, CSIPHY is connected to CSID.
My understanding of best practice is data-endpoints go into the consumer 
not the PHY.

These are PHYs with their own SoC pins and voltage rails. They should 
look like other PHYs in qcom and across DT, IMO.

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
