Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D791DC3DA41
	for <linux-phy@archiver.kernel.org>; Tue,  9 Jul 2024 15:16:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:MIME-Version:Message-ID:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uAcPXbFKq6sJykYoXoQY0OZDiqnq25MGmwviVpuLsrI=; b=2xCXuwVq/QUMkG
	x71Kwed1ovyQ7lGs44oJYIAGyfEA0a9fs0z4dUzzk1OXgXY63FWG5lvp5TrWDXxy79a+Q910QVlyi
	2Rz0pw0M17W4rmzxJcH2R4C+UKc9xy4DII+Ps5BPmKEcGHdi0uDqUOFl8vFbfbyvZDZJ0gLdlqYW8
	qRZcvwSNGG2xzVID3wrdPS8Zd3cnaR7nWDmYMAU6LI98iWnbwsBaPqCrvV1W1fKdgzrRK3KthSOzQ
	LEi8PCj+TD0MOeWlIxJqaRFuI5od/IizWIFE6+S8d5S1ipTlQ7Ij3y/CAk2pDMCkiVut6LHrQ+/eC
	co/7mgL8oeS7dXsrIbrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRCZV-00000007hlG-2RZU;
	Tue, 09 Jul 2024 15:16:01 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRCZT-00000007hjv-0L6Q
	for linux-phy@lists.infradead.org;
	Tue, 09 Jul 2024 15:16:00 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 469BLMI5021878;
	Tue, 9 Jul 2024 15:15:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=nkEO7Wg76GVNlPj8euMDoi
	du5eeZoz2/dzWlvug6oFQ=; b=O/KD56rSxoFCp7GGdHozz5g4JChburLkWLDh6q
	iPOWKM9oaI0zxVoVPwlA4IfIxQfHvL3sBcJcBhqzt5HMs8DjTygnmzv/h/Q+OmaZ
	t41oHv2tASNFB8SWXkTGi7eMVIC5fPQyFIpvUt9pfQNcvEuae5SP0MTnb+SVK6Mt
	Fp7uR3Ztvb5kvdVf/vUsPDwMofOuoxyU7b1i0KBDm1rHMcAMu/YRD2QjiZS4Vqom
	L4OlThgAxZrHuCUCdZ2DCuuWBgFcwTkQCGRr8gNVX3KtLJADBCpDK6MoUBTTYj/Z
	k/4EqOt8FdFxLzLLQ5UfaV/Oll3jxKfTpC6OzYcgLpKI3YGA==
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 406x0t7279-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 09 Jul 2024 15:15:54 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA02.qualcomm.com (8.17.1.19/8.17.1.19) with ESMTPS id 469FFrAh012936
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 9 Jul 2024 15:15:53 GMT
Received: from tengfan-gv.ap.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Tue, 9 Jul 2024 08:15:47 -0700
From: Tengfei Fan <quic_tengfan@quicinc.com>
Subject: [PATCH v2 0/2] phy: qcom: Add QCS9100 dwmac sgmii phy compatible
Date: Tue, 9 Jul 2024 23:15:35 +0800
Message-ID: <20240709-add_qcs9100_dwmac_sgmii_hpy_compatible-v2-0-5ffeb16252db@quicinc.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIABhUjWYC/zXNSw6CMBSF4a2Qji25LSDgyH0Y0tTbAjeR8iiih
 LB3C4nD/wzOtzFvJ7Ke3aKNTXYhT70LIS8Rw1a7xnIyoZkEmUIOJdfGqBF9KQCU+XQalW86ItU
 Oq8K+G/RMz5fl6dUgiiTNtQYWzobJ1vQ9oUcVuiU/99N6uos41j+RgMyKDGIpcglQcMHHN6Gar
 Wtq7e5HkMM4WKza9/0HM46bMMIAAAA=
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski
	<bartosz.golaszewski@linaro.org>
CC: <kernel@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, Tengfei Fan <quic_tengfan@quicinc.com>
X-Mailer: b4 0.15-dev-a66ce
X-Developer-Signature: v=1; a=ed25519-sha256; t=1720538147; l=1723;
 i=quic_tengfan@quicinc.com; s=20240709; h=from:subject:message-id;
 bh=78d/it+cRmmB/48I55KB/LarWlDuk5m5hs5mP+nlp0w=;
 b=vRtPIhjOD8JOJBjSM5t7UbyPgWQo4DqpUEdD5NmN/d6EC9OFSiv3E/wteHzLJ4/J5hqziGmse
 jHKJBPgwD0vBHagn7ZGU3Q1jYl4T7f2jZipFPzFI+E6/TAq/wRV7ABS
X-Developer-Key: i=quic_tengfan@quicinc.com; a=ed25519;
 pk=4VjoTogHXJhZUM9XlxbCAcZ4zmrLeuep4dfOeKqQD0c=
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: bZrVnjKfZWi4-nFlqttkopPEhept4V9I
X-Proofpoint-ORIG-GUID: bZrVnjKfZWi4-nFlqttkopPEhept4V9I
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-07-09_04,2024-07-09_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 bulkscore=0
 lowpriorityscore=0 impostorscore=0 adultscore=0 suspectscore=0
 phishscore=0 mlxlogscore=678 priorityscore=1501 malwarescore=0 spamscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2406140001 definitions=main-2407090100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240709_081559_285579_03BDD2C1 
X-CRM114-Status: GOOD (  12.33  )
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

Introduce support for the QCS9100 SoC device tree (DTSI) and the
QCS9100 RIDE board DTS. The QCS9100 is a variant of the SA8775p.
While the QCS9100 platform is still in the early design stage, the
QCS9100 RIDE board is identical to the SA8775p RIDE board, except it
mounts the QCS9100 SoC instead of the SA8775p SoC.

The QCS9100 SoC DTSI is directly renamed from the SA8775p SoC DTSI, and
all the compatible strings will be updated from "SA8775p" to "QCS9100".
The QCS9100 device tree patches will be pushed after all the device tree
bindings and device driver patches are reviewed.

The final dtsi will like:
https://lore.kernel.org/linux-arm-msm/20240703025850.2172008-3-quic_tengfan@quicinc.com/

The detailed cover letter reference:
https://lore.kernel.org/linux-arm-msm/20240703025850.2172008-1-quic_tengfan@quicinc.com/

Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
---
Changes in v2:
  - Split huge patch series into different patch series according to
    subsytems
  - Update patch commit message

prevous disscussion here:
[1] v1: https://lore.kernel.org/linux-arm-msm/20240703025850.2172008-1-quic_tengfan@quicinc.com/

---
Tengfei Fan (2):
      dt-bindings: phy: describe the Qualcomm SGMII PHY for QCS9100
      phy: qcom: add the SGMII SerDes PHY driver support

 .../devicetree/bindings/phy/qcom,sa8775p-dwmac-sgmii-phy.yaml        | 5 ++++-
 drivers/phy/qualcomm/phy-qcom-sgmii-eth.c                            | 1 +
 2 files changed, 5 insertions(+), 1 deletion(-)
---
base-commit: 0b58e108042b0ed28a71cd7edf5175999955b233
change-id: 20240709-add_qcs9100_dwmac_sgmii_hpy_compatible-46dcc1347aa0

Best regards,
-- 
Tengfei Fan <quic_tengfan@quicinc.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
