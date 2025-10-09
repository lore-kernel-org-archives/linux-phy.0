Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96B57CCD183
	for <linux-phy@archiver.kernel.org>; Thu,  9 Oct 2025 07:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y9wj02GE6aqaGTljAdQnQbEuqXAHXfvHwjAPn+I6X4E=; b=JQKJgICHS8N0JZ
	GEsbBw+BwTZdF/R7/Bu4GgyYdcIk8oXK7YtP7WfXGR5LkNf/MdmhLzNt6imU+AKy6YSh9cEjECxi/
	d1Iu6PKfhPfiGwoC1eey43v/plk4A/x8Vd26iG63Tk1QByKiRe3YUf7lsk09PsvvpBKUvmhIp9bc5
	Hjd4gUWd/jtNxkSdlq/t1PfEnIZo5CAVLdgaEP1sbAGhnaygzydqUFaiL9owC4Nahaho2PnyTcuat
	uUsf7/INVejxrWOpquah3gRWvw37GIc3SHaweeGiA0Chl/QmQ/AwkDwLEWxga1Wvj3eq6WzIC9Ian
	GqvLTBzZoBV5hD4B95qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6koh-00000005KaX-1Saw;
	Thu, 09 Oct 2025 07:11:59 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6koe-00000005KYf-4Bvt
	for linux-phy@lists.infradead.org;
	Thu, 09 Oct 2025 07:11:58 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5996ERma019620;
	Thu, 9 Oct 2025 07:11:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:date:from:in-reply-to:message-id:references:subject:to; s=
	qcppdkim1; bh=8h3WUnKi1W0Hk1xnCNAqAS87UjJjGRluZ4FC1NNOHmc=; b=V2
	i5iotH34l7ykHwxzYlYAZ+DCs2qf0R54oYfdajRVJxCPgJ7iZsiTjnI3jKtk8y9B
	8gWe8NYMe7TQTxb8NVWbtl2PiFu4rN1tUIZbN3jsAI+PM03+DxIfH/HSZj1NaAWV
	ViDHrqTojzCa0dhrzWNaNukjaOtDUuNb7N85xsKNUjjBd8epPBzB1Iiog6Nra+dW
	eTJHDky+EOlYwi9Z+WXMn/1647KsybPjT179TBq8znOKgjFcHldeInQwiBHlHnTM
	ZxgeRnYfQFHbJBO1b/2IuhS2pBTzHBCEIs9F8osIaMYBPfvEL0fWcBxslpavAhtD
	r1FOgwEwLIs1j1572gww==
Received: from apblrppmta01.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4u1t1b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 09 Oct 2025 07:11:46 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 5997BhrN002158;
	Thu, 9 Oct 2025 07:11:43 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 49jvnmbgy0-1;
	Thu, 09 Oct 2025 07:11:43 +0000
