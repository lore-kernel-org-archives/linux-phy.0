Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 246B7CA9EC5
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 13:33:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0U8C5rMBxWW3Bwumk1GldDT4TzFli0OuONCpw+AovjU=; b=zIZz0Dh3/zvPru
	3OlkGbBnG1UQi3NppADLEn89AlzUqkz5hcCCDG5tUkn1wh+5k7DHgvigYIMuRJpYAXPGcCQq8/Lio
	CuFkrfKcUT2yddStcOJb7FiWHHDfzVeIAvQNjBqTh9pHmUjt0Yc/Tswo6XNA9npHyLBwdryqinvaB
	rhlAr9J+hdX4oTvwZaBS2ABjviL0LJ3hx7P4K5bL5RdME0jheqZNMvvyXzULjlF41X3zT1EKpnaS0
	FFtb/XR68ZVF74zMJqCv9xtC5ycI0B4J+iC+I97sFTGB1SC1oWdgtYdP55QubqUq7Ugt1kQ7gba7n
	kx4kSw7Do803g7MWUbkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGG9z-0000000Aahd-3Qnf;
	Mon, 12 Oct 2026 13:33:47 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGG9u-0000000Aage-1vVB
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 13:33:46 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69CC0lPO1934172
	for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 13:33:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nqvWxQWmUv2zJ6ZFnYqwngz9V/6SjlL9w6dmGrY4XIc=; b=D+Hr+UQDCHFw5PZ1
	1P/OZMZOjbJ/smVoPLqbBQVfG/i0BKf6sNe2DuG8tved9s6AS3NmAMTSuwWBEC/4
	4YMglO7zD0KDg1XxrCQc+BVbyDJgRVmOiqiIVxMxllh+Obv0YKaulOGOqlpnS/Qe
	HZBs+5nnGAmr6eHS3+xqQybmSj1NaGvNcuX1Lc58f6hWcWW0BMqlkEZOeS5Cycxe
	/hfuogYGhdqdRRdBoXx9j25IhACdN3HvwSO0IKoauj8LDO9amgWFua4OjYptvSvw
	UjZ4+CmnUOJ/CHm1RK+hTAVKh88rUjvX9DzWwh4/PQbU7nuGc3QCO980bHAkl1ji
	tYQOAA==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h8qtkjdh8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 13:33:41 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-341eff9e381so5650008eec.1
        for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 06:33:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791812020; x=1792416820; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=nqvWxQWmUv2zJ6ZFnYqwngz9V/6SjlL9w6dmGrY4XIc=;
        b=C/oPdEmgiIn33FTzbgVpXcK6OC+fVNL9FC6X1mxCGeSCch0kNQQ7Pkj3vZtmLJ2yx3
         O6AXtnJeRVftx5jSLvB+JqXy8px59VStnaSksCCCAvWzYL3WiavVbLoFI2qoeqP+gskt
         XZNwEoyLe4MFc9oRQOkGSgQL9SBA1dqNaaDGIqRuTDq22u5OdU3qG8ysRojFpEWDHNMi
         WBLanACtGyjF6IJH5q3wEljxhwoo357G74Rg2hOQlRH73QlyhDfl2JXG1SDTujWRSLw+
         Dz3dwhQMZzK+GV2vmgqhZ0PiVS3HOTLypqShiim9JLoYs2Li8f2IVV+fHvccUmWCUvSW
         m+ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791812020; x=1792416820;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=nqvWxQWmUv2zJ6ZFnYqwngz9V/6SjlL9w6dmGrY4XIc=;
        b=sAt/nj5IvFAAsTQnFtFv723VydGjvjLiXcDj2gg7hpoWlD6iVF28+yJLRj7RtyR54F
         EHKUYu/Wt1dn9YZUBd9HZy/drpeVZeX3Ip5p4Zqno86w17PbYDRjGaXBjiFK2Oc7txt5
         JDurXf/Uv2Ct5Psk9K0VZWsurgFNIKs7SrIaDojE0djYqeQD5WoOm0cCenQlU6gIoEMi
         poLHXj4lIU6e0DXiEOzQFcLXKAnQSrdCIMom1dp8vzBJ8dBH50WW8jfvWGiHBILOpRrG
         Zdjs6ThTNjYHwe/ONBC9HeykX4R2N/P9y+dg+gaRmLNbxCsKA8Su0Crg8HJf+ecYV30u
         3e3w==
