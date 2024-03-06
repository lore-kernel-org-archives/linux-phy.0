Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 529A6C54E4A
	for <linux-phy@archiver.kernel.org>; Wed,  6 Mar 2024 15:52:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eNSRqe1hSUV8T7rYBeziw9vnEYXKgRyMrprch1qPAOc=; b=rNYRhtuozhgOw4
	vcj7gPU+pcQfCDkPEeW6gLRJm2pUAiK4s/GKchsGd72ajoq7hOiwRXm4YEadpqcxJNKfqF1l5e0je
	iZ482LoaROH/ukfefMFR+JNT+3+pl0mdFBFBaTGZQ/nacpXzFofRmu+xk24/IEgKDTBimHanlHRsL
	j/iFCuIXsqFXJz0mXoVao4jlmkwRdeumI8StWj+5hje/5xk6l1V0OWfKlEo0XuijD8ILys4iwbLZj
	y8dDleZ7rxJLUECbzTTqmR8vbGsAtzB49Pl833s0FvKHwmSuFRyZaxoEP0S2Tz7/FEAkj685iBCU/
	4xBkn202GnafqfaZKoRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhtZ9-00000000rJs-3XDJ;
	Wed, 06 Mar 2024 15:52:23 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhtZ5-00000000rHA-3RIA
	for linux-phy@lists.infradead.org;
	Wed, 06 Mar 2024 15:52:21 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 426BdF6C001288;
	Wed, 6 Mar 2024 15:52:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=EEwUSDqGUrVxWiY4NKo3AYm8KZb8/Jtn+tHN0/on6Q4=; b=Uu
	gdDh7AiMMTB3KHQ4Wmbd1Yfvqu/Os65QE2G6KYPqpszFOyoebr0raaAcZYievj8P
	Rv0gTLLYo54pj7D/W51B5ixeONm0XR5GuxpMYQIZcR/Ptk5BjrpqDWRxcCUxwV+E
	/Jb60Oj56RY9f5Gc/pQO8uTqE7/fpxNfvQy7vEuwbpaWeFwss4IOfya7xTDQ30G+
	zWD73lF+I1goggtWc7MaYQ1Rb3oeR0pEVbbCDPRrTTVaDA/nJFSXRBXr2JuUWWCX
	j23P9SqowZfASnRrtP+Gp07XbWky8cRopSVtFJR4kl2OM9ndcWD2pz9bg4/iDUvR
	e8Q/3HYjLIle3Xp80+dQ==
Received: from nasanppmta02.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3wpnfvgu5q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 06 Mar 2024 15:52:11 +0000 (GMT)
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.45.79.139])
	by NASANPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 426FpmZT017506
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 6 Mar 2024 15:51:48 GMT
Received: from [10.216.51.173] (10.80.80.8) by nasanex01c.na.qualcomm.com
 (10.45.79.139) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.40; Wed, 6 Mar
 2024 07:51:41 -0800
Message-ID: <4f1e4e66-e728-472e-92f4-17c295548a14@quicinc.com>
Date: Wed, 6 Mar 2024 21:21:37 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC 1/3] dt-bindings: usb: qcom,dwc3: Add support for multiple
 power-domains
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: <andersson@kernel.org>, <konrad.dybcio@linaro.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <robh@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <gregkh@linuxfoundation.org>, <quic_wcheng@quicinc.com>,
        <Thinh.Nguyen@synopsys.com>, <p.zabel@pengutronix.de>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>, <quic_psodagud@quicinc.com>,
        <quic_nkela@quicinc.com>, <manivannan.sadhasivam@linaro.org>,
        <ulf.hansson@linaro.org>, <sudeep.holla@arm.com>,
        <quic_shazhuss@quicinc.com>
References: <1709657858-8563-1-git-send-email-quic_sriramd@quicinc.com>
 <1709657858-8563-2-git-send-email-quic_sriramd@quicinc.com>
 <CAA8EJpph+R2oJjABvNQYwp=pZLxQPzzs41Hhw4feOdQ3eU-6UA@mail.gmail.com>
From: Sriram Dash <quic_sriramd@quicinc.com>
In-Reply-To: <CAA8EJpph+R2oJjABvNQYwp=pZLxQPzzs41Hhw4feOdQ3eU-6UA@mail.gmail.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: FvTvdKBxiujpedrdN_pduk8dBw_u9XN1
X-Proofpoint-GUID: FvTvdKBxiujpedrdN_pduk8dBw_u9XN1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-06_10,2024-03-05_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 phishscore=0
 clxscore=1015 bulkscore=0 malwarescore=0 mlxscore=0 impostorscore=0
 adultscore=0 mlxlogscore=999 lowpriorityscore=0 spamscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2402120000 definitions=main-2403060128
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240306_075220_040919_9C7C7341 
X-CRM114-Status: GOOD (  19.78  )
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

