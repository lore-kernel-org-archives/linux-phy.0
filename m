Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6D71C87FD4
	for <linux-phy@archiver.kernel.org>; Fri, 25 Jul 2025 11:20:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x2DeDmPad+a42OMhef4ILC2CA0ERE94Shw8cDrBtqW0=; b=vz6z4jgKUnGruH
	2PeAEzAzlNDGW5GVhaws5EroJPMNMWavrdEYuQfm1O+m7bg4+2hjZmAFtUPGLLOSU2oEO73qzJIaf
	+3ygDgACQPiL9g55hTlSBXRoTxeK9HOEFxm4BKV4nKY9EdgT5AIgx0aMGo3CbBa/mMkA7uJQGXDjm
	oD+Oue38e+J4aOBk4Oyn1hWXueE0VRf8oe6GJn3hYbzfMew0L7hUT9gsU7zvIfoogfovbj0krJWL3
	BNiVZ8bhlVukAZa0I1DlEr34KdWozX/QGpNiWLXERFT9/tHTeECke1WW9xmnbRAPP2RXF5OjuyMqR
	A9pthaaHLLSgcKj57+OA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufGTN-00000009hFy-212k;
	Fri, 25 Jul 2025 11:20:21 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufFrD-00000009cbC-40Xo
	for linux-phy@lists.infradead.org;
	Fri, 25 Jul 2025 10:40:57 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56P88nX9008715;
	Fri, 25 Jul 2025 10:40:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=TTUDTxyQV+O
	ftN9SN4jSVdTMKwIVqPobiArGHZdB6yI=; b=SFOoDgauD/RENsu1b5MfTA6k9wA
	jG5t5DgwtXitMfDRUZik670NkVKGNlH38sv3RxmKcsmMyhtfyEtFWC1BIgBHzop1
	zECIpMGEj3j22AH80eLB0CbSKnDou0mTvhIYtbbmzyOFf5YYofoNPMJMHK9SUMtp
	Ucvukx1Qt0F1751GAQbzxno3oSuiOtUm46e+Z2Su9PF51AQJmhcpI6xUqfDlRsFX
	bKK3L3JOZBfG7QQXOblhaUBO8XAfxcRe5R8Ssv104ZXa/JMaeJp25CbOxBRS3P7I
	1n34EckVCNoCjdj85s/IwJDyhI+dP9P/VumnpjmJy5WDb0sjMOKZ7FZ+Spg==
Received: from aptaippmta02.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4846590dsu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 25 Jul 2025 10:40:46 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 56PAeiWI017187;
	Fri, 25 Jul 2025 10:40:44 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 4804emtguc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 25 Jul 2025 10:40:44 +0000
Received: from APTAIPPMTA02.qualcomm.com (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 56PAei33017179;
	Fri, 25 Jul 2025 10:40:44 GMT
Received: from cse-cd01-lnx.ap.qualcomm.com (cse-cd01-lnx.qualcomm.com [10.64.75.209])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 56PAehDc017173
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 25 Jul 2025 10:40:44 +0000
Received: by cse-cd01-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id 4E7532184A; Fri, 25 Jul 2025 18:40:41 +0800 (CST)
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
Subject: [PATCH v9 5/5] arm64: dts: qcom: qcs8300-ride: enable pcie1 interface
Date: Fri, 25 Jul 2025 18:40:37 +0800
Message-Id: <20250725104037.4054070-6-ziyue.zhang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250725104037.4054070-1-ziyue.zhang@oss.qualcomm.com>
References: <20250725104037.4054070-1-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: ZLxuZk5cYPTkCihpyRkwyObL2USA87RG
X-Proofpoint-GUID: ZLxuZk5cYPTkCihpyRkwyObL2USA87RG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI1MDA5MCBTYWx0ZWRfX8ruY9P3Lgt++
 G2NQNmh+S2qehgJTXRz2EdDUrP0ORyzLZqOxH4NsG0E+Y96N333+SkuNTvd+c5SOEtP1pXrcTm0
 fMmJz3Q9gKdKQ/QFF2rlz8iXUoO54gTrgKd2lGE+sj6A+FT4IvQIIXh7pKK5VU7gWA0PeNWWSdv
 ncKVfW/PzbowzyGC7mP+9uXAQj8MhRqENmib41PgUYDe/IbKIgK5g+61xqLkXlWCjhjhl1cpMa4
 ydqspC2YU5IbpRQXs6A0MeA5yD0XONdR2GqV+RUg6QVj+HBl0b/24W0Q+qynhjASw0ncVMgHCoi
 3CVvJgXz7br0Ff9X3HP/rO1fcWQqJICKn9PD7Fm0mXc4W1OY++vEq3Zs6IeBvYWrbjoiZOEvlKR
 vkKEOKJRmRQYzKe+QxPxDX3mDh4zUUKK3kE3AudWS8pICZYrjcBklSdkBjoEb4I9QW5cHD3S
X-Authority-Analysis: v=2.4 cv=Vo8jA/2n c=1 sm=1 tr=0 ts=68835f2e cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=0LYZJ8Fh9g_wO_RM1qMA:9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-25_03,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 mlxlogscore=999 adultscore=0 impostorscore=0 suspectscore=0
 phishscore=0 spamscore=0 clxscore=1015 bulkscore=0 priorityscore=1501
 lowpriorityscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507250090
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250725_034055_995005_87FBD7E0 
X-CRM114-Status: UNSURE (   8.95  )
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
 arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 40 +++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
index e8e382db2b99..bec2905c5d8f 100644
--- a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
+++ b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
@@ -325,6 +325,23 @@ &pcie0_phy {
 	status = "okay";
 };
 
+&pcie1 {
+	perst-gpios = <&tlmm 23 GPIO_ACTIVE_LOW>;
+	wake-gpios = <&tlmm 21 GPIO_ACTIVE_HIGH>;
+
+	pinctrl-0 = <&pcie1_default_state>;
+	pinctrl-names = "default";
+
+	status = "okay";
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
@@ -388,6 +405,29 @@ perst-pins {
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
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
