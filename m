Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9AAF4CA5FE8
	for <linux-phy@archiver.kernel.org>; Sat,  3 Oct 2026 09:02:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dU6fxd6rox2v1pcH2VCTljSIoIYQehiCOZRHAtGSEIw=; b=Vc7C9+gKCxQg0a
	Qzvr/OkKcJk+TsRbhzK/XRVEU5DRMMk7f0g4EokZ+BncLX/PSEqD5jYIqcv84qzVmDbB26nTXwgE1
	zXD9/sZx1pHUXpSdpohJbGoFwmjIoK3ptJcmsFB7hRxTKd66PQkRQ/A4R6kJlbkmhB0h6RKaurpbT
	daqvb98sP5AKXVp1LwK7mlStzfctjq2WXqespi/JM8BsnqAlXmfj5lUZhJqirPVM9v+5o35tYlTZ4
	9Ald8glhq0v4EKObFrWudloJg0VzsxQpsRq/mOym6hUojgAQFgrwfrktmE0kZnQGKnVy4rWjI1CYo
	Q9LioHBgMD6Oj5lZV6Iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCvde-0000000DEI0-17uc;
	Sat, 03 Oct 2026 09:02:38 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCvda-0000000DEF7-2g0N
	for linux-phy@lists.infradead.org;
	Sat, 03 Oct 2026 09:02:35 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6933YcRN3415749
	for <linux-phy@lists.infradead.org>; Sat, 3 Oct 2026 09:02:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YCTW4H5IPL7VDi+PNSnrXV87F875dEo/Q9jyiNIcq6k=; b=B5WKjWIKfxcdjGu6
	tTcw/DayoxDJFpFG42l9y13TdTxdx4XkM2HRv3xZ4ldsDjc6OEXLOsXU9i+tQTxJ
	XsQoQE/M+b6KAqgzEyMb3zOdGzf3MaFxnEJmKM57I2vhdlLAHc4++zDmc/+GniqL
	0Wwb/D1YO36vajvthYxY3o38TU9zwEHgos+Tw0xQFACRli/GRmZFMCXlMS3SRpvW
	aY+/Ct9baDu0uEHfyE/zHf4MqBLpLHi4NmI9jqwO+eXNxB9l3JxA2zBfWunU2vm1
	+QosFTMDRciZohUqDkBWMvNPcu9S+nEfwBZH0VbibEugcR9KZ3g4A/JnHQRGzDzo
	RZv2QA==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h2sx30gj8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 03 Oct 2026 09:02:34 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-3510562ef98so192474eec.0
        for <linux-phy@lists.infradead.org>; Sat, 03 Oct 2026 02:02:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791018153; x=1791622953; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=YCTW4H5IPL7VDi+PNSnrXV87F875dEo/Q9jyiNIcq6k=;
        b=kEFS9C+so7GDAJpUYA3y5qY3bQqGEw4tKOJUcIZgxm7r6DNJQcb0YyL5A4Ej1sfHvg
         Pl1onmj5HBVJhX6azDBarRarr/a3+gCtru6RPIhlOJGr++2tE+lQyM6r2K1SXOcVYcON
         zDNxR9HJ0E90RbsSnTWj80oKlUBvzv3r7i4+TEkjC8Gi1YYx8Snt+lpcv00ozWQtQ4RM
         n3A1372PwqEPxpZaXz+pA4VtJYSPK2sBGlTwd6fXf6uDfV3QQZJPOuVBhiEKyBL4s9f4
         SCYIqCDsqCB85sSivp1fwCD30Xafu8VHI4WYd21hoXoOxe34vKnnSbUizVcto6GZOgf/
         2V+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791018153; x=1791622953;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=YCTW4H5IPL7VDi+PNSnrXV87F875dEo/Q9jyiNIcq6k=;
        b=gWvZ906tvg1JGrQHAycwh2yM35UNcxNNz3o4r+/Gbo9RoSTDPlDU+AteP7iZXPdUAq
         VsQtuFHIjZpPR+tODuJyqy1R7LibHFYC694wzNYsEtzgBzWNW88ksa+d/GvNKIyC7UnX
         dNa2vBGYbD0Hq3cjg+CCTQizgE0A8CY9oPtbVqbGtZ13DipeKW7qB7xhkzz4jS0xGZHJ
         1wyQGCufkGhykkJS90v1va+qK9A0Rn99hmE97cfZmCyORprIsLoY9WYaOsIwzjF3x8do
         82/66C+YX6mJU+6jyr1DH0vZ+MDVtU0F3OoaOkF3uH0A/tz9l0ArikaltxK201BrEHBW
         JWjw==
