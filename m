Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D69A960A261D
	for <linux-phy@archiver.kernel.org>; Fri, 13 Nov 2026 05:34:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=tQdQnhpc;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=WuYHBI9X;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=ZhCegARw
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=k3ft7jVpkwhNJhmF2GQowGGAVdsp7+DTolxUcjN7moQ=; b=tQdQnhpcbdUMxxe6qOhq6OrIo7
	kT1IQl9s5EcEp1WGSmt1i+nx/DzjwhSwulGAe07nQI16joJsIa3R+uiJae5nWXYpsU6JofPHyZH0A
	sXXaQ2uM73rDDKTlPNx7ppq8WnfNiQhz2iD7181aWgVU4vBAr6w1jEc+ytrXMRZdVbl97mmQByuaq
	TLArM75Vfp2YuDFmGptLKsgOwrhucGbhaKNv6K/BEe7HHrz3CmieaL/2EWM5YlvIHTghc7BECDHWu
	1VKQeTZLBxQOXKaoEEqsRpw0IXhCdqZ8jT5Uex7RSXSdztwr61772b3XQWS49ruOagBIvA+ISUPv0
	EGbARTtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRjvG-0000000BhJ9-2Rhl;
	Fri, 13 Nov 2026 05:34:02 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRjvD-0000000BhHA-1TmG
	for linux-phy@lists.infradead.org;
	Fri, 13 Nov 2026 05:34:00 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AD57bSb980069
	for <linux-phy@lists.infradead.org>; Fri, 13 Nov 2026 05:33:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	H8f8Mh3ZgS0m37ODmPprXsCON9gwMJBXEWv6on2qRfE=; b=WuYHBI9XEhpt2lnr
	2y1TMGGndgF2QjENE2BFsgN2dVwQXAkj9QrOOZl4IzsKYq51OIB6vQE5cgKQ/lls
	L7TMizGYbVTEEKE4zM45KMp0ruIvgGGgyU43b+KduJxbnYfYycVkgYD/Xh6p++A5
	SrLtLZFc3Q1GC3Elrq9D6Tn8Qrs77ARnpQimudpkMopFKll2sbwZj9A0rXKirj8T
	oDMQ7m/KtTjNG1dLk01ERfijUVAFpsbSegFvt8WngajvHHL2tuOJSq2eZYihIhJ1
	uWIrOoRsUfa7KEsIbe2eb70dakLiAKa/cUYKo4/vrwt257bvLmP9cbXelHuBkZ+7
	bUhhQg==
