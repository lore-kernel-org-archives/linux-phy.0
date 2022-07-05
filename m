Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E74E7C43334
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 10:23:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C+D3rhtZAJLsh9Gxppb5BudpknAjS5kGgTHtTes3kTM=; b=Hm2/MUNNvKMWcW
	cUToOKVqjB2JmZIowJIZUZPplDI36FaqNQmGnwe6T2x8lywa8ypAPmDwk2MYKtD5s7nSg15WvN9ct
	ko3trQ0Goi5JYRfKT4LVHf1Q+8FjdSK75b6mw3S9aKgBZD+u2loQP3RLMrNGtxEIyuDxFTNK9lwZJ
	6fl0EnYkZpGBRMU9HLGMZZnpZO37NDte0glB8s2Ar84xWBKTpEBGtzm6zEcOv3+FrqoUK6zbJogLj
	HKb8h0oWgQ5d+PTCj1h/T24yTSH+FqrPVD8Iwn1M8iCo7URWQfsYoFEw5kpibfc7ZWGQokF0VDn8h
	8bOEAnZPaPl1I9SPOhfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fi6-00H8jt-Bd; Tue, 05 Jul 2022 10:23:14 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fi3-00H8j9-9Q
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 10:23:12 +0000
Received: by mail-lj1-x22f.google.com with SMTP id j13so734440ljo.7
        for <linux-phy@lists.infradead.org>; Tue, 05 Jul 2022 03:23:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=hkwPfIALvdSAU2N+QXSkCqGtHG+6iyMXOJOvPCyiJGw=;
        b=DkaKRWBO09Bt2yF50Bv2PtP2qHgMg2KEOaGzBjYBoFxhX6fe2VO9yY9e34yUmIN/Ri
         oytrJjsQsF9fhlM5rYSX2RQyWNfu6uXCBCbsErDdTTpvJhgdmTFZ2rfRCw0nS+bS840S
         h2KMdRVwicolslBHijie/QN9nSpJ2L0+P/pMPiMkbh2xuilR8LLVAOWNGdrVqnF/bKyr
         IK1v7AzELoGJdsXlsMzH7e03vmBwkrmwfV/ZsH0I3AZRUbfLhFVxTVLhuhvkxm+aT+Jv
         pPQ8Lz/NSVpUeIU8iGxOpCD8onXdJoHKVcN6+JzHqcJ7hzGalSI28JF1L6YG9fGpdssg
         JSEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=hkwPfIALvdSAU2N+QXSkCqGtHG+6iyMXOJOvPCyiJGw=;
        b=qd/DTzTg4e7oQmaL2soSiQ3gdqo5nxQ7MBzIbEkl2FvNYcd9PaAvXdLBYFJbX50bGZ
         Z/lqsFiTJ6eF6A4FUhZiUVUtnpZ47bpDPgBkpDL+fsJo1KOpwEmwB1MyJB5TfLQ1sRs6
         ZV1mNrTWufVqpQNfZHRaBi86IY5XJXm0V0U87aZ++DbPn/DKTcAGXL0UoBlWfG48GPCQ
         AANs+qjAhSTWGv7t8QTitqPrBfxThkAEsFNe6FBano6Wk6S6b1Vxrf+ZTGXHQXYolJee
         aQiTBtJf1tkRa0TNArJy0AnSbwtQibHI138IG3ZAcsPJtsuZLl9/7TzbOrDyrjafbb7V
         gEyg==
X-Gm-Message-State: AJIora9XeYOtai7OGU3sX1gRO69W+WrVfSWhcDQrcrDXIp6DT5ih1Bkb
	mkkltDyHfp6QaOuzWpzkOu77TA==
X-Google-Smtp-Source: AGRyM1tK6aV4ED+ArkEi6a0TDdCwN3rOkmF5CvDjTenVKYf3MB0Hfzxm32KYRLOcIqfP845yDk0iEw==
X-Received: by 2002:a2e:9dcb:0:b0:25d:16eb:2671 with SMTP id x11-20020a2e9dcb000000b0025d16eb2671mr8829879ljj.46.1657016589353;
        Tue, 05 Jul 2022 03:23:09 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id 11-20020a05651c128b00b0025a725af81csm5479239ljc.39.2022.07.05.03.23.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 03:23:08 -0700 (PDT)
