Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7ED5FCAC586
	for <linux-phy@archiver.kernel.org>; Mon,  8 Sep 2025 07:59:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dlNhszaaqB/sGtyxx6DZlP7JJytNuDuAPvN1d6FVAy0=; b=e1DnL7d8iWXvmQ
	7OZvIKFwDWH/+v7ONmS4LBVlJK8eQUqBHQvHIrqgS0LGZ6SwJG2VyPFKHRRmqtOEY/E5EgA2GBdr7
	46N98JMwZryAWIbzgQIspvSAP57sHgKxi6juAof/pTNXAO6xRPxe/qySdiN3/B6txLARWUrzv6sIL
	IjVp3GjlNKXcdE8QDOKy+sEMpBN6ZX4fPPKQewfsuUGkZHwWNzNW1K0oO4WFPPR3hVA2dVlOPvjLt
	WHNQnXbEyX5GRNDXpMt5IKJuxY3+qNaXou5tKbPat/dgnlO14h4NPrIvOovhPh1KXZJHaHpfwHOCo
	rfxyiO/1eeokWHl9QxVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvWn7-0000000FWac-0s7c;
	Mon, 08 Sep 2025 07:59:57 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvWSt-0000000FMR7-1jiC
	for linux-phy@lists.infradead.org;
	Mon, 08 Sep 2025 07:39:05 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5880Ts3w004353;
	Mon, 8 Sep 2025 07:38:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=IVmBwetbAjXPjKL8kM+55RprCeMxMJVCTnX
	d2WVqnaI=; b=U1663RnOuj5KtOOsIpnS5fXlkmuOo0ozx/oTLNfCsaLiE4s1Izl
	gBFHAMoWnSyY0GWuQLg1K5ILQrs3oyYb9zmA8T2u4cUSUTHTtAgAkc2gxeWvC0BX
	ucdbhuIwpzbmdeEnNB9Ou9a+LxjS9n/KJZgdnHWIR+f+EsczjmVN3JC0QqgCur0t
	SEnRfDWGHP8CZG+vVq5BqmmDA7OhB7hmL8EmJfK6cUonlT2ZJsCXY0b3OODmdImX
	dMcLmjhLqSGsAIhMk7F2sFenHglZq8//e/0KFf9Fhxc2RnOD+nXR6/JgWf7N4hOS
	ymhnPKtVCFYfvJGEtCR+Q3HwzWa4Eid9Pbw==
Received: from aptaippmta01.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490e4kukb9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 08 Sep 2025 07:38:54 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 5887cqRW026229;
	Mon, 8 Sep 2025 07:38:52 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 490e1m83db-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 08 Sep 2025 07:38:52 +0000
