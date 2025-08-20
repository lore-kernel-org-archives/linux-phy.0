Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 441B5CA0FE1
	for <linux-phy@archiver.kernel.org>; Wed, 20 Aug 2025 10:05:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+gCxbSYouiv+VM5n7bmbEbDs5RwATYzCAo5jqWzODas=; b=hPR7lZ3IblOZS3
	bX4zswWzG1fC2j9RkOBkthvoLBcFSJu3/NN50VAJqYu+5ng3+gNNDRQM0S4Nf5qyama6ahrAQg/WE
	rzsH/uhjvVt9ufjXtt1EEs58ZgEsA9+0oCUUfHYx+Uwl/Jrr00yL3Zd8uH9gWxuFJD1IRCvLgGGLU
	5QpnggQWwaojLBJI3ivtCdybnpqMkK7ARxNlwqD4796p2k/1zCzJUWRNyedEPvO8sYE1182krHCZC
	SF8XjQsn55jkgY4VKapFq7OWc9mD7yqy8+/lrWtD9Nd2boo/3BY9J+cy4GBZSP7+UbuiYVnkcw7zF
	MaF/pTUh+FAxtQQsRj5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uofhG-0000000D5Ez-42Na;
	Wed, 20 Aug 2025 10:05:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uofF1-0000000CxFe-3B6s
	for linux-phy@bombadil.infradead.org;
	Wed, 20 Aug 2025 09:36:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=q/mDTFOIBfnjK0/QWv8mS9Heh1eZA9DtQCHcxaFK4YU=; b=jVU2lWFFVSgyoiRMjH80KvFY/D
	NlmsVYxkywKaHrdEMXd+LyVHrOMabf2IbsNDsHAxvEH1IPao2Fzd4qQQYlbBHDK6VuvY3XFFxpYE6
	/l3EizRWqeWHWYDgj66X/lhvrWYfZfuejxERyCgDMuat3u+1YYobJARAcYsCJ8yUjfiheNdw94vur
	MJxiP7zGJhFqFqimg4DmwrpjrmcYjnpf4sHZSp6pAlHFhX1WuWis8jB9QUmXB4C9qm7vb08lkRMga
	4olRaIgTCIADhFL6a18LrveMxoETGBraUkT3x+oRMItTn//S0p2tuyIYPlPLPYyvLqF5kvZDzwjpZ
	QFfQu1Uw==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uofEy-00000000GaJ-29C6
	for linux-phy@lists.infradead.org;
	Wed, 20 Aug 2025 09:36:22 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57K1pEf0028960
	for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 09:36:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	q/mDTFOIBfnjK0/QWv8mS9Heh1eZA9DtQCHcxaFK4YU=; b=juNQQfhTNwAb4i/a
	pvwQBYAdQBg35H5+GR989itO9/u4n0djC/teKOK7C30aUISyvB6VXbHXsZTl4TqS
	9bNqt7WFV0lDcSZTcxk0eIV9RPXPEVDCOI7l8EZIp2XyCmjFVszmLuZit6lwdP+y
	4rY/sX27TXwZxHnRKaQxWrOd9a8UwBQsJU2py4/yxU/RYp/f/oEjAT1k4Fys3nYq
	xJjPh1DboCGTdw6Mk4iXGcrIjZIttmhMODGkVh90cqmqXThd9p0orphx9RgLNM8a
	h0QeC8ts/rbSD9HC1e3qzKncOwlcwgLIxVyLy29EnAAPYrorsu+xnN99hycd7N+S
	aldR7w==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52as6e4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 09:36:14 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2445806fc48so15938095ad.1
        for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 02:36:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755682573; x=1756287373;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=q/mDTFOIBfnjK0/QWv8mS9Heh1eZA9DtQCHcxaFK4YU=;
        b=NTupHsQREt/TLdPJjk+lsMjbXhrpx2p8WJB84fTIBRHd1pd4FxMt6u3t8qttRavuEJ
         WOaexF4y1Sus4aoRhrDA36QfVIW3/WGPOZdR9n8pZizSlQmzyAB+ep8vRRLg6tL6Ex8M
         NbTcbXQ5Z6tW0vIKS50ifa6F5KNuSojQ/t7G9uoW4X9Ng3M+f2PSK37XW9anNZTYTOEb
         b57yMHFIM6VSNBMW/N2WaQujnhhlIu2908yyZXfLsYP3728XPwUa1pavHwouIcmvuD/i
         LlX5O++QjPw8zz8z4R1B0BNJddvnR9qgdD3Ba/dKURCM0X+Gcsp2qJNCcUDx2qPgUO+X
         jmWg==
