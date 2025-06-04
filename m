Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4321EC5B555
	for <linux-phy@archiver.kernel.org>; Wed,  4 Jun 2025 09:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AT3A26aDTGhWFT95BVdN0cM0gcY8e2mZB4WDUsK4s7A=; b=d5KA7ZOdrL06k/
	g/EizHmErDh0nuhGonELnwu6lHOVaMBuRfbNUk9RAhoUcoJiqmxpfe4ROjENoOC8MFgOf1E4QljJk
	0P9XdOOBiJQ56vmik/EJNvrwibUU2/LK05Tu2cU7nwHB6mskqlsMG12EDT83wfUYZwGtLwOYpBJIN
	tF6R0jsml27JEe8sK4aOLZvFItj8KIISDNHR8rwLe5444YHcr5EooRrBZxkDDJskl9BhFLhIDUBiE
	OMz5Qe9Mx95LR6iDtpAyxBhZnSdWXX80/pzQ+4W1Jc5IxnDAk9aR+biQehHwpA1DIiUOikDUjSypn
	ujSyrQuzYPDsy1BM/l3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMkIt-0000000D15B-04dt;
	Wed, 04 Jun 2025 09:20:59 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMkI3-0000000D0sJ-2hUs
	for linux-phy@lists.infradead.org;
	Wed, 04 Jun 2025 09:20:08 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 554810od004261;
	Wed, 4 Jun 2025 09:20:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=W8N7i2L/i6AYCDylNiiZl/m365luZzBqXlm
	L45hJbV0=; b=h8y441PoMGqvhHZCHCm/3d/QINHQYDT1YGlPBZNmNTN1yW7vATQ
	oXyWx043SIOYwPYZMaO5Hbe6S3+e+VIlVdN89GJjEEEQbqyNcCXDC4hYDkmzuWWD
	Kjyq2a/EgeOzBBZuviyNqLRvHaPqf3CkCoy9R1Nyq+W/dwNdZgRjEsfGAZPI/wQH
	BNjgw+zwAjc4FcvOJGWsyR+reGDTZC5JE8VElWS690qGOsVAbyFgTapok4KM8MSI
	ZXsF8m2rroozVOcPP2VGND20PVniSHaDe54gPvgbhmbVBLe5eNkckzPxceA14U2a
	IKwvBu3mwz71i4faEVRdTmuDxev0RtuGXKw==
Received: from aptaippmta01.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 471g8rwjhf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 04 Jun 2025 09:20:01 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 5549JwhB004853;
	Wed, 4 Jun 2025 09:19:58 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 46ytum70ee-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 04 Jun 2025 09:19:58 +0000
Received: from APTAIPPMTA01.qualcomm.com (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 5549JwEH004839;
	Wed, 4 Jun 2025 09:19:58 GMT
Received: from cse-cd02-lnx.ap.qualcomm.com (cse-cd02-lnx.qualcomm.com [10.64.75.246])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 5549JvTL004834
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 04 Jun 2025 09:19:58 +0000
Received: by cse-cd02-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id DC6E635E1; Wed,  4 Jun 2025 17:19:51 +0800 (CST)
From: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
To: lpieralisi@kernel.org, kwilczynski@kernel.org,
        manivannan.sadhasivam@linaro.org, robh@kernel.org, bhelgaas@google.com,
        krzk+dt@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
        kw@linux.com, conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_qianyu@quicinc.com,
        Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Subject: [PATCH v1 0/2] Add Equalization Settings for 8.0 GT/s and Add PCIe Lane Equalization Preset Properties for 8.0 GT/s and 16.0 GT/s
Date: Wed,  4 Jun 2025 17:19:44 +0800
Message-Id: <20250604091946.1890602-1-quic_ziyuzhan@quicinc.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: Dd3bulXl8YwclfFWjSNQTsmumIW-juD5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjA0MDA2OSBTYWx0ZWRfX3koqlSDJioCY
 2duGTTBrTkhqBetfYF6zR0KFLj3/qgYhpPHx8TWWd/xZ97CxEoISk6xPKQss5dlqeTlI5oOdMnY
 vWQNAjMXRyuYQ7Alrvg2xPTXBsNutYFeosWPxDOTKsA8/FbdrnMyDNCXNo9ZRiIGnW2ZGtlLShc
 ogOfJLFHsKpainqdEH4RglzdD4KB5ztzIPuxsBPTn+aS4d2aH4MeJ/CvFWt8gJKrsa+k5Kgst/u
 P58K4k0szUwa5D8+hGU2omps58eC2DaLWfkfGeqCfqfUguL6L+byJM2alPSd2GjRJdCPqyiO3sx
 iZxMha9ppQMab7X9vltEzvXGh+XoBOT0EPnfiX8/9gTYXHFhUTW28g1gu5mMaeY7jHPIKlhsWrI
 DrEW6iuoVI9JonzSRTY4Q+CpBflGtkYZB2i6cpl5rqb7FF6ch4hiU07ZExHsCeb51QFt927i
X-Authority-Analysis: v=2.4 cv=RdWQC0tv c=1 sm=1 tr=0 ts=68400fc1 cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=6IFa9wvqVegA:10 a=COk6AnOGAAAA:8 a=pGW_TeUqoRlRwQqC-JsA:9
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: Dd3bulXl8YwclfFWjSNQTsmumIW-juD5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-04_02,2025-06-03_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 mlxscore=0 priorityscore=1501 phishscore=0
 clxscore=1015 lowpriorityscore=0 malwarescore=0 suspectscore=0
 impostorscore=0 spamscore=0 mlxlogscore=707 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506040069
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250604_022007_685123_521DFD2B 
X-CRM114-Status: UNSURE (   9.07  )
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

This series adds add equalization settings for 8.0 GT/s, and add PCIe lane equalization
preset properties for 8.0 GT/s and 16.0 GT/s for sa8775p ride platform, which fix AER
errors.

While equalization settings for 16 GT/s have already been set, this update adds the
required equalization settings for PCIe operating at 8.0 GT/s, including the
configuration of shadow registers, ensuring optimal performance and stability.

The DT change for sa8775p add PCIe lane equalization preset properties for 8 GT/s
and 16 GT/s data rates used in lane equalization procedure.

Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>

Ziyue Zhang (2):
  PCI: qcom: Add equalization settings for 8.0 GT/s
  arm64: dts: qcom: sa8775p: Add PCIe lane equalization preset
    properties

 arch/arm64/boot/dts/qcom/sa8775p.dtsi         |  8 +++
 drivers/pci/controller/dwc/pcie-designware.h  |  1 -
 drivers/pci/controller/dwc/pcie-qcom-common.c | 55 ++++++++++---------
 drivers/pci/controller/dwc/pcie-qcom-common.h |  2 +-
 drivers/pci/controller/dwc/pcie-qcom.c        |  3 +-
 5 files changed, 40 insertions(+), 29 deletions(-)


base-commit: 911483b25612c8bc32a706ba940738cc43299496
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
