Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9742C83F1D
	for <linux-phy@archiver.kernel.org>; Tue, 15 Jul 2025 09:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bu9iFdHT2IiJNDSN4SVeY7N0avow3XaxZLWcVg3W1Cw=; b=ORXigaCseFoaR5
	IpmHjVrkDoQqxEalxWw2mKQ2JOkugTDZjbZx314NJcAoZBynTOTOSW95pZ0trxGqeLaLH8r1h0tik
	8OXa8LkH7u8ocBdpv+dbMNWKfzuvWYFB4MHFhJ3cYcU8y45lgT5x5NNnIQLOluSQJeoCM6wlce7FR
	J+eJlZAhxU6rsrcH7tjQhRvD4FLmgYl6yYNQqTcAK3GvL+J9JDz2gJq3Mm2bA+s9JNfgB20X7AFZG
	IfYmpv91SBI7S1lPhmoz7VE6FKkgpKWZIVuvj0qAxDMe/7Twvwr8z7oRannCFgN69bKqwZozVhx3r
	u3RsRo5mKFScVeJo9ITA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubc1Z-00000004gbv-2Qng;
	Tue, 15 Jul 2025 09:32:33 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubbP5-00000004aBF-0B83
	for linux-phy@lists.infradead.org;
	Tue, 15 Jul 2025 08:52:48 +0000
Received: by mail-wr1-x443.google.com with SMTP id ffacd0b85a97d-3a4e742dc97so3639093f8f.0
        for <linux-phy@lists.infradead.org>; Tue, 15 Jul 2025 01:52:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752569565; x=1753174365; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8rnVY1GAF/N5LWVPltTjR6zDyfcKdsovhZ7bcU1CtiQ=;
        b=yNG8tKP1RQQK+8WYc7n0SccGMIEOmToClvAXA5cUHbqXowtoDEejFyDUIAzjDD/CaN
         OljPHB6jmZ16WtqDTn4y0JVGZGUQ14scZDD5+26mm6Z+N7MBs/jSPceUotrETPrvDxmg
         MvDYLKhaf0fku1J+y1C533TNYUzaWB0/D/vPHgI1R4sqEBq8ck40DuvRqC3s6/e6H39r
         +r+nBBAeCE89nw3rjYTrsIS2I4fAmKvPwcbOBCvB414/UB6AB4Dn02L9yVffkFk3MR16
         KCPNzN1L7uXi5VmrCaDGrLbyJ+WP6J8Zh9d2AQcdZ0uh9Tt4nff7ItpoQLEVlwNrmuSS
         yPNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752569565; x=1753174365;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8rnVY1GAF/N5LWVPltTjR6zDyfcKdsovhZ7bcU1CtiQ=;
        b=fQrdGXR2GpIOXJO6rMSSaFvvlNnWZG1vDdKpttK5r8uwFNNqaXsX1lHZ3ragKECmEm
         SUxEaJBy0KvNBTyzBLrXLn1u2G5c1+qssOL47zu1omw71xUknOcrPGPm8Y9JHfFAbXKI
         7UghKMvQbNpEtD16NhZNIymeIaP2iOfl7ASk+WM+v2Zz/Z1Nq5W+8aHUXNGYJKpk08re
         H8Ti9mF5EaSPfuXLJCjaRbcWqGlQBnW5dw+hxtzjFGRE1WUYDtvAA6hmcDZy/FaYOcac
         WuOtDOb9WYlMbRibFuaN3poInL+cF9M0nNtC/3rKt2zk0HYsN3jljapYq4JAnij92g7/
         Uo2Q==
X-Forwarded-Encrypted: i=1; AJvYcCU1R/iYOh8AILoHfclt6OqJSW+W3mDCdAdOsaoNNyAL0GEgHzJy7Uh2fVrnr0qY3QdZBfleDKc/CzA=@lists.infradead.org
X-Gm-Message-State: AOJu0YzF1l41F7kLDsfF/xFUlxWT7ZIWJ1uHGBaoUD4aKbOaYyXXOHgg
	WJZ6YZ/NReGDweZ8LTcy1yFTfB3PaxuQZ3ljMJ3Ky3KERIxvoSch1HZTsWgTspOOCVFQ6loSGqQ
	9fFXz7ULckYtW
X-Gm-Gg: ASbGncuU+EF1DxZmaa5D6dsoZ46v3Tl7oUwOoA3ilwV2+n/jGfC6oeJCPfIlYdPOlxP
	2fOF+7AS5ZMHMXVdYhNwC2kqZmopbft1r0mz7ArFaoP4LZAACdvCwIAaJ3BejVeH3vm3B1CTEf5
	t3VJmI+QmP0+x8wcFHmKT/WdN/6YWEf0XUweOUsLxIb+2VWBsS+IURYfAZ3/AHH/kEKYzBe7rL7
	bZDfN+LHcSgjKx/+kGBzTbYoR/bCjH1SG74Oi03gZmoH/o+2cz6CRxoyi3H+MfDZbz+9oXlTpTe
	RBTY/2dYnZaqN6sPks+kWbxsk8YBKHL5hJyVZts1W605bvPce6nwv7qtGXSGsQ3tBFgMfmq/Z4e
	qliBrOokYQHRIayVjWTMuzXEhtHxpWK+8i2IMBz/OmxfdzzSsGq8YE00atofeGo8aguaa+ty5gQ
	==
X-Google-Smtp-Source: AGHT+IFaQahPDaZUOJPsVC+qijtYvVYI6IpgA7gJn52e340/+24c8CKkEgyMH3/OfrM26Bc8TF0EMg==
X-Received: by 2002:a05:6000:2289:b0:3b5:e077:af52 with SMTP id ffacd0b85a97d-3b60953435fmr2397025f8f.25.1752569565440;
        Tue, 15 Jul 2025 01:52:45 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b5e8e26daasm14882980f8f.91.2025.07.15.01.52.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Jul 2025 01:52:44 -0700 (PDT)
Message-ID: <2f9c8b96-8051-4270-b151-661c569823df@linaro.org>
Date: Tue, 15 Jul 2025 09:52:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom: Add MIPI CSI2 C-PHY/DPHY
 Combo schema
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Bryan O'Donoghue <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250710-x1e-csi2-phy-v1-0-74acbb5b162b@linaro.org>
 <20250710-x1e-csi2-phy-v1-1-74acbb5b162b@linaro.org>
 <8ed5eeee-78a2-4b26-989f-03676a9e5da7@linaro.org>
 <01080f5f-f3e6-4989-ac84-766c030dda35@linaro.org>
 <dd3c2fea-2c85-4a4e-b048-68f95f4a7d5d@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <dd3c2fea-2c85-4a4e-b048-68f95f4a7d5d@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250715_015247_097029_19693FC5 
X-CRM114-Status: UNSURE (   8.70  )
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

On 15/07/2025 07:40, Vladimir Zapolskiy wrote:
>>>
>>> There is no ports at all, which makes the device tree node unusable,
>>> since you can not provide a way to connect any sensors to the phy.
>>
>> data-ports should go from sensor to the consumer of the data camss/csid
>> not to the PHY.
> 
> No, this is an invalid description of links between hardware IPs, and
> this mistake shall not be copied to CSIPHY/CAMSS.

Why is it an invalid description ?

https://lore.kernel.org/linux-media/20240220-rk3568-vicap-v9-12-ace1e5cc4a82@collabora.com/

TBH I took a look at the rockchip stuff and said "nice, excellent, let's 
do it that way".

I'm happy to shamelessly copy their stuff.

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
