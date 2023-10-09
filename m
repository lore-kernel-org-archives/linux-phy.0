Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DBABE95A91
	for <linux-phy@archiver.kernel.org>; Mon,  9 Oct 2023 09:11:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CFlDc064URXIyIXQCoNX7M2cYgOUuEWKM4DBBEXSHh8=; b=eI5clTweWdI4t49CIerMIfWeJ+
	8tQNbPysrMkV5TE+yY9CqsK4tLEiEtxMtczZnnnqU/XTcRYoYr6n0OwJ36Y4SyM35pV9UQT5LdCNB
	lqwtu1StgHbuSeNV6J9NJ6VRgRrjqC4Lc3Sn+2ZG7F9EKT5CkC7aGwbDAt+VLw7+VyJ9GuO5mBBq2
	rkDPz+7AO6mQuhHeohAHEh83wyWe1vgcEBTPecDonLWwBxv5aNf3u7T0P6Z1QPqPH6mCiF/LKQyNT
	5/XcL2ZZslutAUj0U5RHXwQzIXa5rrS8EsOVrZnbWYO3N8xsYcq+LCnmaOg656Ct0q2ZmEe3eCoAA
	AcTwGtVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpmIH-00A3wG-07;
	Mon, 09 Oct 2023 09:11:17 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpmID-00A3vr-2w
	for linux-phy@lists.infradead.org;
	Mon, 09 Oct 2023 09:11:15 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3997OKF5008529;
	Mon, 9 Oct 2023 09:10:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=0VWgAV3APZKwq53MzqWBPU0ZhngVBzXdgqSQn7ZYvfU=;
 b=PO83jcsRCy6ZL3OHrdP7/2twqSIQJbFp90vMKbwukPuXF6eSuUmZsAvPC4Lnowza63GT
 L/4l8KjeYmKf3uMEydI1XV4VnuizM3i98Z5S42tZTyKrML9eSsQl+vMXAYSMw6uDbe8B
 t5WXNb4JUHYiBYvKA6SPzCXdVlrwpDL6O+jAKgAcI2wx3LlrsP6YB9B5bFAUEUMD6YYw
 jccoBuGJFQ8MCSI5BTzmOu3DK6gOyRDyidjleg1P/nwLoBBz0E9VtOu32MN2/XsuVM0c
 IwbKlF6BbYoEWsnIRBg6btIEYOU318h5+YCPq1UeiTHeZd4/xV6E5ewTW/HSccGacF/A hQ== 
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tkh4d9yku-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 09 Oct 2023 09:10:59 +0000
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3999AvP5023167
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 9 Oct 2023 09:10:57 GMT
Received: from [10.201.200.63] (10.80.80.8) by nalasex01b.na.qualcomm.com
 (10.47.209.197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.36; Mon, 9 Oct
 2023 02:10:51 -0700
Message-ID: <bce3dd3e-4eb2-4916-86a4-f0554007f9d0@quicinc.com>
Date: Mon, 9 Oct 2023 14:40:47 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/6] dt-bindings: PCI: qcom: Add IPQ5108 SoC
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@linaro.org>, <agross@kernel.org>,
        <andersson@kernel.org>, <lpieralisi@kernel.org>, <kw@linux.com>,
        <robh@kernel.org>, <bhelgaas@google.com>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <mani@kernel.org>,
        <p.zabel@pengutronix.de>, <quic_srichara@quicinc.com>,
        <quic_varada@quicinc.com>, <quic_ipkumar@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-pci@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>
References: <20231003120846.28626-1-quic_nsekar@quicinc.com>
 <20231003120846.28626-3-quic_nsekar@quicinc.com>
 <123f7c9a-587c-410f-a3fe-545f10bd3d09@linaro.org>
From: Nitheesh Sekar <quic_nsekar@quicinc.com>
In-Reply-To: <123f7c9a-587c-410f-a3fe-545f10bd3d09@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: WHlvOO7ui5HEWE6AN5iPjTkTuiVquzbN
X-Proofpoint-ORIG-GUID: WHlvOO7ui5HEWE6AN5iPjTkTuiVquzbN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-09_07,2023-10-06_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 suspectscore=0
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 phishscore=0
 spamscore=0 clxscore=1015 adultscore=0 impostorscore=0 mlxlogscore=628
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2310090076
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231009_021113_949984_5F729C72 
X-CRM114-Status: GOOD (  11.83  )
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


On 10/7/2023 5:55 AM, Konrad Dybcio wrote:
> On 3.10.2023 14:08, Nitheesh Sekar wrote:
>> Add support for the PCIe controller on the Qualcomm
>> IPQ5108 SoC to the bindings.
>>
>> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
>> ---
> [...]
>
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - qcom,pcie-ipq5018
>> +    then:
>> +      properties:
>> +        clocks:
>> +          minItems: 6
>> +          maxItems: 6
>> +        clock-names:
>> +          items:
>> +            - const: iface # PCIe to SysNOC BIU clock
> What's a BIU?
>
> Konrad
It is Bus Interface Unit.

Thanks,
Nitheesh

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