X-Gm-Message-State: AFq9FYJ5+MPwXcYjtbq+VrCyev0z4c720wRGWs4F/5kVL6BiA2kfuoDl
	DBc/33kRQm+Qy/prl1UzsuuPFoqBWjpjkjXqtOCgiNnGJxdEjNGzMUd6FvjMqG2RKiWUiFSP1p2
	0kdzxHiOLcEyveYqxZ9m0UnQKovEpcyc3JfjMhwYcl5JCfjV/FeHyl4o9X+MN0wHSuzEf
X-Gm-Gg: AYBFou0TK6LuzyqqjYhXbJSRKSnxzePmsUuqiMd9OADEKJ+LpIV2CgJHrRropo6+WzP
	m9SE8E5EKbl2jj5jjghTJOi+nS8ZZsgFkZHSoAZgH28ihr8mMuKKihMD4EXPI4DezqVrOFsO4nz
	NUxKFjEGMZPlXuphM+o8a1EOzoi79L4ecxcDA6meNdt/WcvQPl8HNWcugImxuEy+joQj1L5Myyp
	BRoOqZpiDnad2F5RjFyx6eU9wRc1os58/6ZLiXZFAdAy3MvtZZ2EskU1mroIxoVu8t94jko28R1
	2WVTV7oS9PxnOzeLq7Lh0rSyUnlETWawhYixoFQpX91VjWYaYiJ/eY0438Cu+DbK0Lf2ysGsSzb
	S9yEcEklYQlFaUmx+KqnIy2cU1So5luVZbDFg6DTiCdBgjJO2SHUQyyPjGIJBUao+g/grr0TGr6
	68aewGO6qD/Q==
X-Received: by 2002:a05:7300:dd0c:b0:34c:d018:f33f with SMTP id 5a478bee46e88-34f150aba7amr5407436eec.16.1791018153051;
        Sat, 03 Oct 2026 02:02:33 -0700 (PDT)
X-Received: by 2002:a05:7300:dd0c:b0:34c:d018:f33f with SMTP id 5a478bee46e88-34f150aba7amr5407401eec.16.1791018152432;
        Sat, 03 Oct 2026 02:02:32 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-34f14f9f2afsm29278695eec.18.2026.10.03.02.02.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Oct 2026 02:02:31 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Sat, 03 Oct 2026 02:02:15 -0700
Subject: [PATCH v18 04/11] phy: qcom-mipi-csi2: Parametrise the common
 status register offset
MIME-Version: 1.0
Message-Id: <20261003-kaanapali-camss-v18-4-87ba4ebe0db1@oss.qualcomm.com>
References: <20261003-kaanapali-camss-v18-0-87ba4ebe0db1@oss.qualcomm.com>
In-Reply-To: <20261003-kaanapali-camss-v18-0-87ba4ebe0db1@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
X-Mailer: b4 0.16.1-dev-17221
X-Authority-Analysis: v=2.4 cv=JY0pPkKV c=1 sm=1 tr=0 ts=6ac0c4aa cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=P6Xs4Y00w1yHQXPR5eoA:9 a=QEXdDO2ut3YA:10
 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-ORIG-GUID: Th-UXWnwPGbwbr6GOao7xokcR9dauynp
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDAzMDAzNSBTYWx0ZWRfX/NbbPy5eHJL/
 K0KJKq+mvcWJHYaQPf00DHNUYJ2Pdla6zgzOeIOEF7QQHiqYrJF7qRkesXKwUn0DDhwJ83vl8Uo
 9xc/9gBholuzjb8XrhVt3oi/Ru9VBWs=
X-Proofpoint-GUID: Th-UXWnwPGbwbr6GOao7xokcR9dauynp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDAzMDAzNSBTYWx0ZWRfX2XG9QMgOotBv
 gqDpxr1hYXBGIxpr93+OCGbSMabMRL5cO1+bYNfB7kKtL3x9P7EdvjRJRL9M+gemnYr/N8vm0OI
 pySTMcgcRPFEpTe2TDk42fLuYYwHYBU3FgkawY/rde7JimbL4k0yQ8XKSbA5U4EAzBCp+7CQksd
 iADrHVyPNhpJBw3QpxHfhPG7wEBONQYOb+L0J9pnBTrnaoc/xyJlJtsO7UGWcN5CMF9zvqk37VI
 ddsXuIKhq76wjgtj5VEYEChENYjSLyQxhrwy1U7LcJbBqJMF6/yTTEQPfVcOGlmZZMqMJGTU2D9
 nMljwErE7tXXFfQLg0Cb5TEbKaRcDIaTw1zk/D46w2dNu5dU/TZZQddQscNPGuJqYG4DSny5v5y
 qPPzbBh5VISitGTSXoN8goZy+5i2zDsq8vnuxiblLYCz8dNt+dn2BjSid+5OeWf5pvdHyNBnPfj
 fURQer/6AwnrIkm0ZcQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-02_07,2026-10-02_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 clxscore=1015 spamscore=0 suspectscore=0
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 phishscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2610030035
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261003_020234_692415_DB0B8C43 
X-CRM114-Status: GOOD (  14.75  )
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

