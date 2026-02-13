Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 126A3EF48DD
	for <linux-phy@archiver.kernel.org>; Fri, 13 Feb 2026 07:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uGJWe1vi/mF8WrD3MSmGpHMCK3fyhBo1XDo/ykEEJ3I=; b=sQKDh6Sp+zDjHM
	xoxNVOZ+a8rGBVst87tFj7txOBIABvmjbdB/1bNFPeMYjG07GHr5ZMT+B/N7LlUvdqPTA6Cv6oc+E
	QiLIkhxzrkIBjg4mpLlj4b1eXawjZJkZwknq1TSmVdFiRYkRxwQfaWT28G4x14/zuXjKBQ84zzihS
	02QWU25FTFaQdC9Vuv4VS2ESAHPYspWO/AdGxxBc5HiiuC8J0RL2zQ+ZNFbauPYZQvvCKPIraYdW+
	fjGjxw09FVz+2wxVRNzrWbMgGOiXMZyC6DxE6MqQ1OU9Dci8+BsjFw3LJ9eE/BkpurY8nNMsZBKeD
	OteBtuj6C1axbCwxJ7gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqneg-000000036bz-39Xl;
	Fri, 13 Feb 2026 07:31:58 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqnee-000000036b7-3S5t
	for linux-phy@lists.infradead.org;
	Fri, 13 Feb 2026 07:31:58 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61D2jXbf2093498
	for <linux-phy@lists.infradead.org>; Fri, 13 Feb 2026 07:31:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Uzg2+4Pt++kTwMPXPgXFyvJ13EJCTj2BTGpaDamIP6s=; b=kWXXekWHeXM8z1Vq
	60ckABEsMoo7Rww7FFs5fQPXcEytof+GYSbUH02Ldoz60kkxGTNV25aFgaR3PPKZ
	onpeVbTLyXRmWpzHS0F71JloDcm9F/40AzAoFwOs7RhzHtct021FuR0cVM3cW2Xn
	ZcI7vQjWnsKFebaUHDK58PuKLIt3oGYvd31GQNlGoBL5VplTnUQl3zaTfin+fgtx
	mWWyPMMws0nNzyEsx45tzqqHLqJJyrfjSI0s1VcfmKmBsR8D+8PTcACe8BCWI+Fg
	6Ps4KFLiPkPspAA0X4gFB7Oe4+puXgh5Iix7uUwSKc1Zf5RDc7EsVD+cb7dn3LKj
	lJjDcw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c9k6y2mva-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 13 Feb 2026 07:31:55 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb3a2eb984so423830385a.0
        for <linux-phy@lists.infradead.org>; Thu, 12 Feb 2026 23:31:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770967915; x=1771572715; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Uzg2+4Pt++kTwMPXPgXFyvJ13EJCTj2BTGpaDamIP6s=;
        b=EZu5HrzJ0tX7p0eP3vrU8++N0sxZWwO4zFOZAlelgIcP0ntlsiSniV2xWWEJA/lJta
         dvYDMOYZi/dIpJc1LnuuBYhYHM6qME0T1FIEGgPliYrmu7f2XXuXPLjt6PZWPTDWiSGB
         l85/7QggjDpBxodIQQuhKZEWgauXc2yX9gMNys7vNm1yVxcTWvhC5iPhpoLivdRBrgih
         2yX67la3FsaHkmElvGI+Jl2do/0vWx6rwBpHPSLZz0N6Cfyp+L1JMjYUmofXtcnfxCcO
         6I0tRfhz/OZ39ZjY5ukiBewC+6QpbqRUnqvTZHdzQp3eVDvX18bjFZRFejvhy8z0tBNT
         gNEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770967915; x=1771572715;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Uzg2+4Pt++kTwMPXPgXFyvJ13EJCTj2BTGpaDamIP6s=;
        b=TiH5QZqtfsvD1u/nhXF1EIesPaDIcgHsyKhJtEQVrmwq6WwnJr5NhtYusrifRHV/f6
         OudjD4fj86TvolbI+cW1sHzZ2AY9OCia7G61FZdgYwTGKZb8taVJZlyabpGdpi3v9OYa
         +ut/Om3PyaVF9XaG+rXika2xHY2L14ulOe0X9uMB5anYP9dfr+xgbJ+nEWxw6yEBGICo
         ICCKB1XKDq0XMdFGWWoBHrde9pU1vRuMK5RpxvHKJDQwxtcqOCtmTkbXZYQHg1W3CSU7
         e+oF5TDtz3/sycsAYECaMIWvQAGUlYAZFYF3LaZ1b2Iuw2XfBkzdbQxJEx+wpb+pINEi
         uZyw==
