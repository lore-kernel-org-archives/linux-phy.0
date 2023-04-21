Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7945C7618E
	for <linux-phy@archiver.kernel.org>; Fri, 21 Apr 2023 14:20:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3EamkW7w1ncOxeSLXhxVXwu7yYOgy2xjVIjQww19AAw=; b=L+598jHFJ4ENkw
	O6QqCo7PcPi76qah5NsHJChCFBHKcwUWEMa9NQ9TjQseOi13eP7CsuAswIaY/2ia6RQfCMyp6gp8M
	mOOiCPvFgS3y4QZRPY9aDPGQgl+LIzkLGLvxYVdQ4KqQ9/dHbRicVfeRRQyiugTwW1TgnyS7uYFLi
	QuIrQMnqsIS22x0snSQzRfPnavU0M9ecEPxPKPy43E4PHGrFu2piklRnLuaGI4rDrZpCmt3pBvs+x
	ojtF21LI+owrpxvV6csrkMQoBbL8+oFMJUM2CT9EJG30Efrtu7hAkh0rw8NcDjh9XSpYzpoZYEAWO
	xboveW3GcZUZn2QjANZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pprcM-00B5PM-2o;
	Fri, 21 Apr 2023 14:20:06 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pprcJ-00B5Og-2I
	for linux-phy@lists.infradead.org;
	Fri, 21 Apr 2023 14:20:05 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-4eca0563b31so1753547e87.1
        for <linux-phy@lists.infradead.org>; Fri, 21 Apr 2023 07:20:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682086800; x=1684678800;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yK3yIe9a1wbBKj0KZBkdEoQSsxDKw5meLrRh6nS/NAs=;
        b=HNYSW9WtRin1UpYDmy5oqGTtPdRzatgSNcyZxKuAWL2njrWAmsO23bnSw/FaV5FsTk
         3NaGs3ayknlAPebHS811STIn/tK01k7aVJddOrK/tE7mFCHeRhw3DWgQizrqy6YbHKFn
         awnt9C3M3RAYwuQs6+fVDrW8uG1bcPKDEpRuCsqSt0Ei+RdxYa8T2YvxEH+bZxeWe8J7
         SsZ7Dck9wf5ax5MSLqxBXeuSKSSPTxhp4UchJ/B4CLrX8WJiLWSG8mrj2aa4rU1t5TNS
         ubMafmsHzR1v7NzXeHnXhbFNyBhH9vrTPdaGMnzaVXPPZ1NJFjuMnPKYB0UMca/j1cis
         TnNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682086800; x=1684678800;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yK3yIe9a1wbBKj0KZBkdEoQSsxDKw5meLrRh6nS/NAs=;
        b=HjxtXgnEkW7aIkwWs7iHF72A2q5BDn6rRYnNN3Cy8CSzJTw7Tf3g0puLyRY5tMTWQt
         jmKFTw8Bpj9pITYU5XEM30xJq+DAMuWNCd3XMyUvPlkMTrSvo/1QKoIUDN26rlxVIPwG
         r6wt0N6tMelciChjm0VTSzfzes1qYmDap3vZtyyu5dbSN9IlNBq7RQu/DUb148DglmK9
         DYy223oeQG2pPcnGuSwbhO3vUBof87LPmfj0S4TNZv4EnFD+4x+tJacxjPqVQYG2n0+l
         u+bn8mfyH5l/cZXH+iCUAJhlewOhW+25b2GU6HI3PezbUJIpZkypx5ppNALzQnJ4CXfq
         EIEg==
X-Gm-Message-State: AAQBX9d4kzNL9XMA2YU1VrG0DCQ4SwtoI0RcNQOhg23iOL9lxp6b/nSN
	MFqcZ3D5eQV9kq3Gr/CoRSVk0Q==
