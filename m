Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33C17C76196
	for <linux-phy@archiver.kernel.org>; Tue, 11 Apr 2023 10:58:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CDxMEEByZjO2cXBjldA+mSe8RygieXWRmV1i32UHTiY=; b=m39WYqvH5ENYUp
	KxM2yjjnEi+jDfDIYJ/U96wU1bzReCSosIPui5k30/prmZMtsY3qLR1Xn0yroX1mg+ksAZc4oqer5
	9MR9feKCEeICAuxj1Rdb7ySS1Jyi7sN7bNRakfJXCOkf9ajlK23DmV6TZ86VNd7RLKpmOJ/uNcPV8
	5JUw1JNt8rZgmjTvrrvsGhykaRotfudDBZNj9fE8ZI0alu0v7gEMc3dXSE8sW68X5aIHylpSkbEoD
	ZkiiZIKOMS/j1QD6n7FjtinvzXwrl53VB/VCC1h+3+IDXq+pCJR/c3FsBAvNJBBgpJfhsIlMtahlk
	7DsU9iSkJCF6O1xRTadQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmBhJ-00HOUF-2q;
	Tue, 11 Apr 2023 10:58:01 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmBhH-00HOSg-0u
	for linux-phy@lists.infradead.org;
	Tue, 11 Apr 2023 10:58:00 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 33BAljGr018908;
	Tue, 11 Apr 2023 10:57:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=14mScYbVQyWzJ/LrV2BGO+8sFIwuc83cAGGYkYjZpjA=;
 b=d5mqj90HrxHyVDaA0URCPX12v6GueiJTRsIbIFutDDFiWXRdQYbMtP1uHktFqE7FHQO1
 b1GpzmIjvizl5Tnpmiw3zw33fTzaCTA0J/XxdqEXi5BwH2G9oJJZK2i+N2JN2iFW28I7
 trmjmSy70Prdl6JPbVBo90aXYFuBXmVZysMO/WtD8ByPnDm08AppNJeO21Ds1CUzkG7l
 R5TiyaCId7hftJB35aN0RJC38N6Jw3Fro001ZZCd3azHf3IUByWL86DbqyAHEc0qouDT
 D/UUgtJ5Dk3uh55/m6tdd/dzri/Abc15EQfLyOnSA+iSHw4i/Yhkt2vL5TmqEkCeeD56 fQ== 
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3pvggntqxs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 11 Apr 2023 10:57:48 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 33BAvlMN004561
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 11 Apr 2023 10:57:47 GMT
Received: from [10.216.4.20] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.42; Tue, 11 Apr
 2023 03:57:37 -0700
Message-ID: <999dfe1c-3b0d-1cc1-7407-e0917fc62d77@quicinc.com>
Date: Tue, 11 Apr 2023 16:27:23 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH V2 5/9] dt-bindings: PCI: qcom: Add IPQ9574
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, <agross@kernel.org>,
        <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <lpieralisi@kernel.org>, <kw@linux.com>, <robh@kernel.org>,
        <bhelgaas@google.com>, <krzysztof.kozlowski+dt@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <mturquette@baylibre.com>,
        <sboyd@kernel.org>, <mani@kernel.org>, <p.zabel@pengutronix.de>,
        <linus.walleij@linaro.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-clk@vger.kernel.org>, <linux-gpio@vger.kernel.org>
CC: <quic_srichara@quicinc.com>, <quic_gokulsri@quicinc.com>,
        <quic_sjaganat@quicinc.com>, <quic_kathirav@quicinc.com>,
        <quic_arajkuma@quicinc.com>, <quic_anusha@quicinc.com>,
        <quic_ipkumar@quicinc.com>
References: <20230404164828.8031-1-quic_devipriy@quicinc.com>
 <20230404164828.8031-6-quic_devipriy@quicinc.com>
 <79ddaff0-00a9-36db-2bc0-4c844ffd9528@linaro.org>
From: Devi Priya <quic_devipriy@quicinc.com>
In-Reply-To: <79ddaff0-00a9-36db-2bc0-4c844ffd9528@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: FO9cNzbKgPi3ECrYyo59DBGcwno5Oyfe
X-Proofpoint-ORIG-GUID: FO9cNzbKgPi3ECrYyo59DBGcwno5Oyfe
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-04-11_06,2023-04-11_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=878
 lowpriorityscore=0 clxscore=1015 priorityscore=1501 mlxscore=0 bulkscore=0
 malwarescore=0 adultscore=0 impostorscore=0 phishscore=0 spamscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2304110103
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230411_035759_336711_D755ACAA 
X-CRM114-Status: GOOD (  16.54  )
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



On 4/5/2023 12:28 PM, Krzysztof Kozlowski wrote:
> On 04/04/2023 18:48, Devi Priya wrote:
>> Add bindings for PCIe hosts on IPQ9574 platform and allow
>> msi-parent property
> 
> Missing full stop. Also in your other patches.
Okay
> 
>>
>> Signed-off-by: Devi Priya <quic_devipriy@quicinc.com>
>> ---
>>   Changes in V2:
>> 	- Updated the commit message and dropped the aggr_noc entries
>> 	  as it will be handled via interconnect driver
>>
>>   .../devicetree/bindings/pci/qcom,pcie.yaml    | 48 +++++++++++++++++++
>>   1 file changed, 48 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
>> index fb32c43dd12d..8657ab65008c 100644
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
>> @@ -105,6 +106,8 @@ properties:
>>       items:
>>         - const: pciephy
>>   
>> +  msi-parent: true
>

Yes right, will rebase it on Mani's series.
But, as you have pointed out don't see the binding changes
in linux-next/master
Mani, could you please provide the tree details onto which the
binding change is merged?

> Isn't this conflicting with Mani's series:
> https://lore.kernel.org/all/20230108203340.GA229573-robh@kernel.org/
> https://lore.kernel.org/all/20230111123004.21048-1-manivannan.sadhasivam@linaro.org/#t
> 
> Although for some reason Mani's patch references non-existing commit and
> hunk...
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
