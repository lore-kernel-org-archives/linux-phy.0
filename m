Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D396ECAC588
	for <linux-phy@archiver.kernel.org>; Mon,  8 Sep 2025 07:59:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r5qBZEwWkNIqtkogGuz3QvJ9lFy3A/4281Qi4guCCgA=; b=q9awUOP6NoI7qM
	penKUKy46vtyHqzAnKxot+U6ZQkD1mWNXxAvCSZb0gw8Kj8UdLtFhKJPPshS9XNdKHJkF99wIkeen
	GkiKizywh3rTComn6eJlnsyWIPZnapRMXqgwddlQ3SLhB/FllHy6eb6n5j/HkQtLEBVA6Wkx6NQdj
	4yu/FXTYetlwgmvJcO3FSYZ0eyVCBBY+2bkkqjET2gGW2r1YmM/IiP9CRSqE5BFZs7lCGe8kOq0C9
	uLtwlB+1ZtVkPQSu+pQdu+2o+mUmHXC52UKzP3rrR/XanyQgY/HNp/CT/czkK1hd+rT2i/AKUWT0p
	EbjZO/Ie+2COYqJK2RBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvWn7-0000000FWb5-26Q9;
	Mon, 08 Sep 2025 07:59:57 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvWSx-0000000FMTi-0E4l
	for linux-phy@lists.infradead.org;
	Mon, 08 Sep 2025 07:39:08 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 587MvCaq011099;
	Mon, 8 Sep 2025 07:38:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=FjFWcJ+slIN
	PLLLGM2/NXcjtvFX1V8uxVOqcuDTk8ZM=; b=nutsiQVAROyTe20Q68OCYH25wuE
	xyLkFC4sHijR/18jCsP5F7iPY9LLU9qdqNdzEmrZII70UtclC9MOjpdNBTdz2v7Q
	FCq557U6eDsPA5rFitED5BjlKfZ++Z51Lf5LzH2Wy1thwHie4teNHcyFG1pnbKRr
	1F3X0t8ReMZ6idPqrOZ9Xi+bOLgM+Z/uoRnnad8xl7/dNLOWv0j9myN/zJUVKRb5
	yg0Z061wg5ipIRyGCr8D1XuLiS7VRMAOX5NHgoqelNyKOZYKs+LohaN/Z59rCNrh
	23INgKzEyUjSfa4r4ofmIDm3UH4dwi3LacB9km6GdZJCYN62kiXTgDY0yaQ==
Received: from aptaippmta02.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490bws3r5a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 08 Sep 2025 07:38:56 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 5887csbk020713;
	Mon, 8 Sep 2025 07:38:54 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 490e1kr3ms-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 08 Sep 2025 07:38:54 +0000
Received: from APTAIPPMTA02.qualcomm.com (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 5887csXD020705;
	Mon, 8 Sep 2025 07:38:54 GMT
Received: from ziyuzhan-gv.ap.qualcomm.com (ziyuzhan-gv.qualcomm.com [10.64.66.102])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 5887crUX020700
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 08 Sep 2025 07:38:54 +0000
Received: by ziyuzhan-gv.ap.qualcomm.com (Postfix, from userid 4438065)
	id 67BF9529; Mon,  8 Sep 2025 15:38:50 +0800 (CST)
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
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v13 5/5] arm64: dts: qcom: qcs8300-ride: enable pcie1 interface
Date: Mon,  8 Sep 2025 15:38:47 +0800
Message-ID: <20250908073848.3045957-6-ziyue.zhang@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250908073848.3045957-1-ziyue.zhang@oss.qualcomm.com>
References: <20250908073848.3045957-1-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: 2onqdqLwBNvFnzQ6Bkjf_0DcQlLan4OB
X-Proofpoint-GUID: 2onqdqLwBNvFnzQ6Bkjf_0DcQlLan4OB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAxOCBTYWx0ZWRfX35gice+mVzPf
 fZa2y8Ueq+lgnlSmMUf19Wc1QxBiRcBLH6NnwHiodtN3WigQ47to0nPtbmoj6NcVUXXvfyKUIkv
 0CK4sf6yqW3mtmeWpC3Ga2OMupLjBL7B+4ScQoyirXnBaMBKA0s6dH4+UCKPsZB1iIOGbIYD9Sz
 7ee/9Yr+mrAqNaUiReKIIXuLH6WuZJVivvKo9dn30LYsBNqMCGQEyEwfr5oGXSXun8WekLxHPW9
 VhanFpL9/OmxuRKj8iI4LpPR9lNAPURkKVcY+bkMtd5+ch2kiOnDIK0ty8bkxU36XH0it4VxxeR
 Jzj46ufc4qPI1FNyyG2V6KMXXYRz5kl9ulq6Gw+3JYOIpFEzrVuLLrVnaMdEmGLMPrPtNTQ5nn8
 rz6KriwY
X-Authority-Analysis: v=2.4 cv=G4kcE8k5 c=1 sm=1 tr=0 ts=68be8810 cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=niF0sU1HcdIRAeZIowcA:9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_02,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 malwarescore=0 adultscore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250908_003907_098988_03FBEA9A 
X-CRM114-Status: UNSURE (   9.08  )
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

Add configurations in devicetree for PCIe1, board related gpios,
PMIC regulators, etc for qcs8300-ride platform.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 42 +++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
index 9d2653007866..51f299fff910 100644
--- a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
+++ b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
@@ -328,6 +328,25 @@ &pcie0_phy {
 	status = "okay";
 };
 
+&pcie1 {
+	pinctrl-0 = <&pcie1_default_state>;
+	pinctrl-names = "default";
+
+	status = "okay";
+};
+
+&pcieport1 {
+	reset-gpios = <&tlmm 23 GPIO_ACTIVE_LOW>;
+	wake-gpios = <&tlmm 21 GPIO_ACTIVE_HIGH>;
+};
+
+&pcie1_phy {
+	vdda-phy-supply = <&vreg_l6a>;
+	vdda-pll-supply = <&vreg_l5a>;
+
+	status = "okay";
+};
+
 &qupv3_id_0 {
 	status = "okay";
 };
@@ -411,6 +430,29 @@ perst-pins {
 			bias-pull-down;
 		};
 	};
+
+   pcie1_default_state: pcie1-default-state {
+		wake-pins {
+			pins = "gpio21";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+
+		clkreq-pins {
+			pins = "gpio22";
+			function = "pcie1_clkreq";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+
+		perst-pins {
+			pins = "gpio23";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-pull-down;
+		};
+	};
 };
 
 &uart7 {
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
