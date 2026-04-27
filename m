Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4E72FF8850
	for <linux-phy@archiver.kernel.org>; Mon, 27 Apr 2026 06:35:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VA3Auipdy8LXsx4Q2ddN5el/aHIciDDoUc6UOhar50E=; b=g3Zg3/IXXJdeVV
	aWNC2cxOp9cSiU17wBonemjSZD2OTHQ7oxymelT6FdWPwqJEs6K9o+Bi8OPeXCDg6GuQmcUV9eUhL
	srvTPnJhmkR2TACPWCw7GtKxVr2nR5Zo0I2+zeYMdCIravEGbS+OE//W4s+Gv9kZPh2Ou8qchKmug
	ScKJ0TXyZu5bOxMGm8OEsCyuHooNH2OmDdthudJAGARX0hrxuYfVDBqy+V4VDDQ+hiJOB0vvr+10J
	8D8TK7lex4+tBN5EFQJMaBwuLMxbEXKdAf95UQqwGoEpjhQHnB8pni6Zsu419NTm9G7EuWJ1I/++r
	VJQqYxT/Lt3WbE4sAKhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHFZI-0000000GH3u-1hYD;
	Mon, 27 Apr 2026 06:35:44 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHFZE-0000000GH39-2kF3
	for linux-phy@lists.infradead.org;
	Mon, 27 Apr 2026 06:35:42 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63QNZH1g1631449
	for <linux-phy@lists.infradead.org>; Mon, 27 Apr 2026 06:35:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MOejmSdyeyE767wPf4LJqa7khHTtZoxzm9fKm4l9sgg=; b=K2UJ7JZPw7f4hXuj
	wdA4UgRA4HUE5z7Bx3Id33T/Vdc0xekCCpdFOVoZWNy7OKFReXmg3noBcswgVG/E
	mer3iYacWtgqem+QNf016nY0rYdfnxE31Q+NqduE4cWGvayGrDmJBV72u/jgozIf
	lNa7XwPWFrBiK7ryX8VfBXMUiQuIlY0b8TEE0IGOYRK/fm25U1yCbOYM16X6UiQw
	vMqfLCOBQIIfSbfDz7lvr9DBf4qdiBfz8YlAvS8bgwr9I2WGOjCpG3R3jqq5BkxU
	Gezux8F8m7ki7eh0MRJfSESHEHxVXkjZoTa55rKnvnVV6KSvc9ck2GBa+FUJG7un
	pdE4Ng==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dsa4utpe7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 27 Apr 2026 06:35:40 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-8b02af4345fso42734306d6.1
        for <linux-phy@lists.infradead.org>; Sun, 26 Apr 2026 23:35:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777271739; x=1777876539; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MOejmSdyeyE767wPf4LJqa7khHTtZoxzm9fKm4l9sgg=;
        b=ja6+FdU7TjH9qWLvyiwgs3z7QrvJQdN9mYs1OKr6+mMEMscACzdOzeoA3Zz6vNj+4v
         +xeqkLjuTO8BZ7cBj/a/SZW/MA9E4ab9wFfVEnH50Mgcx4BrJovA6gGWcN1OHrIq89yq
         AyjvyIyvIfSVrzuFnW72QYXmZzBQl4c/UkyOmK3IEm3aRtQejBw09RhCck9Zpee+T//b
         IP37qp2ztpJ4LI3Xpr97b/sKH23SOrKyaAYEN5OCqCjSIUi5HnGbZqFHqCizb2XpeUb+
         GkMf9ZtUXRU2DPHgbkvUUPoXnk4CNJJ1G18QN9EyJfYCtjDpeFrlY77hOC8yui+B7JZf
         fJrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777271739; x=1777876539;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MOejmSdyeyE767wPf4LJqa7khHTtZoxzm9fKm4l9sgg=;
        b=otdF0/3FiHxHemIpfIZVbeMb5ZhTClDM6epkDNWKt/0tSVQKGHN3TBIvEqOJFO+q6Y
         Xub1grJ/YnVU9Hpm81O2s9ZmCyVIlMHX1IGAdzl5Bbbvmye5BvvUu7z5lGcI4mKHcDNU
         w5kNBxw1MHnukfky5//3jYgGapx4Nx6n4XXD+g8TujSSSIXNHgI3z7UgKWMAZQw9uBJM
         1pAzlwA2zpnz2lI4SYMR0Bcnhxc8lSzxteH6WAYsodAHvEwLy1+QWlgXHwwouYFyHKp4
         RJnd/McNFN1qWF9bj0nKTNijUWQ3EdYbRF+v8QNgsPoEo3sYyecb4KyAvIv1VD98TABL
         us5Q==
