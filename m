Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81388CA5FB3
	for <linux-phy@archiver.kernel.org>; Thu,  1 Oct 2026 09:35:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vTAwz6hM8b7XCaRXpzkbPHl4FbU+cC9nd9cHVZ0LHmU=; b=w38eoqlNTfOwfq
	Z6NRLHy3JxoGvW/JZA/nI54FElnP1dejWmy9+5bclUq3XiOiQ3QDEPCLNMkDEkVHZ/WA71+GNwPu4
	ddM8+87ye1Jw34UCQnNAgvWfVCtJkMLgVtzYG5GnHK0vKN8G99a+vSIE5yFSCBZJkzPtIU8thgXLD
	7nZkL97WbHPGAvIB6uQdRDhVGqDUJb/y0aRPF8UW8BL9TV519Jc/4GJO3NNTWin8vMA2hSNJ7FtOx
	J0T0QA0yCgzfTcjGVUkwxT1CMOZ4YBnlV3VLPoenon6PUym2HMzWmo5ZQmjr3LHTIi3j5LKXWLeUl
	ereCnkVugXIlsZjF76Nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCDCV-00000008O3b-0xqq;
	Thu, 01 Oct 2026 09:35:39 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCDCS-00000008O2n-0tER
	for linux-phy@lists.infradead.org;
	Thu, 01 Oct 2026 09:35:37 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6916xPdk2887745
	for <linux-phy@lists.infradead.org>; Thu, 1 Oct 2026 09:35:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ELdWrxhztmbj7ZPNYMtYOg17dOkRsO8KbkYbW/z+7ng=; b=PGf3xNt4fKnLs3yw
	nXbo1Y4R15/CwiZGOP3z4dU551bgWEXLWtU09vzyY3Qnkertck1rr0b2j1WbtPhD
	goREJ4nLiSS/Z+2DMKfF0U1bdn3QX6ylCMxSW3sVJP20Gt/7o4XBC1Xjhf3d2WST
	eluqYyWG+hP9ZFD8BSTF0t9LV0f9NktAATuXS5WzHMuNB9vwi8PTegDpyeqq+ouw
	yTFlflqenVI7nYgBiT3ccPoSbNmJeYipy5EZvDBlEFbTEeyMcqRy4feyxlek0Soo
	Ti8ybpdlK62xM4j+QjVahbb8jgH2Y13yqOLW3V9+MC86c9KMtW2+Rs0LYUgQAwLG
	f3G1Xw==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h136tmfx3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 01 Oct 2026 09:35:35 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-cc1b80835d5so3813550a12.2
        for <linux-phy@lists.infradead.org>; Thu, 01 Oct 2026 02:35:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790847335; x=1791452135; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ELdWrxhztmbj7ZPNYMtYOg17dOkRsO8KbkYbW/z+7ng=;
        b=gX/+e2pnQpbvVilVRHNwZlJKzLZuqXtzr7WXAD7WQ4O1kH4XlKq12rEV0Zv7f7wvik
         Rfs1YZmRKcDfW35HKygk54CC6MPp/AmpyWV5mRBaRixoxftAqPYpqPeph9Ow/wcl5k2C
         RBFtdNlG0sQWkuCP9CZhOvODb6UZwwq1lRifG4cyy1ACj63wSaKugUVEnjF1GoISr1IG
         E7tT4z7BoT8+IlFIj+9bdflhCihjV8BOGq2xKvTns+PJiyzyVFQXj6Smuim7kr2Gipif
         R9WhK/hVuTD2Ah2R6mIFSyBrKbwJKFaGtWiAi3JjoLHec8SzYFN1PloVu+WuF3szBa0X
         fzxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790847335; x=1791452135;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ELdWrxhztmbj7ZPNYMtYOg17dOkRsO8KbkYbW/z+7ng=;
        b=T3E/JCIFdgjPvj0Axj+4JaQdpFzHB0xMP12/1kykPyH2CSGoR/gfIu+IDb4ul4ZsPe
         4PbLS7DSsqN5Jl2qnP2ItWqcCFbbNtcLNL4JcjMwdfu4Pfv3zPuJIOegS7VNrDnG3Iwp
         YsfZZnMBiOZWVh59l9Qv5+Qn/rX4xRIzgf2LWxWYB6uLKVCEcKXrRhj/RlM+DAjhdAcj
         sFnsvg58s6b8M+2uCvp74cAfUN9AmdlZG9ynCv3Ohaw6c15m1KBuDddtY3lGsUHH8JKx
         H7jwANbLvk1lPhP1d3TsAdugm4Aza/9uVcgk1GZVOQhPIx4RgVN0rSJIrsizwfrSdxRR
         faXg==
