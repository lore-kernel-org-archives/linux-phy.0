Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69648C02198
	for <linux-phy@archiver.kernel.org>; Sun, 16 Feb 2025 09:44:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gAKTxWlK8DtBWrBGyDB+AaEWFW95DQP+36Qg/nGALQs=; b=yi54yYS+uG6XpD
	C95bttvIBPDs2GF/wYNEp2Nt05+xLTdmNb/fdZm5AlRWV3xpQaT6pnt9wYzYL+aoK2nFN3XggDcz+
	houxQzCUpU10jR1YAUtokNIUHeXkL00aBFHU0RWmn79daHybveqVzcf7A+tmZ+3BmfCDtO90QHdc9
	5jOQYrUQGnIp7dtXV5wqAyOjWXRgFLUIfk+ev/xEJqCmMtlYsUhOODvQBA3b83HFePCKtAuMtzF3Y
	EfImTPGs3Bzawk2DOEQiaYyGPJ/o70S3c//Luw2SjG9vu02Gpqqihc8p/ZAiWUrzk92eK7KeuifD6
	J5SEFMz+nuuRKeXyYmPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjbBy-00000001ZsM-0mbb;
	Sun, 16 Feb 2025 09:44:02 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjavl-00000001X8i-3Bhn;
	Sun, 16 Feb 2025 09:27:18 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-4397e5d5d99so788015e9.1;
        Sun, 16 Feb 2025 01:27:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739698036; x=1740302836; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=v0gaj4zFmFQRT8VU9mqYTsdQ0LPAUbckcaSOB8q/pi8=;
        b=QrHVFF74D62I9ZnxbH4fFy6Du8VgTSOY6EFSaBhrych6225MLYgiGEIAOblWOh5kbV
         QPgiOndfoJ8ATRLS8OnHkEfXU7aSNG9VmOSr1AiGVdxc/UDJpbBou5JBp+GBgrhtoJd7
         g6xX2UxiNW2ZxYww7krjFE+4+H8zFTM+nCP8UnJpVf6m8xAk3PteOHpW1+FXJdML7Os5
         A4kD/MfeIGqRz1eUU8uMfR3YddYSN7MyicbSDXN6rCfO9y+oHzZOXPMfYXOSlI5FJ/qo
         iX0DENT2x/4baq5IeNrOvFfm/xBcF88k7BN91wlue7DJehPPUiuJotXIoYtwsfeF02bi
         8lLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739698036; x=1740302836;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=v0gaj4zFmFQRT8VU9mqYTsdQ0LPAUbckcaSOB8q/pi8=;
        b=Kz30F2ycW8eD95AdXOF2CKM9LXr/GRW2dyrYuDFBuIhoD6IOJcsfRq8WgLoq7mYAUN
         Fj0b2uWCfiuU0sypcCkBifsBV5OgoV6Qr6gH15G4qOCqhB8F7aPDxCZTzalWxm72TSHn
         idxHsJVSWhGNXV+Tj2qjGtwcR9e5Z3KdzQyIlrWXJTvGZLF/8PYg+axKIMz5+sXyVhKE
         A0nBQUnfrrZGIpHtehcjco/644l+maxgjzZ6e7lFRCq1LBekF9SbhvRi7R7LNFFLXKiP
         ORJ/fgXF/td2iYMXwZ08wviMlB5Rb+s0fIdIJcgzLcgtuBpqMiraQ7ThCd/nephXVYes
         P1Wg==
X-Forwarded-Encrypted: i=1; AJvYcCXZBXUYgY+wriL0R1GbK4XQKiCeNcBbZAbHl+UHTzuYSDM8zxs1qFQiSMTNhf7Bxv3QNpjzlsckbOw=@lists.infradead.org
X-Gm-Message-State: AOJu0YyiQJi9FTSXqi+9o5kG3F4V4at/x/O10qMvgiDEV2UpBwiBhG8I
	iP7238YEaOSI/1kCLRhfq/vtX7g2Y6Fm0kSrP7CETxyEQ+Kgmzv+
