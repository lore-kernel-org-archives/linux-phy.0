Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8379CAC5A5
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 07:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y3ZIjHvbZg1IYy8hUFLBeFHArXUj4ChaJ2E+/U3dMj0=; b=2BiC++jtPWQG/7
	IcgPIJFlb8Kwbp6JBtYp9jcqBER2Wg9Z+qVnxeHj6gfaVitL6bFZHI4NgStJl9uV86nXxkKjRrff3
	fOyA9oQyhoTdVo38zh+Pq54FcXv24riUq9LIx0/ymc4ZvIrAvDBAxJFNYf3a6bmwoKwNmhSEE6BbF
	UKOrDbkx50m7w1nYh5e1LH0ue6nJEGXyY2FrqiMVUUEbLd95LMrEiQQ58YtHOe5B+yXpahDWHdwA7
	PQmp2md0L1RxP+aQGajltm5MBc0PEUw7FMdiTmMg9w+PbvgFiVcC5IbozxEbsvqLsRpktCNDO/GF3
	bdXiNOfhIHzPvIQiGr0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1g3J-00000006YFe-2KkQ;
	Thu, 25 Sep 2025 07:06:05 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1g3H-00000006YEq-0uFy
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 07:06:04 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P4aN2P027602
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 07:06:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	l2Dojx1iD6RP3jObiZpJMfMDuav2jG6QC62uyxjC/fU=; b=kmJrYepcyraxxg7N
	j+2EGs2lwkgZtjaWYYePaRTkOj6zhuH1GqG2jz85KI4T4fiyGfqFK4EuWy4CK+Wf
	E0rqhcKK5evwVIvmyVcV/Ia0mGxkhrATR/v607A94Z88qUfV3MyZZ/FwHssJ/hk+
	fzmdqjiGvDCmpmhVW1fmSsX+pgxinJJpJyelYPTYJfuMfU6R5hQb/E/ukC/Wu2aG
	QyZU1Y1W7IDAebr4nTuhdXl4+YUfCVkUZcVtpzffA1T/oqP5VV8NoHVF/62mvxMX
	8InZ80aK9nB5uzEEXVXSlNFLNu7QQWIu8pLIuliGkJT/0aDsumHp1xHpNPQsr64R
	opolBA==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49cxup0bvg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 07:06:02 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-3327e438680so141503a91.3
        for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 00:06:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758783962; x=1759388762;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l2Dojx1iD6RP3jObiZpJMfMDuav2jG6QC62uyxjC/fU=;
        b=DFrVx9Cnxe7Q2tUu+aI4rl4jATmf5TTz7TeHsJHOkXpPxTMZnExiwAHjuMfYJlJgt2
         lZ8LnL4JHjFuWlT/338kAmhTSTnNlWs5Jh91uG1Whtcyr7zMXWOOYdzoAZCNhw/IYbty
         QchUvgKoPH34BIgNH2f+FzRakZXmup4DmQIdBVq3A8RRe7u/gTAMOOZhWaoEHc1jkaNV
         04KrClZ9RRG61c8GJgQNTVNRt+sEFUuUS1KSCAM3MzGpCTyRtXbQdAWkox/xZXYsv1rO
         ISEPPpbQwvQ4QyIvzgJVmIWdyE4/deBPZEm/hFs9ETBoZYB+aCyg++tJtrBOyE8a5SPO
         NXUg==
X-Forwarded-Encrypted: i=1; AJvYcCVU0X5jZdwoyawxQWwCQR6ydk43OPOBEmsUK282n+8+MRRBM58nPXOHlxVRdKrP2tnxXrPgxLR9Dow=@lists.infradead.org
X-Gm-Message-State: AOJu0YxlX6EnQ6r2JLGuM6S3DeLaeZnjP166PMwbyC0o5WWJADvemooS
	cf5pIzl+PKhQvvblZHUbVBxZTdnL391xwLQBpWQVWnTodlMJ2tfvlPOpSNxJ6lzgEID1qeLXUuS
	h+PQJhzlwHz/lpyfCSTXCPsa9m7Hc8m7JH49M1ec7OyBE1KMWVptPXPNrwEG7Nh4Thyoh