X-Forwarded-Encrypted: i=1; AJvYcCVQeAAvGUyL9rLJxL/znDOsjvFtAwcW94B7P62Vyf7/IYasO2n5s8qVVgomzcYAlnmAUbkpir/WS0U=@lists.infradead.org
X-Gm-Message-State: AOJu0YwLaAqGN+tvGWkr+obP8J0djynSLFHpD6l+Miv7qBpQPXmfKVzg
	KSIB5+KoDyrt5Q5+NY/G54jG0iW9vRwwL5DOayHhYoJoi38eVPAYbqWtbXpbuURNfNF2BGKSd0m
	Np4sGG9LjRfHF3oe67AKUX8Xaid5/M4/PWy3jthx5MBESdXg6qjphHSYGmpXRRl1jzFfNwOx9xQ
	0j/HE=
X-Gm-Gg: AZuq6aKCfIK+DOfEsS4h0z0sOELX+hxskomG7x+P6lXCxRHJojDFzApI1Yw1SdyP4QC
	oYxye6hFXWER08sVSBo4BzbHHwDNjvnFXso4h/YWuDdC/769lVwSYt9lAd7reXG2oWGGfiLcgRt
	qnnggegAI8EXtsaZ492tz5I+V7aaPkl84ZlfiIV7iL7f39F5sOUDDB7/YYdUDVx0tDfeG7WITDv
	ix+HJU0Pu8WNuaYhNTaFliBJVUbVNpt42qBYwdlo8I0xNVJbMK/WSdQDZaxrOebz02aJM8XMG02
	ZxL0EBDnDKdXCiD7YgxuIhXRm44qyUcnH1/UecjQycSKI32G2CInWak4tVUfN6VW2zr9+0W7mAT
	bE424VmjXwGqBSS0/Apfy9I9uWBd3Xy4P5dEwtcy/eTjMT/13cUtA3McATQOMADccg6Xl1fvQmU
	ntLCwcE+Q=
X-Received: by 2002:a05:620a:3f97:b0:8ca:2a05:6d00 with SMTP id af79cd13be357-8cb42288f2cmr109597385a.32.1770967915071;
        Thu, 12 Feb 2026 23:31:55 -0800 (PST)
X-Received: by 2002:a05:620a:3f97:b0:8ca:2a05:6d00 with SMTP id af79cd13be357-8cb42288f2cmr109595885a.32.1770967914657;
        Thu, 12 Feb 2026 23:31:54 -0800 (PST)
Received: from yongmou2.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cb2b0bda6fsm541156485a.9.2026.02.12.23.31.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Feb 2026 23:31:54 -0800 (PST)
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Date: Fri, 13 Feb 2026 15:31:43 +0800
Subject: [PATCH v2 2/2] phy: qcom: edp: Add per-version LDO configuration
 callback
