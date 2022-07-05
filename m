Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7BC1DC433EF
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 11:56:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3cHpurhTs62jr2rcnz+6HFrv4l9lmd7gpwFIAwoeL9Y=; b=H7RaH+nyBT8zmg
	ptyHOrAmaQOx7oocPPJqdahVJydTU4pLUY2f99EzlGtnD8HyHSHNDw4ywe2qmf1xilB8DxASZmCgn
	hw9YdPikiruGLNv/EcvXGfRXVUVF+mAz+AusanEUfBuCR4XNA9kmkP9E2lF7YZX+jtIc2rTkZkGK6
	yp7Vfijk6O+oNJ01kNXxCsH4x77tGHRHhnR9Yl3KABHsDc5DyRr7N+fcdu1UWjYHrLG/Q5gkNjzqZ
	cuBRzrUDHGY0ckIDz8qogdl1jTgQSpM5/oBU+z2tGaeFwBBLaskB0ntlchLn4hrb9Os/9+nUtpKig
	S2NxE7qpA8eaiskCvmsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8hAW-00HYkB-RY; Tue, 05 Jul 2022 11:56:40 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8hAT-00HYh9-Dc
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 11:56:38 +0000
Received: by mail-lj1-x22f.google.com with SMTP id i17so9432302ljj.12
        for <linux-phy@lists.infradead.org>; Tue, 05 Jul 2022 04:56:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=Vsyz7Rlb53JTlbHvnnvdRFpkzvwYidG5knYyvTWU2J4=;
        b=J6Xn7PwhlmRL7Kr9Bf4WitjD0eaEp+S7R2w8kXZs6D9tSVlKBV8mGj12PFb/afjI7P
         JgcoIl3VgyhipdKeKvV1sIo5+Dks/B7z9qOLzwx7uFR0wEO04pZ53kK/hBAt4XGI6hME
         sMojGdcXlpLpIJ1OXj8XizfCfLxDv8ALSt4PfnGQOdCVRfoOcV1ThEpIx/Bs/7eTPbBY
         XpRIam2VUHXzNalRQvG3bOfx/+Im167jX2UDMIX1gFPSwtBIKB8IuZ4cG+KIA+jP6I4z
         BJ/M93qt1RiKaeG9C5vbSkTqiT/cguYMKFMl5q0AWvaWvhLpGOgEm1r24VnOzX9DNK1l
         3gdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Vsyz7Rlb53JTlbHvnnvdRFpkzvwYidG5knYyvTWU2J4=;
        b=z2K4X58MkcJ2IVlmv+rkwuA082lmUy0GC51ofrlvgR95N6NYaQwTwyZbTej0JMklBK
         AWWNCYRUs3qMKz3yyzxE1buERtR6B+o70YYvapkkCIpU06m3lF4oXBaFRCD5hv7MQGIz
         pg6K9GYpAWa3nyc/G2CNOuvpmFrvQ4BHQtbomMjkAdp+6Mvkjr7LNoe77RwhZjpeqGyV
         yTbJQS4F28evEExE5CbeFEj/4NYzW0MEMP+5sFkJX/xvIXLiwMa5t9ebDyKZMtevV1uB
         +ZTr9GPDOnPfG5oKfJqt0wfd2ct9vqZe0D8tDOf3GSyfJG/0L4jzJfsKErakj2i1Wzc2
         Uy9w==
X-Gm-Message-State: AJIora+QKUoxBQN9/2on9Oj6hAWPt86IOaY6o9G6NTVhJy7xzGrn5lyX
	LNvUhAiGZi4JIOoUyd+uKBesaQ==
X-Google-Smtp-Source: AGRyM1s8dtYMfQ0WmJojokE+mPEUDR+r4cp5dqxRDFw4fkhs4A6Iya7P4qMDZAfLM9Dp/WYdyBx2Ug==
X-Received: by 2002:a2e:90f:0:b0:25d:309e:422f with SMTP id 15-20020a2e090f000000b0025d309e422fmr2096329ljj.179.1657022193599;
        Tue, 05 Jul 2022 04:56:33 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id w16-20020a05651234d000b004815305854bsm2768554lfr.61.2022.07.05.04.56.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 04:56:33 -0700 (PDT)
Message-ID: <963917cf-0f9d-600f-564e-9e687270b1af@linaro.org>
Date: Tue, 5 Jul 2022 13:56:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 17/43] dt-bindings: phy: qcom,qmp-pcie: add missing child
 node schema
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
 <20220705094239.17174-18-johan+linaro@kernel.org>
 <4bc79a1c-66b1-225d-5026-ddf3e6f7d22c@linaro.org>
 <YsQlzr6nyvz761Kz@hovoldconsulting.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <YsQlzr6nyvz761Kz@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_045637_511655_CBEB9488 
X-CRM114-Status: GOOD (  15.56  )
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

On 05/07/2022 13:51, Johan Hovold wrote:
> On Tue, Jul 05, 2022 at 12:18:37PM +0200, Krzysztof Kozlowski wrote:
>> On 05/07/2022 11:42, Johan Hovold wrote:
>>> Add the missing the description of the PHY-provider child node which was
>>> ignored when converting to DT schema.
>>>
>>> Also fix up the incorrect description that claimed that one child node
>>> per lane was required.
>>>
>>> Fixes: ccf51c1cedfd ("dt-bindings: phy: qcom,qmp: Convert QMP PHY bindings to yaml")
>>> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
>>> ---
>>>  .../bindings/phy/qcom,qmp-pcie-phy.yaml       | 88 ++++++++++++++++++-
>>>  1 file changed, 85 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
>>> index ff1577f68a00..5a1ebf874559 100644
>>> --- a/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
>>> +++ b/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
>>> @@ -69,9 +69,37 @@ properties:
> 
>>> +  - if:
>>> +      properties:
>>> +        compatible:
>>> +          contains:
>>> +            enum:
>>> +              - qcom,sm8250-qmp-gen3x2-pcie-phy
>>> +              - qcom,sm8250-qmp-modem-pcie-phy
>>> +              - qcom,sm8450-qmp-gen4x2-pcie-phy
>>> +    then:
>>> +      patternProperties:
>>> +        "^phy@[0-9a-f]+$":
>>> +          properties:
>>> +            reg:
>>> +              items:
>>> +                - description: TX lane 1
>>> +                - description: RX lane 1
>>> +                - description: PCS
>>> +                - description: TX lane 2
>>> +                - description: RX lane 2
>>> +                - description: PCS_MISC
>>> +    else:
>>> +      patternProperties:
>>> +        "^phy@[0-9a-f]+$":
>>> +          properties:
>>> +            reg:
>>> +              minItems: 3
>>> +              maxItems: 4
>>> +              items:
>>> +                - description: TX
>>> +                - description: RX
>>> +                - description: PCS
>>> +                - description: PCS_MISC
>>> +      if:
>>
>> Do not include if within other if. Just split the entire section to its
>> own if:.
> 
> That sounds like it would just obfuscate the logic. The else clause
> specified 3-4 registers and the nested if determines which compatibles
> use which by further narrowing the range.
> 
> If you move it out to the else: this would be really hard understand and
> verify.

Every bindings are expected to do that way and most of them are doing
it: define broad constraints in properties:, then define strict
constraints per each variant. Easy to follow code. This binding is not
particularly special to make it different than other ones. Doing
semi-strict constraints in if: and then additional constrain in nested
if: is not easy to understand and verify.


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