X-Gm-Gg: ASbGnctw03KGcznQhcxdqudk6UzH5nBob5Oe838Qy4DSm1AQ6TXtj3AD0rZkFM5pRgb
	90VoxERRYKW0xG0fRpglf780Bd1gJZZNFxlOsYcjdJsx1JTGARhfCdmLHDrK+6tz66GwRkyzwoi
	3xp+NOpD/ltSy4fC/UJBOVo5Mbe57qkF1OT2Qm71Z68C3npGWZo7xMGltLy/9AzJKDFZ/IgrEor
	YqXXJQpoQR7f5cmluI8BsvKfcK0pLKJW8cBJNMFseCTPDuBwGvEWs8PZMDLnCKA3zGMB4qleYS5
	dTZ5Sp1Dvv4FwZvylsmJcAF1Eu0zH0bmfdWviQ9WaidQAUMepORX8MgxCXNy/pmmQJ7JmPo1xVN
	00GIkVmMfx+epbOoccGc+Pi+MbHjlSohzTWAkoMZPNaNCTJqp2obEDOLu
X-Received: by 2002:a17:90b:1642:b0:32a:8b55:5b82 with SMTP id 98e67ed59e1d1-3342a138dafmr1621972a91.0.1758783961560;
        Thu, 25 Sep 2025 00:06:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IElr6w5inT3JUY04JsRy9X7InvrTRIJJx9cbD5gtP+vhtRymbBAV5RoSaPsYX1MDOy1xD2xIg==
X-Received: by 2002:a17:90b:1642:b0:32a:8b55:5b82 with SMTP id 98e67ed59e1d1-3342a138dafmr1621939a91.0.1758783961036;
        Thu, 25 Sep 2025 00:06:01 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3342a2bd584sm914253a91.0.2025.09.25.00.05.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 00:06:00 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 15:04:52 +0800
Subject: [PATCH v6 06/14] phy: qcom: qmp-usbc: add DP link and vco_div
 clocks for DP PHY
MIME-Version: 1.0
Message-Id: <20250925-add-displayport-support-for-qcs615-platform-v6-6-419fe5963819@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758783910; l=8756;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=+AkB68Wj9yjCLoqOifYtk/INX+wMNK47OLvgYQCEpRs=;
 b=pb/30npFCgG+mf4VI5FI17Whq1da1fDr3EatW6LG6+CNgVg8c9XXvhtkqe+zGhtCeNGcxEJ1G
 ZMZmgrsvofPAi+/2cxHvbk+281Vz/O9Pc2R4hfTXX/LLyUXFkRhCMZk
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Authority-Analysis: v=2.4 cv=B4a50PtM c=1 sm=1 tr=0 ts=68d4e9da cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=LV3rUWBglltBUjuJGHkA:9
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDA0MiBTYWx0ZWRfX69mCDEoHHqRc
 R8xKCyYrqCkdv3qGmTc5su0ZSfPKC6tU/I3E41tsqXa+LdLsO7d/w6vWjJanLpDJpbl9EgdeMi9
 wYfUaShvK92iacY7KvQiF62XAX5g+3ivH/Z6AiY34kZevHnHlT+5gzo3DMRC+w2PIVZ52b4XTl4
 H6tDM2A8z5hBxxfWQV3Z/l5EVlzXEDPZ3xu1c+V8KniLgRZmFVIj3iQKGxPv4G9jYQNDmtIzBu0
 GJLre1QURv+9aeeRZSoMun7u4ehN/65hojplACCJAsUQTdCl3p4TEPZGDA1lgihrIc3Q1KnnS6W
 8RUWuJfNx2mcygxF7E9s6YYnf8yGIfVF3GGEO6W3whAb89H6MQN1brvCKsxKvmWBuEZ/pVYQQHN
 82IELn/M
X-Proofpoint-GUID: 96y6xv_9nRYpBEK7Rsoe2EpISQovRFzK
X-Proofpoint-ORIG-GUID: 96y6xv_9nRYpBEK7Rsoe2EpISQovRFzK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 suspectscore=0 priorityscore=1501 adultscore=0
 phishscore=0 clxscore=1015 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509250042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250925_000603_268857_7C454DF7 
X-CRM114-Status: GOOD (  22.44  )
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

USB3DP PHY requires link and vco_div clocks when operating in DP mode.
Extend qmp_usbc_register_clocks and the clock provider logic to register
these clocks along with the existing pipe clock, to support both USB and
DP configurations.

Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 210 ++++++++++++++++++++++++++++++-
 1 file changed, 204 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index f9e20f43435c050e33e9490343a4693a339d692a..7139f4dab82fd7b0d1362dddefba178465e76fa4 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -22,6 +22,7 @@
 #include <linux/slab.h>
 #include <linux/usb/typec.h>
 #include <linux/usb/typec_mux.h>
+#include <dt-bindings/phy/phy-qcom-qmp.h>
 
 #include "phy-qcom-qmp-common.h"
 
@@ -851,9 +852,23 @@ static int qmp_usbc_clk_init(struct qmp_usbc *qmp)
 	return devm_clk_bulk_get_optional(dev, num, qmp->clks);
 }
 
