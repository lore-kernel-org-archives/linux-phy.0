Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46EA1C678DC
	for <linux-phy@archiver.kernel.org>; Wed, 11 Jun 2025 14:50:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/lYwoaycccKUgKMkQn+hdqfOQdMTDFNo+2lF6LqtsAo=; b=2Gm9IcjWJKFee5
	0wuJqU1Y1b6ovQFPtzJGmaYqHj/a05ou2VDZvBSpYR0AqLFNEGHI+inqI96ohbftK/8KgyPU7FusY
	Ouqz+O6gXfT1t3tizI+N0ixI+NQkN2EQqGAhrcIbEfACq++zOrzW9aFkvHq7vqx3lUupb5u8JFZOb
	1a6SxeBGypHDD9rNSDsZ8N7ns8DFTgv5sn2Vpfs3XOEZWz48dwRRza896ffFLM3kUTsP8ssF15lgr
	tCAypsb76L1bdJ6LTDhHWyjEWa/uYD4/cEsrBXnLaqvTFdUNCCaPdIyUmdfzghUtawm0HJivYuI8B
	N4bAOeK4vB+R8X1gu2vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPMmm-0000000ACg6-1mxO;
	Wed, 11 Jun 2025 14:50:40 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPIJY-00000009Z74-2dVU
	for linux-phy@lists.infradead.org;
	Wed, 11 Jun 2025 10:04:13 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55B9DGRh026057;
	Wed, 11 Jun 2025 10:04:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=9JCCjHSNSTqnwx9Bat5SoPEdOC4SxpqYfMC
	ZXhXugss=; b=iKTGgywBWzzqy5pRaEZNRkARtwgKpJ/Ym5Ghnwzu5/aYuX283/1
	M3QBYLshPOLo+kFT4v8RkMWuZ6mRW9JjjuLyfG3WTqY5DnOzhngg+YrCAF5LJK+B
	jReWM5F1CE75q9sWSuCWAqGGF/KI0teyNsXGXSyh+bG/QGwjnbTat8UELNoGamWa
	0voOZ17rtGUiUfir0bacilpZi2lhGCytN8Npz1zH+dqe6JvG8+pnsw1rZIwmHQiS
	kuqM/ftbx4yfgoGvaG0g81dvi9lTSoAI5NuYxT3bpFNg5WdZnqVE4LJp8ySGHMyh
	B1EBKM44J7aX13SKuuxdeATQV240QPOpYpQ==
Received: from aptaippmta02.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 475v2y7c7y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Jun 2025 10:04:01 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 55BA3xbe019081;
	Wed, 11 Jun 2025 10:03:59 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 474egmgc5j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Jun 2025 10:03:59 +0000
Received: from APTAIPPMTA02.qualcomm.com (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 55BA3wUT019071;
	Wed, 11 Jun 2025 10:03:58 GMT
Received: from cse-cd02-lnx.ap.qualcomm.com (cse-cd02-lnx.qualcomm.com [10.64.75.246])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 55BA3vI8019061
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Jun 2025 10:03:58 +0000
Received: by cse-cd02-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id 9E0E63696; Wed, 11 Jun 2025 18:03:56 +0800 (CST)
From: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
        mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
        bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
        kishon@kernel.org, dmitry.baryshkov@linaro.org,
        manivannan.sadhasivam@linaro.org, neil.armstrong@linaro.org,
        abel.vesa@linaro.org, kw@linux.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com,
        Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Subject: [PATCH v2 0/2] Add Equalization Settings for 8.0 GT/s and Add PCIe Lane Equalization Preset Properties for 8.0 GT/s and 16.0 GT/s
Date: Wed, 11 Jun 2025 18:03:17 +0800
Message-Id: <20250611100319.464803-1-quic_ziyuzhan@quicinc.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjExMDA4NSBTYWx0ZWRfX3M/TXC8wX4TP
 9gRHXN75etoQOiPl8JUdNNJWda+eUgRZyGDUsGCD4zzCHYdmcJG71uNAY3Zx1+MYIvMwDI1hZr3
 F34ElTyvYcCLCQ+rjsb1yIe4iYgB8syycqihB5YcanKjMAIax3/KLkmgKqNOBzEV74tbTTS7I0A
 mtlaRsZ4Z+n7+FEaKhbpwKHTVqfh0TjUeTsDM7yNs784E4SF0iCWU8G1nzzrCMWA7IKOI4qBKDw
 T5EAF6jZZcd8m2jvhhSNUAk7soQtwJ+CdmahXUmls+d436UvDc7Vbz/q6oTrBBLmQPaF0O82/Rm
 6VGI3OIueO+JKcUuIoGy3S2vtnP7Uzynz8Zetps8FlLy0Bra/sdDyoIXnKteplGoaQl7hM/qHhC
 Qju+yUDTWMkGHEAXGvXfYO9aSD6GoRtXDaCazxgwz4IrUqc4A6HWoLJUKeNovRBjfBfsP1QL
X-Proofpoint-GUID: 5WEO9IAOyz6swnFGiPqcpbLamtWOaOIH
X-Proofpoint-ORIG-GUID: 5WEO9IAOyz6swnFGiPqcpbLamtWOaOIH
X-Authority-Analysis: v=2.4 cv=f+BIBPyM c=1 sm=1 tr=0 ts=68495491 cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=6IFa9wvqVegA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=pGW_TeUqoRlRwQqC-JsA:9
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-11_04,2025-06-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 mlxlogscore=740 bulkscore=0 impostorscore=0
 lowpriorityscore=0 priorityscore=1501 adultscore=0 phishscore=0 mlxscore=0
 malwarescore=0 clxscore=1011 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506110085
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_030412_674113_7636F5D8 
X-CRM114-Status: GOOD (  10.57  )
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

This series adds add equalization settings for 8.0 GT/s, and add PCIe lane equalization
preset properties for 8.0 GT/s and 16.0 GT/s for sa8775p ride platform, which fix AER
errors.

While equalization settings for 16 GT/s have already been set, this update adds the
required equalization settings for PCIe operating at 8.0 GT/s, including the
configuration of shadow registers, ensuring optimal performance and stability.

The DT change for sa8775p add PCIe lane equalization preset properties for 8 GT/s
and 16 GT/s data rates used in lane equalization procedure.

Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>

Changes in v2:
- Update code in pcie-qcom-common.c make it easier to read. (Neil)
- Fix the compile error.
- Link to v1: https://lore.kernel.org/all/20250604091946.1890602-1-quic_ziyuzhan@quicinc.com

Ziyue Zhang (2):
  PCI: qcom: Add equalization settings for 8.0 GT/s
  arm64: dts: qcom: sa8775p: Add PCIe lane equalization preset
    properties

 arch/arm64/boot/dts/qcom/sa8775p.dtsi         |  6 ++
 drivers/pci/controller/dwc/pcie-designware.h  |  1 -
 drivers/pci/controller/dwc/pcie-qcom-common.c | 60 +++++++++++--------
 drivers/pci/controller/dwc/pcie-qcom-common.h |  2 +-
 drivers/pci/controller/dwc/pcie-qcom-ep.c     |  6 +-
 drivers/pci/controller/dwc/pcie-qcom.c        |  6 +-
 6 files changed, 49 insertions(+), 32 deletions(-)


base-commit: 19272b37aa4f83ca52bdf9c16d5d81bdd1354494
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
