Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2256BD232F0
	for <linux-phy@archiver.kernel.org>; Fri,  9 Jan 2026 08:30:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZLJmZVaQZzw81xIy3UxKRSkYd0MKnup6TED9FEr55lw=; b=zDh/7+25q/A5p8
	UusnS7ELVBbhuO7W3zFTxMmUWEKxRvz6kuTfUF5+nslF0gkFEVEACaalCOLx2VxaKRZQqxUfmCjtJ
	+Qy4N2I2CH7TJ5N997YTrzTWcGn3VtI//md/Q46fZX1ZR37lD77BvDgKb7T92eZ75HeP3vcxdRAin
	jeJa3eJPYkq5Y1Bmh88h1le74jX6pPD9omsdgwmt4pACM5GyPTwXdRJKQcfQtJkRCXqBDkxEMIMAy
	9uFHI2HpPGVSb1zMSJ04LpcHFHnixKBgKFggFITnREmrtb92GqsRhtC4p1QKnSGQN+Ays/u22aCxK
	f1xItnhgKRt689O2diMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ve7tC-00000001ulT-29a8;
	Fri, 09 Jan 2026 08:30:34 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ve7t9-00000001uko-3bPA
	for linux-phy@lists.infradead.org;
	Fri, 09 Jan 2026 08:30:33 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60982bUG2184030
	for <linux-phy@lists.infradead.org>; Fri, 9 Jan 2026 08:30:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=50+/gJ+IsXhBIpPLZMUP5y
	jPLB3bzvhy9frEyPnkqvY=; b=BwDLoawGDpW3Ret0vQYeleAZmT8Bm1Ra/hr2F6
	S6PhC+Zk2a1rd+wa4ZPN4zcfDuNHqxJkeJJQgQW4JdMu+eiIC0dDPw9v4i7x9DkW
	Wpt0t2wWDFEt0MgK8wkx42ForSzBn6eOAP73ER1TlGFbKeEmWs4Okt0NOdsDb8Yj
	OsGCFPSME6it8G9KH9CVmg8nBaTEC8jhPRSLniIn7Fcwfsl7oEuNkFJm3JlF//Ak
	t9FCUfSULZTgJigl5lP3pZP/gkVNBwMxFAX2UjeRNj+8tyyvEecPmzsQMBbvRrxB
	sFD/u4qB7jr8VWRPhcmNNhDhor5cb3mpjmBm3oBu6VUhwICw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bjwtn82uf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 09 Jan 2026 08:30:29 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-88a25a341ebso89881706d6.0
        for <linux-phy@lists.infradead.org>; Fri, 09 Jan 2026 00:30:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767947428; x=1768552228; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=50+/gJ+IsXhBIpPLZMUP5yjPLB3bzvhy9frEyPnkqvY=;
        b=G+Zw/60MzjgzuJwc9kSM0Q11eOBV1G6WXcM5rPSau8PHHiQHlZAvbm7Xf9Bijiq7xQ
         /MG05ImqGG5pOU3VaY7kLGIdap4HjFdvnetATgUIBZZvKLkchrnrgWtoGUynBPmwhnkP
         kwb+hBsMSFAQDPLBJ/rJCwAhwjBsS4ssTxqwzbGoIgjn1k+FDXF7UhrzuVeHXyu/C4Vx
         B3GV4qhLmsJHnhI4gSvJqBL5ehfvPgdrxqmpcQXnq3BaOTsJQbCQe6eP3A6yVL8Hv+N5
         TKTduhYzRYGEs+4fAVYUUCe4/m+KDDp6QSu9JgVmN4yLtDftsHIX2UgNlGVhKNN4LZau
         QdGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767947428; x=1768552228;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=50+/gJ+IsXhBIpPLZMUP5yjPLB3bzvhy9frEyPnkqvY=;
        b=wWQgzO8FNOHxrp+zdhSTLIoH4o+nFv4i3dCHxp+A/Oa6lyGWvEkOdgVmaEyhhHv9AP
         V0877WRWvz9TydhSCrZK7ZRRbktXQUuveSjzkOvYNICinkxLObaAsCHxNvwHmiHpzZBB
         OxQvu2OCO/DoMupxXU07IdI30IVyg4yhkjH/u5onLCLHABS54pcBJ1fDsZKoVPmyJWCB
         lJ9ZwJLNWWXfJuc4ofPdsPhMhUQUJd3QTk0uvOTeQwbYMOXIDriv2unmuEY1asqFlwM4
         /DtJUPKfJWKpGslh4DFrYiLsDVrV0s8j95oRjjfvu4fY88LqSBg/d9Z9vhKTnnOIamIQ
         lIRg==