X-Forwarded-Encrypted: i=1; AJvYcCXGfwQkSJkBVqsxB6ywe7y+zJPDz7RKpEGJCUnGldQMnhEeA1sbXOcMAa8PoM1DDKuF1t4qKzJHWDI=@lists.infradead.org
X-Gm-Message-State: AOJu0YxYDsb4+VmKUapYblkqdXX+GDmXCMUELgvz13S8TxTtwte/dTd1
	1BPLdAmawpA21mkDXPj1hCdTuoabDrXJSFNOiALPMGR/MWPZzFJmPZm9BCUXV9NTcYqpMrxv+Gp
	eRJsOlYyKl9NGivT4IeK7FXOnkOEDTQTV52osnOywQ6q07JRbfw4gNokHkR42lpSMPUyb
X-Gm-Gg: ASbGncv6q9h9RTibCQEKVog1HbRUAM17sEuOvY9qhuYQZ3yOk1qyhBzo5p1Rd+tm1x8
	p9oFZcGOYE654h3Sa4dn34kIXs9xNvZkBZYQdBuy7zrUtSJ3Qaj5djjYEIEMN8HREKrAmjCZ0NG
	1IYCwcSHyE0UC2jTQdEfBjiUmV4Xu1KaNoIiZVr86IGCPm9vBnTfPmWDKaHEMe5H7LRe1DhA46y
	beOrfCSCSn72XB5NkG6YeJ8IW7gQrvlWsfnhIuwaYT8gpwf19Y8/8TjUHMjmBUiWblfnE/f2P8Y
	vtmuaEa0p8K26nZgbgXZl+iMvTOXhCI2pEIjG+JsvHSWYUIveZmuFz6gdd2OdvdHS4eneLkllNQ
	eDizIM2WXg1nA0PxDpUky+yolFTQP50p5PIQhoXdQVe+l65i9XiiRUKTM
X-Received: by 2002:a17:902:e551:b0:240:9dcd:94c0 with SMTP id d9443c01a7336-245ef123cd0mr17110425ad.2.1755682572873;
        Wed, 20 Aug 2025 02:36:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFFr5m4HcTwWZPAOoecbawpyhYHDUllDq6+ukQ6cUhIwHAD8BWGnSUwZ2VPd7LwCejx/fQpbQ==
X-Received: by 2002:a17:902:e551:b0:240:9dcd:94c0 with SMTP id d9443c01a7336-245ef123cd0mr17110145ad.2.1755682572403;
        Wed, 20 Aug 2025 02:36:12 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-245ed4ec100sm20954305ad.116.2025.08.20.02.36.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 02:36:12 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Wed, 20 Aug 2025 17:34:47 +0800
Subject: [PATCH v3 05/14] phy: qcom: qmp-usbc: Add DP-related fields for
 USB/DP switchable PHY
MIME-Version: 1.0
Message-Id: <20250820-add-displayport-support-for-qcs615-platform-v3-5-a43bd25ec39c@oss.qualcomm.com>
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
In-Reply-To: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        quic_lliu6@quicinc.com, Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755682520; l=5029;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=+D2W3NfynpV/SfSgoeJCsCvAzKK6I/PsNqYUvcuv6H4=;
 b=4lFjTOWftHjW2zqh1eIVnt7FHUTiuexIuwistrIwlrOBtB/BNArQWy8l/WtK1lH3j70pwZYO6
 zZkaS7TuSDNA34sBahjCmd4/9HzautzjvqgKpngfrozp0wt7FgbpGBf
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfXzdgkZ/mB4BY0
 zeBVz0Obs6+blMCl0TwLmnbjkaYDoevGo2K0hFNibc0fgyOJ6UveTVHGb22EMQJkRNSocTfXoek
 0XaXpzUXxFdfE1fKHyseeiZ8Ql8n4XO0vRb7jk5fN+XvuVJ5DqDfqKsOdM0eeTsbEgUax9JnKKp
 OEjl2Kjt5UOrS2nhTd2JOuwnMQQRbi/KVs0oIXOc2j5GPr3hDuzl28lpRefodCl722Sf0flB/Uj
 eVFpRz9WB/Ro3qR45gqu+9Uq4X0CJuUkd3MEQLZIESMpIxNsu9VDwToouCtKy49iL3cxFiQlBqk
 duEp9kXpGziCY2o+HCAXGvLH1vKAs0WnkUYv+idM7ud9CAI4JJyz4yfob/iCySYs3LQgZwr8e8Z
 mEzEXNfBdZn7A6eJaGeyR+PPWunQeA==