Message-ID: <1053b27f-37f8-a94d-2868-1e2b200d822a@linaro.org>
Date: Tue, 5 Jul 2022 12:23:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 06/43] dt-bindings: phy: qcom,qmp: split out
 msm8996-qmp-pcie-phy
Content-Language: en-US
To: Johan Hovold <johan@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220705094239.17174-1-johan+linaro@kernel.org>
 <20220705094239.17174-7-johan+linaro@kernel.org>
 <46b0cdab-aa94-7f55-5d9f-f79a644f0fec@linaro.org>
 <YsQQfwqmiQ7O3FdY@hovoldconsulting.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <YsQQfwqmiQ7O3FdY@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_032311_385085_172DB159 
X-CRM114-Status: GOOD (  21.83  )
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

On 05/07/2022 12:20, Johan Hovold wrote:
> On Tue, Jul 05, 2022 at 12:08:36PM +0200, Krzysztof Kozlowski wrote:
>> On 05/07/2022 11:42, Johan Hovold wrote:
>>> The QMP PHY DT schema is getting unwieldy. Break out the odd-bird
>>> msm8996-qmp-pcie-phy which is the only QMP PHY that uses separate
>>> "per-lane" nodes.
>>>
>>> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
>>> ---
>>>  .../phy/qcom,msm8996-qmp-pcie-phy.yaml        | 114 ++++++++++++++++++
>>>  .../devicetree/bindings/phy/qcom,qmp-phy.yaml |  32 -----
>>>  2 files changed, 114 insertions(+), 32 deletions(-)
>>>  create mode 100644 Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml
>>>
>>> diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml
>>> new file mode 100644
>>> index 000000000000..14fd86fd91ec
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml
>>> @@ -0,0 +1,114 @@
>>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>>> +
>>
>> No line break
>>
>>> +%YAML 1.2
>>> +---
>>> +$id: "http://devicetree.org/schemas/phy/qcom,msm8996-qmp-pcie-phy.yaml#"
>>> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
>>
>> Drop the quotes from two above.
> 
> This comes from the current binding. I can clean that one up first.

You now selectively copy pieces from old binding into new one. Copy
while correcting obvious issues.

> 
>>> +
>>> +title: Qualcomm QMP PHY controller (MSM8996 PCIe)
>>> +
>>> +maintainers:
>>> +  - Vinod Koul <vkoul@kernel.org>
>>> +
>>> +description:
>>> +  QMP PHY controller supports physical layer functionality for a number of
>>> +  controllers on Qualcomm chipsets, such as, PCIe, UFS, and USB.
>>> +
>>> +properties:
>>> +  compatible:
>>> +    const: qcom,msm8996-qmp-pcie-phy
>>> +
>>> +  reg:
>>> +    minItems: 1
>>> +    items:
>>> +      - description: Address and length of PHY's common serdes block.
>>> +      - description: Address and length of PHY's DP_COM control block.
>>
>> Are two reg items applicable here?
> 
> No, but see below.
> 
>>> +
>>> +  "#address-cells":
>>> +    enum: [ 1, 2 ]
>>> +
>>> +  "#size-cells":
>>> +    enum: [ 1, 2 ]
>>> +
>>> +  ranges: true
>>> +
>>> +  clocks:
>>> +    minItems: 1
>>> +    maxItems: 4
>>
>> Define clocks here, not in allOf:if:then.
> 
> To remain sane, and to help reviewers, I decided not to do changes to
> the binding while splitting it up which would only make them harder
> to review.
> 
> Hence the split followed by cleanup/tightening of constraints.

It's confusing. I look at this commit and it is not correct. How do I
know that next commits will correct it? I responded in further patches
that most of them they should be squashed with this copy.

> 
>> How about an example?
> 
> That's also a new addition to the binding and goes in a later separate
> patch.
> 



Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
