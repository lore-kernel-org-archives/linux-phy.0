Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63E62C64EC7
	for <linux-phy@archiver.kernel.org>; Tue, 28 Feb 2023 05:27:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H+T45cmD01hWWxfWf2mBrpsfjyNd6BcPl2h/UifFVz4=; b=w4nLzTGpkBtJZm
	VSInjzPHh2tyobg9VC9OHzDyfYH7BlBuwA/gEfbWDDfvqSQ0lsF0yOKJUOvo21jpg6qzcrf2e61yY
	LSGUkw0DFr2Zl4sr7n+NpsrXtE4taGTsZlw+ZF7bf8zOOrQHaaCO4ncRGaioV5wcwAPi1kCIOE/7E
	378W4CPwTNfYaXeJacjH5JiAUNg2hWhMV0WjIas1NGj7HBfKuMW2HxaeDiSzy5jfuobAtYxClt+Iw
	oOEC7dvykLl13QTfUKQUstrrhr6S6iUueOn5aa8au/4pNv4wQqbRLgKzbtEeUkN7r/Qd+GoDb2HQt
	9OxE+oTqAt6kPKl0Xi7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWsWZ-00C3cf-L7; Tue, 28 Feb 2023 05:27:39 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWsWW-00C3c6-47
	for linux-phy@lists.infradead.org; Tue, 28 Feb 2023 05:27:37 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 31S1DeCf029148;
	Tue, 28 Feb 2023 05:27:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=i5bXA6ZKAB/LyxjgOJfForvyOfh4jgIzBHG/ngcVv1I=;
 b=Ih1i8xGmnMlPC0nE7qWCM3tKNdT1pfpaZCCSS7TMbXwwWcx4UhVii0c22emhcrJN1dr7
 OWJJGuxDMNx3YHuJgWv7wyuZfdhkvzuLana10o+O57knGkfBVLP4IyDSauEFgoifwWMP
 IblRiqNWuy6qa7nbIR3rRL/QUwipTjGjLo7vaBkFYRObgrkWIL+pQXsuo/WyhsJjSEoQ
 moXY/2f8gEh8tjJ2b0yEpiKC76oLFTEc1+JjtyJruy4lZYDIU1Fc8wlF7ElZi+q6xSSg
 P9cNFbWxlbUUnNuazaiRzXZMNcDrcZ44nnnqLMGcbGLqrutZgCkhZyzBCVMttcDzZ4Dm wQ== 
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3p17ryrg7n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 28 Feb 2023 05:27:17 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 31S5RF7k000879
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 28 Feb 2023 05:27:15 GMT
Received: from [10.216.43.19] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.41; Mon, 27 Feb
 2023 21:27:06 -0800
Message-ID: <bd153038-4427-1f11-1941-5f13fec01cf7@quicinc.com>
Date: Tue, 28 Feb 2023 10:56:53 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 1/7] dt-bindings: PCI: qcom: Add IPQ9574 specific
 compatible
To: Manivannan Sadhasivam <mani@kernel.org>
CC: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <lpieralisi@kernel.org>, <kw@linux.com>, <robh@kernel.org>,
        <bhelgaas@google.com>, <krzysztof.kozlowski+dt@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <mturquette@baylibre.com>,
        <sboyd@kernel.org>, <p.zabel@pengutronix.de>, <svarbanov@mm-sol.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-pci@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-clk@vger.kernel.org>,
        <quic_srichara@quicinc.com>, <quic_gokulsri@quicinc.com>,
        <quic_sjaganat@quicinc.com>, <quic_kathirav@quicinc.com>,
        <quic_arajkuma@quicinc.com>, <quic_anusha@quicinc.com>
References: <20230214164135.17039-1-quic_devipriy@quicinc.com>
 <20230214164135.17039-2-quic_devipriy@quicinc.com>
 <20230224082332.GA5443@thinkpad>
Content-Language: en-US
From: Devi Priya <quic_devipriy@quicinc.com>
In-Reply-To: <20230224082332.GA5443@thinkpad>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: oho-CgnQr-z4KvUVh1hmEyhzT-BU0gUB
X-Proofpoint-GUID: oho-CgnQr-z4KvUVh1hmEyhzT-BU0gUB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.930,Hydra:6.0.562,FMLib:17.11.170.22
 definitions=2023-02-28_02,2023-02-27_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999
 lowpriorityscore=0 bulkscore=0 priorityscore=1501 mlxscore=0 phishscore=0
 adultscore=0 malwarescore=0 suspectscore=0 clxscore=1015 spamscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2302280038
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230227_212736_245127_BC585642 
X-CRM114-Status: GOOD (  18.08  )
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



On 2/24/2023 1:53 PM, Manivannan Sadhasivam wrote:
> On Tue, Feb 14, 2023 at 10:11:29PM +0530, Devi Priya wrote:
>> Document the compatible for IPQ9574
>>
Hi Mani, Thanks for taking time to review the patch.
> 
> You didn't mention about the "msi-parent" property that is being added
> by this patch
Sure, will update the commit message in the next spin
> 
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
> Why do you need this region unlike other SoCs? Is the driver making use of it?
We have the aggr_noc region in ipq9574 to achieve higher throughput & to 
handle multiple PCIe instances. The driver uses it to rate adapt 1-lane 
PCIe clocks. My bad, missed it. Will add the driver changes in V2.
> 
> Thanks,
> Mani
> 
>> +
>>     - if:
>>         properties:
>>           compatible:
>> @@ -365,6 +389,39 @@ allOf:
>>               - const: ahb # AHB Reset
>>               - const: axi_m_sticky # AXI Master Sticky reset
>>   
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - qcom,pcie-ipq9574
>> +    then:
>> +      properties:
>> +        clocks:
>> +          minItems: 6
>> +          maxItems: 6
>> +        clock-names:
>> +          items:
>> +            - const: ahb  # AHB clock
>> +            - const: aux  # Auxiliary clock
>> +            - const: axi_m # AXI Master clock
>> +            - const: axi_s # AXI Slave clock
>> +            - const: axi_bridge # AXI bridge clock
>> +            - const: rchng
>> +        resets:
>> +          minItems: 8
>> +          maxItems: 8
>> +        reset-names:
>> +          items:
>> +            - const: pipe # PIPE reset
>> +            - const: sticky # Core Sticky reset
>> +            - const: axi_s_sticky # AXI Slave Sticky reset
>> +            - const: axi_s # AXI Slave reset
>> +            - const: axi_m_sticky # AXI Master Sticky reset
>> +            - const: axi_m # AXI Master reset
>> +            - const: aux # AUX Reset
>> +            - const: ahb # AHB Reset
>> +
>>     - if:
>>         properties:
>>           compatible:
>> @@ -681,6 +738,16 @@ allOf:
>>           - interconnects
>>           - interconnect-names
>>   
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - qcom,pcie-ipq9574
>> +    then:
>> +      required:
>> +        - msi-parent
>> +
>>     - if:
>>         not:
>>           properties:
>> @@ -693,6 +760,7 @@ allOf:
>>                   - qcom,pcie-ipq8064v2
>>                   - qcom,pcie-ipq8074
>>                   - qcom,pcie-ipq8074-gen3
>> +                - qcom,pcie-ipq9574
>>                   - qcom,pcie-qcs404
>>       then:
>>         required:
>> -- 
>> 2.17.1
>>
> 
Thanks,
Devi Priya

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
