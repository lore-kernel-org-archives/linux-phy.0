Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8558C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 13 May 2022 10:33:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iVkkTZyafXSV9x0paIR0ti7tCplWACThgAhubToKdyA=; b=m+HNi0VhYRC2gt
	MbERbr4ln/RSJqpAACPI0UjYhYx2PRIIcUBkDdoHUow4xKHMVBABkQQ7mT4XjNXMTebNZoRLdLPqT
	7+V7Oz3oQAnCDI81jdFYcf6eT/YC7Dt//aG6ugDzMvkz6NEIB9fRK0Y0PDzIW182Ck/Fi5l75n+tN
	s1wHjMddg5RJYRDwy2lYSVcGW5ZKXkJgRN2bkxqHwnrihtAOdQ/+mnkkh8iu4p22zzq9lJaO5ck72
	M00NdC1d0M6Mk+9drTh0tJBJkDazlaNSMB5WZ7Ha/zAKh3XoXmgN8lyw7F9HmXooOAGFGrCCZbX90
	KZEderf2OQ/XtZikc17Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1npSbV-00FaHP-7u; Fri, 13 May 2022 10:33:01 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1npSbR-00FaEb-SB
 for linux-phy@lists.infradead.org; Fri, 13 May 2022 10:32:59 +0000
Received: by mail-ed1-x52f.google.com with SMTP id ba17so9458464edb.5
 for <linux-phy@lists.infradead.org>; Fri, 13 May 2022 03:32:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=O6FiHPs6TyRR3hcZC36X6uXYX5doF+6brHiz72Bmp3Y=;
 b=ESeWu6hBSMOQJBwvo98owd3dc9xTpa8qMO8//YKXHXjKIGYKVo1JsZBsr6njl8ehSu
 7E1K+hGXZtM2f9CE3cbGjof/WV4EeK9S3SwF2jFtH+1afXmrnnCG/m/TFRosldC1dzWE
 WedDyoMKeks19xDflSrq+4Lb4tbSwRJlFibN7/nxnKkcAJs/8FxuNqxnE4XRZU9pHnJ7
 JM4np+n5LBPtvfY53RW7yyQA3Hi75fahXxsFnjbTUtIIxFXYgF2S2PMu2mvZ8Ge0cXwj
 50/0sMzC+4ZHJQmdQHlZTZmbnp6vvML/MgMuPyLPXdtR6IwLZ8ydrhWtTncdxn5sLF0y
 a9sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=O6FiHPs6TyRR3hcZC36X6uXYX5doF+6brHiz72Bmp3Y=;
 b=kXfym5pTpW1k5hpWV1hpK4O7X+w5GIWicc3h6F/qUOMiZFVtJbIwbVcGcXogHLEoMO
 pfWJsRyQRpIN6nHNq8qFZlfXPu9OL2FpPTDbCpcPvauLdv4rxot0DutOlqOZHV/C4jsz
 2q37UHZdJCbjEG1k8ThndCgxszdDCk/Aw7rW4dO7M1lwuXM64YnH8IYDL5uAiQOSNDfP
 vcovVCsG8HzOImZPikNXt0dtpEVf2wvcT54LOgA1Gn66eOa5nqF/QAdCIR/ukIqT5Pt7
 uSLgnaJHh0C+edKMuYPagS4RjtskB6TEoACAwU2bD/bznWECEEeI46Cu9NDIbql1wqfB
 c1yw==
X-Gm-Message-State: AOAM533SCBaUN6cKnaCfB2ki/TAkPGYTBpd8+zNC3hD4kGlJ366KnVpr
 oxvx6oGdi152NlyYMDEiu1+v6w==
X-Google-Smtp-Source: ABdhPJxnxBRqoRRtonBw76pxckczcwui8tR3W20OfcDi/UUxotwJDJc16TYmbr5VAXgcERSaecmHyQ==
X-Received: by 2002:aa7:ca0d:0:b0:428:90ee:322c with SMTP id
 y13-20020aa7ca0d000000b0042890ee322cmr30383575eds.100.1652437973639; 
 Fri, 13 May 2022 03:32:53 -0700 (PDT)
Received: from [192.168.0.171] (xdsl-188-155-176-92.adslplus.ch.
 [188.155.176.92]) by smtp.gmail.com with ESMTPSA id
 gv2-20020a1709072bc200b006f3ef214df5sm636959ejc.91.2022.05.13.03.32.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 13 May 2022 03:32:53 -0700 (PDT)
Message-ID: <5f7dfcba-7e65-4f54-8699-e44ce11e216e@linaro.org>
Date: Fri, 13 May 2022 12:32:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [v4 1/3] dt-bindings: phy: qcom,usb-snps-femto-v2: Add phy
 override params bindings
Content-Language: en-US
To: Krishna Kurapati PSSNV <quic_kriskura@quicinc.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stephen Boyd <swboyd@chromium.org>, Doug Anderson <dianders@chromium.org>,
 Matthias Kaehlcke <mka@chromium.org>, Wesley Cheng
 <quic_wcheng@quicinc.com>, Vinod Koul <vkoul@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, quic_pkondeti@quicinc.com,
 quic_ppratap@quicinc.com, quic_vpulyala@quicinc.com,
 Sandeep Maheswaram <quic_c_sanm@quicinc.com>
References: <1652282793-5580-1-git-send-email-quic_kriskura@quicinc.com>
 <1652282793-5580-2-git-send-email-quic_kriskura@quicinc.com>
 <d296720d-ccbe-27f0-8ba1-9653af25dd52@linaro.org>
 <3abbb26f-9396-d024-67f6-f24f7db3408d@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <3abbb26f-9396-d024-67f6-f24f7db3408d@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220513_033258_014066_64834C7A 
