Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B800ACCF2F6
	for <linux-phy@archiver.kernel.org>; Mon, 19 Jan 2026 12:37:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JhJcFIaI7R+Magv/SdOKqyAljHLqmFCcYirKmzLqLIQ=; b=yi4uCoZFOxSoNU
	w8GzIBorvqrKhVXynmj3CqJCNTT5q7j0heaWgy7APZJuRfkiPan1JrJpPXdU+BolEKag8A+iQPvv2
	qQrfd83XfoiftJ3B/i2AEpsmWmmVov+Ak9uW3m4/X7WGJRXc2qzZO2kXk6giOghvyi+TplrNxKWxb
	dubi+gsWAXpX3R8FdAm8I1EWTgKbU2tC37Ak2AduuiF/DGb8Y74D+084/8zceRgm5kMxulpj6bLH3
	NlJv5KTgBSras6yOz3HB7b4kLeB+w+KVvT6+VITplolcElA5BW6vGRknNJovHnrty6GWYolcsCvKW
	6tnN81FnyoXweqzQ2/IQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhoVn-0000000227d-24bY;
	Mon, 19 Jan 2026 12:37:39 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhoVk-0000000227D-49yW
	for linux-phy@lists.infradead.org;
	Mon, 19 Jan 2026 12:37:38 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60J91HeV748402
	for <linux-phy@lists.infradead.org>; Mon, 19 Jan 2026 12:37:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=8WVBmlebpTLAZoV1cZHD41
	7RyW/bIktDE2JF6nvOrdE=; b=F2KqMNYsUuDCAOq9KxMptzTFKnmdpV+LzneO7f
	/w8EB6YSu7VocmDITh/bnh2WhSbYTvk3LK8H1zO45DdcRwgPD0qwQumUUVXDaEWk
	20GtlCwBOMj7v//N9vmW57zck+yxky1O+8pNex6pxeHYw/ODd8oNBudOa2oPEXNv
	KWK3gldCFZqWshiB1/S6YTUHKeNyw4awQQWb7IiInZAHUBI6IDOWL+jwywPWYSpk
	xWIanih7UVgJJgJJtyo7kcpm5AlFC49Qlob8nFWbLPcEfOmAu6QRfhuO6rRJA1m2
	ZpJzJnBjjn4YJi/YsX847oKs8chxarPIBeQLTO2PydjnMW0g==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4br2t751mw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 19 Jan 2026 12:37:35 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-50145222233so117414911cf.0
        for <linux-phy@lists.infradead.org>; Mon, 19 Jan 2026 04:37:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768826255; x=1769431055; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8WVBmlebpTLAZoV1cZHD417RyW/bIktDE2JF6nvOrdE=;
        b=PJ2rva9rqj/jo6fOIuim1Xo20bYmyqgdlLA7z/CbegxnAhPF1X2fVmVykMuZ5FdwX+
         3kn5gQI371TRxYDjVTftpJ/+uYrXqrJmj1X3wdbSRdKZ4YkXYPq9jD0Ktgl8j9JiI3L7
         UEbo/H/mysjosfbXp2/FNMIhuG7+6ex4WzC6+QPil74JjoXrTADyfJwLN+3GA2eYUn1N
         SZT1MXAmIpmaOZxKR7pawDL4uxWjToMaebctu0PCgSHNUt2pbKXvXFvYhCz8sZeZdEYe
         MJZbkbrtD9FqQC3qiTmNFyPetzNGHdBcBzi9Ryw/uzlLgzMBES24RPoSdsPc96h9GoAq
         IokQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768826255; x=1769431055;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8WVBmlebpTLAZoV1cZHD417RyW/bIktDE2JF6nvOrdE=;
        b=Lrzsb16H+WFAycov0Jna8QFrFCjewcTKzIC3vFMLmITLp3G9QSRe9J2iucJyDGTghH
         KUwU7pB6bymsD+CqvJ7heSADdejf8JxGCDuY0egDrGGLVM26fiYAMrGiPUD3H2lHH8C3
         fkx5fTaxqsvvgDJlpBAMESWnw2dWKnrcLmWUb6Et7n2vsvqX4FpfCNh5fFZXGsK+nfUd
         qC/Vwg4CH9Z4g4VNt2KWRQZNiuDVnPzVlRxmJUFhjskZq2UdLa53NuWp5+umOlAphq84
         hbakhhYEdjgeylnUvU3V2uD8MqM9+M5ZIanBk7hYRjOcmXHQmCKym5VyywpK8mPtsHQs
         6P+g==
