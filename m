Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7EDACCAC5BE
	for <linux-phy@archiver.kernel.org>; Fri, 26 Sep 2025 07:27:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mTlyronGUk3JfOZWWr2CL+VHdExv50taWxROWN92PKQ=; b=ymlMZW1/6rKbIj
	c0BPc3gAtbWQZ3oiJSytiWSpVvFmOalja+ynrn//xHUamPNDhkbqmmiTdz1RztnE40dsryrAlulgG
	0G3jUf2ha+fUuQnRYbSc0vcEWdSnomlfRSemtcDmrMhS8FdZhRHY0f8oQFzLGjXyzpdb5a1ua1pm/
	ATfNMmwbg2afBHvmQyl21FVExCyxC1v316SjN8vu+mRRYhUfSLSwKXqWX75hJ48Qn+CJzhvIU2JaQ
	g6rNTi6i7RtfvTarwl9a3lCLA97g09sB6CBUaIOrh4SN8o4wwWxV0TGGOJ0ZnETYM2MI4yqTgHgUz
	e+ykm5lydtJY6ZI8mMGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v22s0-0000000GmAq-0lpY;
	Fri, 26 Sep 2025 07:27:56 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v22rx-0000000Gm7P-2zHx
	for linux-phy@lists.infradead.org;
	Fri, 26 Sep 2025 07:27:55 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58Q71njL015899
	for <linux-phy@lists.infradead.org>; Fri, 26 Sep 2025 07:27:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	U/ewAsdzTC0PEPN+SodRZso/2oAjrX6us73TZlYVliA=; b=k0H4muO3JpiR7XrO
	JM4T5YxLbsqy10gN+14OQMeJibqBDRsBRXETrvoguPrkFTFM1342pdduCa9HNsPa
	hD+ao5gTh8zSuYOGTnseBQxqOHaEgVd/DH16krmH7MnMT8ul9XiyAieFsm1tx/2C
	fdTn9febRNqewpv1n2Rj/qQWr/AD7w1Kqxay5UlvrJfMNH22Z3s101D/kptIxXnu
	+VTF3vt6q1EAQLpILpzY4pKYty5A0ny2hhPONwzV36jo8nj3hwTHRkSgpQLqpDss
	YAJd1G0rsfe93FVzownYpH1KAGPIzhc7JZpJqkV0bEGD+Dh9+4no1l2PpWMMHILO
	EUG1Vg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0t9wxh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 26 Sep 2025 07:27:52 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2728a359f2aso5034275ad.3
        for <linux-phy@lists.infradead.org>; Fri, 26 Sep 2025 00:27:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758871671; x=1759476471;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U/ewAsdzTC0PEPN+SodRZso/2oAjrX6us73TZlYVliA=;
        b=jgGXNJKE3H5UIKdvgfw46iE4PV7lh6yhQMDFk9h7GHrrsnLSZfYBfpF6UjrjrtMro0
         GS+hYXeE/airwRgiZ5aVQi4J2ggz4izbXzg5+mVoDvipyDRI+ZjjphlGWxFQxkaaaNdo
         O5fFkbc2aOR3fs64zQBTzuACcPvl9l3NkxaOfQZ5h7AHla/KLMg2OL3+r18dbpM5ULqG
         Zg+YQoNXi0Y46KFftyYVovB9udcB+lPrCyXJk6qxZkoqto2F1MbI00A4U9CBknFPMiRL
         CtVP2Jayd7PTib9STXj5DT2+Yhbe3WZOYhiakC6V9V+Zi6Z4I8PReFsM1Ge6ttBFyLUs
         MrSQ==
X-Forwarded-Encrypted: i=1; AJvYcCUeCBCqnGx6l2i0eK69V11qZMGsAT5JkzzbT1itCyWIAquALMIHu+JHVlwVD3Pe9IjxCwjcH4eruW8=@lists.infradead.org
X-Gm-Message-State: AOJu0YwQsExdP2F27zFEMi8KXWMSPpmGqHO/Bis5LhI0urlG38A2rg8i
	ScazP9zF2dRpakCuGSsKX99OI2l72i8TmN0EMXHsDtZBasufKAA/1IirckFByVd9AzCdbDV/9jE
	C0qZopkZnRWunV2zwA5mea7LrYmPcCmr8pOOlL9L3EH+9+v9NvQ1+b7pYk+vBFhjmUc5w
