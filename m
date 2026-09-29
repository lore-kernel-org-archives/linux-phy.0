Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F5C1CA5FA1
	for <linux-phy@archiver.kernel.org>; Tue, 29 Sep 2026 06:00:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dU6fxd6rox2v1pcH2VCTljSIoIYQehiCOZRHAtGSEIw=; b=DiqbaYicS7b61/
	3P8zJ9fS2jDz1/hy9QsMNsB1PeA17yBUeuJcT4FOQ75QD+WyAvBw6MfFUyXx67lJx/OjsmqSThtsn
	F4DBtAUqUv9N02KbYTZyiIHry3CcYTYdo34Ueu5qNekHjq2rCBYUQITnvrPu2ocXVwp7z9Bp6eIsr
	KL7d1aJfYktvTVxchVCnjIM0rp3t1aNas3TOnV4EgkI59KkkvgkYYTaFMfCniO/tX84ZcTdiN1Dq7
	gZfpQhH9kjs7gE4Ns9bWmB+PR1vSp2AQsvAPkhppAa1zSqFQjtUS0Aft55ygCnKUmhtL37gJ7/5uM
	+T6DRKSh/69vOBJ+OEaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBQta-00000002Ow2-3SJw;
	Tue, 29 Sep 2026 06:00:54 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBQtX-00000002OtB-0tuq
	for linux-phy@lists.infradead.org;
	Tue, 29 Sep 2026 06:00:52 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68T47iIx4052976
	for <linux-phy@lists.infradead.org>; Tue, 29 Sep 2026 06:00:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YCTW4H5IPL7VDi+PNSnrXV87F875dEo/Q9jyiNIcq6k=; b=Uxk0dx/3RKpivDjQ
	LfQ/jjnmplCoxQ8ikD8gZD/URWqCmvOuRVJOTMEwn2XsP6EY5v+YPl/vCDwYVy26
	bNtfTzYPwgeVa06CyX6+WvAkPWd6pbD/kGvwT8h4MPUt5uA+/nNRq1atzVnmRW7e
	3O+DkKYkcX7wnMuJAvFYsAyk2OXUkUz1yG5oaz6exLJVPQIv/Ax613xEQ+Ntg792
	iJNX3/TNZSDDokzNFfOKzK7jKsHs62IcmLBargHePrDccAfVAeee0lHGRRWtrCAv
	tVGNMYJnZBosugoNk4gwnvJaz+2j6F3Yt95aPAqNbv1+Eih+VaFSJWvALDEOO08X
	kRv/ww==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h05yxgccf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 29 Sep 2026 06:00:49 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-3a0ca27a114so2705359a91.2
        for <linux-phy@lists.infradead.org>; Mon, 28 Sep 2026 23:00:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790661649; x=1791266449; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=YCTW4H5IPL7VDi+PNSnrXV87F875dEo/Q9jyiNIcq6k=;
        b=BHZsEEfDhEPNvtURL5fEC61XI/SwUWgifRVIhizrsWzcBV7mn8aYEL0ZrH06o3mS3j
         juKa2JiZMvjc98jqMWAjpAF/5rMviYJGkzgdSo66BS7QvAzKXCFInWmiPwBwHoiBEyml
         +DESdFYq1AN/8hqSWTSRPEfbT3l34xpVHoZBkYpRoA5xMsI+znAP5nJfNnF2KPLA1iyQ
         2SxpDKRcVvjXGD2L2aLpr6eR/k5Q+KUaAbzvxknzwSbvbUDKK9kCepv2m+cvRNZ+jmF8
         SKCUQI0jv487HpOI8zZLEczYOvWBvZIYvGfIK5ji2OqX0H1KMA4busTYm4gsVtHGMf7O
         dskg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790661649; x=1791266449;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=YCTW4H5IPL7VDi+PNSnrXV87F875dEo/Q9jyiNIcq6k=;
        b=nBNnq8ExdLVoYibGK98ZdJOzzcu4fyVZg40QFqMi5YKVDUWOMij8Q3Wvm46/9mrvHG
         e//9Eo0OBf3kmd1h8hySA3N80ypAU/tmjntn6iS2AJRasvlh3ys0GTSRQ8iPM6qFA6Fm
         2Yoil/yTk8R9VlOPwRK8cf5H4hQpQH2qB35Isn+wwIsB16HTRvEBYTacAyv/XR8AEiXY
         bPLzWoyOtATaG3uhB7RhVr4wCoLHuoDV6tJFN9TqHQy2b2R+2+p57GmKaPX59Vv36EdP
         J22E7bcS5OhHwCAPyrF/57HknYivQ09j9bmDDjWFfmfC6uCW0/raKdwct84aRoRfPPvY
         kBfA==
