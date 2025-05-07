Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C955C3ABBE
	for <linux-phy@archiver.kernel.org>; Wed,  7 May 2025 03:10:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9FFHu/g9ryTFxGHZl5bDOJU8Q+CEgLe5MWSQOlGHyWY=; b=PkyY7Cs2I4vGO9
	NH8RRhy4UNpuOt9vgRXVO3Yg2wj7R8moxTHKc86PDsD3zQAqHD/Uqfca6FzUg5MU0krLS8LIEvUAi
	KvoKwwm/Dgm8RLGK4bZkOGrfcU5bFkLkd6umMA1DYmZVBMeFTM9nyEQh6TvdE/ZC5hWyKdmWQT8Ej
	LO2Z/ULO6XM9O75oZc9NmqsJZ8YkRmFdgsgZAc51cc5aBmq2Rh/JZxQY/4J88O0NCKdazb6EQ6I5c
	pumvosC1urzu+0POVwGGS/YNRgzI7DVluqfIt2y0Tzs/vG+2Kqt+u2uIFTVw4LV4yxBrTif3Ry6p5
	Gtut+SVIxZzmWLmCpIgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCVBH-0000000E2nS-12v8;
	Wed, 07 May 2025 03:10:47 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCVBG-0000000E2mE-00Qp
	for linux-phy@bombadil.infradead.org;
	Wed, 07 May 2025 03:10:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=YgA1iFrZ972RxPiycftXbyZ1ckFFOiGeNIJe+xYhX20=; b=djdHxIE03aEz9mQ+2mi8XCTjY1
	Kjycrx3WHi8+2+2n6brWRjtVufZyYQVdtpOmKOhLIzmGZrYmLuqISFydeS1n+K7+RwbX+COAYDe18
	uamxEAwqSftuZct4+tD6DUeQ/5RF57CZHFrHAWU+i+EYkO9HKNJtt2p/vdydbrA7VThXj2wUeLqou
	DBXDXP8JFYPYMYkLwcYUbBYZj3Wzl9EgOVgW18n4kpJO3K0QNcq0XYFGU7G6mbaWi4G8n6dz16raA
	VwX/u3mYLtHqEeGg8aVwzaaaDOQxQUIKYTmAxOr4LpQ3q34KLzz03680tWP3c/2Mm97KVjVWv7dct
	nVeoriGg==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1uCVBB-0000000Fk06-3UMj
	for linux-phy@lists.infradead.org;
	Wed, 07 May 2025 03:10:44 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5471HioL017075;
	Wed, 7 May 2025 03:10:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=YgA1iFrZ972
	RxPiycftXbyZ1ckFFOiGeNIJe+xYhX20=; b=AAtTGAKwBYZfxcAStsiwFz44Bvm
	nudCy/nCY+2DynpMljmqJcOu0ymD9c6+OgUfomj2gjCfW6LZ1MJq6W+CTMGO+XZv
	BbtqZkahg0iCt9PPOydcxIXg8hE7t/E77veCxXorIPO5yfW9ueZ3ntCEiYEoavut
	FSqNkI4HPbbXvV72znkiUKfB/QZJTjxNxWSD1CYi50iMG+7Kdp/OAhuiJxLrfcZV
	3wujWhvP7e6NjlcfBx9bJEgn19FWxJwjbLw65mnw0Jl551SB32pPIY3ahjLG//xF
	k8soCAcFHF+EFedXPNNHaw4SlkU17sOHmzierKdF30Cvk3vWIaK9mEiJHYQ==
Received: from aptaippmta02.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46f5u449wt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 07 May 2025 03:10:30 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 5473AQIt006164;
	Wed, 7 May 2025 03:10:27 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 46dc7m5yt9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 07 May 2025 03:10:27 +0000
Received: from APTAIPPMTA02.qualcomm.com (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 5473AO2u006135;
	Wed, 7 May 2025 03:10:27 GMT
Received: from cse-cd02-lnx.ap.qualcomm.com (cse-cd02-lnx.qualcomm.com [10.64.75.246])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 5473AQVd006165
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 07 May 2025 03:10:27 +0000
Received: by cse-cd02-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id E46D02F3B; Wed,  7 May 2025 11:10:25 +0800 (CST)
From: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
To: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, dmitry.baryshkov@linaro.org,
        neil.armstrong@linaro.org, abel.vesa@linaro.org,
        manivannan.sadhasivam@linaro.org, lpieralisi@kernel.org, kw@linux.com,
        bhelgaas@google.com, andersson@kernel.org, konradybcio@kernel.org
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-pci@vger.kernel.org, quic_qianyu@quicinc.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com,
        Ziyue Zhang <quic_ziyuzhan@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v5 6/6] arm64: dts: qcom: qcs8300-ride: enable pcie1 interface
Date: Wed,  7 May 2025 11:10:19 +0800
Message-Id: <20250507031019.4080541-7-quic_ziyuzhan@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250507031019.4080541-1-quic_ziyuzhan@quicinc.com>
References: <20250507031019.4080541-1-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=KcfSsRYD c=1 sm=1 tr=0 ts=681acf26 cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=CasqvnNAXgcO8Npb4p0A:9
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: AMKRNsQVHJDuO_MmBjp0dpLKLkzO4OZH
X-Proofpoint-ORIG-GUID: AMKRNsQVHJDuO_MmBjp0dpLKLkzO4OZH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA3MDAyNiBTYWx0ZWRfX7kcwVg1zzUGb
 ydMEA0IT9KsIhBVs6vbVAabfCwcd9uuP5PX4qAo4hRkIoLI+R1V876rgyVqqdajxOxISOquKmk1
 h9W+KEiCc9ZBdIW9fwNO9yoJOcdra26fz57jMPfSihLRpbZTpLd1ztDMeotNwOlygvuWYeLAq0i
 V5y1g0kMX6H15GZJbOrExXKT8ueoy4vuDwekh1wrHIFCwKXaBwS2QmgQMXpmQbEIw1k11JPKZVc
 qF6c/1yusQWSxPGE97aSKo0xtniyhwyTvzfftP0Cx/XuTqSCjSCwHeCaaQJecRyMiHqmbxakAyw
 RGpV7wYPGlwAyfnBSoPKnKkqijg8FomtXmbt4W0JLb6mo9UqklLbwaHLTwE/7LbEpKV0KDra4ii
 agGgkUNsEwUYRYged+Zb4r+DRpHhFbQptw0YGDzxnnVQmpz5NJoG7pKlmZhoACNP3U6MMoia
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-07_01,2025-05-06_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 spamscore=0 suspectscore=0 bulkscore=0 mlxlogscore=999
 phishscore=0 impostorscore=0 priorityscore=1501 malwarescore=0 adultscore=0
 clxscore=1015 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505070026
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250507_041042_456753_314CCF61 
X-CRM114-Status: UNSURE (   8.60  )
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
Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
---
 arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 40 +++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
index c3fe3b98b1b6..508a1276ed05 100644
--- a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
+++ b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
@@ -302,6 +302,23 @@ &pcie0_phy {
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
@@ -350,6 +367,29 @@ perst-pins {
 		};
 	};
 
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
+
 	ethernet0_default: ethernet0-default-state {
 		ethernet0_mdc: ethernet0-mdc-pins {
 			pins = "gpio5";
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