X-Forwarded-Encrypted: i=1; AKwUvBx93iVOs2QEsSWSO9C144POaVKYlPLhRCgUvO6uiMNvlgSL1K3RTyxsOHwhPHkks0g/39/X3rM4C+0=@lists.infradead.org
X-Gm-Message-State: AFq9FYJWL5ONuNk3C9WxKgDzbRmUbNVXnM6AVms355f09Cl1R9TAt0dA
	CRChhrVblwzQRbsTbYZagnbebjAjp4N8qlESiNKjxqoEneylyhDrmF6nVcAv+pXX8CaLfy+ed5L
	cZLtcqvEfiSZn4EAtvd0O7lC2ciUMGUAtgoFp6u8Lo49AZaY5658Kw3XUqN+yDU4kDuhk
X-Gm-Gg: AYBFou3NS3lyV2b2le4/ekWibUXC0TDKtAshbJ9WOPL00M5SIDEDFVDtfB7jVM1eQ02
	CUR7i+YbxeTk4R1CNNvr+0J3uB12W3RuboQl0FKdtiDSgidtnjY11fq3VGMpWNz2hGpIobmnvRP
	ciFKAcxL0h+SLM6A56y1Bg6nRwlMmQuBTu0DsFs7Bcmrvz453gO1R3cVv5KiXZmaaNA4yAR7cS9
	zAYJErpTiKJ1R3Vz60wJrFguPFHq038KZ2hUyMql+NgSC2bz2yuRiL6Dgjet1pZdhxHqA31iiG4
	h5DKQbKMHs9uFZMmrQV8Bm77bN5ZRVJjc8XoRiKVt1/lU45ZTBwHFIewDLZe7poBp4R2axAPcjZ
	9LmKZI+Sj9GG5wkpykvlhTS06DGM=
X-Received: by 2002:a05:693c:895b:20b0:35a:7010:e7e with SMTP id 5a478bee46e88-35a7010129bmr4364180eec.10.1791812020195;
        Mon, 12 Oct 2026 06:33:40 -0700 (PDT)
X-Received: by 2002:a05:693c:895b:20b0:35a:7010:e7e with SMTP id 5a478bee46e88-35a7010129bmr4364139eec.10.1791812019593;
        Mon, 12 Oct 2026 06:33:39 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3537ca1b556sm44740397eec.9.2026.10.12.06.33.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Oct 2026 06:33:39 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Mon, 12 Oct 2026 19:02:17 +0530
Subject: [PATCH v2 07/13] phy: qcom: edp: Add Nord-specific register
 offsets
MIME-Version: 1.0
Message-Id: <20261012-nord-drv-dt-v2-7-a2ab9af954d2@oss.qualcomm.com>
References: <20261012-nord-drv-dt-v2-0-a2ab9af954d2@oss.qualcomm.com>
In-Reply-To: <20261012-nord-drv-dt-v2-0-a2ab9af954d2@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Nabige Aala <nabige.aala@oss.qualcomm.com>
X-Mailer: b4 0.16-dev-d5d98
X-Developer-Signature: v=1; a=ed25519-sha256; t=1791811948; l=2115;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=c/c4UrdKyLlxloOv0LlIJQUlth4rww+DxB4ild3JaGI=;
 b=kc3eX6lPE6whC9wQAkDtJNxIJhgIawVZOCerNkpQNd6HZGm4loYUzs011lrQvvzYbEgHT6xlF
 0zE9L0dbJi3CQQpCyAgx+ISicnD06hEAF2qQQosv/ETD2q1KD2Xfbir
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEyMDA1MyBTYWx0ZWRfXwapmkJKn/bfG
 Z3Pidhvf9rIMWCNVXF0Wjmo7sSuzSAqQyw9Jg7s+W95yCNDo5P2PJOVMssu5bYx6/ClgvKXnptr
 46hgKX5zQuAeZsZ1LPlmHKpQ2ohiqkXIHrPKjjfXsD9ucz94VU5DS6Dc05zK8VpDckoqG7qUkT/
 BcIcy7mCOt+5LAPOjnusD3lus1JmtGV44o4ZXf3Ulddc413DnjVOXCWu58QKCdl5W6mOe/LActO
 S6YytElPfVMsCi/M13l59MlUVqomx6hSgszggEfrp/UoDJCuSwO/K9NuONhD7xNxrHUU+ydxHye
 z7iKM6eckOeIYsDOWuFWIi/jIAg7zfogEG/HUq8SftxVNHWCOO6BBVrzZ5T9V7zMT30ZK4Qtpdr
 j+LMwDTV/O+KDvItGeDTJG/SgaEOz0Tgzn17t+/zw71GbESSYE5Mjbzk5OaEMG0O5rPNQsG2G7L
 KPOQSBV50j20fztepyA==
