Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26D81CCD199
	for <linux-phy@archiver.kernel.org>; Fri, 17 Oct 2025 20:35:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zXbzApUzlqrhE2kQbxe/ma7iMPagzz3f8o+Bl6MOO4M=; b=nFIfYpqhPHI2qR
	pGEDp+oZPpFpwiuHBBDCgeguyyRsDnjdKHATOaifkTAU9/qN9iFbGlxnJOOjVJxdE3DY4z73XRTVh
	iOh0XB4LAyfRsdjgmt67IdhbT4ODPVRscC2bTE4WM+sBe61BECXXl8X7sWueJAPCLJWn5Z3P7sUY/
	Migt+F2DzhdZgE2eUB5oX8D0p6Hg9kGlINSc0BORX23tJk3a3T12VIKFj6T3B1c67Mbupsae/12wy
	wY9UaEoPk8WUK0Jq/Ewr/MBTt48ZS430d18ySIDqAyLJEzk4X/ppU+fK0bHuso7lHiAxp7qB/W6Dm
	ZbOKghLy4M/OmNh26Uqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9rAC-00000008yr6-2N3M;
	Fri, 17 Oct 2025 20:35:00 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9rA6-00000008yqV-1Qe7
	for linux-phy@lists.infradead.org;
	Fri, 17 Oct 2025 20:34:59 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59HJH5mW016333
	for <linux-phy@lists.infradead.org>; Fri, 17 Oct 2025 20:34:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=oEl0y/mrPeKiP6ZEhHI8gxlLx/zzQxxwPZk
	FL4UCulg=; b=YE0P+VuHAAntcQPIu2XocWH6w7YDJMBwSwQ9FxrOSkyTvJGBAkj
	S0EGsr93+tWrkjXOyJ2H117yW9hS1Pkw5hsn+meKiA66/SVBr4i1YPEVibM5YTZ7
	cYMaABFuXOFbZOhdTUFkroNa7WBRcEOCkRJO13w5vWthUm/xcgqsnge7QjF24zyx
	Aa6yziQ9K73GZmHkW0qrCzAFrhiU/e5/vF310rOIWkOWTdwIv+GhYNHuRbbLh66C
	fuqYCoOWFnd0Ao6knx20Mp+C0ngXFyoqk9wsOcXjkAUXZtrioC2vesFBSHtQuIVX
	+oCITS47+sqdIATiJNndv5PjzCn5pSMRI3g==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49sua8vcf3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 17 Oct 2025 20:34:52 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-272b7bdf41fso30952845ad.0
        for <linux-phy@lists.infradead.org>; Fri, 17 Oct 2025 13:34:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760733291; x=1761338091;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oEl0y/mrPeKiP6ZEhHI8gxlLx/zzQxxwPZkFL4UCulg=;
        b=eLlup1KPeJlqqLQHXpY5FjT69qGPk/JyAXQKGT0pXejI0sHQUpx3g3b0xBLjSSyIwV
         u+1jau1iXTt3H6FAEkoLF6h7PNbrYXEMQYF6y/ww25rj2aV2hFjd5vXorNTkdkSIPa+r
         /qW23o+0DjZktb+PzPGJ5Ba3znT8l08tE4XXduPDP/JFWohjWu1wrwc+E9yUdICGLx9h
         3OeRzbbZixVNGkKUCluHwf3AmFyaBRuS/0G/hTwW3B/EomrieQ/yPUghfoH7JdV4or/e
         WduLL1plhqHJzeapIO4/4JgRjDD8aEoWf4vfg8KOTFJVpndeMj6Q3tbuMT+zkXsjQsgd
         8TkA==
X-Forwarded-Encrypted: i=1; AJvYcCUG7oXpeVPGjonCRJ41pxtYzBs2011Qb24a/NAjEkRzdy78xR6sia92eoCGHAvQ5VhJiijVLYsoY/k=@lists.infradead.org
X-Gm-Message-State: AOJu0YwQp7AQWLZIcGZHqh08amZSKjNiynJQINpIr0x9Dn4w9AAtgUk8
	VEuK4QWIF0Q8Tke7aaRg3XSjG32ufJyM1MRwwVnf8GN0RqOEfaIYSrDoPp4wwkBopuJ59oFWalI
	hTt+s310BhcD9LxifxP93gMpkiXo8DLcpFwbXu6vzdjv/XU2+e/2zvt/sCmxY+GpJne//
X-Gm-Gg: ASbGncvfb7NTjdGlk1s+um/9BPSgvLFl0qArWkkZuRNRsaEDNN3guhkoN3MgIE9o/90
	9MV0AKdQwQWIfCsTJfJ2yKtiAKAIUrrX0HfWNe59dx6SEdksNm0MXClLyrKGSTp/MirA+gKKD+X
	0Aef31dUePu/Cv55GpEFQqzz8eJlpqZpdTu2iBqPKVmIVYrKpFrheQjOPDpClC8hcNvLJFvDmdz
	j+fLf5WlM8Z05q/tLdKxwP3SReEpufwEeG5YNunYiwBhGzhzFffqvUOnOy9+ndTSyh047ji+R2O
	20nUQ9aSbpxoXNYevBg0g797WcKatJRdFLFGP8KYjYKz+wb5fC6n7OUCjBGb2kxLvA7GtJqTyqt
	8BZvg/M8N4nz52xw6vfDWdzE7deVIiGiYo9r1