X-Authority-Analysis: v=2.4 cv=TIIci1la c=1 sm=1 tr=0 ts=68a5970e cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=SsgZ0hFHHArN88CrCc0A:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: Cx8zlcUwOj-e0DdIAwRAqqe4_k8v0VQO
X-Proofpoint-GUID: Cx8zlcUwOj-e0DdIAwRAqqe4_k8v0VQO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-20_03,2025-08-20_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 priorityscore=1501 clxscore=1015 phishscore=0
 bulkscore=0 impostorscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_103621_071287_0CF823E4 
X-CRM114-Status: GOOD (  17.61  )
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

Extend qmp_usbc_offsets and qmp_phy_cfg with DP-specific fields,
including register offsets, init tables, and callback hooks. Also
update qmp_usbc struct to track DP-related resources and state.
This enables support for USB/DP switchable Type-C PHYs that operate
in either mode.

Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 73 ++++++++++++++++++++++++--------
 1 file changed, 55 insertions(+), 18 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index 5afe090b546977a11265bbffa7c355feb8c72dfa..6b0e86ec43ded3d850f68f248a74c39f74ecb5bb 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -298,14 +298,19 @@ struct qmp_usbc_offsets {
 	/* for PHYs with >= 2 lanes */
 	u16 tx2;
 	u16 rx2;
+
+	u16 dp_serdes;
+	u16 dp_txa;
+	u16 dp_txb;
+	u16 dp_dp_phy;
 };
 
