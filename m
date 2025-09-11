Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24A1ECAC587
	for <linux-phy@archiver.kernel.org>; Thu, 11 Sep 2025 14:56:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dIV/4FYT7XvnikegHMncER6s7WoDubE0sbDuJTdkZ6g=; b=vWeER6AEq4zMIt
	mdSvug+bNFtpf5GzijJMu8HIduUs1ZS/NbNSYNk5Yep/u/AR3j2yicw6LjMN2hfDMAoY1KGBu5QS+
	arxNu9CRsJsXbxX2kPNGAKJDDRpcit8/lgSNj7CdmeiI6b4Kdpo1jvOHwvNIYEvh+hAehpzYwj0Od
	/bKA7yhpEzUheMgtiDUdoiplI4MBtZvjDQY4A3B78KoPl1ijqpXtWMb2LcvnRxupuiY2GJmmc5tNX
	UT+PXUeeK984iN3fo7ZaiBPieWTD0R2yVShNLTtT/KMynWmsnLkYFD2ZxYLyfhZ9YfCHZyoXv8UAs
	2UQUfgJeDDJp/Lq7WUyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwij7-00000003hy4-3lD9;
	Thu, 11 Sep 2025 14:56:45 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwij5-00000003hwM-2BTd
	for linux-phy@lists.infradead.org;
	Thu, 11 Sep 2025 14:56:44 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58BDYVcT002431
	for <linux-phy@lists.infradead.org>; Thu, 11 Sep 2025 14:56:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zLXZixL/eFj/4Bs9Ee1txFHqqTLRG/OQzT0mGoWScbA=; b=E3R5RNFKdvQyZoL7
	x9olGcdRieyBbPv6UvVSAPdPRSdSX6Kd9PZMUKJM7HRzbGkqEh9PhEXGjEeGLls1
	HqXMMU2yLorbcmnj5e11JMw+J6WNd5qWFfz3WVQ9zOKEKF16dlqNlzyqzFeGZLB1
	4PLBUQbcMajO595CSgQdrYddLHW/Ibj7gTSYtAnc1vUkN1XhL3u3fiOxpLyYJOIu
	USZ/INqAMRTdW26jip0PdxkvhhcSwxMx5n2pK1P6jfQeZ3OqxXgf/TUJzSe62+4y
	s9A76tN2cYdRyzB665pu+0YWfGrz+JpYW+QwaA+tv6EiwUOuV17GbdwTgjZ3R2s+
	+KT68g==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 493ydv0bbb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 11 Sep 2025 14:56:42 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-244581a191bso1544955ad.2
        for <linux-phy@lists.infradead.org>; Thu, 11 Sep 2025 07:56:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757602601; x=1758207401;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zLXZixL/eFj/4Bs9Ee1txFHqqTLRG/OQzT0mGoWScbA=;
        b=iLT1W3/+scdFWnQW/W4TtBSSwWYLuvOkdeHCVEjWaF1Siz47UHicQWw2XnmhL395iY
         88p/G6neYuNjCX1eHnQnNEOKL7HoLDLwBTw0eS+jRP23k8/QS7MN/N99kKnr7S1GElFr
         oUqCkQLKbH+CBkdl1YCDxKVwNS3SC5sshmN9J+v/1xiWsGMIneFstmur7mxXDcziyM0u
         Q0v6LXFlekb3LScZwyqvtO4cILeZ3CiXrzuVohw2CAC8LNl2eXEQJx32xdbhfSxQEZ6s
         Jlt8b7UsJebML6xreXkWoPat+cZGn/Q9NrRsB0iwy8fUIXB7eC9FAU0OGS2bOgnKggtv
         0cag==
X-Forwarded-Encrypted: i=1; AJvYcCX9dmV8ycNb9ZlZNSq5Ca7YQD2vsg7AULMGfgTtWpY7b4JwOQNkBGNq6OdYWk0EkDZBxuV7FKZNj/s=@lists.infradead.org
X-Gm-Message-State: AOJu0YwWO8u8Ca9kLhJHarmHbuSQnohp1e76SUWDxrLtT8S0455ZgeKh
	6sNeEGam66TFAgYLBef56/gcf8gNodcagKnU8S36gIF9G4APzfWcgOihc1sPCat/g/LDs011wdJ
	e3sRvS+qR3nkFHuufQUtBAL9MkUW6x9BGnIJ04/65PpULGBiLwg94WFgAZxX43mIOICvx
