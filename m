Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8181A60A2603
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 10:39:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=dvijB1Dh;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=HLi+4NaD;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=JKGHT30o
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=FYzUazsKWblv920MwoSBOu5TAwWkEW+lnB4VggbeN+8=; b=dvijB1Dhgi0U4MD8UfnRuePiyZ
	inGW6VZCEWCVWm7gS3vqTRW/U0QvL+0VSMK2MiQk8fYB5HiRH5kUk/65N3tr0kw7KAjM+eltviMyp
	LxyilIqkMpsiDTWpXdAS94RDZ5m9+02OuxWYYh5Uk7Tt+gefEL7bVwRXfhMwGUuEsgjQ059QtMEQX
	68udPsLpilqk8w64w6Q9z6TPD6YdE8lvEcwBQmszngvQyeyO+MudiBr1+xyI8FdfcGg4zOMUnYGrB
	ryGpLCvSPy5+gMgGBVrYOiK2uJqrgTFxXKotEWBA9keyEPvCgM6cCxABcDk8TR2zce/eZumDKca2x
	YIOgUL1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM13d-00000006m3B-0jBF;
	Wed, 28 Oct 2026 10:39:01 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM13a-00000006lzJ-2wtJ
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 10:38:59 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69S8JwAG3892461
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 10:38:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wUQTjkDzyiR26kHqxoaWKUzMBK2BQSYa4Q6O+asJ7Zg=; b=HLi+4NaDhre4kezv
	guy4gMMrd1Yzah2t+qt9eswiqjiGzYVaqEKG2TN7DRZfLHiH3LR3XWJnJOWhTCvn
	LhHDdX5xZwE4Zl5mM7SvUMM3DsTaPwe8q+PG5o9oYf5MMCXXL8cfsuudddXHCb0N
	Ahb+ajDoJrDBZ0Dp6flXhCaX+Fp5B3MLGrU7aLtjdk45pUjnn8w6moIvE9xJZ4il
	EThM4QkKGykvRjbVxwGRBZz23A0VzNOXjrBBqxc1LBOTg+m34403baZWwmfr1lCV
	D8jTqnFLWPlSEiHT5KvzHLVy0Om5R9ZymprO/ntz4HeTXTqqxW2QrkXr0gNqGKSc
	TcrqtQ==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hk6f92051-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 10:38:58 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-359b81ad4e8so1120066eec.0
        for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 03:38:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793183937; x=1793788737; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=wUQTjkDzyiR26kHqxoaWKUzMBK2BQSYa4Q6O+asJ7Zg=;
        b=JKGHT30oEQM4UY3QWfp+EWmHTY2M0o+rYS8+FTYm8nq1dDi/puCpmdKQkqudku68gh
         Os493MZToBc1ddPsMLFllGXaVABQAXX+YigNz7YgbqvcY/fPgwdOPJy4FLk+efc54ZsA
         s9v8oaKxP927bUTRV2s0J3Rxy0Xp3KMwJBRcPi34gF747l9ZhA0TfRFHzw3uda8uxnnO
         FLMFkBOCW8zILvjtzJmnB4BIWy8N77uj/8zcgm/EWaFkwGK+feusPsCnXGWC7hZGsom5
         36aA7dwMx6/qeWfVcWRnjuT6eMnMtj7axvZoWXPs7lbPpFF0IRJbxVtw7MuJV1W8lbkM
         MaPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793183937; x=1793788737;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=wUQTjkDzyiR26kHqxoaWKUzMBK2BQSYa4Q6O+asJ7Zg=;
        b=WCYGU4+piFfHBYSzjroJrHIAHb+6Oi+hHgIY8FveKi53PPzH+abm9+rHAgsmOcdzP3
         C/uze3w4nuIv9Dm5SU6QW94A9OoVG38/X0ka/o+6slnZIwf1uRun+mY3n5EwaB8532HZ
         N1q7IIiFNbrhL4p2gXunSYNcoOMNPo8Ka4cooTVelonfEx4v6UE+jT7aTINCRpTb2Oix
         ggotiOi/QRBRfzCI02whUP9PWUREO55xViCJHBJpbKzWG9vrrF9Tw0npuzt/pT4zDP06
         Rj/0v9fgSJynLvcyh5RWhN3NKLa+bxPrO52PW/ifhesOguUVmtctpK6Fb2aborVmtWvb
         c+Iw==
