Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E303606A33F
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 11:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=aQO5WP4F;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=C9WOHfuN;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=eK3IJWkU
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ie49q7ErnPNvB+WZnT3cwUdFRq4dDLpj/RJ2n206EDE=; b=aQO5WP4FrgKcpe0ucwV+lsJ0m6
	OskNrMO0IrDf3TxEx5JWyAy09Czooh4IMGOerxNM0nGYW9TaBj6FjiRo70/w6k0ILTjOcJ49x3NGw
	nI6K8HE8DPT9sA0JHWwNCo4ZthcU88bybTK6UJNe+G48SCra+i8wuG2bhWR0l/MN+K0JVXYtAdNaN
	F1LbW95RS93tyRtWNbV7mSQfxYoN95Dxm6EtW/kgt85yIvRCRj+KTakQSdI2/LdeuFEmCZG7gQHut
	Kbx/O8pTbUrRhUlXRY3FkfmEgHbtMCdWcBeOkKjVIpkAA3Snc/VroQnl8XJb7E88l7egZLHd0iI7m
	U5D3EePw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWuNV-0000000FsT1-1WyQ;
	Fri, 27 Nov 2026 11:44:33 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWuNS-0000000FsSI-3agc
	for linux-phy@lists.infradead.org;
	Fri, 27 Nov 2026 11:44:32 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6ARApJVO273463
	for <linux-phy@lists.infradead.org>; Fri, 27 Nov 2026 11:44:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZzDUDhdsKdrXW5UB/GIBhFabOu/0RL0S5D02dZDlR08=; b=C9WOHfuNvPuNVQZE
	wuU8V5PU5PuL3HAMPZ9l1cWKzqX94P1rDNfgAiSQX6KF/nqvxEivy0TLq3o8U3uA
	xTDD00/gF3yxvuRzubqPdcHLb1K3PmcujPW1whaWq2267ceZJHsnTk9dXL1iUdV9
	7CctQpcmiP3RcMr1GeVOFK2DToT+lxmga5xI7IUnPYYILtsNL6wVSTnnN5uubBEl
	v4CqMCqFfVfhvdq9jSinmlwKW5VRSLSpHUAJVyRjEqAqlEREWSauojMk+N8l5olz
	aDOI1rSEsOwJPI2XkoNtB17/u/pRnMb2LHy0eTZELAHO70bTzFS6oKbR4oNs2h0Q
	DOEtkQ==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j6u49atwq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 27 Nov 2026 11:44:30 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-3b191f8a9b3so9215715a91.1
        for <linux-phy@lists.infradead.org>; Fri, 27 Nov 2026 03:44:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795779870; x=1796384670; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ZzDUDhdsKdrXW5UB/GIBhFabOu/0RL0S5D02dZDlR08=;
        b=eK3IJWkULdAU02ZWYgAuFsBzgrkakiIIPTWRVlSaZi7meDBgZmwADlEzCMfJ+yrIbM
         s6fK5pHzDiEvt+1TxG/i/p100c9EtvMZdMRUXRH9urK1VGRqSPSRUBIQGRebxqoDxi3g
         fBFUivQtQJ7llDdK4kYdJ/Byq13/3iEIUO+aT3w3g+b/cyfHnd5cMi/MBo13lNLQl+Ph
         NWNFFV56XsJB50j32MoNcazXoL3SRSI5rAbNiOjzcAkGNJYPQt/sF9qu7RhSypXJDZYN
         mfQuO5HBkBnCinTdYqX+Lm1yw5B6XPyI9U965sPtO8W070fACewY7b2eBDRqH3UI5yKF
         nZjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795779870; x=1796384670;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ZzDUDhdsKdrXW5UB/GIBhFabOu/0RL0S5D02dZDlR08=;
        b=SqYSdnN+icDSuV1703jLcegMMPnX+UpL2IALwRbD0XVONDj43AUDnO5Bq95Op2LC+e
         euIaqobk6NUcWV9PLk7Ya0xsCr/s/wmf+wwAPvfEhWfv9OaaliSmWxnOwt9YQIJ80q9a
         xLqblgCxpxsITWPybl/NpVvZVvlTPsuE1WA8OPAil5TYDMQaXE1T/Id7li5Nc5h/yeYl
         diyMW2JO00Pa4l02X46Xf80hCphbWS7iSK1GnBfaPzrA274P7EmxiNYXQEchqWThclth
         mbqaHXxP4XmNS8S5SmOoCRqk3LerJhV1EecW4BtiArq+diUNffbJfsmn28ExGEcyZ77o
         xRKQ==
