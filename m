Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9EB8EC88E5C
	for <linux-phy@archiver.kernel.org>; Wed, 16 Sep 2026 10:20:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dqy+VRvxuf+pKouSRlnm9yQiYhlJ19/YhYI9hU/7lZU=; b=FzyOD46g1+pGpD
	pDiB8dYqFa0Z5oNwi4vu4vFa7UrbLU4mRo0l/zTsXWU1FOz+U/H8GDb45qRs81bUA7eSQ3YVZZ5aF
	V0yLl00madtEAvAlUK5xyKNmxge33ljlr//np2gw+DTNXmGyS+duKcALslYSJi1LJYFm6jkIjvehh
	bydlDW3CU1XK1I/lKWsVzzkYQGcXc1t5i1gDSOvXk2DMNQmegKOj6XJLDMfZVnpxBXqiiZYZUdhAK
	aBaqxvA02zy1ZXL9RJ0dvdZ9VSubXVjoohd0DusnEQZBj9ZqdBa11hVgY6HJzDyPMdEuU4O8VfjI0
	+kXYZ8H+9VTbpmUtzEQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6mky-00000008xU1-0tV7;
	Wed, 16 Sep 2026 10:20:48 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6mkt-00000008xSg-0j5F
	for linux-phy@bombadil.infradead.org;
	Wed, 16 Sep 2026 10:20:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=VhbHHMWfVenEwg6cXydhdCoNazkq8JLNGuh1Z57Fzlc=; b=WcRVYjCZPe5G2Xd7iJKfHV1n56
	YqZQhQajNdln5tNTqJGCkDLFmhQ8xxrL5dX2vfXIVDF9L8ZFt2e0TGD/CKG9uKtXtda5zavSZiQHp
	SCZNwNe5S/gkIS6G62Xt1DEg2Vgjj4q0LISHWEv2RGTVN+9zUya1q/ChXRISCcAYqJiuRuu46XWS+
	RX97vCCc4cQQF0YikZBb8bm9/3eMYOPeJm6YtF6H4Q8Zduq47a9eQs5RwYqdnckUoDI8zeps1ebdj
	q8DTYnsmg8VntglJR72N9cu6DMp1Vk6q91Mti8qj5/v2dydXEOSXT3/eFFr0uKlhZv10T1nV0GT+8
	NXBh2mDQ==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x6mkp-00000007jb3-3Gtl
	for linux-phy@lists.infradead.org;
	Wed, 16 Sep 2026 10:20:41 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68G93AgZ2823494;
	Wed, 16 Sep 2026 10:20:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=VhbHHMWfVen
	Ewg6cXydhdCoNazkq8JLNGuh1Z57Fzlc=; b=o1yobHcjctt3HAnb7HZ+Evu9uC7
	+yiXFXzoX86UWJr2cVdOiWoK/fv8xr2IZmTB23kO+A3A5AQn4/wX+SsL0GnMWYSA
	dX1qRiVSril9PfV1Dg4mvs3EvjU5MdssrHA9OwepHINg4ibxC80uKZR4Lh6chHJC
	WGco6LgpbULWIL4DFIO1D84sLrSgQfZoPcgDhLDqD2Etgtw480T1Z/74MX1jSIHT
	p4pYvBR8oGkIpuhS+f4dJw5kgZzxob87KSPRljzpLAd6u5n5nLMA+uu9uWOu5FNV
	qQ3U1UWcRB6i+2jq8X6c7PTbgqxrqMHzC7SbYSbAKlrzQ093QsHrwXqEVxA==
