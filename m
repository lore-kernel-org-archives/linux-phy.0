Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E266ED167FA
	for <linux-phy@archiver.kernel.org>; Fri,  9 Jan 2026 10:45:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=L8L0QMDkjvPlF1ovLkVDnemLFbSdlK+kfh+01HBwzDE=; b=A/KjSbN2add4tz
	P6tAkuVk5CbalqLiv2z8ttqptFov9ud5S6hXw/N9ezR9+qgYtwVXhAC+hnTkF0zF9ieU4lGO8940M
	cbQ5zkdhgx/91dbSyylO2NpwwMUQYxpPNJGVsP2LvIb24Nb2vFXK9Rej9Ot5mIThnjtsGlylMaNVn
	1UhyoHjp74PcJjXXm02kGR4iN7vTu1o6QEvTrCv9Vo8hRkUqYn6es+bk39fPu3UbojOEedXrcrRbK
	RUzExJnM4SdXobY2W1QThRbJhUMY/0ZTI2hKUvyB/JfAJrjRXEembq90DAjG17xfjqn8hRtZneSzr
	h5oss/9WjuLs9NCGicrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ve9zn-000000029p0-2k4d;
	Fri, 09 Jan 2026 10:45:31 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ve9zk-000000029nP-2AVM
	for linux-phy@lists.infradead.org;
	Fri, 09 Jan 2026 10:45:30 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60952hnZ3542117;
	Fri, 9 Jan 2026 10:45:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=vtmdJfOOZTM9etuuE/wEyXnqf53PBhwwUin
	8Yrle/CA=; b=CFRGKnYkIfWUZAPRXtRa1eIpsSekU7vI+rfqX4WWJm5ycGNl7Kl
	aBsbTGt1lfA1ddSfR3wRZQb3VSAgaUv6G7o08GIr4uUdgQIKRCegf4wXxMJnLz2O
	2CMrhmzqu4RKYrWjYtvDsjisjn9daE1oMySlK3FJOJiY/Ig7nXAjlxbxY4zAqwhj
	yNWX5dZD1TPvWwbnFljde15xc9rLqyG2Xi4jUS54HiGGNW+Hb96jltIjCrNOiTgR
	545elLMkyqD62RZ0b2mE+oIIsFYHm/HJ3ecnYpXVFz/18SDk1kYKgiRx4Fi1YzIC
	5QD2z5MEhm97K9TvJVbslysBNcTpXsH9lVQ==
Received: from aptaippmta01.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bju6b0yeh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 09 Jan 2026 10:45:19 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 609AjH4O004104;
	Fri, 9 Jan 2026 10:45:17 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 4bev6mpxx1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 09 Jan 2026 10:45:17 +0000