X-Forwarded-Encrypted: i=1; AFNElJ8aX8ScT6oFQiyu+cTdM3X8wCSW1v1QF0jvorragOOFFfcdXKnVEnr6bWOnJMJwEn81TCp6Fimzbug=@lists.infradead.org
X-Gm-Message-State: AOJu0YwtlCZUxL8o2fEispzdd1vAiDLnV8cHfcw5J2a2WsD0wt8/6UUI
	mUMUGnxBkT8UaD1+0Z/35mtqKhythhj9pDmxM9VL5XpQ4xPH8WytdSqcGQItBeq//bS8ptxnuFv
	vgA9YARCkZtBlzMDxteoLuIo3fcBOTtH7YB4ZKBapeD9yiTYFHHbG9Ldfo/2m5+zHNnYj
X-Gm-Gg: AeBDieuvl9f/lJGD1y2R0Ka+y2CMfg1aZj/F/JcL/qPjwU4R56phWFYCTlW1w6NeqGt
	xwJEocMLm8t3DXSkFNgBIJWCWN+7kN1pGjCYMGQE86UMEMHYqSn81e/fHk87yAqQbc7WMrL5zs4
	rmRNPvOBoEKeGzY4UtU+V6z6PY/dQxxD0YHbmpJvW0YCmL+vajos171HGk2bHoo7VDrZyrBzUym
	23fps0p+yqtC3UMbtYq4+wv/xQnpLpkF7+T+5OHKEO/gsHuJaKGwbXNdf3Jqu1r/pqLKvY1P+1a
	YfuZSJquWkNApUrcYybcMdmTeajyjleba/f2FzCv/R4HLmX/Au2UvdjNyA9n0zukl6TEgGgKgG2
	i5Tpj7pUYW4J2DCm9+C9gL9fnvvvOdDHVVXU1J9doUkR2ixnHwf5ZhzwqolzgBdxpKOH6rbX4Nm
	OKuHtMSd5gVuzip+dfKw==
X-Received: by 2002:a05:6214:4f18:b0:8ac:ae21:466 with SMTP id 6a1803df08f44-8b0280ce5bfmr601793766d6.24.1777271738981;
        Sun, 26 Apr 2026 23:35:38 -0700 (PDT)
X-Received: by 2002:a05:6214:4f18:b0:8ac:ae21:466 with SMTP id 6a1803df08f44-8b0280ce5bfmr601793536d6.24.1777271738489;
        Sun, 26 Apr 2026 23:35:38 -0700 (PDT)
Received: from yongmou2.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8b02ac7d4e6sm251899256d6.20.2026.04.26.23.35.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Apr 2026 23:35:37 -0700 (PDT)
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Date: Mon, 27 Apr 2026 14:35:21 +0800
Subject: [PATCH v5 3/5] phy: qcom: edp: Add SC7280/SC8180X
 swing/pre-emphasis tables
MIME-Version: 1.0
Message-Id: <20260427-edp_phy-v5-3-3bb876824475@oss.qualcomm.com>
References: <20260427-edp_phy-v5-0-3bb876824475@oss.qualcomm.com>
In-Reply-To: <20260427-edp_phy-v5-0-3bb876824475@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Yongxing Mou <yongxing.mou@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1777271722; l=5099;
 i=yongxing.mou@oss.qualcomm.com; s=20250910; h=from:subject:message-id;
 bh=R2IzNDqGo6HtlEfDbgCxfFqgBnJCRQP8v/nOXy+Ydls=;
 b=esc5roMnJw7OaG85PNh1QTtRz5jMiXXxIeh1/mFItaQ6gg+lIgGGd4FVItjASJqkyKSj8Aa5d
 G+WKOZqRxDODO4R2WwPRlWIDNcF6lM+I4HeiCRvNXIRTZ0qgDtF9XHu
X-Developer-Key: i=yongxing.mou@oss.qualcomm.com; a=ed25519;
 pk=rAy5J1eP+V7OXqH5FJ7ngMCtUrnHhut30ZTldOj52UM=
