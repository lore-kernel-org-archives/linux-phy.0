Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0D4BC83F1A
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jul 2025 18:57:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B6YjOZc5qgVj9EGC9khR/zxvd8m6xKGAGCevQ6JVoFI=; b=PeT4UWe5BhMsF9
	3V81hPAOp3ATxsgF6RPT2ACj2YFP53ltEcpVp8jypE58qC1snZfIm9kU+P2DkpfXsOw9vDUnv5+Mj
	G+qdVcovh+NUJOianQ5ke/UoHadS2DyQJmjOnHi2dwNyaj2aZ9VJK0znSA0adjkc85pRkasUO+X2p
	BINh8RM/UsMj0ZowCr/5Jwcoe6LXoi5b/IopmKy35ixO4es4x3x+6LGk4X3azLTlpOQLQ1FDwTmd/
	WgAxmIDQWhyXZX2P/Bc3Ggb0zpZmXLfDY6pO3KDW+u+a9h1NB6QKXu6peKdaeh0wJTZ81N3fXAoaC
	YE2BSnc+rUdfIpMq1zXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udvhm-00000000RfS-2hXw;
	Mon, 21 Jul 2025 18:57:43 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udtOV-00000000Azu-42Dv
	for linux-phy@lists.infradead.org;
	Mon, 21 Jul 2025 16:29:41 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-3a50956e5d3so3420691f8f.1
        for <linux-phy@lists.infradead.org>; Mon, 21 Jul 2025 09:29:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753115378; x=1753720178; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mDqcrroJ3qLkh5t4BQvEhf/oMY2x7lp1dD/3eXpKYqI=;
        b=Bt5MhkDj2dkID9yMGhSfsul10A897cOyDCmDWPi2KkUQTM82QzWyAioeAzQdqkBArF
         NtE/Uuggt1XTL7UTm1J/H2gxKlWM1VSEP9cDjRdAyeW4RMwqQclWK6yJuLVA/nqDiusI
         hMVmT0C1o8YzOQ9ha4Il1mA6f+Fz2gThb4zFByeDhZi+SEnXwiZ2dI8UgjMtWf+8gt/C
         geJvpUVBGeI46qZCa+lt34F2hSTPkvH4gjIJ6KnwoAfrsAvaNYumOwd/NQ44Jk67TX8Y
         lOZEvyO8dU+kwk70WHQ/aF3F/p8H35H1/bj12GcKDrfd2pSjmk47DMlMmC0mvCJT8JSY
         zHkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753115378; x=1753720178;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mDqcrroJ3qLkh5t4BQvEhf/oMY2x7lp1dD/3eXpKYqI=;
        b=T8PMNVYnvFe1Dc77sJ6u2HIUoKVeAuoXI8w38tC7TJf4oACCKz7PC7lHkQMZZApuaj
         yMfuulHJPKfxNjU5M2FttKmTwzw/Xh4B52oCxVLklpeDxPNx4cuU73I5dDklnDSUW59q
         9DfcPd+2ZjZiiFm1zkJKDmPivEyjLc9CyPxiUkoliyAZKUpoipL7YEQdypJH/JU+I+ZX
         fZJbrqJ56gvgPUCpC3CSK5frUDB0ijti96ww9YRNeuQyPwRmi9pSe+Chlw5cuRv6dHgZ
         07Xjok7zoANpFt2mUOTesPl44y6Ch/5RYucQ+lrQV+23fIfkQCBDRspcUEwo2TDGgQhn
         A7fw==
X-Forwarded-Encrypted: i=1; AJvYcCWTQ2WbkOauaPITAAdzzkp4e3PU5OzV9NXKeChZusrkdMZRC96R0Cc0OFOUSsCby5BuLO1onrplzR4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yybjt/qlinOYwuHqulGPzSlQQIbWZxlVoTiGPT6V3TvXCSdTmx0
	tCI0aR7KtZZtpwPvRA3Ghfqgtr438gKTZzAmXA7cl6G7/dKsclBGyBI7RK2r2aCc/9s=
X-Gm-Gg: ASbGncuSfwec//9Cmzggmu+29JJsOoJ/OSDUTBUj99Rchx4ix7ayLvFBupfV3ydbAX0
	OvHXSumdtf1KKl3FyyIbbyeeJAtPTC0sTFuy6qUXKYjh8Ql8LwzwrtWB/NBH4Fe6DxansJiiiZl
	wnLKOgQfz2QutKcA70ocvTWNkW3OLwWUDJ6r31rL0vDXNZFVMvSBxz/n+Rc7iw5+JcJlbP/ImeA
	Qk7xzgabqYGKlfmQi756DzNlPe7B1KhI/6OpPMUU5oFxxmx2UJAKmBicHDjasvgNzkvaiKUgXfH
	MEyGZV878/xAUfwIhJrcyqBjzYFhKGhFEv1BhpAuLTtppYtivTej4ze6VNw3E3QmxLs+MCRdvYD
	mxG4ZUIUJBU59m7To2EKG+vXMSACHfwOoRYrSEmTTZ2dufblVhxVhkidQqgrll7Y=
X-Google-Smtp-Source: AGHT+IEyGrnEx/ClY8Jxxfj68ZCw16qbV6UiWvo0mvnQsuihoYuu1pQ1oczOVmJPNRJcxc4Dt5O++w==
X-Received: by 2002:a05:6000:2482:b0:3a5:243c:6042 with SMTP id ffacd0b85a97d-3b60dd4a88emr17973192f8f.2.1753115378060;
        Mon, 21 Jul 2025 09:29:38 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b61ca5c8besm10819066f8f.81.2025.07.21.09.29.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Jul 2025 09:29:37 -0700 (PDT)
Message-ID: <94ca7625-4943-49a7-bc91-5e354d62cfaf@linaro.org>
Date: Mon, 21 Jul 2025 17:29:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI D-PHY driver
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
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
 <90a896f0-7b67-494a-abe4-dceb52067e65@linaro.org>
Content-Language: en-US
In-Reply-To: <90a896f0-7b67-494a-abe4-dceb52067e65@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250721_092940_013872_66399730 
X-CRM114-Status: UNSURE (   5.79  )
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

On 21/07/2025 17:22, Bryan O'Donoghue wrote:
> On 21/07/2025 17:16, Bryan O'Donoghue wrote:
>> drivers/phy/amlogic/phy-meson-axg-mipi-dphy.c Documentation/ 
>> devicetree/ bindings/parch/arm64/boot/dts/amlogic/meson-khadas-vim3- 
>> ts050.dtsoc/ meson-axg.dtsi
> 
> Documentation/devicetree/bindings/phDocumentation/devicetree/bindings/ 
> phy/amlogic,axg-mipi-dphy.yaml
> 
> Rockchip, Broadcom, etc.
> 
> The allocation of lanes is known by CAMSS and easily communicated to a 
> separate standalone node.
> 
> ---
> bod

In fact its part of the dphy params data structure...

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
