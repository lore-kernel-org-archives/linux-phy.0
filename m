Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 395DAC43327
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jul 2026 08:46:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K1zmA1qY+UP87Z3u5rtxBHR8kOeBxoAaTu521IaBa58=; b=tepW9zG/jrNHI1
	THxsIlVAvzCsDyQJ4k6aQEhoCduVDZpJAP6hlzyG3SN1YFcyEXyaE+iZTbX58P8A2Xn5XopjNQXCG
	by/oNy3+nDWfJgAlO5oAAZ5rsryQ+cRSM2uMhGbNwftzO9Mk/mp3/VZzOHu1KJrjg2qDPUW1COnRP
	Cd5BlpwzVqnClBLuNE4KqfEX9Rx7jaK18CYYVMQTYc7PN5QPYRStnDlILTkGgf2ydevh5B1VGiM0H
	UwmkT8h7F0PBkUmlbU7XRAagtpNWaLsCz+kcrUIhKtAoeVmIy9ORMiuBPme5SCfOlLHueFfaMA/t7
	XcBui+gm3ir8PXtGShdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfD3k-00000003uef-3L2j;
	Thu, 02 Jul 2026 08:46:12 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfD3g-00000003udX-0JTj
	for linux-phy@lists.infradead.org;
	Thu, 02 Jul 2026 08:46:11 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-c12a430d71dso147345766b.3
        for <linux-phy@lists.infradead.org>; Thu, 02 Jul 2026 01:46:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1782981966; x=1783586766; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XTERvRmf6CZrO5bc1Pl8xU9eJ7e9Wlwnz0/kVW1zl8I=;
        b=mFYkesTrSqKzAjZQKDFYCdk7SxurvB1pCj7bNscnQfYp7Cviqa/m16oV6GaBjQnTlt
         o4u0TDU7EfadrBTA74hAkGWDrcap9hEAu1zNEbZIAdabdCZsrnVNpfmLuvoQUSF21OHd
         Ffd1xlChhZ5s7HmBDB7PaxljlS+Xuc9ZfER/BDFFoVEDaqLkJqcejkt2Ytb6+qkSBOQ+
         nN5kbekDEqKDHI8zyffQWjJSRgucoNpzSWr8DsC0jyjk90Q0Gt0eAcSeofAAveArAllf
         FsVmqjdDWY8W31LSPaAWAzYjVm1CcA28N8BoMR/IQxB7tx0uMftgotATbJwUQbR9pJcV
         VTcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782981966; x=1783586766;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XTERvRmf6CZrO5bc1Pl8xU9eJ7e9Wlwnz0/kVW1zl8I=;
        b=Q9YB+uxZCT9WnLs+hIu5NILDSP7nWiYG4JtsqBxKlDV+zJnQzMf6qBPxHfZNiP3GC3
         mph3CJ4h+ofQD5ywpfikPaXMkBeh4iRfZVXXBbsYcmdGah7dnSZnb+G/culCV5ZRxvhY
         DfueAq2EndwZan2iaqYb5MyPAK/gioqvuXiDF31dUZpzbsPxtSD547vONw++1tlPtgMg
         XVNS9eDRIOqKRwxur3CWWsSYjFVi1SO+RDxlX6P3hBT5QJ3GVbl/buW0acUXBvv7L38z
         pHoKgGtTc98PaipUynwQGCy+8dZHQLLhSUFIIffRYwI7vG+42SNZVGEXcNjF3UCcLpXb
         dspA==
X-Forwarded-Encrypted: i=1; AHgh+Rofm8BFmzzejgaTlBxkt5cfBQKbj0Luclwm+sGAX/3Cjg581bT0zrlrkUzksYJydAcNMxaT/8YjeyI=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw8NOrYtMr1Qdq+gtSWhu2KdfeNps3orOgPJMjovJnzZjIW/VIE
	W0niwTDKMVKMn/Z7eFV1BJQcT1jUfvNwavCWiNfE4RnxNOFyG3+rY8ec7tTwU2+9XKA=
