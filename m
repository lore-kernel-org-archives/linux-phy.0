Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDC35CAC5AA
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 07:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mTlyronGUk3JfOZWWr2CL+VHdExv50taWxROWN92PKQ=; b=RJGZ62vyr6NUUY
	GjootXgGIrdfOo0yt6u3YAsE/C0JhOYHfuaXCzcfBflnvqDf5SH91r3JVLSj8clDvbjW37X+9ygkw
	Mh2BXxG8+R1kjS0xEzP1TH4bctwulBGNgyBV0kijhq4bjKm0PwvQbyMtGBUWLJi9U8bPV89u1jNiP
	0uDJE64OIi3/VGxhAsfuRbcl/fnQvJsdQP00ZP7gmcQBRNtORljLq3RAgP06Ubj/TTia3XdJ9KU0B
	Rauzls7F3wtaMwVRg0Lfx7JC0Cq3KaTWil9tDy0EC9Ey6AcACL+6V4OKi8PoED6piZ2/RyFGOCGWi
	p71isnp1fTT5aTsU+fLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1g4C-00000006Yic-2DyL;
	Thu, 25 Sep 2025 07:07:00 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1g4A-00000006YhW-1zg5
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 07:06:59 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P1SdG3030031
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 07:06:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	U/ewAsdzTC0PEPN+SodRZso/2oAjrX6us73TZlYVliA=; b=mMGpCaAJo7kAEKW3
	4Rz1d3MIekz/Se5y7db3XavqVR6R8YnFUxdyAFBqP9qIkb6cREra3l6beejY9VRR
	O2lbD6Uf3ybNancu3Bh4hgnhI8zX5X8P/0Lw6HxObKEzn8fVEZCdAJGn6o3D8uCv
	ejUolD7VKIFOd45nHqqRYl2hfIMVoOHjJCfsWY30uU+3022qTY3ehFa8GU6LIvy/
	ebZSIvA0JjW3FimFhZ9JXCComSx1wFvW7dLRCeQkyh2jzQjaP1WRezUpMQPtBYJf
	tZ8CfWI757gNu9hP9qcXRbBH/h658H4CbLMIv1IyCWmRLfoSAHkY9ZWmv9Nw5L7J
	BoZwOw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499n1fq180-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 07:06:57 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-32eddb7bad7so188857a91.3
        for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 00:06:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758784017; x=1759388817;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U/ewAsdzTC0PEPN+SodRZso/2oAjrX6us73TZlYVliA=;
        b=FpPVeSWdq2KRwdXhDLa5+whD/H7e0KWG7fX7+8JrcTm9XF72YR0tnh+MAnEHIHW/Vw
         hFr7AEwtV06F86Lkdtj7QTpB1b2M/8zul3yRww3+qxEwamRWjv3XeHTxp0SK2rbAUEp0
         1lJ8l3+jg1VD2viWNuhDTc0Gv076wXvEzDtl/a2dWh7cE5R0VY3ye2D1fd00uyMcUeNR
         iKNn1zz24CG96p/AMY2ActA+caVEcuW4GwDGp4AuQmouNtMvdZzp834yQN2cmEJYSbBM
         EHHHaL2KQRna1mLCPbI9cqqNTCI6lagjzjeLeyJTNvSVql/N/NHTP1Zy6QfWIHMYpxxH
         589g==
X-Forwarded-Encrypted: i=1; AJvYcCVbDHsKPigwxzkQaaf+eGy3/yytD0ugmRlIVMcl2QG5qbUesn6nM7b/DkVHtgxOJ0xc28KKuVyyuZ0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy+pgbLs8DOSWi6X1RZweF1TAaWYPESo1/ZP4MdKJe0jc2zlUYk
	GdN7G3wvaOY0zs+K303JSufFg/bc0o9JkP8roaIn9vXA8XtTDikonvro6wKK+7TAswPX7WvHqzC
	glEjSj/eGzD2yUYm8KG0cgnIVoizc+it0olt9ATfQ0b/X5IZXhT1Rn2jOLjTI8Ap9NN8J