X-Google-Smtp-Source: AKy350Z3MlSM4frPMB2jDj6hRgEKBnQ0rSplMEGlIjVYqo2u0QTPdtI8l9nJrdrQA3sqCVG865KqkQ==
X-Received: by 2002:ac2:47eb:0:b0:4eb:43f5:73a1 with SMTP id b11-20020ac247eb000000b004eb43f573a1mr1423815lfp.44.1682086799707;
        Fri, 21 Apr 2023 07:19:59 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id m15-20020a056512014f00b004e7fa99f2b5sm574358lfo.186.2023.04.21.07.19.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Apr 2023 07:19:59 -0700 (PDT)
Message-ID: <6750910d-22a0-7bed-f163-db57424133c6@linaro.org>
Date: Fri, 21 Apr 2023 17:19:58 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v8 2/8] dt-bindings: phy: qcom,qmp-usb: Add IPQ9574 USB3
 PHY
Content-Language: en-GB
To: Varadarajan Narayanan <quic_varada@quicinc.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
 vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, gregkh@linuxfoundation.org,
 mturquette@baylibre.com, sboyd@kernel.org, quic_wcheng@quicinc.com,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-clk@vger.kernel.org
References: <cover.1680693149.git.quic_varada@quicinc.com>
 <1efa9a64499767d939efadd0aef897ac4a6e54eb.1680693149.git.quic_varada@quicinc.com>
 <b9763bee-c0c8-86be-14de-2ed077b1f1d5@linaro.org>
 <20230421101345.GB5813@varda-linux.qualcomm.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230421101345.GB5813@varda-linux.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230421_072003_771569_ED9D0AE2 
X-CRM114-Status: GOOD (  13.89  )
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

On 21/04/2023 13:13, Varadarajan Narayanan wrote:
> On Thu, Apr 06, 2023 at 09:42:31AM +0200, Krzysztof Kozlowski wrote:
>> On 05/04/2023 13:41, Varadarajan Narayanan wrote:
>>> Add dt-bindings for USB3 PHY found on Qualcomm IPQ9574
>>>
>>> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
>>> ---
>>>   Changes in v8:
>>> 	- Update clock names for ipq9574
>>>
>>>   Changes in v6:
>>> 	- Made power-domains optional
>>>
>>> Note: In the earlier patch sets, had used the (legacy)
>>> specification available in qcom,msm8996-qmp-usb3-phy.yaml. Moved
>>> to newer specification in qcom,sc8280xp-qmp-usb3-uni-phy.yaml
>>> ---
>>>   .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml        | 43 +++++++++++++++++++---
>>>   1 file changed, 37 insertions(+), 6 deletions(-)
>>>
>>> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
>>> index 16fce10..e902a0d 100644
>>> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
>>> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
>>> @@ -16,6 +16,7 @@ description:
>>>   properties:
>>>     compatible:
>>>       enum:
>>> +      - qcom,ipq9574-qmp-usb3-phy
>>>         - qcom,sc8280xp-qmp-usb3-uni-phy
>>>
>>>     reg:
>>> @@ -25,11 +26,7 @@ properties:
>>>       maxItems: 4
>>>
>>>     clock-names:
>>> -    items:
>>> -      - const: aux
>>> -      - const: ref
>>> -      - const: com_aux
>>> -      - const: pipe
>>> +    maxItems: 4
>>>
>>>     power-domains:
>>>       maxItems: 1
>>> @@ -60,7 +57,6 @@ required:
>>>     - reg
>>>     - clocks
>>>     - clock-names
>>> -  - power-domains
>>
>> Power domains are required. Commit msg does not explain why this should
>> be now optional.
> 
> Since IPQ9574 doesn't have power switches couldn't provide power-domains details.
> So, had to make it optional to pass 'make dtbs_check'.

This should be a part of the commit message, so that the next developer 
understands your intentions without going to mail archives.

> 
> Thanks
> Varada
> 
>> Best regards,
>> Krzysztof
>>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
