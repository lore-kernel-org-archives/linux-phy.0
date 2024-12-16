Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2EB79E7717F
	for <linux-phy@archiver.kernel.org>; Mon, 16 Dec 2024 09:55:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/D99mgAhvicG3/eGV7LDmQvCjo8VwKKdUwfUiConvIA=; b=vz6D0qz7aBu8iZ
	CInjbNqmjIkYMO4NMiJTzGEKyfdHdJuuFbqOuorjP5RqFOK4W1DJEnpYrBNjyO1GVPqnYe0YCdRU9
	12kC7FsYCwaF+iB2fvC79Xk6C8BJPw6rNxp6J5BBM9FzDIg9il2XaWwDc1j9M1iclmNBH9lqBF7Im
	BsbobelOe8n0hJuNGpRtSsID3MeoTXYgTsC5KKG/iGKKD98eISuSKSu/O5DMz4NPSanRIZgjj0t4z
	kTu1pW/8HXC2r82xAs2g+3PzP/eoP7PUokGdRi6CsWdRx2+tCuJyXN4w0apSCkGk1X7q011R55jTG
	UvE5Ys9xkwb1dfXUa8qA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tN7p1-00000009bAy-3tpQ;
	Mon, 16 Dec 2024 09:55:27 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tN7oz-00000009bAK-0mNj
	for linux-phy@lists.infradead.org;
	Mon, 16 Dec 2024 09:55:26 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BG6XT7D022877;
	Mon, 16 Dec 2024 09:55:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=MzpkExzkjO+Oe4+XXqlID5
	yMitTzocLEHs0r0MEFaGE=; b=VothdvFKFDYGVdp/gVMvlwjnNyNf+E6Z+KvrV5
	YoH5HANRg70nqK82ZcaSfpWqwHm4Hdgsao5MLp0/zAhCx5pSelIgu3qrekk/b3eM
	CwTIeIIhu6AYwAXH7Yzvr0BcBoXMQShqWjr/p9rXcLWnsFiO+Kkp8RnXNRPDiwDA
	5MR/ciSrscsggWB72d3EcG9hUpOnOn54CyrrxQOEfwKxcdp9xHEPJg9PEDBX0D2P
	KOES7+MJ8Bn+IolZzkymrHx9XCbNu0gtAuuZaUkct067FVLHqv2bPUCIV6i2BP6T
	EfEL7HiG7mMj29R/7Q8PdgFW21KTsCajrB4M8h4lwLAdj/rA==
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43jf1w8kfg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 16 Dec 2024 09:55:07 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4BG9t6vE011979
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 16 Dec 2024 09:55:06 GMT
Received: from liuxin-gv.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Mon, 16 Dec 2024 01:55:00 -0800
From: Xin Liu <quic_liuxin@quicinc.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam
	<manivannan.sadhasivam@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
CC: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>, Andy Gross <agross@kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-scsi@vger.kernel.org>, <quic_jiegan@quicinc.com>,
        <quic_aiquny@quicinc.com>, <quic_tingweiz@quicinc.com>,
        <quic_sayalil@quicinc.com>
Subject: [PATCH v4 0/3] Enable UFS on QCS615
Date: Mon, 16 Dec 2024 17:54:36 +0800
Message-ID: <20241216095439.531357-1-quic_liuxin@quicinc.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: UJ3m837BFsi87YY_BteA56BSe0QvotcA
X-Proofpoint-ORIG-GUID: UJ3m837BFsi87YY_BteA56BSe0QvotcA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 mlxscore=0
 impostorscore=0 suspectscore=0 phishscore=0 adultscore=0 bulkscore=0
 lowpriorityscore=0 spamscore=0 mlxlogscore=999 priorityscore=1501
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412160082
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_015525_246415_7463F561 
X-CRM114-Status: GOOD (  10.17  )
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

From: Sayali Lokhande <quic_sayalil@quicinc.com>

Add UFS support to the QCS615 Ride platform. The UFS host controller and
QMP UFS PHY hardware of QCS615 are derived from SM6115. Include the
relevant binding documents accordingly. Additionally, configure UFS-related
clock, power, and interconnect settings in the device tree.

This patch series depends on below patch series:
https://lore.kernel.org/all/20241104-add_initial_support_for_qcs615-v5-0-9dde8d7b80b0@quicinc.com/
https://lore.kernel.org/all/20241105032107.9552-1-quic_qqzhou@quicinc.com/
https://lore.kernel.org/all/20241212-correct_gpio_ranges-v1-0-c5f20d61882f@quicinc.com/

Signed-off-by: Xin Liu <quic_liuxin@quicinc.com>
---
Changes in v4:
- PATCH 2/3: Modify ICC(cpu to ufs); delete redundant required-opps.
- PATCH 3/3: Add ufs reset-gpios.
- Link to v3: https://lore.kernel.org/all/20241122064428.278752-1-quic_liuxin@quicinc.com/
Changes in v3:
- PATCH 1/3: Adjust the order of SOB.
- PATCH 2/3: Modify some formatting issues: Wrong indentation, 
  split into one entry per line.
- Link to v2: https://lore.kernel.org/all/20241119022050.2995511-1-quic_liuxin@quicinc.com/
Changes in v2:
- PATCH 1/3:Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
  Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
- PATCH 2/3: Use an OPP table instead of freq-table-hz.And modify
  some formatting issues.
- PATCH 3/3: Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
- Link to v1: https://lore.kernel.org/all/20241017042300.872963-1-quic_liuxin@quicinc.com/

Xin Liu (3):
  dt-bindings: ufs: qcom: Add UFS Host Controller for QCS615
  arm64: dts: qcom: qcs615: add UFS node
  arm64: dts: qcom: qcs615-ride: Enable UFS node

 .../devicetree/bindings/ufs/qcom,ufs.yaml     |   2 +
 arch/arm64/boot/dts/qcom/qcs615-ride.dts      |  17 +++
 arch/arm64/boot/dts/qcom/qcs615.dtsi          | 113 ++++++++++++++++++
 3 files changed, 132 insertions(+)
---
base-commit: ec29543c01b3dbfcb9a2daa4e0cd33afb3c30c39

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
