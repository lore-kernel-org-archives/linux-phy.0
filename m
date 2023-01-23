Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6EF00C38142
	for <linux-phy@archiver.kernel.org>; Mon, 23 Jan 2023 11:03:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aUSue3SV/PYyR4jxpRidk4Ke1FPRAnXU6IJ0aBbtrdU=; b=oPUmQhEQ7w1v17
	iWoAE68he+2CVfOsWWW2cZdDnlXOwnzEIPha09N4M3fLyU18Pv2FpI23KukkCBhPbJZYi+Ptw0e9W
	tK2wiEv0MyK84IhhbRZo9+MDpVPgE76tVWHybl8M5rq94+InUAEqRR/ovC1DEOxuVaCI61bk4IMqX
	/7aAlILBWv4JVopCihlzQ7PO6oK1oj/2cj+MFxZOwXDDZzLLSSsTLDf17XIhj6ABJp9mwjU0sBKQZ
	xQpOLTrZ9eucf8n14FdzBaE9ufzLLAbv44zOC461gjwF2cgNGKFNrZtUicZ9vxYTVLGvq+H7X4gzJ
	xiBdUeJ8udCz5ZTdMtbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJubk-00Gv9O-Py; Mon, 23 Jan 2023 11:03:24 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJubh-00Gv8e-ME
	for linux-phy@lists.infradead.org; Mon, 23 Jan 2023 11:03:23 +0000
Received: by mail-wm1-x32b.google.com with SMTP id f19-20020a1c6a13000000b003db0ef4dedcso10287723wmc.4
        for <linux-phy@lists.infradead.org>; Mon, 23 Jan 2023 03:03:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eSV5uo0LzqlE/rDUs0H+Ek9lv+hIiI/0qlptbm1nlzo=;
        b=Q9zz6tDiTIEqkINnMDbEAc9ILYldzvnpgCQVocYauAClFiB3JC21S7pEtANOVdZngz
         sttTVNKpYbQs/CUaAQ6c6Bu+Rg4lHVBfNw3htHvzbyVKBPvXsz405idLuCmYZcfuHZcV
         0dXI193ffNKuBK/eDHl2qnP6X0OMu2gc9PpobucvwpCPE+eaPQDeBFxjdhchSnuL92XK
         UKOsUp3TtcdIP2rRZ/DuBofaRRwR9HjwFhfoo7gDJ9fnDNLyOeM8Xe+9umcHSQspdQEM
         sixtL7seJkdnvPRsQMkBXyrGVvwklSHxT9LedF5WQU1Sbzy9giC0jIOk4gTeeQRQ2EKr
         BUtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eSV5uo0LzqlE/rDUs0H+Ek9lv+hIiI/0qlptbm1nlzo=;
        b=YEBvAf1p58Du49bIw8dLjwxb0+BVh5guIqwLLWz6+G65fhwdsLZApNwfQyjiStyETS
         JyaMI/i1Lkz+GAwsyeeP2yR46CNcIGYujdJn06fmEe4DsPecJmGwAVdXttVraC1SRQSl
         0+8X8oXv2SdQjlPmMKg3ZdZs598R6lb26f37t/mN3fxyr3nUsJFpxtx7fIw/j3Az0pXn
         ze8r5psJrNzkTX/uYyWA11OWAgGEG8ppFdgOBHT9iTGH0Vz7ZkfpWAZEHCX/BxxL62it
         GaAymsURg9mkV2F8NWkgk1WyxyCYDjpFqJsyT0EO0a+w7/1bA1hXCEIT6/i/sxCvSQ/x
         QtRA==
X-Gm-Message-State: AFqh2ko/MKDzJbeK+69Wj/3RRQ20EttQByhk3Wr8KuijmBZGzz/oDs7m
	zxArwdrT6QN0NbffOBuWZWPYMQ==
