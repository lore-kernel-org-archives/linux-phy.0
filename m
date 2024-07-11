Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3158C3271E
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jul 2024 03:53:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SBqvbVdU6XL5VcwwrsRxvum6id7EKAm3EiPrN45+YFQ=; b=FGCuskOUxtNtL7
	4tArVik2JSoaSH7OcoAG9QJ9ymNZgC+HcHEdnZWtZAMgMs1gYeEt/gjkVPGjYh7xsGmNJMvm9z1fR
	q0SHKDtu68vuVnJFT3nNAWeCubPUqhRm0KgmMeSMgJo8p0g+jCCH643nGI2Jf0dK+REd8kIAqoRgV
	zhBoJ3ChgHa8HFMYpG9wD7avnsfQfnNBTnbfveKu8F1Algs2IOp8kqllOGlVu1D55vC1Bsk7ZTf0y
	IVlLg+70ADl5omILzePBVQQk0N1QSshgt2GfU3DDKtWHMsiKTDa3ttHXRv8PkqKykB850lyWv8q6O
	NI+sUh+Ya2/YXwFPNgGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRkrq-0000000CcD2-2Sxq;
	Thu, 11 Jul 2024 03:53:14 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRkrn-0000000CcCP-3cnx
	for linux-phy@lists.infradead.org;
	Thu, 11 Jul 2024 03:53:13 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 46B33bYX008672;
	Thu, 11 Jul 2024 03:53:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	eNuOdHzLm/d4A5amPX6nWJvH1GqUCUbQTgScANGGqfA=; b=I0GTCzyVmSkrBgsE
	zc1C3WPJjTjkv2ASQpIkTDTJS3lCAMcbAlzeOFRU0hc7nm1PzRTyIYKg1IKI42++
	5/WKoku0mMJYsp656dfw1q8cHP5/0ygp96hF++1U7Tb6pQvGFxuwOqNppA6StrJr
	F2HmDWTT+X56zNc9aL3W1hwmgSXUq/PNWOIpqukFgIRuXdLE8ozXBpE31LaL0qmA
	NyZmO03qD4+/tjkIFRpyzlgGgysynSlgcMPjoUd+F/hQ+Za6bPmw3s2FwQPD5C5W
	gFMU7y8Sf2gQ4/H4OcB7pjcGn8rMx0UBtaGbWVw9OMblDE/rl67kEGsaBi6XBdJA
	5r0IUQ==
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 406wmmuar1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 11 Jul 2024 03:53:08 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA01.qualcomm.com (8.17.1.19/8.17.1.19) with ESMTPS id 46B3r7qZ012546
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 11 Jul 2024 03:53:07 GMT
Received: from [10.239.132.204] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Wed, 10 Jul
 2024 20:53:01 -0700
Message-ID: <8ef27923-03ed-44d2-bfa3-6efc75f8d6be@quicinc.com>
Date: Thu, 11 Jul 2024 11:52:58 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: describe the Qualcomm SGMII PHY
 for QCS9100
To: Krzysztof Kozlowski <krzk@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
CC: <kernel@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
References: <20240709-add_qcs9100_dwmac_sgmii_hpy_compatible-v2-0-5ffeb16252db@quicinc.com>
 <20240709-add_qcs9100_dwmac_sgmii_hpy_compatible-v2-1-5ffeb16252db@quicinc.com>
 <1486c975-3cc8-46b9-b049-1df4dfed0040@kernel.org>
From: Tengfei Fan <quic_tengfan@quicinc.com>
In-Reply-To: <1486c975-3cc8-46b9-b049-1df4dfed0040@kernel.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: CN9arzV0--T56EhVnqgwiZZvuU1v2Zn7
X-Proofpoint-ORIG-GUID: CN9arzV0--T56EhVnqgwiZZvuU1v2Zn7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-07-10_20,2024-07-10_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015
 priorityscore=1501 lowpriorityscore=0 spamscore=0 bulkscore=0 adultscore=0
 impostorscore=0 suspectscore=0 malwarescore=0 mlxscore=0 mlxlogscore=999
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2406140001 definitions=main-2407110024
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240710_205312_050911_977E0018 
X-CRM114-Status: GOOD (  16.69  )
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



On 7/10/2024 6:13 PM, Krzysztof Kozlowski wrote:
> On 09/07/2024 17:15, Tengfei Fan wrote:
>> Document the Qualcomm SGMII PHY for the QCS9100 platforms.
>> QCS9100 is drived from SA8775p. Currently, both the QCS9100 and SA8775p
>> platform use non-SCMI resource. In the future, the SA8775p platform will
>> move to use SCMI resources and it will have new sa8775p-related device
>> tree. Consequently, introduce "qcom,qcs9100-dwmac-sgmii-phy" to describe
>> non-SCMI based the Qualcomm SGMII PHY.
>>
>> Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
>> ---
>>   .../devicetree/bindings/phy/qcom,sa8775p-dwmac-sgmii-phy.yaml        | 5 ++++-
>>   1 file changed, 4 insertions(+), 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/qcom,sa8775p-dwmac-sgmii-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sa8775p-dwmac-sgmii-phy.yaml
>> index b9107759b2a5..74ec4579c0d6 100644
>> --- a/Documentation/devicetree/bindings/phy/qcom,sa8775p-dwmac-sgmii-phy.yaml
>> +++ b/Documentation/devicetree/bindings/phy/qcom,sa8775p-dwmac-sgmii-phy.yaml
>> @@ -15,7 +15,10 @@ description:
>>   
>>   properties:
>>     compatible:
>> -    const: qcom,sa8775p-dwmac-sgmii-phy
>> +    items:
> 
> items is not needed here, this could be an enum directly.
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Thanks Krzysztof!

In the next version patch series, I will check all the patch series, 
using an enum instead od items.

> 
> 
> 
> Best regards,
> Krzysztof
> 

-- 
Thx and BRs,
Tengfei Fan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
