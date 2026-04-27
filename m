Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F814FF8850
	for <linux-phy@archiver.kernel.org>; Mon, 27 Apr 2026 06:35:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sx+A3hjbTpNBE7NVo9H7AM3txoAFa3+zIw+/vHGhSP4=; b=f1iOysz79H8MBn
	C8JnBdWQofpLX9USotMOsJMWEP20X3qWhsotGxIguM7/6+mb38sciyYNUfutQohPphc5AH0KWBAYl
	qm8icYaUlJu5GkBS80BtWqgNAjs/z9ZT+nVt64HO5aI9NvHBJ5FOJBiV0yO4g8/YXbf7HTDGx5TUJ
	9EoZm/lpFi1hBJz+swCYyA+4ukA2DR3kHKhVNpHrDvDs9KrGSwOmsg/Pvbs1zbu2owMPwozmaSlKc
	eTHvFSza7HAOGJY4Zcv8Gxk9ckk1ALCFFCovWWI7xTiKTwoCiWFs0W/nBU95Yn8+FXNEPv4S2awmC
	fIUAz6H2hUGcm0FlvJvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHFZE-0000000GH2v-0ez7;
	Mon, 27 Apr 2026 06:35:40 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHFZB-0000000GH2K-1q9K
	for linux-phy@lists.infradead.org;
	Mon, 27 Apr 2026 06:35:38 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63QNgrVv2540636
	for <linux-phy@lists.infradead.org>; Mon, 27 Apr 2026 06:35:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	68zN49TtAvswBkOR/vsRM9+htKxL4H2WIkv6U0YNdLw=; b=X9v9KZBp0iKSdQmi
	pdGNeg+qchzhLSd8uCWXvUl04Eff5PJXlO4w6xl7kgHXBEoQNq5UeWCkGwNIHS0l
	ZfjXWPB4hgKMzyNoRRc2PDVnQn08D5uDiDDVkelcUSwXVCOoOcu3n4UpPBqp+thY
	U04qUL91176YmrN71UbLs6L+f107ehwA3JLq1b6JxiZp+t25PLhbKAXU7YOTji1U
	6dfcPD/5DiEQLC4kFiWDr8FroAQLn4DEc/dQuhmd4I4OD0Fk7s0xzRCgoEpt6D77
	eIX+wMFyZr4UQmnQh/uxOqNsoz/cqMlUa4Qkc5TBT302s2zbvl4KW8rmZIMDRLQV
	NgpP/A==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4drnmr4pw6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 27 Apr 2026 06:35:36 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8d3ea68b9cdso1902009585a.3
        for <linux-phy@lists.infradead.org>; Sun, 26 Apr 2026 23:35:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777271735; x=1777876535; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=68zN49TtAvswBkOR/vsRM9+htKxL4H2WIkv6U0YNdLw=;
        b=CVqMZiEnGhaaC6/EqNMJBopwnR4ZYFgN1xYpWGuZ18+BDKQEXedmEJdCLSsSdSw/5O
         brSDVOo1gjy/tGC9yJ41RdY6SMUpu98QACaCFTzeH1ZKfJrNDjqwfnahloIqKBWmEUZm
         daNFsVuQZgRlbwa4pHwoBv+Vc1/pyXIxE0V7u66CYOLmpDUmmIWDQ2LOI6YPhG/tIlGd
         KF98G6DHPCIQ7C1N2esknEYWcyFLRf6e6kA1j5ebqpnZsAFWl06hdclCJNmPdLVYZA7Y
         mV8dwuwkhOl5P8ENmSok6CJ/rBJgBiySU/lr7E36K8zgczBl/pjpinSJ3C/coC17MFxU
         U5JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777271735; x=1777876535;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=68zN49TtAvswBkOR/vsRM9+htKxL4H2WIkv6U0YNdLw=;
        b=cY7qfLB7bZjdJ0owzpGr5wdqDehbO/7XsuKADU8T7aMxzurmm/6/szvQhLWnAu7go9
         vW5WxdYJApOYzbsqaIJMcmNUHMwrxprD8hH2Fc96K7s/s0ifB+r7JRYMGnmPG8GDm/QW
         QbOvNH1IkWoIzgtdr+6Ug0SshqY9guOCor96XpTz9oNwL7Ju9GNB8WpseLl37QlhHJ6Q
         8qm0BzU215C9QN77+8BAbBqC72JkRjrEMs2yDSRVaR4uH7cvnJoJZGRHvfG4cHRwzHsq
         T8sH0xlLJzEyS9PhyQ4UrsED2lFUTJ+mH/tEj0sg/6/rgsI+eZQJNt0UNycFnfO5sP6h
         KLZw==
