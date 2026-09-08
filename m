Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71AD7C79F82
	for <linux-phy@archiver.kernel.org>; Tue,  8 Sep 2026 14:01:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WYlKcLGyeTJWaAWkRC2ISXK1HHsUovDEk4nvJ5VshtU=; b=CxNql3U/nC1Hxj
	RCz8T6oVbXh/YGP6VMgkaNw0dw7YN+IMsm9VvigMyIXe2aujhYXfRZgnchfjt7uiAhjlS302+kJr7
	7SSVESEVKePHhbX4YcXZsvEXkcI2MG8cTnnflr1sK3I84eVOAPbQAriMLF9rqbVvUzedqAYlQTWZh
	myoj8v+4iq2GnXrEZZslbvzykvHwItOE5DuyVktbSo8Joi+OOihPdRsonL62dV5i1ly50MzvVsn+g
	mEmvsCQo0an8IL+zARY6gL8xkvJfdxHPFgw0zf+DmF5Jy05W65fzMaBAWbjmG4yhlxTV3SCXcebAc
	OYtmJ+28/biI5ve1jx+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3wOL-00000009Das-30mM;
	Tue, 08 Sep 2026 14:01:41 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3wOJ-00000009Da2-0W0R
	for linux-phy@lists.infradead.org;
	Tue, 08 Sep 2026 14:01:40 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 688CkspN3364060
	for <linux-phy@lists.infradead.org>; Tue, 8 Sep 2026 14:01:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	amqkgHTiF36uk/48XKaaWRtXH0hd/9+8IKYGEUjY5nI=; b=fownFaJhS+Hn6CKK
	/FDzKMZzpM52x0aG+HE5wT7kn9B8rNLmZihFNWxLa1l/PeR34dOA4CSSjMbfIQ39
	Py6eKUlqmOIKKE+XyplEZlQjfbLaUrUcHAfRvbEiHvnjYF1EW13KuUyknqsuRwOC
	sLK4CapHJQIPjTl9vXU3xzyrNfYiyhXEXcO/SzduNkfnP8SXDc7XAjMOQObC5F4x
	PpsWCn/HcdAoyqlgcjemYP2qQ5UIF9f1vdgsy9NK25Pu1T1D5e8ZY8uOT9JE08B7
	+SoPlxdzM5d+l5N87RKXjf4oNFF0UsIxv2paxzRSlHFWa1cn9mDd79+rafrsNO64
	G2IU6A==
