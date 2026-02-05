Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC1FDE91299
	for <linux-phy@archiver.kernel.org>; Thu,  5 Feb 2026 09:21:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ysh64ReB5jmST3ae845nN6VTUtNwCqaEP3xJniHpmqI=; b=rd9MSDxFxG+8Bg
	HKVEpvljXJPeF7+/EOQQ3LCK4/7GdH22Gw3uFOHq5MEx7mLqSGTCXBqjlY27XYhhx0imucOTu7uaP
	uXT8jprswsiYYOmWKKQSH834+k7zJo4vh8kJ06HrZ0VW93jayykrWsn6xm+DtKm9zdNXN7bCBQbGM
	H7Wn0x8XaY7bvu144fQh0kHu9y6K+96PhFB69aBHOmSVxnk2W/CdApZHcf2JVx1EMGkQAXQ2WZXz+
	sBxEKxnQOyYa6H7QUTPKfWWv8T9OHq7zisoCMCPTLGzn+qJ5efZIDz3scpRSZSdOvi8A4fu9/8zNt
	GE6d/VyAd1MFH+1fhCoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnvY6-00000009gvK-2syk;
	Thu, 05 Feb 2026 09:21:18 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnvY2-00000009gtQ-2ZCX
	for linux-phy@lists.infradead.org;
	Thu, 05 Feb 2026 09:21:17 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6153dmQh2759581
	for <linux-phy@lists.infradead.org>; Thu, 5 Feb 2026 09:21:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2kz66T+V0rtwnMGBDRu8aeEFpABci/zcGgd00rNWRwU=; b=oaysqcZQO9Ai89FV
	7B8EZvAHjtNkUJEZBE1V1Aw2Q1YrgBMnjm6euiMDsZerSnzeUM4i/sMiF5ZUSA/9
	mpbsE1kh4VRSNro8k/grwJjYBAP7cNAw6uywsriPXJdmou+JQVLaoMFDImYj9wpg
	B11hZDZmHwe6ytPH/dcsa9XEARDB7IZSaeQ2/B8HlExjtCwCndnb9fYP+HqO6b3H
	8zSZsqOLevco5rhHKxcFRHm/2IAcns+Rxauqcgl8bC1dv44jkVrp/8UP6S25jEP5
	2NDZ1BJ+ckhPGtAT837WBpjMufQEfzGeq8De7hjY2K878zaZ6E2rqseOEDzoAC/C
	jN+csQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c4jpd148g-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 05 Feb 2026 09:21:14 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c7166a4643so191385685a.0
        for <linux-phy@lists.infradead.org>; Thu, 05 Feb 2026 01:21:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770283273; x=1770888073; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2kz66T+V0rtwnMGBDRu8aeEFpABci/zcGgd00rNWRwU=;
        b=i7kJrL7A1JJIv6wkYXdE0XEijqn55KML0DACFlJnxbGlZ54aVc1+LuAHIuTlGnIu60
         UhMEw83gOpyU7dKah9+DwVFbAAQR7iQMWiuufB6j9UW0XGl6iRCFhc1UG3nOb6tUV84k
         KdhwGQv/9ssB70suXPnvGW2jtQ6kh1mNe3X7JE68Sm4nNeV+Or6NS4YbXrFtDZaw8m5E
         tuMoxY+w3oBqDf0fcOEG5/Ms+nhVIOTxCoU5MejxVaOltF5W7h6wql2PHNF60o4XiPr1
         G6BY8bp7k3ssyi52CgxOYbHtooXpENdFfch7iYpIrw4dLFDYzjC1CBWaVmHFxCNBuE2P
         U1sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770283273; x=1770888073;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2kz66T+V0rtwnMGBDRu8aeEFpABci/zcGgd00rNWRwU=;
        b=Bp1bSFAxV2cfYbcSed9P8bVGfXWAMc7VyRP0rQpVZO6IfZb5AETgl1CZMaxqDa1HTO
         aBs5W+i3X6g/gzuSPEN1H/R1ezrvUVnXIqYOYmXAJRPzH/N0WEMQyT2mIPn34O6xyJVC
         mprwXiebtceYWpNSbR/cXOe0ZF9Mej0WmeVTUi9hcIjhtxQwXGrK7iUZGcrXEh2VDKWv
         eZPF2xhT2xHaXRRxc/3xsDBRBhJY8pLP2BUIXRHTehKxXJD2S4aab6N7j3XsPQSUYOAr
         IHm1KE2RDIlixvCCi3v3luy/Ab1J9OBJauFz+eebsg1HxG9a2X1EGsSwcpaCWcDJb+pg
         +bdA==