X-Forwarded-Encrypted: i=1; AFNElJ8vLLeMg09Z2L2MLHr8kMWImJ4sIFDikJwfHSpJund8WmvZuMoUql7ekfZLlFZg7WsKKJArCNFXVB4=@lists.infradead.org
X-Gm-Message-State: AOJu0YweHASXnCMg5064BZ+k3L4tL6wda2fK++C0EJ/4vo/5BAhb+ziQ
	saCtcGuLtk7eCvDXeokknuAWcY85w48nhz37yjMYZu3NDEE8q46TOEmSA3dFIJ+JruX73hBS1BP
	Eh/gaLDRjb1sWD6DePJC+prOTDn7tujcSm2zzKHXY5sAGg1JW6JIFA4j+/SNox+Qyq4ut
X-Gm-Gg: AeBDieunmtJAiiWfpvxo5BLJFwd2yJifgnm2FKo/Xon5LuFkzGJg/vZ/ecfXjfolkWE
	+7kD3f7/rWPtt0nKdVj9d/bvkYn0Gwg5Y0Dz5+HaIXc2O+gdLDmmRE8tKAfjMBPrJy6/8D/87Qw
	Gohh5UT3bZ4EFXXE+RpfjshYhvPk6wNk0w6r9yEee7zCjjostdQlquzKr+rSd51ChuJqmWP6K3T
	pR6BEMXAW15CFuzL4dC3o5OE6OL+dtSJaVd9sth+6cSS934IdpardKNduLxifdnj4AzpmDJmjjN
	TC5cGA/8sK58Uc+IB0CV3fGOv2dwqyxANm8v8jM/8Yp3ATXThDmX2cpL72/xBzLD2sgpcPduCqY
	Z6a2Ic4XGwaQgK50r3v8mjr10QqhCrHYr09+1mGd/EHVj6sRcrcMbF4bH+JN9aUII9+6CPCPlsI
	1uL1oE64y1Cle/j8wRfw==
X-Received: by 2002:a05:620a:31a7:b0:8ea:e1a7:24a1 with SMTP id af79cd13be357-8eae1a73341mr4642101085a.33.1777271735489;
        Sun, 26 Apr 2026 23:35:35 -0700 (PDT)
X-Received: by 2002:a05:620a:31a7:b0:8ea:e1a7:24a1 with SMTP id af79cd13be357-8eae1a73341mr4642099485a.33.1777271734943;
        Sun, 26 Apr 2026 23:35:34 -0700 (PDT)
Received: from yongmou2.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8b02ac7d4e6sm251899256d6.20.2026.04.26.23.35.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Apr 2026 23:35:34 -0700 (PDT)
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Date: Mon, 27 Apr 2026 14:35:20 +0800
Subject: [PATCH v5 2/5] phy: qcom: edp: Add eDP/DP mode switch support
MIME-Version: 1.0
Message-Id: <20260427-edp_phy-v5-2-3bb876824475@oss.qualcomm.com>
References: <20260427-edp_phy-v5-0-3bb876824475@oss.qualcomm.com>
In-Reply-To: <20260427-edp_phy-v5-0-3bb876824475@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Yongxing Mou <yongxing.mou@oss.qualcomm.com>, stable@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1777271722; l=5731;
 i=yongxing.mou@oss.qualcomm.com; s=20250910; h=from:subject:message-id;
 bh=O1GeInKguzBA9mYySYOWGiOvhXg4+XShwWBtgMAL7dA=;
 b=xmV6Q+zgJRGesaYmJBkrJ3zWdAKMKfl/DOqcDFppyLCtPSgqKZ05PXBvzJKYUMGOaKFQJgJc7
 eO1J7wXXO8jAApwXuXbyXXD4kXufby08Ya2MMZwhRdMAr7KgEiUEP90
X-Developer-Key: i=yongxing.mou@oss.qualcomm.com; a=ed25519;
 pk=rAy5J1eP+V7OXqH5FJ7ngMCtUrnHhut30ZTldOj52UM=