MIME-Version: 1.0
Message-Id: <20260213-edp_phy-v2-2-43c40976435e@oss.qualcomm.com>
References: <20260213-edp_phy-v2-0-43c40976435e@oss.qualcomm.com>
In-Reply-To: <20260213-edp_phy-v2-0-43c40976435e@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Yongxing Mou <yongxing.mou@oss.qualcomm.com>, stable@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770967906; l=6315;
 i=yongxing.mou@oss.qualcomm.com; s=20250910; h=from:subject:message-id;
 bh=NaPXmY+LnAd/hjr/pBZl9SyPVTtHkdOI2cAXDQbrB5M=;
 b=HlHI0Q6IiWFTupejL5Z0gDQNHokzBg8C63zQ8vzjDA6fNVTUFgp6psSLIL74T9VsehLDcEi0p
 JIrOHgnOGUgCopvlsF5mglL44yk1UkLrte7bzz95toZwsbUgBZV+3wv
X-Developer-Key: i=yongxing.mou@oss.qualcomm.com; a=ed25519;
 pk=rAy5J1eP+V7OXqH5FJ7ngMCtUrnHhut30ZTldOj52UM=
X-Authority-Analysis: v=2.4 cv=NsTcssdJ c=1 sm=1 tr=0 ts=698ed36b cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=Wstf64DO4dhji1mrokQA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEzMDA1NyBTYWx0ZWRfX8YxV9jJQYHCy
 b8selSp0NaLxizXrDB5Qwwf/jp5mNAZg7/s9wW1MxlMDvkqoHcdIvh8KWTDaGiZ3OcNZpQQxSsJ
 s0UxppHq28R+i3X3XR7Hh0CpNXlcXRgDcR4Y1WgqwsEUq0qTJ+X2Cr1SBzxNQ3eZuLWysZd0ZT5
 b3b178zAgpG9yU2wVQwSGaiDpa1HmTKgqqHhguDu2kiLZH2c3ofsDpqNe/xiNRg+W6ByAWnvmey
 LJ9VvWgoR+h5PoQQ5GR2tv0v4GbokyNRkrcNGlVfV4GWnM41U8qUx8Fr6+gKjOTpoY2k21J2ysr
 gWFys9nTXfScR5AlCGIm635yRXpC2Vjwo4S7CKB1HiULPbJjX0rHRF2d+OnAhiepx89+JR3pgDQ
 TC692YM/Aln1GwIik8yy+3GNVD3gXgYjewMLZ0zD71zzKNedOfEa7n2d5UxGcjidDj/NvedSH4A
 1BPuu96jyint5zIWzFA==
X-Proofpoint-GUID: dKM4EgKNJ5_pjfbIBXfE0JPPpAfFawHt
X-Proofpoint-ORIG-GUID: dKM4EgKNJ5_pjfbIBXfE0JPPpAfFawHt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-13_01,2026-02-12_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 spamscore=0 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 adultscore=0 phishscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602130057
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260212_233156_988585_FDFDC627 
X-CRM114-Status: GOOD (  15.79  )
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

For eDP low Vdiff, the LDO setting depends on the PHY version, instead of
being a simple 0x0 or 0x01. Introduce the com_ldo_config callback to
correct LDO setting accroding to the HPG.

Since SC7280 uses different LDO settings than SA8775P/SC8280XP, introduce
qcom_edp_phy_ops_v3 to keep the LDO setting correct.

