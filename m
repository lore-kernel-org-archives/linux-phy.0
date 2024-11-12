Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 005FAD41D6F
	for <linux-phy@archiver.kernel.org>; Tue, 12 Nov 2024 09:14:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3GRH6AjBxbRZ1yWIHkNuaD8MjeSAI2OmOK0R+GH1A7s=; b=KBL2BzffubO7Yn
	SyscLMvuGspWtwUHnA4C5bsUYJgaYV4yA0jaGkHBGJOgHcJY8QfTA2EG46iMg919kMbyWD64TZVYC
	lMu1jgNAbEinQTZYKkT1hIF/4WQqhQojW7tZrSx/Q8oqqasYJYe+0CscaH4CxLE9AMA2bQcRCiDD/
	LkrRYaJuU1qzwiVyt3gx8qgC0SG3XoqwjypyPt6eRYLHDBQXj9NDttBgUog7HwwFEbw7FyHg701G7
	B0xpe9bu/0B10EVkGcQdnIDGOY2VjfAml3XEKd7PwJPUz5miVLnVY7JwSwRx39MSNYiFd9sdWai0M
	dcY63MSb/8+bmNeaHuRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAmyf-00000002mJ8-1MqE;
	Tue, 12 Nov 2024 09:14:25 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAmyc-00000002mI3-3Zve
	for linux-phy@lists.infradead.org;
	Tue, 12 Nov 2024 09:14:24 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AC3qGPP002654;
	Tue, 12 Nov 2024 09:14:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=RMXrrV93Lsc3ernjt8xVBh
	NsGntP1aDnZC7ZTDMPDAU=; b=N9kq8GSr2RudWZ+rbP+x2KB8Stvrmev5jiztbn
	5p/0i6AdysgIGNHTbPEthspis30NHj0OUzC2zeOYEmaPkJINxhbhss5jbJKMbC3d
	rd8SSqtEx0Hmggrb8NyV5c/O5C8GpDYMJZnfcTlVk4anXjmEbYy8be0rfBk4OmOx
	2mq9ER0SpTLsGgNRr8lKB3EkOz9GzorMJZv3bdNNQpNM0/AZXwjkaWpRhBZTqVjd
	OXEmofFvd7AMbY6H85MN22JcGSTZcuR1cVl8XrZNQPlkeXsFlES49hKF8E31q89i
	TN0BZosuvN6sCtLVnXgo77eDQ5kT+cDaBun6JLs+DyxcIBBw==
Received: from nasanppmta02.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42t0466qme-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 12 Nov 2024 09:14:15 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4AC9EEKL004085
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 12 Nov 2024 09:14:14 GMT
Received: from hu-varada-blr.qualcomm.com (10.80.80.8) by
 nasanex01b.na.qualcomm.com (10.46.141.250) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Tue, 12 Nov 2024 01:14:08 -0800
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <gregkh@linuxfoundation.org>, <andersson@kernel.org>,
        <konradybcio@kernel.org>, <dmitry.baryshkov@linaro.org>,
        <mantas@8devices.com>, <quic_rohiagar@quicinc.com>,
        <johan+linaro@kernel.org>, <quic_kriskura@quicinc.com>,
        <abel.vesa@linaro.org>, <quic_kbajaj@quicinc.com>,
        <quic_wcheng@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-usb@vger.kernel.org>
CC: Varadarajan Narayanan <quic_varada@quicinc.com>
Subject: [PATCH v1 0/6] Enable IPQ5424 USB support
Date: Tue, 12 Nov 2024 14:43:49 +0530
Message-ID: <20241112091355.2028018-1-quic_varada@quicinc.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: LizYFiQw2VOe8qqw0Gw9lFcydlz-pgny
X-Proofpoint-ORIG-GUID: LizYFiQw2VOe8qqw0Gw9lFcydlz-pgny
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 bulkscore=0 clxscore=1011 priorityscore=1501 spamscore=0 suspectscore=0
 mlxlogscore=540 impostorscore=0 adultscore=0 phishscore=0 mlxscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411120075
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241112_011423_078216_7F791224 
X-CRM114-Status: UNSURE (   8.56  )
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

The IPQ5424 SoC has both USB2.0 and USB3.0 controllers. The USB3.0
can connect to either of USB2.0 or USB3.0 phy and operate in the
respective mode.

Varadarajan Narayanan (6):
  dt-bindings: phy: qcom,qusb2: Document IPQ5424 compatible
  phy: qcom-qusb2: add QUSB2 support for IPQ5424
  dt-bindings: phy: qcom,qmp-usb: Add IPQ5424 USB3 PHY
  phy: qcom: qmp: Enable IPQ5424 support
  dt-bindings: usb: qcom,dwc3: Add IPQ5424 to USB DWC3 bindings
  arm64: dts: qcom: Add USB controller and phy nodes for IPQ5424

 .../bindings/phy/qcom,qusb2-phy.yaml          |   1 +
 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   |   2 +
 .../devicetree/bindings/usb/qcom,dwc3.yaml    |   1 +
 arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts   |  67 ++++++++
 arch/arm64/boot/dts/qcom/ipq5424.dtsi         | 153 ++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c       |   3 +
 drivers/phy/qualcomm/phy-qcom-qusb2.c         |  28 ++++
 7 files changed, 255 insertions(+)


base-commit: 28955f4fa2823e39f1ecfb3a37a364563527afbc
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