X-Authority-Analysis: v=2.4 cv=aqCCzyZV c=1 sm=1 tr=0 ts=69ef03b8 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=se8qGc9sdx2UsIF7nuMA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: bmDCe4mqGwenL2K1XJzPHes_UF8Sumy9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDI3MDA2OCBTYWx0ZWRfX+L/6r9PuIydG
 7SXwIAxQrcsbRc3/losujPoY7udETq+/Ijk3uGYNxTJ6d/Gfy1C00OFK5djrCZcobbzz2MhPcm5
 uVLO18nksyvI/iT1iG9AdSyHEv+iVheEPOiA8epGAVZo2BBhMwEuKwJU43Gtog6U7WpK+EdxfQb
 YkXOuafgOec4F0O57GcrmXpinYoU50tdXjy7ClMmcYq8i1QVFebYxfKKaJIgdrBvuL/4Fxxe4D+
 c6j5H1TDiNPfdScSoKMzi8dETJOVTgsMBeiKBztw3K7YU8SqGM0w4unyukLoE2twCtmbaCHW/7z
 FoCWGg6DlVv6teIJ+uJyqPolOUyqaA4sKPXPEQMBD8yoKaMNWdSoRe418WQrkzCMHAYa4B0v2Du
 434N6A3kZlGZnjnZv0LEtq1emaSVt2jacPsaV47DI6YDpJEkMpy8kDF10gX+qOVLumlA566sZuC
 BFU6uarQ6x1vkt0Vi3Q==
X-Proofpoint-ORIG-GUID: bmDCe4mqGwenL2K1XJzPHes_UF8Sumy9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-27_01,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 phishscore=0 spamscore=0 adultscore=0
 suspectscore=0 malwarescore=0 bulkscore=0 clxscore=1015 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604270068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260426_233537_603509_37A273EC 
X-CRM114-Status: GOOD (  19.28  )
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

The eDP PHY supports both eDP/DP modes, each requiring a different
swing/pre-emphasis table. However, the driver currently uses a fixed
static table for eDP programming rather than selecting the appropriate
table based on the current mode. Add separate tables for eDP and DP
modes, and select the appropriate table dynamically based on the
current mode.

Glymur's DP mode table differs from the other platforms, add a
dedicated table for it.

This also fixes the table mismatch for X1E80100 (eDP) and SA8775P (DP).

Cc: stable@vger.kernel.org
Fixes: 3f12bf16213c ("phy: qcom: edp: Add support for eDP PHY on SA8775P")
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 46 +++++++++++++++++++++++++++----------
 1 file changed, 34 insertions(+), 12 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index 2af3fd63832f..3266026cfe37 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -87,7 +87,8 @@ struct qcom_edp_phy_cfg {
 	bool is_edp;
 	const u8 *aux_cfg;
 	const u8 *vco_div_cfg;
-	const struct qcom_edp_swing_pre_emph_cfg *swing_pre_emph_cfg;
+	const struct qcom_edp_swing_pre_emph_cfg *dp_swing_pre_emph_cfg;
+	const struct qcom_edp_swing_pre_emph_cfg *edp_swing_pre_emph_cfg;
 	const struct phy_ver_ops *ver_ops;
 };
 
@@ -150,6 +151,20 @@ static const struct qcom_edp_swing_pre_emph_cfg dp_phy_swing_pre_emph_cfg = {
 	.pre_emphasis_hbr3_hbr2 = &dp_pre_emp_hbr2_hbr3,
 };
 
