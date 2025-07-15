Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBF85C83F1A
	for <linux-phy@archiver.kernel.org>; Tue, 15 Jul 2025 00:22:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5fS6uRstOwejZuwupWRKwUqvRd+aGEYlV7GE4qLIirU=; b=ZT2yzpF/LzG0SO
	oGO9X06r88UVqA+hKXEPsj4N+POLU61hAAX6Sh5/O814xQTkmO3ldAV7FCGdU6CirEf4jtCTbD3c8
	fHZJQrB/AVgxlGAC1qGNjnWC7IuiPehp1zscLqfgCkcEZbiKubZZ58UuGJZ7F62wcfR6zfk8Sc49J
	BtpwTia28Ht04SD7NF1abTadUmF/QZW7eavoWxHQQC26gOC+sFPedZVoOpk71gKg2VypjGW7z07jr
	FjzeKKEhP7MLdq4ZoNLS2kLIHwY7WIHKqHvpSl0enXOd6IVYzaeWKpg0eHoy1Fa4OQ7zn1wmZSA7h
	y6p1vJJ3BpU3z+MKogYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubTRE-00000003cyA-32qr;
	Tue, 15 Jul 2025 00:22:28 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubTI9-00000003bzf-2Auq
	for linux-phy@lists.infradead.org;
	Tue, 15 Jul 2025 00:13:06 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-3a575a988f9so2797869f8f.0
        for <linux-phy@lists.infradead.org>; Mon, 14 Jul 2025 17:13:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752538384; x=1753143184; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wjjlBO5McvqWYarNTItF1TpVtLRk0nuxtxgk1AQtFqQ=;
        b=Ypq0BjFGE3vI7p7twdAMQBnIsCYwpAL7zWYtUh2UqcFnrj4+u85WAa/tTV/urUYRHN
         PRGl4t+y21FVvE/EEgCReeZC46PKT+te68fPS3oVYxTcNjaLdXBoJuQ3TBc+Me8LUWmy
         FPtZ5QpkHjCoAVAFta/c2+8HC6slm/Xps1vjUPlhTeMzUH8VcCbJ1wjM53eLEUJbRuJy
         exYEi+e26Dis+EsfuoP6EMWdH4GZpnkCx7ZJTklU6Kz251vG/y/q89tRnp0XT9xosTi7
         nRrNdVMQbipwkIRYKrCWFA+QLnA+4pv7rJaMGksk+1Z8VjxqDA/VpBmAlpVSYeT66z8w
         y9fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752538384; x=1753143184;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wjjlBO5McvqWYarNTItF1TpVtLRk0nuxtxgk1AQtFqQ=;
        b=IENGKWRfBn/sOtQfNbIyD7kwRC8WiUa9f1Q/gmqm8dIzMQHM6wwn/w5vlQ5IJ/CxWK
         G5mLwSJYN7zFxaJCKFNkm+0z04KW9oNHIsH8AdxJIHpD5iDKblHM7vB6xKLAHgFJZEcU
         Pk9s4QmIMj7oYcwOM/RNzV5thqmbQIMcoZwpN4WKY+hCxKgYdSeEgyOy/pFRg15ZFkuV
         BPSjZFGXb3MV2PFkO1FSdnbN7e5OJRaFfj7GATBqoefUzk+ZrJzXBRhnB6PcdNFCXkE7
         6sFk6v/dXTC7MLk7NcSJS8nga1Nyxp+A+52ySJA53+HBwIsRvK3JqwrgyOb0XTRXE/Tj
         4EpA==
X-Forwarded-Encrypted: i=1; AJvYcCWe3zN07mt0o1lzacyjyqdM1qAmxK5aNRKeRaYIb2TJHUR5qeJP4EUuYwX5QDgVrsdDfepjVhnLkoU=@lists.infradead.org
X-Gm-Message-State: AOJu0YwHBrVTDDq5fFqqDKBA+7La+9uHymkBO7fWSeLV85tBSEyF3hLp
	z4sAHYOL25aMTaQbnpydqZOY8T34BLSArLYnmSi38qExWMAEwLFgNkFYYE925gIzgcNXqMRENmB
	0xKLz+RKfiw==
