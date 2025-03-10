Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C7CCC28B2E
	for <linux-phy@archiver.kernel.org>; Mon, 10 Mar 2025 11:54:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OUe2yB2xJF/JBo/o3+kJH6uWszc/tUiSDutDPu2T1hc=; b=kYPjklhsEykXKG
	YSseuYIdwZa7uRLQ/reXXHKF9GgkdAe50Rmy0BXKcbdr2g3tbgEt/7VbpGFdhJ5aRW1dXWUluHGVW
	G4X+wHjjoiVLf2JM+X3LM9FvEmdbN7WLrPo1DXXb99a6quALsV8ezPBUqqPW/phKE04VyeF0dUdkA
	dERs7BpevJLu6qmzOo7H8AcvVkP8x8L8k6NRPe4VRgc6h1y2Bkuo8dO8kdBk8ZJbtGcZUiN3BwHrx
	Bx/2fwjbE+X1Jhe06QlDu7vTyzxbbu1daK5i8fZh89F7qnIv3uiEGJ8PEcfW8TlVTgs/3ScwAYL++
	FymBtsneji5R22Yqe3dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trbiG-00000002UQi-3iaR;
	Mon, 10 Mar 2025 11:54:28 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trbRw-00000002SGq-0aP1
	for linux-phy@lists.infradead.org;
	Mon, 10 Mar 2025 11:37:37 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-43cee550af2so881965e9.1
        for <linux-phy@lists.infradead.org>; Mon, 10 Mar 2025 04:37:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741606654; x=1742211454; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=gGfOrW92/g9FWKX8O8L7LMakAWexPAiIdn5s8oGVVyY=;
        b=XeGzb2CSdkXKk95Su6nknz2sXYtzipkrx+1CSiQwPfFGUjKc9XRH0clmXRB1ups/rn
         5UB5PFIVV1mEJbGfecXOZOgaIiE27akuCvxVqHndKMs+H6dkBhh7jESL1zgm/IN5xvqC
         4DLy8PPOwEfJdxgrE4SbKPt0mwoJyLFmp82WtULGU5zlBjb5ohrwrOBfBCCjwwonpVVq
         FP4Ym25+bO2WCdrDpw62xWfBOvvHanaoIiFzQPN9A0oQvhgNF8ZKoV2ST4wLP0h6++Ka
         uhn4S8dwlMf/WIc44RyLKJC+ws6tlo4iXt1M0eh4Z9HnQAq/Qhz1CduYv46JQBoz+jDp
         W9vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741606654; x=1742211454;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gGfOrW92/g9FWKX8O8L7LMakAWexPAiIdn5s8oGVVyY=;
        b=d0kl8U2Ls5dcOLRyCzrc2fAtDylYEEXhbvSUIGHvvyFGoqPZ7lzJjNgspGIwBD79yb
         CJLNSkB1DuQF8EBhjzBzK9B8Bmh6GevzljXkAwre/RLXrEsWGyDDRgWou0z6L2+YV5Bg
         TDmEoGGtrFjR9i+7os3hu7HjJRFw/XvRKm1lP+R11sw58vWcINo6rP2MC6yZGnSNaxYo
         jl8qOzyE/LCfDOSVYNAh2awwM95VrYQTgbMeclytUdTRsUxmv09jILVs3toyxnN6uJHc
         ef8hMqA06U3Wk50UJKyadG6Ti8L7R9Qy985kJe9NNWxQfgKymkjKRK1aTcWt2AA8Xkxw
         tRyg==
X-Forwarded-Encrypted: i=1; AJvYcCWKfglH0mP1ggYDoHAnV1wsQGPDl9GwyC6egWYjssSAeSJ/uv9Wh94N6H+KOZzx6Klwjq/Kzm4fhPI=@lists.infradead.org
X-Gm-Message-State: AOJu0YxwggXt4sc64TRf42G9FsFZjOAYt6ljrgFjiuGAesDZmSpdCp2i
	7bhglGpI4RgtvlyxNbLVNr9FFC+SJLFmrU2vsh4mpxjbSEpAozxMWrk+P+NfG0M=
X-Gm-Gg: ASbGncs/OJg+Br1YqT3E9EKiR+KvL88WY6dNKEcOKtxDWVseGgvsco8SKS9klKivmu6
	dth1nIGSYAGe2XZlL3aXxTZNiN5r7gNE0X8gWDLx/f+zdf/L/Q5UnUS7WquiACX9LADX1db3Wfo
	Ajo7JUzZuvuU6WNYYopkOzKmxy6N0OMyRaaIGgGPVCz70dzgjQv3Y5fUHN1zXm2FtNHRl0ICjuO
	SsagaFFBpQwOJ/16VyEzsXO2VlFNj0kN2lU1Ey2GAIqUMTBPw60YdKQDgoWKJCfQ60qdW1Dyanu
	Fr5pdjxqamRaZsOhN2YxvwgN5mipv4LNLK+a5rTpGuQ5brpkcy3SwccBYXIRtDSQ
