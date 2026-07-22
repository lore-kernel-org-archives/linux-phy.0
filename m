Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69131C44539
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jul 2026 12:18:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tSQ7GAWoHfflNXzCePkObiYKMGa6Ujp8RqvS6baHqeI=; b=JAjaWb7RQUPLhC
	Guo4SB7bNDzEaNibZ309B0qWkETHL5IRZOagIQssrwX/QwmyFAfJOBKHF+bIQWCY5byeeKmVrd/vV
	4vDxjsspWdZPCsFj8WQUhFQrW77SIa3VPNpw2kxH1qu9J/jn5yztNT7mPlSEqi9SGOBv8h2XyaJvt
	jqDZpDHD8WG1tjJuWL9dGP/aiFOWSZCNhCbP0DsyVxjJ0qPZ//IGuZZx0TN0mVpCwxIdt7ZCJX+mQ
	9sl0SaaDAG8AZGgV4ppvwlvTKO+OsT7ivrjr6wQ+a34LHWBbXMWbvcyZtIqq+l0eNYwfkw/iYbUgJ
	Ph+PfAh8DlFrA0GqH8aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmVuN-0000000BjzC-0Ur1;
	Wed, 22 Jul 2026 12:18:43 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmVuM-0000000Bjyr-1HI0
	for linux-phy@lists.infradead.org;
	Wed, 22 Jul 2026 12:18:42 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id C5A6E418E7;
	Wed, 22 Jul 2026 12:18:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 351191F000E9;
	Wed, 22 Jul 2026 12:18:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784722721;
	bh=xLI4lCLCfkDsRDRM/t2AZm64Nb9IHEYBNsKZvpxftJc=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date;
	b=Xl8Z3Y1HZVFxw+SwHxEi89aSLlFHglWZklbE/1q5hVhklsPm2RYEAEI380wlRGHh0
	 LUmBjByNOBET8aE0Uk8+vXuFfyWRXksb9Uu9SSvbPbUYQ2uP0JadLv5+sFKQ7wEArb
	 McwtaXPIimflGjOSw2N5+vuMCKbYT75XZ/OS6Cl9d8ucYlP+bPZn5vx6NmTfc48Jib
	 N/IY5u4rYL34MfZLmralAhobU/vhzT/p9bpcojuGyV9OdOcyEGmKhIB/3L80o2gb9/
	 /Ex8AC59nlmYUm84A1FINfu8QadxuS9e1FwV/Vmt4BOgyqJ2WMI/7hxEiWvnVU3g2W
	 Cgpe2dxIKo/sQ==
From: Mattijs Korpershoek <mkorpershoek@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Maxime
 Ripard <mripard@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: qcom,sc8280xp-qmp-usb3-uni:
 Add SA8255P USB PHY
In-Reply-To: <20260711-infallible-mottled-waxbill-beae3c@quoll>
References: <20260709-phy-qcom-qmp-usb-8255-v2-0-3b6c26a45788@kernel.org>
 <20260709-phy-qcom-qmp-usb-8255-v2-1-3b6c26a45788@kernel.org>
 <20260711-infallible-mottled-waxbill-beae3c@quoll>
Date: Wed, 22 Jul 2026 14:18:39 +0200
Message-ID: <878q73i5eo.fsf@kernel.org>
MIME-Version: 1.0
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

Hi Krzysztof,

Thank you for the review.

On Sat, Jul 11, 2026 at 19:13, Krzysztof Kozlowski <krzk@kernel.org> wrote:

> On Thu, Jul 09, 2026 at 04:52:09PM +0200, Mattijs Korpershoek wrote:
>> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
>> index 01342823e57f..80b04b7f7584 100644
>> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
>> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
>> @@ -26,6 +26,7 @@ properties:
>>                - qcom,msm8996-qmp-usb3-phy
>>                - qcom,qcs8300-qmp-usb3-uni-phy
>>                - qcom,qdu1000-qmp-usb3-uni-phy
>> +              - qcom,sa8255p-qmp-usb3-uni-phy
>>                - qcom,sa8775p-qmp-usb3-uni-phy
>>                - qcom,sc8180x-qmp-usb3-uni-phy
>>                - qcom,sc8280xp-qmp-usb3-uni-phy
>> @@ -54,7 +55,13 @@ properties:
>>      maxItems: 5
>>  
>>    power-domains:
>> -    maxItems: 1
>> +    minItems: 1
>> +    maxItems: 2
>> +
>> +  power-domain-names:
>> +    items:
>> +      - const: usb_transfer
>> +      - const: usb_core
>
> usb_ feels redundant, since this is USB phy.

Ack, will drop for v3.

>
>>  
>>    resets:
>>      maxItems: 2
>> @@ -82,14 +89,6 @@ properties:
>>  required:
>>    - compatible
>>    - reg
>> -  - clocks
>> -  - clock-names
>> -  - resets
>> -  - reset-names
>> -  - vdda-phy-supply
>> -  - vdda-pll-supply
>> -  - "#clock-cells"
>> -  - clock-output-names
>>    - "#phy-cells"
>
> Just like in all other saXXXX cases, same review: move to a separate
> binding file.

Ack, I was not sure about this one. I'll move to a separate binding file
in v3.

>
> Best regards,
> Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