Received: from mail-oa1-f72.google.com (mail-oa1-f72.google.com [209.85.160.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hwc1j3h4x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 13 Nov 2026 05:33:58 +0000 (GMT)
Received: by mail-oa1-f72.google.com with SMTP id 586e51a60fabf-451d80641efso779023fac.2
        for <linux-phy@lists.infradead.org>; Thu, 12 Nov 2026 21:33:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794548037; x=1795152837; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=H8f8Mh3ZgS0m37ODmPprXsCON9gwMJBXEWv6on2qRfE=;
        b=ZhCegARwvONo/ue/C8eZFwR/HhZvbf7K51QXhQFaQoJT4yesyg63Un2fDo2s1a5J9M
         JIlo9OdUciW+4bfccwNrDZxVnaO+TvY3a6d4YVDO7GEkKcISWBQdWEfayCBDKaGXu19y
         O9R4PQBL8QR4KbxdpkZwy4wMasjHZWb779qHGiT/dABm3qVeP5vHdXN9yuUYXpxhMog5
         N1DjyOVRN8Cvj9ZbWXMnPk2AC/11yKz5oaD9lxZpFADFXzL/gP5BoMJH6cU30CQB2s93
         jkYKy4ln++pdSQHDAdULXOMWoG5KF4/fPTv2L3QxYSDnazrxXXufKqjYXZdzsS3HSvNE
         3FSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794548037; x=1795152837;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=H8f8Mh3ZgS0m37ODmPprXsCON9gwMJBXEWv6on2qRfE=;
        b=xG6XD5Y3SzCfBEUjJ86R8+3LEZCDflMZCVfbbIg1oUlA+nWZNGoOtzoaImlN0Ur3vl
         1v3yvO2KRsD3OjosDtQyZ5HhZZ6wLlvma4uN1oMPvZZj66LxRsZpGDlZA0MiBnsKYQBL
         N6RJwFoLI7ElfMMlel8Ei+qplZqH1mWubvIEFP5Bm6Al+wsh2DbDc1zzN2nol87EZe9l
         NcFHCvbYudUheNjnHzHnkW5rAQ1sGV26mgVyKQc95sc1f2HN1QzOMx/qtS76JpDs4vU2
         jb/B2gUs1zsXeK6RhVZK8B6NJjoTS+FVwgT5PIk8yaMldO45btFokgT8dDj3xuUJhbIB
         lzSg==
X-Gm-Message-State: APuU4Z/jMIEyBjaOMUIN+fpuyB/9duaga+pklR/PRg64dJzGlRXmkAur
	VXv61eGjdXWpAG/bBSF0Ja+Zv/H4EZQeaTMFfqME5tYMjG+MvknV7hCAGVw/05s3Krv6ZSxOOsa
	7a17DJ0HPoyDme+WQ61RqCDkWqAjQuoITxXADN5o5zd7KU1ycoPqn5em4HjoJ+9iePsD7E4UTNs
	gGToo=
X-Gm-Gg: AYBFou2X2paKeAXu1UoMggsR4zsmDxgTqHHn7tbjIFWQCcX/HnYgLcHsfQHv4AkKSX9
	+2rUXmc7rYPmijoGGAvhdXAFubuaoLmm6hbJoudR7a4YNJ0hnJpRgCbCHLzeq1hn+Y3chdvuLPo
	iFhPWsK6f/+Du/0gCpr+/xbyi1CgIJpbm4CZRx0jhrFXT7+XMRYY4tR6QbU4oxIG5LjoN9xlJ12
	LksL+7s/ud9c+y3lDZVgm/33pTtok9azDQ/K/djY4avLb27llel79Zj/dMEE/Cv03b+fU2n9tUI
	qbJSc4CiQOzQBTPEPRrZYU1pwkhknAt6TufYAmBMFCbNHoxEnzz+d29V/TNRao2Jqr05jfwEbU9
	L3NNlZoGeZXLkfegrFyg94aEFgtAQLSmic9joJCZvPLqqH0dQZ6X4NJR+6s6tjRiZVeX+XKoZIR
	dcQkasLcVF0fxuzs9WYLAn89TSY2VAyeNYjkgMvMDcmP2U+TTiqZxBobXNWx5g
X-Received: by 2002:a05:6870:9d97:b0:48f:e0e5:a1ee with SMTP id 586e51a60fabf-4afdf7ce18bmr1641976fac.51.1794548037309;
        Thu, 12 Nov 2026 21:33:57 -0800 (PST)
X-Received: by 2002:a05:6870:9d97:b0:48f:e0e5:a1ee with SMTP id 586e51a60fabf-4afdf7ce18bmr1641959fac.51.1794548036800;
        Thu, 12 Nov 2026 21:33:56 -0800 (PST)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4afe22576bfsm803252fac.7.2026.11.12.21.33.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Nov 2026 21:33:56 -0800 (PST)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Thu, 12 Nov 2026 21:33:34 -0800
Subject: [PATCH v25 02/15] phy: qcom-mipi-csi2: Parametrise the common
 status register offset
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261112-kaanapali-camss-v25-2-1d709f57f370@oss.qualcomm.com>
References: <20261112-kaanapali-camss-v25-0-1d709f57f370@oss.qualcomm.com>
In-Reply-To: <20261112-kaanapali-camss-v25-0-1d709f57f370@oss.qualcomm.com>
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
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.16.1-dev-17221
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTEzMDAyMSBTYWx0ZWRfX8SMXqxW6F6H6
 i8+HOHbHygto/6/d8cdyoFxEICiYnRtyWlsnOY57nHMlrcHqN7zCiVVrNuPN8fIP6BzY4O1h8Sc
 1J3/8ridfVUuDlDhhc0x5tD7MgKQYeQ=
X-Proofpoint-ORIG-GUID: UF4nj6JKJX3BK-kq4rLebQyLB-YaTpMJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTEzMDAyMSBTYWx0ZWRfX1id3j1WtegjT
 ZVYsjVdPgOdnpduhkVFGPxiX6zrKzlphQq+UZYTC512RlITa0LAJ+8ba3nt5p8JhFlMnR/yj5kM
 3vWNjXuaHe+ypyMqnXjT0/gfyMlPdt8CKtR+eIsHweIQNE1CydqbsRzyOHd8VqUT2pDE/QfCo+L
 jp+p/DO6pr/CqyE4kg9QlhIO7Ok6UZoX5gZ2xb3XZxYdER/2vAWQ+H10uZSZ6bUjFtnSCihbPlS
 +VbkZanLz6SMT2Z3BbVwh3E0WN+9uxg2+WmFyfZqlV7vXIihhRjDqdtxO1+22VQKnCTqCd83lTO
 JSIdsWx67rz9J2+2CbsRz814hqKvzhckjYdB3Ggxw08703lHXZZJ7dx9CAwYFnkP8hSVmk4eAvy
 WX+TLnX6txtpw41NXtsJTqCj2jG0ZZgFYMY4bXMGGt+gtvsShv6ky3X6Pt/2gNTiP/ZsUzDCjau
 uQcgUsYfPVKft/rtT9w==
X-Proofpoint-GUID: UF4nj6JKJX3BK-kq4rLebQyLB-YaTpMJ
X-Authority-Analysis: v=2.4 cv=Vqe2kO2n c=1 sm=1 tr=0 ts=6af6a146 cx=c_pps
 a=Z3eh007fzM5o9awBa1HkYQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=P6Xs4Y00w1yHQXPR5eoA:9 a=QEXdDO2ut3YA:10
 a=eBU8X_Hb5SQ8N-bgNfv4:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-13_02,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 priorityscore=1501 spamscore=0 adultscore=0
 bulkscore=0 impostorscore=0 malwarescore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611130021
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_213359_520888_27E746D6 
X-CRM114-Status: GOOD (  14.81  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The CSI2 PHY common status registers are not at a fixed offset from the
common register block across SoCs: x1e80100 uses 0xb0 while other 3PH
v2.4.0 parts differ.

Replace the hard-coded 0xb0 in CSIPHY_3PH_CMN_CSI_COMMON_STATUSn() with
a per-SoC common_status_offset field in struct mipi_csi2phy_device_regs,
initialising x1e80100 to 0xb0 so behaviour is unchanged. This is a
no-functional-change preparation for describing other SoC offsets.

Reviewed-by: Bryan O'Donoghue <bod@kernel.org>
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
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