X-Forwarded-Encrypted: i=1; AJvYcCWjrFosmmchoFUVW9a7x8FH5tAmTL0Ehpcbcv39Lp+XHfX0g6D5m7vsUifnHMnoXJ3iiLEMQhGRtj8=@lists.infradead.org
X-Gm-Message-State: AOJu0YxLDO6aAc/TBjIRHJSa3oiX0gXjJ1AVMmsoiezHXH4mpxILHUW8
	j6y+ToCQOhB5uytgIC8RTG5pSH4/myh0VMtG5zK6QB1pZ3PWkGocfZVACkM5Z9zKFc0tCnNfNex
	IY6c+1lUqPXCx8RMZ2VHoa2UfBNDC1P5/axXiOEbv0ApiEVsSKTk4vCNu7tjtFfRIgIV9
X-Gm-Gg: AY/fxX5PPb2i4kpiK5Nsb8ii36uuvV5Z4AHjWOl8fcSgsb69N60ccU8t/iYN29bZUL3
	SxABy5M1/7Y7AYxzd5HL+MK4d96tREOr+CCpPvMLuzlzjFRgAl8ap1Q6T5BQQm8p5CbJA7NvFYy
	b0UmFv8eITDGYPN10YMbMLtoi+ZnWpgtWlH2hk0yrJug4M6nEgZkp0TpK28Cvx1jFflViXFL/cS
	dFY+5ViEIY64vmVLDHQPtFTb2jQeCNuKQfxy9+GCCNokwrS+amrnvE+3DjeCRroZh/MbbBgzN6U
	ngP0N+tXyS1MKUoXXx/ttMJUAKPSI6QflqORLQPmm90T+u43xrRFxmxb2wXS1YtyEtO5WAsgZIc
	kqbiayN213dbmlBB3/ESfIP7DnTXr7VC5dsW106pYkv3OkYH+1BKYyfofuY6n/wZLCvY+BKk=
X-Received: by 2002:ac8:5a93:0:b0:501:4c41:989f with SMTP id d75a77b69052e-502a1f89b69mr142296141cf.69.1768826255030;
        Mon, 19 Jan 2026 04:37:35 -0800 (PST)
X-Received: by 2002:ac8:5a93:0:b0:501:4c41:989f with SMTP id d75a77b69052e-502a1f89b69mr142295821cf.69.1768826254457;
        Mon, 19 Jan 2026 04:37:34 -0800 (PST)
Received: from yongmou2.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-502a1f228d7sm74133531cf.35.2026.01.19.04.37.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 04:37:34 -0800 (PST)
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Date: Mon, 19 Jan 2026 20:37:20 +0800
Subject: [PATCH v2] drm/msm/dp: Correct LeMans/Monaco DP phy Swing/Emphasis
 setting
MIME-Version: 1.0
Message-Id: <20260119-klm_dpphy-v2-1-52252190940b@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAH8lbmkC/22Oyw6CMBBFf4XM2pqW0kJd+R/GmD4GaRSKLRKN4
 d+tsHVzk3MzOXM/kDB6THAoPhBx9smHIUO5K8B2ergi8S4zlLSUlFFFbvf+4saxe5PGcK1ELWh
 bN5Dvx4itf62u03njiI9nVk5bCUYnJDb0vZ8ORWsrVMxKrizVreJOcsudMJYiVkIw4Vx2Vxp+r
 s6nKcT3OnNmq+zPopkRRrQ0UhvkTenwGFLaP576/nu6zwHnZVm+K/Rlg/UAAAA=