The CSI2 PHY common status registers are not at a fixed offset from the
common register block across SoCs: x1e80100 uses 0xb0 while other 3PH
v2.4.0 parts differ.

Replace the hard-coded 0xb0 in CSIPHY_3PH_CMN_CSI_COMMON_STATUSn() with
a per-SoC common_status_offset field in struct mipi_csi2phy_device_regs,
initialising x1e80100 to 0xb0 so behaviour is unchanged. This is a
no-functional-change preparation for describing other SoC offsets.

Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c | 16 +++++++++++-----
 drivers/phy/qualcomm/phy-qcom-mipi-csi2.h          |  1 +
 2 files changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
index 966d79c98f9b..8cd331cfb4b3 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
@@ -19,7 +19,8 @@
 #define CSIPHY_3PH_CMN_CSI_COMMON_CTRL6_COMMON_PWRDN_B	BIT(0)
 #define CSIPHY_3PH_CMN_CSI_COMMON_CTRL6_SHOW_REV_ID	BIT(1)
 #define CSIPHY_3PH_CMN_CSI_COMMON_CTRL10_IRQ_CLEAR_CMD	BIT(0)
-#define CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(offset, n)	((offset) + 0xb0 + 0x4 * (n))
+#define CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(offset, common_status_offset, n) \
+	((offset) + (common_status_offset) + 0x4 * (n))
 
 #define CSIPHY_2PH_LN_CSI_2PHASE_CTRL9n(n)		((0x200 * (n)) + 0x24)
 
@@ -176,19 +177,23 @@ static void phy_qcom_mipi_csi2_hw_version_read(struct mipi_csi2phy_device *csi2p
 	       CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(regs->common_regs_offset, 6));
 
 	tmp = readl_relaxed(csi2phy->base +
-			    CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->common_regs_offset, 12));
+			    CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->common_regs_offset,
+							      regs->common_status_offset, 12));
 	csi2phy->hw_version = tmp;
 
 	tmp = readl_relaxed(csi2phy->base +
-			    CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->common_regs_offset, 13));
+			    CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->common_regs_offset,
+							      regs->common_status_offset, 13));
 	csi2phy->hw_version |= (tmp << 8) & 0xFF00;
 
 	tmp = readl_relaxed(csi2phy->base +
-			    CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->common_regs_offset, 14));
+			    CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->common_regs_offset,
+							      regs->common_status_offset, 14));
 	csi2phy->hw_version |= (tmp << 16) & 0xFF0000;
 
 	tmp = readl_relaxed(csi2phy->base +
-			    CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->common_regs_offset, 15));
+			    CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->common_regs_offset,
+							      regs->common_status_offset, 15));
 	csi2phy->hw_version |= (tmp << 24) & 0xFF000000;
 
 	dev_dbg_once(csi2phy->dev, "CSIPHY 3PH HW Version = 0x%08x\n", csi2phy->hw_version);
@@ -375,6 +380,7 @@ const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_4nm_x1e = {
 		.init_seq = lane_regs_x1e80100,
 		.lane_array_size = ARRAY_SIZE(lane_regs_x1e80100),
 		.common_regs_offset = 0x1000,
+		.common_status_offset = 0xb0,
 	},
 	.supply_names = (const char **)x1e_supplies,
 	.num_supplies = ARRAY_SIZE(x1e_supplies),
diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h b/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
index 7e55ae007370..d6366f809e51 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
@@ -51,6 +51,7 @@ struct mipi_csi2phy_device_regs {
 	const struct mipi_csi2phy_lane_regs *init_seq;
 	const int lane_array_size;
 	const u32 common_regs_offset;
+	const u32 common_status_offset;
 };
 
 struct mipi_csi2_genpd {

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