Received: from APBLRPPMTA01.qualcomm.com (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 5997BgLn002134;
	Thu, 9 Oct 2025 07:11:42 GMT
Received: from hu-maiyas-hyd.qualcomm.com (hu-riteshk-hyd.qualcomm.com [10.147.241.247])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 5997Bg9c002125;
	Thu, 09 Oct 2025 07:11:42 +0000
Received: by hu-maiyas-hyd.qualcomm.com (Postfix, from userid 2314801)
	id A5E0B5015BD; Thu,  9 Oct 2025 12:41:41 +0530 (+0530)
From: Ritesh Kumar <quic_riteshk@quicinc.com>
To: robin.clark@oss.qualcomm.com, lumag@kernel.org, abhinav.kumar@linux.dev,
        jessica.zhang@oss.qualcomm.com, sean@poorly.run,
        marijn.suijten@somainline.org, maarten.lankhorst@linux.intel.com,
        mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com,
        simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_mahap@quicinc.com, andersson@kernel.org,
        konradybcio@kernel.org, mani@kernel.org,
        James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com,
        vkoul@kernel.org, kishon@kernel.org,
        cros-qcom-dts-watchers@chromium.org
Cc: Ritesh Kumar <quic_riteshk@quicinc.com>, linux-phy@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        quic_vproddut@quicinc.com
Subject: [PATCH 4/5] arm64: dts: qcom: Add edp reference clock for edp phy
Date: Thu,  9 Oct 2025 12:41:26 +0530
Message-Id: <20251009071127.26026-5-quic_riteshk@quicinc.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20251009071127.26026-1-quic_riteshk@quicinc.com>
References: <20251009071127.26026-1-quic_riteshk@quicinc.com>
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=BMW+bVQG c=1 sm=1 tr=0 ts=68e76033 cx=c_pps
 a=Ou0eQOY4+eZoSc0qltEV5Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=x6icFKpwvdMA:10 a=COk6AnOGAAAA:8 a=FSaGvECU0n0iTL-qRsYA:9
 a=TjNXssC_j7lpFel5tvFf:22 a=nl4s5V0KI7Kw-pW0DWrs:22 a=pHzHmUro8NiASowvMSCR:22
 a=xoEH_sTeL_Rfw54TyV31:22
X-Proofpoint-GUID: sLVfe5q2JoXHIfvIz1jePNEUbirAHlJ9
X-Proofpoint-ORIG-GUID: sLVfe5q2JoXHIfvIz1jePNEUbirAHlJ9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfX9A55SsHT+xp9
 9fUMYvet+5ZI4TfYLFdZ88gOVr5RdSxtt7yCcZntDO9FBF5oVrZLgDzr590DTKVb7y6T2zMVU9o
 Uvf8SWT1jAssVAC7Vqzg3Vic6rf88MAFqLRDH+2UM1mri2Hp30p/akJ6GJnWZNJvbqeXX83hrDe
 tByDNRLngs3ZdR3NhXBoXdKZp7NaEtNpPUG0VZ0P8ULwHC+JU9Ads9x95uuvoz6EPBTAhVNHl9e
 6i05EQFxUMR0KGYOorzk24/3nPiN1YKDQ3xO/tzoD0GpmW4Suot1yuFsrPGdENx8tU0ya9XvwCO
 3CUjYStpIj2lt4ddpHbTdNZD0RX+v0+VN9bCUdA3SDrLzygneBNuN03tF/Sf25gj/YsMdgjJamN
 97F+BM4cy7qo4sMWMZsc8iaCb3lNdw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-09_02,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 lowpriorityscore=0 phishscore=0 clxscore=1011 impostorscore=0
 malwarescore=0 priorityscore=1501 adultscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251009_001157_155700_F2F3685F 
X-CRM114-Status: UNSURE (   9.73  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Add edp reference clock for edp phy on lemans, sc7280
and x1e80100 chipsets.

Signed-off-by: Ritesh Kumar <quic_riteshk@quicinc.com>
---
 arch/arm64/boot/dts/qcom/lemans.dtsi   | 12 ++++++++----
 arch/arm64/boot/dts/qcom/sc7280.dtsi   |  6 ++++--
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 12 ++++++++----
 3 files changed, 20 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
index cf685cb186ed..e8deb50f248b 100644
--- a/arch/arm64/boot/dts/qcom/lemans.dtsi
+++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
@@ -5034,9 +5034,11 @@
 				      <0x0 0x0aec2000 0x0 0x1c8>;
 
 				clocks = <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_AUX_CLK>,
-					 <&dispcc0 MDSS_DISP_CC_MDSS_AHB_CLK>;
+					 <&dispcc0 MDSS_DISP_CC_MDSS_AHB_CLK>,
+					 <&gcc GCC_EDP_REF_CLKREF_EN>;
 				clock-names = "aux",
-					      "cfg_ahb";
+					      "cfg_ahb",
+					      "edp_ref";
 
 				#clock-cells = <1>;
 				#phy-cells = <0>;
@@ -5053,9 +5055,11 @@
 				      <0x0 0x0aec5000 0x0 0x1c8>;
 
 				clocks = <&dispcc0 MDSS_DISP_CC_MDSS_DPTX1_AUX_CLK>,
-					 <&dispcc0 MDSS_DISP_CC_MDSS_AHB_CLK>;
+					 <&dispcc0 MDSS_DISP_CC_MDSS_AHB_CLK>,
+					 <&gcc GCC_EDP_REF_CLKREF_EN>;
 				clock-names = "aux",
-					      "cfg_ahb";
+					      "cfg_ahb",
+					      "edp_ref";
 
 				#clock-cells = <1>;
 				#phy-cells = <0>;
diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index 4b04dea57ec8..1af79bddcf38 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -5222,10 +5222,12 @@
 				      <0 0x0aec2600 0 0xa0>,
 				      <0 0x0aec2000 0 0x1c0>;
 
-				clocks = <&rpmhcc RPMH_CXO_CLK>,
+				clocks = <&dispcc DISP_CC_MDSS_EDP_AUX_CLK>,
+					 <&dispcc DISP_CC_MDSS_AHB_CLK>,
 					 <&gcc GCC_EDP_CLKREF_EN>;
 				clock-names = "aux",
-					      "cfg_ahb";
+					      "cfg_ahb",
+					      "edp_ref";
 
 				#clock-cells = <1>;
 				#phy-cells = <0>;
diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index 51576d9c935d..c42c292267cc 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -5817,9 +5817,11 @@
 			      <0 0x0aec2000 0 0x1c8>;
 
 			clocks = <&dispcc DISP_CC_MDSS_DPTX2_AUX_CLK>,
-				 <&dispcc DISP_CC_MDSS_AHB_CLK>;
+				 <&dispcc DISP_CC_MDSS_AHB_CLK>,
+				 <&tcsr TCSR_EDP_CLKREF_EN>;
 			clock-names = "aux",
-				      "cfg_ahb";
+				      "cfg_ahb",
+				      "edp_ref";
 
 			power-domains = <&rpmhpd RPMHPD_MX>;
 
@@ -5837,9 +5839,11 @@
 			      <0 0x0aec5000 0 0x1c8>;
 
 			clocks = <&dispcc DISP_CC_MDSS_DPTX3_AUX_CLK>,
-				 <&dispcc DISP_CC_MDSS_AHB_CLK>;
+				 <&dispcc DISP_CC_MDSS_AHB_CLK>,
+				 <&tcsr TCSR_EDP_CLKREF_EN>;
 			clock-names = "aux",
-				      "cfg_ahb";
+				      "cfg_ahb",
+				      "edp_ref";
 
 			power-domains = <&rpmhpd RPMHPD_MX>;
 
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