X-Forwarded-Encrypted: i=1; AL+hErFZ6YT7HlJIlfnKCXf967I2Tp4NwbTOMJs5eWgE/JiaMBPDn6VF26CIepEi8d0jP1glQ03ZDnbtNX4=@lists.infradead.org
X-Gm-Message-State: APuU4Z9dORoqAaZcUWzeOyraAgpQlDMTqJKOOby7AIcxlAzUwIou/F8y
	iExi2ydgTaqH7kdi0tHG58q4C5Un9Op2y8rxsjeXDmTf12Z4htskWwLfXfjudQbSE+cKtB8Mpw0
	nzJqEjSaI/oQdKzHd/gHV9Ft3JdyOJWp0da8T7IviERXcgXLgLebTVZUruM2oJDfo4XZU
X-Gm-Gg: AZFdTZd51apApJdvt9OkJzbUE7nwKd4Lu9GgMx3B8TL1elUZW+ABHsDHQhPhGJoEjoB
	EwvJw0LdXHDOWTyZi1ZrVg0cDm+lZTbciwvsKgI5rARW14b8JKLEgD75QsWNnliopZjz2j0cpOL
	rVuvOrcymvimXxZ3K1PFRDcoQ41UF8jXjPtNz0yNuFERWveFI8m9sgAErGYy0/mtyFE8JYkAHRc
	hCI1nlFrDh6THRgGCDfUdvaisI1Rw24rhcBlbdFnMSMxMmi1EMDePBofkoap46kZgloqpl5/69V
	Di4EcBwIqu8D4oPi0+nj6+1/EARWuQAsG9J0AOdtP2Qi1a5/y+9L1QOyUjes6Sqf753oyqJYRNd
	he8NU3GKKEYOrdL/ZwCCc+ft6IeQNoNd4p6lP6A1GMcq20Gd7aqTC7TASBMHm1j8Bxhpa75Ol1K
	pxj5j3
X-Received: by 2002:a17:90b:4d10:b0:3b3:c4dd:5437 with SMTP id 98e67ed59e1d1-3b41c852d1dmr24695476a91.5.1795779869466;
        Fri, 27 Nov 2026 03:44:29 -0800 (PST)
X-Received: by 2002:a17:90b:4d10:b0:3b3:c4dd:5437 with SMTP id 98e67ed59e1d1-3b41c852d1dmr24695439a91.5.1795779868866;
        Fri, 27 Nov 2026 03:44:28 -0800 (PST)
Received: from hu-nihalkum-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b41adcafe0sm40480933a91.16.2026.11.27.03.44.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Nov 2026 03:44:28 -0800 (PST)
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Date: Fri, 27 Nov 2026 17:14:03 +0530
Subject: [PATCH v6 3/3] phy: qcom-mipi-csi2: Add Hawi support
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261127-hawi-maili-camss-v6-3-0f4844eb63b3@oss.qualcomm.com>
References: <20261127-hawi-maili-camss-v6-0-0f4844eb63b3@oss.qualcomm.com>
In-Reply-To: <20261127-hawi-maili-camss-v6-0-0f4844eb63b3@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org,
        Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795779843; l=12202;
 i=nihal.gupta@oss.qualcomm.com; s=20260608; h=from:subject:message-id;
 bh=xIl4MEi6dFJq1H4aT5nU6EeatszoYuLYa6n/9v4T34M=;
 b=5GMsQbl5InKJ6nBNUrt/CbgBCJPrQmJJxDv2HiBLfZtSSJ4JpxSFbpP7UW7qU1YkP68xp/mnC
 R2AwpvJiNKoBBNCWHGUC2qels3AutyraIyS02hHmg5Ip7Wrbbiqfphy
