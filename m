Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 068A9CA9ED9
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 06:45:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=43f61KNHnllsbjhxfzjhUVmJWTwk7ByfN8Q7/it8IX8=; b=KIftsEHb2nnNqI
	OIyD0Q3IXyIkzLORtSLAWeV+EJBqf+1JFv5vTW2zyazDYj7nTnnWDPlmG7TZI7eYbTnZv6rpOUdvP
	ACqYK2JsNsuGsL5Jx9Vcd9OsDpzQ1cYlZLM26uvg8P2yYnvwH0gVyoitTYy45yMY62gFkzcsTvZQK
	OzgP+PRN6ylg2uUr5oQQmntAGJ1aB0K4OqWT87o2bgsIhN4ubtuUToRapmewg6cKefmybXZjhEsDP
	AMDGsNJQ0iSbhPr7pfGgn19sZhEMe6rezlwx0AhDO34eP3KmpQdVX13bvZGuxqYXfpZ9KhkcNKwBF
	s1GaXOnSjtFdioatTsbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xG9mu-00000009laW-2ZKX;
	Mon, 12 Oct 2026 06:45:32 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xG9mq-00000009lYd-1BvO
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 06:45:31 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69C55rIT303044
	for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 06:45:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ef+Na+GsihrxdoSAJed3PDwEa1uv3hQJy1tnM3Tzqs4=; b=QjTAgA7lPTVWdWaI
	BqzPLXjEMpEaeuQ3xV6q1/t9w5yHFcnGp7kHy1KQVBV3TYvyF3VkzyEYhuxgUlPG
	6a8p4N6E/ffS2qq+2SiC2IGHU09dDWx3dja+GCTrDgZutudXHjJurje31XD6bGoj
	MW2RRmlER5TcCpKs1l6CvRtLGAJrgovLa8/F54/IMwaqyaDN5YUKeuZw8+Eo3YRX
	CgWsWz7qztPyd1M/rNvHEu+rZzQ2Me08YuHbLKPQa1SGQid6CpVUkfg9Gfi+RmtD
	gVlRzIMndQQDy9sfSQyTQHlevw3yzdaJq84p3mr8kAhdH+vCXzxQEJgOtQI6096L
	9FH69w==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h8j6dhcpp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 06:45:27 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-88d2d26a8d5so1620976b3a.0
        for <linux-phy@lists.infradead.org>; Sun, 11 Oct 2026 23:45:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791787526; x=1792392326; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Ef+Na+GsihrxdoSAJed3PDwEa1uv3hQJy1tnM3Tzqs4=;
        b=jAZnOCKd9VKUJuk+4VYT49MCxPahjLjiHHaAu4lThgG034PuH17GJ+NZzXjdm8wb3B
         QAUyTXArT8pSk6g7LOIIR8FzwDlVgdJe4d42QM74efLwm3NJKvLmnZkKDZC6PY+NjyYx
         I+DrBijIqBICwsPJ1a1gPCk2BqbZniDe4U7BZXCk24XrjfLte/K4VhBSsUrwIEncoPaU
         CCBeBwTfBw5YL1iqF9bZyPLkg+mWMctvMaICiCXc3ubyl/iGWpPYlzlbVXRV3/FEvEiR
         HHgZAzMC7UITknbhxhBi6Oj+X2lRmr3Nt/KC7nxaZjP4rHb7yO4dZhhkWg9riEPJOjfX
         eImQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791787526; x=1792392326;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Ef+Na+GsihrxdoSAJed3PDwEa1uv3hQJy1tnM3Tzqs4=;
        b=Judmdje9xpQcrfYdw1nsbwmGAU1lMOBV7QpbI0x/vDB78wwL/7FXlsdRB87GeyYxyZ
         1xJokxOwIH0VO8cDpo8WQdENcBDtqwLbYi4wspTAJPjExXWGZVDz5sEjRlcabevzg/U4
         m74XwrAUaTrdceAUZWeBBDIze0ZMoHvHvzrFwZyVugX8Yfs4wjf4hKpEQfw5HBmNS31s
         571O1YNO959MIYD7vEeTFlJBx8SKgOa6u8QHcrHJBp2TQjmRTncQiB7VZHY2kohHuyDP
         a81z2Wvr223f9lgNr3o/73GD/NTmv0po3IfxhNe8szlhlLhRtQPsy18axy49Ddn7xht+
         VieA==
X-Gm-Message-State: AFq9FYLZ5Ae/SlmThfoWRhODL+ASBd09K9Xzl9MIT7/j47El1GQwZlvC
	ikfDaTZuHYf3Sp25BilRXQuKyFY2fbqLxZjwuulsti9XxgpL+TTfqjicHdnFNGjHBFcryTHPi09
	ot5Lgq/teIloY2BneVyjepP9FyCVKAvk9QETuBgRSjCRHJs11dZVMtKeZFnrXFWzZVt96