X-Google-Smtp-Source: AGHT+IG00xtqbS1VwoAxwSFH6756q5uvepy5sz2gF9TEqzOa+dNzzqxywHau5PaKvFx1OQWUzkyGrA==
X-Received: by 2002:a05:600c:1e1e:b0:439:9dec:b794 with SMTP id 5b1f17b1804b1-43ce6b12a2amr20146065e9.1.1741606654399;
        Mon, 10 Mar 2025 04:37:34 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.206.225])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43cf86b1d80sm32020725e9.9.2025.03.10.04.37.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Mar 2025 04:37:32 -0700 (PDT)
Message-ID: <84456c70-e933-469f-ac7a-7d899f85e777@linaro.org>
Date: Mon, 10 Mar 2025 12:37:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 3/7] dt-bindings: PCI: qcom: Use sdx55 reg description
 for ipq9574
To: Varadarajan Narayanan <quic_varada@quicinc.com>,
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com,
 manivannan.sadhasivam@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org,
 andersson@kernel.org, konradybcio@kernel.org, p.zabel@pengutronix.de,
 quic_nsekar@quicinc.com, dmitry.baryshkov@linaro.org,
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20250220094251.230936-1-quic_varada@quicinc.com>
 <20250220094251.230936-4-quic_varada@quicinc.com>
 <41b400fe-5e08-42c0-9bc6-a238d25d155a@kernel.org>
 <33bb1cb2-0c5e-402b-a5c6-9604b1dd8d99@kernel.org>
 <Z86YReHsKeF165F6@hu-varada-blr.qualcomm.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <Z86YReHsKeF165F6@hu-varada-blr.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250310_043736_194684_DC85087D 
X-CRM114-Status: GOOD (  24.12  )
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

On 10/03/2025 08:44, Varadarajan Narayanan wrote:
> On Thu, Mar 06, 2025 at 01:06:13PM +0100, Krzysztof Kozlowski wrote:
>> On 06/03/2025 12:52, Krzysztof Kozlowski wrote:
>>> On 20/02/2025 10:42, Varadarajan Narayanan wrote:
>>>> All DT entries except "reg" is similar between ipq5332 and ipq9574. ipq9574
>>>> has 5 registers while ipq5332 has 6. MHI is the additional (i.e. sixth
>>>> entry). Since this matches with the sdx55's "reg" definition which allows
>>>> for 5 or 6 registers, combine ipq9574 with sdx55.
>>>>
>>>> This change is to prepare ipq9574 to be used as ipq5332's fallback
>>>> compatible.
>>>>
>>>> Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
>>>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>>
>>> Unreviewed.
>>>
>>>> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
>>>> ---
>>>> v8: Add 'Reviewed-by: Krzysztof Kozlowski'
>>>> ---
>>>>  Documentation/devicetree/bindings/pci/qcom,pcie.yaml | 2 +-
>>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
>>>> index 7235d6554cfb..4b4927178abc 100644
>>>> --- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
>>>> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
>>>> @@ -169,7 +169,6 @@ allOf:
>>>>              enum:
>>>>                - qcom,pcie-ipq6018
>>>>                - qcom,pcie-ipq8074-gen3
>>>> -              - qcom,pcie-ipq9574
>>>
>>> Why you did not explain that you are going to affect users of DTS?
>>>
>>> NAK
> 
> Sorry for not explicitly calling this out. I thought that would be seen from the
> following DTS related patches.
> 
>> I did not connect the dots, but I pointed out that you break users and
>> your DTS is wrong:
>> https://lore.kernel.org/all/f7551daa-cce5-47b3-873f-21b9c5026ed2@kernel.org/
>>
>> so you should come back with questions to clarify what to do, not keep
>> pushing this incorrect patchset.
>>
>> My bad, I should really have zero trust.
> 
> It looks like it is not possible to have ipq9574 as fallback (for ipq5332)
> without making changes to ipq9574 since the "reg" constraint is different
> between the two. And this in turn would break the ABI w.r.t. ipq9574.

I don't get why this is not possible. You have one list for ipq9574 and
existing compatible devices, and you add second list for new device.

... or you just keep existing order. Why you need to keep changing order
every time you add new device?


> 
> To overcome this, two approaches seem to be availabe
> 
> 	1. Document that ipq9574 is impacted and rework these patches to
> 	   minimize the impact as much as possible

What impact? What is the reason to impact ipq9574? What is the actual issue?

> 
> 		(or)
> 
> 	2. Handle ipq5332 as a separate compatible (without fallback) and reuse
> 	   the constraints of sdx55 for "reg" and ipq9574 for the others (like
> 	   clock etc.). This approach will also have to revert [1], as it
> 	   assumes ipq9574 as fallback.
> 
> Please advice which of the above would be appropriate. If there is a better 3rd
> alternative please let me know, will align with that approach.

Keep existing order. Why every time we see new device, it comes up with
a different order?

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