X-Gm-Gg: ASbGncs6hZ4TQZuYM66yZgScvwqNJ/ZNtY8f96jCWK4mFqyZXpcRpsdXnIz4Z2Jl2gV
	YyQ34xR2OKLlPpqxUtDTHvFObc3kVq5EUXAsnRTcQ7HYrVtK9vfhaUyxWKA+it2glbOSLbp1rRJ
	Vn2UGFgDrI0zMButr1ItdIfHlb4def6gsdti5BFsRzFDegvaoFbV5wymaNNk0FnWDrF64kxsU7q
	KOeadr/lMYJz0HJmGsnjAZeBNKtb1VRAtCQgi720kH/uZl3gflNUxeMM/q1irWUTCq/gAAytyn9
	3fmqRuVJTDAGabxElkpG7oS0W7KoXphGEoSuHvPH6dlR8ZOAqu0DnhIszWaiE3albGZf7MdaZiq
	h3bAGtcNzzI31au/fh7JUG6ECmtzLU4LkDXYanOiO3cXUuJzMhenpWknK
X-Received: by 2002:a05:6a21:6da3:b0:24a:1b2d:6409 with SMTP id adf61e73a8af0-2534441301bmr14924043637.3.1757602601033;
        Thu, 11 Sep 2025 07:56:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFxpCzPCkbk6tE0ahvogl8TUjzJKP8UJk1MG6TWJlEMuyGc2I2iD+TxWHpLceWlT5F16c/Gpw==
X-Received: by 2002:a05:6a21:6da3:b0:24a:1b2d:6409 with SMTP id adf61e73a8af0-2534441301bmr14924025637.3.1757602600539;
        Thu, 11 Sep 2025 07:56:40 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b54a387cd4bsm2107453a12.35.2025.09.11.07.56.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 07:56:40 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Thu, 11 Sep 2025 22:55:07 +0800
Subject: [PATCH v4 10/13] phy: qcom: qmp-usbc: Add DP PHY ops for USB/DP
 switchable Type-C PHYs
MIME-Version: 1.0
Message-Id: <20250911-add-displayport-support-for-qcs615-platform-v4-10-2702bdda14ed@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757602528; l=6119;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=/Dzt0Flvv5Npb/x7UQOUvomYu5H4XAyEv6INMeuWHJM=;
 b=aUG1scQ9zlx0rLGfM/7k8UjbPUtwjpp63jx6PPo5a4Rcy/Ao2U72sV7tzRnBN07WzKs6OWuwZ
 QrlJTWS85QpAFXhdru3ZpNehE5NLDr9Zr0jCZp175nlwVVgoHBSAoKK
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTExMDEyMCBTYWx0ZWRfX8jErSmJIrSWJ
 T2TDadJKXNDkvu9iXEzG6Q0JdWnu0cfnZd3KW4fWmWKUMgDzC8GnW+mIO/0B0VVQiuR7rLRNdRN
 JFeRRr0Ry9bFUoh1/uJuaQKXF3//8/pxPB5wvWRbRMz5/imH0X7buzLMSF1MOb+QXsbwQyXm7zg
 vS4RaZXiAlRklp3WVVAO9Lv7QBp5/XoI0R2OyjJQjRO2y7w2CYmxrFsxkHalDSf9nU/yhJJzUwh
 LMReEthCj6diMkNBguRnlGg5ipvf/niQwE6185sUMQ1QomIjsZxUGm4x8YLr4GGEJOxjIa+zX3d
 T2bYwGXSrX9dWkntCf42aoc2zBoJFWOn3dQ7RZc1uC2kdw4PCAjFjFL3xfR9nymSajxbLbSKfin
 8/2zbKSB
X-Proofpoint-GUID: mU9rfMH17OqnD8CqhLu3tvGj4i-vIe2B
X-Proofpoint-ORIG-GUID: mU9rfMH17OqnD8CqhLu3tvGj4i-vIe2B
X-Authority-Analysis: v=2.4 cv=LoaSymdc c=1 sm=1 tr=0 ts=68c2e32a cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=3aaRT45y716cZRsrHfIA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-11_01,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 impostorscore=0 suspectscore=0 clxscore=1015
 malwarescore=0 phishscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509110120
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250911_075643_683849_4B65B14D 
X-CRM114-Status: GOOD (  19.45  )
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

