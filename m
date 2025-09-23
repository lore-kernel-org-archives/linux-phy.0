Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DE14CAC5A5
	for <linux-phy@archiver.kernel.org>; Tue, 23 Sep 2025 19:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rffY6Mn2Ie/+OX634JAm+4RaC0hjXp8uEZJOLrTcNbM=; b=LAlPoyiQflIHr3
	WSISWI0CLoT0vOywv5lPjC7U8Nmkdf7cpESwXYb/siVOCWgaLZog6/daG9Q5lbVWg5mxwdTSKAzt4
	cwHWMVxgIgiYe2Pe2NqzxiEwAUYl/xW1AyyPtYMnp0Y00A7M/l2hByZalOL71GfOZKM9wwQQ7ALl1
	L8jHYZ4MWUlw7DJKBY3tNf/p4JFsnznbc6ZHe/H39T38ZpUgzYGSGbqqQKEDX751qqXyHitEfFaZf
	UX1bXXUuoDddzeytIkVABg6W+Dz7pa3thuOo78qsJ0VnVlrbdjIeGAvbvW2MdaQ895cg34vRBkS0d
	/EOk3gK2VVOG8pSZQ94g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v18ou-0000000EgSF-1UFW;
	Tue, 23 Sep 2025 19:37:00 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v18or-0000000EgRr-3jWi
	for linux-phy@lists.infradead.org;
	Tue, 23 Sep 2025 19:36:59 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58NF0KmA014962
	for <linux-phy@lists.infradead.org>; Tue, 23 Sep 2025 19:36:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aJneKB6KUlYtnPIPcPrOqQOo+8uP80oakK/pn7zFJCw=; b=ixd2zA1NnKzqnOhq
	d2ZzEpMjcuwg+2EHlZrLhD8oW9qTrB7WEKcN6uiBS9yzBJL81zzoF79Z46pj3Yev
	Wfq6KidPBDuUDUgq+1SPcO9qXZdSfyXugG/yGi+SpJTTsXn1hIFKfi71D33lRw3w
	BBzPWnTxHDuGMG0IABoE1Xl8mZkqutkvketAZXxdsFFKNw797+VM2X2k8sOJbRIO
	JYUFDiinEErxwpPb6jqrXV5pOtNxgeDZ1PjifQSObGwhNO6MnJ3ikpAOXd2G+HMG
	hAmFe3klh7x8gTlUlo37/ivHd4RWAMVV5lwoQhGQ+Dt/RP97nqVE3BVI6BeHTd3B
	V/3/RA==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49b3kk5s8x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 23 Sep 2025 19:36:56 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b5531279991so5405727a12.3
        for <linux-phy@lists.infradead.org>; Tue, 23 Sep 2025 12:36:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758656215; x=1759261015;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aJneKB6KUlYtnPIPcPrOqQOo+8uP80oakK/pn7zFJCw=;
        b=mDxOxO8D7Au4ihal+XYUZZtJM1VHl2frGdxvSbIj8hHUYaEs6TMM5wEZu6JypE49Mt
         JMsQ4O5QCBXFHne5dRkWgEmSlG3zJeBcTdiyJCkOJCtHd7emvCIVQw0CZDloWPR1kWm5
         Adf4B4XKa0QgKzcuMlpHZKs5qlHUJgjuSJ/E5tSa6pMPZzTAk4urBHpxS3mHV8kc/Gic
         FJVtIRdv+bNTowwztfDifBKXTdTm6RUtEezyIfDy8ZEE1E9zI87B7K6zquhsUu9QVQRY
         uy5BjnF/4RBqb1jttqfact+ITuQCRrRCegvi+i46LC77vRJiIWe+1GsqKsNzFg6OpEWL
         Af2Q==
X-Forwarded-Encrypted: i=1; AJvYcCU4RIt0gczuRhTjpakQ1XPuPR5zkVxRJEtZsEiPBqXZKP0Ylj6Nrzul3t1mZ3+Is1D3YgVB1il0Lsg=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywq1GV/Z/4cBKSeu79bsidFq6CFZ8Zo8JcPm9TZcwN4o6thyJct
	k8eEKty3Tak+Vi09D5b0ef6PNgDn4uR1gDS8ESzRYhvXfW9H+K4GOoFpf+5rTPwC6t85fRytcSv
	aiTQm+zeLbMYN5DXhb6P08S46cpR7D2Vk9npd1QuFhsJvGdu87VMXuTYJhRRYuij0e+2b