Received: from aptaippmta01.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gqfvfja3v-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Wed, 16 Sep 2026 10:20:31 +0000 (GMT)
Received: from pps.filterd (aptaippmta01.qualcomm.com [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (8.18.1.11/8.18.1.11) with ESMTP id 68GAKTvZ1172517;
	Wed, 16 Sep 2026 10:20:29 GMT
Received: from cse-cd02-lnx.qualcomm.com (smtphost-taiwan.qualcomm.com [10.249.136.33])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 68GAKSma1172494
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Wed, 16 Sep 2026 10:20:28 +0000 (GMT)
Received: by cse-cd02-lnx.qualcomm.com (Postfix, from userid 4438065)
	id 661A4492EE; Wed, 16 Sep 2026 18:20:27 +0800 (CST)
From: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        peter.chen@oss.qualcomm.com, qiang.yu@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Subject: [PATCH v2 4/4] arm64: dts: qcom: sa8775p: Add qref and refgen supply for PCIe PHYs
Date: Wed, 16 Sep 2026 18:20:23 +0800
Message-ID: <20260916102023.2054761-5-ziyue.zhang@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260916102023.2054761-1-ziyue.zhang@oss.qualcomm.com>
References: <20260916102023.2054761-1-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-Reinject: loops=2 maxloops=12
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Authority-Analysis: v=2.4 cv=JYkpPkKV c=1 sm=1 tr=0 ts=6aaa6d6f cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=VdqzKS8jKosA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8 a=EM5WzatUieOqsTOJ-ZQA:9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE2MDEzNSBTYWx0ZWRfX5IrHIktFaUUN
 6DUmoU3v+5SLQXwU4mZR0Bab9zLKUrlHksfjF86uOfe2YIRlRTxvGmkyL1/YloBqsSm6seHI46X
 ArJLM0F3RlyzUJvMbgXxaBLSpSmm0HVikc8hQucRF2+RyVgtuYIl/t0ayx5B+1Pbm7O3SXY3Qy2
 DZ5Om7ISFlUvScmWJUBagpOvFz2hQRw6ag6KGDefGiPha7e6kXzr/aMaY7Qf7725oSYhZZxIfaL
 V6FwMf9+9gzUFjpPlq31bVMz7bqdbEZ3BOPYOtE9DnOvyR75NvY/YqF9m4/6hhK2OAr0tUVGNDt
 jjAy63pHf//FZNXLiVaZuMgjYGiodj30/3y6Z714Cw1bvNzbc2fl4b+2kJJ81nr30hecb0dpevr
 7dhrUhMNxa/U9WXPhygTZ32oAnKXPkwPduq9gsIXVlYG9QFBElRAuWEwFfgeNMj/eOPaxgOVRhu
 uzU/uWf5pv8QTuUCXIw==
X-Proofpoint-GUID: gMZ5NNgNnqPCj-xhjPGzbEy6aRl7Xpeb
X-Proofpoint-ORIG-GUID: gMZ5NNgNnqPCj-xhjPGzbEy6aRl7Xpeb
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE2MDEzNSBTYWx0ZWRfXyLw9IhvaeUIu
 Cu3zcBPPBhoGj1fy23uBcOySyNr5fKVrdJPwfPtMV+aXAi+3EAaBxRiCKtIsHrxonQ5rxLI7nqT
 dJCWQiwTDucGaAzeUWNhUx4dfwe/aWo=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-15_05,2026-09-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 impostorscore=0 priorityscore=1501
 spamscore=0 malwarescore=0 adultscore=0 clxscore=1015 bulkscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609160135
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260916_112040_209434_8566BDCC 
X-CRM114-Status: UNSURE (   9.40  )
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

The QMP PCIe PHYs on SA8775p require dedicated qref and refgen voltage
supplies for stable operation. Without these supplies, the system may
occasionally crash.

Add vdda-qref-supply and vdda-refgen-supply in the board files
(Lemans-EVK and Lemans-RIDE).

Fixes: 94d7d37f6ac3 ("arm64: dts: qcom: lemans-evk: Enable PCIe support")
Fixes: 76326da895b8 ("arm64: dts: qcom: lemans: Refactor ride/ride-r3 boards based on daughter cards")
Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts          | 4 ++++
 arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi | 4 ++++
 2 files changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index a45485b54a5b..11fb11b161fc 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -851,6 +851,8 @@ &pcie0 {
 &pcie0_phy {
 	vdda-phy-supply = <&vreg_l5a>;
 	vdda-pll-supply = <&vreg_l1c>;
+	vdda-qref-supply = <&vreg_l4a>;
+	vdda-refgen-supply = <&vreg_l7a>;
 
 	status = "okay";
 };
@@ -868,6 +870,8 @@ &pcie1 {
 &pcie1_phy {
 	vdda-phy-supply = <&vreg_l5a>;
 	vdda-pll-supply = <&vreg_l1c>;
+	vdda-qref-supply = <&vreg_l4a>;
+	vdda-refgen-supply = <&vreg_l7a>;
 
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi b/arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi
index 144f117ba511..c312fbd6ac48 100644
--- a/arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi
@@ -983,6 +983,8 @@ &pcie1 {
 &pcie0_phy {
 	vdda-phy-supply = <&vreg_l5a>;
 	vdda-pll-supply = <&vreg_l1c>;
+	vdda-qref-supply = <&vreg_l4a>;
+	vdda-refgen-supply = <&vreg_l7a>;
 
 	status = "okay";
 };
@@ -990,6 +992,8 @@ &pcie0_phy {
 &pcie1_phy {
 	vdda-phy-supply = <&vreg_l5a>;
 	vdda-pll-supply = <&vreg_l1c>;
+	vdda-qref-supply = <&vreg_l4a>;
+	vdda-refgen-supply = <&vreg_l7a>;
 
 	status = "okay";
 };
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