Received: from APTAIPPMTA01.qualcomm.com (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 5887cqGU026212;
	Mon, 8 Sep 2025 07:38:52 GMT
Received: from ziyuzhan-gv.ap.qualcomm.com (ziyuzhan-gv.qualcomm.com [10.64.66.102])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 5887cpIA026207
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 08 Sep 2025 07:38:52 +0000
Received: by ziyuzhan-gv.ap.qualcomm.com (Postfix, from userid 4438065)
	id 488B751C; Mon,  8 Sep 2025 15:38:50 +0800 (CST)
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
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com,
        Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>,
        Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Subject: [PATCH v13 0/5]  pci: qcom: Add QCS8300 PCIe support
Date: Mon,  8 Sep 2025 15:38:42 +0800
Message-ID: <20250908073848.3045957-1-ziyue.zhang@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzOCBTYWx0ZWRfXx9NNXK+V2lwa
 GwgizV4BJ8wSMebabP6vgS4djOQplaJ9+20nluZk3zrklWlCu7ay6NFOflv+6nu4edGJ+sMVexY
 9ojnDP97sra0V9P1q8TTt5yzJwsFj/4uUjIxYUehIJJlYJxKl1l+yhj94WVSqTP04kn+G/BCMhL
 529f6ZGp9d409+qWtWfNcc1LaG0Bki8EQjOUMV126yj4j2IjZctVxbbRriIcPQ2S9AHfaN0cZQ3
 lqIaVx54oupGA40uBJYxx/J757aqlGL/tfXnJSL0FI3IDcKUlSAfOuTqggH017GNGniXgG/Mdfd
 gljkUTJ0wiG2urILUc2lq4O8NTCpJpyApPgSkoeieIxY6DL2iCYUj+xCcbeZRKrlwYl98f7cgtV
 0pp9kTyS
X-Authority-Analysis: v=2.4 cv=J66q7BnS c=1 sm=1 tr=0 ts=68be880e cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=QyXUC8HyAAAA:8 a=MByrn4WnkjAl5ObW7ywA:9 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: lYzWUJAH3I8JmqH-vPrN5HQAaVv3Iia7
X-Proofpoint-ORIG-GUID: lYzWUJAH3I8JmqH-vPrN5HQAaVv3Iia7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_02,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 clxscore=1015 spamscore=0 phishscore=0
 adultscore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060038
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250908_003903_522144_38341DBC 
X-CRM114-Status: GOOD (  13.32  )
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

This series depend on this patch
https://lore.kernel.org/all/20250826-pakala-v2-3-74f1f60676c6@oss.qualcomm.com/

This series adds document, phy, configs support for PCIe in QCS8300.
It also adds 'link_down' reset for sa8775p.

Have follwing changes:
	- Add dedicated schema for the PCIe controllers found on QCS8300.
	- Add compatible for qcs8300 platform.
	- Add configurations in devicetree for PCIe0, including registers, clocks, interrupts and phy setting sequence.
	- Add configurations in devicetree for PCIe1, including registers, clocks, interrupts and phy setting sequence.

Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
---
Changes in v13:
- Fix dtb error
- Link to v12: https://lore.kernel.org/all/20250905071448.2034594-1-ziyue.zhang@oss.qualcomm.com/

Changes in v12:
- rebased pcie phy bindings
- Link to v11: https://lore.kernel.org/all/20250826091205.3625138-1-ziyue.zhang@oss.qualcomm.com/

Changes in v11:
- move phy/perst/wake to pcie bridge node (Mani)
- Link to v10: https://lore.kernel.org/all/20250811071131.982983-1-ziyue.zhang@oss.qualcomm.com/

Changes in v10:
- Update PHY max_items (Johan)
- Link to v9: https://lore.kernel.org/all/20250725104037.4054070-1-ziyue.zhang@oss.qualcomm.com/

Changes in v9:
- Fix DTB error (Vinod)
- Link to v8: https://lore.kernel.org/all/20250714081529.3847385-1-ziyue.zhang@oss.qualcomm.com/

Changes in v8:
- rebase sc8280xp-qmp-pcie-phy change to solve conflicts.
- Add Fixes tag to phy change (Johan)
- Link to v7: https://lore.kernel.org/all/20250625092539.762075-1-quic_ziyuzhan@quicinc.com/

Changes in v7:
- rebase qcs8300-ride.dtsi change to solve conflicts.
- Link to v6: https://lore.kernel.org/all/20250529035635.4162149-1-quic_ziyuzhan@quicinc.com/

Changes in v6:
- move the qcs8300 and sa8775p phy compatibility entry into the list of PHYs that require six clocks
- Update QCS8300 and sa8775p phy dt, remove aux clock.
- Fixed compile error found by kernel test robot
- Link to v5: https://lore.kernel.org/all/20250507031019.4080541-1-quic_ziyuzhan@quicinc.com/

Changes in v5:
- Add QCOM PCIe controller version in commit msg (Mani)
- Modify platform dts change subject (Dmitry)
- Fixed compile error found by kernel test robot
- Link to v4: https://lore.kernel.org/linux-phy/20241220055239.2744024-1-quic_ziyuzhan@quicinc.com/

Changes in v4:
- Add received tag
- Fixed compile error found by kernel test robot
- Link to v3: https://lore.kernel.org/lkml/202412211301.bQO6vXpo-lkp@intel.com/T/#mdd63e5be39acbf879218aef91c87b12d4540e0f7

Changes in v3:
- Add received tag(Rob & Dmitry)
- Update pcie_phy in gcc node to soc dtsi(Dmitry & Konrad)
- remove pcieprot0 node(Konrad & Mani)
- Fix format comments(Konrad)
- Update base-commit to tag: next-20241213(Bjorn)
- Corrected of_device_id.data from 1.9.0 to 1.34.0.
- Link to v2: https://lore.kernel.org/all/20241128081056.1361739-1-quic_ziyuzhan@quicinc.com/

Changes in v2:
- Fix some format comments and match the style in x1e80100(Konrad)
- Add global interrupt for PCIe0 and PCIe1(Konrad)
- split the soc dtsi and the platform dts into two changes(Konrad)
- Link to v1: https://lore.kernel.org/all/20241114095409.2682558-1-quic_ziyuzhan@quicinc.com/

Ziyue Zhang (5):
  dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Update pcie phy bindings
    for qcs8300
  arm64: dts: qcom: qcs8300: enable pcie0
  arm64: dts: qcom: qcs8300-ride: enable pcie0 interface
  arm64: dts: qcom: qcs8300: enable pcie1
  arm64: dts: qcom: qcs8300-ride: enable pcie1 interface

 .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       |  17 +-
 arch/arm64/boot/dts/qcom/qcs8300-ride.dts     |  84 +++++
 arch/arm64/boot/dts/qcom/qcs8300.dtsi         | 310 +++++++++++++++++-
 3 files changed, 394 insertions(+), 17 deletions(-)


base-commit: be5d4872e528796df9d7425f2bd9b3893eb3a42c
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