X-Google-Smtp-Source: AMrXdXuWIciYT3qWABQE8KiIpgFepimGzph3mMI6Ii1TsVDBmMMhr3NEtvyE/L5N3b+DBiIooIRzog==
X-Received: by 2002:a05:600c:35d6:b0:3db:2ad:e344 with SMTP id r22-20020a05600c35d600b003db02ade344mr20332817wmq.13.1674471797051;
        Mon, 23 Jan 2023 03:03:17 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id bg24-20020a05600c3c9800b003d9ed40a512sm14284884wmb.45.2023.01.23.03.03.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Jan 2023 03:03:16 -0800 (PST)
Message-ID: <4f0f8477-2a06-0e95-be32-0ec0f337a7fe@linaro.org>
Date: Mon, 23 Jan 2023 12:03:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH v4 09/12] dt-bindings: PCI: qcom: Add SM8550 compatible
Content-Language: en-US
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Rob Herring
 <robh@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
References: <20230119140453.3942340-1-abel.vesa@linaro.org>
 <20230119140453.3942340-10-abel.vesa@linaro.org>
 <7af21247-a44e-cb46-7461-204fa6b4fcab@linaro.org>
 <Y85lFD3m5pdpNtdR@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Y85lFD3m5pdpNtdR@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_030321_815119_DD1CEE38 
X-CRM114-Status: GOOD (  16.92  )
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

On 23/01/2023 11:44, Abel Vesa wrote:
> On 23-01-22 15:10:59, Krzysztof Kozlowski wrote:
>> On 19/01/2023 15:04, Abel Vesa wrote:
>>> Add the SM8550 platform to the binding.
>>>
>>> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
>>> ---
>>>
>>> The v3 of this patchset is:
>>> https://lore.kernel.org/all/20230119112453.3393911-1-abel.vesa@linaro.org/
>>>
>>> Changes since v3:
>>>  * renamed noc_aggr to noc_aggr_4, as found in the driver
>>>
>>> Changes since v2:
>>>  * dropped the pipe from clock-names
>>>  * removed the pcie instance number from aggre clock-names comment
>>>  * renamed aggre clock-names to noc_aggr
>>>  * dropped the _pcie infix from cnoc_pcie_sf_axi
>>>  * renamed pcie_1_link_down_reset to simply link_down
>>>  * added enable-gpios back, since pcie1 node will use it
>>>
>>> Changes since v1:
>>>  * Switched to single compatible for both PCIes (qcom,pcie-sm8550)
>>>  * dropped enable-gpios property
>>>  * dropped interconnects related properties, the power-domains
>>>  * properties
>>>    and resets related properties the sm8550 specific allOf:if:then
>>>  * dropped pipe_mux, phy_pipe and ref clocks from the sm8550 specific
>>>    allOf:if:then clock-names array and decreased the minItems and
>>>    maxItems for clocks property accordingly
>>>  * added "minItems: 1" to interconnects, since sm8550 pcie uses just
>>>  * one,
>>>    same for interconnect-names
>>>
>>>
>>>  .../devicetree/bindings/pci/qcom,pcie.yaml    | 44 +++++++++++++++++++
>>>  1 file changed, 44 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
>>> index a5859bb3dc28..58f926666332 100644
>>> --- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
>>> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
>>> @@ -34,6 +34,7 @@ properties:
>>>        - qcom,pcie-sm8250
>>>        - qcom,pcie-sm8450-pcie0
>>>        - qcom,pcie-sm8450-pcie1
>>> +      - qcom,pcie-sm8550
>>>        - qcom,pcie-ipq6018
>>>  
>>>    reg:
>>> @@ -65,9 +66,11 @@ properties:
>>>    dma-coherent: true
>>>  
>>>    interconnects:
>>> +    minItems: 1
>>>      maxItems: 2
>>>  
>>
>> I don't see my concerns from v3 answered.
> 
> Check the dates for v4 and your reply to v3.
> 
> v4 was sent a day before you sent your v3 comments. :)
> 
>>
>> This is a friendly reminder during the review process.
>>
>> It seems my previous comments were not fully addressed. Maybe my
>> feedback got lost between the quotes, maybe you just forgot to apply it.
>> Please go back to the previous discussion and either implement all
>> requested changes or keep discussing them.
> 
> Will address your comments in next version.

Ah, then ok :)

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