X-Proofpoint-GUID: NoSqxM2Ct47EoqEBxMh7IN1Bz5O68fqI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDI3MDA2OCBTYWx0ZWRfX7nvCDaCtIesg
 4ZjzJ0UJo7SP+sKqBuzj0NuIE48dSG0nWx/LALO9Id8bJhch6j63F/buFkZ0RQHxRUkarsJRYhk
 zYL5msVtqUWhxlEqQ4xz87qiD+LbKDhOIZcOf1vVmPTHttzDORGzwWPS7Khevtkx4SfxuB9T87y
 m9HTeJaVEj/2I/cIXF9PPp5RKZY/wiRtpEtHOQfdUdkZ+wRVkGj8oZXT834arxui4ABtO8EOaS5
 Hs16XLMA6Q1oOZIXR73+yeNnhMJHLVZL/WPSZoFdJnsYTs/zYiQhEaZZBrBV2WLJ7lpWPZIks9G
 +CbQjduI7EHMJA22KsZMc+3I3DT0sxn+dZYyBVjg9xP3bDx6Wwjimh/uAN7bhJ2DBA9xqakenOv
 M6a8RCeuQwTf6GGV9JHkyHdJg2b8fD3/9mI3WZgnZmU0jK/FEho0v14dVa0VtLNuKU4bE9o8+j0
 AZ8BOxlH+Z5lk5zMk6g==
X-Proofpoint-ORIG-GUID: NoSqxM2Ct47EoqEBxMh7IN1Bz5O68fqI
X-Authority-Analysis: v=2.4 cv=J/GaKgnS c=1 sm=1 tr=0 ts=69ef03bc cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=MHk7-D5nQAs65VpelYQA:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-27_01,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 spamscore=0 phishscore=0 lowpriorityscore=0
 impostorscore=0 priorityscore=1501 adultscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604270068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260426_233540_714933_AB939BD8 
X-CRM114-Status: GOOD (  15.03  )
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

SC7280 and SC8180X previously shared the same cfg because they did not use
swing/pre-emphasis tables. Add the corresponding tables for these
platforms. Since they have different PHY sub-versions, their eDP/DP mode
tables also differ, so move SC8180X to its own cfg instead of reusing the
SC7280 one.

Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 84 +++++++++++++++++++++++++++++++++++--
 1 file changed, 80 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index 3266026cfe37..3e613b374032 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -165,6 +165,33 @@ static const struct qcom_edp_swing_pre_emph_cfg dp_phy_swing_pre_emph_cfg_v8 = {
 	.pre_emphasis_hbr3_hbr2 = &dp_pre_emp_hbr2_hbr3,
 };
 
