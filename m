Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D0F9CDB47E
	for <linux-phy@archiver.kernel.org>; Wed, 15 Nov 2023 15:03:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yEvJiv66Ppy/Xk4FJ4iGF5IKc33/IAudd4V4wlCscUo=; b=rPnucnWkrH4sCJ
	LrxwTGq5jIgkK9gOKqvudYBULYwS3c8f9e+/wouobTDtvRLj0KIv9EYflvWTnhWzmy0tFYbUFq+Qs
	rLTBkDgUk1Rb0oknr8q3llMBTH5y1INn/EgMRkmKEsSvNFXKXVM0iIWrxoMVQ7kWDxz9ARonkip1K
	uJJLAO89KCwTsGZ/vLXLERxz5ZjMA6tIS29PXjwrhtVtYhJRPcNVxXBuAC3aTV7F/fSQ6FdbtUaib
	eQkhlLBQ7L8sTe6HIdHOPQjFoqwM94U1Q6mrHfogoGQnz1kU2IWc8uo+nQ69uw8g8ddrnb4dKAgGW
	/CWFbfRgfbC2JDSIAKlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3HQO-0017Fl-3A;
	Wed, 15 Nov 2023 15:03:28 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3HQM-0017EK-0y
	for linux-phy@lists.infradead.org;
	Wed, 15 Nov 2023 15:03:27 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3AFCb2Jx015147;
	Wed, 15 Nov 2023 15:03:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=TArmughCiaySbtxApQ9r8oFmeuAAF7BBzQ/u9l67Jus=;
 b=UpHRzaZA3T8IVgbknuTXpky7MVb1eq50hslsnC4VnQ7l+Q2Xj5vCJdfenOgbvHhXtf2P
 kqH6F6GL2yx13JOHdESc7WSvLNLfNRa1T4/+q4pLacc94dZ2xij8m0r3SV7s8nxUxokQ
 2L98FALZSfXRJ64eKLSr9OCJhs4LGIs5bNgmPvyN8LGWFjtD9GI7HBA4aIfESdrDmCRE
 sH5E66Iu2vOY2jrFih34OFZ7QK08lGKOt9vrxOIqc88sanlvmOlXsApVeod6Y0A/ZdWE
 VK76n5EqWmq0mjUzL06FVdnz52B6z8QOaI2GG4JceR38SoDJJGe1Hpg4b8hfGJ7mpjZn nA== 
Received: from nasanppmta01.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3ucanq3178-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 15 Nov 2023 15:03:10 +0000
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3AFF39YW019798
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 15 Nov 2023 15:03:09 GMT
Received: from [10.111.175.193] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.39; Wed, 15 Nov
 2023 07:03:06 -0800
Message-ID: <26a7eb74-7f54-4ade-a761-ce08e85f2a93@quicinc.com>
Date: Wed, 15 Nov 2023 10:03:04 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: phy: Document sm8450 pcie phys as having 4
 clocks
Content-Language: en-US
To: Johan Hovold <johan@kernel.org>
CC: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20231103230339.966792-1-quic_eberman@quicinc.com>
 <ZVRwKaUTDBaYsnQS@hovoldconsulting.com>
From: Elliot Berman <quic_eberman@quicinc.com>
In-Reply-To: <ZVRwKaUTDBaYsnQS@hovoldconsulting.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: RcazGwatS5aUDL0JxL6r0WQY5HjjpnDB
X-Proofpoint-ORIG-GUID: RcazGwatS5aUDL0JxL6r0WQY5HjjpnDB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-15_13,2023-11-15_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 spamscore=0
 lowpriorityscore=0 bulkscore=0 phishscore=0 suspectscore=0 adultscore=0
 mlxlogscore=999 malwarescore=0 priorityscore=1501 clxscore=1011
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2311060000 definitions=main-2311150115
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231115_070326_484656_76A6E858 
X-CRM114-Status: GOOD (  19.42  )
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



On 11/15/2023 2:15 AM, Johan Hovold wrote:
> On Fri, Nov 03, 2023 at 04:03:38PM -0700, Elliot Berman wrote:
>> I noticed while running make dtbs_check that
>> qcom,sm8450-qmp-gen3x1-pcie-phy and qcom,sm8450-qmp-gen4x2-pcie-phy have
>> 4 clocks, not 5. There was also a typo for the 8450 bindings:
>> s/gen3x2/gen4x2/.
>>
>> Update the bindings to reflect the correct number of required clocks.
>>
>> Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> Fixes: 505fb2541678 ("dt-bindings: phy: migrate QMP PCIe PHY bindings to qcom,sc8280xp-qmp-pcie-phy.yaml")
>> Signed-off-by: Elliot Berman <quic_eberman@quicinc.com>
>> ---
>>  .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 16 ++++++++++++++--
>>  1 file changed, 14 insertions(+), 2 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
>> index 2c3d6553a7ba..1768f2016a9f 100644
>> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
>> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
>> @@ -128,6 +128,20 @@ allOf:
>>          reg:
>>            maxItems: 1
>>  
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - qcom,sm8450-qmp-gen3x1-pcie-phy
>> +              - qcom,sm8450-qmp-gen4x2-pcie-phy
>> +    then:
>> +      properties:
>> +        clocks:
>> +          minItems: 4
>> +        clock-names:
>> +          minItems: 4
>> +
> 
> I'm not sure which tree you think you're looking at but this is clearly
> not correct.
> 
> The phy nodes in arch/arm64/boot/dts/qcom/sm8450.dtsi have five clocks
> defined.
> 

You're right, next now has 5 clocks for 8450. -next vs. tip of tree strikes me again :)

I'll send out a fix for just the typo tomorrow/Friday when I do another sweep of
dtbs_check (on next/master instead of torvalds/master).

> Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
