Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9094C83F17
	for <linux-phy@archiver.kernel.org>; Tue, 15 Jul 2025 06:43:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oCmcsN/Vki/eh37UtJNSMofLQIFJgtsWG4cCDKdPpoY=; b=c9YLAJuY9Ogj09
	6qdcpYUBIp4gStm4wjc4HPXmLSL72+k2CEpX1ypAddY2yL4OdE7Hv8aDFK1V4WI7SdT1mKEG/6yYY
	81/weoZEIj0CicyhFt+cFFBFe9/agEoprJOqE0j6FZjZi49NKMg5wHFbpPX5B0HStT12m7MgEQp6K
	Sm2uvD08yIUtMerx2W6cIf3CvIWERxhw+C4bCXw0gt+1onSziK/6vsHB7zrzilrYrM6zmEkMTIrJW
	KKXufauuWjaccM7KAe+YotDqxgMLKXKOAcwQ79/JbtjGtA/OsaEB0RKDVaKGganoqsDm4OXK9OMus
	7cnYXxNpnLKvBPhl/3TA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubZNv-00000004FFv-1itS;
	Tue, 15 Jul 2025 06:43:27 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubZKo-00000004EZJ-1JrY
	for linux-phy@lists.infradead.org;
	Tue, 15 Jul 2025 06:40:15 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-553bcf41429so695513e87.3
        for <linux-phy@lists.infradead.org>; Mon, 14 Jul 2025 23:40:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752561612; x=1753166412; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tIQ0MAA7ilgsnxpjHpbsqjmKUfNKURLm5JM6QSNd4g8=;
        b=qh0VVo3glyETjJ8i/ERZLT63rTlli2xs67hqGLArHZFn6PMvNoW6akJWVKbvqdvzEt
         9SWhObSInxO5VfDz1u4FkCxsuDbLShTIWGpSoTkFAGvJtSx4/Ar2F9OJl9DMiqKL5i+1
         fJ2WrpKZ35Ap1lK5FqAbEs0fs4Lg5bS6kInuAbbu1ZYPTq9iQ3dAx+a6pZKQKsL4SSfP
         uvBP+GQH5Oz+KrkNGAAcOMfHafC1cAaGhQcmIt1e6miAH8pYBzSwvswZzKQ32Ecc7NIF
         gj4eq2pZfuiXibBKxMZUoeni/G9GkV/jAUa41EnIhth8ZaSdu61PP4ZsMW4+FwlPAIG4
         BWXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752561612; x=1753166412;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tIQ0MAA7ilgsnxpjHpbsqjmKUfNKURLm5JM6QSNd4g8=;
        b=gnvIZG3JMt9Aup/0WBrzmYLmylrYEqDfgqaHULkGQIKmuL3MGlww0K0fxkBP5qlwkt
         TBLZ8NM36SFvK++732oFYdm8jGnbQBZ9/uE2ShBXwVkXNrquTXmgQrI+w7EIt9QBk1CV
         P71U2ncWV0Ho3uD+mEcEyg1D51UwVt7xuf3p09zlF5/UUWsjGEeFOSnqmQ721dFLICuu
         lDXBMPHVJ3GXh6YziCWcgcZyEVReZ2kpwSyXXmA7w5ra5iQzIxQoUPq2A/UUU9cUyeG4
         B6Wp4sYn3kwyg4K9bo9GktT9UfIK18KwHiiZ6vfl+uti66cZdMgG77B1HhJKOypjM78W
         Oq0w==
X-Forwarded-Encrypted: i=1; AJvYcCW2vW+NH1XsUHElIVHPI6uQBexgphSZHtviI2W+vKP2oaABAKljiZZfI9QjjoR8bB0dsNEtIdyvMVc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxt/cy62Bu2l/2T0WSXy2KI8WDk1wea8k375ePtPrMMZBdKARFo
	+yPHFo83MgGvQa0Xv+jiyGUvUtWHOzokoiCZ1xzKxNzw8FNbEvlMbFQXIyzFjkDU6ko=
X-Gm-Gg: ASbGncv8Mol4Fnp7c1T/pcgIx4OyPh9UUpWaL3e6r/fl65XbfFvxXH2LQvr2CvS8GRm
	BYtEK+G+MjKL28KvPgaSncL4o1+zTjcPokBdLRqOg/miTSuTxXxufUVi7cEgwLuTEESjx0Oeye4
	zIotk0WLDvgOEpCFB9u1EH/108JDzeb5UwoD23TuHK5GHDYB3m68xQE4ht850l22gx663ZDaxWF
	FqxfYyJuBKvdBSBgsTlLqbBaU1uciV5ptMv152HlMqjXorPMZJ8FAe1ZRjsCjMFSEbAI3bKC3TX
	ClttdUMn8tAgZ9dZ9ZthPzObGmjXA3AmQKVVjph+otYhW97otrUrUuV7W8BNGFwYYP8cueuc4ns
	hHkN+p+xt8DTazZoI9vCzyX49/KB540rkDoD09Cx2QCEwTG17CwTw5K5o4F8I6dZkZH03D6Uwxl
	HM
X-Google-Smtp-Source: AGHT+IGaFJXLkox1nF/8pLLN1OAvLc85Z5RHAm50nAQslP1unGzqc1kserBe9j82STD5G66WKnTIuA==
X-Received: by 2002:a05:651c:1a0b:b0:32a:7d76:2660 with SMTP id 38308e7fff4ca-330872d2995mr581861fa.2.1752561612382;
        Mon, 14 Jul 2025 23:40:12 -0700 (PDT)
Received: from [192.168.1.100] (88-112-128-43.elisa-laajakaista.fi. [88.112.128.43])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32fab8bf2e1sm16881731fa.55.2025.07.14.23.40.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jul 2025 23:40:12 -0700 (PDT)
Message-ID: <dd3c2fea-2c85-4a4e-b048-68f95f4a7d5d@linaro.org>
Date: Tue, 15 Jul 2025 09:40:10 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom: Add MIPI CSI2 C-PHY/DPHY
 Combo schema
Content-Language: ru-RU
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
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
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <01080f5f-f3e6-4989-ac84-766c030dda35@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250714_234014_540551_8D7033DF 
X-CRM114-Status: UNSURE (   8.90  )
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

On 7/14/25 17:42, Bryan O'Donoghue wrote:
> On 14/07/2025 15:13, Vladimir Zapolskiy wrote:
>>
>> There is no ports at all, which makes the device tree node unusable,
>> since you can not provide a way to connect any sensors to the phy.
> 
> data-ports should go from sensor to the consumer of the data camss/csid
> not to the PHY.

No, this is an invalid description of links between hardware IPs, and
this mistake shall not be copied to CSIPHY/CAMSS.

> Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml
> Documentation/devicetree/bindings/phy/mediatek,mt8365-csi-rx.yaml
> 
> https://lore.kernel.org/linux-media/20240220-rk3568-vicap-v9-12-ace1e5cc4a82@collabora.com/
> 

-- 
Best wishes,
Vladimir

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