X-Forwarded-Encrypted: i=1; AJvYcCVCj0BeH6wlX48Rt5DsIxxxpHcvzq86rLa7EeKVVKg81QhiJ0srsCBVxCR8AJFjSbCNZGkdPfQq+iE=@lists.infradead.org
X-Gm-Message-State: AOJu0YzuuIfuqv974NOe74YSd2inI3BFjya99QGTC62Z/zBQ/Ul8HPhB
	x0Y0GQSzeOL4twwhSGqVq9IjQbnMhkDkGhOHUMqlDM8c5w7cpmh0tBJjMjQGrMILaeTZj6KQOAC
	R+XyTbtEez5JB086PtiomyaL0uWr7xOfI/cWqPDAZazl8l2Xmzed1o9bS2gZWgYBjPyViLV1rd2
	ZgG3U=
X-Gm-Gg: AY/fxX5MgaP4pi58BJn/9WoG7eGAOuECZ7Eg6L/Hfdy3yqnFOc91iMnVwaLkApcbzAn
	KS1HExSUPqlCFHhcyYQewDgID9q6p3HKzOJ0glvX6IUVYKiqABM8dO4X4qn/rrp+PUKa/IHpjN+
	oAxE9M16G7V4q/HMOd/jyh2KtuINSuAwE2W8bXMWFpHRYFIc5QE2N+CZWCMOfNqXpWN2oIoBwOo
	C5JQ8OcAVNnxKiA1aiqNIrhXyBvpz3BgonV4QZWiFi/v1cVJ27kLk31DQ1Hn8ISwv/YhZpcPGFa
	+OfMyy2q1g6YsT8L07w2NNsc+/yW6QxLrQpJezTCvkjhE2HGA6bSHD4JEKJKEKC5vga8R82Efhd
	zouV58o+pb0mMHpVVuCrO+ae0XwyNZaYBO6kbnkk/r3EJOHnn7rzJdQCydHknIWxS5FCagao=
X-Received: by 2002:a05:6214:3b83:b0:882:6d84:ebc3 with SMTP id 6a1803df08f44-89084271257mr132321756d6.34.1767947428275;
        Fri, 09 Jan 2026 00:30:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHqUkiOM/ii1556fLzkZFoM3udxFOUEW7nNFOAw+6Mm6KQoc2unZuy3WSVioTa2744hFenJzg==
X-Received: by 2002:a05:6214:3b83:b0:882:6d84:ebc3 with SMTP id 6a1803df08f44-89084271257mr132321416d6.34.1767947427725;
        Fri, 09 Jan 2026 00:30:27 -0800 (PST)
Received: from yongmou2.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-890770ce298sm70573926d6.8.2026.01.09.00.30.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 00:30:27 -0800 (PST)
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Date: Fri, 09 Jan 2026 16:30:21 +0800
Subject: [PATCH] drm/msm/dp: Correct LeMans/Monaco DP phy Swing/Emphasis
 setting