On 3/6/2024 12:33 AM, Dmitry Baryshkov wrote:
> On Tue, 5 Mar 2024 at 18:58, Sriram Dash <quic_sriramd@quicinc.com> wrote:
>>
>> Some target systems allow multiple resources to be managed by firmware.
>> On these targets, tasks related to clocks, regulators, resets, and
>> interconnects can be delegated to the firmware, while the remaining
>> responsibilities are handled by Linux.
>>
>> To support the management of partial resources in Linux and leave the rest
>> to firmware, multiple power domains are introduced. Each power domain can
>> manage one or more resources, depending on the specific use case.
>>
>> These power domains handle SCMI calls to the firmware, enabling the
>> activation and deactivation of firmware-managed resources.
>>
>> Signed-off-by: Sriram Dash <quic_sriramd@quicinc.com>
>> ---
>>   .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml        | 74 ++++++++++++++++------
>>   .../bindings/phy/qcom,usb-snps-femto-v2.yaml       | 49 ++++++++++++--
>>   .../devicetree/bindings/usb/qcom,dwc3.yaml         | 37 ++++++++++-
>>   3 files changed, 130 insertions(+), 30 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
>> index 1e2d4dd..53b9ba9 100644
>> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
>> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
>> @@ -44,7 +44,32 @@ properties:
>>       maxItems: 5
>>
>>     power-domains:
>> -    maxItems: 1
>> +    description: specifies a phandle to PM domain provider node
>> +    minItems: 1
>> +    maxItems: 2
>> +
>> +  power-domain-names:
>> +    description:
>> +      A list of power domain name strings sorted in the same order as the
>> +      power-domains property.
>> +
>> +      For platforms where some resource are firmware managed, the name
>> +      corresponding to the index of an SCMI domain provider can be
>> +      "usb_core" or "usb_transfer".
>> +    items:
>> +      - const: usb_core
>> +      - const: usb_transfer
>> +
>> +  qmp,fw-managed:
>> +    description:
>> +      Some targets allow multiple resources to be managed by firmware.
>> +      On these targets, tasks related to clocks, regulators, resets, and
>> +      interconnects can be delegated to the firmware, while the remaining
>> +      responsibilities are handled by Linux.
>> +
>> +      Decide if the target resources will be managed by firmware or High level
>> +      OS.
>> +    type: boolean
>>
>>     resets:
>>       maxItems: 2
>> @@ -70,14 +95,6 @@ properties:
>>   required:
>>     - compatible
>>     - reg
>> -  - clocks
>> -  - clock-names
>> -  - resets
>> -  - reset-names
>> -  - vdda-phy-supply
>> -  - vdda-pll-supply
>> -  - "#clock-cells"
>> -  - clock-output-names
>>     - "#phy-cells"
>>
>>   allOf:
>> @@ -86,6 +103,33 @@ allOf:
>>           compatible:
>>             contains:
>>               enum:
>> +              - qcom,sa8775p-qmp-usb3-uni-phy
>> +              - qcom,sc8280xp-qmp-usb3-uni-phy
>> +              - qcom,x1e80100-qmp-usb3-uni-phy
>> +    then:
>> +      required:
>> +        - power-domains
>> +
>> +  - if:
>> +      not:
>> +        required:
>> +          - qmp,fw-managed
>> +    then:
>> +      required:
>> +        - clocks
>> +        - clock-names
>> +        - resets
>> +        - reset-names
>> +        - vdda-phy-supply
>> +        - vdda-pll-supply
>> +        - clock-output-names
>> +        - "#clock-cells"
>> +
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>>                 - qcom,ipq6018-qmp-usb3-phy
>>                 - qcom,ipq8074-qmp-usb3-phy
>>                 - qcom,ipq9574-qmp-usb3-phy
>> @@ -144,18 +188,6 @@ allOf:
>>               - const: com_aux
>>               - const: pipe
>>
>> -  - if:
>> -      properties:
>> -        compatible:
>> -          contains:
>> -            enum:
>> -              - qcom,sa8775p-qmp-usb3-uni-phy
>> -              - qcom,sc8280xp-qmp-usb3-uni-phy
>> -              - qcom,x1e80100-qmp-usb3-uni-phy
>> -    then:
>> -      required:
>> -        - power-domains
>> -
>>   additionalProperties: false
>>
>>   examples:
>> diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
>> index 0f200e3..ad2f08f 100644
>> --- a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
>> +++ b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
>> @@ -49,6 +49,34 @@ properties:
>>       items:
>>         - const: ref
>>
>> +  power-domains:
>> +    description: specifies a phandle to PM domain provider node
>> +    minItems: 1
>> +    maxItems: 2
>> +
>> +  power-domain-names:
>> +    description:
>> +      A list of power domain name strings sorted in the same order as the
>> +      power-domains property.
>> +
>> +      For platforms where some resource are firmware managed, the name
>> +      corresponding to the index of an SCMI domain provider can be
>> +      "usb_core" or "usb_transfer".
>> +    items:
>> +      - const: usb_core
>> +      - const: usb_transfer
>> +
>> +  hsphy,fw-managed:
>> +    description:
>> +      Some targets allow multiple resources to be managed by firmware.
>> +      On these targets, tasks related to clocks, regulators, resets, and
>> +      interconnects can be delegated to the firmware, while the remaining
>> +      responsibilities are handled by Linux.
>> +
>> +      Decide if the target resources will be managed by firmware or High level
>> +      OS.
>> +    type: boolean
>> +
>>     resets:
>>       items:
>>         - description: PHY core reset
>> @@ -154,12 +182,21 @@ required:
>>     - compatible
>>     - reg
>>     - "#phy-cells"
>> -  - clocks
>> -  - clock-names
>> -  - resets
>> -  - vdda-pll-supply
>> -  - vdda18-supply
>> -  - vdda33-supply
>> +
>> +
>> +allOf:
>> +  - if:
>> +      not:
>> +        required:
>> +          - hsphy,fw-managed
>> +    then:
>> +      required:
>> +        - clocks
>> +        - clock-names
>> +        - resets
>> +        - vdda-pll-supply
>> +        - vdda18-supply
>> +        - vdda33-supply
>>
>>   additionalProperties: false
>>
>> diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
>> index 63d150b..5bf3a29 100644
>> --- a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
>> +++ b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
>> @@ -64,7 +64,31 @@ properties:
>>
>>     power-domains:
>>       description: specifies a phandle to PM domain provider node
>> -    maxItems: 1
>> +    minItems: 1
>> +    maxItems: 2
>> +
>> +  power-domain-names:
>> +    description:
>> +      A list of power domain name strings sorted in the same order as the
>> +      power-domains property.
>> +
>> +      For platforms where some resource are firmware managed, the name
>> +      corresponding to the index of an SCMI domain provider can be
>> +      "usb_core" or "usb_transfer".
>> +    items:
>> +      - const: usb_core
>> +      - const: usb_transfer
>> +
>> +  qcom,fw-managed:
>> +    description:
>> +      Some targets allow multiple resources to be managed by firmware.
>> +      On these targets, tasks related to clocks, regulators, resets, and
>> +      interconnects can be delegated to the firmware, while the remaining
>> +      responsibilities are handled by Linux.
>> +
>> +      Decide if the target resources will be managed by firmware or High level
>> +      OS.
>> +    type: boolean
> 
> I think this is an overkill. You know that SA8775 is going to use
> SCMI-based clocks / PD management. Thus I'd suggest adding new
> bindings file targeting qcom,sa8775-dwc3. Also you can drop the
> qcom,fw-managed property at all, let the driver decide basing on the
> compat string.
> 
> 

Thank you for the suggestion Dmitry. I will include
new compat string for SA8775 which will decide whether
to use scmi based clock/ PD.

>>
>>     required-opps:
>>       maxItems: 1
>> @@ -148,13 +172,20 @@ required:
>>     - "#address-cells"
>>     - "#size-cells"
>>     - ranges
>> -  - clocks
>> -  - clock-names
>>     - interrupts
>>     - interrupt-names
>>
>>   allOf:
>>     - if:
>> +      not:
>> +        required:
>> +          - qcom,fw-managed
>> +    then:
>> +      required:
>> +        - clocks
>> +        - clock-names
>> +
>> +  - if:
>>         properties:
>>           compatible:
>>             contains:
>> --
>> 2.7.4
>>
>>
> 
> 
> --
> With best wishes
> Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
