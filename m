Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23786CCA490
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 23:55:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h50YI6AhETVFLko8IDtzaGy2QR1OFA86TdzXG87i7J0=; b=tIAYrNXZb50Zka
	yeau3Z2mXU7XUucAXAfv+eoAGqhh4zMSuZtuWdGla9b1nEEk2O76hg3MvlrfPaRSQCatrWL5XeyKG
	TYAcX297yctTemz5BLwHi1BdrLXsoeiOwlS4Ayn/5e/GJdMZNbCqpxdRBoi+fK25Aa1zwsSgWUt9B
	XNuH+QPtvkRe5Tz/Lljb6VUOGOVUDaSFNTxqwlwurBsEel9gLM+IJmVTTFaWL3SyZW6M9E/aEChFJ
	prob831oTWRS4Z2ZJuRrmwyBbeJcDph50c7Pmh/a55dVs7WXCJR15ajcKqGfJSduyJjT3GfE0iuHy
	ifUz7MMRMd0tdC/NJ7+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHrln-00000004Dl2-22si;
	Fri, 16 Oct 2026 23:55:27 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHrlk-00000004Djd-1IBI
	for linux-phy@bombadil.infradead.org;
	Fri, 16 Oct 2026 23:55:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=TMK2D0Xsalq35d5JVXrOTRo/ALDXc2zvWoXTXQBmI34=; b=CjZi9cyEw49u4j4889mSsX0nFt
	8DfTRHFJqXCbLsx5JQyjbojb/hyOy7uleV3tWkKoK2a014uCgapVSlYjD6qz05jpXHRPHkri7vT4+
	kLPKitR1QUerD1u9ExAJa7pe/OneOIuwlI4XneKjdjQpqMAPHE8Pg4dj4cg1Xww1ZxGBWWuAUDBTD
	doBOtU8/iFVC9VMGz5VdlRJPpCSP/W9fQjANFtqTIHXw0ogopHtie91dXg5dDsVTKCiLk18fxQcjW
	awLrmFWyCAjG7FiMhbQfIv7VAuX5yXCn1VYtV2vnS+r1LZvvApYvL1tB3XFzr9A2CggDTU0j0zTHz
	CqRkKxLg==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xHrlg-000000022JR-3t8a
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 23:55:22 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69GNFGFj3083039
	for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 23:55:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=TMK2D0Xsalq
	35d5JVXrOTRo/ALDXc2zvWoXTXQBmI34=; b=PrakSfxGYDF+3BpkgJSkVQcY2tN
	sEAvw24p2OyunXf86jG0g8t/lvVBKXpOTJ2LCavjW+f48db6Gl/meJmfxMY2nqqu
	HVzbb5kO4oVCFX1th2IOrzLkm3TG7/OdPM8svLCpWjGLg8giAnJUWow3AJiIEfzE
	3fpeCgA/nCc/lKlBl9nqmYfsRJG4BUHKxS/v1lr+ewTBnp/afWIGirYyIRojjo3f
	w6ytzjkIApPVeZ+2cuTlWTmxuQZlKTVtR9t+SmcG/MpdxFY4eiG+VaT5VCvi4kqv
	IlbDjbbIq7xcgCSdlLXxwaBN5fXHEFHJbkSU9xFKLVUSZ1645MR6tAZJOyA==
