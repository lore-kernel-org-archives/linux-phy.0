Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4B2CCAC5AC
	for <linux-phy@archiver.kernel.org>; Fri, 26 Sep 2025 07:26:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TPrOWdQNbdYfOMYrMgq+DyVUxs7KznEqNT3FZYBnTew=; b=GIfVtSI9X+Mhdo
	aIGq668+iWSxEYnd0oCa1P2za0rWCaIFvl0LksQaBOdE/52xdQhhuqLa/QxghYixj+gQ1wsypYIDq
	q0ix5/U/k8uflQ1ZsLfBNxwwi7jB2pALWJTqnYlPTttyGYSHulR7KT1kGFs0afWG7zpgNRW1SqkI3
	D6/W280mAtiOa+yneWPl0mnoY0nEf5XYEAwnYwXkSUKWgLJc4jfBb67sNW6IXUZPIMpEJT6FB3HpE
	z+shdXWUaFfJMtvv7kyWThrz1q2BPKMsAp+FHkhv7n8ysqk55GVJrQJtmf1ZzM3b6GyBhmrfgyH9l
	GW/T3zsq3AFWBHnVT6oQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v22qw-0000000GlBi-2Le2;
	Fri, 26 Sep 2025 07:26:50 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v22qu-0000000GlAd-3uww
	for linux-phy@lists.infradead.org;
	Fri, 26 Sep 2025 07:26:50 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58Q6aEae005116
	for <linux-phy@lists.infradead.org>; Fri, 26 Sep 2025 07:26:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	psRlzFRQmGXeUGSfcVjnYNDBFIL2wBL8tNvEcKPV1ss=; b=Am2o/AMXBkDOuFFj
	BN0xG6G7ndAIzTRIHxAE36OEiTYgcM1VU8HPwWUq78Ip1cVhmPlC6GD7FLsngtG5
	L/tZDjrIxOIUpVd0LVxZ0w9yLI+SDdsT24k20+VGXTA2TleoODYzrhjm2uINyXFf
	ZiWzyR4PucPH7V770vC9Sr9LT/Ine0VUnMF5iU2XJGQe404VH3Ghd7g/XZ+dNasA
	IejgBMNV7XNTSn3TNBlQnsmbTQczcuRvV9DFkfrdD5Cq14vTg3UgmRuyGP5NkDk1
	cnjP+YNvxyfByuS91zl9Y65E1QPvjSr/utupNvDqAgKThWBsUq88H3NZ7L6X/kbw
	GDWs9g==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db321vk6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 26 Sep 2025 07:26:48 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b551016556eso429661a12.0
        for <linux-phy@lists.infradead.org>; Fri, 26 Sep 2025 00:26:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758871608; x=1759476408;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=psRlzFRQmGXeUGSfcVjnYNDBFIL2wBL8tNvEcKPV1ss=;
        b=Y72yml0yL5vq/ymMdZX1EuCvwJWU77IcQYk0AKEZyWXyGdubgxeiuixBcXaiQbIFTe
         NnaNnfAy4QkPqaB9q3FFvhzSJ6ilG4hjW3kLSWuzpIYqaHLuaRvVJdrwPPpZnaAlLg4j
         RfuWxPZlacQi7kzVfSufmWU/MlH58/Dut4vbrhZnsD8bF10dXnZdEWhpitJ1cg1FLnmz
         3RX8jYs4jCoiKmklRnRxjXjCBofexS6ZBToGCMZtIlDI+L0SlkZ4ZfB/Dibz1OxekWoJ
         ndgwVAo9wFVyoOkRqQ/col1BXXY/8rdDZ+VMjjaHPai/NwA84NhPD8kBItSNxRYOyy4p
         IJIg==
X-Forwarded-Encrypted: i=1; AJvYcCXVng3ye0Dc+uJ7CLIgtk5Vho/0NlAYXC5V+wkDDNpAB5cruBCw0wbhtfriKVdYuJ+Y2DzWqgT4pcw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzk7ExYtCdDdSjRZr36OJorLbVQt8Hd4D2livLK2Qk7WYH0xDm0
	dGQWU1aXMyI6o2WK4gMyTOIaMbrdQDSehYWGH65adUQIHztJhZFv+v2PRp4JIramPbmjG27LG/o
	aq+H6FT3wndODKSRZIxd5fV3zOTvCJZCYUB54IQZ339ScEChDmhf7ZKX13dStrJBbp+XR
