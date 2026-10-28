Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57B85606A32F
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 10:39:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=MMVdJo08;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=pURotaX6;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=Ws/2Wkar
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=FEZZsohrm41hVlhRcFlzAY/cLgDIXtNm8Wpk4DY9Qow=; b=MMVdJo086lzc4dnGwl9aDOlVpo
	QbsOgLfUDsj1yTLd1DXc3InHSupl47mEDcA9QNbbdBnJdAeDOyoMxv9V7V1CNZHbsyq3hLLvsz2c3
	KVu42WZKm7B4ARg96hWggRLD1kMGaiQF3gnpaqRZ8f8sl0z8ifbjoNHhVnehUhuVGIYupHcD+Ljvq
	6gS+/B00Pylopj5A08pT2km6ogllLi5P7zrh6g86W893PDbGv7nkQBDuhaW/4tpQZ6pihD2M9G+N3
	XHncZWJEaiRnxNXVHPGudROwFfSQV1ea0PTUaovfy7V0bKnQ1Zf3xp7jQxHqUFY0SA+8B0+tPm/zl
	F9NUjfRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM146-00000006mJY-0MfR;
	Wed, 28 Oct 2026 10:39:30 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM143-00000006mI6-0wkM
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 10:39:28 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69S8K3Sf1167690
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 10:39:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mn/WynfkmpgxKnmW+l/znlPZg7WKNwxNUfbqTYzEDX0=; b=pURotaX6g5sBG1XI
	13YTbVZmx1u2XJjwxLAY0MfcmHkidFeSARAm33Ku4NHA+8aJcn9WxErb0aA1O0qS
	1a9inQq3i//if22IjsAvilUkBSY3ANnmNZjbeUg9A+JE8eBhCxbsPNOYEaIxezBK
	gbybw0ak0ixhW3yhIwGqQO0fq0neaTHzpRN92D7HlZIp5fpct8wIj2L9VBsG+mDK
	T/A7nbkyVIVcEqO+xhZOFawkosEs8nBbtzeo2+yJIP4YghxekAkPzESaY1z0jd+V
	UffA2ag1+VrLT+DMvDFl2DmS7/G8w6WQAHdgGY/7WtnNBWJBcQHeAnSZoCm7838v
	zkjLTg==
