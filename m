Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33DD4D2F7EA
	for <linux-phy@archiver.kernel.org>; Thu, 17 Oct 2024 04:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Uni1b0LN4z9sLepM42MpMQ6hLjI+uEZvn30noFvDDwc=; b=amTijkXp8+oWZH
	rsoY089JExU25sA9z4b0wNV3d11+q3O10LzqTkQEpLjGue2KSujeBQRitux0rdBy1qksiLeeNTsak
	JKfWVgPltUmB2G5IUv34P/roEtCYxd2sNcBsJimgmMqccCRHLs0dQRtvi1R/hvyIL8d9v4dGxmSUI
	RPNVZoPgiuQ841FyI/nFobS+A8K7JDIfdF+Qqjoz2xCWc9uoppt76SrdXje9oQk9vna0lJZZ8rURA
	rm3Fek9kPw7NNOXCLDXPbsbMocgU90X5SNX0FkXYTuJMVmy3oPmLBJP7WNSSaxnzxSmfzL/fUV9UG
	OL1sKzmlknETwKuWpDYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1I3E-0000000DiMn-3QoO;
	Thu, 17 Oct 2024 04:23:52 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1I39-0000000DiMC-2T3P
	for linux-phy@lists.infradead.org;
	Thu, 17 Oct 2024 04:23:51 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49H0N9nr010224;
	Thu, 17 Oct 2024 04:23:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=nsGiqOGRtHAx5CaZ1Icwl7
	KnYHotsWjzGfffnFggC0U=; b=T41cO075PnAJ2FUUuzSx2PibGa+77PqpkK71Yr
	0g70E5i9F7p+jSmGSMOkD7g98Zw1ahal/T0NMaQrNThLCrGKo2wG3g4dtASoJsg8
	O51bJGMqkIocOksGWUvHGFaFh6lKJG2fLNq82i5i2hu1kFxCwXYZqFlqNFhkTtFY
	8ooDYyfjEJgqLijccwwnfOnuUHqc96VIuDoEFuwvVuVdKJsDfqunCWwxkTe3Lja5
	i5E7tlmexmsWgk7hm8tWLQsxEaH7e/bP4XawSvIIJdNjb6r7THqQiojfAQQRvtt6
	UJxhEfLpMKaRcj9SQhJYwwzV4fOmSIzEbCXb0y86DKSYpwbw==
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42ar050ggv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 17 Oct 2024 04:23:36 +0000 (GMT)
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 49H4NaaM019426
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 17 Oct 2024 04:23:36 GMT
Received: from liuxin-gv.qualcomm.com (10.80.80.8) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Wed, 16 Oct 2024 21:23:29 -0700
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
Subject: [PATCH v1 0/4] Enable UFS on QCS615
Date: Thu, 17 Oct 2024 12:22:56 +0800
Message-ID: <20241017042300.872963-1-quic_liuxin@quicinc.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 8Fu7MJ7BqXGfQ1Z8xPhDmlnS-0AxJvZr
X-Proofpoint-ORIG-GUID: 8Fu7MJ7BqXGfQ1Z8xPhDmlnS-0AxJvZr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 mlxlogscore=999
 clxscore=1011 spamscore=0 suspectscore=0 bulkscore=0 adultscore=0
 priorityscore=1501 mlxscore=0 lowpriorityscore=0 malwarescore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410170029
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_212347_660140_7EC2E4D7 
X-CRM114-Status: UNSURE (   9.93  )
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

From: Sayali Lokhande <quic_sayalil@quicinc.com>	
	
Add UFS support to the QCS615 Ride platform. The UFS host controller and
QMP UFS PHY hardware of QCS615 are derived from SM6115. Include the
relevant binding documents accordingly. Additionally, configure UFS-related
clock, power, and interconnect settings in the device tree.

Signed-off-by: Xin Liu <quic_liuxin@quicinc.com>
---
This patch series depends on below patch series:
https://lore.kernel.org/all/20240926-add_initial_support_for_qcs615-v3-0-e37617e91c62@quicinc.com/
https://lore.kernel.org/all/20241011063112.19087-1-quic_qqzhou@quicinc.com/

Xin Liu (4):
  dt-bindings: phy: Add QMP UFS PHY comptible for QCS615
  dt-bindings: ufs: qcom: Add UFS Host Controller for QCS615
  arm64: dts: qcom: qcs615: add UFS node
  arm64: dts: qcom: qcs615-ride: Enable UFS node

 .../phy/qcom,sc8280xp-qmp-ufs-phy.yaml        | 45 ++++++-----
 .../devicetree/bindings/ufs/qcom,ufs.yaml     |  2 +
 arch/arm64/boot/dts/qcom/qcs615-ride.dts      | 16 ++++
 arch/arm64/boot/dts/qcom/qcs615.dtsi          | 74 +++++++++++++++++++
 4 files changed, 117 insertions(+), 20 deletions(-)
---
base-commit: b852e1e7a0389ed6168ef1d38eb0bad71a6b11e8

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