X-Developer-Key: i=nihal.gupta@oss.qualcomm.com; a=ed25519;
 pk=DIbyFMNwqU/iMvU/0pCQp2wmRVgtHFBT3PcSu+A+Ncw=
X-Proofpoint-GUID: ZxgjwC0bLmBa_fDx3mYDuUgAu4hehlSt
X-Proofpoint-ORIG-GUID: ZxgjwC0bLmBa_fDx3mYDuUgAu4hehlSt
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTI3MDA0NiBTYWx0ZWRfX87GjVC+10H5d
 Fd1BBN/dMORqXx67l+d2twkjxZR/vti1x9gdIVO3ay3Wpex1ylAxZyifvrgRBc6fvzZ7pkOAUe2
 tTZb4dMg2y6okJESP+DMAQijb82+nWE=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTI3MDA0NiBTYWx0ZWRfX6rFn9icGTTle
 YfdeLAAb83pamtMYtpg2TukS8KAbjc5m8dR5jY4AWfRMgtPoyUodybwjlrahMbdRn80EduWZcf9
 9EAk/QcKONXZLWl9It+TuB4zbSj7uxjYX0hPhEdvgT7QQVsuZxi8tDhFouCIh4DHIpcoJXIjtwG
 huBBTlrDbUJKDMrC8FzVd70kz0brjOv8KxyGBzyCMvdoR0SNA2sine7scpPvUJEEG4dAegUgOqE
 mr6GqLAUlUXLTFFBiLHP2MZ2VZHh/mDPiY5JPqdFh8M360xP5WEhbsXuzS6K7pFSYQMWzzQdzLe
 VpAP+dRrFiQPuac315VfP/9EoDpbVqw34fGFwkTTL3wUCxEBG913iU6Od1X0gv0wPuYGlH6dvK/
 +PZ0PAnn1SFrwZQbAbwTD8hOkVIv0OU3w6HQA26yKFAQGQvJ8Ul44bq+87FYEX/qVR8o5Q8NRH0
 HVQpLLO6WHngl6RONkA==
X-Authority-Analysis: v=2.4 cv=A875rKWG c=1 sm=1 tr=0 ts=6b096d1e cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=vXeXF_wiGkNwswUzYdgA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-27_02,2026-11-26_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 lowpriorityscore=0 bulkscore=0 malwarescore=0
 priorityscore=1501 adultscore=0 clxscore=1015 suspectscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611270046
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261127_034430_932983_97C51FB6 
X-CRM114-Status: GOOD (  12.65  )
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

From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>

Add support for the Hawi 2nm CSI-2 D-PHY.

Reuse the Kaanapali lane table and adjust the data-lane CTRL0 value
from 0x8e to 0x8c for Hawi-specific tuning. This prevents potential
stream stalls and SMMU faults.

Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Reviewed-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c | 135 +++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c     |   1 +
 drivers/phy/qualcomm/phy-qcom-mipi-csi2.h          |   1 +
 3 files changed, 137 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
index ed40934d67eaeba0c6ac7ac75324ac6292fe7d9e..c0326526860e95402d154eb8f733367361e79f97 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
@@ -162,6 +162,125 @@ mipi_csi2phy_lane_regs lane_regs_x1e80100[] = {
 	{.reg_addr = 0x0c64, .reg_data = 0x7f, .param_type = CSIPHY_SKEW_CAL},
 };
 
