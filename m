Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BF2AC7EE3A
	for <linux-phy@archiver.kernel.org>; Wed, 25 Jun 2025 09:52:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZVYxAZI9hJZvjmGfakx+lPqY+fjgldw/y1n3bBdDhcE=; b=Lz5dgU4DrZdQzv
	aPL/mXoujpjgRD3jNgY80lylUGPg0+FWc1ffs4VnMC7qY6Qm3GaY/kr1HBswq9/QwFSLJ/YCt3YL8
	U/GNqPyzM36p4O7t6RdgAps54P4hk2oMWjfKT62JYrnmd+GG8uIF1c4KlBppa7k0GuIEWHq3NIZQ4
	CpNCSLVGQ4vqxsSkGI6B8RhZpMUNkJEB154WQmK0hwy+yf4cqUzhbHM85W9E4kPqFFIpI+23xdl1H
	QaNodvfWUcR1aPweIVw4crKe538ULIflW6Ctx9NoDH/9iVW3imvczOwq3y4ggPfYfFWb0PDKS6MQk
	H+/dfV+BJjNDtZSEil9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUMo2-00000008Chl-4Bct;
	Wed, 25 Jun 2025 09:52:39 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uULxZ-000000082zD-1G2I
	for linux-phy@bombadil.infradead.org;
	Wed, 25 Jun 2025 08:58:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=cUFBss15vg4r/nMO0lQfI/Uj5kvxiNFdUC4YPlvXVIY=; b=RfW+zLJh5RkHPl2V9tFBWfy1hj
	iu4pXHVt4U/A+Lxse+EGjhJA1c5ekpnQz6Bh6vk0xQ/rtJznohwW9OwbanoIJu/k+UAHegB9sJhAK
	wRjMTCm1SrbaaIW9i3H95NYqUU/eAFMQrYotHyEjNZFKxGuJ2Q0D5vM+wNBvxI5onJvDxjj//HDUE
	3J1N7wL5e7ekaJbV6XWR7uoKc66eO2R6kn57ohP3Rqedj3Pt9A3mKmyu2yJH/S0VYCIWh+8z0RLNh
	lCH8Motti4oysnzMSyOoe2ON4dne3xV4ktVKGmzs2VclUFdi4+tRn2RZMLnnhKJCstomEvNE+l8J+
	48xcR9TQ==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uULxW-00000005i5D-1fD2
	for linux-phy@lists.infradead.org;
	Wed, 25 Jun 2025 08:58:24 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55P43vmk028706;
	Wed, 25 Jun 2025 08:58:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=cUFBss15vg4r/nMO0lQfI/Uj5kvxiNFdUC4
	YPlvXVIY=; b=BOIkopskfzovRVQk9V9TJGSMlJU48Idz0+NKqRTRf4R1/C9JTnG
	iuX9yj1CBVEpTF6P5tBVTEVqS5J39g9yS3vlQBVHbD5QC2SlTze32k1kGIVDFGoT
	4MXWADzte16pHu518Cb+Whr1eUNTmxAAreqz0kifuWDoMmdyufLIZ4KUgZQGbvSJ
	f9NXq+5wmCbjYx4UF0w59Tw2ex0vBVHGY8QPY1HfihGFdBJJzCGfuuAnd0oG5E5F
	TrefXMbgpS3OPPoGvFhuJwVsQ8wWsg277eEkx/9XHt0MrrT6ozo7QJ5JWsYNhopa
	OdH/dL1eu4CyTEOWkT2OUPpDny2AV4ISVaw==
Received: from aptaippmta02.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47esa4re8x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Jun 2025 08:58:07 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 55P8w5YS016611;
	Wed, 25 Jun 2025 08:58:05 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 47dntmarva-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Jun 2025 08:58:05 +0000
Received: from APTAIPPMTA02.qualcomm.com (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 55P8w4SH016600;
	Wed, 25 Jun 2025 08:58:04 GMT
Received: from cse-cd02-lnx.ap.qualcomm.com (cse-cd02-lnx.qualcomm.com [10.64.75.246])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 55P8w3D5016594
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Jun 2025 08:58:04 +0000
Received: by cse-cd02-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id D450B382D; Wed, 25 Jun 2025 16:58:02 +0800 (CST)
From: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
        mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
        bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
        kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
        kw@linux.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com,
        Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Subject: [PATCH v3 0/3] Add Equalization Settings for 8.0 GT/s and Add PCIe Lane Equalization Preset Properties for 8.0 GT/s and 16.0 GT/s
Date: Wed, 25 Jun 2025 16:57:58 +0800
Message-Id: <20250625085801.526669-1-quic_ziyuzhan@quicinc.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=eLYTjGp1 c=1 sm=1 tr=0 ts=685bba1f cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=6IFa9wvqVegA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=pGW_TeUqoRlRwQqC-JsA:9
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: GS1FB1HBukO8xWgIts4naqn3Drqhjft_
X-Proofpoint-ORIG-GUID: GS1FB1HBukO8xWgIts4naqn3Drqhjft_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI1MDA2NiBTYWx0ZWRfX7Cs4P2bugsJI
 MIxzzMJgtWJ5UEdD82skJ9fpDagzAkMVE5NREJyi3Lz7fcbSsYfRl4uP3FukXj3xeagHdaHelpT
 N9LFBXkdkveowqBkoznjj3ecdAmNJqsNdsRdTFCTo1x9jLqZJyQEFZs/r6SjTSt4eiS15BYIUYK
 ySLTj2f2RCvLwmk4WL0KLS3EWj3qhr4sgP0cR4GwzPwF0f/SHmoOVkvzI1S9GKhQ4xUKlyFS9At
 YW+TTi0XX0ixnhKapLq6bb1HVwx6fB+bFJ2SXWgsNHYTWCsIaaPLcV3wCvzeDuhGcBmMcAadjxp
 1POutHzNnSOwWryefvjHnyk20hEzM2qYDjDg+XjH2Pd25ooNvgcCijAWtKsrI129icG4Y0sOp5E
 zm4mA7jqabUMdvAM0+Ae5xixyoKdbX5Epr1Ikm6xcnxYhaNaP6MhhYHsyxqcUsatv9tvpigq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-25_02,2025-06-23_07,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 mlxscore=0 clxscore=1015 mlxlogscore=845
 suspectscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0
 adultscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506250066
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250625_095822_902197_A340776D 
X-CRM114-Status: GOOD (  10.67  )
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

Changes in v3:
- Delte TODO tag and warn print in pcie-qcom-common.c. (Bjorn)
- Refined the commit message for better readability. (Bjorn)
- Link to v2: https://lore.kernel.org/all/20250611100319.464803-1-quic_ziyuzhan@quicinc.com/

Ziyue Zhang (3):
  PCI: qcom: Add equalization settings for 8.0 GT/s
  PCI: qcom: fix macro typo for CURSOR
  arm64: dts: qcom: sa8775p: Add PCIe lane equalization preset
    properties

 arch/arm64/boot/dts/qcom/sa8775p.dtsi         |  6 ++
 drivers/pci/controller/dwc/pcie-designware.h  |  5 +-
 drivers/pci/controller/dwc/pcie-qcom-common.c | 55 +++++++++++--------
 drivers/pci/controller/dwc/pcie-qcom-common.h |  2 +-
 drivers/pci/controller/dwc/pcie-qcom-ep.c     |  6 +-
 drivers/pci/controller/dwc/pcie-qcom.c        |  6 +-
 6 files changed, 46 insertions(+), 34 deletions(-)


base-commit: e04c78d86a9699d136910cfc0bdcf01087e3267e
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