X-Gm-Message-State: AFq9FYL5KeQyjQjKS4dnomzHhaAZfkjIAfUxv4uHooscijEkFUC8sUL5
	lxKguQbUnRDWL7Kh/BftKHOLKKB4p1hm/lE0343iXI7ZYQ8Fv++dx9+y8whLvILO/O7YEr9S1G5
	mEZnSeImu5xbcXEsN7IgY4FhYDacWUoEJkuyLL/JIOGio2Jplgq3NySILnvumZBB6fz+z
X-Gm-Gg: AYBFou3c1DjObEu3hafBbx3eAqQZTx6NNyeLDnieO/rRF4JmVN3jP6syEFiDO9dgdci
	h9Ee6H+HhwtbDGdXeiAK0GpZ95wERYJtDJmdignlIPwb5FVqzZAMxSOorykjzFX5mwm1duiDQDX
	pqaK0JyTn7wDxRLA9tKYVIn2otxeFtvQ71pkORymg1zVssb7s0ZKEj6kZ5CCmE91MqKgLXls3jM
	xrtk9rs/sosVXFnTnI1QXl1J3QHQqjcxIVCf5PZPhx6wIU3Z8YLShdPCdBoop7BG2s5dicMvg7G
	OQCuGPVncNNf40/q3BXW7TcdgFoumGKd1+9+oueWeRodpte60/hnv2mLVOGOzdAdQlTKfcPt/5T
	LnMj4OPnY15txvCvrerfjP2aYraU3+RL1OBfPkyANPdq84ZPZ3SMxd8UdIVuZP2r1oBqoyCVhFR
	Wh00MSukEaMz701zm0QI+j
X-Received: by 2002:a17:90b:4c81:b0:3a4:6e84:e7f6 with SMTP id 98e67ed59e1d1-3a46e84ea15mr3549969a91.5.1790661648845;
        Mon, 28 Sep 2026 23:00:48 -0700 (PDT)
X-Received: by 2002:a17:90b:4c81:b0:3a4:6e84:e7f6 with SMTP id 98e67ed59e1d1-3a46e84ea15mr3549938a91.5.1790661648271;
        Mon, 28 Sep 2026 23:00:48 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3a4985ff0f2sm3383588a91.8.2026.09.28.23.00.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Sep 2026 23:00:47 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Mon, 28 Sep 2026 23:00:30 -0700
Subject: [PATCH v17 04/11] phy: qcom-mipi-csi2: Parametrise the common
 status register offset
MIME-Version: 1.0
Message-Id: <20260928-kaanapali-camss-v17-4-dcf3fd37f76c@oss.qualcomm.com>
References: <20260928-kaanapali-camss-v17-0-dcf3fd37f76c@oss.qualcomm.com>
In-Reply-To: <20260928-kaanapali-camss-v17-0-dcf3fd37f76c@oss.qualcomm.com>
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
X-Mailer: b4 0.14.3
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTI5MDAyMyBTYWx0ZWRfXxvWDEf3gHW35
 SDSj5OnaRoRhPMckep48CpglPlFKGH79PgUmDQJ7SmtY0nKKyHfpbFfrRxKMzQ2H8h3cOqKo/Ed
 OIVm4PQn+5aXPPSWrc8poxnF2CTn10Q=
X-Proofpoint-GUID: e-m7sxT8Za_c9lyl1lwIkz7CneSfL9jV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTI5MDAyMyBTYWx0ZWRfX9UykGQ2Rw3ns
 5xpUslWdkhirhdscAeiQz1WYFq46anjpOVql23JlhXeof2G//EGeKV9YCzPsTEuXMlj5nCgcR0j
 Fy2Q5k9+lq06NNw6lMkZLYCeEtG5cmWyCmk0gJTDnzwscSstK5l82FPo7QL6akRNCP3Cnju59ob
 Bc8STDU3z9edMZHwCAxAjmqnIBYSuib4lM2IGyChKd3wzffxlJLpgbNqWwwTbBcFVYt0V6DZEmz
 SulzBlo7sADwXk2Yx1qkGoW4rhCpCOdXaSh1RPn300Vav3G/KnED8HGRCJyFiBkSv/z3fCtrlXX
 O++3kcgjqEAbyUI5szTOevg86mQ92yp3UIcGqjcppxSZ84CToN83QNU+vi8qClgch6GVik+ORCH
 CMd+kM/BoiMqFLENj/Ypm1tNun0bHZdES0E3qfnRLHpott1EcCdW/syk9+qMwELymGS8YlAJOWF
 6ZRSl2SyHQBj20PyEDw==
X-Proofpoint-ORIG-GUID: e-m7sxT8Za_c9lyl1lwIkz7CneSfL9jV
X-Authority-Analysis: v=2.4 cv=SaFi5fRu c=1 sm=1 tr=0 ts=6abb5412 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=P6Xs4Y00w1yHQXPR5eoA:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-29_02,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 spamscore=0 suspectscore=0 phishscore=0
 bulkscore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609290023
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_230051_394603_C7FFA1A1 
X-CRM114-Status: GOOD (  15.00  )
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