X-Forwarded-Encrypted: i=1; AJvYcCXUp383QQVFMHNeNECOX2s8839uULNcbM43cLUrXwWAA741faw2DcITnmBHGi8ZBnWfDkNPwKOylC0=@lists.infradead.org
X-Gm-Message-State: AOJu0YwWfkhz6XjVKdhNZLXP0pgYj2Ge05ViWjrcwAcIxQV4DHdXA5Ze
	9P0+HRb9RQUGZweaESuRCvPDrinMEPAY96eoHeXNNUjuUZIpI5uJplTHiaDZd+BA69KJ5Wr9fsp
	nGJrMwTYNTCtv0GtYDVgS9wQ/9xljD5pkPqoCNy6yJGupxaNfmxQzbdSqDynguzHlpvYPQkZkT7
	MW
X-Gm-Gg: AZuq6aIAq8mw2Tcz0o0AuYjBk97ErGDB5Egby9czmobbOZg/j3eQjEbYlCFpSnOy3h4
	ZyZL7V03RIYAxDswvMxGgsa0PfLX7pnAZWFCWUgt8cXLBEtCQEH/1piFmu0iKzt/a3VGS4/5JuS
	nz05o8uar9jkEie9qv4wzYTovk3tXyQ4Bg+qXHBSBrRezSDGbeQ86xW/QYRttlL+PjZRqiqyF7i
	LleY9ELIIqj6POJnR9fac50ujSavzoorEUUritwLguEhhMYBfgVQy01F+TRAghlqzHzZNsgeP11
	dsxrAsH2HLFtTUusAOLHdaS5d2ZyY9Jcgqp5+6p9ao5TSTbyrgS85sRC1YcLf0Uk8Q11uUYFRUY
	e+9ZVUf2dDubeR78VF5zpN8MxfqgnTvqYQh7XNIEsnRpWlh6ZYO5Bic5b1QybMz0y0qSvRZ4=
X-Received: by 2002:a05:620a:8301:b0:8c7:17b3:ae1a with SMTP id af79cd13be357-8ca2f9b71admr527874385a.45.1770283273082;
        Thu, 05 Feb 2026 01:21:13 -0800 (PST)
X-Received: by 2002:a05:620a:8301:b0:8c7:17b3:ae1a with SMTP id af79cd13be357-8ca2f9b71admr527872685a.45.1770283272631;
        Thu, 05 Feb 2026 01:21:12 -0800 (PST)
Received: from yongmou2.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8ca2fd2c3easm353674885a.32.2026.02.05.01.21.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 01:21:12 -0800 (PST)
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Date: Thu, 05 Feb 2026 17:20:55 +0800
Subject: [PATCH 3/3] phy: qcom: edp: Add eDP phy mode switch support
MIME-Version: 1.0
Message-Id: <20260205-edp_phy-v1-3-231882bbf3f1@oss.qualcomm.com>
References: <20260205-edp_phy-v1-0-231882bbf3f1@oss.qualcomm.com>
In-Reply-To: <20260205-edp_phy-v1-0-231882bbf3f1@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Yongxing Mou <yongxing.mou@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770283262; l=6361;
 i=yongxing.mou@oss.qualcomm.com; s=20250910; h=from:subject:message-id;
 bh=0safHmvjAF5Dl2bJ32O0Wb8Fy67lbHdFK61KTGNQChU=;
 b=LxoAlPOd5KyXUKpqF5UgKAM/Bmy4B6FstzpfXjLB42qMA5avYihFxiB1FReCgRX15mjn+xiKD
 bE9DcO69SwlBYzUNqXVE7URHZcvx2O6JmDa64Nyl8ZU0fp5tT0z/zeO