-static void phy_clk_release_provider(void *res)
+static struct clk_hw *qmp_usbc_clks_hw_get(struct of_phandle_args *clkspec, void *data)
 {
-	of_clk_del_provider(res);
+	struct qmp_usbc *qmp = data;
+
+	if (clkspec->args_count == 0)
+		return &qmp->pipe_clk_fixed.hw;
+
+	switch (clkspec->args[0]) {
+	case QMP_USB43DP_USB3_PIPE_CLK:
+		return &qmp->pipe_clk_fixed.hw;
+	case QMP_USB43DP_DP_LINK_CLK:
+		return &qmp->dp_link_hw;
+	case QMP_USB43DP_DP_VCO_DIV_CLK:
+		return &qmp->dp_pixel_hw;
+	}
+
+	return ERR_PTR(-EINVAL);
 }
 
 /*
@@ -878,12 +893,14 @@ static int phy_pipe_clk_register(struct qmp_usbc *qmp, struct device_node *np)
 {
 	struct clk_fixed_rate *fixed = &qmp->pipe_clk_fixed;
 	struct clk_init_data init = { };
+	char name[64];
 	int ret;
 
 	ret = of_property_read_string(np, "clock-output-names", &init.name);
 	if (ret) {
-		dev_err(qmp->dev, "%pOFn: No clock-output-names\n", np);
-		return ret;
+		/* Clock name is not mandatory. */
+		snprintf(name, sizeof(name), "%s::pipe_clk", dev_name(qmp->dev));
+		init.name = name;
 	}
 
 	init.ops = &clk_fixed_rate_ops;
@@ -892,10 +909,184 @@ static int phy_pipe_clk_register(struct qmp_usbc *qmp, struct device_node *np)
 	fixed->fixed_rate = 125000000;
 	fixed->hw.init = &init;
 
