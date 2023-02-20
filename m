Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A182FC05027
	for <linux-phy@archiver.kernel.org>; Mon, 20 Feb 2023 13:31:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ttrwu1nuGovoSSMLk8+StXghufrOaN1hZQm96Uy/rP8=; b=o4mwRGDN++qu++
	gKX1TcpoklhYVc1uNd3t3yiQ3Uw3xarTJQaPvPe0tHItNsil9Z7e7NRVAOaykJST6WJV2pNyihslR
	zG+ZeU3SP+RwjJJyfxJHt3bd56R/sHY9nh9wwYTysu/5AF3WGG6xX9Mtf/gVrezhS1PBoR8Bsosap
	W+7CvoIltDdj/UpRX0PnUe8mgvqRL6FAFzch2TkfQXCIWpGOsh4oK4ljjOp7xnDN8NKFcZ71yjOo7
	+2/1uiBD7wlpMw0hesr8bGelRiSWFPI4bdxEnccJov9hcb1vVhxSGBOan8iHBqfGfZgUrdFZNNMGR
	M6ssMPPpNUZErTSC3Gdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pU6G9-004Co5-Ex; Mon, 20 Feb 2023 13:31:13 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pU6G2-004Cmo-PV
	for linux-phy@lists.infradead.org; Mon, 20 Feb 2023 13:31:11 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 31K5kJir003643;
	Mon, 20 Feb 2023 13:30:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=FcZjGbKOZP48Di41hyXSrR5yDt+ItQvfWr70SwpNl3g=;
 b=gYrdhKe5AiJb2WlDV0dyoPvosZYlzhSPN4MEbbM/5ReeqLi7fosWqnlHTGn7S/yJrn0w
 LHXAb8ua+8sDiO7ZmuQO3Puc12VYAW/eUZOH0wDwTdlA7sO48Df/Nb7Cy420aAz2z85u
 4KZf3SuZzXEbuwpAJXv04xfhhZmel/zIZkp2a9WVCNwcqeyOfA0qqpVwrbTOdi7OfEoe
 twgd7GY6+5U4Qbf6LB6NwuT2WxE8Gg3W+GfBzpvXD5hErio/NPrjJzHnoX7Vo+3jzrN7
 ZdMMIjb1wERFrBFQYLMNAqT21X053XjJp8q0G6aVcmaIM1dbbTBDcy0KcyQH8Rx8UHwo bw== 
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3ntm1vdfkq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 20 Feb 2023 13:30:50 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 31KDUmuI008152
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 20 Feb 2023 13:30:48 GMT
Received: from [10.216.11.20] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.41; Mon, 20 Feb
 2023 05:29:41 -0800
Message-ID: <86b64f46-a142-9b5e-ac93-04337f66c61f@quicinc.com>
Date: Mon, 20 Feb 2023 18:59:31 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 1/7] dt-bindings: PCI: qcom: Add IPQ9574 specific
 compatible
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, <agross@kernel.org>,
        <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <lpieralisi@kernel.org>, <kw@linux.com>, <robh@kernel.org>,
        <bhelgaas@google.com>, <krzysztof.kozlowski+dt@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <mturquette@baylibre.com>,
        <sboyd@kernel.org>, <mani@kernel.org>, <p.zabel@pengutronix.de>,
        <svarbanov@mm-sol.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-clk@vger.kernel.org>
CC: <quic_srichara@quicinc.com>, <quic_gokulsri@quicinc.com>,
        <quic_sjaganat@quicinc.com>, <quic_kathirav@quicinc.com>,
        <quic_arajkuma@quicinc.com>, <quic_anusha@quicinc.com>
References: <20230214164135.17039-1-quic_devipriy@quicinc.com>
 <20230214164135.17039-2-quic_devipriy@quicinc.com>
 <f883e857-1281-ceae-74ac-72a1f07d6413@linaro.org>
Content-Language: en-US
From: Devi Priya <quic_devipriy@quicinc.com>
In-Reply-To: <f883e857-1281-ceae-74ac-72a1f07d6413@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: tGiBzl2aWykuNuYe1mLK45B6RXThRdx0
X-Proofpoint-GUID: tGiBzl2aWykuNuYe1mLK45B6RXThRdx0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.930,Hydra:6.0.562,FMLib:17.11.170.22
 definitions=2023-02-20_10,2023-02-20_02,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 phishscore=0
 bulkscore=0 malwarescore=0 mlxscore=0 lowpriorityscore=0 mlxlogscore=950
 suspectscore=0 adultscore=0 impostorscore=0 priorityscore=1501 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2212070000
 definitions=main-2302200123
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230220_053107_003535_C672F7E2 
X-CRM114-Status: GOOD (  15.27  )
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

Hi Krzysztof,
Thanks for taking time to review the patch!

On 2/16/2023 3:59 PM, Krzysztof Kozlowski wrote:
> On 14/02/2023 17:41, Devi Priya wrote:
>> Document the compatible for IPQ9574
>>
>> Signed-off-by: Devi Priya <quic_devipriy@quicinc.com>
>> ---
>>   .../devicetree/bindings/pci/qcom,pcie.yaml    | 72 ++++++++++++++++++-
>>   1 file changed, 70 insertions(+), 2 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
>> index 872817d6d2bd..dabdf2684e2d 100644
>> --- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
>> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
>> @@ -26,6 +26,7 @@ properties:
>>             - qcom,pcie-ipq8064-v2
>>             - qcom,pcie-ipq8074
>>             - qcom,pcie-ipq8074-gen3
>> +          - qcom,pcie-ipq9574
>>             - qcom,pcie-msm8996
>>             - qcom,pcie-qcs404
>>             - qcom,pcie-sa8540p
>> @@ -44,11 +45,11 @@ properties:
>>   
>>     reg:
>>       minItems: 4
>> -    maxItems: 5
>> +    maxItems: 6
>>   
>>     reg-names:
>>       minItems: 4
>> -    maxItems: 5
>> +    maxItems: 6
>>   
>>     interrupts:
>>       minItems: 1
>> @@ -105,6 +106,8 @@ properties:
>>       items:
>>         - const: pciephy
>>   
>> +  msi-parent: true
>> +
>>     power-domains:
>>       maxItems: 1
>>   
>> @@ -173,6 +176,27 @@ allOf:
>>               - const: parf # Qualcomm specific registers
>>               - const: config # PCIe configuration space
>>   
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - qcom,pcie-ipq9574
>> +    then:
>> +      properties:
>> +        reg:
>> +          minItems: 5
>> +          maxItems: 6
>> +        reg-names:
>> +          minItems: 5
>> +          items:
>> +            - const: dbi # DesignWare PCIe registers
>> +            - const: elbi # External local bus interface registers
>> +            - const: atu # ATU address space
>> +            - const: parf # Qualcomm specific registers
>> +            - const: config # PCIe configuration space
>> +            - const: aggr_noc #PCIe aggr_noc
> 
> Why last one is optional? I would assume device either has it or has not.
> 
Yes right, the device has aggr_noc.
The rate adapter update was required only for 1-lane PCIe
But will check and update this accordingly in the next spin.

> 
> Best regards,
> Krzysztof
> 
Best Regards,
Devi Priya

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