Received: from APTAIPPMTA01.qualcomm.com (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 609AjGfo004089;
	Fri, 9 Jan 2026 10:45:16 GMT
Received: from cse-cd02-lnx.ap.qualcomm.com (smtphost-taiwan.qualcomm.com [10.249.136.33])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 609AjGRw004088
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 09 Jan 2026 10:45:16 +0000
Received: by cse-cd02-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id F2C1F77D; Fri,  9 Jan 2026 18:45:14 +0800 (CST)
From: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, ziyue.zhang@oss.qualcomm.com,
        jingoohan1@gmail.com, mani@kernel.org, lpieralisi@kernel.org,
        kwilczynski@kernel.org, bhelgaas@google.com, johan+linaro@kernel.org,
        vkoul@kernel.org, kishon@kernel.org, neil.armstrong@linaro.org,
        abel.vesa@linaro.org, kw@linux.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com,
        Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Subject: [PATCH v4 0/3] Add PCIe3 and PCIe5 support for HAMOA-IOT-EVK board
Date: Fri,  9 Jan 2026 18:45:01 +0800
Message-Id: <20260109104504.3147745-1-ziyue.zhang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA5MDA3OCBTYWx0ZWRfX5NRJx4oiZVhp
 BXQGvykgL6Y86SiXsWjW47Otk0/DrwJFEUsWxZRLmnI4yjIQ/EQwDynIC2i6iKNHNHM9bekubOV
 pksZYHgdo8AHZlS5UqPd5crzbmElY/BkF5t7tkYTq0VUBWcUtqh/I6D4P/RNdJcrjYgES0ZEaym
 ZbXqFWE55NapnhRs6IM8YLnx89S36Cq2o4tOi5NtE/Adxm1/c8U15y3Bj9x9FPsoUxhcips5R+f
 woL8lu3UJEPCZ2TofvCbYJfxlYXsYbAAsxlcR+jKPtM7W75/UpO2cne0gs5XNqLTheZeoa75DZx
 EMCEsjmdOmsBiFy0Q0vBR1OFAWNcQR71otw3P3yPMH8FcBhyjxvrpTP2cyr/USSS7hr6fHFT/Ga
 ILokibGGWDrkMq5OSkDPrfqri8F4nmDU4URuQ67OXbcbq78dphOmarN/f8Ln/mHBhq3sUI1sRFU
 nnhnlrH+X0DAoXkeiGA==
X-Proofpoint-ORIG-GUID: Q4giVK4zTW6LGRCtsx6HWX6KXNSRrW5M
X-Authority-Analysis: v=2.4 cv=V+5wEOni c=1 sm=1 tr=0 ts=6960dc40 cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=vUbySO9Y5rIA:10 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=COk6AnOGAAAA:8 a=_1SJXrV41PCVPbEzUN8A:9 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: Q4giVK4zTW6LGRCtsx6HWX6KXNSRrW5M
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-09_03,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 phishscore=0 bulkscore=0 lowpriorityscore=0
 adultscore=0 clxscore=1015 suspectscore=0 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601090078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260109_024528_676123_34DE473D 
X-CRM114-Status: GOOD (  12.25  )
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

From: Ziyue Zhang <quic_ziyuzhan@quicinc.com>

This patch series adds support for PCIe3 and PCIe5 on the HAMOA-IOT-EVK
board.

PCIe3 is a Gen4 x8 slot intended for sata controller.
PCIe5 is a Gen3 x2 slot designed for external modem connectivity.

To enable these interfaces, the series introduces the necessary device
tree nodes and associated regulator definitions to ensure proper power
sequencing and functionality.

---
Changes in v4:
- Move PCIe reset/wake GPIOs to pcie_port node (Mani)
- Move PCIe phy to pcie_port node for all Hamoa platform (Mani)
- Remove output-high property (Konrad)
- Modified the DT and patch format, and adjusted the commit message (Konrad)
- Link to v3: https://lore.kernel.org/all/20251112090316.936187-1-ziyue.zhang@oss.qualcomm.com/

Changes in v3:
- Update commit message and DT format (Bjron)
- Merge PCIe3 and PCIe5 changes into one patch
- Link to v2: https://lore.kernel.org/all/20251030084804.1682744-1-ziyue.zhang@oss.qualcomm.com/

Changes in v2:
- Move PMIC gpio pins to patch set 4 (Krishna)
- Link to v1: https://lore.kernel.org/all/20250922075509.3288419-1-ziyue.zhang@oss.qualcomm.com/

Ziyue Zhang (3):
  arm64: dts: qcom: hamoa: Move PHY, PERST, and Wake GPIOs to PCIe port
    nodes and add port Nodes for all PCIe ports
  arm64: dts: qcom: Add PCIe3 and PCIe5 support for HAMOA-IOT-SOM
    platform
  arm64: dts: qcom: Add PCIe3 and PCIe5 regulators for HAMAO-IOT-EVK
    board

 arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts    | 97 +++++++++++++++++++
 arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi   | 80 +++++++++++++--
 arch/arm64/boot/dts/qcom/hamoa.dtsi           | 42 +++++---
 arch/arm64/boot/dts/qcom/x1e001de-devkit.dts  | 24 +++--
 .../qcom/x1e78100-lenovo-thinkpad-t14s.dtsi   | 24 +++--
 .../dts/qcom/x1e80100-asus-vivobook-s15.dts   | 14 +--
 .../dts/qcom/x1e80100-asus-zenbook-a14.dts    |  3 +
 .../dts/qcom/x1e80100-dell-xps13-9345.dts     | 14 +--
 .../dts/qcom/x1e80100-lenovo-yoga-slim7x.dts  |  8 +-
 .../dts/qcom/x1e80100-microsoft-romulus.dtsi  | 19 ++--
 arch/arm64/boot/dts/qcom/x1e80100-qcp.dts     | 21 ++--
 11 files changed, 279 insertions(+), 67 deletions(-)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