-	ret = devm_clk_hw_register(qmp->dev, &fixed->hw);
+	return devm_clk_hw_register(qmp->dev, &fixed->hw);
+}
+
+
+/*
+ * Display Port PLL driver block diagram for branch clocks
+ *
+ *              +------------------------------+
+ *              |         DP_VCO_CLK           |
+ *              |                              |
+ *              |    +-------------------+     |
+ *              |    |   (DP PLL/VCO)    |     |
+ *              |    +---------+---------+     |
+ *              |              v               |
+ *              |   +----------+-----------+   |
+ *              |   | hsclk_divsel_clk_src |   |
+ *              |   +----------+-----------+   |
+ *              +------------------------------+
+ *                              |
+ *          +---------<---------v------------>----------+
+ *          |                                           |
+ * +--------v----------------+                          |
+ * |    dp_phy_pll_link_clk  |                          |
+ * |     link_clk            |                          |
+ * +--------+----------------+                          |
+ *          |                                           |
+ *          |                                           |
+ *          v                                           v
+ * Input to DISPCC block                                |
+ * for link clk, crypto clk                             |
+ * and interface clock                                  |
+ *                                                      |
+ *                                                      |
+ *      +--------<------------+-----------------+---<---+
+ *      |                     |                 |
+ * +----v---------+  +--------v-----+  +--------v------+
+ * | vco_divided  |  | vco_divided  |  | vco_divided   |
+ * |    _clk_src  |  |    _clk_src  |  |    _clk_src   |
+ * |              |  |              |  |               |
+ * |divsel_six    |  |  divsel_two  |  |  divsel_four  |
+ * +-------+------+  +-----+--------+  +--------+------+
+ *         |                 |                  |
+ *         v---->----------v-------------<------v
+ *                         |
+ *              +----------+-----------------+
+ *              |   dp_phy_pll_vco_div_clk   |
+ *              +---------+------------------+
+ *                        |
+ *                        v
+ *              Input to DISPCC block
+ *              for DP pixel clock
+ *
+ */
+static int qmp_dp_pixel_clk_determine_rate(struct clk_hw *hw, struct clk_rate_request *req)
+{
+	switch (req->rate) {
+	case 1620000000UL / 2:
+	case 2700000000UL / 2:
+	/* 5.4 is same link rate as 2.7GHz, i.e. div 4 */
+		return 0;
+	default:
+		return -EINVAL;
+	}
+}
+
+static unsigned long qmp_dp_pixel_clk_recalc_rate(struct clk_hw *hw, unsigned long parent_rate)
+{
+	const struct qmp_usbc *qmp;
+	const struct phy_configure_opts_dp *dp_opts;
+
+	qmp = container_of(hw, struct qmp_usbc, dp_pixel_hw);
+
+	dp_opts = &qmp->dp_opts;
+
+	switch (dp_opts->link_rate) {
+	case 1620:
+		return 1620000000UL / 2;
+	case 2700:
+		return 2700000000UL / 2;
+	case 5400:
+		return 5400000000UL / 4;
+	default:
+		return 0;
+	}
+}
+
+static const struct clk_ops qmp_dp_pixel_clk_ops = {
+	.determine_rate	= qmp_dp_pixel_clk_determine_rate,
+	.recalc_rate	= qmp_dp_pixel_clk_recalc_rate,
+};
+
+static int qmp_dp_link_clk_determine_rate(struct clk_hw *hw, struct clk_rate_request *req)
+{
+	switch (req->rate) {
+	case 162000000:
+	case 270000000:
+	case 540000000:
+		return 0;
+	default:
+		return -EINVAL;
+	}
+}
+
+static unsigned long qmp_dp_link_clk_recalc_rate(struct clk_hw *hw, unsigned long parent_rate)
+{
+	const struct qmp_usbc *qmp;
+	const struct phy_configure_opts_dp *dp_opts;
+
+	qmp = container_of(hw, struct qmp_usbc, dp_link_hw);
+	dp_opts = &qmp->dp_opts;
+
+	switch (dp_opts->link_rate) {
+	case 1620:
+	case 2700:
+	case 5400:
+		return dp_opts->link_rate * 100000;
+	default:
+		return 0;
+	}
+}
+
+static const struct clk_ops qmp_dp_link_clk_ops = {
+	.determine_rate	= qmp_dp_link_clk_determine_rate,
+	.recalc_rate	= qmp_dp_link_clk_recalc_rate,
+};
+
+static int phy_dp_clks_register(struct qmp_usbc *qmp, struct device_node *np)
+{
+	struct clk_init_data init = { };
+	char name[64];
+	int ret;
+
+	snprintf(name, sizeof(name), "%s::link_clk", dev_name(qmp->dev));
+	init.ops = &qmp_dp_link_clk_ops;
+	init.name = name;
+	qmp->dp_link_hw.init = &init;
+	ret = devm_clk_hw_register(qmp->dev, &qmp->dp_link_hw);
+	if (ret < 0) {
+		dev_err(qmp->dev, "link clk reg fail ret=%d\n", ret);
+		return ret;
+	}
+
+	snprintf(name, sizeof(name), "%s::vco_div_clk", dev_name(qmp->dev));
+	init.ops = &qmp_dp_pixel_clk_ops;
+	init.name = name;
+	qmp->dp_pixel_hw.init = &init;
+	ret = devm_clk_hw_register(qmp->dev, &qmp->dp_pixel_hw);
+	if (ret) {
+		dev_err(qmp->dev, "pxl clk reg fail ret=%d\n", ret);
+		return ret;
+	}
+
+	return 0;
+}
+
+static void phy_clk_release_provider(void *res)
+{
+	of_clk_del_provider(res);
+}
+
+static int qmp_usbc_register_clocks(struct qmp_usbc *qmp, struct device_node *np)
+{
+	struct clk_fixed_rate *fixed = &qmp->pipe_clk_fixed;
+	int ret;
+
+	ret = phy_pipe_clk_register(qmp, np);
 	if (ret)
 		return ret;
 
+	if (qmp->dp_serdes != 0) {
+		ret = phy_dp_clks_register(qmp, np);
+		if (ret)
+			return ret;
+	}
+
+	if (np == qmp->dev->of_node)
+		return devm_of_clk_add_hw_provider(qmp->dev, qmp_usbc_clks_hw_get, qmp);
+
 	ret = of_clk_add_hw_provider(np, of_clk_hw_simple_get, &fixed->hw);
 	if (ret)
 		return ret;
@@ -1040,6 +1231,13 @@ static int qmp_usbc_parse_dt(struct qmp_usbc *qmp)
 	if (IS_ERR(base))
 		return PTR_ERR(base);
 
+	if (offs->dp_serdes != 0) {
+		qmp->dp_serdes = base + offs->dp_serdes;
+		qmp->dp_tx = base + offs->dp_txa;
+		qmp->dp_tx2 = base + offs->dp_txb;
+		qmp->dp_dp_phy = base + offs->dp_dp_phy;
+	}
+
 	qmp->serdes = base + offs->serdes;
 	qmp->pcs = base + offs->pcs;
 	if (offs->pcs_misc)
@@ -1148,7 +1346,7 @@ static int qmp_usbc_probe(struct platform_device *pdev)
 	 */
 	pm_runtime_forbid(dev);
 
-	ret = phy_pipe_clk_register(qmp, np);
+	ret = qmp_usbc_register_clocks(qmp, np);
 	if (ret)
 		goto err_node_put;
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