X-Forwarded-Encrypted: i=1; AKwUvByJ0G+yKc2kuvJ0MSAvQnHR8R1rw8gVgrT76nj4iOHn4QJkTaFCEKTsEhyG4Y6J39J8nzETxZRMJrI=@lists.infradead.org
X-Gm-Message-State: AFuF++k9U7yYZS16MWe5V0n0AFSSRNBrdM56A567gcrnncGp8AMquCOQ
	ENFXrkiSAobKugkFwhL9Y9R8hIzH+1fxL4c7QMvFsXsiMynaMkloBF4huf4S8GoGlIkMZzdH1X1
	A4HE0tIXTyh9peID5U8Pm8rAb4442AGLkR/N9gQ834OXQtBXQfKb2JWkqJaG3ofYVEmBYkd9aFb
	Gt
X-Gm-Gg: AYBFou2KbunACeLxSfbTMgcqo+wxBgWU5H0T8XRK1QbT2yjDNGA3BE8N7X0CbutSy4j
	ZUB7byHpj3J+snJrMdfDq5q4StielrBXC359HLQgKuFY4P4Z9ZSSJUbTur/5AtyHPAw8NpQav+g
	7CRREAY4K8c1HbmuQIln4oolB/aMFv9SusYWQA1Bs8+zozumjGYK9E41/J34a8LuHHEbMI+ziZT
	A9MlF1h1uqHVMx8HIpf4/7oh3dNCaw9TRXMHFvSkN0aPih/lj2Hf7RmGx0CapEghOgCjk/firxS
	mAhKepFZe+1PtPCeIf/+FSFfaw0ECuUw974OBqI83vzS7TRRbtl7Ie3i47IQW2/JTRUhDx0TayK
	uaCgH7FQJjDIVhwGUjjA/uKiHq+I=
X-Received: by 2002:a05:6a21:7001:b0:3de:5d79:a64d with SMTP id adf61e73a8af0-3de9e7edbd0mr4185737637.82.1790847335174;
        Thu, 01 Oct 2026 02:35:35 -0700 (PDT)
X-Received: by 2002:a05:6a21:7001:b0:3de:5d79:a64d with SMTP id adf61e73a8af0-3de9e7edbd0mr4185698637.82.1790847334713;
        Thu, 01 Oct 2026 02:35:34 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cc7e54bf4c4sm1152944a12.29.2026.10.01.02.35.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2026 02:35:34 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Thu, 01 Oct 2026 15:04:25 +0530
Subject: [PATCH v5 08/11] phy: qualcomm: qmp-combo: Remove VCO_DIV
 programming from qmp_v8_configure_dp_clocks()
MIME-Version: 1.0
Message-Id: <20261001-glymur-phy-v3-v5-8-3848c2615d5a@oss.qualcomm.com>
References: <20261001-glymur-phy-v3-v5-0-3848c2615d5a@oss.qualcomm.com>
In-Reply-To: <20261001-glymur-phy-v3-v5-0-3848c2615d5a@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Bjorn Andersson <quic_bjorande@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Nabige Aala <nabige.aala@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1790847286; l=1674;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=7nDdrAfLMVZ+R82NXO9KFSocsJHjCnRF/WR1qq2n7DI=;
 b=8fSBH7rbJg9UdtYHHBdxBa/fGnmx9OrGpik+PWXJ07EtE0KX974LNsEluIG388NVegnCuJywc
 kzgS+t0h/X3CXIVsZ5g4aqSdmzq+TqgnJtvnHOz4rOjkmg3Fsrz2wm5
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDAxMDAzOCBTYWx0ZWRfXyqcTDo5i8Zy+
 Dh5JcGl8bK/wUAnLVTbgMU61t0d5SzdZSr0hHuVVZ9qmhmaSG0SJ+eFcDYiHa/mny7TZDA27NSM
 QZIz8/dMRDxmzfj2i0YUcNYcIhHC0Tk=