Received: from mail-dl1-f70.google.com (mail-dl1-f70.google.com [74.125.82.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hbjmfan01-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 23:55:15 +0000 (GMT)
Received: by mail-dl1-f70.google.com with SMTP id a92af1059eb24-1383723dfddso882470c88.0
        for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 16:55:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792194914; x=1792799714; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=TMK2D0Xsalq35d5JVXrOTRo/ALDXc2zvWoXTXQBmI34=;
        b=Mc4OCkRqiQd5xDmaVGQCFpV+eKaKpl6M6iLaV03u4tvc6lyInDoRGMPTqhjzeD0bbW
         2o/pVEmEOv4NKdeFPU6XXTaUYAr6YHGxyOUptqeGT6V1QaNzveCgkHr1iLqVfhqSWYy0
         q4+YD1qDLO8zL4dwZ/oG+gbMfDff69HAMYPGDcTnzaCZMRWqMWFK+K/ZFawk3bxTUwBU
         QjDzgmYmmMKviVl/ejufIvqNFniz6BzD70V25KUeUoqVRbD4fGRJH4yYE2qnCEItC6DJ
         AuC/sNz9DPDPpMC8DJsoo68OOurf09anpcS8PSRJgq18Lz+g+aIZF7bn+ldUguyykvOc
         9AVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792194914; x=1792799714;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=TMK2D0Xsalq35d5JVXrOTRo/ALDXc2zvWoXTXQBmI34=;
        b=kP8bHPZjF7Po9TTOQa9qctoHPg25guYWxxQB/WXJbOvqf8OcEv921RSamvy3X02Eef
         fC7UP7yBm03XylLSEig1nnE6lztSkkIO0miMt3tdatjNIKoQ8E+q21DxTHoAx3Rxo9T7
         bzMbCcj9SjyJ1XJUVaHzz6fMipChGk1zl77X+Uxrs54jviqKPta5x20pxgiBYUG57htw
         hxwUho3hn7cdtwog3OYFne380msfajw2bh4IkJTa2NdcVvVHIlp1dWXloUqe8vZJu8AA
         4LbABkl0HxVmuPGV9+pyLzFb9Qd7GalByXW1p/2SPAr7SxB4W+PC/33O8e+IgNXJp/6c
         dAZw==
X-Forwarded-Encrypted: i=1; AKwUvBwupdorJTk5UGww9MbhbVW4PzIY8PteIaeyl2lojY+eQw+uK7MaQ0KtyKQj8BcfZ10X0L9OLv/J0sU=@lists.infradead.org
X-Gm-Message-State: AFq9FYJNRArJpDAfbb69tJrAo6M1ZtOCKN2tQo9McDFHbZPieotq4fFa
	gYacw7WnbSV0cX0/QA0e0nCVU9jOYTLjkG08rNp8oWZtdXjUF+nXry5WsgVsQtDjQLTvbyML/hB
	Pi9hwuNAytHaJ951/fk3Y4uusqZdOfckYT0yqxGMXR4BHfZuqKu5JBtnR5ChpcSY5bfwo
X-Gm-Gg: AYBFou33I+zlnVqcsvt28S2sfikkmRTyySSYy5YM241IYxCl0Km+m6Jgh1KDz9XVd40
	mOJqkKSlyeavqJz/U96/UE6xXLH6SUIYOhwW0vnl3pDjHfZoVWqmsaxxcSUwP/Gcb7pA4JjUowk
	PubRJeUDP8my+rH8oWwgeYPfJ/4kdXUcoNAIGMeIpx0UvUCqpqWAp+ckPV+Q5QMI9NzEcc2NjzE
	sK71cUYr4XBbu+kKZD3LtlF7kHIEH35PaJMwZXfi23Cq24hlErUQKuvcQoXb+AvbAdzbj7xv0VX
	eNzOMh274qJNuc2wOWhIST0Ul1WLWwDnYfiZhpNkUxP140mgnHaeEJ7n5wN46kjuuiEXJDWckLd
	iY9PQKaWNyH/zFlhox7MLk/GDd7NS0/xuz0SVW+EP5t9gLeIMcihcPQ==
X-Received: by 2002:a05:701b:2908:b0:176:2095:1ac4 with SMTP id a92af1059eb24-18512579547mr1437630c88.18.1792194913691;
        Fri, 16 Oct 2026 16:55:13 -0700 (PDT)
X-Received: by 2002:a05:701b:2908:b0:176:2095:1ac4 with SMTP id a92af1059eb24-18512579547mr1437606c88.18.1792194913104;
        Fri, 16 Oct 2026 16:55:13 -0700 (PDT)
Received: from hu-aarunnan-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-183190aa7bbsm8556183c88.5.2026.10.16.16.55.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Oct 2026 16:55:12 -0700 (PDT)
From: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
To: bod@kernel.org, vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org,
        mani@kernel.org
Cc: gjorgji.rosikopulos@oss.qualcomm.com,
        hariram.purushothaman@oss.qualcomm.com, akapatra@quicinc.com,
        jigarkumar.zala@oss.qualcomm.com, loic.poulain@oss.qualcomm.com,
        vladimir.zapolskiy@linaro.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 7/7] phy: qcom-mipi-csi2: Add sc7280 D-PHY provider
Date: Fri, 16 Oct 2026 16:55:02 -0700
Message-Id: <20261016235502.2274268-8-anusha.nandi@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20261016235502.2274268-1-anusha.nandi@oss.qualcomm.com>
References: <20261016235502.2274268-1-anusha.nandi@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-GUID: jRpksY85TwcPvrWIwKh9iCXwkyknj-Zp
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE2MDA5NSBTYWx0ZWRfX4Srp/eqaUreC
 sQWDhaSHW/YvzUWOjMHaFf+Gzc6hitUnFfMvqbygjRC8ijKCmHy5Y/UIuy9rcfLdoplStrkMfWO
 8LwQbEnwXrfi/ORQqTqdkXmZgxcjf2s=
X-Authority-Analysis: v=2.4 cv=SrAFe/O0 c=1 sm=1 tr=0 ts=6ad2b963 cx=c_pps
 a=SvEPeNj+VMjHSW//kvnxuw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=EUspDBNiAAAA:8
 a=AWjmOwsh-vm-DMLkILQA:9 a=Kq8ClHjjuc5pcCNDwlU0:22
X-Proofpoint-ORIG-GUID: jRpksY85TwcPvrWIwKh9iCXwkyknj-Zp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE2MDA5NSBTYWx0ZWRfX9uNsZUcTXWWw
 HX5RQd04x6TNFvq+SUdu6aS24cnFfDEUlx2UbInkpk9Szulc7z4MN0RzmrlEnuqKjRJzUwcXoo7
 XGF6jZa+3kc1ElCkpE5QzJuGTUJuloPyJn68fzd4nMGG17u02OZPSZChAtWXLH8tg+PrbfU27KR
 Ly75mNNKqYB3Lw7CFK9RIhwSKEk0PYyEBLU2DexL0yC7sO2XWmJH3w5wwK5Z1UDHmntdsnVi0Xe
 pPuYRS9G32KOa1W9H1lp2B3ifFu/fOXJQViWe3i5VD5C/Dv4UBIL42iz1feq/YFAL2rk+OEJRxx
 GQgDPzVV3a7i5yPxpUYK63VI742pApUfL9OQvZJcKZamu88IXzwHEHh0lgEbxQFQKbhKIEv5Laf
 aQHldD/HoyopJkG0Si4WRooiQGuo04AHXuNJy4/JBir+KTbp7yHXJur38pj3cjk3IyU96tcHk1b
 NLpztKuXwgeRLglwn/g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-16_04,2026-10-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 bulkscore=0 spamscore=0 phishscore=0
 clxscore=1015 malwarescore=0 priorityscore=1501 adultscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610080000
 definitions=main-2610160095
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261017_005521_415976_9A0210B6 
X-CRM114-Status: GOOD (  14.04  )
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

Add the SC7280 (also used on QCS6490) CSIPHY to the generic MIPI CSI2
PHY driver, bound to the new "qcom,sc7280-csi2-phy" compatible and
reusing the existing D-PHY 2-phase hw ops (phy_qcom_mipi_csi2_ops_
3ph_1_0). The lane_regs_sc7280[] init sequence is the CSIPHY 5nm
2-phase 2.5Gbps 4-lane D-PHY register set ported verbatim from the
legacy in-tree camss-csiphy-3ph-1-0.c table; common_regs_offset is
0x800. A new CSIPHY_DNP_PARAMS marker skips register entries the
legacy table left as do-not-program placeholders. The soc_cfg
declares the core/timer clocks (matching x1e80100's and sa8775p's
clock-names convention for this pair) and the vdda-phy/vdda-pll
supplies.

Like SA8775P, SC7280's CSIPHY has a single power-domain, the Titan Top
GDSC, matching camss.c's sc7280_resources.pd_name = "top" and
kodiak.dtsi's existing camss node; it is not OPP-scaled, only kept
enabled.

Signed-off-by: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
---
 .../qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c    | 139 ++++++++++++++++++
 .../phy/qualcomm/phy-qcom-mipi-csi2-core.c    |   1 +
 drivers/phy/qualcomm/phy-qcom-mipi-csi2.h     |   1 +
 3 files changed, 141 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
index 85e89235f7c9..f3d67d75105e 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
@@ -43,6 +43,7 @@
 
 #define CSIPHY_DEFAULT_PARAMS				0
 #define CSIPHY_SETTLE_CNT_LOWER_BYTE			2
+#define CSIPHY_DNP_PARAMS				4
 #define CSIPHY_SKEW_CAL					7
 
 /* 4nm 2PH v 2.1.2 2p5Gbps 4 lane DPHY mode */
@@ -258,6 +259,9 @@ phy_qcom_mipi_csi2_gen2_config_lanes(struct mipi_csi2phy_device *csi2phy,
 		case CSIPHY_SKEW_CAL:
 			/* TODO: support application of skew from dt flag */
 			continue;
+		case CSIPHY_DNP_PARAMS:
+			/* Do-not-program marker: skip this register. */
+			continue;
 		default:
 			val = r->reg_data;
 			break;
@@ -495,3 +499,138 @@ const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_sa8775p = {
 	.genpds = sa8775p_genpds,
 	.num_genpds = ARRAY_SIZE(sa8775p_genpds),
 };
+
+/* sc7280 5nm 2PH 2p5Gbps 4 lane DPHY mode */
+static const struct mipi_csi2phy_lane_regs lane_regs_sc7280[] = {
+	{.reg_addr = 0x0030, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0900, .reg_data = 0x05, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0908, .reg_data = 0x10, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0904, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0904, .reg_data = 0x07, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0004, .reg_data = 0x0C, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x002C, .reg_data = 0x01, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0034, .reg_data = 0x07, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0010, .reg_data = 0x02, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x001C, .reg_data = 0x08, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x003C, .reg_data = 0xB8, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0008, .reg_data = 0x10, .param_type = CSIPHY_SETTLE_CNT_LOWER_BYTE},
+	{.reg_addr = 0x0000, .reg_data = 0x8D, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x000c, .reg_data = 0x00, .param_type = CSIPHY_DNP_PARAMS},
+	{.reg_addr = 0x0038, .reg_data = 0xFE, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0014, .reg_data = 0x60, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0028, .reg_data = 0x00, .param_type = CSIPHY_DNP_PARAMS},
+	{.reg_addr = 0x0024, .reg_data = 0x00, .param_type = CSIPHY_DNP_PARAMS},
+	{.reg_addr = 0x0800, .reg_data = 0x02, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0884, .reg_data = 0x01, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0730, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0C80, .reg_data = 0x05, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0C88, .reg_data = 0x10, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0C84, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0C84, .reg_data = 0x07, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0704, .reg_data = 0x0C, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x072C, .reg_data = 0x01, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0734, .reg_data = 0x07, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0710, .reg_data = 0x02, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x071C, .reg_data = 0x08, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x073C, .reg_data = 0xB8, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0708, .reg_data = 0x10, .param_type = CSIPHY_SETTLE_CNT_LOWER_BYTE},
+	{.reg_addr = 0x0700, .reg_data = 0x80, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x070c, .reg_data = 0xA5, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0738, .reg_data = 0x1F, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0714, .reg_data = 0x60, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0728, .reg_data = 0x04, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0724, .reg_data = 0x00, .param_type = CSIPHY_DNP_PARAMS},
+	{.reg_addr = 0x0800, .reg_data = 0x02, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0884, .reg_data = 0x01, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0230, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0A00, .reg_data = 0x05, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0A08, .reg_data = 0x10, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0A04, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0A04, .reg_data = 0x07, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0204, .reg_data = 0x0C, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x022C, .reg_data = 0x01, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0234, .reg_data = 0x07, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0210, .reg_data = 0x02, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x021C, .reg_data = 0x08, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x023C, .reg_data = 0xB8, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0208, .reg_data = 0x10, .param_type = CSIPHY_SETTLE_CNT_LOWER_BYTE},
+	{.reg_addr = 0x0200, .reg_data = 0x8D, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x020c, .reg_data = 0x00, .param_type = CSIPHY_DNP_PARAMS},
+	{.reg_addr = 0x0238, .reg_data = 0xFE, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0214, .reg_data = 0x60, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0228, .reg_data = 0x00, .param_type = CSIPHY_DNP_PARAMS},
+	{.reg_addr = 0x0224, .reg_data = 0x00, .param_type = CSIPHY_DNP_PARAMS},
+	{.reg_addr = 0x0800, .reg_data = 0x02, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0884, .reg_data = 0x01, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0430, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0B00, .reg_data = 0x05, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0B08, .reg_data = 0x10, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0B04, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0B04, .reg_data = 0x07, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0404, .reg_data = 0x0C, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x042C, .reg_data = 0x01, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0434, .reg_data = 0x07, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0410, .reg_data = 0x02, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x041C, .reg_data = 0x08, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x043C, .reg_data = 0xB8, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0408, .reg_data = 0x10, .param_type = CSIPHY_SETTLE_CNT_LOWER_BYTE},
+	{.reg_addr = 0x0400, .reg_data = 0x8D, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x040c, .reg_data = 0x00, .param_type = CSIPHY_DNP_PARAMS},
+	{.reg_addr = 0x0438, .reg_data = 0xFE, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0414, .reg_data = 0x60, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0428, .reg_data = 0x00, .param_type = CSIPHY_DNP_PARAMS},
+	{.reg_addr = 0x0424, .reg_data = 0x00, .param_type = CSIPHY_DNP_PARAMS},
+	{.reg_addr = 0x0800, .reg_data = 0x02, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0884, .reg_data = 0x01, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0630, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0C00, .reg_data = 0x05, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0C08, .reg_data = 0x10, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0C04, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0C04, .reg_data = 0x07, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0604, .reg_data = 0x0C, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x062C, .reg_data = 0x01, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0634, .reg_data = 0x07, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0610, .reg_data = 0x02, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x061C, .reg_data = 0x08, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x063C, .reg_data = 0xB8, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0608, .reg_data = 0x10, .param_type = CSIPHY_SETTLE_CNT_LOWER_BYTE},
+	{.reg_addr = 0x0600, .reg_data = 0x8D, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x060c, .reg_data = 0x00, .param_type = CSIPHY_DNP_PARAMS},
+	{.reg_addr = 0x0638, .reg_data = 0xFE, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0614, .reg_data = 0x60, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0628, .reg_data = 0x00, .param_type = CSIPHY_DNP_PARAMS},
+	{.reg_addr = 0x0624, .reg_data = 0x00, .param_type = CSIPHY_DNP_PARAMS},
+	{.reg_addr = 0x0800, .reg_data = 0x02, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0884, .reg_data = 0x01, .param_type = CSIPHY_DEFAULT_PARAMS},
+};
+
+static const char * const sc7280_clks[] = {
+	"core",
+	"timer",
+};
+
+static const char * const sc7280_supplies[] = {
+	"vdda-phy",
+	"vdda-pll",
+};
+
+static const struct mipi_csi2_genpd sc7280_genpds[] = {
+	{ .name = "top", .scaled = false },
+};
+
+const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_sc7280 = {
+	.ops = &phy_qcom_mipi_csi2_ops_3ph_1_0,
+	.reg_info = {
+		.init_seq = lane_regs_sc7280,
+		.lane_array_size = ARRAY_SIZE(lane_regs_sc7280),
+		.common_regs_offset = 0x800,
+	},
+	.supply_names = (const char **)sc7280_supplies,
+	.num_supplies = ARRAY_SIZE(sc7280_supplies),
+	.clk_names = (const char **)sc7280_clks,
+	.num_clk = ARRAY_SIZE(sc7280_clks),
+	.timer_clk_name = "timer",
+	.opp_clk_name = "core",
+	.genpds = sc7280_genpds,
+	.num_genpds = ARRAY_SIZE(sc7280_genpds),
+};
diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
index cef4a90ca539..fca67d3625b8 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
@@ -455,6 +455,7 @@ static int phy_qcom_mipi_csi2_probe(struct platform_device *pdev)
 static const struct of_device_id phy_qcom_mipi_csi2_of_match_table[] = {
 	{ .compatible	= "qcom,qcs8300-csi2-phy", .data = &mipi_csi2_dphy_sa8775p },
 	{ .compatible	= "qcom,sa8775p-csi2-phy", .data = &mipi_csi2_dphy_sa8775p },
+	{ .compatible	= "qcom,sc7280-csi2-phy", .data = &mipi_csi2_dphy_sc7280 },
 	{ .compatible	= "qcom,x1e80100-csi2-phy", .data = &mipi_csi2_dphy_4nm_x1e },
 	{ }
 };
diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h b/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
index 5578741c0930..e2a346bcec89 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
@@ -97,5 +97,6 @@ struct mipi_csi2phy_device {
 
 extern const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_4nm_x1e;
 extern const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_sa8775p;
+extern const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_sc7280;
 
 #endif /* __PHY_QCOM_MIPI_CSI2_H__ */
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
