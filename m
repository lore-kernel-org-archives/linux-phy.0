Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDCC0F94CCC
	for <linux-phy@archiver.kernel.org>; Wed, 22 Apr 2026 06:02:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=duqukjMXIcPoU1Zo67/knrJGnrY+ml2kz+uVt/J9WPA=; b=1qjhhv3QRi2dUF
	Y2TRVmC6Ob7Ao6agqMVwsAi3+E8CxvwlKlsJ1gQYvHmo0Fvj1dOukea4lqGRBNfbNvZ/FcgOFpdX/
	SV3p+KVnYebMpcwIHLJHs76gDP96/25zVe/3Ye7IZ67yNq3bMVwMI3IICA3vZUbMRWA1LLnuWfunr
	lTyJf/1JLQ9ZnF0vZx+KaJQM8d/bJYK8ra2SEmKAP0p7nJctdNWEjck6yvYPW0ZaknJMIZDlP8G7+
	FIDxx78xFC/LK+QiUu+8V+FyKgaC2HZnWRwx343zC+/08PPfjXYNhKsMORMolKHrV6FxnaBqk039c
	vN8dPIKd/i7gEWimzFAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFQfK-00000009dp4-3363;
	Wed, 22 Apr 2026 06:02:26 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFQfH-00000009dnv-3FN5
	for linux-phy@lists.infradead.org;
	Wed, 22 Apr 2026 06:02:25 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63M4n0H82000978
	for <linux-phy@lists.infradead.org>; Wed, 22 Apr 2026 06:02:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2C61IqPkD5k068uRvM9MVLw5rLsp05NvnfwiorSH3fs=; b=AlU3BkQ8tIeiTKA3
	Cs6IPDFoopQMnCuC28PvHDCsus79qtBNYV07fqFcFL/MRpfOTCtSn4nT2K2DQqQY
	ZL31EdGGxJ3wKAHC2rShmW5V4lww86M19JALkq3AgVUfoXQ5qeb3FwHzjAFE6zwT
	sG5K/wE4ymTK9fQVz/mqezszuH7opmilXyWxmQmJ54UCVfnTtQDQg2ChRyYO8vPa
	MLbIKCd1CC/0Jpabt1i1dSkUEj3/GYZWHhK2+ju7vQ5Hc45mqhLwKWr5GkJS73a9
	ntW3C6Nsdc3uMwglXZtQp3Dr3Ti0noAUXAAY1yNdj192biXXAcW8W6w7vcvhTS6j
	JGSWAw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dpenf9wvg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 22 Apr 2026 06:02:23 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8ebe2c596c6so487550685a.1
        for <linux-phy@lists.infradead.org>; Tue, 21 Apr 2026 23:02:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1776837742; x=1777442542; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2C61IqPkD5k068uRvM9MVLw5rLsp05NvnfwiorSH3fs=;
        b=R1c66t2eRkgCflao88ikwtPu+PIvJA3JhddntA5146S8SACiOam20bBycLibSvkENC
         K+qFrSqH9osbWGBx/KTtJNOt40Likqw4mHMivt+Gaces9H2xzDq6fAd5j6WZGyQW+Aho
         OtNVTfNGaWd+qkr5F7lpP9UzLM8pdKdOlb4pfYmiHkDzAcK6vBbaufWF3zMxPhQSwRYe
         rOJwCAh5+/vLOXep278kb6CFvOHDxw4PaVJRcXnF0VTeAZDPvmrnldPeoPFgtqjTHtoC
         o8XvK71+NH/Bdy7SXgpDr4j/k1+tIJZGTUsnJhPNHbl8pZ4mbYcYD9Fwt0IXtwk0BPjr
         wA8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776837742; x=1777442542;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2C61IqPkD5k068uRvM9MVLw5rLsp05NvnfwiorSH3fs=;
        b=WrD1zbwP84ihjJ5XFs34SJCJtyzE94GfD+ypHFtkzRMq9s6QWS8Bpx3fa5QYMn/7NB
         kPBLssb6ZH6hI0VpHIrUXC3BBRcTHaZdry0hSdXX1Y0R6Lchbty0q/KEURmYRPzkpaLn
         Sb0nj3j4aZposXP5uNwRuN5P61BLK6ViSBKHzp9geVMhen9zK3wJWHfw2gqPhuNpXIpZ
         YiIGMCicKVOQXN3YZHJMNHSCStPTvU3XP5o8lr1t+v6t+HtckbHHYnWA23KxvebHYhYV
         1qqS0UiCB1xD6g5YUSlh7w5+4ntxq6rS+IzzvFv/IrzstKh0LIhHo0pIH1qUFtAi+Sry
         ByCw==