X-Gm-Gg: ASbGncs8doZ3/sBw7IPqT4i7Lcb71eDo565UZCoRaMKvdxtkl6f1lTgs0UOg+WYdxtX
	dk6e6urlWaFMpKbbT25WZcqg9206YouAUIiqqfyGCq8wloXQPwUq5Oily6aAoZmq2jQqPLSR1Lw
	ZJzZXTMr2v5sIGrqlZntClPpAC0xJzG3AQ4eAlWq4SU0UkC24PhfyCx2VOjKS0MyfVV8kuCUJbP
	UdjuUfKanLOi4pyra4Hjgs7XiMYtiGjkvkAaLmBV7AYi9kQ+FJkOUrLXMYtZ0/RCAhGI739o+XY
	hE/B3QNnPV3F5s20ELyvnwFB+Mk5ZmycjI07epIJIcxSaijiD0OmHu7SsNT/wqpQK8uxS3PqGa2
	bwqZnxA==
X-Received: by 2002:a05:6a20:3d1c:b0:2ac:7567:c069 with SMTP id adf61e73a8af0-2cfdac2f25fmr5659661637.17.1758656215457;
        Tue, 23 Sep 2025 12:36:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFS/UpqR/9Of4sY1TBzz+iudIRPwp/SAd9XDBUzr/RWXOhBvNioYOHJ1X+iG1pgZNxz8t6Mhg==
X-Received: by 2002:a05:6a20:3d1c:b0:2ac:7567:c069 with SMTP id adf61e73a8af0-2cfdac2f25fmr5659637637.17.1758656215026;
        Tue, 23 Sep 2025 12:36:55 -0700 (PDT)
Received: from [10.73.52.96] (pat_11.qualcomm.com. [192.35.156.11])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77f315254edsm7397688b3a.84.2025.09.23.12.36.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Sep 2025 12:36:54 -0700 (PDT)
Message-ID: <f1b53a1b-ff29-38a9-db54-8acfd1abac7b@oss.qualcomm.com>
Date: Tue, 23 Sep 2025 12:36:52 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 2/9] dt-bindings: phy: qcom,qmp-usb: Add Glymur USB UNI
 PHY compatible
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org
References: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
 <20250920032108.242643-3-wesley.cheng@oss.qualcomm.com>
 <7gvp6pshp4eiugk3qodg2ub3azu365loturidbkxqly6nhtgq7@bxnkxeqzarkv>
 <4116b593-d36d-df10-6101-4e3539b8b812@oss.qualcomm.com>
 <pvma73qs7msh2qkoaqhfv5v57f3asduuutwf73ceyrxbpsv4sl@fd6fs6yrfjp7>
Content-Language: en-US
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
In-Reply-To: <pvma73qs7msh2qkoaqhfv5v57f3asduuutwf73ceyrxbpsv4sl@fd6fs6yrfjp7>
X-Proofpoint-GUID: 1g2vsroGglCwLQ9NZ2R5B5ifs-rGOGQV
X-Proofpoint-ORIG-GUID: 1g2vsroGglCwLQ9NZ2R5B5ifs-rGOGQV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDA4OSBTYWx0ZWRfXwAml1BvYFc+C
 fhZ2YDKo5VA0oi2qN1tXShl9OY+CSwa5ScG1rJgIOiOYIqoayaeaARNY4y77EeAQYMiab81wtLf
 +pobAVKMfMMjs8Je3io1CiGbv2/JvkpFMAeHpl72HUbEh8YpOdBS7uavIS+ERXdJ/iqovOEz7jJ
 5RLQzTwAPrYrTmzM0r4kTmmipgC3RG9DNgmsioAI4OSwNSsCeY/GifECkPutuvD2cCBP50UUnQ/
 G1D9AhW7Ae29OsjdTW9sbw0MnFRQGy7rbO5LLkUdh2OvROwhL877Q9Z5xm7/paZKleOxHv4gL1l
 ELT+aHMbyiGm/HhjD+/uFRHW5rexACP9/rm11a4BnlCnePO//UasBW+1TEXH0bjYXL3LxDqewqa
 gQVcCTwD
X-Authority-Analysis: v=2.4 cv=BabY0qt2 c=1 sm=1 tr=0 ts=68d2f6d8 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ZdW6uxA9NKXbfdqeeS2OGA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=JfrnYn6hAAAA:8 a=EUspDBNiAAAA:8
 a=ySdWX0gGKps6jh8XKZoA:9 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-23_05,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 phishscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 malwarescore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220089
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250923_123658_053873_0705A5A4 
X-CRM114-Status: GOOD (  27.47  )
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