+static const u8 dp_swing_hbr2_hbr3_v2[4][4] = {
+	{ 0x27, 0x2f, 0x36, 0xff },
+	{ 0x31, 0x3e, 0x3f, 0xff },
+	{ 0x3a, 0x3f, 0xff, 0xff },
+	{ 0xff, 0xff, 0xff, 0xff }
+};
+
+static const u8 dp_pre_emp_hbr2_hbr3_v2[4][4] = {
+	{ 0x20, 0x2e, 0x35, 0xff },
+	{ 0x20, 0x2e, 0x35, 0xff },
+	{ 0x20, 0x2e, 0xff, 0xff },
+	{ 0xff, 0xff, 0xff, 0xff }
+};
+
+static const struct qcom_edp_swing_pre_emph_cfg dp_phy_swing_pre_emph_cfg_v2 = {
+	/*
+	 * NOTE: The HPG does not specify a separate swing_hbr_rbr table.
+	 * Reuse the HBR2/HBR3 table for now.
+	 *
+	 * TODO: Update this once the HPG explicitly defines RBR/HBR swing values.
+	 */
+	.swing_hbr_rbr = &dp_swing_hbr2_hbr3_v2,
+	.swing_hbr3_hbr2 = &dp_swing_hbr2_hbr3_v2,
+	.pre_emphasis_hbr_rbr = &dp_pre_emp_hbr2_hbr3_v2,
+	.pre_emphasis_hbr3_hbr2 = &dp_pre_emp_hbr2_hbr3_v2,
+};
+
 static const u8 edp_swing_hbr_rbr[4][4] = {
 	{ 0x07, 0x0f, 0x16, 0x1f },
 	{ 0x0d, 0x16, 0x1e, 0xff },
@@ -208,6 +235,48 @@ static const u8 edp_phy_vco_div_cfg_v4[4] = {
 	0x01, 0x01, 0x02, 0x00,
 };
 
+static const u8 edp_pre_emp_hbr_rbr_v2[4][4] = {
+	{ 0x05, 0x12, 0x17, 0x1d },
+	{ 0x05, 0x11, 0x18, 0xff },
+	{ 0x06, 0x11, 0xff, 0xff },
+	{ 0x00, 0xff, 0xff, 0xff }
+};
+
+static const u8 edp_pre_emp_hbr2_hbr3_v2[4][4] = {
+	{ 0x0c, 0x15, 0x19, 0x1e },
+	{ 0x08, 0x15, 0x19, 0xff },
+	{ 0x0e, 0x14, 0xff, 0xff },
+	{ 0x0d, 0xff, 0xff, 0xff }
+};
+
+static const struct qcom_edp_swing_pre_emph_cfg edp_phy_swing_pre_emph_cfg_v2 = {
+	.swing_hbr_rbr = &edp_swing_hbr_rbr,
+	.swing_hbr3_hbr2 = &edp_swing_hbr2_hbr3,
+	.pre_emphasis_hbr_rbr = &edp_pre_emp_hbr_rbr_v2,
+	.pre_emphasis_hbr3_hbr2 = &edp_pre_emp_hbr2_hbr3_v2,
+};
+
+static const u8 edp_swing_hbr2_hbr3_v3[4][4] = {
+	{ 0x06, 0x11, 0x16, 0x1b },
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
 static const u8 edp_phy_aux_cfg_v5[DP_AUX_CFG_SIZE] = {
 	0x00, 0x13, 0xa4, 0x00, 0x0a, 0x26, 0x0a, 0x03, 0x37, 0x03, 0x02, 0x02, 0x00,
 };
@@ -298,9 +367,6 @@ static int qcom_edp_set_voltages(struct qcom_edp *edp, const struct phy_configur
 	else
 		cfg = edp->cfg->dp_swing_pre_emph_cfg;
 
-	if (!cfg)
-		return 0;
-
 	for (i = 0; i < dp_opts->lanes; i++) {
 		v_level = max(v_level, dp_opts->voltage[i]);
 		p_level = max(p_level, dp_opts->pre[i]);
@@ -568,6 +634,16 @@ static const struct qcom_edp_phy_cfg sa8775p_dp_phy_cfg = {
 static const struct qcom_edp_phy_cfg sc7280_dp_phy_cfg = {
 	.aux_cfg = edp_phy_aux_cfg_v4,
 	.vco_div_cfg = edp_phy_vco_div_cfg_v4,
+	.dp_swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
+	.edp_swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg_v3,
+	.ver_ops = &qcom_edp_phy_ops_v4,
+};
+
+static const struct qcom_edp_phy_cfg sc8180x_dp_phy_cfg = {
+	.aux_cfg = edp_phy_aux_cfg_v4,
+	.vco_div_cfg = edp_phy_vco_div_cfg_v4,
+	.dp_swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg_v2,
+	.edp_swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg_v2,
 	.ver_ops = &qcom_edp_phy_ops_v4,
 };
 
@@ -1348,7 +1424,7 @@ static const struct of_device_id qcom_edp_phy_match_table[] = {
 	{ .compatible = "qcom,glymur-dp-phy", .data = &glymur_phy_cfg, },
 	{ .compatible = "qcom,sa8775p-edp-phy", .data = &sa8775p_dp_phy_cfg, },
 	{ .compatible = "qcom,sc7280-edp-phy", .data = &sc7280_dp_phy_cfg, },
-	{ .compatible = "qcom,sc8180x-edp-phy", .data = &sc7280_dp_phy_cfg, },
+	{ .compatible = "qcom,sc8180x-edp-phy", .data = &sc8180x_dp_phy_cfg, },
 	{ .compatible = "qcom,sc8280xp-dp-phy", .data = &sc8280xp_dp_phy_cfg, },
 	{ .compatible = "qcom,sc8280xp-edp-phy", .data = &sc8280xp_edp_phy_cfg, },
 	{ .compatible = "qcom,x1e80100-dp-phy", .data = &x1e80100_phy_cfg, },

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