X-Forwarded-Encrypted: i=1; AFNElJ+Sdwdi0q+k5wpmHomC5TtS5tppaiddR4e2UG+jJlCGI1CjYpLdxEQbk7RLWZbl6xvPgm/E6deimeU=@lists.infradead.org
X-Gm-Message-State: AOJu0YwfXLsgPEdYzBVrp3tw8QXk4Bc71C5R3vCRq7FtWciTZQzhSyRf
	wi/RyL1jNqAnhFk3ebN3sR25Dn0BXtobVoVktEyppI0sc22aP3RhNlkXLehLSqR/rF7FPx/E4e9
	YyDLj7/rBGsulMd+IM1LCjdoFHKxDDK5cgRrvLb8TaopJwjnRs2hndX16Ipy1ejnrpbIO
X-Gm-Gg: AeBDiesquivMAp5W72pFe9ZVHxHFNrOaAMKxyPAYlCC4ywKv6Il036bimqGAmig5zGW
	bQChyD4QLqT00a3hikikKMbnRvNQVqeETcmvVW4Le2a32s5IIWTS8tg+xQUts2piYKHAy9dkTkW
	mFhKquAn6hhHUHJPB2ttxeT+/0T/UhxGjlayuoO6p4inMEYeZiMunBW2OdBCNWpYBjDaiQgwUHe
	/THqBSfMb+F8kuififCdmJgEB/LFH5rCmnn18n6MS1u1xKQ4iIzHXQQ4/v7U4pNxkURQu3WbUyU
	9yCMfqZgJz+R+fmsTxLdVDGwtVc9H/fM1qTeQrG2dRs+XmHvAMwckN+jhUryl3aXvwUb6ITHOZw
	us2Iued2k1rfE4U/wzE5jbeiZqiDwrVDcCsV9YvWC3EWE6joWNvcgYmoJAImOctOswE1DhOOCov
	gWCbr3OpXG7/QKtnisBw==
X-Received: by 2002:a05:620a:9490:b0:8ea:f0e0:26dc with SMTP id af79cd13be357-8eaf0e028cdmr1240642985a.24.1776837742016;
        Tue, 21 Apr 2026 23:02:22 -0700 (PDT)
X-Received: by 2002:a05:620a:9490:b0:8ea:f0e0:26dc with SMTP id af79cd13be357-8eaf0e028cdmr1240639985a.24.1776837741512;
        Tue, 21 Apr 2026 23:02:21 -0700 (PDT)
Received: from yongmou2.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8ef12122800sm237379985a.18.2026.04.21.23.02.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Apr 2026 23:02:21 -0700 (PDT)
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Date: Wed, 22 Apr 2026 14:01:53 +0800
Subject: [PATCH v4 3/5] phy: qcom: edp: Add SC7280/SC8180X
 swing/pre-emphasis tables
MIME-Version: 1.0
Message-Id: <20260422-edp_phy-v4-3-c38bef2d027b@oss.qualcomm.com>
References: <20260422-edp_phy-v4-0-c38bef2d027b@oss.qualcomm.com>
In-Reply-To: <20260422-edp_phy-v4-0-c38bef2d027b@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Yongxing Mou <yongxing.mou@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1776837726; l=4697;
 i=yongxing.mou@oss.qualcomm.com; s=20250910; h=from:subject:message-id;
 bh=qmdY+9gqlqyquzs4DveF/+RSKYlbC385O8eG8AwNNHM=;
 b=JjvDcCCg0EEmMdEu1teFQ8pogQUG6h1zjK9yxEINuUJFgZcvgRLOTkCnGTZPN5O7HqVmTowrz
 rsoZtdU8ocOBxxXg7l16VNISxwvOMgT2TJHqT/6lk6mn9BLMWLGREiE