+static const u8 dp_pre_emp_hbr_rbr_v8[4][4] = {
+	{ 0x00, 0x0e, 0x15, 0x1a },
+	{ 0x00, 0x0e, 0x15, 0xff },
+	{ 0x00, 0x0e, 0xff, 0xff },
+	{ 0x00, 0xff, 0xff, 0xff }
+};
+
+static const struct qcom_edp_swing_pre_emph_cfg dp_phy_swing_pre_emph_cfg_v8 = {
+	.swing_hbr_rbr = &dp_swing_hbr_rbr,
+	.swing_hbr3_hbr2 = &dp_swing_hbr2_hbr3,
+	.pre_emphasis_hbr_rbr = &dp_pre_emp_hbr_rbr_v8,
+	.pre_emphasis_hbr3_hbr2 = &dp_pre_emp_hbr2_hbr3,
+};
+
 static const u8 edp_swing_hbr_rbr[4][4] = {
 	{ 0x07, 0x0f, 0x16, 0x1f },
 	{ 0x0d, 0x16, 0x1e, 0xff },
@@ -246,7 +261,7 @@ static int qcom_edp_phy_init(struct phy *phy)
 	 * when more information becomes available about why this is
 	 * even needed.
 	 */
-	if (edp->cfg->swing_pre_emph_cfg && !edp->is_edp)
+	if (edp->cfg->dp_swing_pre_emph_cfg && !edp->is_edp)
 		aux_cfg[8] = 0xb7;
 
 	writel(0xfc, edp->edp + DP_PHY_MODE);
@@ -270,7 +285,7 @@ static int qcom_edp_phy_init(struct phy *phy)
 
 static int qcom_edp_set_voltages(struct qcom_edp *edp, const struct phy_configure_opts_dp *dp_opts)
 {
-	const struct qcom_edp_swing_pre_emph_cfg *cfg = edp->cfg->swing_pre_emph_cfg;
+	const struct qcom_edp_swing_pre_emph_cfg *cfg;
 	unsigned int v_level = 0;
 	unsigned int p_level = 0;
 	u8 ldo_config;
@@ -278,12 +293,14 @@ static int qcom_edp_set_voltages(struct qcom_edp *edp, const struct phy_configur
 	u8 emph;
 	int i;
 
+	if (edp->is_edp)
+		cfg = edp->cfg->edp_swing_pre_emph_cfg;
+	else
+		cfg = edp->cfg->dp_swing_pre_emph_cfg;
+
 	if (!cfg)
 		return 0;
 
-	if (edp->is_edp)
-		cfg = &edp_phy_swing_pre_emph_cfg;
-
 	for (i = 0; i < dp_opts->lanes; i++) {
 		v_level = max(v_level, dp_opts->voltage[i]);
 		p_level = max(p_level, dp_opts->pre[i]);
@@ -543,7 +560,8 @@ static const struct qcom_edp_phy_cfg sa8775p_dp_phy_cfg = {
 	.is_edp = false,
 	.aux_cfg = edp_phy_aux_cfg_v5,
 	.vco_div_cfg = edp_phy_vco_div_cfg_v4,
-	.swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
+	.dp_swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
+	.edp_swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
 	.ver_ops = &qcom_edp_phy_ops_v4,
 };
 
@@ -556,7 +574,8 @@ static const struct qcom_edp_phy_cfg sc7280_dp_phy_cfg = {
 static const struct qcom_edp_phy_cfg sc8280xp_dp_phy_cfg = {
 	.aux_cfg = edp_phy_aux_cfg_v4,
 	.vco_div_cfg = edp_phy_vco_div_cfg_v4,
-	.swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
+	.dp_swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
+	.edp_swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
 	.ver_ops = &qcom_edp_phy_ops_v4,
 };
 
@@ -564,7 +583,8 @@ static const struct qcom_edp_phy_cfg sc8280xp_edp_phy_cfg = {
 	.is_edp = true,
 	.aux_cfg = edp_phy_aux_cfg_v4,
 	.vco_div_cfg = edp_phy_vco_div_cfg_v4,
-	.swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
+	.dp_swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
+	.edp_swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
 	.ver_ops = &qcom_edp_phy_ops_v4,
 };
 
@@ -745,7 +765,8 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v6 = {
 static struct qcom_edp_phy_cfg x1e80100_phy_cfg = {
 	.aux_cfg = edp_phy_aux_cfg_v4,
 	.vco_div_cfg = edp_phy_vco_div_cfg_v4,
-	.swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
+	.dp_swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
+	.edp_swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
 	.ver_ops = &qcom_edp_phy_ops_v6,
 };
 
@@ -924,7 +945,8 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v8 = {
 static struct qcom_edp_phy_cfg glymur_phy_cfg = {
 	.aux_cfg = edp_phy_aux_cfg_v8,
 	.vco_div_cfg = edp_phy_vco_div_cfg_v8,
-	.swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
+	.dp_swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg_v8,
+	.edp_swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
 	.ver_ops = &qcom_edp_phy_ops_v8,
 };
 
@@ -942,7 +964,7 @@ static int qcom_edp_phy_power_on(struct phy *phy)
 	if (ret)
 		return ret;
 
-	if (edp->cfg->swing_pre_emph_cfg && !edp->is_edp)
+	if (edp->cfg->edp_swing_pre_emph_cfg && !edp->is_edp)
 		ldo_config = 0x1;
 
 	writel(ldo_config, edp->tx0 + TXn_LDO_CONFIG);

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