X-CRM114-Status: GOOD (  22.53  )
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

On 13/05/2022 09:33, Krishna Kurapati PSSNV wrote:
> 
> On 5/11/2022 11:49 PM, Krzysztof Kozlowski wrote:
>> On 11/05/2022 17:26, Krishna Kurapati wrote:
>>> From: Sandeep Maheswaram <quic_c_sanm@quicinc.com>
>>>
>>> Add device tree bindings for SNPS phy tuning parameters.
>>>
>>> Signed-off-by: Sandeep Maheswaram <quic_c_sanm@quicinc.com>
>>> Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
>>> ---
>>>   .../bindings/phy/qcom,usb-snps-femto-v2.yaml       | 87 ++++++++++++++++++++++
>>>   1 file changed, 87 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
>>> index 1ce251d..70efffe 100644
>>> --- a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
>>> +++ b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
>>> @@ -53,6 +53,93 @@ properties:
>>>     vdda33-supply:
>>>       description: phandle to the regulator 3.3V supply node.
>>>   
>>> +  qcom,hs-disconnect-bps:
>>> +    $ref: /schemas/types.yaml#/definitions/int32
>>> +    description:
>>> +      This adjusts the voltage level for the threshold used to
>>> +      detect a disconnect event at the host. Possible values are.
>>> +      The values defined are in multiples of basis points (1bp = 0.01%).
>> This means there is some minimum and maximum (100%)?
>>
>>> +      The hardware accepts only discrete values. The value closest to the
>>> +      provided input will be chosen as the override value for this param.
>>> +
>>> +  qcom,squelch-detector-bps:
>>> +    $ref: /schemas/types.yaml#/definitions/int32
>>> +    description:
>>> +      This adjusts the voltage level for the threshold used to
>>> +      detect valid high-speed data.
>>> +      The values defined are in multiples of basis points (1bp = 0.01%).
>>> +      The hardware accepts only discrete values. The value closest to the
>>> +      provided input will be chosen as the override value for this param.
>>> +
>>> +  qcom,hs-amplitude-bps:
>>> +    $ref: /schemas/types.yaml#/definitions/int32
>>> +    description:
>>> +      This adjusts the high-speed DC level voltage.
>>> +      The values defined are in multiples of basis points (1bp = 0.01%).
>>> +      The hardware accepts only discrete values. The value closest to the
>>> +      provided input will be chosen as the override value for this param.
>>> +
>>> +  qcom,pre-emphasis-duration-bps:
>>> +    $ref: /schemas/types.yaml#/definitions/int32
>>> +    description:
>>> +      This signal controls the duration for which the
>>> +      HS pre-emphasis current is sourced onto DP<#> or DM<#>.
>>> +      The HS Transmitter pre-emphasis duration is defined in terms of
>>> +      unit amounts. One unit of pre-emphasis duration is approximately
>>> +      650 ps and is defined as 1X pre-emphasis duration.
>>> +      The values defined are in multiples of basis points (1bp = 0.01%).
>>> +      The hardware accepts only discrete values. The value closest to the
>>> +      provided input will be chosen as the override value for this param.
>>> +
>>> +  qcom,pre-emphasis-amplitude-bps:
>>> +    $ref: /schemas/types.yaml#/definitions/int32
>>> +    description:
>>> +      This signal controls the amount of current sourced to
>>> +      DP<#> and DM<#> after a J-to-K or K-to-J transition.
>>> +      The HS Transmitter pre-emphasis current is defined in terms of unit
>>> +      amounts. One unit amount is approximately 2 mA and is defined as
>>> +      1X pre-emphasis current.
>>> +      The values defined are in multiples of basis points (1bp = 0.01%).
>>> +      The hardware accepts only discrete values. The value closest to the
>>> +      provided input will be chosen as the override value for this param.
>>> +
>>> +  qcom,hs-rise-fall-time-bps:
>>> +    $ref: /schemas/types.yaml#/definitions/int32
>>> +    description:
>>> +      This adjusts the rise/fall times of the high-speed waveform.
>>> +      The values defined are in multiples of basis points (1bp = 0.01%).
>>> +      The hardware accepts only discrete values. The value closest to the
>>> +      provided input will be chosen as the override value for this param.
>>> +
>>> +  qcom,hs-crossover-voltage-mv:
>>> +    $ref: /schemas/types.yaml#/definitions/int32
>>> +    description:
>>> +      This adjusts the voltage at which the DP<#> and DM<#>
>>> +      signals cross while transmitting in HS mode.
>>> +      The values defined are in milli volts. The hardware accepts only
>>> +      discrete values. The value closest to the provided input will be
>>> +      chosen as the override value for this param.
>>> +
>>> +  qcom,hs-output-impedance-mohm:
>>> +    $ref: /schemas/types.yaml#/definitions/int32
>> Here and in other places, please use standard units. See
>> dtschema/schemas/property-units.yaml in dtschema repo.
>>
>>
>> Best regards,
>> Krzysztof
> 
> Hi Krzystof, thanks for the input.
> 
> I see there are microvolt and microohm units present in 
> schemas/property-units.yaml
> 
> Would it be possible to add bps (basis point) to the list of standard 
> units if it makes sense to use it ?

There is already 'percent' so 'bp' could be as well, makes sense to me.
I can send a patch for it and we'll see what Rob says.


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
