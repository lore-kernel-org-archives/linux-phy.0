Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6A79CD98CF
	for <linux-phy@archiver.kernel.org>; Tue, 16 Jun 2026 10:01:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bSjNOPIQolQEsyZGkuEsltjg9pfyZqDOT3uwWOCz0ms=; b=PKaSL19gswMDwN
	Vh5MC4ebPgFimV09jult49NDN1zvT45KjGLg2Ps9spcq8T2wL4FEvdHnkN48dD+CXYWJMt+5BTto8
	4o7Uke7dTyWlJexFQEQa19aDDc0JVXxNuBP+GNhKZIuJoEBiMV1o6itfRWxnrRXr90LsBrISFOLZZ
	c5qIgqcA6xoJL5dJuedv6FCNjq+DrOonfLk4Jo2XSs6qQNYWTZfrSR5u652lMomJ07rzBYgaz6yCU
	3A/D+nHMsX6/PM5Z7XKUjLzALf02SCYDWp4yqrVz6HmaH4EmZ2ms2+seD3hiCVyF0Z5pRzDnBpQve
	hC58o5T6EtYbBJ0Lv1aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZQc0-0000000FYx7-1Q60;
	Tue, 16 Jun 2026 10:01:40 +0000
Received: from mail-dy1-x1330.google.com ([2607:f8b0:4864:20::1330])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZQby-0000000FYvx-1Z5K
	for linux-phy@lists.infradead.org;
	Tue, 16 Jun 2026 10:01:39 +0000
Received: by mail-dy1-x1330.google.com with SMTP id 5a478bee46e88-30bb7d20ad9so365343eec.1
        for <linux-phy@lists.infradead.org>; Tue, 16 Jun 2026 03:01:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781604097; x=1782208897; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uBeImg1GeZ73aPo+Du634svjdTCaD/BADcPkIYViljc=;
        b=ly+Y+7emgKZZckT5F3CuvJQsv54TXjMXa9kPJnGbv5V1pj7ixigu5a0DN/n6UNK8+O
         oNgxVhYa+sbitr5SVl0sijn7cFJT8WxHXtNkNpxL+M1G/Vjuj7igl62L9Onh1kysu18y
         +faEki/FHyTI64HTEVui1UlYF4eZDcz4VOf8ENevpAYQTZPPy1pSCA717sxWbcegWc/h
         oJhzkzKyhEyT+6e/2HmbiddrsKlAEe5CMS9OSfIF61CktrDmeibDvIKjNiW5jlpNdzij
         8oI76n+Q07WqcGWMhaKcuTn4/Su3aI1xvUsTlNtZcxJYpY3LNlBxyoGLsWyDbxyHWbAK
         bi7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781604097; x=1782208897;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uBeImg1GeZ73aPo+Du634svjdTCaD/BADcPkIYViljc=;
        b=nEsoCKAI/33YHsJrF4SCuo8+CQK9yA3mO5mB63mEEz6eAcyj3bmnhRAyET1Y2MKnT8
         8ZdXMiWvRaq6CtANipWS3osyiP3VJeCX+FMcUuUA4PGP0W31qZzeb/1l+gWy18xuan/V
         1Zm0LZ/yjyKYI0eUtmyEfXvbiq9cYon4V9304TviePSbsal+SEM84uI2KEM4QS9wYbdv
         PSQ1ERP+Zh4KgGXGY5szySiJsWi9OAMhAsndQSC0A4d01ogoWL8uy44HdxS9vuqYiYwu
         1JqxlAsEUZHtW+xc9LgW65+kzcTJHy915Xf55EduHtAz+41BPbaAL0DftXG0nvT81Ajo
         3BHA==
X-Forwarded-Encrypted: i=1; AFNElJ8tE4jfJXPyRWtowIGWSFI8/iHlJwu/GVNsRdLIvgoc6X3aKpIq5f0q+mJc6jW8ryuha4o7MqL+0hc=@lists.infradead.org
X-Gm-Message-State: AOJu0YxShAAUtfhvk+4gzO5ZP8YwaAkHmhQsxFlT4tfkE7dMG6SvLnm3
	WKABtVCpHEMjBnGFFPghJZf9WrXttkqpcAQ9zUhLmQ+w4BCPS/dx+3J0
X-Gm-Gg: Acq92OHlCEAkzy4dBLkj0wu324D3uG4t4oy5yFJh7fEjnZH9D8VZS/Yb0YqFscZxuoc
	5NE0YRfdOLoYz9NAvX0y1okEm5uCHBvBxVdPbUxEYVEhdCLH4+4AZ0h1wEnSOhSG4aY6BWS9Hty
	yNP6q9bOL2A5SU1rJocIlK1GUlFyTulF1E5z382kgeuenY/wT1Kabiz1F89i7fM5nIewfLm4R6B
	tQP5XMMyqcNypvrxYuh/5c4ttJOHI2kY89vK5lPIjnSXExUZKvYoqrKv7GaQDyT2RGyRArX6D0r
	d7rD76tOeDipNwQb+DSPe5WRHLdFzlrABG9KbUGk5r4zUveAeiFBVjzkD5ZBJH4O+Qs+Vwsy1f/
	bP1rfd4pYxnMAatS9r3HVG+ypH2xKqxextEUYQeCbgVZjTFwiKu+O8vQ5HYNOU6BTuHy3V6+Euk
	2dAy4DIBl71Jl3TDJeof0jJjIjRSMbagw8vdrNPEXTM2a9Tt+FsHRBjTkEvrREBLlPnCKacRUBb
	iF/