Received: from mail-dl1-f69.google.com (mail-dl1-f69.google.com [74.125.82.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hk7g7hsa6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 10:39:26 +0000 (GMT)
Received: by mail-dl1-f69.google.com with SMTP id a92af1059eb24-1665200f4c2so1497325c88.0
        for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 03:39:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793183965; x=1793788765; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=mn/WynfkmpgxKnmW+l/znlPZg7WKNwxNUfbqTYzEDX0=;
        b=Ws/2WkareoX+C1xqFVEmTSSZWwEaFWhFgpRvnbv5w7ZAWnFszOlLxzJSR69Sh2LcSI
         dA0SKb4Ear93ee0d3jSe6xNB7wce4RTqjvq+8N3I3AHnULfvvcR76wF39phftN4R2EqC
         0y0UcSNJzbuvBL50tHyy5ulZjFPE0xKfkh8yIlxEybu838t6UKek8/kO3tRiZbVUV9EG
         un5MQTJ0LAag4zf0TIZsVXNxUtnflfL8DkTDH262Sh/FJvZQGtclo61sBIaP+kuliCbH
         /k451xFPv/W8t6yk1Dx5JN3nMomZvMYTAMVqhbmja9ySFOURezARdx96vYw7RWQsLeoT
         s6NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793183965; x=1793788765;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=mn/WynfkmpgxKnmW+l/znlPZg7WKNwxNUfbqTYzEDX0=;
        b=NDzRjTdDhKMyqfmVupVogvDL+2ujo4qcFsHjFAI2lfwjYCUrduLTq2vVYKInsB4psX
         MCmEwKi8XDINJ8YL+0onmPqqYQqYz2slaWZg/dfGeCWeTL0X48YwHKJS+4b5ElYv4J7Z
         7/fqc9lzDKYeFgyjew3zjZ/5g0nNkEvZ3rqXihZYJVxBAWj+8K7Gk9Ro8RZAxl7oJL5Z
         v04X8LakYrdyFS8zKUqJYgO/avcfrWcNF5x4WHFNbaA1WPqjLCXp5E9awCxTEyptu3+e
         tsxmGT20M4ZegQafpB9x28IY43yjibtaSR6ooGFIwrrLWOdof5Wttiz3Kgc2lIZEDjZb
         IT+A==
X-Forwarded-Encrypted: i=1; AKwUvBxb8HtJsxaZMWAyt7+oN0ohJSFBAOikeC1VhcAi4Jdo6xjUDgiJxJJ9g8KVFJenA/LakzqkGGJVfHA=@lists.infradead.org
X-Gm-Message-State: AFq9FYKIUA8VVWHHrfxsIObwT/7ThG/CLMBa9G69RjnPKB5qffCayKYO
	DGrQFJMYjTPymiH/Vp2Ge/bSi2L0gDmPF0OjNPoK1XPrqu8Jbn+zXskKh8flhffMKn+tk9BdhM3
	xI9s9pzRsCH3TGDHiTGSL5cAP30oMEQTE0waE7eZ5noTCCuX1zbHk1Igz0o+6e9tgnmR0
X-Gm-Gg: AYBFou3naFGhbAii+A6Za4iJQJDXZAjXFVizZVTv9s5IimWe4a2/Xqccq91dACzpUs4
	ezu+Nn/reDCzvEGpdEhVx/BH1ISoS4rFhbHGJmZgOQYr1yBjcvt1HZ0zT6OIsuMEIibuy0Q/9Eh
	HGXKiR8DMAwknyMH8AZdL5+PJeROLtqpD/ouwC2xSqFoza8MnPob7OqugV55q0UreuLERQzsXva
	TI0dcDZPt9XxXG1hdJwe6acFVV9x9/kxzQd9zHLgmQHJANlCQj5CzhqT1JvnFwBarnOiE2D1GpY
	pixLi/KqGkt9JOTPrO33v7O/1otH8mH6boiBr1bf2LsA3ZiYbzB7TrxH8LJlLWwfjVGy8+yjwZa
	3mA8EFy/jz9V65b6qhhu6oQg/uv58WdECQmbr5nZH1qnclnQ0OkkU6SxOAzLIKSUWKaNjOwDVPK
	8=
X-Received: by 2002:a05:701b:4659:b0:14a:5284:1bf5 with SMTP id a92af1059eb24-1a6cd967e61mr2188503c88.13.1793183964804;
        Wed, 28 Oct 2026 03:39:24 -0700 (PDT)
X-Received: by 2002:a05:701b:4659:b0:14a:5284:1bf5 with SMTP id a92af1059eb24-1a6cd967e61mr2188460c88.13.1793183963959;
        Wed, 28 Oct 2026 03:39:23 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1a75e5c6d4fsm8340186c88.14.2026.10.28.03.39.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2026 03:39:23 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Wed, 28 Oct 2026 16:08:06 +0530
Subject: [PATCH v6 10/11] phy: qualcomm: qmp-combo: Fix Glymur v8 DP PHY
 init and configure sequences
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261028-glymur-phy-v3-v6-10-1f1d2e565a66@oss.qualcomm.com>
References: <20261028-glymur-phy-v3-v6-0-1f1d2e565a66@oss.qualcomm.com>
In-Reply-To: <20261028-glymur-phy-v3-v6-0-1f1d2e565a66@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Bjorn Andersson <quic_bjorande@quicinc.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Nabige Aala <nabige.aala@oss.qualcomm.com>,
        Jeff Roach <jeff.roach0@gmail.com>, Luke Macken <luke@phorex.org>
X-Mailer: b4 0.16-dev-d5d98
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793183900; l=6031;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=BZwN2CmqTMrl6IrHSNCmymZYj0vfjwA10Su0CEgkyT8=;
 b=XijVPy04sJ3VkRWoJGcRGgsg6PBP8+1MlxC57ktN6DudkUWB15y0KM+uxdaRt84P/YNOs8G4y
 2jG5yKyHX/kD5rQCNlG8ZCyoQu0r/1Fa7QrBGfY1fkP1ZjSQgZZCNx0
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI4MDA0MiBTYWx0ZWRfXwtflR5ijD8N7
 F2Yb+Ui3sUv7g5NRA+1dceXClW0IzTICYwp3l+MSyzFDxpCoDzKNGkndpfzFxHMTJXzaAtNMxRP
 DLyiu08mN1rlvghoQ56fD+UMZlcZsoc=
X-Authority-Analysis: v=2.4 cv=SoIFe/O0 c=1 sm=1 tr=0 ts=6ae1d0de cx=c_pps
 a=kVLUcbK0zfr7ocalXnG1qA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=pGLkceISAAAA:8 a=mO8_gwkcAAAA:8 a=ShocUR_Qg8epsXyAbykA:9
 a=QEXdDO2ut3YA:10 a=vr4QvYf-bLy2KjpDp97w:22 a=InTEqNb8lIr1xazlwGwc:22
X-Proofpoint-GUID: lg-nYSACZ56i2cvF0jJeN1KvusScMUBj
X-Proofpoint-ORIG-GUID: lg-nYSACZ56i2cvF0jJeN1KvusScMUBj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI4MDA0MiBTYWx0ZWRfX1wrR4N4ML+y0
 tCVurqoZMHOH0ZtL4Kwnvp4EzgwwqSqSNLYVig3j8gcZuC2G2i/tZda1vueBKfdZuL8SfAadvS5
 MmS0SGP6+MMq1hdKjFdYDqeQvTiNUdLgAbwiEWGz5BXjzE//VChNXf3pVu+EsE+RUJafyyiAZQW
 v2hpoE3THFsqIv2+VTUWHN/WCrdKRQMGBB6W0hCAy7alAMrYRWxARjIjmQdQhvbFg8nKWFuOWLo
 9CnelSq2UHj88DHt6qywTdsiDuan7bHqK5JUEPXcnjjK7EQfCwCofK4zJOXOWzv4oKs5BOal9Bm
 2b9eK0Moi0aVfyg7WIK8+4jRVqI2w5NOw6ngvIWRNiKLjDUWePk8aE37XrsatR/8FtJiTH5bSYS
 EqQhY+nGcUXfhOe90Csv2jPhWbsXzKDw8SJcE6TVjr4c3nuB0XYeqzrpoFycBPaPPvxPXi6riWw
 ifCgpSC/Ei/FY9uQ+zQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-28_03,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 suspectscore=0 spamscore=0 phishscore=0
 impostorscore=0 adultscore=0 priorityscore=1501 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610280042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_033927_392326_C4EEBB9C 
X-CRM114-Status: GOOD (  17.69  )
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
X-Spam-Status: No, score=-12.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,UNWANTED_LANGUAGE_BODY,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>

Update qmp_v8_dp_aux_init():
- Add CLK_FWD_CONFIG_1 initialization (0x3f) before power-down control
- Replace PSR_PWRDN with LANE_0_1_PWRDN and LANE_2_3_PWRDN in PD_CTL
  to correctly power down the data lanes
- Correct BIAS_EN_CLKBUFLR_EN value from 0x1c to 0x17

Update qmp_v4_configure_dp_tx():
- Correct default TX_EMP_POST1_LVL value from 0x20 to 0x2b

Update qmp_v8_configure_dp_phy():
- Correct 2-lane and 4-lane driver enable values to 0x30 (was 0x10/0x34)
- Add CLKBUF_ENABLE (0x87) programming for both TX lanes before driver
  enable writes
- Add TSYNC_OVRD sequence (0x03 -> 0x23 -> 0x22 -> 0x3e) and
  LALB_RESET_TSYNC_EN_CTRL (0x0a) programming for proper TSYNC handling
- Fix QPHY_DP_PHY_STATUS poll to check BIT(0) instead of BIT(1)
- Replace post-lock TX_DRV_LVL/TX_EMP writes with two COM_CMN_STATUS
  polls (BIT(0) and BIT(1)) to properly verify PLL lock completion

without this fixes following can occur:
- Link training failures or instability at higher rates (HBR2/HBR3)
- Incorrect LFPS signaling timing, potentially breaking USB3+DP combo
mode entry/exit

[   34.109482] [drm:msm_dp_ctrl_link_train_1_2 [msm]] *ERROR* link training #2 on phy 1 failed. ret=-110
[   34.111460] [drm:msm_dp_ctrl_setup_main_link [msm]] *ERROR* link training of LTTPR(s) failed. ret=-110
[   34.118118] [drm:msm_dp_display_atomic_enable [msm]] *ERROR* Failed link training (rc=-104)
[   34.118156] [drm:msm_dp_aux_isr [msm]] *ERROR* Unexpected DP AUX IRQ 0x01000000 when not busy

Fixes: d10736db98d25 ("phy: qualcomm: qmp-combo: Add DP offsets and settings for Glymur platforms")
Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
Tested-by: Jeff Roach <jeff.roach0@gmail.com> # HP OmniBook X 16 (Mahua)
Tested-by: Luke Macken <luke@phorex.org>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 54 ++++++++++++++++++++-----------
 1 file changed, 35 insertions(+), 19 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 10b3efe48721..b34b892c2702 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -3904,12 +3904,15 @@ static void qmp_v8_dp_aux_init(struct qmp_combo *qmp)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 
-	writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_PSR_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
-	       DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
-	       qmp->dp_dp_phy + QSERDES_DP_PHY_PD_CTL);
+	writel(0x3f, qmp->dp_serdes + QSERDES_V8_USB43_COM_CLK_FWD_CONFIG_1);
+
+	writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
+			DP_PHY_PD_CTL_LANE_0_1_PWRDN | DP_PHY_PD_CTL_LANE_2_3_PWRDN |
+			DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
+			qmp->dp_dp_phy + QSERDES_DP_PHY_PD_CTL);
 
 	/* Turn on BIAS current for PHY/PLL */
