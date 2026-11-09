Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95CFC606A31C
	for <linux-phy@archiver.kernel.org>; Mon,  9 Nov 2026 09:04:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=0aSPit0M;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=cFz8muvN;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=Xmd3IwuF
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=aBCDi3lQ/2Mx6koiBBIBXECHmO6OuF1W40OdMj1gHfc=; b=0aSPit0MIyTcYjLxhWYd3MbK6Q
	z0HiSymIR888bUNb2b+RnUjqab6PoDZL+F0LosKspoaJgkvPuIfpMkDkEz6TF7zGpbrrctk1LJJCT
	6muBGrmLkRMYsqtD8V0SaxHzoD00/lD8QSqGI81npREWSC3fV/b/jFg6iOh4QCdWJMoOI0ZMD8hbx
	aYJVcDtWX3gsVxkmMFaMRKAYZp/b+CL6BLrW+d1USIq1l9Nvc+FaY8KpiCRsfMvA/heqsy2bpl/dL
	PVLoUGQj7MSI3nRJ2wAv81aAYUdLfr96guy0stGkCEjssuA5/LsbpBQVSyJjvfmNK7YQAEaJRtwWp
	EvsE6rrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQLJD-00000000ABD-0pT8;
	Mon, 09 Nov 2026 09:04:59 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQLJA-00000000AAd-2vg9
	for linux-phy@lists.infradead.org;
	Mon, 09 Nov 2026 09:04:58 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A96A00B3611057
	for <linux-phy@lists.infradead.org>; Mon, 9 Nov 2026 09:04:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=S2OdxKrYsg8o0XxGHeaf2oT/9qajxW5QJ43
	7FyTV3l0=; b=cFz8muvNA/B6DpyEuDlwZ47J20kBLH8Bm/XPdfvUHVtZeYSGa4O
	To5Qx6grDITIuiG3uwQHx8LCroio2gqSCYf9lIiGYxZAwag2qxCq+n20PZW+Ef+F
	Q3mxwp/NZdFuXAX8MaDqX8lamME/eMBZcI70Z4VUfv2+rEEOK0CbSa+d59++k2KA
	rSLQnPsst1K0bbJRm0+l1uvxgq41g3qTSz3uzF2BUK5487IUJ2mGyzpFplnE+cax
	ESbDMIBRS5LFrsj12Yv74WZTBnOsrgxROsEUnw7IL5TlbrauUhdhaiELSk9z1k8i
	DpDMUtUrJtlQRzfyf4v9sjPMcp+z9sY41Lw==