+static const struct mipi_csi2phy_lane_regs lane_regs_hawi_dphy[] = {
+	/* Power up lanes in 2ph mode. */
+	{ .reg_addr = 0x101c, .reg_data = 0x7a, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x1018, .reg_data = 0x01, .param_type = CSIPHY_DEFAULT_PARAMS },
+
+	{ .reg_addr = 0x0094, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x00a0, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0090, .reg_data = 0x0f, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0098, .reg_data = 0x08, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0094, .reg_data = 0x07, .delay_us = 1,
+	  .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0030, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0000, .reg_data = 0x8c, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0038, .reg_data = 0xfe, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x002c, .reg_data = 0x01, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0034, .reg_data = 0x0f, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x001c, .reg_data = 0x0a, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0014, .reg_data = 0x60, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x003c, .reg_data = 0xb8, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0004, .reg_data = 0x0c, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0020, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0008, .reg_data = 0x10, .param_type = CSIPHY_SETTLE_CNT_LOWER_BYTE },
+	{ .reg_addr = 0x0010, .reg_data = 0x52, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0094, .reg_data = 0xd7, .param_type = CSIPHY_SKEW_CAL },
+	{ .reg_addr = 0x005c, .reg_data = 0x00, .param_type = CSIPHY_SKEW_CAL },
+	{ .reg_addr = 0x0060, .reg_data = 0xbd, .param_type = CSIPHY_SKEW_CAL },
+	{ .reg_addr = 0x0064, .reg_data = 0x7f, .param_type = CSIPHY_SKEW_CAL },
+
+	{ .reg_addr = 0x0e94, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0ea0, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0e90, .reg_data = 0x0f, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0e98, .reg_data = 0x08, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0e94, .reg_data = 0x07, .delay_us = 1,
+	  .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0e30, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0e28, .reg_data = 0x04, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0e00, .reg_data = 0x80, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0e0c, .reg_data = 0xff, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0e38, .reg_data = 0x1f, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0e2c, .reg_data = 0x01, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0e34, .reg_data = 0x0f, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0e1c, .reg_data = 0x0a, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0e14, .reg_data = 0x60, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0e3c, .reg_data = 0xb8, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0e04, .reg_data = 0x0c, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0e20, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0e08, .reg_data = 0x10, .param_type = CSIPHY_SETTLE_CNT_LOWER_BYTE },
+	{ .reg_addr = 0x0e10, .reg_data = 0x52, .param_type = CSIPHY_DEFAULT_PARAMS },
+
+	{ .reg_addr = 0x0494, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x04a0, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0490, .reg_data = 0x0f, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0498, .reg_data = 0x08, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0494, .reg_data = 0x07, .delay_us = 1,
+	  .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0430, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0400, .reg_data = 0x8c, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0438, .reg_data = 0xfe, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x042c, .reg_data = 0x01, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0434, .reg_data = 0x0f, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x041c, .reg_data = 0x0a, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0414, .reg_data = 0x60, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x043c, .reg_data = 0xb8, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0404, .reg_data = 0x0c, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0420, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0408, .reg_data = 0x10, .param_type = CSIPHY_SETTLE_CNT_LOWER_BYTE },
+	{ .reg_addr = 0x0410, .reg_data = 0x52, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0494, .reg_data = 0xd7, .param_type = CSIPHY_SKEW_CAL },
+	{ .reg_addr = 0x045c, .reg_data = 0x00, .param_type = CSIPHY_SKEW_CAL },
+	{ .reg_addr = 0x0460, .reg_data = 0xbd, .param_type = CSIPHY_SKEW_CAL },
+	{ .reg_addr = 0x0464, .reg_data = 0x7f, .param_type = CSIPHY_SKEW_CAL },
+
+	{ .reg_addr = 0x0894, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x08a0, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0890, .reg_data = 0x0f, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0898, .reg_data = 0x08, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0894, .reg_data = 0x07, .delay_us = 1,
+	  .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0830, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0800, .reg_data = 0x8c, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0838, .reg_data = 0xfe, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x082c, .reg_data = 0x01, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0834, .reg_data = 0x0f, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x081c, .reg_data = 0x0a, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0814, .reg_data = 0x60, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x083c, .reg_data = 0xb8, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0804, .reg_data = 0x0c, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0820, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0808, .reg_data = 0x10, .param_type = CSIPHY_SETTLE_CNT_LOWER_BYTE },
+	{ .reg_addr = 0x0810, .reg_data = 0x52, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0894, .reg_data = 0xd7, .param_type = CSIPHY_SKEW_CAL },
+	{ .reg_addr = 0x085c, .reg_data = 0x00, .param_type = CSIPHY_SKEW_CAL },
+	{ .reg_addr = 0x0860, .reg_data = 0xbd, .param_type = CSIPHY_SKEW_CAL },
+	{ .reg_addr = 0x0864, .reg_data = 0x7f, .param_type = CSIPHY_SKEW_CAL },
+
+	{ .reg_addr = 0x0c94, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0ca0, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0c90, .reg_data = 0x0f, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0c98, .reg_data = 0x08, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0c94, .reg_data = 0x07, .delay_us = 1,
+	  .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0c30, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0c00, .reg_data = 0x8c, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0c38, .reg_data = 0xfe, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0c2c, .reg_data = 0x01, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0c34, .reg_data = 0x0f, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0c1c, .reg_data = 0x0a, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0c14, .reg_data = 0x60, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0c3c, .reg_data = 0xb8, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0c04, .reg_data = 0x0c, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0c20, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0c08, .reg_data = 0x10, .param_type = CSIPHY_SETTLE_CNT_LOWER_BYTE },
+	{ .reg_addr = 0x0c10, .reg_data = 0x52, .param_type = CSIPHY_DEFAULT_PARAMS },
+	{ .reg_addr = 0x0c94, .reg_data = 0xd7, .param_type = CSIPHY_SKEW_CAL },
+	{ .reg_addr = 0x0c5c, .reg_data = 0x00, .param_type = CSIPHY_SKEW_CAL },
+	{ .reg_addr = 0x0c60, .reg_data = 0xbd, .param_type = CSIPHY_SKEW_CAL },
+	{ .reg_addr = 0x0c64, .reg_data = 0x7f, .param_type = CSIPHY_SKEW_CAL },
+};
+
 static inline const struct mipi_csi2phy_device_regs *
 csi2phy_dev_to_regs(struct mipi_csi2phy_device *csi2phy)
 {
@@ -374,6 +493,22 @@ static struct mipi_csi2_genpd x1e_genpds[] = {
 	{ .name = "mx", .scaled = true },
 };
 
+const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_2nm_hawi = {
+	.ops = &phy_qcom_mipi_csi2_ops_3ph_1_0,
+	.reg_info = {
+		.init_seq = lane_regs_hawi_dphy,
+		.lane_array_size = ARRAY_SIZE(lane_regs_hawi_dphy),
+		.common_regs_offset = 0x1000,
+		.common_status_offset = 0x138,
+	},
+	.supply_names = (const char **)x1e_supplies,
+	.num_supplies = ARRAY_SIZE(x1e_supplies),
+	.clk_names = (const char **)x1e_clks,
+	.num_clk = ARRAY_SIZE(x1e_clks),
+	.genpds = x1e_genpds,
+	.num_genpds = ARRAY_SIZE(x1e_genpds),
+};
+
 const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_3nm_kaanapali = {
 	.ops = &phy_qcom_mipi_csi2_ops_3ph_1_0,
 	.reg_info = {
diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
index 165e3d026872db85e54a99c5dd25ca68a1a4e450..991c9e8a29226ef150582238eff4bdbe4836ecf4 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
@@ -443,6 +443,7 @@ static int phy_qcom_mipi_csi2_probe(struct platform_device *pdev)
 }
 
 static const struct of_device_id phy_qcom_mipi_csi2_of_match_table[] = {
+	{ .compatible	= "qcom,hawi-csi2-phy", .data = &mipi_csi2_dphy_2nm_hawi },
 	{ .compatible	= "qcom,kaanapali-csi2-phy", .data = &mipi_csi2_dphy_3nm_kaanapali },
 	{ .compatible	= "qcom,x1e80100-csi2-phy", .data = &mipi_csi2_dphy_4nm_x1e },
 	{ }
diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h b/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
index 832c8d048b77f6c821180244220904815be756d5..01636df3c07dda9ca9c7e37c0bfd892bbb6a1304 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
@@ -93,6 +93,7 @@ struct mipi_csi2phy_device {
 	u32 hw_version;
 };
 
+extern const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_2nm_hawi;
 extern const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_3nm_kaanapali;
 extern const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_4nm_x1e;
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