-	writel(0x1c, qmp->dp_serdes + cfg->regs[QPHY_COM_BIAS_EN_CLKBUFLR_EN]);
+	writel(0x17, qmp->dp_serdes + cfg->regs[QPHY_COM_BIAS_EN_CLKBUFLR_EN]);
 
 	writel(0x00, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG0);
 	writel(0x13, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG1);
@@ -3936,8 +3939,8 @@ static void qmp_v4_configure_dp_tx(struct qmp_combo *qmp)
 	writel(0x27, qmp->dp_tx + cfg->regs[QPHY_TX_TX_DRV_LVL]);
 	writel(0x27, qmp->dp_tx2 + cfg->regs[QPHY_TX_TX_DRV_LVL]);
 
-	writel(0x20, qmp->dp_tx + cfg->regs[QPHY_TX_TX_EMP_POST1_LVL]);
-	writel(0x20, qmp->dp_tx2 + cfg->regs[QPHY_TX_TX_EMP_POST1_LVL]);
+	writel(0x2b, qmp->dp_tx + cfg->regs[QPHY_TX_TX_EMP_POST1_LVL]);
+	writel(0x2b, qmp->dp_tx2 + cfg->regs[QPHY_TX_TX_EMP_POST1_LVL]);
 
 	qmp_combo_configure_dp_swing(qmp);
 }