X-Received: by 2002:a17:902:f70f:b0:290:c3ad:8432 with SMTP id d9443c01a7336-290cb65b628mr57435315ad.46.1760733291372;
        Fri, 17 Oct 2025 13:34:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHyX8Pk5DWSmJTsM6HLUZcbzX8C/j29RAvl1Yd/dyx9V0AATvuYl8gaM8mWgVvFK0PQX18sbg==
X-Received: by 2002:a17:902:f70f:b0:290:c3ad:8432 with SMTP id d9443c01a7336-290cb65b628mr57435115ad.46.1760733290959;
        Fri, 17 Oct 2025 13:34:50 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b6a76b33505sm627897a12.22.2025.10.17.13.34.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Oct 2025 13:34:50 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH] phy: qcom: qmp-combo: Add polarity inversion support for SAR2130P
Date: Sat, 18 Oct 2025 02:04:38 +0530
Message-Id: <20251017203438.744197-1-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Proofpoint-GUID: o3hSrCQSLmOtQ4Y8pK-ge0xERkhl8YAd
X-Authority-Analysis: v=2.4 cv=e5MLiKp/ c=1 sm=1 tr=0 ts=68f2a86c cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=LWLmvgxapxzxGbpwlLUA:9 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE0MDEzNCBTYWx0ZWRfX2xPLheG/oOlq
 G2ugiEbGBSHvp5ky02VP2jKSEKjIMg1VX7nOC7L5T5Mq0HJaMKzQfenwnQxrvBm6Iu9H6RyERL9
 pDaeTjB5kZzAJgBmI4DRkQeEUJP3KMxAJk+uDp1h/eGlt+Gyw7FJHi5IsriURzYI/Ij5oBBqp7V
 G0luQxyiz5Dd9vZ0N7nYpQ+gmKiGYPld2yoJLGtrwLuwiND7OQ3NKfouvRlk8VqPCm15ADVmZY6
 TpCNlBeAPzxy7wiQIeib74R1F5qTRqHWb8cSRM//vKP7xJyzbyLCouf8KnYhc2fRtY6nleKOlM6
 cnq5jPlhrQgN9dJz3jIKVXasL3SF+oOp6mqvhGX7JiCqi4xftcj5YGuvMFuWFwCQp6SxWSf71L1
 D7ethHxmS081KhhafFHY9lScQTJB+A==
X-Proofpoint-ORIG-GUID: o3hSrCQSLmOtQ4Y8pK-ge0xERkhl8YAd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-17_07,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 spamscore=0 adultscore=0 clxscore=1011
 priorityscore=1501 impostorscore=0 malwarescore=0 bulkscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510140134
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251017_133454_497256_D95D5E7B 
X-CRM114-Status: GOOD (  14.08  )
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

On SAR2130P QXR Platform, the CC Lines are inverted and the lane
programming is to be done reverse compared to other targets.

As per the HW specifics, Bit-2 of TYPEC_CTRL register indicates
port select polarity. This bit is to be set for SAR2130P.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 7b5af30f1d02..813c88f0a16f 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -60,6 +60,7 @@
 /* QPHY_V3_DP_COM_TYPEC_CTRL register bits */
 #define SW_PORTSELECT_VAL			BIT(0)
 #define SW_PORTSELECT_MUX			BIT(1)
+#define INVERT_CC_POLARITY			BIT(2)
 
 #define PHY_INIT_COMPLETE_TIMEOUT		10000
 
@@ -1820,6 +1821,7 @@ struct qmp_phy_cfg {
 	/* Offset from PCS to PCS_USB region */
 	unsigned int pcs_usb_offset;
 
+	bool invert_cc_polarity;
 };
 
 struct qmp_combo {
@@ -2010,6 +2012,7 @@ static const struct qmp_phy_cfg sar2130p_usb3dpphy_cfg = {
 	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.invert_cc_polarity     = true,
 };
 
 static const struct qmp_phy_cfg sc7180_usb3dpphy_cfg = {
@@ -3046,6 +3049,10 @@ static int qmp_combo_com_init(struct qmp_combo *qmp, bool force)
 	val = SW_PORTSELECT_MUX;
 	if (qmp->orientation == TYPEC_ORIENTATION_REVERSE)
 		val |= SW_PORTSELECT_VAL;
+
+	if (cfg->invert_cc_polarity)
+		val |= INVERT_CC_POLARITY;
+
 	writel(val, com + QPHY_V3_DP_COM_TYPEC_CTRL);
 
 	switch (qmp->qmpphy_mode) {
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