-/* struct qmp_phy_cfg - per-PHY initialization config */
+struct qmp_usbc;
 struct qmp_phy_cfg {
 	const struct qmp_usbc_offsets *offsets;
 	const enum qmp_phy_usbc_type type;
 
-	/* Init sequence for PHY blocks - serdes, tx, rx, pcs */
+	/* Init sequence for USB PHY blocks - serdes, tx, rx, pcs */
 	const struct qmp_phy_init_tbl *serdes_tbl;
 	int serdes_tbl_num;
 	const struct qmp_phy_init_tbl *tx_tbl;
@@ -315,6 +320,27 @@ struct qmp_phy_cfg {
 	const struct qmp_phy_init_tbl *pcs_tbl;
 	int pcs_tbl_num;
 
+	/* Init sequence for DP PHY blocks - serdes, tx, rbr, hbr, hbr2 */
+	const struct qmp_phy_init_tbl *dp_serdes_tbl;
+	int dp_serdes_tbl_num;
+	const struct qmp_phy_init_tbl *dp_tx_tbl;
+	int dp_tx_tbl_num;
+	const struct qmp_phy_init_tbl *serdes_tbl_rbr;
+	int serdes_tbl_rbr_num;
+	const struct qmp_phy_init_tbl *serdes_tbl_hbr;
+	int serdes_tbl_hbr_num;
+	const struct qmp_phy_init_tbl *serdes_tbl_hbr2;
+	int serdes_tbl_hbr2_num;
+
+	const u8 (*swing_tbl)[4][4];
+	const u8 (*pre_emphasis_tbl)[4][4];
+
+	/* DP PHY callbacks */
+	void (*dp_aux_init)(struct qmp_usbc *qmp);
+	void (*configure_dp_tx)(struct qmp_usbc *qmp);
+	int (*configure_dp_phy)(struct qmp_usbc *qmp);
+	int (*calibrate_dp_phy)(struct qmp_usbc *qmp);
+
 	/* regulators to be requested */
 	const char * const *vreg_list;
 	int num_vregs;
@@ -335,25 +361,36 @@ struct qmp_usbc {
 	void __iomem *rx;
 	void __iomem *tx2;
 	void __iomem *rx2;
-
-	struct regmap *tcsr_map;
-	u32 vls_clamp_reg;
+	void __iomem *dp_dp_phy;
+	void __iomem *dp_tx;
+	void __iomem *dp_tx2;
+	void __iomem *dp_serdes;
 
 	struct clk *pipe_clk;
+	struct clk_fixed_rate pipe_clk_fixed;
+
+	struct clk_hw dp_link_hw;
+	struct clk_hw dp_pixel_hw;
 	struct clk_bulk_data *clks;
 	int num_clks;
 	int num_resets;
 	struct reset_control_bulk_data *resets;
 	struct regulator_bulk_data *vregs;
 
+	struct regmap *tcsr_map;
+	u32 vls_clamp_reg;
+	u32 dp_phy_mode_reg;
+
 	struct mutex phy_mutex;
 
+	struct phy *usb_phy;
 	enum phy_mode mode;
 	unsigned int usb_init_count;
 
-	struct phy *phy;
-
-	struct clk_fixed_rate pipe_clk_fixed;
+	struct phy *dp_phy;
+	unsigned int dp_aux_cfg;
+	struct phy_configure_opts_dp dp_opts;
+	unsigned int dp_init_count;
 
 	struct typec_switch_dev *sw;
 	enum typec_orientation orientation;
@@ -699,7 +736,7 @@ static int __maybe_unused qmp_usbc_runtime_suspend(struct device *dev)
 
 	dev_vdbg(dev, "Suspending QMP phy, mode:%d\n", qmp->mode);
 
-	if (!qmp->phy->init_count) {
+	if (!qmp->usb_init_count && !qmp->dp_init_count) {
 		dev_vdbg(dev, "PHY not initialized, bailing out\n");
 		return 0;
 	}
@@ -719,7 +756,7 @@ static int __maybe_unused qmp_usbc_runtime_resume(struct device *dev)
 
 	dev_vdbg(dev, "Resuming QMP phy, mode:%d\n", qmp->mode);
 
-	if (!qmp->phy->init_count) {
+	if (!qmp->usb_init_count && !qmp->dp_init_count) {
 		dev_vdbg(dev, "PHY not initialized, bailing out\n");
 		return 0;
 	}
@@ -874,11 +911,11 @@ static int qmp_usbc_typec_switch_set(struct typec_switch_dev *sw,
 	qmp->orientation = orientation;
 
 	if (qmp->usb_init_count) {
-		qmp_usbc_usb_power_off(qmp->phy);
-		qmp_usbc_com_exit(qmp->phy);
+		qmp_usbc_usb_power_off(qmp->usb_phy);
+		qmp_usbc_com_exit(qmp->usb_phy);
 
-		qmp_usbc_com_init(qmp->phy);
-		qmp_usbc_usb_power_on(qmp->phy);
+		qmp_usbc_com_init(qmp->usb_phy);
+		qmp_usbc_usb_power_on(qmp->usb_phy);
 	}
 
 	mutex_unlock(&qmp->phy_mutex);
@@ -1106,14 +1143,14 @@ static int qmp_usbc_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_node_put;
 
-	qmp->phy = devm_phy_create(dev, np, &qmp_usbc_usb_phy_ops);
-	if (IS_ERR(qmp->phy)) {
-		ret = PTR_ERR(qmp->phy);
+	qmp->usb_phy = devm_phy_create(dev, np, &qmp_usbc_usb_phy_ops);
+	if (IS_ERR(qmp->usb_phy)) {
+		ret = PTR_ERR(qmp->usb_phy);
 		dev_err(dev, "failed to create PHY: %d\n", ret);
 		goto err_node_put;
 	}
 
-	phy_set_drvdata(qmp->phy, qmp);
+	phy_set_drvdata(qmp->usb_phy, qmp);
 
 	of_node_put(np);
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
