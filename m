Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1EFCE7716D
	for <linux-phy@archiver.kernel.org>; Wed,  4 Dec 2024 10:53:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=t4tPx3KpSgeNUKNDhrHyXiHyC1BANQOG8GxKegifSsA=; b=vnXuKP0ZnO4tuI
	A4ucbGR6+ChcTz3h2p3aFc8bOhIXwwwN0AUzUTmIPjBtiZvvZAWEgAQpoy2Mx62DstpRrHL0BQOa6
	8fjNCwEPXnlu3CvKcQeLdFUsYuAvNynYrs2Ntkt5t8n2/rH735V/OKAtHpE4K8WCA/MA9y+PYbUMK
	Q2EhB/BvhfoV//o8XFHodD8Rjj45cvorjP98aP9QKIMRu/Lh5n9YV6ZWwl5wIVFAnUn2EfacPZV3D
	UlIgwXaiyEoYHC0S+2CV+ivrYGXD+wMx6ySk4gwMzUg84qmrDMXRiHaLhBE/XiUiQ95KLtkSgnZHk
	CSeT1+MnN/Ro2P4JFjIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIn0A-0000000CHG4-36Qu;
	Wed, 04 Dec 2024 10:53:02 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIn08-0000000CHEs-2v3M
	for linux-phy@lists.infradead.org;
	Wed, 04 Dec 2024 10:53:02 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B424N5i027126;
	Wed, 4 Dec 2024 10:52:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=e0r4UDsw5A5AWl7ZOK5oEyQnVHbAs0QFS4I
	iuUiVmPs=; b=ZwnY014rXfGYCYde4itt7GJ/M0S2gZHO+GrGDCZt/HcCwbGQddC
	J00KYisNRGnnVAG5wkHoKU7dmcy1DmR+CrhXcxLVONnMz9wjKzYM7MkornCfNCcv
	xrbVX/S7TE1yx0tKNij583WpPdWFTqdhwOU16f4cULjMNnm8jCr1n2q9RDF5HoBP
	q3zfASBax7Rv/ihh/8S85HLJ6LjoWyesvr3aBXpeWrrZQYDppJrRzlOQ/EpNQMRQ
	Q9vq037IX5/LAm7/XOonqnlqCI7Z/ADTaQNowV9yT+341NJr9OiacMs+cEE2jLoQ
	f3S46W1pgfqAL3iByxe2bFSI1vUiFOB6u/Q==
Received: from aptaippmta01.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43a1g5k5v8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 04 Dec 2024 10:52:56 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 4B4Aqshd016281;
	Wed, 4 Dec 2024 10:52:54 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 437uskvsbu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 04 Dec 2024 10:52:54 +0000
Received: from APTAIPPMTA01.qualcomm.com (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 4B4AqshO016275;
	Wed, 4 Dec 2024 10:52:54 GMT
Received: from cse-cd02-lnx.ap.qualcomm.com (cse-cd02-lnx.qualcomm.com [10.64.75.246])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 4B4Aqr6L016274
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 04 Dec 2024 10:52:54 +0000
Received: by cse-cd02-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id 88C9B19E3; Wed,  4 Dec 2024 18:52:52 +0800 (CST)
From: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
To: vkoul@kernel.org, kishon@kernel.org, dmitry.baryshkov@linaro.org,
        abel.vesa@linaro.org, neil.armstrong@linaro.org,
        manivannan.sadhasivam@linaro.org, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Subject: [PATCH 0/3] pci: qcom: Add PCIe setting current load support
Date: Wed,  4 Dec 2024 18:52:46 +0800
Message-Id: <20241204105249.3544114-1-quic_ziyuzhan@quicinc.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: uUgBGOYGJYqDf6Dw-93TyTa7uVxB8EWD
X-Proofpoint-ORIG-GUID: uUgBGOYGJYqDf6Dw-93TyTa7uVxB8EWD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 bulkscore=0 clxscore=1011 malwarescore=0 impostorscore=0
 lowpriorityscore=0 suspectscore=0 mlxlogscore=999 spamscore=0 adultscore=0
 mlxscore=0 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412040085
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241204_025300_737992_D5DDB509 
X-CRM114-Status: GOOD (  11.54  )
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

Base DT:
https://lore.kernel.org/all/20241122023314.1616353-1-quic_ziyuzhan@quicinc.com/

This series add PCIe current load vote/devote for PCIe PHY driver, add
vdda-pll-max-microamp property in DT, and also document current load
properties in dt-bindings.
 
On platform QCS615, the current that phy consumes will exceed the maximum
current the regulator can provide in LPM mode, leading to over current
protection and system boot up stuck. 

This series can fix the issue by setting current load to an expected value
parsed from DT. This will vote the regulator to work in HPM mode so that
it is able to output a larger current and viod over current protection.
When the PCIe PHY poweroff in case like system suspend or shutdown, it
will also devote regulator back to LPM mode to decline regulator itself's
power consumption by setting load to zero.

Besides, three optional current load properties are added in dt-bindings, 
vdda-phy-max-microamp, vdda-pll-max-microamp and vdda-qref-max-microamp.
PCIe PHY that wants to vote for more current consumption should provide
corresponding property.

Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
---
Have following changes:
	- Add optional current load properties
	- Add pcie phy max current property.
	- Add current load vote/devote for PCIe PHY

Ziyue Zhang (3):
  dt-bindings: phy: qcom,qmp-pcie: add optional current load properties
  phy: qcom: qmp-pcie: add current load vote/devote for PCIe PHY
  arm64: dts: qcom: qcs615: add pcie phy max current property

 .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       |  8 +++++
 arch/arm64/boot/dts/qcom/qcs615-ride.dts      |  1 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 35 +++++++++++++++++--
 3 files changed, 42 insertions(+), 2 deletions(-)


base-commit: ced7ce570dca175d87392ebaacf6c75f93aa2418
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