X-Gm-Gg: AfdE7cnQWasksCqeNxIfk+SbNTCou/P/61Ay6rRFvL50NNTUcTyscxtBWSVoSN+nQP/
	sKFdZqDsOYmwntx7w+fC2sd8+peeqCM3qdXWNrQxfrkEk/WLa/RPWF5Qx5rE7IRQPccrmwTqY91
	z0rQtbhvhzh8ZfVzluGQ3ax5cMThbRmAf28/wxv7C2iwtrwasnsvxhr0Tq5YmiU0ps0EiWBtSce
	eGmIvO3xhIHZ+oJcnTcYistyOGZvq7G9DMU4MovHn7kmiK06wgveaygY0vsWAdsW8NNmOhZDcAm
	BMuC8l5NDeccUOTRUg+etf8Xm0+hv3nO52ajE6EM9rv4LnoIwU+FeNx3AUzG/HAlrzvTlsEwD0P
	xxwE7XjL8wghE+Q4riDf0RMQIvY5j5UClRJE/KZfjCCoOpxE5FkbQD8HXcEjnH86QhJwNmwvJNT
	ZAv3osDseQ0/ByOzZ0ODrng2w=
X-Received: by 2002:a17:906:6a07:b0:c12:706f:c8ee with SMTP id a640c23a62f3a-c12a9d385e9mr217162766b.11.1782981966186;
        Thu, 02 Jul 2026 01:46:06 -0700 (PDT)
Received: from [192.168.0.101] ([109.76.47.17])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c12b62f6e3dsm89006666b.62.2026.07.02.01.46.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jul 2026 01:46:05 -0700 (PDT)
Message-ID: <3e2e6184-e020-49cc-9a4b-609c05aed846@linaro.org>
Date: Thu, 2 Jul 2026 09:46:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260523-x1e-csi2-phy-v8-0-a85668459521@linaro.org>
 <20260523-x1e-csi2-phy-v8-1-a85668459521@linaro.org>
 <rpnNMsR9GY8gbynzeBO8Zm61JAOq3ubt6sp0x3WDPPwkMAJzlcofECD1kabN-IUoK6sSwP5P6l28UIZLFCOpjQ==@protonmail.internalid>
 <dda32577-04e0-4507-acaf-a5694f4f31b3@linaro.org>
 <7c564df8-5c5a-4b43-806e-5e017e5c51db@kernel.org>
 <ae3a381b-5697-43ee-bdfd-aaf2d22ceedf@linaro.org>
 <6b6492a4-7610-4dce-a81c-8dc0387a4061@linaro.org>
 <1c583e24-09db-4d90-8f32-d3d3961188a0@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <1c583e24-09db-4d90-8f32-d3d3961188a0@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_014609_748709_00A307BF 
X-CRM114-Status: GOOD (  12.74  )
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

On 02/07/2026 09:31, Vladimir Zapolskiy wrote:
>>>> phy-cells = 1 with CPHY/DPHY specified in the consumer, as was Rob's
>>>> suggestion will specify the mode.
>>>
>>> This cell is just not needed, and unneeded complexity should not be 
>>> added.
>>
>> I'm going to stick to Rob's initial guidance on this.
>>
>> https://lore.kernel.org/linux-media/20250710230846.GA44483- 
>> robh@kernel.org/
>>
> 
> Sure, the discussion will be continued abouve v9 of the series, it's
> just a chance to do it now. Rob properly pointed out, that the invented
> "phy-type" is not needed at all.

I'll quote here

 >> +  phy-type:
 >> +    description: D-PHY or C-PHY mode
 >> +    enum: [ 10, 11 ]
 >> +    $ref: /schemas/types.yaml#/definitions/uint32

 > Perhaps putting this in phy cells would be better because the consumer
 > decides on the mode.

A clear instruction which I'm implementing.

> Ther fact is that the whole placement of the CSIPHY to phy subsystem
> looks execessive, since you add a driver for a media device, there will
> be nothing PHY driver specific left in the CSIPHY driver but name.
No, a block with its own pins, external voltage rails, even its own 
specific votes to scale individual clocks, is a distinct PHY.

There will be no further CSIPHY init sequences getting buried in CAMSS. 
It is well past time to dispense with the monolith.

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