Received: from mail-oo1-f69.google.com (mail-oo1-f69.google.com [209.85.161.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gjcv7hw59-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 08 Sep 2026 14:01:38 +0000 (GMT)
Received: by mail-oo1-f69.google.com with SMTP id 006d021491bc7-6b34ad165e3so2594489eaf.2
        for <linux-phy@lists.infradead.org>; Tue, 08 Sep 2026 07:01:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788876097; x=1789480897; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=amqkgHTiF36uk/48XKaaWRtXH0hd/9+8IKYGEUjY5nI=;
        b=Iopl3q20p9YxioiTbnOqbZtAaHe0uWDswmU/1zN8ZRtn60uWsRUt/285i+4b42eFt2
         FmWkDmEk5vk/NuPWRFU9LGALMWDqJUfM2Zuu7vhT9u2bppTaGo0X/hfZRlcCohUG0bOI
         wrM8Mg5yCDAjDtwY4d1jfwW1iH8hOKQhvms9DHV2A4HgrR6mmUw5PsZKolJsaAQfUulT
         skzwB6ZZlhxTEEj5L9GOV+GmhLVjJkr6YNeCPgI37F14IHDlBqU30+LVF4WTUU5z9Q+Z
         dYWtel8h3krS0SH6Q9nppkk8t/pMPQJq0pT2InDTHl78B3kgXmzFz7Gjae7Y2oHgi8SD
         5z1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788876097; x=1789480897;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=amqkgHTiF36uk/48XKaaWRtXH0hd/9+8IKYGEUjY5nI=;
        b=i8CM/Cdg4YtbFRbxJUqYNUdLNxhRlqN5osfCy6t6ZKTaXnH798+JLfbN+ZT6ObrAHf
         IA/7qP+vI7cRMSS6lDC2Cs9+TbpNp2ACGJZu3NcaSj1unh/3YQJj9EUPLFinkj64Fh81
         fLwydNm0Wmc203/6phgdZ7+rldEO8Bg4XtxqtklkEI1aU1RkV9WTUBer/j1ecXw6lFMm
         qks9hkmdghIaiV2SVOwPOVN5xuRdePurXChpCb1n0uOvYsVtBxCr5IPJRjXPrlbVuFJI
         uDFBKuBv9ZAqpz9As5g1b4T30w4OKJTi7yDvj7iVgmNYgY8/oajDaGBgtNssDOe97A47
         pQ0w==
X-Forwarded-Encrypted: i=1; AKwUvBw2enNU+YTn8hP1M9g4sw7O+rLyiKnVMd4l0wA/w8QaHM7LGun+b9kFmTLNVaLOsyqN8DofoRdaUeA=@lists.infradead.org
X-Gm-Message-State: AFuF++l4c9bSZnj5dc/l9EBRLeo2obUk4Dc3JHuJmgbGln5yRNF8TcdM
	yXxIQhvP8aC8T6VLCm57/IS5oEqjmj9HEfLo9nVartNkLBVbqIF4Cb8MZEM3juskUOy4WMrWiRG
	gP0164N0Hkpry1BHcoRuFuuhQwWtEEC9R6R8CY+6QNgG2xtFoAkCIYV22na9wNITIIj3B
X-Gm-Gg: AYBFou1hsboCx1XXk+VvYElNdgUqlDUL1Vr+kXUa6gjrD/zjX89fxWyxDgzX07KWmUg
	HDMAKMFSq2ArjXA02shQ6HN0G6MgCBTHsS48OdyMtkcMS4Pka25keHFF4YQrwBg7RplB2PA9SUR
	gEP6/QO7XvwkN0mXaHzcE9pphSIzP5H/uUxWR9CallFqxuOB4unPFZn6PXvAts1zpfX5z8r7wa5
	FLV3Niel9zNrIKfgA0o1K0URLeaDNa44C8X4hPZecZbrHDWNUNiy6r0P+1sc93Qg5kpELeWZBCD
	d/8HkR2xwmhbFE/q327tFYSNB8EgP7gFa8mdu4+WPWlFYjdb0FArgM71wwq9RKh/Jp/zvwMPKSw
	D0YFfC/X4bS9+8ePU9mknAW8F7BI=
X-Received: by 2002:a05:6820:4c86:b0:6b7:8396:f3d9 with SMTP id 006d021491bc7-6b78396f8c4mr12804761eaf.59.1788876097314;
        Tue, 08 Sep 2026 07:01:37 -0700 (PDT)
X-Received: by 2002:a05:6820:4c86:b0:6b7:8396:f3d9 with SMTP id 006d021491bc7-6b78396f8c4mr12804696eaf.59.1788876096755;
        Tue, 08 Sep 2026 07:01:36 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3339af25062sm57506667eec.16.2026.09.08.07.01.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Sep 2026 07:01:36 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Tue, 08 Sep 2026 19:30:58 +0530
Subject: [PATCH v4 5/9] phy: qualcomm: qmp-combo: Add v8 PCS-level drive
 level tables for Glymur
MIME-Version: 1.0
Message-Id: <20260908-glymur-phy-v3-v4-5-ff22e5150538@oss.qualcomm.com>
References: <20260908-glymur-phy-v3-v4-0-ff22e5150538@oss.qualcomm.com>
In-Reply-To: <20260908-glymur-phy-v3-v4-0-ff22e5150538@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Nabige Aala <nabige.aala@oss.qualcomm.com>
X-Mailer: b4 0.16-dev-d5d98
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788876071; l=3229;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=SZqWfqI8Uaq9Fsg26hs+0rHvzfccTqoPLnB7y5gCqGA=;
 b=pEsSqjkrPwFXoNyHe/+ypMPJijCo6Djb2nbX/7fw8WkLsEDtHXnelec5lf0WYJF3YUKtNebC8
 z6zowx16VRmDnqQ3I62ZnlgwkJClTYgawKitc2YWPeFiCi5410GBnb6
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Authority-Analysis: v=2.4 cv=CMEamxrD c=1 sm=1 tr=0 ts=6aa01542 cx=c_pps
 a=lVi5GcDxkcJcfCmEjVJoaw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=pJ9Jp-POzqCVGtXzzgwA:9 a=QEXdDO2ut3YA:10
 a=rBiNkAWo9uy_4UTK5NWh:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTA4MDE1MSBTYWx0ZWRfX7ahpN2CV4qIv
 ldDCpJeIGdYzn3vgmCimXEXKrAaHWToBBjA2+XqW2c57QRQ64fqP3Xbyc94layw1mrVY85sNbvU
 tBMMyIV8AY+OxqIxcuYO0JjTX+H4wak=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTA4MDE1MSBTYWx0ZWRfX1IPC/3ZybAIR
 z7RPyQ7fMMFcVAgYij296f2LnHKVilG287afdhsbfta/E97TJ0pE1OE0lceNRC+e1A3aSbBI/zX
 kX2gHHu4QCLV5fthRJn45q7acm+hI/nbTLfXelXZPFyH7grfhLK26zdvz7vfTves5OPlsgwWLiQ
 PTQnvOnJI/e03IqmWWbvKKiUJofCDwCAY/nBLekxI0++f4BnlWcy8xY05wVZdZrYv0hLfiGvVCQ
 yMNm3I2IiCPYnRxDaB/c+ISjokCb/0hWuQLUhBwoOOGci1RdGVqDwqSEVRmx+SlpyMF1g+si8cX
 MrFOB/PgXKYnoolSUBbhBFkwbPLDsC2Sz127Qx53j+eC4N1vdRwu/IE1bKKfPx+a2GGS+x2RqPF
 hw5fGGtEpxqUYoJ1rsez87La4NzrhUnPoUSrwLndXEgVKh1+asZs+UJtciudQeRcIJb9WHZ2Vsj
 3jSMubLos0kY9kFo75Q==
X-Proofpoint-ORIG-GUID: LUSrY9ndRjNM-94Bpzq_AsFJk3CRCNfI
X-Proofpoint-GUID: LUSrY9ndRjNM-94Bpzq_AsFJk3CRCNfI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-08_02,2026-09-08_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 clxscore=1015 priorityscore=1501 bulkscore=0
 spamscore=0 suspectscore=0 adultscore=0 malwarescore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609080151
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260908_070139_433252_57D89F52 
X-CRM114-Status: GOOD (  14.31  )
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

Add PCS-level drive level tables for the Glymur (V8) DP PHY:
- qmp_dp_v8_ln_drv_lvl_hbr3_hbr2: LN0/LN1_DRV_LVL settings for HBR3/HBR2
- qmp_dp_v8_ln_drv_lvl_hbr_rbr: LN0/LN1_DRV_LVL settings for HBR/RBR
- qmp_dp_v8_pre_emphasis_hbr_rbr: updated TX_EMP_POST1_LVL values for
 HBR/RBR

Add ln_drv_lvl_hbr_rbr and ln_drv_lvl_hbr3_hbr2 pointer fields to
qmp_phy_cfg to allow per-platform PCS drive level table selection.

Wire the new tables into glymur_usb3dpphy_cfg, replacing the previously
used qmp_dp_v6_pre_emphasis_hbr_rbr with the corrected v8 table.

Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 33 ++++++++++++++++++++++++++++++-
 1 file changed, 32 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 53fc1d1e8494..0ec382aebe2b 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2456,6 +2456,30 @@ static const u8 qmp_dp_v6_pre_emphasis_hbr_rbr[4][4] = {
 	{ 0x22, 0xff, 0xff, 0xff }
 };
 
+/* HBR3 & HBR2: DP2_LN0/LN1_DRV_LVL swing settings (PCS level) */
+static const u8 qmp_dp_v8_ln_drv_lvl_hbr3_hbr2[4][4] = {
+	{ 0x02, 0x12, 0x16, 0x1a },
+	{ 0x09, 0x19, 0x1f, 0xff },
+	{ 0x10, 0x1f, 0xff, 0xff },
+	{ 0x1f, 0xff, 0xff, 0xff }
+};
+
+/* HBR & RBR: DP2_LN0/LN1_DRV_LVL swing settings (PCS level) */
+static const u8 qmp_dp_v8_ln_drv_lvl_hbr_rbr[4][4] = {
+	{ 0x07, 0x0f, 0x16, 0x1f },
+	{ 0x11, 0x1e, 0x1f, 0xff },
+	{ 0x16, 0x1f, 0xff, 0xff },
+	{ 0x1f, 0xff, 0xff, 0xff }
+};
+
+/* HBR & RBR: TX_EMP_POST1_LVL emphasis settings */
+static const u8 qmp_dp_v8_pre_emphasis_hbr_rbr[4][4] = {
+	{ 0x20, 0x2d, 0x34, 0x3b },
+	{ 0x20, 0x2e, 0x35, 0xff },
+	{ 0x20, 0x2e, 0xff, 0xff },
+	{ 0x22, 0xff, 0xff, 0xff }
+};
+
 struct qmp_combo_lane_mapping {
 	unsigned int lanes_count;
 	enum typec_orientation orientation;
@@ -2542,6 +2566,10 @@ struct qmp_phy_cfg {
 	const u8 (*pre_emphasis_hbr_rbr)[4][4];
 	const u8 (*pre_emphasis_hbr3_hbr2)[4][4];
 
+	/* PCS-level drive level tables (v8 / Glymur) */
+	const u8 (*ln_drv_lvl_hbr_rbr)[4][4];
+	const u8 (*ln_drv_lvl_hbr3_hbr2)[4][4];
+
 	/* DP PHY callbacks */
 	int (*configure_dp_clocks)(struct qmp_combo *qmp);
 	int (*configure_dp_phy)(struct qmp_combo *qmp);
@@ -3420,10 +3448,13 @@ static const struct qmp_phy_cfg glymur_usb3dpphy_cfg = {
 	.serdes_tbl_hbr3_num	= ARRAY_SIZE(qmp_v8_dp_serdes_tbl_hbr3),
 
 	.swing_hbr_rbr		= &qmp_dp_v6_voltage_swing_hbr_rbr,
-	.pre_emphasis_hbr_rbr	= &qmp_dp_v6_pre_emphasis_hbr_rbr,
+	.pre_emphasis_hbr_rbr	= &qmp_dp_v8_pre_emphasis_hbr_rbr,
 	.swing_hbr3_hbr2	= &qmp_dp_v5_voltage_swing_hbr3_hbr2,
 	.pre_emphasis_hbr3_hbr2	= &qmp_dp_v5_pre_emphasis_hbr3_hbr2,
 
+	.ln_drv_lvl_hbr_rbr	= &qmp_dp_v8_ln_drv_lvl_hbr_rbr,
+	.ln_drv_lvl_hbr3_hbr2	= &qmp_dp_v8_ln_drv_lvl_hbr3_hbr2,
+
 	.dp_aux_init		= qmp_v8_dp_aux_init,
 	.configure_dp_tx	= qmp_v4_configure_dp_tx,
 	.configure_dp_clocks	= qmp_v8_configure_dp_clocks,

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