X-Change-ID: 20260109-klm_dpphy-8b3a95750f78
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, stable@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Yongxing Mou <yongxing.mou@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768826251; l=2874;
 i=yongxing.mou@oss.qualcomm.com; s=20250910; h=from:subject:message-id;
 bh=NZRyf1dFwiNbqdkWNPc6DEipJCrOLZWSeo1BDrPkkl0=;
 b=VAtzYSp7SCDmdm9jCDEYIBq4YMGH1LldcK/8dxc87qzqVUHUx/BCVnrSBMKBYZzYwI3Tg+LCp
 2Qm8Kk1W6kZBb8r1h2zt/jSZx9HPm4GlH64kk3FP1f1ZVmttn3HgHgr
X-Developer-Key: i=yongxing.mou@oss.qualcomm.com; a=ed25519;
 pk=rAy5J1eP+V7OXqH5FJ7ngMCtUrnHhut30ZTldOj52UM=
X-Authority-Analysis: v=2.4 cv=Fdc6BZ+6 c=1 sm=1 tr=0 ts=696e258f cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=4O7gz8BUHgUS6mrrnVAA:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: F9SuO5OSASUrMZUOjjiNDicAyDM27NCm
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE5MDEwNCBTYWx0ZWRfX+uASNf5mQKE6
 M+yY4nsOQQ5rVd8YRkSefnDrjV8Yp1mkKFwxHtX1npVfkHLx2Cj5yZvlgT0MuPYSZ7bf8A8vu1Y
 wBoCp89yTas07rv5bl75IFxMM69c500ys68toMj3BQjXZHw/yxVrGlAbYf/cfs99k1yWjE/sel/
 OInqaNTP6ROHHtoryuPbbUK4UY9NW6V4RDji1OOk+GxVm8VRH0beEAZIroJ6hSxvar9whgeB0iO
 pRnVzyzzLdfU/dq8dZD//wC12Lc1WBiqIsCmnLFzyUrBBH+g4qQ508nbfWP9XU+C3sNtAPHTUl1
 q19UBsb6ZIUfQ9OSYWXZ+2BlOrzWphoBezNmAwMuQgujk46mUOlAH76w1akNksshS2nYQZv2E24
 ef4WwI5ZNv3W7qLfUZ47BhLfkKMKrm+vTcJzQ+m5ovv6JVWoo8Ag6tuzO8rpZ1kz4xkvbAjFXF2
 hKAMhrJQ+U7zKS/PxoQ==
X-Proofpoint-GUID: F9SuO5OSASUrMZUOjjiNDicAyDM27NCm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-19_02,2026-01-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 malwarescore=0 lowpriorityscore=0 phishscore=0
 bulkscore=0 impostorscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601190104
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260119_043737_156548_7C95D9F3 
X-CRM114-Status: GOOD (  12.89  )
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

Currently, the LeMans/Monaco devices and their derivative platforms
operate in DP mode rather than eDP mode. Per the PHY HPG, the Swing and
Emphasis settings need to be corrected to the proper values.

This will help achieve successful link training on some dongles.

Cc: stable@vger.kernel.org
Fixes: 3f12bf16213c ("phy: qcom: edp: Add support for eDP PHY on SA8775P")
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
---
Changes in v2:
- Separate the LDO change out.[Konrad][Dmitry]
- Modify the commit message.[Dmitry]
- Link to v1: https://lore.kernel.org/r/20260109-klm_dpphy-v1-1-a6b6abe382de@oss.qualcomm.com
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 23 ++++++++++++++++++++++-
 1 file changed, 22 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index 13feab99feec..ae98f0a3cf3a 100644
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
@@ -564,7 +585,7 @@ static const struct qcom_edp_phy_cfg sa8775p_dp_phy_cfg = {
 	.is_edp = false,
 	.aux_cfg = edp_phy_aux_cfg_v5,
 	.vco_div_cfg = edp_phy_vco_div_cfg_v4,
-	.swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg_v5,
+	.swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg_v1,
 	.ver_ops = &qcom_edp_phy_ops_v4,
 };
 

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