X-Received: by 2002:a05:7300:6144:b0:307:e4fa:894b with SMTP id 5a478bee46e88-3093685d5b2mr8915809eec.8.1781604096865;
        Tue, 16 Jun 2026 03:01:36 -0700 (PDT)
Received: from [192.168.0.100] (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3081e5fefecsm18456036eec.13.2026.06.16.03.01.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Jun 2026 03:01:35 -0700 (PDT)
Message-ID: <07761947-12a2-4ee0-9fc2-60511c40398e@gmail.com>
Date: Tue, 16 Jun 2026 18:01:29 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: phy: nuvoton,ma35d1-usb2-phy: extend for
 dual-port OTG support
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Hui-Ping Chen <hpchen0nvt@gmail.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 devicetree@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org,
 Joey Lu <yclu4@nuvoton.com>, Jacky Huang <ychuang3@nuvoton.com>,
 Arnd Bergmann <arnd@arndb.de>, linux-phy@lists.infradead.org,
 Shan-Chun Hung <schung@nuvoton.com>
References: <20260615054911.48821-1-a0987203069@gmail.com>
 <20260615054911.48821-2-a0987203069@gmail.com>
 <178153082322.1456470.14205688450934768854.robh@kernel.org>
Content-Language: en-US
From: Joey Lu <a0987203069@gmail.com>
In-Reply-To: <178153082322.1456470.14205688450934768854.robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260616_030138_415102_D518A527 
X-CRM114-Status: GOOD (  19.40  )
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


On 6/15/2026 9:40 PM, Rob Herring (Arm) wrote:
> On Mon, 15 Jun 2026 13:49:09 +0800, Joey Lu wrote:
>> The MA35D1 has two USB PHY ports managed by the same hardware block:
>>
>>    - PHY0 (index 0): OTG port shared between the DWC2 gadget controller
>>      and EHCI0/OHCI0 host controllers.  A hardware mux follows the USB
>>      ID pin automatically.
>>
>>    - PHY1 (index 1): dedicated host-only port for EHCI1/OHCI1.
>>
>> Extend the existing binding to cover both ports:
>>
>>    - The PHY node is now a child of the system-management syscon node
>>      with a reg property.  The nuvoton,sys phandle and clocks
>>      properties are removed; the driver derives the regmap from its
>>      parent, and clock gating is owned by each individual USB controller.
>>
>>    - #phy-cells changes from 0 to 1: the cell selects the PHY port.
>>
>>    - Two optional board-tuning properties are added: nuvoton,rcalcode
>>      for per-port resistor trim and nuvoton,oc-active-high for
>>      over-current polarity.
>>
>> Signed-off-by: Joey Lu <a0987203069@gmail.com>
>> ---
>>   .../bindings/phy/nuvoton,ma35d1-usb2-phy.yaml | 62 ++++++++++++++-----
>>   1 file changed, 48 insertions(+), 14 deletions(-)
>>
> My bot found errors running 'make dt_binding_check' on your patch:
>
> yamllint warnings/errors:
>
> dtschema/dtc warnings/errors:
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/nuvoton,ma35d1-usb2-phy.example.dtb: system-management@40460000 (nuvoton,ma35d1-reset): '#address-cells', '#size-cells', 'usb-phy@60' do not match any of the regexes: '^pinctrl-[0-9]+$'
> 	from schema $id: http://devicetree.org/schemas/reset/nuvoton,ma35d1-reset.yaml
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/nuvoton,ma35d1-usb2-phy.example.dtb: system-management@40460000 (nuvoton,ma35d1-reset): compatible: ['nuvoton,ma35d1-reset', 'syscon', 'simple-mfd'] is too long
> 	from schema $id: http://devicetree.org/schemas/reset/nuvoton,ma35d1-reset.yaml
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/nuvoton,ma35d1-usb2-phy.example.dtb: system-management@40460000 (nuvoton,ma35d1-reset): reg: [[0, 1078329344], [0, 512]] is too long
> 	from schema $id: http://devicetree.org/schemas/reset/nuvoton,ma35d1-reset.yaml
>
> doc reference errors (make refcheckdocs):
>
> See https://patchwork.kernel.org/project/devicetree/patch/20260615054911.48821-2-a0987203069@gmail.com
>
> The base for the series is generally the latest rc1. A different dependency
> should be noted in *this* patch.
>
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
>
> pip3 install dtschema --upgrade
>
> Please check and re-submit after running the above command yourself. Note
> that DT_SCHEMA_FILES can be set to your schema file to speed up checking
> your schema. However, it must be unset to test all examples with your schema.
I will fix it.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