X-Authority-Analysis: v=2.4 cv=aPFlOr9m c=1 sm=1 tr=0 ts=6abe2967 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=VniZYPIeq2n4UU9-3AgA:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-ORIG-GUID: zMTNA3tDwLRMQOXlLyGNOkyTCngfxf5u
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDAxMDAzOCBTYWx0ZWRfX11r7rzivuwxX
 qMTAELDSNgxWy94Rih5mxIuQsqfPRcLqmVHjRa/fWF7nbYznp+NbVDgUQyv2TronPy0SF353QwT
 7IcZ4FIjwbvM2rlwcV6QO5RohZ8N64CmjdOpoU5ExaiBL7tXUXHq/8LRXHOxRhnsARhCxSezftV
 ZAZ+tECiPGmBhbO4TI6hMEPX45uVbZKOEKrizsLOYcnq8E7yYbUTguHybRtCw6+TrsnfuQ2owmb
 V6KZ7BRv0a1fbjCh5xo/k42vL3XAvTypUyihOJRmKoC4Kk/K6IuYn549KqB3EfN2xQ8PaPj++6+
 wziZJLWrIAEWX+sLUik8PwCzO9FjDKdP30U/rJt+iBWm5BMlo0qpZ1AhZZ29YwOORj6J/UOYuv4
 3/zoLhB/XJphteDpykBWgtGCqHiabehAGLdDmyehulo2yDD+zKlKloC+ORadFmMAslbPSG1aeCR
 iH4JvPjYQklIgMpcpLA==
X-Proofpoint-GUID: zMTNA3tDwLRMQOXlLyGNOkyTCngfxf5u
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-01_03,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 adultscore=0 phishscore=0 spamscore=0
 malwarescore=0 impostorscore=0 bulkscore=0 lowpriorityscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2610010038
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_023536_496743_44128D52 
X-CRM114-Status: GOOD (  12.22  )
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

QPHY_DP_PHY_VCO_DIV register does not participate in the
divider of vco_divided_clk, it can be left as it is- No impact

Fixes: d10736db98d25 ("phy: qualcomm: qmp-combo: Add DP offsets and settings for Glymur platforms")
Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index fc35da80e57f..6f5d32afae67 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -3897,32 +3897,26 @@ static void qmp_v4_configure_dp_tx(struct qmp_combo *qmp)
 static int qmp_v8_configure_dp_clocks(struct qmp_combo *qmp)
 {
 	const struct phy_configure_opts_dp *dp_opts = &qmp->dp_opts;
-	u32 phy_vco_div;
 	unsigned long pixel_freq;
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 
 	switch (dp_opts->link_rate) {
 	case 1620:
-		phy_vco_div = 0x4;
 		pixel_freq = 1620000000UL / 2;
 		break;
 	case 2700:
-		phy_vco_div = 0x2;
 		pixel_freq = 2700000000UL / 2;
 		break;
 	case 5400:
-		phy_vco_div = 0x4;
 		pixel_freq = 5400000000UL / 4;
 		break;
 	case 8100:
-		phy_vco_div = 0x3;
 		pixel_freq = 8100000000UL / 6;
 		break;
 	default:
 		/* Other link rates aren't supported */
 		return -EINVAL;
 	}
-	writel(phy_vco_div, qmp->dp_dp_phy + cfg->regs[QPHY_DP_PHY_VCO_DIV]);
 
 	/* disable core reset tsync */
 	writel(0x09, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
