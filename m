Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0331AEB64D9
	for <linux-phy@archiver.kernel.org>; Tue, 27 Jun 2023 08:28:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aq7NbEtvJx2uR1Ed4MHAZgPRF83beIDJ4sTijkmo7II=; b=xkLnDYhmv9zWpF
	NHoe1/yUPFpT4qmks1cQYzKdq4kMs/3KwcRHMITPv9wzmXpeC1XBFoYr5MgqgGTcxUmxk6/JP7g0d
	q0PtnQRpcF2vMOU1hyzHrDx+REg6kdYErl8HcW31cz78EcKlsv7fmVJmPPEnktmRHVFaxQQvQJpO5
	/Sj85LZbCBryqXhKX8o52Eaey2mwfE3i23mQe+6AdqF6TRWge8MsUh8Ri/F9tcaJFbLzgEs+Ra3SS
	cidZLm4Jip3vtcx9fSFNMViS7BsxvxN2RW0nlfznS/FsQZAUVNupteybSYPjFeCydPTJcCt0IaGHF
	M569BBubW4U+Fswh8RZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qE43p-00CZbo-28;
	Tue, 27 Jun 2023 08:28:29 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qE43n-00CZaa-0V
	for linux-phy@lists.infradead.org;
	Tue, 27 Jun 2023 08:28:28 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-3fa70ec8d17so46390445e9.1
        for <linux-phy@lists.infradead.org>; Tue, 27 Jun 2023 01:28:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687854505; x=1690446505;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yYisvyfd+rF4H58wJe4eQFLmEyiMEUswId3Wk9c1n3Y=;
        b=wH7eTy9awNOzwL5utRtT3C5wEiMycWy0sEiaOMdHrzNDJto8y9YfPlQJSrQehR/IlK
         r4uMh/ndv62GDY36Dge7xUrBV7ZozorvsfuGEDaXtYg+uRhfYrVZGtybNoSqh2Ln88CW
         dTkqiZ3BaPG19VU6sLUAhdede4DquVamESgRPAZnQnd5kN6TCb3gp1JrdnovbKxeqcT6
         ocoJ30rCOYa0E9o+yvzAlDAfTKlR69TaT8yRVPix6hXriXj/Yr4bDyNcMQDz8DUd9fbf
         knmU51SJoZ7B3LGjK3Bi/WmXwMItT/h0C2Pbai4asAVNn294qfUP7mCQzsynsubWQoHg
         u2Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687854505; x=1690446505;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yYisvyfd+rF4H58wJe4eQFLmEyiMEUswId3Wk9c1n3Y=;
        b=SPuhROOYLzaFL2kNkOcpk/c5qbhtwFlBpuS9T1ZjuA5om7cq+XOzGd49d8j93uMYC/
         PEbZBXu14cB59kOkZRtB4H8+uIz9fXF7jPkkQF19ujGLcTMTYPmG5zAVGB40w+0lPMmK
         JHnEa0FXiW0/tjJkBrCK4H94KUCoSL941HgwWoZHWtZ4SlJqmZjjh3D3Cp4eHsolYeKL
         l7cMNgjdKs0nGLeoh5rFBesqD5wmQhcdrq6L1nQYByIl0ICIVFzbjoGyGBmH4uZuzhM5
         NQ9sVTCTfoACC2hAPpDsaWj/mfSi6vltHfNHB8OgsNsQHRq9P0vxMJZ6SDJ+yQ2nWMYW
         P+RA==
X-Gm-Message-State: AC+VfDw7Kc9gjZEJJH7MXR3DZNmdWPdQHkQ64yc/Spm0xEC57WKSwULw
	czzE4DN9NeKIRWB1a3e8z1BCRA==
X-Google-Smtp-Source: ACHHUZ5nvEEEqnMcktYAI6is2hSR9HD1+QyfTyrqMOqlGkEkZjtq0427Hllsu2wMsfSR5lT62fh2lw==
X-Received: by 2002:a7b:c5d7:0:b0:3f9:fd12:a8b0 with SMTP id n23-20020a7bc5d7000000b003f9fd12a8b0mr12919290wmk.20.1687854505552;
        Tue, 27 Jun 2023 01:28:25 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id u6-20020a05600c210600b003fafe32c8f6sm3766671wml.10.2023.06.27.01.28.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jun 2023 01:28:25 -0700 (PDT)
Message-ID: <5c384322-5321-f3c5-f0c5-0558c344eef5@linaro.org>
Date: Tue, 27 Jun 2023 10:28:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v5 4/5] dt-bindings: phy: realtek: Add the doc about the
 Realtek SoC USB 2.0 PHY
Content-Language: en-US
To: Stanley Chang <stanley_chang@realtek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Alan Stern <stern@rowland.harvard.edu>,
 Douglas Anderson <dianders@chromium.org>,
 Bagas Sanjaya <bagasdotme@gmail.com>, Ray Chi <raychi@google.com>,
 Flavio Suligoi <f.suligoi@asem.it>, Matthias Kaehlcke <mka@chromium.org>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
References: <20230627082022.22902-1-stanley_chang@realtek.com>
 <20230627082022.22902-4-stanley_chang@realtek.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230627082022.22902-4-stanley_chang@realtek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230627_012827_230338_F5211B7A 
X-CRM114-Status: GOOD (  13.74  )
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

On 27/06/2023 10:20, Stanley Chang wrote:
> Add the documentation explain the property about Realtek USB PHY driver.
> 
> Realtek DHC (digital home center) RTD SoCs support DWC3 XHCI USB
> controller. Added the driver to drive the USB 2.0 PHY transceivers.
> 
> Signed-off-by: Stanley Chang <stanley_chang@realtek.com>
> ---
> v4 to v5 change:
>     1. Add more examples.

Not more examples. Just give one or two relevant examples.

>     2. Remove the compatible realtek,usb2phy.
>     3. Revise the descriptor of the property.
>     4. Add the default of the property.

...


> +
> +required:
> +  - compatible
> +  - reg
> +  - "#phy-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    usb_port0_usb2phy: usb-phy@13214 {

Drop also the labels.

> +        compatible = "realtek,rtd1319d-usb2phy";
> +        reg = <0x13214 0x4>, <0x28280 0x4>;
> +        #phy-cells = <0>;
> +        nvmem-cells = <&otp_usb_port0_dc_cal>, <&otp_usb_port0_dc_dis>;
> +        nvmem-cell-names = "usb-dc-cal", "usb-dc-dis";
> +
> +        realtek,driving-level = <0xe>;

Why keeping this example? I asked to grow it and instead there are two
more. Just keep one describing as much as possible. Second is useful if
you have there different properties.

Your third is almost the same as second, so no need for it at all.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
