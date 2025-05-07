Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B02FFC3ABC0
	for <linux-phy@archiver.kernel.org>; Wed,  7 May 2025 09:16:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=urubNBUglN9nRiB2C7JY3J7s0qsnW7mxRii09427ivs=; b=Sr62LlbBGqVkFD
	4WdPvXSdtdCHtlDBbI29z29m3mvuKzwHypJCds1Ni0ytXZDKrkOyfbs+cvXAcOYeFqOVgbxIhr9wy
	lOfeD4o+DHlJeyPitkm6o45zyngZIPdQyTMi0ZkAfrYYSjAUCFzpVwjyyZg3xQMqvb6t8UvvQkVO2
	tcJ48mch/uNDQMLHEBlH2MNnG/6Y0MgOvlsmztLTPt5SXgPTZoeW9tUSK/UFBYQ/Bk/c4jzTjQcfy
	53/Y4SWqU+tb8zeJkltfM2LMcOzVtF0tQPrx5dD2XMgNNeXwDjJFid5YtFqfGFrVtjIzkH+qRUkBr
	bcpIJgpSVZmMHIMY6Wtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCatX-0000000Etgv-1Dhn;
	Wed, 07 May 2025 09:16:51 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCa04-0000000EhxD-0gqp
	for linux-phy@lists.infradead.org;
	Wed, 07 May 2025 08:19:33 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5471GtMt021520;
	Wed, 7 May 2025 08:19:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tTbDVIg2eElIftbWZJV9dE8wLCXNVHs67i9kLvRpjbk=; b=abVzUuQdZBgqTsoS
	lXgbuiM1BGrJBL+CeOGOAg3tcbTqQynwpBmtNBgi9bCh+GWa7qz1oNAFiQT7x7nP
	s6/gr33oQJc1tGXQOrRRW4fqwdjIHLRIyMBeiohf5/gRUz4L9T0B1+VlD71/ZBVa
	GOnUOdWzTJCuSFQvkRM76IFygV6b2tf3i7dMpn6uo45ZyM/L0yvLF36SNQEDkTJ6
	iG3cxlIBvZCz1COWwjiMiJD1XJ3gX7TUi73/JTKyEUsPC1Z7D9vOShWOn4P7aUea
	Fot3GhcRFHng/nkj4Frgq3wXkvVko48Ehw9zVU3H62ooC4/q9mpjgQZI8QF0Aegt
	JljGgA==
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46fdwtur5e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 07 May 2025 08:19:21 +0000 (GMT)
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA03.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 5478JLhH025949
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 7 May 2025 08:19:21 GMT
Received: from [10.253.13.113] (10.80.80.8) by nalasex01b.na.qualcomm.com
 (10.47.209.197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Wed, 7 May 2025
 01:19:14 -0700
Message-ID: <8fef4573-0527-44d8-a481-f3271d9ffa33@quicinc.com>
Date: Wed, 7 May 2025 16:19:12 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/6] dt-bindings: PCI: qcom,pcie-sa8775p: document
 qcs8300
To: Krzysztof Kozlowski <krzk@kernel.org>
CC: <vkoul@kernel.org>, <kishon@kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <dmitry.baryshkov@linaro.org>, <neil.armstrong@linaro.org>,
        <abel.vesa@linaro.org>, <manivannan.sadhasivam@linaro.org>,
        <lpieralisi@kernel.org>, <kw@linux.com>, <bhelgaas@google.com>,
        <andersson@kernel.org>, <konradybcio@kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <quic_qianyu@quicinc.com>,
        <quic_krichai@quicinc.com>, <quic_vbadigan@quicinc.com>
References: <20250507031019.4080541-1-quic_ziyuzhan@quicinc.com>
 <20250507031019.4080541-3-quic_ziyuzhan@quicinc.com>
 <20250507-quixotic-handsome-wallaby-4560e3@kuoka>
From: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
In-Reply-To: <20250507-quixotic-handsome-wallaby-4560e3@kuoka>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=VPPdn8PX c=1 sm=1 tr=0 ts=681b1789 cx=c_pps
 a=ouPCqIW2jiPt+lZRy3xVPw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8
 a=ikXEO7tarp_Agu9fICoA:9 a=QEXdDO2ut3YA:10 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: t4dsG6riyQwFXIemS2waFsuAtlPj0PpN
X-Proofpoint-ORIG-GUID: t4dsG6riyQwFXIemS2waFsuAtlPj0PpN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA3MDA3NiBTYWx0ZWRfXxFDs0yPDeK2U
 mygi0tHEanrGqf+6r37pOGJVacwBouQoo/4sVKuVT5yAUiXc51GtP0eWSm7ArUclIZP7m8tymjW
 pAc8g6S0VT1pE5ubDtlxTjFP8RZTmOpxzGi/9jtpmjTU9Y8kbrkE8hZ5hcWB83q68P6dySdTesX
 s36k3wTTfUJ28nqsg07fuHdM2rTR0NiGHm/P5lWHvB2O3TWGR830lBcGlxhHxcEkMs6Ofc3pqut
 jYj+a4XwPwAiKBvtwYlN+CqFzkbpFdISsHWLZ+L2ks5kVbjOZxF/fkzPQml5s4n/2SDxvADgbhK
 BQZzaGmF966yFla1gUNLYKXLppe4we87hVOVBAg/9c379DfSokJKIEqzDphgagbpjfnsCyvARfb
 WeBQQ5urynxy80kJ8zMEMv7ZUUNRUOsvrTFXNYe+8DL16IGTDiOme9gr5N2NY/yJdD8xCkKT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-07_03,2025-05-06_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 suspectscore=0 adultscore=0 mlxscore=0
 bulkscore=0 clxscore=1015 lowpriorityscore=0 impostorscore=0 malwarescore=0
 mlxlogscore=999 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505070076
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250507_011932_215943_C9F8D41E 
X-CRM114-Status: GOOD (  16.13  )
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


On 5/7/2025 1:10 PM, Krzysztof Kozlowski wrote:
> On Wed, May 07, 2025 at 11:10:15AM GMT, Ziyue Zhang wrote:
>> Add compatible for qcs8300 platform, with sa8775p as the fallback.
>>
>> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
>> ---
>>   .../bindings/pci/qcom,pcie-sa8775p.yaml       | 26 ++++++++++++++-----
>>   1 file changed, 19 insertions(+), 7 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
>> index efde49d1bef8..154bb60be402 100644
>> --- a/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
>> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
>> @@ -16,7 +16,12 @@ description:
>>   
>>   properties:
>>     compatible:
>> -    const: qcom,pcie-sa8775p
>> +    oneOf:
>> +      - const: qcom,pcie-sa8775p
>> +      - items:
>> +          - enum:
>> +              - qcom,pcie-qcs8300
>> +          - const: qcom,pcie-sa8775p
>>   
>>     reg:
>>       minItems: 6
>> @@ -45,7 +50,7 @@ properties:
>>   
>>     interrupts:
>>       minItems: 8
>> -    maxItems: 8
>> +    maxItems: 9
> I don't understand why this is flexible for sa8775p. I assume this
> wasn't tested or finished, just like your previous patch suggested.
>
> Please send complete bindings once you finish them or explain what
> exactly changed in the meantime.
>
> Best regards,
> Krzysztof

Hi Krzysztof
Global interrupt is optional in the PCIe driver. It is not present in 
the SA8775p PCIe device tree node, but it is required for the QCS8300
I did the DTBs and yaml checks before pushing this patch. This is how
I became aware that `maxItem` needed to be changed to 9.

BRs
Ziyue


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
