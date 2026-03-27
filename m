Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B40EB10AB830
	for <linux-phy@archiver.kernel.org>; Fri, 27 Mar 2026 14:24:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:
	Subject:Cc:To:From:Date:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UXvTRBxaIhqN89lxBZuq9ghf30Kc43YvYP+qGh/YEr4=; b=pcTuv3/oU6gMn1
	jF1Bi58BbCTHmwcegs0+vEN2VFKUmTueGzwLbwYxdv9NbXlJAl27jtxHs1cbBQis8MNCA+EI2Ww+R
	vQA7PogcUpcS+LE91CmIjKEPh4kFKJQmnc1zb+azbwsn7i4zJa7O8OV6gseo9NgIkpwT7mzXaCOi0
	+DVSB2OBBDgun6IDZczFH7AXVzQ+JEpd1MZMvtr5iMDw/f1Lotk4+lr0uWf1zfRLNKcXq6VUyBVIU
	/wjeEwVMtZO3y16MZvjzQeIoar059ucpjJCmDxVlwfMfWeVeX1hl8i5ZWCDjlaLWTXnOOGBRj4CKE
	kZGA9pw+bIf9BpsW2uzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w686m-00000007bkG-20iF;
	Fri, 27 Mar 2026 14:24:20 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w686j-00000007bjL-1AHP
	for linux-phy@lists.infradead.org;
	Fri, 27 Mar 2026 14:24:19 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id E176226471;
	Fri, 27 Mar 2026 15:24:13 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RemHeoGUlZbQ; Fri, 27 Mar 2026 15:24:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1774621453; bh=B4keCgz4A2l6iRmTPeNPl7YLtpj6kCreS+MjycvwNVU=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=Q6242UEdYnGkMITmednJtWnN7W73/kQKymKpelhsH9b+JswZN6G8HvXM0vk13TfJ1
	 y2uPUww4e6BIIDOolFNxJh+LXQdgSg3XZ7a//HT6F44xjFtYI5uc+BLH6Gky7WwfEA
	 tZdFFCKkkC9pXc4WteNkDoD7UGEn+vt7OA0OwEvWoXdoe4+Kz4BUeMEJOzYT37LVEK
	 YYnesd5LUWNPEK8C3buOHYY0zxzGZOU7EHFOVfc6TfNbFRO0Qn5urqZUtERPLXQiyr
	 vbffMLITtH/1fbdqe/iBvuENcTCkFPyPIbnFUopTqNMtmf0GUFei2Qq+ftTkJsPP1r
	 8JoYLSEqR5Umg==
MIME-Version: 1.0
Date: Fri, 27 Mar 2026 14:24:13 +0000
From: Rustam Adilov <adilov@disroot.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Stanley
 Chang <stanley_chang@realtek.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/6] dt-bindings: phy: realtek,usb2phy.yaml: extend for
 resets and RTL9607C support
In-Reply-To: <20260327-berserk-roaring-quetzal-24dd7e@quoll>
References: <20260326193419.48419-1-adilov@disroot.org>
 <20260326193419.48419-4-adilov@disroot.org>
 <20260327-berserk-roaring-quetzal-24dd7e@quoll>
Message-ID: <7fd85481d499b86a26410d5b90f7041b@disroot.org>
X-Sender: adilov@disroot.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260327_072417_784488_620B07ED 
X-CRM114-Status: GOOD (  11.94  )
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

On 2026-03-27 08:28, Krzysztof Kozlowski wrote:
> On Fri, Mar 27, 2026 at 12:34:16AM +0500, Rustam Adilov wrote:
>>  description: |
>> -  Realtek USB 2.0 PHY support the digital home center (DHC) RTD series SoCs.
>> +  Realtek USB 2.0 PHY support the digital home center (DHC) RTD and
>> +  RTL9607C series SoCs.
>>    The USB 2.0 PHY driver is designed to support the XHCI controller. The SoCs
>>    support multiple XHCI controllers. One PHY device node maps to one XHCI
>>    controller.
>> +  This driver also supports the OCHI and EHCI controllers.
> 
> Hardware is fixed, does not change. Don't reference your driver changes
> here.

Will remove this line.
>>  
>>    RTD1295/RTD1619 SoCs USB
>>    The USB architecture includes three XHCI controllers.
>> @@ -57,6 +59,12 @@ description: |
>>    XHCI controller#1 -- usb2phy -- phy#0
>>    XHCI controller#2 -- usb2phy -- phy#0
>>  
>> +  RTL9607C SoCs USB
>> +  The USB architecture includes OHCI and EHCI controllers.
>> +  Both of them map to one USB2.0 PHY.
>> +  OHCI controller#0 -- usb2phy -- phy#0
>> +  EHCI controller#0 -- usb2phy -- phy#0
>> +
>>  properties:
>>    compatible:
>>      enum:
>> @@ -69,6 +77,7 @@ properties:
>>        - realtek,rtd1395-usb2phy-2port
>>        - realtek,rtd1619-usb2phy
>>        - realtek,rtd1619b-usb2phy
>> +      - realtek,rtl9607-usb2phy
>>  
>>    reg:
>>      items:
>> @@ -130,6 +139,9 @@ properties:
>>      minimum: -8
>>      maximum: 8
>>  
>> +  resets:
>> +    maxItems: 1
>> +
>>  required:
>>    - compatible
>>    - reg
>> @@ -157,6 +169,15 @@ allOf:
>>      then:
>>        properties:
>>          realtek,driving-level-compensate: false
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - realtek,rtl9607-usb2phy
>> +    then:
>> +      required:
>> +        - resets
> 
> If it is unclear, they might not have it so,
> 
> else: ... :false

Right, i suppose if RTD SoCs had them they would have been added here already so..
will make the resets false for other devices

> see example-schema.
> 
> Best regards,
> Krzysztof

Thanks,
Rustam

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