X-Developer-Key: i=yongxing.mou@oss.qualcomm.com; a=ed25519;
 pk=rAy5J1eP+V7OXqH5FJ7ngMCtUrnHhut30ZTldOj52UM=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA1MDA2NyBTYWx0ZWRfX5zFUJLBZvD2U
 poz2vA3+n22VNoVl+Q27L+DIYK6IWHOLGmN3bguSdnCAS157Y4t6WNs9STRS04D2wM7Yv5MBMI7
 XN9dm9iLnBqKArSD2wnLp8xavzfKuBch+pQWor7q/4R5UigOm0A9yKz8Gfk0czKwOFS9pkF/xfZ
 wnKikNrAp4s893Nm1oZBZkGzhAJ9jHCehxBZe+nOTgYbJFCJxGo+nSI+M6cfXcvEswCxHp/zorj
 SPIIJXfruVs5VqNlWcnjSig0AC/uv+vH9DU0ZeB74E9jDI4ht3+s1iaQkt+rjPbPd+xRFzzfPmM
 NmA9+MrACS7bLU1yvl32ewmABZkfJTrrjVkdvrcFU4UF724ZPKIz5uTY80LmLe/8c+fLu0BPbEJ
 bxz9m60f55BP4jbc90O8MDYHLTyRM3/v2c5zw14ce1CPUhdy0jp3BDmzDZsBd3iJUuTfP4NHdSF
 jIFmIN8iW2xzxMDmDxw==
X-Proofpoint-GUID: LpjrnPKyvsFKzpg5O61oTJ3jJl8Aw6j-
X-Authority-Analysis: v=2.4 cv=d7j4CBjE c=1 sm=1 tr=0 ts=6984610a cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=GUg6TPUWjBfrtBjo8qYA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: LpjrnPKyvsFKzpg5O61oTJ3jJl8Aw6j-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-05_01,2026-02-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015 phishscore=0
 priorityscore=1501 suspectscore=0 adultscore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602050067
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260205_012115_090714_B74B8DCF 
X-CRM114-Status: GOOD (  20.15  )
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

Add DP/eDP switch support by splitting the PHY swing/pre-emphasis tables
into separate DP and eDP configurations. This allows the driver to select
the correct table based on the is_edp flag.

Add a dedicated table for the SC7280/glymur platforms, as they are not
compatible with the others.

Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 72 ++++++++++++++++++++++++++++---------
 1 file changed, 56 insertions(+), 16 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index 388226dbad7f..85caa869a8c0 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -88,7 +88,8 @@ struct qcom_edp_phy_cfg {
 	bool is_edp;
 	const u8 *aux_cfg;
 	const u8 *vco_div_cfg;
-	const struct qcom_edp_swing_pre_emph_cfg *swing_pre_emph_cfg;
+	const struct qcom_edp_swing_pre_emph_cfg *dp_swing_pre_emph_cfg;
+	const struct qcom_edp_swing_pre_emph_cfg *edp_swing_pre_emph_cfg;
 	const struct phy_ver_ops *ver_ops;
 };
 
@@ -151,6 +152,20 @@ static const struct qcom_edp_swing_pre_emph_cfg dp_phy_swing_pre_emph_cfg = {
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
@@ -186,6 +201,27 @@ static const struct qcom_edp_swing_pre_emph_cfg edp_phy_swing_pre_emph_cfg = {
 	.pre_emphasis_hbr3_hbr2 = &edp_pre_emp_hbr2_hbr3,
 };
 
+static const u8 edp_swing_hbr2_hbr3_v3[4][4] = {
+	{ 0x0b, 0x11, 0x16, 0x1b },
+	{ 0x0b, 0x19, 0x1f, 0xff },
+	{ 0x18, 0x1f, 0xff, 0xff },
+	{ 0x1f, 0xff, 0xff, 0xff }
+};
+
+static const u8 edp_pre_emp_hbr2_hbr3_v3[4][4] = {
+	{ 0x0c, 0x15, 0x19, 0x1e },
+	{ 0x09, 0x14, 0x19, 0xff },
+	{ 0x0f, 0x14, 0xff, 0xff },
+	{ 0x0d, 0xff, 0xff, 0xff }
+};
+
+static const struct qcom_edp_swing_pre_emph_cfg edp_phy_swing_pre_emph_cfg_v3 = {
+	.swing_hbr_rbr = &edp_swing_hbr_rbr,
+	.swing_hbr3_hbr2 = &edp_swing_hbr2_hbr3_v3,
+	.pre_emphasis_hbr_rbr = &edp_pre_emp_hbr_rbr,
+	.pre_emphasis_hbr3_hbr2 = &edp_pre_emp_hbr2_hbr3_v3,
+};
+
 static const u8 edp_phy_aux_cfg_v4[DP_AUX_CFG_SIZE] = {
 	0x00, 0x13, 0x24, 0x00, 0x0a, 0x26, 0x0a, 0x03, 0x37, 0x03, 0x02, 0x02, 0x00,
 };
@@ -242,12 +278,7 @@ static int qcom_edp_phy_init(struct phy *phy)
 	       DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
 	       edp->edp + DP_PHY_PD_CTL);
 
