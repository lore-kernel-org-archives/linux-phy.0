Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F3A7CCD183
	for <linux-phy@archiver.kernel.org>; Mon, 13 Oct 2025 10:48:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F7khMWd0CWL6jWRP/1vm/0azax77Bm3VwBkTJ6tjIO0=; b=NJA/XFBMST5Taw
	FJHpP5A7z9mPO0mhFX4daCjsjuPt9Qe5Zp+PHqlKZGsqPIMJDf01yzKsYt2o1Fsz4ZvTgKIZ7scuY
	r1T5c8986S0WlTsOL5+DQYo1zzecfyD1s2GyCnpU6DIJVY0mp/GjXP2ZNFr6JD12vOtvADBtviL0Z
	xWUzmZQ6eW/FPQoU2yEOvyG+Alwomnzl1q1nUTnpSuQnKNFJNy85nm2OytZpGf8To4BZv0HrSMpb8
	js+YB25VShCJATuA+gnSqLxfNsLyAszlgHDKFg3/hZW1xaVV3hSjkeWIWRj4BVh8OeWb6JuCN1Tqo
	mETXjKb8sSTg3x7kgXgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8G6d-0000000CvvB-11B9;
	Mon, 13 Oct 2025 10:48:43 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8G6a-0000000CvuX-1i8A
	for linux-phy@lists.infradead.org;
	Mon, 13 Oct 2025 10:48:41 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59DA9r5Z032708;
	Mon, 13 Oct 2025 10:48:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:date:from:in-reply-to:message-id:references:subject:to; s=
	qcppdkim1; bh=O6DMIzVcihvmVoJmSPfQ9oeVIXNHcAyi7+jzosb6Xw8=; b=jR
	spzmfyCFLI0DUZagwVOIWS6jcLmmXXpCFtB2Dke9EfyeOGJijRM9GbS77xuBSM0k
	7x+9Rg3mvIcXOa1PF9Is/72ffXL46AFxEGXfAjPv8dCqs7zN0SjF1HE4o/OD14lL
	IiX67WmO7uYXQYwM1uZp2JQjVtbh9d9oZU8IVyOeQEDlhlrOq5YG6kvd3AYXes0r
	J5kmg4bctiF919pWmcSkn24PxRTVPzfI8zE71V9XdsIqtVR4UISxSOJyhQKLpPb5
	7yejPOojQluavMxaWQVdPl/Nv+AgeEo7nr516Tsp0PFkMLSMlDbItgLwTddhfu54
	oRn3Efv05JhCqATeRQkw==
Received: from apblrppmta01.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfd8va0d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 13 Oct 2025 10:48:14 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 59DAmA47008954;
	Mon, 13 Oct 2025 10:48:10 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 49qgakrrqt-1;
	Mon, 13 Oct 2025 10:48:10 +0000
Received: from APBLRPPMTA01.qualcomm.com (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 59DAmAnh008932;
	Mon, 13 Oct 2025 10:48:10 GMT
Received: from hu-maiyas-hyd.qualcomm.com (hu-riteshk-hyd.qualcomm.com [10.147.241.247])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 59DAm9N6008927;
	Mon, 13 Oct 2025 10:48:10 +0000
Received: by hu-maiyas-hyd.qualcomm.com (Postfix, from userid 2314801)
	id 0C5A45015A8; Mon, 13 Oct 2025 16:18:09 +0530 (+0530)
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
Subject: [PATCH v2 3/3] arm64: dts: qcom: lemans: Add edp reference clock for edp phy
Date: Mon, 13 Oct 2025 16:18:06 +0530
Message-Id: <20251013104806.6599-4-quic_riteshk@quicinc.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20251013104806.6599-1-quic_riteshk@quicinc.com>
References: <20251013104806.6599-1-quic_riteshk@quicinc.com>
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: PgOUN5M4bUsWG1RoqZ_QjFL9PZ9w2Un-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfXyRhRVPh3ZHvB
 K2OHYTvS6f+s/TjeusUE9FLGAuX8CrHAdlliGGNKPBqRR6Y86VERsbG4JWiHg08yuin9ABIxYA2
 6Uy/vwKzE52nWzihYYU69EfFbn3sfpA2aiTiZKvMcUgb4U2UrsDMsqomhcxr8/2vcWbH6AAp93r
 W+tXnnFKUTMXFxRpmLXG8aMCid/7wv2YxbG7S3hO+QsD8htk3UAwTPLNihnz+J7Cnf61kR+DQfJ
 6Euu3EnCDFgXGyDSrnEaZ22AJxkm264T59MgVqvtRO4UF3Ybig7KW6jcwMBprc3lgNG6PfJ9SPU
 PXVruXlNAiIAuIvnNOOYzwirX90pvBK5cdpF+OnW+1RoViyFrArI9LeCdm0rFQAt1eUGoHPmy5x
 HyVeAhijrDanZjN0frtk2b3qr9Vhmg==
X-Proofpoint-GUID: PgOUN5M4bUsWG1RoqZ_QjFL9PZ9w2Un-
X-Authority-Analysis: v=2.4 cv=PdTyRyhd c=1 sm=1 tr=0 ts=68ecd8ef cx=c_pps
 a=Ou0eQOY4+eZoSc0qltEV5Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=x6icFKpwvdMA:10 a=COk6AnOGAAAA:8 a=UqYz5dXCeDUEtHy3dp8A:9
 a=TjNXssC_j7lpFel5tvFf:22 a=nl4s5V0KI7Kw-pW0DWrs:22 a=pHzHmUro8NiASowvMSCR:22
 a=xoEH_sTeL_Rfw54TyV31:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_04,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 bulkscore=0 clxscore=1015 adultscore=0
 lowpriorityscore=0 impostorscore=0 priorityscore=1501 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_034840_475001_C10E1DB4 
X-CRM114-Status: GOOD (  10.11  )
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

Add edp reference clock for edp phy on lemans chipset.

Signed-off-by: Ritesh Kumar <quic_riteshk@quicinc.com>
---
 arch/arm64/boot/dts/qcom/lemans.dtsi | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
index cf685cb186ed..1bcf1edd9382 100644
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
+					      "ref";
 
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
+					      "ref";
 
 				#clock-cells = <1>;
 				#phy-cells = <0>;
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