X-Gm-Gg: ASbGnctvEE312iFs8TAvrlEEVc4zOX5s9gS7AyynFoA/ZtNTP/+gQftpF2MZ68uLCPX
	e6ZYfXMRcWT3LGZoQaZNweX9g+J9rQ1h4xDSq8LE6CzHCYLtqYausVfH1zeF5ZPMepnbA1JE36+
	75uF6Rx9hhkiVp3Zd5+n6dic5oiZSApBlb7Ey61GHTnZeeg/ghV3iTY0NttmhZCp7wute+s3RHz
	OwaP/IfJYg2iY7aPr0p3V2n5zvb5ioHiZakxJDSJrXzsZaIIgp25ff6LktCXAH5xbBOaUGUkIlq
	2RfUoctvnSglQ8GlcQ8Q4vrp2LTtr6IQ5rGnIZo+MqJchw4mbgUnq2bBr9aEQGXheO/OcaJ+mBA
	hsuUyi/urh6uqUFz5ByEYTny4z4tOYHiXS19+iMvNBREWcMJf/bC1X/O9
X-Received: by 2002:a17:90b:1d0d:b0:330:68e3:ce7e with SMTP id 98e67ed59e1d1-3342a230ddcmr1393209a91.2.1758784017013;
        Thu, 25 Sep 2025 00:06:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEydyBxQvXFLvLbGCWUVusQvnXuEZsG7rVXNdU7irf5Kov39+iOrak8phy/uzwVcIMlnzogKQ==
X-Received: by 2002:a17:90b:1d0d:b0:330:68e3:ce7e with SMTP id 98e67ed59e1d1-3342a230ddcmr1393166a91.2.1758784016593;
        Thu, 25 Sep 2025 00:06:56 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3342a2bd584sm914253a91.0.2025.09.25.00.06.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 00:06:56 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 15:05:00 +0800
Subject: [PATCH v6 14/14] drm/msm/dp: Add support for lane mapping
 configuration
MIME-Version: 1.0
Message-Id: <20250925-add-displayport-support-for-qcs615-platform-v6-14-419fe5963819@oss.qualcomm.com>
References: <20250925-add-displayport-support-for-qcs615-platform-v6-0-419fe5963819@oss.qualcomm.com>
In-Reply-To: <20250925-add-displayport-support-for-qcs615-platform-v6-0-419fe5963819@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
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
        li.liu@oss.qualcomm.com,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758783911; l=5055;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=MBFao/DJ+AvQFYkIXOckenkzKbeQrB9uXWrKsMRXuzM=;
 b=YZKXR2CUgP470JDI7PJrgUO29J0aV1Yic0DGd9ehh5weifTEt5JJWmf+3GOoo3E2tGiGMEgMj
 6544KOTHvvyBOCE2TTE4IquwBx+8p6+dceUEZ6AHk2AYuDxi5cPfytC
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Proofpoint-ORIG-GUID: ZdfiCiCw0AwZWryCh_N20Y5zvGIFGg3-
X-Proofpoint-GUID: ZdfiCiCw0AwZWryCh_N20Y5zvGIFGg3-
X-Authority-Analysis: v=2.4 cv=No/Rc9dJ c=1 sm=1 tr=0 ts=68d4ea12 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=TnvzUFuqcobRuy42eWwA:9
 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAzNyBTYWx0ZWRfX8VuFzDvE+QJn
 cV3g6Djs3jN/5TYGjHFN5oRx+Le0Y7lZ9v6UwHxOsQ/pUUI5az3SabQP+oFmRvg0eSsCtw6GdRi
 fsGly1wccAwRkokwFkUje3ON0qry1N7ELbvCPrfqInftYUnu051zc8EzIOxjS47P8GeWkzI734V
 ZcHpcIO357/RnJ7Y/GX0TJMaSDBXsoYbaK8HztUoRzGw2xcG9jmlxfnVn11CsNL/G2LzuR9RYR9
 9sStObXS/OHEJHft6/bYcqwS68hs0rjtlIUKa3puPFSyuzH74HfyKs1gSdktCLvk3ZMlLYQmW6u
 dEBsDHOSCfg18l1+d6yiu/i8yEvuZBrUEmYLS9jxM7WbR382tE1D8p39sZzbF9k8fuMZXl7ggLw
 nBPW6fDC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 adultscore=0 malwarescore=0
 phishscore=0 bulkscore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200037
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250925_000658_526872_F115CF60 
X-CRM114-Status: GOOD (  21.21  )
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

