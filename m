Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0FD5C5479B
	for <linux-phy@archiver.kernel.org>; Wed, 28 Aug 2024 09:42:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zuHqfKOEZhZGFppZO3a7HTpKyWuhmIylU+chFVWGnEQ=; b=0ht2PrZR6ZflWw
	XllbUrSxuDl+3qZerXpbVT6CbHIysUCMUtI2iyL1h2ygzd3oL8bT8uwmkitLYCce6vVTTyb6pXXmv
	jbM4WD3T5ubgAaQRcnuYIh42M7FTS+B5RtqScDgHlp8U196OxupxzspQrCllWJRPnWTNNEfmISb/Q
	UbhDHDj7jg0/AXXnDbOXBJerOrNgPEj2OeQT6OPTsifO/pZgxY2UBa06c/gBiwIsdPdADrAfUhdsK
	1bvjjzs8r2qQFiAK4mLXfMscP08GtK2wukEX0WiOYJMQHSQE3Tk0xZpS4BVB6R7F2xl08pNnwA18F
	uBX3Tb8sO5vTu7dg/H5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjFCE-0000000EmLP-2Bx0;
	Wed, 28 Aug 2024 09:42:34 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjFBX-0000000Em9Q-2JQJ
	for linux-phy@lists.infradead.org;
	Wed, 28 Aug 2024 09:41:53 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 47RLowAi021973;
	Wed, 28 Aug 2024 09:41:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	G2M9Wgad7757x4Y7yhdMnzDx2L4gjT0MN/6gHvFUW08=; b=Vv/16hMq0h+orYIo
	RbV95w19NWMMOJesYH8BhQL86VCh+sGhjG2/j78sbr2tj7zUJhc2YjXa+WpVWsh6
	wdNb25YNkkebrmtkwwhZLHp0rPt7/8LUab8ZC1nC77QWSUPJkrMPGKx8NSQUwEPA
	7uZpwt25ftzcVZl0HPRUnUXf2pRGBit4QYIbGtfVWwgGftryyz6bWodQ0OcdiFZs
	UqjV6FXiv8V0IPaWcRFZXz7mAnJJuVKe3cOaCPvStd1SO444kCzPTVRPRoVn64Fr
	SSvPgnsiNmLgPyg4dUwSqM/M6wY+vledi/r/CwFds2WcdRL1V9ajZn9rpleySJVS
	CzBxVg==
Received: from nasanppmta03.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 419q2xsbaa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 28 Aug 2024 09:41:43 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA03.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 47S9fgGA014181
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 28 Aug 2024 09:41:42 GMT
Received: from [10.239.29.179] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Wed, 28 Aug
 2024 02:41:36 -0700
Message-ID: <79a294b3-90a7-4900-bac1-281d321c9a55@quicinc.com>
Date: Wed, 28 Aug 2024 17:41:32 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/8] phy: qcom-qmp: pcs-pcie: Add v6.30 register offsets
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
References: <20240827063631.3932971-1-quic_qianyu@quicinc.com>
 <20240827063631.3932971-2-quic_qianyu@quicinc.com>
 <2ojutgxk4kplxwrxxcq5zorejuohbow7dr6lhl4cwndkwzvxf6@lxg4um6krdnh>
Content-Language: en-US
From: Qiang Yu <quic_qianyu@quicinc.com>
In-Reply-To: <2ojutgxk4kplxwrxxcq5zorejuohbow7dr6lhl4cwndkwzvxf6@lxg4um6krdnh>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: qcWtSUmrOLNrIVb0U78pxP9xNMLSlD5q
X-Proofpoint-GUID: qcWtSUmrOLNrIVb0U78pxP9xNMLSlD5q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-08-28_03,2024-08-27_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 mlxscore=0
 clxscore=1011 priorityscore=1501 lowpriorityscore=0 spamscore=0
 impostorscore=0 mlxlogscore=999 phishscore=0 adultscore=0 bulkscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2407110000 definitions=main-2408280069
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_024151_767210_38E2A5A5 
X-CRM114-Status: GOOD (  14.59  )
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


On 8/27/2024 7:37 PM, Krzysztof Kozlowski wrote:
> On Mon, Aug 26, 2024 at 11:36:24PM -0700, Qiang Yu wrote:
>> x1e80100 SoC uses QMP phy with version v6.30 for PCIe Gen4 x8. Add the new
>> PCS PCIE specific offsets in a dedicated header file.
>>
>> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
>> ---
>>   .../qualcomm/phy-qcom-qmp-pcs-pcie-v6_30.h    | 25 +++++++++++++++++++
>>   1 file changed, 25 insertions(+)
>>   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6_30.h
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6_30.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6_30.h
>> new file mode 100644
>> index 000000000000..5a58ff197e6e
>> --- /dev/null
>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6_30.h
>> @@ -0,0 +1,25 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +/*
>> + * Copyright (c) 2024 Qualcomm Innovation Center. All rights reserved.
>> + */
>> +
>> +#ifndef QCOM_PHY_QMP_PCS_PCIE_V6_30_H_
>> +#define QCOM_PHY_QMP_PCS_PCIE_V6_30_H_
>> +
>> +/* Only for QMP V6_30 PHY - PCIE have different offsets than V6 */
>> +#define QPHY_PCIE_V6_30_PCS_POWER_STATE_CONFIG2		0x014
>> +#define QPHY_PCIE_V6_30_PCS_TX_RX_CONFIG		0x020
>> +#define QPHY_PCIE_V6_30_PCS_ENDPOINT_REFCLK_DRIVE	0x024
>> +#define QPHY_PCIE_V6_30_PCS_OSC_DTCT_ACTIONS		0x098
>> +#define QPHY_PCIE_V6_30_PCS_EQ_CONFIG1			0x0a8
>> +#define QPHY_PCIE_V6_30_PCS_G3_RXEQEVAL_TIME		0x0f8
>> +#define QPHY_PCIE_V6_30_PCS_G4_RXEQEVAL_TIME		0x0fc
>> +#define QPHY_PCIE_V6_30_PCS_G4_EQ_CONFIG5		0x110
>> +#define QPHY_PCIE_V6_30_PCS_G4_PRE_GAIN			0x164
>> +#define QPHY_PCIE_V6_30_PCS_RX_MARGINING_CONFIG1	0x184
>> +#define QPHY_PCIE_V6_30_PCS_RX_MARGINING_CONFIG3	0x18c
>> +#define QPHY_PCIE_V6_30_PCS_RX_MARGINING_CONFIG5	0x194
>> +#define QPHY_PCIE_V6_30_PCS_G3_FOM_EQ_CONFIG5		0x1b4
>> +#define QPHY_PCIE_V6_30_PCS_G4_FOM_EQ_CONFIG5		0x1c8
> There is no user of these. Squash it with the user, because there is
> little point in adding dead code.
>
> Best regards,
> Krzysztof
OK, will squash this three patches related to phy setting into one patch.

Thanks,
Qiang

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