X-Forwarded-Encrypted: i=1; AKwUvBzf8BBj+LfgOIXEHtAXHDrV4UVEjVHn1zZdIUjSsBvKjj+FkWWuyVkYtDm/TzJKgjlEdclnTB8Qbug=@lists.infradead.org
X-Gm-Message-State: AFq9FYJojQiIaZkZcMyaHk6j43dHCtQlV8aASs9/g2qQ1y1SBgisyoWY
	Xl7FfaLeQWSmD1SVoDdRixI4ywwLdaN3S/DdO8YOYJKdllXwcd/TpXev2YQqeviqFBW1h8JGzW8
	fnOu4iUGSI0OePfu26XzFMXNbZ6ouXTyQdUvNCbvlWh4xsekbJEzSm0A+VLtj7AqlMii2
X-Gm-Gg: AYBFou1RKoAOxWcBRi9oIakmHsXQkNGNymc29i5HTlSfUpMz7lXdLJ6dsKaIgbzhmK/
	kJ+FTYJiO5VzPovsBPXWQzDuyg76HaJCRcr7JRYAk8ldhBEH9/xlZBT+YHC+NJ0x0uf8rqNB3X7
	FXPluYh9K0IlS2oKEtYLsrHS6tQPmEASZ+rfe/MitGljg25Z3Ite7XpBIn7dZ/YJ/Ou7Eooyfhd
	06StEJMZxGI3CLE4IIwpRmRpit+n5+NQ/b2GyEvRV4kYW0DohpVxN8zcE6aLdM4KBJZ+kNVOLfx
	gOaq6537//NVLjiTHLn8lNzOoqf7BD9tMslQ4iiTGgELFOM3SN6F1RV6s5q/WtBfqVSjBZhcXNC
	tUddb9UF8jKrMWC+FrhMAntr+enAQuh+hzqiFgu2IJZc7t96fLduocwDtLzqxfqvFTdg9tj2GIF
	Y=
X-Received: by 2002:a05:701b:4552:20b0:176:2095:1ac4 with SMTP id a92af1059eb24-1a6ce01d7a7mr2588363c88.18.1793183937018;
        Wed, 28 Oct 2026 03:38:57 -0700 (PDT)
X-Received: by 2002:a05:701b:4552:20b0:176:2095:1ac4 with SMTP id a92af1059eb24-1a6ce01d7a7mr2588322c88.18.1793183936324;
        Wed, 28 Oct 2026 03:38:56 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1a75e5c6d4fsm8340186c88.14.2026.10.28.03.38.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2026 03:38:55 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Wed, 28 Oct 2026 16:08:01 +0530
Subject: [PATCH v6 05/11] phy: qualcomm: qmp-combo: Add hardware-specific
 dp_aux_cfg2 and dp_phy_cfg1 fields
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261028-glymur-phy-v3-v6-5-1f1d2e565a66@oss.qualcomm.com>
References: <20261028-glymur-phy-v3-v6-0-1f1d2e565a66@oss.qualcomm.com>
In-Reply-To: <20261028-glymur-phy-v3-v6-0-1f1d2e565a66@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Bjorn Andersson <quic_bjorande@quicinc.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Nabige Aala <nabige.aala@oss.qualcomm.com>,
        Jeff Roach <jeff.roach0@gmail.com>, Luke Macken <luke@phorex.org>
