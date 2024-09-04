Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6174CD4853
	for <linux-phy@archiver.kernel.org>; Wed,  4 Sep 2024 17:21:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NML3o9xLjRfE4lmO0YASGry7MvXP1TdXRxs4r+mPQK4=; b=ueCQgeqyfRsu/s
	XNpj65Jij2Gb5F6pyEfoLiD7pDpn8jyagrKkqhcu241s9UgRfeJfcclXnz5fcdCASBEdmPJ7c7KlI
	QxpysMhy5vWq9NbyDZ8V7Yv3/lncLCCzUMUBcwS4QnMlAr4uuVg4cQmNSQaFCFGZOfpeASyXEG0bB
	rCHY5WvkqQoDcFMx8nN6NjOGIleKdWPFTvmK4uBLMp22Oh9NocY4FhncF0/+dyVWDXVsNUnNF8eNL
	JzYFm+gljXCtUrL4e57EK+8HRxUbr3ftqN/SVB5/nrxKJJJaOUnKZZWfnRBzUJjDAiiFHHKzQa/dk
	zcWUM3jZIMSZXaMXjD2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slthQ-00000005RJy-21hc;
	Wed, 04 Sep 2024 17:21:44 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sltgc-00000005R5m-3Mft
	for linux-phy@lists.infradead.org;
	Wed, 04 Sep 2024 17:20:56 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 484Akds6026179;
	Wed, 4 Sep 2024 17:20:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	eNn/39zt7ybLVISg8iNP715VpPtzk/C5TNhg4bfMq/k=; b=BBPUbpMMULWDph5A
	fSGB5AMcLKLAd0xMpn0IMMpbKWNvktJGHPPjpZ1pXHejsORzHRy7+7HtZaUskixs
	jiZ3Xc4hBngGnPl3t7H+11/pzkXsU9JvNOUiwKEWrMg7GyohYxXNBLC5qF9B8XZM
	vAZLkDzxSuwi1VyrT8b4+uhhdQWXLvYgHnribVZUPsxuhrL0ynDDRS+R8BGallKO
	Dr6fKh24Tad4PqbNzS2p1GDsnCKzZ7lThayevBqveDIEknhA/1VAJXMl+8hBwo9r
	Gkl99wGuzbix+9J1z+xHToI0EaIVAwHgu239sNxchPY7JcHFAnExTVea8RZpzFll
	ckYAHw==
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 41bt673n95-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 04 Sep 2024 17:20:34 +0000 (GMT)
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 484HKVSt016510
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 4 Sep 2024 17:20:31 GMT
Received: from [10.50.7.129] (10.80.80.8) by nalasex01c.na.qualcomm.com
 (10.47.97.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Wed, 4 Sep 2024
 10:20:22 -0700
Message-ID: <de17d37f-ed0c-4e73-91d5-fc902573212a@quicinc.com>
Date: Wed, 4 Sep 2024 22:50:17 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 1/6] dt-bindings: phy: qcom,uniphy-pcie: Document PCIe
 uniphy
To: Krzysztof Kozlowski <krzk@kernel.org>
CC: <bhelgaas@google.com>, <lpieralisi@kernel.org>, <kw@linux.com>,
        <manivannan.sadhasivam@linaro.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <andersson@kernel.org>, <konradybcio@kernel.org>,
        <p.zabel@pengutronix.de>, <dmitry.baryshkov@linaro.org>,
        <quic_nsekar@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <robimarko@gmail.com>
References: <20240830081132.4016860-1-quic_srichara@quicinc.com>
 <20240830081132.4016860-2-quic_srichara@quicinc.com>
 <e2qgpvfccpo2sd4mbrynxruvt5attqmtd5oik26of7tv7u4lq6@kvb63sglwa5b>
Content-Language: en-US
From: Sricharan Ramabadhran <quic_srichara@quicinc.com>
In-Reply-To: <e2qgpvfccpo2sd4mbrynxruvt5attqmtd5oik26of7tv7u4lq6@kvb63sglwa5b>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: gBpkfBhrm5cPj714kocbIlQR-cZtFLfW
X-Proofpoint-GUID: gBpkfBhrm5cPj714kocbIlQR-cZtFLfW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-04_15,2024-09-04_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 adultscore=0
 bulkscore=0 mlxscore=0 impostorscore=0 suspectscore=0 phishscore=0
 mlxlogscore=999 lowpriorityscore=0 spamscore=0 clxscore=1015
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2407110000 definitions=main-2409040132
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240904_102055_103218_36883465 
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



On 8/30/2024 1:53 PM, Krzysztof Kozlowski wrote:
> On Fri, Aug 30, 2024 at 01:41:27PM +0530, Sricharan R wrote:
>> From: Nitheesh Sekar <quic_nsekar@quicinc.com>
>>
>> Document the Qualcomm UNIPHY PCIe 28LP present in IPQ5018.
>>
>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
>> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
>> ---
>>   [v3] Added reviewed-by tags
>>
>>   .../phy/qcom,ipq5018-uniphy-pcie.yaml         | 70 +++++++++++++++++++
>>   1 file changed, 70 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/phy/qcom,ipq5018-uniphy-pcie.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/phy/qcom,ipq5018-uniphy-pcie.yaml b/Documentation/devicetree/bindings/phy/qcom,ipq5018-uniphy-pcie.yaml
>> new file mode 100644
>> index 000000000000..c04dd179eb8b
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/phy/qcom,ipq5018-uniphy-pcie.yaml
>> @@ -0,0 +1,70 @@
>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/phy/qcom,ipq5018-uniphy-pcie.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Qualcomm UNIPHY PCIe 28LP PHY controller for genx1, genx2
>> +
>> +maintainers:
>> +  - Nitheesh Sekar <quic_nsekar@quicinc.com>
>> +  - Sricharan Ramabadhran <quic_srichara@quicinc.com>
>> +
>> +properties:
>> +  compatible:
>> +    enum:
>> +      - qcom,ipq5018-uniphy-pcie-gen2x1
>> +      - qcom,ipq5018-uniphy-pcie-gen2x2
> 
> ... and now I wonder why there are two compatibles. Isn't the phy the
> same? We talk about the same hardware?
  We have 2 different physical phys. One with single lane and another
  with dual lane. Its same IP, but for 2 lanes, 2 sets of the phy
  specific registers needs to configured. So differentiating that here.

Regards,
  Sricharan




-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
