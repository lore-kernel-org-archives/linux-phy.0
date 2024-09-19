Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A15CACF3943
	for <linux-phy@archiver.kernel.org>; Thu, 19 Sep 2024 14:04:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jigWT0rf6pl76sPUYBpkbzccK/tMRKR2fG1mLzYYFO8=; b=ZHx8ZJUkDVUSUj
	3i59SZB5fRrxNMwumiI79GorrrQMOl28hI8nsrjlIHFAielsXxT6D9vcsors9Jp7PtbcNJOsGsijU
	TqFzm6YuzT8iLXGOgzk0sQWm9OTtHh+sE0pz8yP4QMAxOkcV1oO/jp1vElYMzmK4JrUv7auUxOS9Q
	wtktD/Iwoebk5wUTw80aA5jIMALSWG2rgLeR5gqVC5+N21xCaQnsaQnANNaTottehGOaFnkIchqFj
	h/ux8JDIHSWh8YG9CkG/LP3TV6rjaqp55Mgy9DwzIGSAE6qWNjMnAHeKn5sXBrA+ZyRCvegYxvtoQ
	SZQcBT8+vqwTyTzRkEKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1srHlz-0000000AP3j-0yTM;
	Thu, 19 Sep 2024 14:04:43 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1srHlB-0000000AOyw-2fHB
	for linux-phy@lists.infradead.org;
	Thu, 19 Sep 2024 14:04:41 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 48J9PIKn022854;
	Thu, 19 Sep 2024 14:03:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KoflFVbELfCRwLfol/OzZivibLibziRpdOPhoCzuito=; b=PsLCGWQsnMjogkaT
	tiGDUc6vlpkFTNXjZB/KAucPJZbUIcNfUJTPxPeeHgLNKOW5U0+wBK1IgHr/5T2m
	wkwHktFvxumOXmFnIV18hEosy8i2yKt3vghmcZ6SrAbQk9LUBvGOAOmH+nAfnfai
	Nof9aV3GDcWY9hAkUVCJTgbyWFBF+6Jy7AxZ7IRcvEOpinUQkSnFCHRi74xdljFG
	lY9XaMoz03bsnNqM6aCScfpFAG/z6Q2tQ0Ub7MnRGIV3gYf66ClupThjLmVCtmmX
	eMHY0JjMIX9zPjpHqlXjmTYn6GsU3/uCotd2v6nedHFK1EsG97GRZB2gV40OvsJ/
	zBMmmQ==
Received: from nasanppmta02.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 41n4gd5fya-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 19 Sep 2024 14:03:15 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 48JE3DHx011315
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 19 Sep 2024 14:03:13 GMT
Received: from [10.253.37.179] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Thu, 19 Sep
 2024 07:03:08 -0700
Message-ID: <b36819ed-0e4a-4820-8c38-ac9d2c6f0f28@quicinc.com>
Date: Thu, 19 Sep 2024 22:03:05 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/5] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Document the X1E80100 QMP PCIe PHY Gen4 x8
To: Krzysztof Kozlowski <krzk@kernel.org>
CC: <manivannan.sadhasivam@linaro.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <robh@kernel.org>, <andersson@kernel.org>,
        <konradybcio@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <mturquette@baylibre.com>, <sboyd@kernel.org>, <abel.vesa@linaro.org>,
        <quic_msarkar@quicinc.com>, <quic_devipriy@quicinc.com>,
        <dmitry.baryshkov@linaro.org>, <kw@linux.com>, <lpieralisi@kernel.org>,
        <neil.armstrong@linaro.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-clk@vger.kernel.org>
References: <20240913083724.1217691-1-quic_qianyu@quicinc.com>
 <20240913083724.1217691-2-quic_qianyu@quicinc.com>
 <lrcridndulcurod7tc5z76tmfhcf5uqumkw7cijsqicmad2rim@blyor66wt4e4>
Content-Language: en-US
From: Qiang Yu <quic_qianyu@quicinc.com>
In-Reply-To: <lrcridndulcurod7tc5z76tmfhcf5uqumkw7cijsqicmad2rim@blyor66wt4e4>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: JKkUvmdw5ptZN4RXb2h3Ls-OKXVXVIZ7
X-Proofpoint-GUID: JKkUvmdw5ptZN4RXb2h3Ls-OKXVXVIZ7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 suspectscore=0
 bulkscore=0 clxscore=1011 spamscore=0 adultscore=0 lowpriorityscore=0
 mlxlogscore=999 impostorscore=0 mlxscore=0 priorityscore=1501 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2408220000
 definitions=main-2409190091
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240919_070353_715145_D78A6FFA 
X-CRM114-Status: GOOD (  13.96  )
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


On 9/16/2024 11:15 PM, Krzysztof Kozlowski wrote:
> On Fri, Sep 13, 2024 at 01:37:20AM -0700, Qiang Yu wrote:
>> PCIe 3rd instance of X1E80100 support Gen 4x8 which needs different 8 lane
>> capable QMP PCIe PHY. Document Gen 4x8 PHY as separate module.
> And this is really different hardware? Not just different number of lanes? We discussed it, but I don't see the explanation in commit msg.
Yes, PCIe3 use a different phy that supports 8 lanes and provides
additional register set, txz and rxz. It is not a bifurcation mode which
actually combines two same phys like PCIe6a. It's also not just different
number of lanes. Will explain this in commit msg.

Thanks,
Qiang
>> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
>> ---
>>   .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml    | 3 +++
>>   1 file changed, 3 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
>> index dcf4fa55fbba..680ec3113c2b 100644
>> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
>> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
>> @@ -41,6 +41,7 @@ properties:
>>         - qcom,x1e80100-qmp-gen3x2-pcie-phy
>>         - qcom,x1e80100-qmp-gen4x2-pcie-phy
>>         - qcom,x1e80100-qmp-gen4x4-pcie-phy
>> +      - qcom,x1e80100-qmp-gen4x8-pcie-phy
>>   
>>     reg:
>>       minItems: 1
>> @@ -172,6 +173,7 @@ allOf:
>>                 - qcom,sc8280xp-qmp-gen3x2-pcie-phy
>>                 - qcom,sc8280xp-qmp-gen3x4-pcie-phy
>>                 - qcom,x1e80100-qmp-gen4x4-pcie-phy
>> +              - qcom,x1e80100-qmp-gen4x8-pcie-phy
>>       then:
>>         properties:
>>           clocks:
>> @@ -201,6 +203,7 @@ allOf:
>>                 - qcom,sm8550-qmp-gen4x2-pcie-phy
>>                 - qcom,sm8650-qmp-gen4x2-pcie-phy
>>                 - qcom,x1e80100-qmp-gen4x2-pcie-phy
> Hm, why 4x4 is not here?
>
> Best regards,
> Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
