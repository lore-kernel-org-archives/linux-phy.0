Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E508CA9EC5
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 13:34:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c/Qqyv0jynEx+F7xTAUJC6BtxEL/bCL51j3VF7J4Qbg=; b=iiquz7BshBSmyl
	F0MEkdExOCgOz3Ka/ClRj2QTygtPExGOnZsR68pGslCO9EwBTRL7s1M3Np6u4rb9uzK0HtFmuvs0g
	aOVVrmB6v4HEzY1iRd6vfhckUQM3jcEgOvwgv0PRg2U4kfXdMm2A3jdc056l3ZCgjpXy73QUyQcme
	XDtFELU05+6asFmNyJzX/01g454+Sy+pKHulgkUQY51zSbunh3XaVcr+DZ1Jj8zhYM4uXnxVNrleu
	SGuKjio60ZnqNifFHRTFyd0Cvi+tyV0E/edh6pgENnxZzdDt9WtbL7cF2NhJ3yxjrAQj6JXPh2Oa0
	fBRwYgNzQksHgVqaCRog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGGAF-0000000AalK-0IK5;
	Mon, 12 Oct 2026 13:34:03 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGGAC-0000000Aakl-1lNA
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 13:34:01 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69CC03kf2786787
	for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 13:33:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Od+TrUClwjrX5+hkKzqIi7EJ7XLdt4/11sgnHdpGxog=; b=MCJNLrAequiREmjB
	PDk9C45kgpQ69YTtqe6lKCDhadl9DOqUy0allHu37/NhNakupBR7uCfHq/GPqV3/
	Uu01a7vkg1KecNWvSkc0RmfNtN171mVolaDVcGEOVPaZzvpDwPcUJpSNQBUwUBCO
	+TujjhnK7FdPmZNQraYK1Uyu+o3Wgf/6giuBAKDwjIiLg313Nk2sGy8coSG7OWhs
	vsN7AzPSa6U9ehv0EStwMKZX8VcTtpfdtuiNS4w0BlsGyVM/EIXqXAYtC058Gup8
	Co57l+H57iMC5q50lcV4RCcoakg/qMJjw9kbgpKnKOGFmoYtv+DIPg3Da7rHR+w4
	HRIoyA==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h8wffgwd4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 13:33:59 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-357e2bc3b1bso3463513eec.0
        for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 06:33:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791812038; x=1792416838; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Od+TrUClwjrX5+hkKzqIi7EJ7XLdt4/11sgnHdpGxog=;
        b=fjVLd2aRxgQu7p4QP7k1qPZ7XFHKwGc25osPaWgo1+MMuKT1h9JMLdh9L6IObgGEbd
         w3JzoArrRgygtMUfRqJC079QLHm8Lup5SKMkGaqTdt/vR/fZFUgh1AOsgyx+ToXiCJpn
         7s/wvmS0vw6YQGNgvjbpLa20vAhT9rTqYm3WSnkgqcTyT2rUwx2bSxd0pa8TvzhE00Zu
         65rjOFKe6arC7Q9c4g5l2kvWJWALbAFpg3RF33Wl/crOSkoV0IjglIOMV1C8aNTXpAft
         PJlYGoJlInGdGjbrB8RvVtWcgzS+pS2NmpveJkF97QBDxkMwScaIVCNSvWkQYpTVeDhB
         FCnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791812038; x=1792416838;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Od+TrUClwjrX5+hkKzqIi7EJ7XLdt4/11sgnHdpGxog=;
        b=H9NOGx9bxI/nwFiYeLGinNNx+jzOflGPbwja1zu5E/Stz8LKZpGgcLerHMnJ0vmBeS
         3FZMuIK++SqlNv+vN6NSxH3njmx52CouDtkeToXp34ruNO3NmsuHEMJuttYcirml73FH
         df41g3ggjgdOB5usP50z9dkdoEH61keGw/PiyuZFJXMEqAJwC4Pg54h9GEfGbMxH4hLi
         rIBk7kRlM5FDSV5r8N0FQ+v1gD8VcIhDYCmzckpkopRDc0/6N09haCcdpEAF/k+2x2Xu
         3M7asOdztA9rGQ6osWimhX4zpo0DDeT7k9j2pJP7n4kllPPlOdPMoOgcp5DQbYwL5q2p
         kbHg==
X-Forwarded-Encrypted: i=1; AKwUvBwJE3AX2mf4FA4dTGQSkrVq7tnQWPpEObLZouMlp0yZCBcfUZysGEaU1UQa7AYcGRTLDAcQQeRQYnI=@lists.infradead.org
X-Gm-Message-State: AFq9FYJgc4QoB8newikk34+I2xEUxTkItLPykVqZlhfjszUIiKlXrs+3
	CZVjyrtiqPz2EzH84tRhNs8RaB2+leQYdUzFQet5p4YPBPJig2sUnYpg88PatBNSCxwAmzsHx3i
	/aMfSDv3fyZ1GcwPe8CJkufllK5O1M3I8CuaPxNK/i21xCQOw9AcWg0F1W9L/EDdMbZe6