X-Mailer: b4 0.16-dev-d5d98
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793183900; l=6731;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=rMsGkUOi3jW+Cmzrcyr2oF4G5Pju1fC9P/6RDgMrr7M=;
 b=NS/n33FFzjoFjq93E5+emMcssjue2oUSgMEjfJW9h61gY6Zx50LedrOacqmg/0ngni7EG3h32
 fl7l6m48L7ZDeSea5sxfPH57XyEo+FOZZJDHHJ6gZDqQdlHWyQgNysD
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Authority-Analysis: v=2.4 cv=frhJ914f c=1 sm=1 tr=0 ts=6ae1d0c2 cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=pGLkceISAAAA:8 a=mO8_gwkcAAAA:8 a=AZ7O3MIRyL_cLquugRgA:9
 a=QEXdDO2ut3YA:10 a=bBxd6f-gb0O0v-kibOvt:22 a=InTEqNb8lIr1xazlwGwc:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI4MDA0MiBTYWx0ZWRfX9hQj09cI9BDf
 8N9qwrxsTLbgC2XzE5v53vrZmKGWQRS4BRnEVEjYTJ/b3PKFDilRg8AlyQhvNoLB5h70AC4lGMi
 HzQ4SWjunyWldjAcig0jKGUQVxJcmyw=
X-Proofpoint-GUID: BjNn_xZs9wyx3kkrQzRVlD00g-Pa0W0H
X-Proofpoint-ORIG-GUID: BjNn_xZs9wyx3kkrQzRVlD00g-Pa0W0H
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI4MDA0MiBTYWx0ZWRfX/VxDivjOQZV1
 U0OzbOGc1SXf4PffPjD0XxmSg+mneDiIrdmTSs7FKcCuj/hnez/NjvUiZJHhHMhv5Mmo3ADMbxn
 OiZ41+4l/xUIvJGWcDZbVTwRIKv6sfXWU2HYgAs/i7gy4RHheO82N5h1NVLFjiElUcq1ygLOK0+
 t1Km8Etd4i+5wlVwnrBfjYcB50m6QF9PoNNZVZS225wEZAO7K27lZrTwww7dk3KkaW3Exb4nowG
 YCbXa3S/H916PLiQmBrZE7UGJJuKvqV/Ahqf6KLWnw6UU13CI856Q+m0w+SK/7jHUgUjwx+pZe1
 JQSXm3LPqG8mPw3UfQfpkEnSEvs9j2jf6sgBQuRYv0Tr1Gk4zvcvuQkHI/2UrQhc6/bZOlw3Azt
 VxfAZDTa3HSuzKLTyHVX2gn3UU1bbN+tfRxelgnWJA43+pkdrufpU6dHQ5NU3U6nWWNG1Nl0rLl
 k8OOFL9KyXdqGS7JHHA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-28_03,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 suspectscore=0 adultscore=0 phishscore=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610280042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_033858_759567_1A9F367A 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-12.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,UNWANTED_LANGUAGE_BODY,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>

Add dp_aux_cfg2 and dp_phy_cfg1 fields to qmp_phy_cfg to allow
hardware-specific DP PHY register values to be specified per-platform
rather than hardcoded in the configure functions.

Define named constants QSERDES_DP_PHY_AUX_CFG2_V456/V8 and
QSERDES_DP_PHY_CFG1_V456/V8 for better readability and maintainability.

Populate the new fields in all existing DP PHY cfg structures:
- V456-based platforms (sar2130p, sc8180x, sc8280xp, x1e80100, sm8250,
  sm8350, sm8475, sm8550, sm8650, sm8750) use V456 constants