Received: from mail-dl1-f70.google.com (mail-dl1-f70.google.com [74.125.82.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hssbnx01t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 09 Nov 2026 09:04:55 +0000 (GMT)
Received: by mail-dl1-f70.google.com with SMTP id a92af1059eb24-139b62317d0so1452824c88.0
        for <linux-phy@lists.infradead.org>; Mon, 09 Nov 2026 01:04:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794215094; x=1794819894; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=S2OdxKrYsg8o0XxGHeaf2oT/9qajxW5QJ437FyTV3l0=;
        b=Xmd3IwuFCHhMz7VwSpNrSxTJyy89SzizyO26WOUHUQFABWCb6zKL+gSTMdKAFifa9t
         PTj9JWl9AtU/u2a/fF/I4KXQbOhTKZBQ/USWm8xv4UEJpkhKcod+BSwyTMQxUHrivs8S
         lP7k+RbVQF/c7HYxW1uM7ewF0xa7m1XVdQ/Bel6H7GJutkWPRayS2GXuBgSlc8s+TzKt
         iWAzGGAhmfMUgI1fqTXcUD1RE2xUeqc+qUqNqBEWUMxCoAufyPU/PzFPqMZufLlT4jo2
         Z+1OJ/aV3u61w3cT5eOnbNvSRcrIhZU6TyXTlHs/oe4Rtip+0u8NGDOc4edG3vsfwuGo
         rvyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794215094; x=1794819894;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=S2OdxKrYsg8o0XxGHeaf2oT/9qajxW5QJ437FyTV3l0=;
        b=ICNlGi5sK2SPO/dDv7tdKG07QC998+EpQDQuznqQuITFxREjrLCcRNIUoUB2I5p8Co
         s9LwlPbIDofG5LblI0YzngEx4hgLUPw//CFrc2QSRH5/fWLJYl4RnaBXnUPjwbVk0ZW5
         LMc5TSOMtkcL2HfSNnywywTZKIJKLcmPAUvLyC0KnPgvNuiTyDTz2yKzVVjjILv1fBYE
         jD45ewddpGDPloC7wQelVfV2sQmJR/VVI7h70vQYU0x1Is/p4lQ3Gil6leSD+nWl1YAF
         lFL1v6Adz0xRJeTcwdp7/D/dJi2teUXBvauGe6KWtQ6Slx6OmbhoW/YYtRlZLFUxF58L
         xjqQ==
X-Forwarded-Encrypted: i=1; AL+hErHgKqM9fyTxt0+BbQDRJvjgnLxN9Nd4fJV0O8Hosh5vkz9iBJQEpjuM5YcxGyK+Kw3nXGvgFJxJH+U=@lists.infradead.org
X-Gm-Message-State: APuU4Z+rxiCFLzXW2Peq1ATndHnIp0VlkG7nxvOzqQbJ+bCyBZ0C5cWg
	YJRgok/RVzpjHmr9WJwoWKk/Dl2wWriEk9z1DG+uVgGofr8dbZF0HH4kD33EGDHdAt7HQnZHAdx
	AWD96yRKtqCEMKY3EPcoH5nnuiyQgTKXCg/TEnvu4qEB7ObZH91grcoV58vwCAxEMLuKm
X-Gm-Gg: AYBFou1snzIexs8KkCS4f4TW9ZqsBipm1XS2DKI+JihXg9GoeeTe48DLDvmwAnRph+Q
	AJIIgUVJpGolujAZ3rQkF0L9T2QzSNjhiv+YpbmwUILS9Jja84OsPqITweHZwwG92g2Ptfd0qnL
	PM0lpximKY0BQuFJZ+Pk3dClttUyp5XU+i9nH21838ZXO2wF+j41i85gxQyFFKUWOFTW1kif31D
	YZqBW4c2uUHAAAWM1w2Ne2HumS4Uo9QuZfje19JVAFelvUgX24jTeXEP+oOYl8OmSmecZUJ3snw
	Yo9+beqNMm0MrbmgSUyVE9ULYzUyigge9dlNSADYlj3ounimhdacPqPpXZNvlcFV4vSLpKw0jr1
	XuLKblUvgbWF2lxjH8NFDHPpmXEkRsUzB4jt7KRINRorbl3fKoerbKiH9/fIgkdzcqIO74YEV1c
	DM8SXhUW7E7nJUEIKp6Ms3yV/MhTtA6j+fjd4K
X-Received: by 2002:a05:701b:455a:20b0:1b2:60ab:1e9d with SMTP id a92af1059eb24-1b39ff1912fmr5413123c88.37.1794215094069;
        Mon, 09 Nov 2026 01:04:54 -0800 (PST)
X-Received: by 2002:a05:701b:455a:20b0:1b2:60ab:1e9d with SMTP id a92af1059eb24-1b39ff1912fmr5413089c88.37.1794215093364;
        Mon, 09 Nov 2026 01:04:53 -0800 (PST)
Received: from hu-ggarmidi-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1b3755eb6efsm14459279c88.4.2026.11.09.01.04.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Nov 2026 01:04:53 -0800 (PST)
From: Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>
To: vkoul@kernel.org
Cc: neil.armstrong@linaro.org, mani@kernel.org, konrad.dybcio@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com, abelvesa@kernel.org,
        yongxing.mou@oss.qualcomm.com, bjorn.andersson@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, sibi.sankar@oss.qualcomm.com,
        rajendra.nayak@oss.qualcomm.com,
        Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>
Subject: [PATCH] phy: qcom: edp: Fix missing lane drive level programming on Glymur
Date: Mon,  9 Nov 2026 01:04:49 -0800
Message-Id: <20261109090449.410840-1-gopikrishna.garmidi@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Proofpoint-GUID: gy80NEk4tzuaCvOjnRmK19ZuYzVVoqgr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTA5MDAzNSBTYWx0ZWRfX3dd6/1PuCyQW
 laMTAmptvFQQYkY8gIz0hSxr2xwjW01CY0EYvYTbJ+1NhHgty2UXnS+5w2xx2a2WMlu7ZbS6IEv
 a6v50E7LxKc8N2D7J4ET79L+RWtn/0kQknoWThe9LIbB/Jh+dc6mHwru3ld+l8oK7+kSxOQF3xm
 YcDwdn2FSdtn9IFoJ5BKSTFkYULoKXzQkKWstlbjUuxEI1gZfiSieKqzXhK3kZjmiZwav3MHzw+
 WV4URGhcHZYMjA7xCouW0Q7uLmrYKa5NxQUjstckpfDgSRhyt7EkCiwfpn2vYHAEnhg3vHpUqtj
 MavuLLLUn7Wum8u7C2Cd925QSR4a1FdgaxcNtSy7lu3GxIS6JSWfSYbiOXwZ0R6wrTdiKgEg7sI
 0w0d/63PUuEKq9LUr7Nyv/gEX3qiQnLv/HmOvojqe132N7UWT3oBALCrwqyhBIiiB8AD+CruLhG
 T3yOERuKUUbqAdMhmGA==
X-Proofpoint-ORIG-GUID: gy80NEk4tzuaCvOjnRmK19ZuYzVVoqgr
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTA5MDAzNSBTYWx0ZWRfX0aJi3RvPUuG0
 xkXcwOMKUAPFfOF2WkZymcpVOnLuuwfZPGmZykoHlXylZPwB+Q5J7a+dblTTfmC3+vIaFiyv3ZG
 aEuK1mSFiNeV8QY2U0mxZ0cKdmnVvcY=
X-Authority-Analysis: v=2.4 cv=JtBkP84C c=1 sm=1 tr=0 ts=6af18cb7 cx=c_pps
 a=SvEPeNj+VMjHSW//kvnxuw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=k0f5IhIVsTSicQYmG90A:9 a=Kq8ClHjjuc5pcCNDwlU0:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-09_03,2026-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 suspectscore=0 clxscore=1011 lowpriorityscore=0
 impostorscore=0 phishscore=0 adultscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611090035
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261109_010456_877792_175151E6 
X-CRM114-Status: GOOD (  14.20  )
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
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Besides the per-TX TX_DRV_LVL, the Glymur eDP PHY has LN0_DRV_LVL and
LN1_DRV_LVL registers in its PCS block. The driver never programs them,
so they stay at their reset value of 0.

This goes unnoticed at HBR and below, but at HBR2 link training
completes and the sink then reports a high symbol error count on three
of the four lanes, leaving the panel blank.

Initialize both registers as documented in the programming guide and
update them together with TX_DRV_LVL whenever the voltage swing changes.

Tested on the Microsoft Surface Laptop 8th Edition 13.8" with 4-lane
HBR2.

Fixes: add66a6673bc ("phy: qcom: edp: Add Glymur platform support")
Assisted-by: LLM
Signed-off-by: Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>
---
This depends on the Glymur eDP PHY programming sequence series:
https://lore.kernel.org/linux-arm-msm/20260622-glymur-edp-phy-v1-0-814b45089ac9@oss.qualcomm.com/
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index c5d1fa0ae6cb..ca17fd3b3c57 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -48,6 +48,8 @@
 #define DP_PHY_LFPS_CYC                         0x00d8
 #define DP_PHY_AUXLESS_SETUP_CYC                0x00dc
 #define DP_PHY_AUXLESS_SILENCE_CYC              0x00e0
+#define DP_PHY_LN0_DRV_LVL                      0x00e4
+#define DP_PHY_LN1_DRV_LVL                      0x00e8
 #define DP_PHY_LDO_CFG                          0x00f0
 
 #define DP_PHY_STATUS                           0x00e0
@@ -112,6 +114,7 @@ struct phy_ver_ops {
 
 struct qcom_edp_phy_cfg {
 	bool is_edp;
+	bool has_ln_drv_lvl;
 	const u8 *aux_cfg;
 	const u8 *vco_div_cfg;
 	const struct qcom_edp_swing_pre_emph_cfg *dp_swing_pre_emph_cfg;
@@ -464,6 +467,11 @@ static int qcom_edp_set_voltages(struct qcom_edp *edp, const struct phy_configur
 	writel(swing, edp->tx1 + TXn_TX_DRV_LVL);
 	writel(emph, edp->tx1 + TXn_TX_EMP_POST1_LVL);
 
+	if (edp->cfg->has_ln_drv_lvl) {
+		writel(swing, edp->edp + DP_PHY_LN0_DRV_LVL);
+		writel(swing, edp->edp + DP_PHY_LN1_DRV_LVL);
+	}
+
 	return 0;
 }
 
@@ -620,6 +628,8 @@ static int qcom_edp_configure_pcs_v8(const struct qcom_edp *edp)
 
 	writel(edp->is_edp ? 0x03 : 0x00, edp->edp + DP_PHY_LDO_CFG);
 	writel(0x0f, edp->edp + DP_PHY_CFG_1);
+	writel(0x12, edp->edp + DP_PHY_LN0_DRV_LVL);
+	writel(0x12, edp->edp + DP_PHY_LN1_DRV_LVL);
 	writel(0x00, edp->edp + DP_PHY_AUXLESS_CFG1);
 	writel(auxless_setup_cyc, edp->edp + DP_PHY_AUXLESS_SETUP_CYC);
 	writel(auxless_silence_cyc, edp->edp + DP_PHY_AUXLESS_SILENCE_CYC);
@@ -1377,6 +1387,7 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v8 = {
 };
 
 static struct qcom_edp_phy_cfg glymur_phy_cfg = {
+	.has_ln_drv_lvl = true,
 	.aux_cfg = edp_phy_aux_cfg_v8,
 	.vco_div_cfg = edp_phy_vco_div_cfg_v8,
 	.dp_swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg_v8,
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
