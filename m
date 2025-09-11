Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14CA9CAC593
	for <linux-phy@archiver.kernel.org>; Thu, 11 Sep 2025 14:57:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WMUOZRrPP+m2SGn6zMKWyUua+nxANAf686AhjtMechE=; b=3oUMahBV+jBe+9
	H9BBHHRZJndpW80WsGyPNMinUNUXBnlon2a0W+UFUWf/PGjpSX3+yqyCCc8v/CGVCMZ+cz4xQQoDL
	lHACFJ3HaCkfaY7XDF7DbVRtkkUDUwkALzu8N2YorZ9MS6UUwP6qjisIJFEshBwidjtfJRjWF70AO
	IdwbI7Vt+41YNtIBRt8GruhaXPoSoatJpBg/FP+RfdlVMRaau8y+nJDqgt9LmgcXmkYBtK7c+Jyvw
	fTR7DdBM716cE+uekpCAF+Zyym8iDmUdOWSrke6RsoR/rUs/y7U1xmhTBBbdDfMTFBeo6WDl9ggw1
	A5eb+9bG5e3aNaKLrHDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwijR-00000003iCg-35b9;
	Thu, 11 Sep 2025 14:57:05 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwijP-00000003i9C-17j6
	for linux-phy@lists.infradead.org;
	Thu, 11 Sep 2025 14:57:04 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58BDYABd002143
	for <linux-phy@lists.infradead.org>; Thu, 11 Sep 2025 14:57:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	poPQezAqO5CLn7JGsotj9+FaLlUAX0s+F1zX9jDxN/U=; b=HN2pgsX3P5FMk8Su
	utmLP/T3KSP6vXamGNxCKBRVa44iNls7G8Y71g06GkmxPX6xGrWthrp/5gqCynKG
	0otlp0H0Woc9BYXwwa6uatpMUC7bSjuUSVpc/D0tSB159hSzalZnUx+H6mj3fIfh
	2gp8c9/7aN1fFJEnEzBCAollbIv6+xnY4j/1uElptv70SIQh6TIxHutA+HD+O1wl
	QyqOOi70Il1WevVSV+xnMY4AfXT4okiOywhozyt2bCksecvAS6ddwmAFDu9CqsZj
	zlXAkkttewOQ23mhEk4bCicq+WCxUJF0WLm6ULDRyOgfdW8HiEVN3lvsUiy5P7if
	I2R+eg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 493ydv0bcy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 11 Sep 2025 14:57:02 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-24ce66b9b3dso2178605ad.3
        for <linux-phy@lists.infradead.org>; Thu, 11 Sep 2025 07:57:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757602621; x=1758207421;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=poPQezAqO5CLn7JGsotj9+FaLlUAX0s+F1zX9jDxN/U=;
        b=PIgmGNFE/LmQ/OY9IL5pIrt1pf8eaWFOJGxXvPD7GG4NiY6hzRffJZLFOPF5yO1sqL
         U2uAMBzagZVYjwhdkgXfPc8sUmn/WxJTyE1CEw+uV3SOGjTP7EmIySFJ7hCJmxhFJcQ0
         HGetmff+nvr8nFB48h5XRvA+32jvD3KJ6oAPAeAlRY2qbDR+BvvblbqN9A58d2NrCsag
         f3GOcfZy/UAeckRHxZFrJ5q+ue3T5hd8HYFoihLNysVzpdd4phZIUITk0Ri08IToLyfK
         cvtSsri2OVKsDTYphw2lpIaAHbPXj8k1Wkh+GWHUSjGFVuFJLBEc7SN18IK2l6nyalOM
         SAvQ==
X-Forwarded-Encrypted: i=1; AJvYcCX4wSEanl5XUWt3EYccc2nsHc+6ACX0v1NKPfV+sc1eZQCAxDtX9IL9uANxZsjsqwOfkLGaAdQ4IkU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx8aKLEs8t/6dDDIsvMhMG6dBo+qaw85wbbHdbt2Sq1479ZOfOF
	0MO038hjke3V7cZn4LuUHyuFmh3oc5zdOMdaAgEMElmPAIS7XTqvQF3TP37XI8Yf557VjdXisvK
	LQksIlkB/crCbqBahJQAqnUrZ//IdKkcVGL4pvdcio54TtUpLeUcuGtQEY7+2yqikWEwP
