Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1428CCCFA1A
	for <linux-phy@archiver.kernel.org>; Wed, 12 Nov 2025 09:03:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=92TGqXA29jM+UkmnGwx7Ats/9+wt2jRzNZAik6A0/fA=; b=FSc5na28YhGrjA
	5sCiVvTQDCTTxTBv5ZhVhMj/StkcSrWd109/DNhzAq7e7GWZL0THmnkxIA/Pplx9ZV7pnHSlZBBa+
	HmyisqFXObyq1AHVJAQWPHDqnHqWiiLL4gXqAXyYVRbGv/PASn4000CeQ2Cfx7Xi1gn2j2SREkd0K
	tZ/5eELIOZwYQv7yhKPLlTLZs6p8UjDDqg/XDDqmpG1k4XmJTIlSVkNDCUGUyIEOgMyCUivXHyOVU
	hT7TYqW1RQKjh83UgQBgzL/pkchuWdwJ5OwS0KgGAHCFXljOk6E9z/p4Hk26DMKN9/f2bIAY9BQSJ
	9GsRBI0xtHUwrYN4DqzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJ6lL-00000008QLl-3RMx;
	Wed, 12 Nov 2025 09:03:35 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJ6lJ-00000008QKV-3Qpm
	for linux-phy@lists.infradead.org;
	Wed, 12 Nov 2025 09:03:35 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AC8ndr14006241;
	Wed, 12 Nov 2025 09:03:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=kmp/UD49T+mMXHBhn6G//elyFU+oJ4daqAG
	JIwEP9CM=; b=PplWNV0P7iwhJ6RzivUM35cViADNGkgEsrNI5sQMenUqGWrzFXc
	8kg2rkg4iUNmXJiRDheeTSQWQv13scIEeWFWAvhL8mQOmUd0vHKDu4ACZY7H40VF
	e9xS1iiROiHm4JgcFfn5tHT/YCCjGihoIOr8Oqy4qdbCRPtamd5qvHm6clb8xQPv
	qN4vvNfdyR6Zo/PR1j0CvapqdFA1KrOvCzEgMWc66FKf8+xu0E/BU7QbZMKCf98s
	i7iIDN8V4mYGPxIIcasKKvBQKvLviZkSv2ZpCrd2t+jtKdwCowuV/y8IHerP3uc2
	6ucnweTIsEd7u7dwaZuKj97JF8x7g6XXgEQ==
Received: from aptaippmta02.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4acg5bh870-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 12 Nov 2025 09:03:24 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 5AC93LG9012295;
	Wed, 12 Nov 2025 09:03:21 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 4a9xxmq754-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 12 Nov 2025 09:03:21 +0000
Received: from APTAIPPMTA02.qualcomm.com (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 5AC93LQ5012283;
	Wed, 12 Nov 2025 09:03:21 GMT
Received: from cse-cd02-lnx.ap.qualcomm.com (cse-cd02-lnx.qualcomm.com [10.64.75.246])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 5AC93KOW012280
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 12 Nov 2025 09:03:21 +0000
Received: by cse-cd02-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id 716EB77B; Wed, 12 Nov 2025 17:03:19 +0800 (CST)
From: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
        mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
        bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
        kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
        kw@linux.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
        krishna.chundru@oss.qualcomm.com, quic_vbadigan@quicinc.com,
        Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Subject: [PATCH v3 0/2] Add PCIe3 and PCIe5 support for HAMOA-IOT-EVK board
Date: Wed, 12 Nov 2025 17:03:14 +0800
Message-Id: <20251112090316.936187-1-ziyue.zhang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: TrRre4cN3kxxGOAdTY9Db1hr6cDmKmIY
X-Proofpoint-GUID: TrRre4cN3kxxGOAdTY9Db1hr6cDmKmIY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEyMDA3MCBTYWx0ZWRfX5vM68VZECLi6
 fGMuSV2S1Gxp6zmGivhzENv0KKxNWz3+AGPJRvRgNadpnWfV8QSbM+hPpnZzQrSqo9LN7NjhtoN
 ybnwwabPjBup0w1luyKfskRXXjp9QT6r38ZI2AlIPObyeSsXkB6xmqmy6AsjTpzch0E6/b3lSAI
 88ZoUkN+L8Lh+wg+e0DOpAwGyyfAkLTHbD7+TJsoKnbCoIhL+yFmAbw1qz8cWW9rExmFaAqmLOA
 9xpRUjXv0WZ2Hc5w+c0pKwLOV1dsh0Bi6drziXPEqKth4ldCArEWwmR8d3nU1nW7VLo7hNrI/+l
 7XYGLg+u6p2D7Twmln10hsqlNeu3liWAg4WsScRiQp0SrvoULciQkBqqnzYh3Olk0Y3iTwA/dU4
 EH7L2XuwX0GpPdYKso0H3YJ0PHrDKA==
X-Authority-Analysis: v=2.4 cv=YYawJgRf c=1 sm=1 tr=0 ts=69144d5c cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=6UeiqGixMTsA:10 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=QeMu0tCiC60fgC08giYA:9 a=nl4s5V0KI7Kw-pW0DWrs:22 a=pHzHmUro8NiASowvMSCR:22
 a=xoEH_sTeL_Rfw54TyV31:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-12_03,2025-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 impostorscore=0 malwarescore=0 spamscore=0
 priorityscore=1501 phishscore=0 lowpriorityscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511120070
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251112_010333_978926_B793A69B 
X-CRM114-Status: UNSURE (   9.76  )
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

This patch series adds support for PCIe3 and PCIe5 on the HAMOA-IOT-EVK
board.

PCIe3 is a Gen4 x8 slot intended for sata controller.
PCIe5 is a Gen3 x2 slot designed for external modem connectivity.

To enable these interfaces, the series introduces the necessary device
tree nodes and associated regulator definitions to ensure proper power
sequencing and functionality.

---
Changes in v3:
- Update commit message and DT format (Bjron)
- Merge PCIe3 and PCIe5 changes into one patch
- Link to v2: https://lore.kernel.org/all/20251030084804.1682744-1-ziyue.zhang@oss.qualcomm.com/

Changes in v2:
- Move PMIC gpio pins to patch set 4 (Krishna)
- Link to v1: https://lore.kernel.org/all/20250922075509.3288419-1-ziyue.zhang@oss.qualcomm.com/

Ziyue Zhang (2):
  arm64: dts: qcom: Add PCIe3 and PCIe5 support for HAMOA-IOT-SOM
    platform
  arm64: dts: qcom: Add PCIe3 and PCIe5 regulators for HAMAO-IOT-EVK
    board

 arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts  | 83 +++++++++++++++++++++
 arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi | 79 ++++++++++++++++++++
 2 files changed, 162 insertions(+)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