X-Gm-Gg: ASbGncv3QBk2EfOOoBB+8cwkYnCLWKNMov4U/iEAwBfpz4tRlKfiXP4c+QIpy40KoAa
	OZUBbjM6HjNn4yRAeVvK+/UFISUS7kSzwzjSwrPIirHU+fhLRdTtdic/uMmRtqhaQHsDOAysTgg
	vE6ubY88z+zZijkh4aMFMhuz/uM8hJCMp3lXiuWnK6jq6T6NrmXsNyB16PEk22eWFRHESBQChkT
	nl+/D6TMR+IURvgYmCsskGReicyIdBgM0udOSa0gaBSpW5FSpAqFxPPB+5j6SFWC/T8RCu55ar6
	UidvgA3YjsMc8othll2qJaXPI1IXCmYMJo0srYuZetoFGuXui0bcSbTZ+YkMIoCjYl9nWk+XPY4
	0fKzWw77SnOX1vnqWNg2FNQSkAmPyRLOgJFRhF7zL69lyJLiPcF+V2y5L4t27pDo=
X-Google-Smtp-Source: AGHT+IFJd4axtAtvmY0ckIvQbLgd8yggih4zpyTmoTOUg1GtduaU49kxIVWw0qgHHk8eix9/zHH8ow==
X-Received: by 2002:a05:6000:e0a:b0:3a4:e841:b236 with SMTP id ffacd0b85a97d-3b5f18cebeemr10550712f8f.33.1752538383914;
        Mon, 14 Jul 2025 17:13:03 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b5e8e211dcsm13335901f8f.84.2025.07.14.17.13.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jul 2025 17:13:03 -0700 (PDT)
Message-ID: <0a12879f-dc4a-47fb-87a0-ac4b8bcd4d75@linaro.org>
Date: Tue, 15 Jul 2025 01:13:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI D-PHY driver
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
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
 <c93624bb-ee7b-45ac-8b53-b5391f11c9c9@linaro.org>
 <eac3a877-a4aa-4789-9013-ab8b6c91e0f3@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <eac3a877-a4aa-4789-9013-ab8b6c91e0f3@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250714_171305_579215_3922B608 
X-CRM114-Status: GOOD (  11.06  )
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

On 14/07/2025 16:30, Vladimir Zapolskiy wrote:
>>
>> I think that is genuinely something we should handle in camss-csid.c
>> maybe with some meta-data inside of the ports/endpoints..
>>
> 
> This is a CSIPHY property, a CSIPHY hardware configuration and a wiring
> of sensors to a CSIPHY. Where is the relation to CSID here? There is no.

All the PHY really needs to know is the # of lanes in aggregate, which 
physical lanes to map to which logical lanes and the pixel clock.

We should add additional support to the Kernel's D-PHY API parameters 
mechanism to support that physical-to-logical mapping but, that's not 
required for this series or for any currently know upstream user of CAMSS.

> Please share at least a device tree node description, which supports
> a connection of two sensors to a single CSIPHY, like it shall be done
> expectedly.
&camss {
     port@0 {
         csiphy0_lanes01_ep: endpoint0 {
             data-lanes = <0 1>;
             remote-endpoint = <&sensor0_ep>;
         };

         csiphy0_lanes23_ep: endpoint0 {
             data-lanes = <2 3>;
             remote-endpoint = <&sensor1_ep>;
         };
      };
};

&csiphy0 {
     status = "okay";

     vdda-0p8-supply = <&vreg_0p8>;
     vdda-1p2-supply = <&vreg_1p2>;
     phy-mode = <PHY_TYPE_DPHY>;
};

sensor0 {
     compatible = "manufacturer,sensor0";
     port {
         sensor0_ep: endpoint {
             data-lanes = <0 1>;
             remote-endpoint = <&csiphy0_lanes01_ep>;
         };
     };
};

sensor1 {
     compatible = "manufacturer,sensor1";
     port {
         sensor1_ep: endpoint {
             data-lanes = <0 1>;
             remote-endpoint = <&csiphy1_lanes23_ep>;
         };
     };
};

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