X-Authority-Analysis: v=2.4 cv=c8U+0h9l c=1 sm=1 tr=0 ts=6acce1b5 cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=wv6mueO1Yvltf2_opTEA:9 a=QEXdDO2ut3YA:10
 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEyMDA1MyBTYWx0ZWRfXxzahCDElakmJ
 r79z9QgZN25TYVhvGf98ZfyybBTt+VmmtGslWFcbEH5DROLlchKBXB+FovtJ0EAmuBLkRO8vEOp
 gIBwNA3+DZPyyw9S2NthJChz/au0ozY=
X-Proofpoint-ORIG-GUID: 6Ecrr8BIBI5FVufNZutKrFknjl09d2t1
X-Proofpoint-GUID: 6Ecrr8BIBI5FVufNZutKrFknjl09d2t1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-12_04,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 lowpriorityscore=0 bulkscore=0 malwarescore=0
 priorityscore=1501 spamscore=0 impostorscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610120053
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261012_063342_644685_8A51A152 
X-CRM114-Status: GOOD (  11.48  )
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

From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>

Nord relocates several DP PHY and QSERDES v8 COM registers relative
to existing SoCs.  Add Nord-specific defines for the relocated and
new-only registers in phy-qcom-qmp-qserdes-dp-com-v8.h and
phy-qcom-edp.c so Nord sequences can reference them by name.

Assisted-by: LLM
Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-edp.c                   | 7 +++++++
 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-dp-com-v8.h | 3 +++
 2 files changed, 10 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index a3c893f72908..d5c6835b6c70 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -42,8 +42,15 @@
 #define DP_PHY_VCO_DIV                          0x0074
 #define DP_PHY_TX0_TX1_LANE_CTL                 0x007c
 #define DP_PHY_TX2_TX3_LANE_CTL                 0x00a0
+#define DP_PHY_TX2_TX3_LANE_CTL_NORD            0x00c0
 
 #define DP_PHY_STATUS                           0x00e0
+#define DP_PHY_STATUS_NORD                      0x0110
+#define DP_PHY_LDO_CFG_NORD                     0x00f0
+
+#define DP_PHY_TX_LN0_DRV_LVL_NORD             0x00e4
+#define DP_PHY_TX_LN1_DRV_LVL_NORD             0x00e8
+#define TXn_TX_BAND_NORD                        0x0024
 
 /* LANE_TXn registers */
 #define TXn_CLKBUF_ENABLE                       0x0000
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-dp-com-v8.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-dp-com-v8.h
index 93edabb830af..008b17222a8d 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-dp-com-v8.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-dp-com-v8.h
@@ -48,5 +48,8 @@
 #define DP_QSERDES_V8_COM_CLK_FWD_CONFIG_1		0x2f4
 #define DP_QSERDES_V8_COM_CMN_STATUS			0x314
 #define DP_QSERDES_V8_COM_C_READY_STATUS		0x33c
+#define DP_QSERDES_V8_COM_SVS_MODE_CLK_SEL_NORD		0x17c
+#define DP_QSERDES_V8_COM_CMN_STATUS_NORD		0x1d0
+#define DP_QSERDES_V8_COM_C_READY_STATUS_NORD		0x1f8
 
 #endif

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