-	/*
-	 * TODO: Re-work the conditions around setting the cfg8 value
-	 * when more information becomes available about why this is
-	 * even needed.
-	 */
-	if (edp->cfg->swing_pre_emph_cfg && !edp->is_edp)
+	if (!edp->is_edp)
 		aux_cfg[8] = 0xb7;
 
 	writel(0xfc, edp->edp + DP_PHY_MODE);
@@ -271,7 +302,7 @@ static int qcom_edp_phy_init(struct phy *phy)
 
 static int qcom_edp_set_voltages(struct qcom_edp *edp, const struct phy_configure_opts_dp *dp_opts)
 {
-	const struct qcom_edp_swing_pre_emph_cfg *cfg = edp->cfg->swing_pre_emph_cfg;
+	const struct qcom_edp_swing_pre_emph_cfg *cfg;
 	unsigned int v_level = 0;
 	unsigned int p_level = 0;
 	int ret;
@@ -279,12 +310,14 @@ static int qcom_edp_set_voltages(struct qcom_edp *edp, const struct phy_configur
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
@@ -591,20 +624,24 @@ static const struct qcom_edp_phy_cfg sa8775p_dp_phy_cfg = {
 	.is_edp = false,
 	.aux_cfg = edp_phy_aux_cfg_v5,
 	.vco_div_cfg = edp_phy_vco_div_cfg_v4,
-	.swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
+	.dp_swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
+	.edp_swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
 	.ver_ops = &qcom_edp_phy_ops_v4,
 };
 
 static const struct qcom_edp_phy_cfg sc7280_dp_phy_cfg = {
 	.aux_cfg = edp_phy_aux_cfg_v4,
 	.vco_div_cfg = edp_phy_vco_div_cfg_v4,
+	.dp_swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
+	.edp_swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg_v3,
 	.ver_ops = &qcom_edp_phy_ops_v3,
 };
 
 static const struct qcom_edp_phy_cfg sc8280xp_dp_phy_cfg = {
 	.aux_cfg = edp_phy_aux_cfg_v4,
 	.vco_div_cfg = edp_phy_vco_div_cfg_v4,
-	.swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
+	.dp_swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
+	.edp_swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
 	.ver_ops = &qcom_edp_phy_ops_v4,
 };
 
@@ -612,7 +649,8 @@ static const struct qcom_edp_phy_cfg sc8280xp_edp_phy_cfg = {
 	.is_edp = true,
 	.aux_cfg = edp_phy_aux_cfg_v4,
 	.vco_div_cfg = edp_phy_vco_div_cfg_v4,
-	.swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
+	.dp_swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
+	.edp_swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
 	.ver_ops = &qcom_edp_phy_ops_v4,
 };
 
@@ -811,7 +849,8 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v6 = {
 static struct qcom_edp_phy_cfg x1e80100_phy_cfg = {
 	.aux_cfg = edp_phy_aux_cfg_v4,
 	.vco_div_cfg = edp_phy_vco_div_cfg_v4,
-	.swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
+	.dp_swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
+	.edp_swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
 	.ver_ops = &qcom_edp_phy_ops_v6,
 };
 
@@ -991,7 +1030,8 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v8 = {
 static struct qcom_edp_phy_cfg glymur_phy_cfg = {
 	.aux_cfg = edp_phy_aux_cfg_v8,
 	.vco_div_cfg = edp_phy_vco_div_cfg_v8,
-	.swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
+	.dp_swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg_v8,
+	.edp_swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
 	.ver_ops = &qcom_edp_phy_ops_v8,
 };
 

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
