Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CEA1CC4345F
	for <linux-phy@archiver.kernel.org>; Thu,  2 May 2024 08:20:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Fyz7kt8xCOAFc1j2AYNItFUXxZxxX+jTZsTbWOgRYus=; b=G9Z53Q8wTBWhXC
	i0Ctt2NQXbYG76BuTod+S9jObVwkC3m4ozghRSXgxKcnEKKpztVr9gjKZ1U9G7GMYDAxSA3Jiwdwx
	sCnnBeeZLVn7f+yWTZBGeiHo5ynJJyzvBhitBZRjjwpkkw4Cv20jWd1q2vnSZQp1jhbvi6549GSDA
	8lnMeageiuLIa8DEH7dqwenWwGj0TEBojB0JMmYQV4oI7YO4m69IqK7xK5PvBqXf/w5No1vu3HCdG
	H2zXATJm+tAOfivvzjsPqXQD8DoezXCyQs5VEfQmzFmpDHIgz5evhOx5m5hPfA3+G7yfn3SiTYXBz
	YzYRKZctpJuYT1ekySzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2RgV-0000000BxjO-1yUk;
	Thu, 02 May 2024 08:20:55 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2RgR-0000000BxiD-2iRN
	for linux-phy@lists.infradead.org;
	Thu, 02 May 2024 08:20:53 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 44279je0026169;
	Thu, 2 May 2024 08:20:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding:content-type; s=qcppdkim1; bh=hwjiGiF
	W4B0QrctQsPizBFbOT8HPimNZ3ywMU1YKCDk=; b=oi/AB/7b6fb3DW7ZfAaUKsy
	JKVPXwDyE6CvUYt1n3/IAP8Y2IHtxJG0FcIvLdPLWQsUEW6spM9O8bVKfzvhI1Bv
	XlZkqjjH1uvTJeFMjnHCV6wSYdzcF0lYyCSRPOa5AGdO7jCm6skkutcO7m04zMTl
	V5xD0T13uMXxUVAKBrRzSmN46Mjgioe07rxk0C1dd2lZhEkM/I56wnjVYR0RvKfn
	qbJYACk0f0tXnnH0OixtQ1NO2TQVHv0uAOCZA0Gqpkc6M4HCB2pOAZ+pAjAASsGu
	099lRJFiVKLXUfTua5D2VKKMOBpiWnXh8eOIYzGWYUrCroU1378OKTZH9RonMyA=
	=
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3xu71jbddm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 02 May 2024 08:20:41 +0000 (GMT)
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 4428KerY007755
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 2 May 2024 08:20:40 GMT
Received: from hu-kbajaj-hyd.qualcomm.com (10.80.80.8) by
 nalasex01b.na.qualcomm.com (10.47.209.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Thu, 2 May 2024 01:20:34 -0700
From: Komal Bajaj <quic_kbajaj@quicinc.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Adrien Thierry <athierry@redhat.com>,
        Mantas Pucka <mantas@8devices.com>, Abel Vesa <abel.vesa@linaro.org>
CC: <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>,
        Bjorn Andersson <quic_bjorande@quicinc.com>,
        Wesley Cheng <quic_wcheng@quicinc.com>, <quic_ppratap@quicinc.com>,
        Jack Pham
	<quic_jackp@quicinc.com>,
        Krishna Kurapati PSSNV <quic_kriskura@quicinc.com>,
        Komal Bajaj <quic_kbajaj@quicinc.com>
Subject: [PATCH v3 0/4] Add USB Support on Qualcomm's QDU/QRU1000 Platform
Date: Thu, 2 May 2024 13:50:13 +0530
Message-ID: <20240502082017.13777-1-quic_kbajaj@quicinc.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: Alqeo4YeGFiNkuwSa-v7rUG0pV7cr2nM
X-Proofpoint-ORIG-GUID: Alqeo4YeGFiNkuwSa-v7rUG0pV7cr2nM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1011,Hydra:6.0.650,FMLib:17.11.176.26
 definitions=2024-05-01_16,2024-05-02_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 mlxlogscore=589 bulkscore=0 adultscore=0 priorityscore=1501
 impostorscore=0 phishscore=0 mlxscore=0 lowpriorityscore=0 spamscore=0
 clxscore=1011 malwarescore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2404010003 definitions=main-2405020049
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240502_012051_722627_921B0868 
X-CRM114-Status: UNSURE (   9.63  )
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

This series adds support of USB3 PHY support for Qualcomm's QDU/QRU1000 Platform.

---------
Changes in v3:
* Rebased on linux-next
* Link to v2: https://lore.kernel.org/linux-arm-msm/20240319090729.14674-1-quic_kbajaj@quicinc.com/

Changes in v2:
* Dropped extra lines
* Sorted the tables alphabetically
* Link to v1: https://lore.kernel.org/linux-arm-msm/20240311120215.16845-1-quic_kbajaj@quicinc.com/

Komal Bajaj (4):
  dt-bindings: phy: qcom,usb-snps-femto-v2: Add bindings for QDU1000
  dt-bindings: phy: qcom,qmp-usb: Add QDU1000 USB3 PHY
  dt-bindings: usb: dwc3: Add QDU1000 compatible
  phy: qcpm-qmp-usb: Add support for QDU1000/QRU1000

 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   |  2 +
 .../bindings/phy/qcom,usb-snps-femto-v2.yaml  |  1 +
 .../devicetree/bindings/usb/qcom,dwc3.yaml    |  3 ++
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c       | 47 +++++++++++++++++++
 4 files changed, 53 insertions(+)

--
2.42.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