X-Gm-Gg: ASbGncsx+8zOCaWi9XuNae96a/0A8ZtvcFtGHizw+/Gx11I1wQmBLrsN4rWeRWfWHJe
	yF4bITxtRyf48UajOyzvvKBcy3x89FcbV3Mxie2aYaTB+yzDERJuzG/W+8wx0fn8If6uAXfhNG1
	WixHXmAupBlJoBl+KfbN4aM7PJBOYGXL65StpSxbfwWjaM4Sr2S12MO0rgSM/nhho7V1xPsvBVA
	IGasgySmBGCdZAOTsne1oi5zj44i+Y+noXS2zHD2X0y+lRxCQOstY8Z5bqGjOE2Q5FCHkbmsZir
	ktIB0w2WXgaC9sUjT3xm91F1au/9kUQLi05B7mJcu2gwmyT1kbhqLFKpxhO4WIxzaDKIqjUglup
	Vwk5zjt/bq1w+QsWzPxehxk5vjx8Hxg9S8GL4yIOOENevZ0qRWn3tC6a+
X-Received: by 2002:a05:6a20:3d88:b0:247:55a7:695f with SMTP id adf61e73a8af0-2534547a5d2mr15322012637.6.1757602620798;
        Thu, 11 Sep 2025 07:57:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGA+T6bihioSO0fuY5YfCxHZc3M0pBOMOH657Ze5hznhiS0Qw6xXefqkICG6PW275tVlLquow==
X-Received: by 2002:a05:6a20:3d88:b0:247:55a7:695f with SMTP id adf61e73a8af0-2534547a5d2mr15321976637.6.1757602620256;
        Thu, 11 Sep 2025 07:57:00 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b54a387cd4bsm2107453a12.35.2025.09.11.07.56.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 07:56:59 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Thu, 11 Sep 2025 22:55:10 +0800
Subject: [PATCH v4 13/13] drm/msm/dp: Add support for lane mapping
 configuration
MIME-Version: 1.0
Message-Id: <20250911-add-displayport-support-for-qcs615-platform-v4-13-2702bdda14ed@oss.qualcomm.com>
References: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
In-Reply-To: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757602528; l=3440;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=ydjAKX71QvKWvvFLsD1Bwlw16HeAPipo1gwgyRawXAA=;
 b=URK3ZuXt8hjr965TBLqTHuckNd4RoPiuWF52jnx2F/+KEB7ZTvapur4qpeUyfJbHmlYbZS0xK
 D3ebmdp3LzLAeFch1oItDUO95apaxHczikuX+uQP2i/doSYgA6mFisz
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTExMDEyMCBTYWx0ZWRfX9nvJ33WIURVK
 cSq3CA19qpB+YRPEWe70igGzdKnwAkF8MQZqoMIfekE0KT55qF16tW6htGfcXDTHDhNxNsYXUsd
 RmxP3Ft+M/cqBt3msx44jdIhcP4ynd5/pr1eRcjab5S94VJmflHHCZzs4ACTQHF9YJjonI4C4to
 IUE3UbujNwGQhZYczNoT22e5Hb4Ll6MuUEfmqji9QQp8St3PPYrxhDmBfmGT54rlYj0BKr7R2Im
 O2aBrb9sJv3JEPpIC3GRG5uoTIqzsCHiCft3Biu1qdRGiW58/i8xogEN4PxxUQCzQgbFAhnBtQ7
 bgc/ZfiTKT8vFNX2k+/gdFxXykzMoW9PMVsjAgkbOAaLJXruxnyoeSFy3u6J+hwdqvvjCxYrhq6
 25FSUT7K
X-Proofpoint-GUID: TrxSDX1xYBss6_urClR8zhDJKMGcGiO5
X-Proofpoint-ORIG-GUID: TrxSDX1xYBss6_urClR8zhDJKMGcGiO5
X-Authority-Analysis: v=2.4 cv=LoaSymdc c=1 sm=1 tr=0 ts=68c2e33e cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=knvC0gF5dBKrktezL5UA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-11_01,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 impostorscore=0 suspectscore=0 clxscore=1015
 malwarescore=0 phishscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509110120
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250911_075703_470496_CFED99B1 
X-CRM114-Status: GOOD (  17.78  )
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

QCS615 platform requires non-default logical-to-physical lane mapping due
to its unique hardware routing. Unlike the standard mapping sequence
<0 1 2 3>, QCS615 uses <3 2 0 1>, which necessitates explicit
configuration via the data-lanes property in the device tree. This ensures
correct signal routing between the DP controller and PHY.

Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/dp/dp_ctrl.c | 10 +++++-----
 drivers/gpu/drm/msm/dp/dp_link.c | 12 ++++++++++--
 drivers/gpu/drm/msm/dp/dp_link.h |  1 +
 3 files changed, 16 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/msm/dp/dp_ctrl.c b/drivers/gpu/drm/msm/dp/dp_ctrl.c