Define qmp_usbc_dp_phy_ops struct to support DP mode on USB/DP
switchable PHYs.

Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 192 ++++++++++++++++++++++++++++++-
 1 file changed, 191 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index c57596fe0d5cd5c15105ad8183ccdc047953e4d5..613239d15a6a3bba47a647db4e663713f127c93e 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -1108,6 +1108,159 @@ static int qmp_usbc_usb_set_mode(struct phy *phy, enum phy_mode mode, int submod
 	return 0;
 }
 
+static int qmp_usbc_dp_enable(struct phy *phy)
+{
+	struct qmp_usbc *qmp = phy_get_drvdata(phy);
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
+	int ret;
+
+	if (qmp->dp_init_count) {
+		dev_err(qmp->dev, "DP already inited\n");
+		return 0;
+	}
+
+	mutex_lock(&qmp->phy_mutex);
+
+	ret = qmp_usbc_com_init(phy);
+	if (ret)
+		goto dp_init_unlock;
+
+	qmp_usbc_set_phy_mode(qmp, true);
+
+	cfg->dp_aux_init(qmp);
+
+	qmp->dp_init_count++;
+
+dp_init_unlock:
+	mutex_unlock(&qmp->phy_mutex);
+	return ret;
+}
+
+static int qmp_usbc_dp_disable(struct phy *phy)
+{
+	struct qmp_usbc *qmp = phy_get_drvdata(phy);
+
+	mutex_lock(&qmp->phy_mutex);
+
+	qmp_usbc_com_exit(phy);
+
+	qmp->dp_init_count--;
+
+	mutex_unlock(&qmp->phy_mutex);
+
+	return 0;
+}
+
+static int qmp_usbc_dp_configure(struct phy *phy, union phy_configure_opts *opts)
+{
+	const struct phy_configure_opts_dp *dp_opts = &opts->dp;
+	struct qmp_usbc *qmp = phy_get_drvdata(phy);
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
+
+	mutex_lock(&qmp->phy_mutex);
+
+	memcpy(&qmp->dp_opts, dp_opts, sizeof(*dp_opts));
+	if (qmp->dp_opts.set_voltages) {
+		cfg->configure_dp_tx(qmp);
+		qmp->dp_opts.set_voltages = 0;
+	}
+
+	mutex_unlock(&qmp->phy_mutex);
+
+	return 0;
+}
+
+static int qmp_usbc_dp_calibrate(struct phy *phy)
+{
+	struct qmp_usbc *qmp = phy_get_drvdata(phy);
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
+	int ret = 0;
+
+	mutex_lock(&qmp->phy_mutex);
+
+	if (cfg->calibrate_dp_phy) {
+		ret = cfg->calibrate_dp_phy(qmp);
+		if (ret) {
+			dev_err(qmp->dev, "dp calibrate err(%d)\n", ret);
+			mutex_unlock(&qmp->phy_mutex);
+			return ret;
+		}
+	}
+
+	mutex_unlock(&qmp->phy_mutex);
+	return 0;
+}
+
+static int qmp_usbc_dp_serdes_init(struct qmp_usbc *qmp)
+{
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
+	void __iomem *serdes = qmp->dp_serdes;
+	const struct phy_configure_opts_dp *dp_opts = &qmp->dp_opts;
+
+	qmp_configure(qmp->dev, serdes, cfg->dp_serdes_tbl,
+		      cfg->dp_serdes_tbl_num);
+
+	switch (dp_opts->link_rate) {
+	case 1620:
+		qmp_configure(qmp->dev, serdes, cfg->serdes_tbl_rbr,
+			      cfg->serdes_tbl_rbr_num);
+		break;
+	case 2700:
+		qmp_configure(qmp->dev, serdes, cfg->serdes_tbl_hbr,
+			      cfg->serdes_tbl_hbr_num);
+		break;
+	case 5400:
+		qmp_configure(qmp->dev, serdes, cfg->serdes_tbl_hbr2,
+			      cfg->serdes_tbl_hbr2_num);
+		break;
+	default:
+		/* Other link rates aren't supported */
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int qmp_usbc_dp_power_on(struct phy *phy)
+{
+	struct qmp_usbc *qmp = phy_get_drvdata(phy);
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
+
+	void __iomem *tx = qmp->dp_tx;
+	void __iomem *tx2 = qmp->dp_tx2;
+
+	mutex_lock(&qmp->phy_mutex);
+
+	qmp_usbc_dp_serdes_init(qmp);
+
+	qmp_configure_lane(qmp->dev, tx, cfg->dp_tx_tbl, cfg->dp_tx_tbl_num, 1);
+	qmp_configure_lane(qmp->dev, tx2, cfg->dp_tx_tbl, cfg->dp_tx_tbl_num, 2);
+
+	/* Configure special DP tx tunings */
+	cfg->configure_dp_tx(qmp);
+
+	/* Configure link rate, swing, etc. */
+	cfg->configure_dp_phy(qmp);
+
+	mutex_unlock(&qmp->phy_mutex);
+
+	return 0;
+}
+
+static int qmp_usbc_dp_power_off(struct phy *phy)
+{
+	struct qmp_usbc *qmp = phy_get_drvdata(phy);
+
+	mutex_lock(&qmp->phy_mutex);
+
+	/* Assert DP PHY power down */
+	writel(DP_PHY_PD_CTL_PSR_PWRDN, qmp->dp_dp_phy + QSERDES_DP_PHY_PD_CTL);
+
+	mutex_unlock(&qmp->phy_mutex);
+
+	return 0;
+}
+
 static const struct phy_ops qmp_usbc_usb_phy_ops = {
 	.init		= qmp_usbc_usb_enable,
 	.exit		= qmp_usbc_usb_disable,
@@ -1115,6 +1268,16 @@ static const struct phy_ops qmp_usbc_usb_phy_ops = {
 	.owner		= THIS_MODULE,
 };
 
+static const struct phy_ops qmp_usbc_dp_phy_ops = {
+	.init		= qmp_usbc_dp_enable,
+	.exit		= qmp_usbc_dp_disable,
+	.configure	= qmp_usbc_dp_configure,
+	.calibrate	= qmp_usbc_dp_calibrate,
+	.power_on	= qmp_usbc_dp_power_on,
+	.power_off	= qmp_usbc_dp_power_off,
+	.owner		= THIS_MODULE,
+};
+
 static void qmp_usbc_enable_autonomous_mode(struct qmp_usbc *qmp)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -1669,6 +1832,23 @@ static int qmp_usbc_parse_tcsr(struct qmp_usbc *qmp)
 	return 0;
 }
 
+static struct phy *qmp_usbc_phy_xlate(struct device *dev, const struct of_phandle_args *args)
+{
+	struct qmp_usbc *qmp = dev_get_drvdata(dev);
+
+	if (args->args_count == 0)
+		return qmp->usb_phy;
+
+	switch (args->args[0]) {
+	case QMP_USB43DP_USB3_PHY:
+		return qmp->usb_phy;
+	case QMP_USB43DP_DP_PHY:
+		return qmp->dp_phy;
+	}
+
+	return ERR_PTR(-EINVAL);
+}
+
 static int qmp_usbc_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -1743,9 +1923,19 @@ static int qmp_usbc_probe(struct platform_device *pdev)
 
 	phy_set_drvdata(qmp->usb_phy, qmp);
 
+	if (qmp->dp_serdes != 0) {
+		qmp->dp_phy = devm_phy_create(dev, np, &qmp_usbc_dp_phy_ops);
+		if (IS_ERR(qmp->dp_phy)) {
+			ret = PTR_ERR(qmp->dp_phy);
+			dev_err(dev, "failed to create PHY: %d\n", ret);
+			goto err_node_put;
+		}
+		phy_set_drvdata(qmp->dp_phy, qmp);
+	}
+
 	of_node_put(np);
 
-	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
+	phy_provider = devm_of_phy_provider_register(dev, qmp_usbc_phy_xlate);
 
 	return PTR_ERR_OR_ZERO(phy_provider);
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