MIME-Version: 1.0
Message-Id: <20260109-klm_dpphy-v1-1-a6b6abe382de@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAJy8YGkC/yXM4QqDIBSG4VuJ83uCZlZ2KxHDjsclW+W0jY3o3
 ifr5/vx8eyQKHpK0BU7RHr75Nclh7gUgJNZbsS8zQ0lL2suuGb3x3y1IUxf1o7SaNUo7poW8j9
 Ecv7zt/rh7EjPVya3c4TRJGK4zrPfusJhRVpgLTVy47S0tURp1YicqFJKKGuzXRkYjuMHxSbvj
 acAAAA=
X-Change-ID: 20260109-klm_dpphy-8b3a95750f78
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Yongxing Mou <yongxing.mou@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767947425; l=3230;
 i=yongxing.mou@oss.qualcomm.com; s=20250910; h=from:subject:message-id;
 bh=47ICDv/i8JfnrPPrWxcQsA8JfO1i9z1ltS6R54IEzVw=;
 b=RYICtqFVglOkYQB/eS59jM7kqnvciulHlc6ribtwEnbWnBHhu4+D9D9NLdIp/Y785NqgdaIXA
 eGf43a9Plw3AN/9B3ZD0+TPYq8oWbKjaX7ldA93OyspSUZY6fEwYay7
X-Developer-Key: i=yongxing.mou@oss.qualcomm.com; a=ed25519;
 pk=rAy5J1eP+V7OXqH5FJ7ngMCtUrnHhut30ZTldOj52UM=
X-Proofpoint-GUID: ztOnaNuUE1tBFuGnKyU18ek-iZQGHxD1
X-Proofpoint-ORIG-GUID: ztOnaNuUE1tBFuGnKyU18ek-iZQGHxD1
X-Authority-Analysis: v=2.4 cv=Uohu9uwB c=1 sm=1 tr=0 ts=6960bca5 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=pSICJWmwak5-Gv9eA8IA:9
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA5MDA1OSBTYWx0ZWRfX7p8kRMPzNQ9A
 Ywm0uJFtuJTWOO5tNkPHtk4mOIhOW9hwUdk5dO5NihDPgVzeZnrZSzuRMqyU5QMrkfYZJQb9e18
 cBlbUKNdKj9LN5bS04nCNSrPWJ6tX/F0VJdqAu5+xXahkC0UNSpslpqJw0ynSK/3ofd5pqipIz2
 x2uzg0OF/jyDHf6wWpyq5aflvhN5/9poDyMrDxO+lafdjuI5HmsabXn6D70Gt0bplPINToxAM6W
 Kw4XW4cg8KzEDJJIQ/GbXizJoF4PxzHLjG4z1AUts2WHCkyh/dzEyitjOExAXz33/TjNJttBmV7
 CPJVnb7djZNn3h7vQ3LweBTQTxzWONrepayWehyuggxywfmVZREG8b4EHA2R1dBv8OcJiaCjjsH
 X0tlkWporr/4c9FRSwZJHTI9hE4v07FnFwoa91vnYEMgeRfeDUT+tgjJdIcGyy+Kmz8WGry/XaK
 R/n8lAepNg1Mf/5Ab2A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-09_02,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 phishscore=0 lowpriorityscore=0 adultscore=0
 bulkscore=0 suspectscore=0 malwarescore=0 clxscore=1011 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601090059
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260109_003031_926477_491F5C79 
X-CRM114-Status: GOOD (  13.10  )
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

Currently, the LeMans/Monaco DP PHY operates in DP mode rather than eDP
mode. Per the PHY HPG, the Swing and Emphasis settings have been corrected
to the appropriate DP-mode values.

Additionally, the HPG specifies that the LDO value should be set to 0 when
in DP mode. These misconfigurations can lead to link training failures on
certain dongles.

Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 27 ++++++++++++++++++++++++---
 1 file changed, 24 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index 13feab99feec..5b0d774bd715 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -122,6 +122,13 @@ static const u8 dp_swing_hbr_rbr[4][4] = {
 	{ 0x1f, 0xff, 0xff, 0xff }
 };
 