index c42fd2c17a328f6deae211c9cd57cc7416a9365a..cbcc7c2f0ffc4696749b6c43818d20853ddec069 100644
--- a/drivers/gpu/drm/msm/dp/dp_ctrl.c
+++ b/drivers/gpu/drm/msm/dp/dp_ctrl.c
@@ -423,13 +423,13 @@ static void msm_dp_ctrl_config_ctrl(struct msm_dp_ctrl_private *ctrl)
 
 static void msm_dp_ctrl_lane_mapping(struct msm_dp_ctrl_private *ctrl)
 {
-	u32 ln_0 = 0, ln_1 = 1, ln_2 = 2, ln_3 = 3; /* One-to-One mapping */
+	u32 *lane_map = ctrl->link->lane_map;
 	u32 ln_mapping;
 
-	ln_mapping = ln_0 << LANE0_MAPPING_SHIFT;
-	ln_mapping |= ln_1 << LANE1_MAPPING_SHIFT;
-	ln_mapping |= ln_2 << LANE2_MAPPING_SHIFT;
-	ln_mapping |= ln_3 << LANE3_MAPPING_SHIFT;
+	ln_mapping = lane_map[0] << LANE0_MAPPING_SHIFT;
+	ln_mapping |= lane_map[1] << LANE1_MAPPING_SHIFT;
+	ln_mapping |= lane_map[2] << LANE2_MAPPING_SHIFT;
+	ln_mapping |= lane_map[3] << LANE3_MAPPING_SHIFT;
 
 	msm_dp_write_link(ctrl, REG_DP_LOGICAL2PHYSICAL_LANE_MAPPING,
 			ln_mapping);
diff --git a/drivers/gpu/drm/msm/dp/dp_link.c b/drivers/gpu/drm/msm/dp/dp_link.c
index caca947122c60abb2a01e295f3e254cf02e34502..7c7a4aa584eb42a0ca7c6ec45de585cde8639cb4 100644
--- a/drivers/gpu/drm/msm/dp/dp_link.c
+++ b/drivers/gpu/drm/msm/dp/dp_link.c
@@ -1242,6 +1242,7 @@ static int msm_dp_link_parse_dt(struct msm_dp_link *msm_dp_link)
 	struct msm_dp_link_private *link;
 	struct device_node *of_node;
 	int cnt;
+	u32 lane_map[DP_MAX_NUM_DP_LANES] = {0};
 
 	link = container_of(msm_dp_link, struct msm_dp_link_private, msm_dp_link);
 	of_node = link->dev->of_node;
@@ -1255,10 +1256,17 @@ static int msm_dp_link_parse_dt(struct msm_dp_link *msm_dp_link)
 		cnt = drm_of_get_data_lanes_count(of_node, 1, DP_MAX_NUM_DP_LANES);
 	}
 
-	if (cnt > 0)
+	if (cnt > 0) {
+		struct device_node *endpoint;
+
 		msm_dp_link->max_dp_lanes = cnt;
-	else
+		endpoint = of_graph_get_endpoint_by_regs(of_node, 1, -1);
+		of_property_read_u32_array(endpoint, "data-lanes", lane_map, cnt);
+	} else {
 		msm_dp_link->max_dp_lanes = DP_MAX_NUM_DP_LANES; /* 4 lanes */
+	}
+
+	memcpy(msm_dp_link->lane_map, lane_map, msm_dp_link->max_dp_lanes * sizeof(u32));
 
 	msm_dp_link->max_dp_link_rate = msm_dp_link_link_frequencies(of_node);
 	if (!msm_dp_link->max_dp_link_rate)
diff --git a/drivers/gpu/drm/msm/dp/dp_link.h b/drivers/gpu/drm/msm/dp/dp_link.h
index 0684a962d4ec93f7da764c4af2e2154c7050329c..b1eb2de6d2a7693f17aa2f256657110af839533d 100644
--- a/drivers/gpu/drm/msm/dp/dp_link.h
+++ b/drivers/gpu/drm/msm/dp/dp_link.h
@@ -74,6 +74,7 @@ struct msm_dp_link {
 	struct msm_dp_link_phy_params phy_params;
 	struct msm_dp_link_info link_params;
 
+	u32 lane_map[DP_MAX_NUM_DP_LANES];
 	u32 max_dp_lanes;
 	u32 max_dp_link_rate;
 };

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