@@ -4126,39 +4129,52 @@ static int qmp_v8_configure_dp_phy(struct qmp_combo *qmp)
 	} else if (dp_opts->lanes == 2) {
 		bias0_en = reverse ? 0x3f : 0x15;
 		bias1_en = reverse ? 0x15 : 0x3f;
-		drvr0_en = 0x10;
-		drvr1_en = 0x10;
+		drvr0_en = reverse ? 0x30 : 0x10;
+		drvr1_en = reverse ? 0x10 : 0x30;
 	} else {
 		bias0_en = 0x3f;
 		bias1_en = 0x3f;
-		drvr0_en = 0x34;
-		drvr1_en = 0x34;
+		drvr0_en = 0x30;
+		drvr1_en = 0x30;
 	}
 
+	writel(0x8f, qmp->dp_tx + QSERDES_V8_LALB_CLKBUF_ENABLE);
+	writel(0x87, qmp->dp_tx2 + QSERDES_V8_LALB_CLKBUF_ENABLE);
 	writel(drvr0_en, qmp->dp_tx + cfg->regs[QPHY_TX_HIGHZ_DRVR_EN]);
 	writel(bias0_en, qmp->dp_tx + cfg->regs[QPHY_TX_TRANSCEIVER_BIAS_EN]);
 	writel(drvr1_en, qmp->dp_tx2 + cfg->regs[QPHY_TX_HIGHZ_DRVR_EN]);
 	writel(bias1_en, qmp->dp_tx2 + cfg->regs[QPHY_TX_TRANSCEIVER_BIAS_EN]);
 
+	writel(0x03, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_TSYNC_OVRD);
+	writel(0x23, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_TSYNC_OVRD);
+	writel(0x22, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_TSYNC_OVRD);
+
+	writel(0x0a, qmp->dp_tx + QSERDES_V8_LALB_RESET_TSYNC_EN_CTRL);
+	writel(0x0a, qmp->dp_tx2 + QSERDES_V8_LALB_RESET_TSYNC_EN_CTRL);
+
+	writel(0x3e, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_TSYNC_OVRD);
+
 	writel(0x08, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
 	udelay(100);
 	writel(0x09, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
 	udelay(500);
 
-	if (readl_poll_timeout(qmp->dp_dp_phy + cfg->regs[QPHY_DP_PHY_STATUS],
+	ret = readl_poll_timeout(qmp->dp_dp_phy + cfg->regs[QPHY_DP_PHY_STATUS],
 			status,
-			((status & BIT(1)) > 0),
+			((status & BIT(0)) > 0),
 			500,
-			10000))
-		return -ETIMEDOUT;
+			10000);
+	if (ret)
+		return ret;
 
-	writel(0x00, qmp->dp_tx + cfg->regs[QPHY_TX_TX_DRV_LVL]);
-	writel(0x00, qmp->dp_tx2 + cfg->regs[QPHY_TX_TX_DRV_LVL]);
 
-	writel(0x2b, qmp->dp_tx + cfg->regs[QPHY_TX_TX_EMP_POST1_LVL]);
-	writel(0x2b, qmp->dp_tx2 + cfg->regs[QPHY_TX_TX_EMP_POST1_LVL]);
+	ret = readl_poll_timeout(qmp->dp_serdes + cfg->regs[QPHY_COM_CMN_STATUS],
+			status,
+			((status & BIT(0)) > 0),
+			500,
+			10000);
 
-	return 0;
+	return ret;
 }
 
 static int qmp_combo_dp_configure(struct phy *phy, union phy_configure_opts *opts)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