X-Gm-Gg: ASbGncs3vAbl/Y7kvxLgi9xAvbiolYK2dUFkh9tNcKIEUHIgG6/axyWtF/8TW4Qn8OF
	z3FDs9r1ZWqgyXkKhJ5c35shikCO9Uyy2vy5LQJJGQTOEpFFG+UZv7g3CuxFA6QMLYHdzQMq3mz
	SV5iGGHeEJtEHTNx1E5LBBGp5kF4lacvymNPeDVVokI99vlMsqhi7hBsm53ewjY+Zu4lsJsJmik
	/HzAfEQf/Ii3YKhu0btCeD+sIKJS2VB7asqftDV5q2rolC4YyGxpUtG1eBvvL92gMhwpJbcZNVW
	wwfJDoW4KhvKaJC0wrbGhu7/lCrIYAI7h3yLZj6s6UFhSyCNhckqtZKLH3UjDl0tXCyF2kPshgv
	CTie6/vAiGCS3EYIDqfgRv5Fz89aJWZzjwtqmZiq+BwTXEfn+C+niIUNd
X-Received: by 2002:a17:902:db11:b0:24e:af92:70de with SMTP id d9443c01a7336-27ed4a7e773mr47520845ad.7.1758871671183;
        Fri, 26 Sep 2025 00:27:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE6Uw+EDOSyIFj9+o/m/cxC6jk8OuXVNovEMdP23XauT6Xa+BsSzopZGkt0smtTXUlDKaRzrA==
X-Received: by 2002:a17:902:db11:b0:24e:af92:70de with SMTP id d9443c01a7336-27ed4a7e773mr47520575ad.7.1758871670715;
        Fri, 26 Sep 2025 00:27:50 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed671d8a2sm45117985ad.55.2025.09.26.00.27.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 00:27:50 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Fri, 26 Sep 2025 15:25:50 +0800
Subject: [PATCH v7 14/14] drm/msm/dp: Add support for lane mapping
 configuration
MIME-Version: 1.0
Message-Id: <20250926-add-displayport-support-for-qcs615-platform-v7-14-dc5edaac6c2b@oss.qualcomm.com>
References: <20250926-add-displayport-support-for-qcs615-platform-v7-0-dc5edaac6c2b@oss.qualcomm.com>
In-Reply-To: <20250926-add-displayport-support-for-qcs615-platform-v7-0-dc5edaac6c2b@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758871565; l=5055;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=MBFao/DJ+AvQFYkIXOckenkzKbeQrB9uXWrKsMRXuzM=;
 b=zmiqH6Oqah/3aH8g6DUespvXSHN8tX5HUqWwLWpFm91V/bc2Bw5FvFuS9/SZ4W7yCWeya8H1V
 j4g275HWltSBVdF/NJ931zfBE12Z5hD9+v2gG0JMubyTRU8iKPh3q9w
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Proofpoint-ORIG-GUID: iiz2yRypBO-p2nz47TYD5imK0IHTeGHa
X-Proofpoint-GUID: iiz2yRypBO-p2nz47TYD5imK0IHTeGHa
X-Authority-Analysis: v=2.4 cv=Jvz8bc4C c=1 sm=1 tr=0 ts=68d64078 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=TnvzUFuqcobRuy42eWwA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfX2oWieJJllWts
 05ZjuJJofcBwaU4jEWfPsVeEnqpdnmMhtPm1sGMGZRFGXLWsL9N657Qftx2mVMD9B6ckHKYpGDW
 G5rZOV+BZdIOf0EV8wbLz4+yOBCQRi1lfuo78yHSmCyfPphOqit8R2gQHgwouoDOD2vsI2S6uO6
 zu24Dz7/RWRNAyWOsFFY8FUC3GhW0GC0fIMBZRmix9cE0y6tONyJy38jsLd81Wdhh64q4tU6Ox/
 7WpA7WOXuIra7RcIyNSsCA+UGcRzauLxCMOfgfSWu5Q2IgRcLcSfj1nD4RrwwYMdz6tLyLuUYrc
 bKFrl7QZ0drz4xavC0i9MDb0CiXZ8vZvSIAJBPIl5bwNeMKoG+4OwNaj9wxUbS+1ISUa4D4FzDG
 8YikoWCYa3oa0uOMD7YMQrGi3Nz27Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_02,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0
 suspectscore=0 spamscore=0 priorityscore=1501 adultscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250926_002753_864883_832365D2 
X-CRM114-Status: GOOD (  20.41  )
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