+static const u8 dp_swing_hbr_rbr_v1[4][4] = {
+	{ 0x07, 0x0f, 0x16, 0x1f },
+	{ 0x11, 0x1e, 0x1f, 0xff },
+	{ 0x16, 0x1f, 0xff, 0xff },
+	{ 0x1f, 0xff, 0xff, 0xff }
+};
+
 static const u8 dp_pre_emp_hbr_rbr[4][4] = {
 	{ 0x00, 0x0d, 0x14, 0x1a },
 	{ 0x00, 0x0e, 0x15, 0xff },
@@ -129,6 +136,13 @@ static const u8 dp_pre_emp_hbr_rbr[4][4] = {
 	{ 0x03, 0xff, 0xff, 0xff }
 };
 
+static const u8 dp_pre_emp_hbr_rbr_v1[4][4] = {
+	{ 0x00, 0x0e, 0x15, 0x1a },
+	{ 0x00, 0x0e, 0x15, 0xff },
+	{ 0x00, 0x0e, 0xff, 0xff },
+	{ 0x04, 0xff, 0xff, 0xff }
+};
+
 static const u8 dp_swing_hbr2_hbr3[4][4] = {
 	{ 0x02, 0x12, 0x16, 0x1a },
 	{ 0x09, 0x19, 0x1f, 0xff },
@@ -150,6 +164,13 @@ static const struct qcom_edp_swing_pre_emph_cfg dp_phy_swing_pre_emph_cfg = {
 	.pre_emphasis_hbr3_hbr2 = &dp_pre_emp_hbr2_hbr3,
 };
 
+static const struct qcom_edp_swing_pre_emph_cfg dp_phy_swing_pre_emph_cfg_v1 = {
+	.swing_hbr_rbr = &dp_swing_hbr_rbr_v1,
+	.swing_hbr3_hbr2 = &dp_swing_hbr2_hbr3,
+	.pre_emphasis_hbr_rbr = &dp_pre_emp_hbr_rbr_v1,
+	.pre_emphasis_hbr3_hbr2 = &dp_pre_emp_hbr2_hbr3,
+};
+
 static const u8 edp_swing_hbr_rbr[4][4] = {
 	{ 0x07, 0x0f, 0x16, 0x1f },
 	{ 0x0d, 0x16, 0x1e, 0xff },
@@ -321,7 +342,7 @@ static int qcom_edp_set_voltages(struct qcom_edp *edp, const struct phy_configur
 	if (swing == 0xff || emph == 0xff)
 		return -EINVAL;
 
-	ldo_config = edp->is_edp ? 0x0 : 0x1;
+	ldo_config = !edp->is_edp ? 0x0 : 0x1;
 
 	writel(ldo_config, edp->tx0 + TXn_LDO_CONFIG);
 	writel(swing, edp->tx0 + TXn_TX_DRV_LVL);
@@ -564,7 +585,7 @@ static const struct qcom_edp_phy_cfg sa8775p_dp_phy_cfg = {
 	.is_edp = false,
 	.aux_cfg = edp_phy_aux_cfg_v5,
 	.vco_div_cfg = edp_phy_vco_div_cfg_v4,
-	.swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg_v5,
+	.swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg_v1,
 	.ver_ops = &qcom_edp_phy_ops_v4,
 };
 
@@ -962,7 +983,7 @@ static int qcom_edp_phy_power_on(struct phy *phy)
 	if (ret)
 		return ret;
 
-	if (edp->cfg->swing_pre_emph_cfg && !edp->is_edp)
+	if (edp->cfg->swing_pre_emph_cfg && edp->is_edp)
 		ldo_config = 0x1;
 
 	writel(ldo_config, edp->tx0 + TXn_LDO_CONFIG);

---
base-commit: fc4e91c639c0af93d63c3d5bc0ee45515dd7504a
change-id: 20260109-klm_dpphy-8b3a95750f78

Best regards,
-- 
Yongxing Mou <yongxing.mou@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