- Glymur (V8) uses V8 constants

Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
Tested-by: Jeff Roach <jeff.roach0@gmail.com> # HP OmniBook X 16 (Mahua)
Tested-by: Luke Macken <luke@phorex.org>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 37 ++++++++++++++++++++++++++++++-
 1 file changed, 36 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 062ee4397171..2a4cc45d6daa 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2500,6 +2500,14 @@ static const struct qmp_combo_lane_mapping dp_data_lanes[] = {
 
 struct qmp_combo;
 
+/* DP PHY AUX_CFG2 register values for different hardware versions */
+#define QSERDES_DP_PHY_AUX_CFG2_V456		0xa4
+#define QSERDES_DP_PHY_AUX_CFG2_V8		0x06
+
+/* DP PHY CFG_1 register values for different hardware versions */
+#define QSERDES_DP_PHY_CFG1_V456		0x0f
+#define QSERDES_DP_PHY_CFG1_V8			0x2f
+
 struct qmp_combo_offsets {
 	u16 com;
 	u16 txa;
@@ -2565,6 +2573,12 @@ struct qmp_phy_cfg {
 	int (*calibrate_dp_phy)(struct qmp_combo *qmp);
 	void (*dp_aux_init)(struct qmp_combo *qmp);
 
+	/* DP PHY AUX_CFG2 register value (hardware-specific) */
+	unsigned int dp_aux_cfg2;
+
+	/* DP PHY CFG_1 register value (hardware-specific) */
+	unsigned int dp_phy_cfg1;
+
 	/* Set if DP mode configuration should ignore TypeC orientation */
 	bool dp_mode_ignore_reverse;
 
@@ -2820,6 +2834,8 @@ static const struct qmp_phy_cfg sar2130p_usb3dpphy_cfg = {
 	.configure_dp_tx	= qmp_v4_configure_dp_tx,
 	.configure_dp_clocks	= qmp_v3_configure_dp_clocks,
 	.configure_dp_phy	= qmp_v4_configure_dp_phy,
+	.dp_aux_cfg2		= QSERDES_DP_PHY_AUX_CFG2_V456,
+	.dp_phy_cfg1		= QSERDES_DP_PHY_CFG1_V456,
 
 	.regs			= qmp_v6_usb3phy_regs_layout,
 	.reset_list		= msm8996_usb3phy_reset_l,
@@ -2956,6 +2972,8 @@ static const struct qmp_phy_cfg sc8180x_usb3dpphy_cfg = {
 	.configure_dp_tx	= qmp_v4_configure_dp_tx,
 	.configure_dp_clocks	= qmp_v3_configure_dp_clocks,
 	.configure_dp_phy	= qmp_v4_configure_dp_phy,
+	.dp_aux_cfg2		= QSERDES_DP_PHY_AUX_CFG2_V456,
+	.dp_phy_cfg1		= QSERDES_DP_PHY_CFG1_V456,
 
 	.reset_list		= msm8996_usb3phy_reset_l,
 	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
@@ -3002,6 +3020,8 @@ static const struct qmp_phy_cfg sc8280xp_usb43dpphy_cfg = {
 	.configure_dp_tx	= qmp_v4_configure_dp_tx,
 	.configure_dp_clocks	= qmp_v3_configure_dp_clocks,
 	.configure_dp_phy	= qmp_v4_configure_dp_phy,
+	.dp_aux_cfg2		= QSERDES_DP_PHY_AUX_CFG2_V456,
+	.dp_phy_cfg1		= QSERDES_DP_PHY_CFG1_V456,
 
 	.reset_list		= msm8996_usb3phy_reset_l,
 	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
@@ -3047,6 +3067,8 @@ static const struct qmp_phy_cfg x1e80100_usb3dpphy_cfg = {
 	.configure_dp_tx	= qmp_v4_configure_dp_tx,
 	.configure_dp_clocks	= qmp_v3_configure_dp_clocks,
 	.configure_dp_phy	= qmp_v4_configure_dp_phy,
+	.dp_aux_cfg2		= QSERDES_DP_PHY_AUX_CFG2_V456,
+	.dp_phy_cfg1		= QSERDES_DP_PHY_CFG1_V456,
 
 	.reset_list		= msm8996_usb3phy_reset_l,
 	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
@@ -3156,6 +3178,8 @@ static const struct qmp_phy_cfg sm8250_usb3dpphy_cfg = {
 	.configure_dp_tx	= qmp_v4_configure_dp_tx,
 	.configure_dp_clocks	= qmp_v3_configure_dp_clocks,
 	.configure_dp_phy	= qmp_v4_configure_dp_phy,
+	.dp_aux_cfg2		= QSERDES_DP_PHY_AUX_CFG2_V456,
+	.dp_phy_cfg1		= QSERDES_DP_PHY_CFG1_V456,
 
 	.reset_list		= msm8996_usb3phy_reset_l,
 	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
@@ -3204,6 +3228,8 @@ static const struct qmp_phy_cfg sm8350_usb3dpphy_cfg = {
 	.configure_dp_tx	= qmp_v4_configure_dp_tx,
 	.configure_dp_clocks	= qmp_v3_configure_dp_clocks,
 	.configure_dp_phy	= qmp_v4_configure_dp_phy,
+	.dp_aux_cfg2		= QSERDES_DP_PHY_AUX_CFG2_V456,
+	.dp_phy_cfg1		= QSERDES_DP_PHY_CFG1_V456,
 
 	.reset_list		= msm8996_usb3phy_reset_l,
 	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
@@ -3251,6 +3277,8 @@ static const struct qmp_phy_cfg sm8475_usb3dpphy_cfg = {
 	.configure_dp_tx	= qmp_v4_configure_dp_tx,
 	.configure_dp_clocks	= qmp_v3_configure_dp_clocks,
 	.configure_dp_phy	= qmp_v4_configure_dp_phy,
+	.dp_aux_cfg2		= QSERDES_DP_PHY_AUX_CFG2_V456,
+	.dp_phy_cfg1		= QSERDES_DP_PHY_CFG1_V456,
 
 	.regs			= qmp_v6_usb3phy_regs_layout,
 	.reset_list		= msm8996_usb3phy_reset_l,
@@ -3296,6 +3324,8 @@ static const struct qmp_phy_cfg sm8550_usb3dpphy_cfg = {
 	.configure_dp_tx	= qmp_v4_configure_dp_tx,
 	.configure_dp_clocks	= qmp_v3_configure_dp_clocks,
 	.configure_dp_phy	= qmp_v4_configure_dp_phy,
+	.dp_aux_cfg2		= QSERDES_DP_PHY_AUX_CFG2_V456,
+	.dp_phy_cfg1		= QSERDES_DP_PHY_CFG1_V456,
 
 	.regs			= qmp_v6_usb3phy_regs_layout,
 	.reset_list		= msm8996_usb3phy_reset_l,
@@ -3341,6 +3371,8 @@ static const struct qmp_phy_cfg sm8650_usb3dpphy_cfg = {
 	.configure_dp_tx	= qmp_v4_configure_dp_tx,
 	.configure_dp_clocks	= qmp_v3_configure_dp_clocks,
 	.configure_dp_phy	= qmp_v4_configure_dp_phy,
+	.dp_aux_cfg2		= QSERDES_DP_PHY_AUX_CFG2_V456,
+	.dp_phy_cfg1		= QSERDES_DP_PHY_CFG1_V456,
 
 	.regs			= qmp_v6_usb3phy_regs_layout,
 	.reset_list		= msm8996_usb3phy_reset_l,
@@ -3386,6 +3418,8 @@ static const struct qmp_phy_cfg sm8750_usb3dpphy_cfg = {
 	.configure_dp_tx	= qmp_v4_configure_dp_tx,
 	.configure_dp_clocks	= qmp_v3_configure_dp_clocks,
 	.configure_dp_phy	= qmp_v4_configure_dp_phy,
+	.dp_aux_cfg2		= QSERDES_DP_PHY_AUX_CFG2_V456,
+	.dp_phy_cfg1		= QSERDES_DP_PHY_CFG1_V456,
 
 	.regs			= qmp_v8_usb3phy_regs_layout,
 	.reset_list		= msm8996_usb3phy_reset_l,
@@ -3431,7 +3465,8 @@ static const struct qmp_phy_cfg glymur_usb3dpphy_cfg = {
 	.configure_dp_tx	= qmp_v4_configure_dp_tx,
 	.configure_dp_clocks	= qmp_v8_configure_dp_clocks,
 	.configure_dp_phy	= qmp_v8_configure_dp_phy,
-
+	.dp_aux_cfg2		= QSERDES_DP_PHY_AUX_CFG2_V8,
+	.dp_phy_cfg1		= QSERDES_DP_PHY_CFG1_V8,
 	.dp_mode_ignore_reverse	= true,
 
 	.regs			= qmp_v8_n3_usb43dpphy_regs_layout,

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