Cc: stable@vger.kernel.org
Fixes: f199223cb490 ("phy: qcom: Introduce new eDP PHY driver")
Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 86 ++++++++++++++++++++++++++++++++-----
 1 file changed, 76 insertions(+), 10 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index ff14de41cb1c..6464df8d2a62 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -81,6 +81,7 @@ struct phy_ver_ops {
 	int (*com_clk_fwd_cfg)(const struct qcom_edp *edp);
 	int (*com_configure_pll)(const struct qcom_edp *edp);
 	int (*com_configure_ssc)(const struct qcom_edp *edp);
+	int (*com_ldo_config)(const struct qcom_edp *edp);
 };
 
 struct qcom_edp_phy_cfg {
@@ -304,7 +305,7 @@ static int qcom_edp_set_voltages(struct qcom_edp *edp, const struct phy_configur
 	const struct qcom_edp_swing_pre_emph_cfg *cfg;
 	unsigned int v_level = 0;
 	unsigned int p_level = 0;
-	u8 ldo_config;
+	int ret;
 	u8 swing;
 	u8 emph;
 	int i;
@@ -330,13 +331,13 @@ static int qcom_edp_set_voltages(struct qcom_edp *edp, const struct phy_configur
 	if (swing == 0xff || emph == 0xff)
 		return -EINVAL;
 
-	ldo_config = edp->is_edp ? 0x0 : 0x1;
+	ret = edp->cfg->ver_ops->com_ldo_config(edp);
+	if (ret)
+		return ret;
 
-	writel(ldo_config, edp->tx0 + TXn_LDO_CONFIG);
 	writel(swing, edp->tx0 + TXn_TX_DRV_LVL);
 	writel(emph, edp->tx0 + TXn_TX_EMP_POST1_LVL);
 
-	writel(ldo_config, edp->tx1 + TXn_LDO_CONFIG);
 	writel(swing, edp->tx1 + TXn_TX_DRV_LVL);
 	writel(emph, edp->tx1 + TXn_TX_EMP_POST1_LVL);
 
@@ -560,6 +561,52 @@ static int qcom_edp_com_configure_pll_v4(const struct qcom_edp *edp)
 	return 0;
 }
 
+static int qcom_edp_ldo_config_v3(const struct qcom_edp *edp)
+{
+	const struct phy_configure_opts_dp *dp_opts = &edp->dp_opts;
+	u32 ldo_config;
+
+	if (!edp->is_edp)
+		ldo_config = 0x0;
+	else if (dp_opts->link_rate <= 2700)
+		ldo_config = 0x81;
+	else
+		ldo_config = 0x41;
+
+	writel(ldo_config, edp->tx0 + TXn_LDO_CONFIG);
+	writel(ldo_config, edp->tx1 + TXn_LDO_CONFIG);
+
+	return 0;
+}
+
+static int qcom_edp_ldo_config_v4(const struct qcom_edp *edp)
+{
+	const struct phy_configure_opts_dp *dp_opts = &edp->dp_opts;
+	u32 ldo_config;
+
+	if (!edp->is_edp)
+		ldo_config = 0x0;
+	else if (dp_opts->link_rate <= 2700)
+		ldo_config = 0xc1;
+	else
+		ldo_config = 0x81;
+
+	writel(ldo_config, edp->tx0 + TXn_LDO_CONFIG);
+	writel(ldo_config, edp->tx1 + TXn_LDO_CONFIG);
+
+	return 0;
+}
+
+static const struct phy_ver_ops qcom_edp_phy_ops_v3 = {
+	.com_power_on		= qcom_edp_phy_power_on_v4,
+	.com_resetsm_cntrl	= qcom_edp_phy_com_resetsm_cntrl_v4,
+	.com_bias_en_clkbuflr	= qcom_edp_com_bias_en_clkbuflr_v4,
+	.com_clk_fwd_cfg	= qcom_edp_com_clk_fwd_cfg_v4,
+	.com_configure_pll	= qcom_edp_com_configure_pll_v4,
+	.com_configure_ssc	= qcom_edp_com_configure_ssc_v4,
+	.com_ldo_config		= qcom_edp_ldo_config_v3,
+};
+
 static const struct phy_ver_ops qcom_edp_phy_ops_v4 = {
 	.com_power_on		= qcom_edp_phy_power_on_v4,
 	.com_resetsm_cntrl	= qcom_edp_phy_com_resetsm_cntrl_v4,
@@ -567,6 +614,7 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v4 = {
 	.com_clk_fwd_cfg	= qcom_edp_com_clk_fwd_cfg_v4,
 	.com_configure_pll	= qcom_edp_com_configure_pll_v4,
 	.com_configure_ssc	= qcom_edp_com_configure_ssc_v4,
+	.com_ldo_config		= qcom_edp_ldo_config_v4,
 };
 
 static const struct qcom_edp_phy_cfg sa8775p_dp_phy_cfg = {
@@ -583,7 +631,7 @@ static const struct qcom_edp_phy_cfg sc7280_dp_phy_cfg = {
 	.vco_div_cfg = edp_phy_vco_div_cfg_v4,
 	.dp_swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
 	.edp_swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg_v3,
-	.ver_ops = &qcom_edp_phy_ops_v4,
+	.ver_ops = &qcom_edp_phy_ops_v3,
 };
 
 static const struct qcom_edp_phy_cfg sc8280xp_dp_phy_cfg = {
@@ -768,12 +816,31 @@ static int qcom_edp_com_configure_pll_v6(const struct qcom_edp *edp)
 	return 0;
 }
 
+static int qcom_edp_ldo_config_v6(const struct qcom_edp *edp)
+{
+	const struct phy_configure_opts_dp *dp_opts = &edp->dp_opts;
+	u32 ldo_config;
+
+	if (!edp->is_edp)
+		ldo_config = 0x0;
+	else if (dp_opts->link_rate <= 2700)
+		ldo_config = 0x51;
+	else
+		ldo_config = 0x91;
+
+	writel(ldo_config, edp->tx0 + TXn_LDO_CONFIG);
+	writel(ldo_config, edp->tx1 + TXn_LDO_CONFIG);
+
+	return 0;
+}
+
 static const struct phy_ver_ops qcom_edp_phy_ops_v6 = {
 	.com_power_on		= qcom_edp_phy_power_on_v6,
 	.com_resetsm_cntrl	= qcom_edp_phy_com_resetsm_cntrl_v6,
 	.com_bias_en_clkbuflr	= qcom_edp_com_bias_en_clkbuflr_v6,
 	.com_configure_pll	= qcom_edp_com_configure_pll_v6,
 	.com_configure_ssc	= qcom_edp_com_configure_ssc_v6,
+	.com_ldo_config		= qcom_edp_ldo_config_v6,
 };
 
 static struct qcom_edp_phy_cfg x1e80100_phy_cfg = {
@@ -954,6 +1021,7 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v8 = {
 	.com_clk_fwd_cfg	= qcom_edp_com_clk_fwd_cfg_v8,
 	.com_configure_pll	= qcom_edp_com_configure_pll_v8,
 	.com_configure_ssc	= qcom_edp_com_configure_ssc_v8,
+	.com_ldo_config		= qcom_edp_ldo_config_v6,
 };
 
 static struct qcom_edp_phy_cfg glymur_phy_cfg = {
@@ -969,7 +1037,6 @@ static int qcom_edp_phy_power_on(struct phy *phy)
 	const struct qcom_edp *edp = phy_get_drvdata(phy);
 	u32 bias0_en, drvr0_en, bias1_en, drvr1_en;
 	unsigned long pixel_freq;
-	u8 ldo_config = 0x0;
 	int ret;
 	u32 val;
 	u8 cfg1;
@@ -978,11 +1045,10 @@ static int qcom_edp_phy_power_on(struct phy *phy)
 	if (ret)
 		return ret;
 
-	if (edp->cfg->swing_pre_emph_cfg && !edp->is_edp)
-		ldo_config = 0x1;
+	ret = edp->cfg->ver_ops->com_ldo_config(edp);
+	if (ret)
+		return ret;
 
-	writel(ldo_config, edp->tx0 + TXn_LDO_CONFIG);
-	writel(ldo_config, edp->tx1 + TXn_LDO_CONFIG);
 	writel(0x00, edp->tx0 + TXn_LANE_MODE_1);
 	writel(0x00, edp->tx1 + TXn_LANE_MODE_1);
 

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
