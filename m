Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB896C02180
	for <linux-phy@archiver.kernel.org>; Wed, 15 Jan 2025 06:10:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fazKPi9GSeKTNPXTUslqUkXjeCL7j43pJJjVEr1Csnw=; b=Z2V8lj3CKIZeY0
	J+NlVjUflwhj/iSQ1A8pXQNIz18fAS7ygvbplvMNiPwStVyhTKDyJdvu3rNPb2zyN+k35kV4dfsoK
	i4jaPYjjDfATEHUS6jeScPv7wAJpuBLSIrIZRRiz/Qp7gyikTUd2Xzt/E7Exo+XZCxNKWo9dDnStd
	Sd6N466BVfy7GNrlWUor3DBmjjExN87/KkwX+p2RMLQUqQSJ/vrizvkxmEjfmnflkKSelr+1mn4g0
	XfSUuxWgBGj5YDQMmD5ubZqE70v3ZrH73Cq4EghEQJPRrHzN4q2w4x/cD5ogKDsyCdZzNAOvH/Njb
	kbdGAi+LLlXgAAvgg3+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXwbk-0000000Akyq-3sgd;
	Wed, 15 Jan 2025 06:10:28 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXwbi-0000000AkyQ-2kVd
	for linux-phy@lists.infradead.org;
	Wed, 15 Jan 2025 06:10:27 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50F1tdxs027718;
	Wed, 15 Jan 2025 06:10:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+wZ9OFW6Tocm/ovdJVpmpMjm4fWamKruQF9KhEGEvys=; b=Mjuq66HM4wiSIAag
	AaPNNDHXCkLYyISdbidG27oa8U2bplL0Ssk3Kk/iO57rbCU1EGXx2bPREk6KmMVs
	a3x4Mbqj/6bKxJ7VH8dBZZTwvD4disQYyGm7MqM30gxiyp5pDpgAHE05FtE1OV7g
	yqacfl/Xle3NEscABuuT2m228E157NeV8Ot77TDIM4iCAtvU7iibAZqxBL+OO48n
	4esSuRzURythA42+Hs98eMCCwrDZc7llKk/hzN6WVI5OQIrXTQs8R5vQP4ZwvnDr
	jDCmWFGFLr2ylSkgtpbdgcnPkJhANWYrgCQeWzGM1e0ahbppHtqtAphR795ojypd
	dCrigQ==
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4463sm0g8w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 15 Jan 2025 06:10:15 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 50F6ADsi021363
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 15 Jan 2025 06:10:14 GMT
Received: from [10.152.195.140] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Tue, 14 Jan
 2025 22:10:08 -0800
Message-ID: <de564e46-4a6e-4393-b754-34b35bae5599@quicinc.com>
Date: Wed, 15 Jan 2025 11:40:05 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] arm64: dts: qcom: ipq5424: Enable PCIe PHYs and
 controllers
To: Varadarajan Narayanan <quic_varada@quicinc.com>
CC: <bhelgaas@google.com>, <lpieralisi@kernel.org>, <kw@linux.com>,
        <manivannan.sadhasivam@linaro.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <andersson@kernel.org>, <konradybcio@kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-pci@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <quic_srichara@quicinc.com>
References: <20241213134950.234946-1-quic_mmanikan@quicinc.com>
 <20241213134950.234946-5-quic_mmanikan@quicinc.com>
 <Z3eJQyJXSBG+oFF4@hu-varada-blr.qualcomm.com>
Content-Language: en-US
From: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
In-Reply-To: <Z3eJQyJXSBG+oFF4@hu-varada-blr.qualcomm.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 3_2duaB9QtO-ValdXUL5KxjW83haJFRj
X-Proofpoint-ORIG-GUID: 3_2duaB9QtO-ValdXUL5KxjW83haJFRj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-15_02,2025-01-13_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 mlxlogscore=713
 priorityscore=1501 phishscore=0 lowpriorityscore=0 malwarescore=0
 clxscore=1015 suspectscore=0 bulkscore=0 mlxscore=0 adultscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501150043
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250114_221026_700978_6DE4A654 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
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



On 1/3/2025 12:22 PM, Varadarajan Narayanan wrote:
> On Fri, Dec 13, 2024 at 07:19:50PM +0530, Manikanta Mylavarapu wrote:
> 
> [ .  .  . ]
> 
>> +&pcie2_phy {
>> +	status = "okay";
>> +};
>> +
>> +&pcie2 {
>> +	pinctrl-0 = <&pcie2_default_state>;
>> +	pinctrl-names = "default";
>> +
>> +	perst-gpios = <&tlmm 31 GPIO_ACTIVE_LOW>;
>> +	status = "okay";
>> +};
> 
> pcie2 should come before pcie2_phy
> 

Okay, i will update in the next version.

>> +
>> +&pcie3_phy {
>> +	status = "okay";
>> +};
>> +
>> +&pcie3 {
>> +	pinctrl-0 = <&pcie3_default_state>;
>> +	pinctrl-names = "default";
>> +
>> +	perst-gpios = <&tlmm 34 GPIO_ACTIVE_LOW>;
>> +	status = "okay";
>> +};
> 
> same here.

Okay, i will update in the next version.

Thanks & Regards,
Manikanta.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