X-Gm-Gg: ASbGncuQbp45xKMnkgqS/qB8Ch+RlJLJghBMWGn4i9Cx0BpCaB5MGneSpBX92NfxB4z
	EmNAnvZDQrLrYk7k1wisSg2XsVg+FJkNGY4u38y/eehNpaIDGTigEwlUl7bqu8KtFnsOZoQOdXI
	vltTfOfbs5d0vnIPeCULoMN0haIxonQygvVPiH3jZIhdebBXL1VVp1ocIi7oN1g5ILXhyBlSoBI
	lLrxZV4mI0kwCyK8v1qN6vRe7ECiltfDYEqNNWhKsKwGATrzb6Tuj/APCJLqerCUIwnx4z2/52y
	mMurmYqkMhlF41zRwxZv/h09OONpURu5RwEsUpdKJyppNf2VNJG2KOmp5TH30oF3HdfioyfN9pV
	6tCkNUlus9N+kWyYMDaPj2dTIMDQEg/g1bj/Ogj+XEhLFWSUPGQPTUz4H
X-Received: by 2002:a17:902:a507:b0:25a:4437:dbb7 with SMTP id d9443c01a7336-27ed49d5fedmr27989895ad.4.1758871607677;
        Fri, 26 Sep 2025 00:26:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHxSAyhiw2MTcI/NmqZ98HAKqPc0hfqQBjKkbuKjAc9epuCdvKvreEt1D4+pSfhH0QsIo9TKw==
X-Received: by 2002:a17:902:a507:b0:25a:4437:dbb7 with SMTP id d9443c01a7336-27ed49d5fedmr27989565ad.4.1758871607181;
        Fri, 26 Sep 2025 00:26:47 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed671d8a2sm45117985ad.55.2025.09.26.00.26.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 00:26:46 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Fri, 26 Sep 2025 15:25:41 +0800
Subject: [PATCH v7 05/14] phy: qcom: qmp-usbc: Move reset config into PHY
 cfg
MIME-Version: 1.0
Message-Id: <20250926-add-displayport-support-for-qcs615-platform-v7-5-dc5edaac6c2b@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758871563; l=3375;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=ELWG8LiwmiYEyfPeDUlMXNqM8qMgGsCS4xblAlTbEJQ=;
 b=zmaVB07r32HmpVtcC+B5C54IYIVDvs8vEclG5sjAMe5L1XwWEnY4ERzGLG5jFl4Ib+AzZzwOO
 Eh2N5d9F6fcDBHXUGGh9YHirwHvVYYYGpwjrhJLv5FPRK30pA0p4H6/
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Authority-Analysis: v=2.4 cv=ao6/yCZV c=1 sm=1 tr=0 ts=68d64038 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=zr9GHpnC6WUyfWqp_BsA:9
 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-ORIG-GUID: VnwyOHTV7oNoi7itU-FDKfrExOjB6CrW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MiBTYWx0ZWRfXzjPi0E5Kg2hX
 7ss8ZX4eVzHtgoNNAFkYPu06YWrnEFOVad6g8UWWncWKcna8ZygO5uwPbxVKWIhSDX6DZv1r+jv
 KxX4oafIUbDPlKLoh5SmF+hc6Iy52Yxq5Eid/uNhIYQ2W6LtBxqzj4bWaiOX2RsDMeXYMYNpq9r
 DxRTJCl0tZEdEQyXSLWfDzO2IZl4qdDRFAiJaHuwa98FzSz9OmyD1IeJHNHwbo+M/beoadO1H3u
 F9V5CWbDykSpwK/24iiqZ6rOT52zydFrw6RQSUGjtixbjdmq/wOHyas//6ghFLM/DRKN6FInKw8
 JogNRiABTvQ60Hr3llt0VV5mVZsUoDSElJpcm1H3m0diQOWktBwd95uItIZXSNW8b/rFcet38Vn
 yzRZQEq21qlIhVdWI6fytGhTsd/5mA==