On 9/22/2025 8:40 PM, Dmitry Baryshkov wrote:
> On Mon, Sep 22, 2025 at 06:00:04PM -0700, Wesley Cheng wrote:
>>
>>
>> On 9/20/2025 8:22 AM, Dmitry Baryshkov wrote:
>>> On Fri, Sep 19, 2025 at 08:21:01PM -0700, Wesley Cheng wrote:
>>>> The Glymur USB subsystem contains a multiport controller, which utilizes
>>>> two QMP UNI PHYs.  Add the proper compatible string for the Glymur SoC.
>>>>
>>>> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
>>>> ---
>>>>    .../bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml       | 7 ++++++-
>>>>    1 file changed, 6 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
>>>> index a1b55168e050..772a727a5462 100644
>>>> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
>>>> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
>>>> @@ -16,6 +16,7 @@ description:
>>>>    properties:
>>>>      compatible:
>>>>        enum:
>>>> +      - qcom,glymur-qmp-usb3-uni-phy
>>>>          - qcom,ipq5424-qmp-usb3-phy
>>>>          - qcom,ipq6018-qmp-usb3-phy
>>>>          - qcom,ipq8074-qmp-usb3-phy
>>>> @@ -62,6 +63,8 @@ properties:
>>>>      vdda-pll-supply: true
>>>> +  refgen-supply: true
>>>
>>> You've added it, but it's not referenced as required. Why is it so?
>>>
>>
>> Hi Dmitry,
>>
>> The refgen clock isn't always required on each and every platform unlike the
>> .9v and 1.2v rail/supply, which directly power the QMP PHY.  It only really
>> depends on how the refclk/CXO network is built for that particular chipset.
>> The refgen ensures that we're properly voting for the supply that is
>> powering our CXO buffer.
> 
> So, it should be marked as required for those SoCs that use it and set
> to false for the SoCs that don't.
> 

Got it. Will fix.

>>
>>>> +
>>>>      "#clock-cells":
>>>>        const: 0
>>>> @@ -139,6 +142,7 @@ allOf:
>>>>            compatible:
>>>>              contains:
>>>>                enum:
>>>> +              - qcom,glymur-qmp-usb3-uni-phy
>>>>                  - qcom,sdm845-qmp-usb3-uni-phy
>>>>        then:
>>>>          properties:
>>>> @@ -147,7 +151,7 @@ allOf:
>>>>            clock-names:
>>>>              items:
>>>>                - const: aux
>>>> -            - const: cfg_ahb
>>>> +            - enum: [cfg_ahb, clkref]
>>>
>>> Why is it being placed here? Please comment in the commit message.
>>>
>>
>> Main reason if to avoid having to define another IF/THEN block, but I can do
>> that as well if using enum here is not preferred.
> 
> Is it some new clock that hasn't been used on the previous platforms? Is
> it actually supplying the PHY rather than the controller (note the
> CLKREF clocks on SM8550 / SM8650.
> 

On the recent mobile chipsets, we don't utilize the QMP UNI PHY, so 
those would be n/a for this.  I checked x1e80100 and sc8280xp, and there 
might be an error with the x1e80100 MP UNI PHY definition, because I do 
see that there are TCSR clkref control for both MP QMP PHYs, and we 
should be programming those...

In short, yes, this clkref is technically "new" in that it adds the 
references to the TCSR handle that controls the output for the PHY 
reference clock.  With that in mind, I think its better if we add a 
separate IF/THEN block.

I will submit a patch in a separate series to fix the x1e80100's UNI PHY 
definition, once I get a chance to verify it.

Thanks
Wesley Cheng

>>
>> Thanks
>> Wesley Cheng
>>
>>>>                - const: ref
>>>>                - const: com_aux
>>>>                - const: pipe
>>>> @@ -157,6 +161,7 @@ allOf:
>>>>            compatible:
>>>>              contains:
>>>>                enum:
>>>> +              - qcom,glymur-qmp-usb3-uni-phy
>>>>                  - qcom,sa8775p-qmp-usb3-uni-phy
>>>>                  - qcom,sc8180x-qmp-usb3-uni-phy
>>>>                  - qcom,sc8280xp-qmp-usb3-uni-phy
>>>>
>>>> -- 
>>>> linux-phy mailing list
>>>> linux-phy@lists.infradead.org
>>>> https://lists.infradead.org/mailman/listinfo/linux-phy
>>>
>>
>> -- 
>> linux-phy mailing list
>> linux-phy@lists.infradead.org
>> https://lists.infradead.org/mailman/listinfo/linux-phy
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
