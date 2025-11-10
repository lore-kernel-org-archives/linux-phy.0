Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF268CCF9E3
	for <linux-phy@archiver.kernel.org>; Mon, 10 Nov 2025 11:58:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WETpl1wD1cDKmqVmxYP5bEn0G3RGZv8hGoHEfLsEtnM=; b=OYAoK50/yFlOhg
	2UTQTIDFcCoaY/4wqLHrIsRA1t4yCmnfUyC/0YsAktrC9HcXsRcjEUkkLFuPydw13aWlUuDY1QZ5Z
	1GLdhww4BNyvMepUve6zs/1VKs55mTEzmdQrpUak2K4/pijpuuxrg7tT0i0XhuMvpuYfyvWA9XBny
	cCPas1PkR1thJ7eoLBb6Bp2dvDyEGLgUIiE94zi/lViIFV2DtJib1IkCyO05LP3rW8o3yLpwZnILD
	zUO31fUs8W9N9PPtiPo3hfoO73Adb27rGmfdWxsvX/Xh5YBqcgkO/7LNR6U6IrDN0ej32D26LdS/I
	1lZm8myWZVP6Ffj5WKiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIQXQ-00000005MgP-2Vd3;
	Mon, 10 Nov 2025 11:58:24 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIQXN-00000005Mfe-4BUB
	for linux-phy@lists.infradead.org;
	Mon, 10 Nov 2025 11:58:23 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AA8kGZJ1930709;
	Mon, 10 Nov 2025 11:58:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=Q/f7Q+wlI2H9VeH/agtbbd
	o1vlrv/b5zEz2MGy/ya5g=; b=MoiDHZvBYeoCduIiXPaWA5M4tbk0QkuVw6v+DB
	53DoJUAQDkSaJEUTwtySbdpH0MDgobM55csGVt/tQTo4V8p0p6ZlmT6uBxI8gBrB
	4RnBN1ZgtHbQdWecMRgbYBAloQRzu8bcbFUH10z2gvlMsEgrJkOPMOKf9CBe7nc6
	Alethdm8Q/iwnj1ycMLjVfXcb5tdAtvVELWoZoRX1ow5EEf0fMOLSE0UWJw7ruJ4
	Xt6/ewvVXmfneEXJ/S2a0qriNMbXuejlmy4Ny6SQGthirGTmOaARtwhI0XAi3au4
	ZSPwCklKc9zOE7SkHPqYqugfufvZ+ey6QtYcOcLOYgnNjIfg==
Received: from apblrppmta01.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aaue0jfe6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 Nov 2025 11:58:16 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 5AABwDx7023599;
	Mon, 10 Nov 2025 11:58:13 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTPS id 4a9xxkqeha-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 Nov 2025 11:58:13 +0000
Received: from APBLRPPMTA01.qualcomm.com (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 5AABwDEO023593;
	Mon, 10 Nov 2025 11:58:13 GMT
Received: from hu-devc-hyd-u22-c.qualcomm.com (hu-amitsi-hyd.qualcomm.com [10.213.97.115])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTPS id 5AABwDek023591
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 Nov 2025 11:58:13 +0000
Received: by hu-devc-hyd-u22-c.qualcomm.com (Postfix, from userid 4648853)
	id 703665A8; Mon, 10 Nov 2025 17:28:12 +0530 (+0530)
From: Amit Singh <quic_amitsi@quicinc.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, vkoul@kernel.org,
        kishon@kernel.org, lumag@kernel.org, neil.armstrong@linaro.org,
        quic_wcheng@quicinc.com
Cc: Amit Singh <quic_amitsi@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_riteshk@quicinc.com,
        quic_rajeevny@quicinc.com, quic_vproddut@quicinc.com
Subject: [PATCH 0/3] add vdda-aux regulator support for QMP PHY on QCS6490
Date: Mon, 10 Nov 2025 17:28:03 +0530
Message-Id: <20251110115806.2379442-1-quic_amitsi@quicinc.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: soIA_42K_hLV2fE3Ei-l2g11dvKDAVC1
X-Authority-Analysis: v=2.4 cv=BfDVE7t2 c=1 sm=1 tr=0 ts=6911d358 cx=c_pps
 a=Ou0eQOY4+eZoSc0qltEV5Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=ufmSwEaVCh0XMAsaoOsA:9 a=QEXdDO2ut3YA:10 a=cPQSjfK2_nFv0Q5t_7PE:22
X-Proofpoint-GUID: soIA_42K_hLV2fE3Ei-l2g11dvKDAVC1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEwMDEwNCBTYWx0ZWRfX7xg4rBaaFrC+
 nAx1WWhI63IAV+M8eN80nX5Xh3BatICf30tBj4VmXP4Qm1n38Ef5MRuc6y3NgPHyBhqYik8/WHt
 vwWanfLeeMbEQ90lAUmgoYbyZ7KXEELkNvBqb51zsOGlwoCsC1GJPZ293XMJlCwXjKYBzrICEQ0
 8MxiRK3MYnVAikfCgJk9KSeZXOsQsJ+A2IsdFgqkp1d2CJqPgOTbb/SYB+ZzqZTduPJRiDYa1zd
 6ZM/yQElSsmD4ZUzBf9pi/eLQsMFSuvpP84WrC3GLJqgs3Xv2NNQuVIqtridKm+FmDc6O4br/SL
 3Qccrv7v3hQg1lX25kbJIngAO4eRXziQUUqSq4bLtNbzO1ttXxLQazNbYIPeZ8wfVCEZRXqEUQm
 BzRZmxrYZeGo45PmnGYeKriULiom8g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-10_04,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 malwarescore=0 impostorscore=0 spamscore=0
 phishscore=0 lowpriorityscore=0 clxscore=1011 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511100104
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_035822_183530_E2A29F34 
X-CRM114-Status: GOOD (  10.48  )
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

The `vdda-aux` supply is necessary for proper power sequencing and reliable
USB enumeration on platforms that provide this rail.

This series adds support for the `vdda-aux` regulator to the QMP PHY driver
and updates the QCS6490 RB3 Gen2 device tree to provide the required
auxiliary 3.0 V rail for stable USB PHY operation.
Platforms that do not define `vdda-aux` remain unaffected.

Tested on RB3 Gen2 (QCS6490) platform to ensure proper USB enumeration and
PHY stability.

Amit Singh (3):
  dt-bindings: phy: qcom: qmp-combo: add support for vdda-aux regulator
  phy: qcom: qmp-combo: add vdda-aux regulator
  arm64: dts: qcom: qcs6490-rb3gen2: add vdda-aux supply for USB QMP PHY

 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml  | 2 ++
 arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts                    | 1 +
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c                       | 1 +
 3 files changed, 4 insertions(+)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