X-Developer-Key: i=yongxing.mou@oss.qualcomm.com; a=ed25519;
 pk=rAy5J1eP+V7OXqH5FJ7ngMCtUrnHhut30ZTldOj52UM=
X-Proofpoint-ORIG-GUID: atlZykIc22JKwCfoRL2vys7IIftMbkw9
X-Authority-Analysis: v=2.4 cv=fozsol4f c=1 sm=1 tr=0 ts=69e8646f cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=30kYINvD9rJISS9apoAA:9 a=+jEqtf1s3R9VXZ0wqowq2kgwd+I=:19
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIyMDA1NiBTYWx0ZWRfX3SzWd4ysZmRw
 STn/8RdqZjnC+fy+BCm+uCOoJG3FeS1KxxcdvtU8v/AIZwGnsEi7DQpHlf6xLQwmwv7/eZOjli+
 yM9V+EIOnbKe8QV3dk7YPY8ScjyNoVHVqMJDVZe7i4hRAt2/EzNr7AavqwyTS9R5cEQO/VF/j1R
 4OyHTonaPZFzVDztYGB5hBa/NkedaGI43DjGqG/3JA5OQU24UONIbBMNXsGvyisFGJbs0c9VZA2
 hpQfs6h4rnUiSpml6yi9vq1omcVBdWTAp5QirEPABnATP+F15s5aal7aphNpo9GE5NCqQibcjq3
 CPkHiseSOyp8mByb+4vOSHQB9uBqi8bJpv9nHUUByj08sMeexEKKCrm05f8+Nf8+sUZktkz9Ayc
 MH9vUSmdgn7+r8/R2ZchcewUM+ode6BhHploOOcUoX19MuqLPTzoQ69GCkpOWbJyf6Oilyc7Gw+
 Ze5YdCRWhFuGsgi96vg==
X-Proofpoint-GUID: atlZykIc22JKwCfoRL2vys7IIftMbkw9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-21_03,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 clxscore=1015 adultscore=0 impostorscore=0
 spamscore=0 priorityscore=1501 suspectscore=0 phishscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604220056
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260421_230223_826236_36B0A668 
X-CRM114-Status: GOOD (  14.23  )
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
 drivers/phy/qualcomm/phy-qcom-edp.c | 71 ++++++++++++++++++++++++++++++++++---
 1 file changed, 67 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index 3266026cfe37..7ac2f502c7a0 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -165,6 +165,27 @@ static const struct qcom_edp_swing_pre_emph_cfg dp_phy_swing_pre_emph_cfg_v8 = {
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
+	.swing_hbr_rbr = &dp_swing_hbr_rbr,
+	.swing_hbr3_hbr2 = &dp_swing_hbr2_hbr3_v2,
+	.pre_emphasis_hbr_rbr = &dp_pre_emp_hbr_rbr,
+	.pre_emphasis_hbr3_hbr2 = &dp_pre_emp_hbr2_hbr3_v2,
+};
+
 static const u8 edp_swing_hbr_rbr[4][4] = {
 	{ 0x07, 0x0f, 0x16, 0x1f },
 	{ 0x0d, 0x16, 0x1e, 0xff },
@@ -208,6 +229,41 @@ static const u8 edp_phy_vco_div_cfg_v4[4] = {
 	0x01, 0x01, 0x02, 0x00,
 };
 
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
+	.pre_emphasis_hbr_rbr = &edp_pre_emp_hbr_rbr,
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
@@ -298,9 +354,6 @@ static int qcom_edp_set_voltages(struct qcom_edp *edp, const struct phy_configur
 	else
 		cfg = edp->cfg->dp_swing_pre_emph_cfg;
 
-	if (!cfg)
-		return 0;
-
 	for (i = 0; i < dp_opts->lanes; i++) {
 		v_level = max(v_level, dp_opts->voltage[i]);
 		p_level = max(p_level, dp_opts->pre[i]);
@@ -568,6 +621,16 @@ static const struct qcom_edp_phy_cfg sa8775p_dp_phy_cfg = {
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
 
@@ -1348,7 +1411,7 @@ static const struct of_device_id qcom_edp_phy_match_table[] = {
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