X-Gm-Gg: AYBFou3GUj/ia6YW+/t+1XN9jRBc5Vn/ksb/+bPE1bg3OIJTxuydvfP+FLlgxCKfrzQ
	cPUN3zusgcqe2TbjxFziubTXOygxEVL9fsbp47xbTE+IZEuRicdxmQHxGSoxSDkI4K7nr708DW8
	ABzyJKzTtaAqhIpu/Ivm/4aHdLpx/dgzLy4pk3DysV4/odLH0fN8IQzyB1bIaBspfM0RDczyOFc
	5FFXtOQj0MDPKdPWlT/fjLltze2tlzO+a0Gf2pbaLKc+k5mq+41R4rBVZp7ithY9TGNIYrhTG9+
	82Lit9gy0h8RrTXGYtupnq6o0d+SfYftM8osjNHWOJO/uulCVT/Mam/tSJJitDy8ZGG+LOrzSJ8
	i7OPO7hIgE3GvVlGDJ9mPtq3/rfU=
X-Received: by 2002:a05:7300:ac81:b0:34b:f456:25ce with SMTP id 5a478bee46e88-3537ddd6fb4mr19923688eec.3.1791812038302;
        Mon, 12 Oct 2026 06:33:58 -0700 (PDT)
X-Received: by 2002:a05:7300:ac81:b0:34b:f456:25ce with SMTP id 5a478bee46e88-3537ddd6fb4mr19923629eec.3.1791812037692;
        Mon, 12 Oct 2026 06:33:57 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3537ca1b556sm44740397eec.9.2026.10.12.06.33.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Oct 2026 06:33:57 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Mon, 12 Oct 2026 19:02:19 +0530
Subject: [PATCH v2 09/13] phy: qcom: edp: Add Nord voltage-swing and
 pre-emphasis tables
MIME-Version: 1.0
Message-Id: <20261012-nord-drv-dt-v2-9-a2ab9af954d2@oss.qualcomm.com>
References: <20261012-nord-drv-dt-v2-0-a2ab9af954d2@oss.qualcomm.com>
In-Reply-To: <20261012-nord-drv-dt-v2-0-a2ab9af954d2@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Nabige Aala <nabige.aala@oss.qualcomm.com>
X-Mailer: b4 0.16-dev-d5d98
X-Developer-Signature: v=1; a=ed25519-sha256; t=1791811948; l=3101;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=CEoKlhJonvYt6NmQldHYRVO2WGAxSRpS2Dn8PYH86g4=;
 b=welf+AIsozWBI/rasdD7NUMQbrBCIazetk8Ol+j5VUE/ckwHcp+iugZMNgXGDin8z8/kk3W32
 AMA26NoKdhqCzKoOv6U3AEUS2eXuFfpFjw8/yxN0AFMc0Vz3S9q8pzT
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEyMDA1MyBTYWx0ZWRfX5fHF8525GgBo
 4q9HcZdR2nq0dB6vcrwpiMtWteMHcvWwWLo/s1gttFObnp1gvAlciTFdwaMyvggexfSlU81Jv9k
 Bs34tUqe9onnmL6I50ZBzUVnrqDUSylquAcerqu1X8Y5eisvcL1yEG+HuXhB5LE3c0UhDwcjEtj
 5oH/3vy3JIuOgXaQYXOe6DC1PH3SvGWRXjmsnnlK4kzEIpAgYgBLoRdhlxlLTzrnkUQcRwAFkgg
 v/anaycaBzkl13IQR7OglFhtlFXQ5hissfJRuCK9TAduF4R8h+b66OJ/3tj4a2oa9rLGSC+B8u1
 lbP6h/xGCs5am75Y/K0z3N+RP5RKYXSaGy4Hpa6K7rG1F2oB1Ojmb7a3kfXZgmwNoiKNsnA8zwY
 2X6j4+GeHhv3+kulxWLtJmupjdu8+M0rtCm3Tfxpe0W+3RfhlQkEF5Md1kghfzK5nrkNU0lOJ8s
 4lP3R1wNqoHxB7BiSMA==
X-Proofpoint-GUID: 4t59orXKolh3rXHcAbzwJvxU8y6HEiVi
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEyMDA1MyBTYWx0ZWRfX3UFP91+3Nhr6
 EdnHyRqMVLfI9l4nogS93oGu+KJ2oj3aY1CA0uO6j/dZZ6+GyUOga6aq+BspdH8n/iIuprf7kcz
 qP8MjnTQ3fGJ1WiKDSQ6FwzxGAOr9+M=