For partial definitions, fill remaining lanes with unused physical lanes
in ascending order.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/dp/dp_ctrl.c | 10 +++----
 drivers/gpu/drm/msm/dp/dp_link.c | 61 ++++++++++++++++++++++++++++++++++++++++
 drivers/gpu/drm/msm/dp/dp_link.h |  1 +
 3 files changed, 67 insertions(+), 5 deletions(-)

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
index 2aeb3ecf76fab2ee6a9512b785ca5dceebfc3964..2ae78d33fffd7c49190983952ee8f5a249f2b69d 100644
--- a/drivers/gpu/drm/msm/dp/dp_link.c
+++ b/drivers/gpu/drm/msm/dp/dp_link.c
@@ -1236,6 +1236,62 @@ static u32 msm_dp_link_link_frequencies(struct device_node *of_node)
 	return frequency;
 }
 
+/*
+ * Always populate msm_dp_link->lane_map with 4 lanes.
+ * - Use DTS "data-lanes" if present; otherwise fall back to default mapping.
+ * - For partial definitions, fill remaining entries with unused lanes in
+ *   ascending order.
+ */
+static int msm_dp_link_lane_map(struct device *dev, struct msm_dp_link *msm_dp_link)
+{
+	struct device_node *of_node = dev->of_node;
+	struct device_node *endpoint;
+	int cnt = msm_dp_link->max_dp_lanes;
+	u32 tmp[DP_MAX_NUM_DP_LANES];
+	u32 map[DP_MAX_NUM_DP_LANES] = {0, 1, 2, 3}; /* default 1:1 mapping */
+	bool used[DP_MAX_NUM_DP_LANES] = {false};
+	int i, ret = -EINVAL;
+
+	endpoint = of_graph_get_endpoint_by_regs(of_node, 1, -1);
+	if (endpoint) {
+		ret = of_property_read_u32_array(endpoint, "data-lanes", tmp, cnt);
+		if (ret)
+			dev_dbg(dev, "endpoint data-lanes read failed (ret=%d)\n", ret);
+	}
+
+	if (ret) {
+		ret = of_property_read_u32_array(of_node, "data-lanes", tmp, cnt);
+		if (ret) {
+			dev_info(dev, "data-lanes not defined, set to default\n");
+			goto out;
+		}
+	}
+
+	for (i = 0; i < cnt; i++) {
+		if (tmp[i] >= DP_MAX_NUM_DP_LANES) {
+			dev_err(dev, "data-lanes[%d]=%u out of range\n", i, tmp[i]);
+			return -EINVAL;
+		}
+		used[tmp[i]] = true;
+		map[i] = tmp[i];
+	}
+
+	/* Fill the remaining entries with unused physical lanes (ascending) */
+	i = cnt;
+	for (int j = 0; i < DP_MAX_NUM_DP_LANES && j < DP_MAX_NUM_DP_LANES; j++) {
+		if (!used[j])
+			map[i++] = j;
+	}
+
+out:
+	if (endpoint)
+		of_node_put(endpoint);
+
+	dev_dbg(dev, "data-lanes count %d <%d %d %d %d>\n", cnt, map[0], map[1], map[2], map[3]);
+	memcpy(msm_dp_link->lane_map, map, sizeof(map));
+	return 0;
+}
+
 static int msm_dp_link_parse_dt(struct device *dev, struct msm_dp_link *msm_dp_link)
 {
 	struct device_node *of_node = dev->of_node;
@@ -1255,6 +1311,11 @@ static int msm_dp_link_parse_dt(struct device *dev, struct msm_dp_link *msm_dp_l
 	else
 		msm_dp_link->max_dp_lanes = DP_MAX_NUM_DP_LANES; /* 4 lanes */
 
+	if (msm_dp_link_lane_map(dev, msm_dp_link)) {
+		dev_err(dev, "failed to parse data-lanes\n");
+		return -EINVAL;
+	}
+
 	msm_dp_link->max_dp_link_rate = msm_dp_link_link_frequencies(of_node);
 	if (!msm_dp_link->max_dp_link_rate)
 		msm_dp_link->max_dp_link_rate = DP_LINK_RATE_HBR2;
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