X-Proofpoint-GUID: VnwyOHTV7oNoi7itU-FDKfrExOjB6CrW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_02,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 priorityscore=1501 suspectscore=0 phishscore=0
 adultscore=0 spamscore=0 clxscore=1015 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250172
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250926_002648_978858_E5D07CA9 
X-CRM114-Status: GOOD (  13.50  )
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

The original reset list only works for USB-only PHYs. USB3DP PHYs require
different reset names such as "dp_phy", so they need a separate list.

Moving reset configuration into qmp_phy_cfg allows per-PHY customization
without adding special-case logic in DT parsing. The legacy DT path keeps
using the old hardcoded list, while non-legacy paths use cfg->reset_list.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index 3b48c69f9c3cb7daec495ebc281b83fe34e56881..f9e20f43435c050e33e9490343a4693a339d692a 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -335,7 +335,8 @@ struct qmp_phy_cfg {
 	int (*configure_dp_phy)(struct qmp_usbc *qmp);
 	int (*calibrate_dp_phy)(struct qmp_usbc *qmp);
 
-	/* regulators to be requested */
+	const char * const *reset_list;
+	int num_resets;
 	const struct regulator_bulk_data *vreg_list;
 	int num_vregs;
 
@@ -464,6 +465,8 @@ static const struct qmp_phy_cfg msm8998_usb3phy_cfg = {
 	.rx_tbl_num             = ARRAY_SIZE(msm8998_usb3_rx_tbl),
 	.pcs_tbl                = msm8998_usb3_pcs_tbl,
 	.pcs_tbl_num            = ARRAY_SIZE(msm8998_usb3_pcs_tbl),
+	.reset_list		= usb3phy_reset_l,
+	.num_resets		= ARRAY_SIZE(usb3phy_reset_l),
 	.vreg_list              = qmp_phy_msm8998_vreg_l,
 	.num_vregs              = ARRAY_SIZE(qmp_phy_msm8998_vreg_l),
 	.regs                   = qmp_v3_usb3phy_regs_layout,
@@ -480,6 +483,8 @@ static const struct qmp_phy_cfg qcm2290_usb3phy_cfg = {
 	.rx_tbl_num		= ARRAY_SIZE(qcm2290_usb3_rx_tbl),
 	.pcs_tbl		= qcm2290_usb3_pcs_tbl,
 	.pcs_tbl_num		= ARRAY_SIZE(qcm2290_usb3_pcs_tbl),
+	.reset_list		= usb3phy_reset_l,
+	.num_resets		= ARRAY_SIZE(usb3phy_reset_l),
 	.vreg_list		= qmp_phy_sm2290_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_sm2290_vreg_l),
 	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
@@ -496,6 +501,8 @@ static const struct qmp_phy_cfg sdm660_usb3phy_cfg = {
 	.rx_tbl_num		= ARRAY_SIZE(sdm660_usb3_rx_tbl),
 	.pcs_tbl		= qcm2290_usb3_pcs_tbl,
 	.pcs_tbl_num		= ARRAY_SIZE(qcm2290_usb3_pcs_tbl),
+	.reset_list		= usb3phy_reset_l,
+	.num_resets		= ARRAY_SIZE(usb3phy_reset_l),
 	.vreg_list		= qmp_phy_msm8998_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_msm8998_vreg_l),
 	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
@@ -512,6 +519,8 @@ static const struct qmp_phy_cfg qcs615_usb3phy_cfg = {
 	.rx_tbl_num		= ARRAY_SIZE(qcm2290_usb3_rx_tbl),
 	.pcs_tbl		= qcm2290_usb3_pcs_tbl,
 	.pcs_tbl_num		= ARRAY_SIZE(qcm2290_usb3_pcs_tbl),
+	.reset_list		= usb3phy_reset_l,
+	.num_resets		= ARRAY_SIZE(usb3phy_reset_l),
 	.vreg_list		= qmp_phy_qcs615_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_qcs615_vreg_l),
 	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
@@ -1051,8 +1060,7 @@ static int qmp_usbc_parse_dt(struct qmp_usbc *qmp)
 				     "failed to get pipe clock\n");
 	}
 
-	ret = qmp_usbc_reset_init(qmp, usb3phy_reset_l,
-				 ARRAY_SIZE(usb3phy_reset_l));
+	ret = qmp_usbc_reset_init(qmp, cfg->reset_list, cfg->num_resets);
 	if (ret)
 		return ret;
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
