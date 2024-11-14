Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A181BD65C68
	for <linux-phy@archiver.kernel.org>; Thu, 14 Nov 2024 09:55:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yV/Xts0evE7JQYRlPbGI7AlB4IGWb6txM06yl8VHibc=; b=CckGZWKMgZjXvs
	iWnGT5SYAwEt16o1DIrahteUyvtPdtDTRwmq69Cl44eOutMGjInGZSPlZXzFy2JZAIe4Zp28O5Vnb
	PdU2tyfeUGtdlWfyy667//hnGUt/c+npzpaOo/sePsjYtdi/FmUJHv1KJHEuCE2HvLtJROoD/1/vr
	vV5vH4sQ5GWg49M6NzYUfUm9my/NEB4E1mMsthfdDqMjE8J801vMpVEjgFT9CSU66QqdSv8s/lWr4
	Y97rt7UAb0WDxPbeqNiixohL4bO390D2GITZGT7fLXdjOU39ptftajOpHKiarQmUhRKVvyOuKvIHp
	DbePxodkOZEkhtI0zi+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBWZg-00000009QoB-0Ec0;
	Thu, 14 Nov 2024 09:55:40 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBWYT-00000009QXr-2rLm
	for linux-phy@lists.infradead.org;
	Thu, 14 Nov 2024 09:54:27 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AE62Mar021072;
	Thu, 14 Nov 2024 09:54:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=VChT8L5m620aHTiBRgrqhGnswnOpnFsN35L
	Wr8AjioY=; b=Kigiq40W01rgy3yluUOARAYoDWxEMOL0pvr4OuRYLC6/c5H/g5h
	PGjPQGUC/LG2SdOkuRmu16epQ9qxs6uPsl683QaSfEp3JTHJ9ostLKmy9MQLZU/H
	Qxh+dbxSCNCGT2bADMagUBX+Gv6MW1H6mJSfN5zF1tILStjvz6sEEJVGOfkcbyRZ
	e4OIGntjM5V4byxTEEh+DmiJ5aY4sP2sof7O4ODvEg4G9ElVst7Mt9dttVdSo/ZJ
	rQ9wN4uzk3HV0ARQnkjMiLL6hRuYtc7GvTTMxYo4Wvoeu5vEO5fQHWQvahbvJGYr
	a+2IBcXteo5oJnNNgcHPe8JEw0ZfI0SHSYA==
Received: from aptaippmta02.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42v4kqyy80-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 14 Nov 2024 09:54:15 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 4AE9sDHr007468;
	Thu, 14 Nov 2024 09:54:13 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 42t0tkyudb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 14 Nov 2024 09:54:13 +0000
Received: from APTAIPPMTA02.qualcomm.com (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 4AE9sD3i007462;
	Thu, 14 Nov 2024 09:54:13 GMT
Received: from cse-cd02-lnx.ap.qualcomm.com (cse-cd02-lnx.qualcomm.com [10.64.75.246])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 4AE9sCRc007459
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 14 Nov 2024 09:54:13 +0000
Received: by cse-cd02-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id 7F0B716C5; Thu, 14 Nov 2024 17:54:11 +0800 (CST)
From: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
To: vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
        manivannan.sadhasivam@linaro.org, bhelgaas@google.com, kw@linux.com,
        lpieralisi@kernel.org, quic_qianyu@quicinc.com, conor+dt@kernel.org,
        neil.armstrong@linaro.org, andersson@kernel.org,
        konradybcio@kernel.org
Cc: quic_shashim@quicinc.com, quic_kaushalk@quicinc.com, quic_tdas@quicinc.com,
        quic_tingweiz@quicinc.com, quic_aiquny@quicinc.com, kernel@quicinc.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        Ziyue Zhang <quic_ziyuzhan@quicinc.com>,
        Krishna chaitanya chundru <quic_krichai@quicinc.com>
Subject: [PATCH 0/5] pci: qcom: Add QCS8300 PCIe support
Date: Thu, 14 Nov 2024 17:54:04 +0800
Message-Id: <20241114095409.2682558-1-quic_ziyuzhan@quicinc.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: JDrnGlgUV_uGAjm22tVvRbagA8cZ5USV
X-Proofpoint-GUID: JDrnGlgUV_uGAjm22tVvRbagA8cZ5USV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 impostorscore=0
 adultscore=0 priorityscore=1501 lowpriorityscore=0 phishscore=0
 malwarescore=0 spamscore=0 clxscore=1011 mlxscore=0 mlxlogscore=999
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411140076
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241114_015425_882498_1F038540 
X-CRM114-Status: GOOD (  10.97  )
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

Update the relavent DT bindings for PCIe, add new config to the phy
driver add pcie and phy nodes to the .dtsi file and enable then in 
board .dts file for the qcs8300-ride platform.

build dependencies:
-devicetree: https://lore.kernel.org/all/20240925-qcs8300_initial_dtsi-v2-0-494c40fa2a42@quicinc.com/
- tlmm: https://lore.kernel.org/linux-arm-msm/20240819064933.1778204-1-quic_jingyw@quicinc.com/
- gcc: https://lore.kernel.org/all/20240822-qcs8300-gcc-v2-0-b310dfa70ad8@quicinc.com/
- interconnect: https://lore.kernel.org/linux-arm-msm/20240910101013.3020-1-quic_rlaggysh@quicinc.com/

Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
---
Have follwing changes:
	- Document the QMP PCIe PHY on the QCS8300 platform.
	- Add dedicated schema for the PCIe controllers found on QCS8300.
	- Add compatible for qcs8300 platform.
	- Add configurations in devicetree for PCIe0, including registers, clocks, interrupts and phy setting sequence.
	- Add configurations in devicetree for PCIe1, including registers, clocks, interrupts and phy setting sequence.

Ziyue Zhang (5):
  dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the QCS8300 QMP
    PCIe PHY Gen4 x2
  phy: qcom-qmp-pcie: add dual lane PHY support for QCS8300
  dt-bindings: PCI: qcom,pcie-sa8775p: document qcs8300
  arm64: dts: qcom: qcs8300: enable pcie0 for QCS8300
  arm64: dts: qcom: qcs8300: enable pcie1 for QCS8300

 .../bindings/pci/qcom,pcie-sa8775p.yaml       |   7 +-
 .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       |   2 +
 arch/arm64/boot/dts/qcom/qcs8300-ride.dts     |  86 ++++-
 arch/arm64/boot/dts/qcom/qcs8300.dtsi         | 355 ++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      |  89 +++++
 5 files changed, 536 insertions(+), 3 deletions(-)


base-commit: eb6a0b56032c62351a59a12915a89428bce68d1d
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