X-Authority-Analysis: v=2.4 cv=ZcWIpcVA c=1 sm=1 tr=0 ts=6acce1c7 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=eOzNwhHgGilJcvbUjtsA:9 a=QEXdDO2ut3YA:10
 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-ORIG-GUID: 4t59orXKolh3rXHcAbzwJvxU8y6HEiVi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-12_04,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 priorityscore=1501 suspectscore=0 spamscore=0
 lowpriorityscore=0 malwarescore=0 phishscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610120053
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261012_063400_586427_19A32046 
X-CRM114-Status: GOOD (  12.97  )
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

Nord requires different TX voltage-swing and pre-emphasis levels for
both eDP and DP modes.  Add four pairs of 4x4 tables covering
RBR/HBR and HBR2/HBR3 for each mode, sourced from HPG Tables 2-2,
2-4, 2-6-a and 2-6-b, and wrap them in qcom_edp_swing_pre_emph_cfg
descriptors.  The eDP RBR/HBR swing table reuses the existing
edp_swing_hbr_rbr directly; all other tables are new.

Assisted-by: LLM
Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 64 +++++++++++++++++++++++++++++++++++++
 1 file changed, 64 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index c5df1086607f..c63f721702b1 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -1538,6 +1538,70 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
 	return PTR_ERR_OR_ZERO(phy_provider);
 }
 
+static const u8 nord_edp_pre_emp_hbr_rbr[4][4] = {
+	{ 0x05, 0x11, 0x17, 0x1d },
+	{ 0x05, 0x11, 0x18, 0xff },
+	{ 0x06, 0x11, 0xff, 0xff },
+	{ 0x00, 0xff, 0xff, 0xff },
+};
+
+static const u8 nord_edp_swing_hbr2_hbr3[4][4] = {
+	{ 0x0b, 0x11, 0x17, 0x1c },
+	{ 0x10, 0x19, 0x1f, 0xff },
+	{ 0x19, 0x1f, 0xff, 0xff },
+	{ 0x1f, 0xff, 0xff, 0xff },
+};
+
+static const u8 nord_edp_pre_emp_hbr2_hbr3[4][4] = {
+	{ 0x0c, 0x15, 0x19, 0x1e },
+	{ 0x0b, 0x15, 0x19, 0xff },
+	{ 0x0e, 0x14, 0xff, 0xff },
+	{ 0x0d, 0xff, 0xff, 0xff },
+};
+
+static const struct qcom_edp_swing_pre_emph_cfg nord_edp_swing_pre_emph_cfg = {
+	.swing_hbr_rbr		= &edp_swing_hbr_rbr,
+	.swing_hbr3_hbr2	= &nord_edp_swing_hbr2_hbr3,
+	.pre_emphasis_hbr_rbr	= &nord_edp_pre_emp_hbr_rbr,
+	.pre_emphasis_hbr3_hbr2	= &nord_edp_pre_emp_hbr2_hbr3,
+};
+
+static const u8 nord_dp_swing_hbr2_hbr3[4][4] = {
+	{ 0x02, 0x12, 0x16, 0x1a },
+	{ 0x09, 0x19, 0x1f, 0xff },
+	{ 0x10, 0x1f, 0xff, 0xff },
+	{ 0x1f, 0xff, 0xff, 0xff },
+};
+
+static const u8 nord_dp_pre_emp_hbr2_hbr3[4][4] = {
+	{ 0x00, 0x0c, 0x15, 0x1b },
+	{ 0x02, 0x0e, 0x16, 0xff },
+	{ 0x02, 0x11, 0xff, 0xff },
+	{ 0x04, 0xff, 0xff, 0xff },
+};
+
+static const u8 nord_dp_swing_hbr_rbr[4][4] = {
+	{ 0x07, 0x0f, 0x16, 0x1f },
+	{ 0x11, 0x1e, 0x1f, 0xff },
+	{ 0x16, 0x1f, 0xff, 0xff },
+	{ 0x1f, 0xff, 0xff, 0xff },
+};
+
+static const u8 nord_dp_pre_emp_hbr_rbr[4][4] = {
+	{ 0x00, 0x0e, 0x15, 0x1a },
+	{ 0x00, 0x0e, 0x15, 0xff },
+	{ 0x00, 0x0e, 0xff, 0xff },
+	{ 0x02, 0xff, 0xff, 0xff },
+};
+
+static const struct qcom_edp_swing_pre_emph_cfg nord_dp_swing_pre_emph_cfg = {
+	.swing_hbr_rbr		= &nord_dp_swing_hbr_rbr,
+	.swing_hbr3_hbr2	= &nord_dp_swing_hbr2_hbr3,
+	.pre_emphasis_hbr_rbr	= &nord_dp_pre_emp_hbr_rbr,
+	.pre_emphasis_hbr3_hbr2	= &nord_dp_pre_emp_hbr2_hbr3,
+};
+
+
 static const struct of_device_id qcom_edp_phy_match_table[] = {
 	{ .compatible = "qcom,glymur-dp-phy", .data = &glymur_phy_cfg, },
 	{ .compatible = "qcom,sa8775p-edp-phy", .data = &sa8775p_dp_phy_cfg, },

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