X-Gm-Gg: AYBFou1+kVnXcrIXlwatF7uSlE/3rmOGLzzLiwywackbIuF+k4weDjOTLhDTpy6QzRO
	lye/Zh1iP9bYNhHvOgxN9vLQ/a1MSx9uDGsxD/dp9SibNuAPd8+tkj8u4fEIObfYSEuq1JP7P9K
	Mjzu1kc9cLJROQVNS5vg04Wk/nCc2owz9bs8urtL/RD0D7pdoMhFygUR8pm9Ox98XRBmjo/vz1J
	JW6utOc0zIaXj4MOd8DIiah8nz5RCDUjlhS9zvqhgo+Y7Qg2+LrbB+Ay+W3i9NTli7HrSnNa09F
	glFHHCNNtds4Dz1v/0/CrfIy6lW7uaZnAMHGa13cUE5OWNlPUW2Z93JI9nWhAAsFsgfQI/tP6Wn
	e0yPzyVtYZ9qNhS9tWD0dNyHN4KdRPIfaC0qkvWCBwkb5kzbKaMAwMyVrHm8KlX/TxbMJOnR9Qd
	764LOGPaBvtA==
X-Received: by 2002:a05:6a00:2b98:b0:87d:d4e5:c54b with SMTP id d2e1a72fcca58-897d316ca3fmr4913548b3a.4.1791787526166;
        Sun, 11 Oct 2026 23:45:26 -0700 (PDT)
X-Received: by 2002:a05:6a00:2b98:b0:87d:d4e5:c54b with SMTP id d2e1a72fcca58-897d316ca3fmr4913530b3a.4.1791787525678;
        Sun, 11 Oct 2026 23:45:25 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-896c3dc6c93sm3534420b3a.33.2026.10.11.23.45.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Oct 2026 23:45:25 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Sun, 11 Oct 2026 23:45:04 -0700
Subject: [PATCH v21 02/14] phy: qcom-mipi-csi2: Parametrise the common
 status register offset
MIME-Version: 1.0
Message-Id: <20261011-kaanapali-camss-v21-2-04fd28d815c6@oss.qualcomm.com>
References: <20261011-kaanapali-camss-v21-0-04fd28d815c6@oss.qualcomm.com>
In-Reply-To: <20261011-kaanapali-camss-v21-0-04fd28d815c6@oss.qualcomm.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEyMDAyNiBTYWx0ZWRfX3Mxn/ETA6dQN
 Xc7NNm89GFcQRMDpaL8BNKegYQEbY5Cled8NhjGPy5IWOk6DbAn9Wh+wYX0cF1KcbhrooWFvFQb
 EDVV5mesitqS+eT7w8d+Yeg7jKvfnEFjAQpG4tLk0TdVpJBmp/mT/E0ZMtLLxq4sYP+i209HZIN
 GvTifhogsrE6CYcERweq87aIxIZzsObAMI8SrndV6bEmQ8nvLfyYDTY5qxLzLbO9o2V0eDf7JhQ
 gidCsC9+dCULVpk/hkaIg3TnTi+WHEfSvL9koObdXhg+/Bp4q/sTn8aFaRFsL9fnMunripk3N9H
 QMStgWxJjKXMBJX1iEn0k3R5SvR+BYZq5LqiEbQEnEjwWRyK9fmueNmIJ1HB1q4hs0ytBayf26f
 0hTRVWNFvqvf5/gbA3YCn+QB+htosHZl0dmQgh2fsrK1ROpAe2YS28hPa+l1Eoxdq+E0gk3grA4
 eoi8j28ewU/c8u3UB2w==
X-Authority-Analysis: v=2.4 cv=aK5lOr9m c=1 sm=1 tr=0 ts=6acc8207 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=P6Xs4Y00w1yHQXPR5eoA:9 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: fQsuEUbBxuQ189xp7r8l14adwC2Rw94G
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEyMDAyNiBTYWx0ZWRfX6WjHiFahqRDe
 lQSayi7f2GOhhiGOMvIgdkpLowtZTxIgMCb9HZOvJYW4DwT0UUBu3a3Xr/qcv2nT90Co1T1Ae6n
 9O224aKKMRn8XvIPrwLN6N7250/aAXY=
X-Proofpoint-ORIG-GUID: fQsuEUbBxuQ189xp7r8l14adwC2Rw94G
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-12_02,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 impostorscore=0 spamscore=0
 suspectscore=0 lowpriorityscore=0 clxscore=1015 adultscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610120026
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261011_234529_524980_86F19035 
X-CRM114-Status: GOOD (  14.97  )
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

Reviewed-by: Bryan O'Donoghue <bod@kernel.org>
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