X-Gm-Gg: ASbGncvOPBUvWkL2dJ70W9xv4X+nMZLtmultVflTMM23Kwh90avJ9mxdEpu40/Xjf7f
	bRutzvpZT0k+bq2Kq0DmDxtAlbA8JmjuY5apbsFtqcagBKLmsbNLZstSBZ+OSyzCCLkNrNDzPTV
	u808e39cfvjOHPTULi6g4I6RvEkDQj3VNQSojEbXgVuQ5ubdmk2GjwJcYx1DymWt7wazGR/THtQ
	YyTR6wS8/LVUSSxTOz7irK5IA4tK6XvZ3tCbS9MW4G7y4VUjYlfftB/GghB+AeJj6gKpFa2yaxJ
	58+N9A6Up6WI8qUEObMQrebQTGKdPyWyah3ehcb/QwWPWg9CiI8t7DYGMTohR1VAulXqBA==
X-Google-Smtp-Source: AGHT+IGChB1ddnC4aM/OIgP03GHT5PFBE/8ehdZ4vVVfa86O0qNjRbrFBXkT8twRRnRfn5eolhea5g==
X-Received: by 2002:a5d:64cd:0:b0:38f:295e:6331 with SMTP id ffacd0b85a97d-38f33f3d70dmr6112437f8f.19.1739698035732;
        Sun, 16 Feb 2025 01:27:15 -0800 (PST)
Received: from [192.168.1.105] (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38f258eb141sm9037282f8f.41.2025.02.16.01.27.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 Feb 2025 01:27:15 -0800 (PST)
Message-ID: <9c23e529-92ac-408f-a7e5-7cb7beda35b6@gmail.com>
Date: Sun, 16 Feb 2025 11:27:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/4] dt-bindings: phy: add
 samsung,exynos2200-snps-eusb2-phy schema file
Content-Language: en-US
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Diederik de Haas <didi.debian@cknow.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250215122409.162810-1-ivo.ivanov.ivanov1@gmail.com>
 <20250215122409.162810-2-ivo.ivanov.ivanov1@gmail.com>
 <D7TR7VP9UPQA.2U5BL328HNSXU@cknow.org>
 <fc860290-c5e5-4193-a8b7-a53137dd4155@kernel.org>
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
In-Reply-To: <fc860290-c5e5-4193-a8b7-a53137dd4155@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250216_012717_836634_DF1880F0 
X-CRM114-Status: UNSURE (   8.30  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 2/16/25 11:22, Krzysztof Kozlowski wrote:
> On 16/02/2025 10:14, Diederik de Haas wrote:
>>> +examples:
>>> +  - |
>>> +    #include <dt-bindings/clock/samsung,exynos2200.h>
>>> +
>>> +    usb_hsphy: phy@10ab0000 {
>>> +        compatible = "samsung,exynos2200-snps-eusb2-phy";
>>> +        reg = <0 0x10ab0000 0 0x10000>;
>>> +        clocks = <&cmu_hsi0 CLK_MOUT_HSI0_USB32DRD>,
>>> +                 <&cmu_hsi0 CLK_MOUT_HSI0_NOC>,
>>> +                 <&cmu_hsi0 CLK_DOUT_DIV_CLK_HSI0_EUSB>;
>>> +        clock-names = "ref", "apb", "ctrl";
>>> +        #phy-cells = <0>;
>>> +        phys = <&usbcon_phy>;
>>> +    };
>> Shouldn't the example have at least all the *required* properties?
>> Same for patch 2 of this series.
>
> Yeah, this wasn't ever tested.

Device trees were tested with dtbs_check W=1 but I overlooked testing bindings
with dt_bindings_check. Anyways this is rather a small problem, will be fixed
in a v2.

Best regards,
Ivaylo

>
> Best regards,
> Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
