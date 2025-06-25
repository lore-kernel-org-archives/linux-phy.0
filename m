Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 535FCC7115C
	for <linux-phy@archiver.kernel.org>; Wed, 25 Jun 2025 07:04:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/6zeYV+8ZWodFfmcPpuvQNRqHZN30BatvU1NRI/Egks=; b=VAcgGFJATAR54F
	Bu5ZyuoXURNBlct5Qo01rnpyijzJWVNXUPDwvsPpRRMVGutx4KNVtXxFPootEvAlXBNtjvRzSoQrs
	iug/bcWR8398sMjv49c6uhID7bWhzebGlsvOhBhVh4gZKxTlCfvA9Sr+sNkqjLoIpWEhu87xNsEUE
	TRfWMD2Wwe4xGkRqTbvOGaG35WIe1pL2mF7lj43j+0FdlCeGsccJnzz2Jw1t7wrvJbgwXW0tSQEOn
	Z0idPLaTxMPJ/GCJD5oJgvmcwdwo9IT6yH1J5WSzZsYCVaQfxDRWuFEvv3EM4M5JZCFPrilNkHPml
	a/N93r1AYiJ4uxJSJXsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUKBJ-00000007krI-4AhH;
	Wed, 25 Jun 2025 07:04:29 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUK7r-00000007kSO-1rjv
	for linux-phy@lists.infradead.org;
	Wed, 25 Jun 2025 07:00:56 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55P5NtHv032017
	for <linux-phy@lists.infradead.org>; Wed, 25 Jun 2025 07:00:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=pyzM2HxTz6vkcldnXZPq//
	68fgMJwv6Rt9/cCgUKmGA=; b=dkbs6VOQuI2DV+BLwNtRkPU/722Zy3D6A25Dw7
	4YQ7zjZEDOt9kKFSPRQBx4VVlaSWUaBqdyIOleW49kgF93GextQFFsBXYlx2bQoA
	9go23sKh53SRAZ4MxpG0H3z6dZVTp/71MfCjj/WOy0oPLNdNnkgIEAD5Vso0b/A0
	RaFPEXkbFx07VslLJv653uMuWqLzqA+H/wFT4jg2MtriYB/Caw+2vHD68ZtwfXx5
	784vzZ760hMGfP1f78xIbt8n0Q+YtlCwcVKv+RA5hMteik0RWHfcN7h1Wm5nzBg7
	ycwjN9aXHAIRBk0ZUXq/JSv6D2DOVm+zVG8q1khvctFLM2ow==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47esa4r2tc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 25 Jun 2025 07:00:54 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-31315427249so1511832a91.1
        for <linux-phy@lists.infradead.org>; Wed, 25 Jun 2025 00:00:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750834853; x=1751439653;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pyzM2HxTz6vkcldnXZPq//68fgMJwv6Rt9/cCgUKmGA=;
        b=KbfGbDk6NPL9vVhN5KM6Io9znxehYzsNI7gFrEZPBmfk7SA334M/J9UCaw0njtsRzk
         7/+G85dIVWMeCD6Mpttq6vuH9sMJj2oZyon2rso3oG+X+jKj2VOQlPe84HquiAtwyLmH
         TvFR77v2Ib8LP9vfb/iWh13QzdxqDeOZvcWV71Jiia4FSGRCThXdcBasw8wTkkYRHnzh
         hce3oCJ+mqVz+jPRsCSGk92tCyrbUxOHhPUjRnP6FYF+gMbiv2AqSNr1+SmL3haiEbyj
         egdrk1e7ieeybcY2GgA8QeHla0srvWseZzmQTBh+8cuhjScyzNlYeJVBNpkY4He82R+e
         YtaA==
X-Forwarded-Encrypted: i=1; AJvYcCW9rmgQ18MGgnCIMKgg5bIwU/VggoguIyyZsUzZj+Ah8uIhUNgQG+XQ9NtS5E7elOuyBq6KzEI7OwU=@lists.infradead.org
X-Gm-Message-State: AOJu0YyjyzApmAhuiJWQHi7ceFVbkJzpG6ERq/5ez71Y+yWrjgZsIPki
	rlEZEEGI8HD+t5VSF0IJ3qKyWtEzadbpwyLuFrJyDrXE811+nTt/B4eynS67eO3jJliRQ5qkqyr
	9+ZeiGqQVMuP3OoMpB4YqLhFKN5GT7bfoxrgtf+i4XxuZFegcBvZJD5H94qcoQUbX79W9
X-Gm-Gg: ASbGncsfBOzTSp1n1tKv+JeifR3yzxr1POvBbyLizxipI6xrlYxsNZSDrQouCWIryZC
	RcoY7nJpZjhPmymSptWqdr1MQ7YBOtPptMbw0TKUai/vaXMxAph2I/64MbyCqyjVaTqiaSa42AN
	YYe2OpxInNuVPvh4+zTCHjOBz71K9YS24cpOrejw+EmAuPCq26WVw65tIHAiUTu3dkU6IS7GGkr
	CRmAgti3kSD1lZNLephlBXmxFBuIzdtOeuvzPEvS2QUO3npinXgikHdoaron80SvrDgkligjBYo
	uWqLbiTrei3SnYFZOIqRyf7HA2nAeaYPdn9bdyPCLpq9ZTqyS2ShLAqF371D2NbK16sxK3IXaoX
	UyCrMGqQkJFTkK/V3jFzaC+zHdQJpbYlkYdspkucX7x557gL/NNOv//kPcA==
X-Received: by 2002:a17:90b:2c85:b0:312:e6f1:c05d with SMTP id 98e67ed59e1d1-315f25e7388mr3143098a91.2.1750834853035;
        Wed, 25 Jun 2025 00:00:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFxulghq1aqMwRhsLHx6rKcs8jeRMiEBRz4TjDDZ8DEU2FlXcgU6xVBPD0ZuaW69ijwzrAUMA==
X-Received: by 2002:a17:90b:2c85:b0:312:e6f1:c05d with SMTP id 98e67ed59e1d1-315f25e7388mr3143032a91.2.1750834852497;
        Wed, 25 Jun 2025 00:00:52 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-315f539e6aasm968494a91.15.2025.06.25.00.00.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 00:00:51 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Wed, 25 Jun 2025 12:30:46 +0530
Subject: [PATCH] phy: qcom: phy-qcom-m31: Update IPQ5332 M31 USB phy
 initialization sequence
MIME-Version: 1.0
Message-Id: <20250625-ipq5332_hsphy_complaince-v1-1-06b4b8e66bc6@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAJ2eW2gC/x3M0QpAMBSA4VfRubbiMMqrSGvmsFPMbCWSd7dcf
 hf//0CkwBShyx4IdHLk3SWUeQbGareQ4CkZsEBZNCgF+0NWFSobvb2V2Te/anaGhKnlSEgtYq0
 h5T7QzNe/7of3/QAYkKSIagAAAA==
X-Change-ID: 20250625-ipq5332_hsphy_complaince-c45be2e7224a
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, stable@kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750834849; l=2192;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=IOojmDcfA7xALANINpGpb3cHe1paDntB33v0oamHVOM=;
 b=SfKStKtNZyQJPNsfLoRZyp+/DtgguNjygO9NJmA3gnpnwmFv0LidhX3Pu+AggbylOqiCisoe0
 YMm/lDizgcgCv3T56wFgVHhpoj6NLR9rz5wJdWsRjHDgCC/gx3LeZCe
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Authority-Analysis: v=2.4 cv=eLYTjGp1 c=1 sm=1 tr=0 ts=685b9ea6 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=j3_UZ-iYLL1He1QCjhoA:9 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: mihELwzCiwQHBKZWa4n9E-5_5F1_-BMZ
X-Proofpoint-ORIG-GUID: mihELwzCiwQHBKZWa4n9E-5_5F1_-BMZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI1MDA1MSBTYWx0ZWRfXz2+Q0yc30DMm
 +hxNMleA8bTUIw1zistU2/kUbz+4M3UdAoGRpqZwucG35LfnVyp2xB2+UMvIT/CWBFZCRUL3uc6
 af/MCSqRZ/hMo/V6MSX66YpTObB7FJFTZZmsvfzJTVY/yeFXeMX9xBLJqADk5Jua3DnEzJj73nz
 o0eoa3FYHxr6KsDwZfKarhiWVQ3lwWRGAsi/pVoCndIf77QbOWAb15ZLNjKPwCM4xJcR73shbOi
 8UEWDWkV4Rhj/HoLY475pDuvpprjd1fQnnFD/3sh8l6RcMwBjtCB8wz+kcLiAeKOFY8y4cI+qyY
 NEkmEAzDkWetyqO/R5c0NLU3oRz7dlkjI98/xuBgLaXNn+sXFVRiQ4HcJ9++dFpWwo77504I/KW
 9ahP8PIwFRjlrYvEbqE06jSqIUrA16VaueLvcv9iWzAsy41eyLMmEXj6arCOrxc2QD46r3XF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-25_01,2025-06-23_07,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 mlxscore=0 clxscore=1015 mlxlogscore=999
 suspectscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0
 adultscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506250051
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250625_000055_498274_4CDDFD8C 
X-CRM114-Status: GOOD (  13.11  )
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

The current configuration used for the IPQ5332 M31 USB PHY fails the
Near End High Speed Signal Quality compliance test. To resolve this,
update the initialization sequence as specified in the Hardware Design
Document.

Fixes: 08e49af50701 ("phy: qcom: Introduce M31 USB PHY driver")
Cc: stable@kernel.org
Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-m31.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-m31.c b/drivers/phy/qualcomm/phy-qcom-m31.c
index 7caeea1b109e922c0cd12e985bc8868d5bce8b4f..1a8a0f1262cd95bc00dfbf7397a1c48d88d52327 100644
--- a/drivers/phy/qualcomm/phy-qcom-m31.c
+++ b/drivers/phy/qualcomm/phy-qcom-m31.c
@@ -58,12 +58,14 @@
  #define USB2_0_TX_ENABLE		BIT(2)
 
 #define USB2PHY_USB_PHY_M31_XCFGI_4	0xc8
- #define HSTX_SLEW_RATE_565PS		GENMASK(1, 0)
+ #define HSTX_SLEW_RATE_400PS		GENMASK(2, 0)
  #define PLL_CHARGING_PUMP_CURRENT_35UA	GENMASK(4, 3)
  #define ODT_VALUE_38_02_OHM		GENMASK(7, 6)
 
+#define USB2PHY_USB_PHY_M31_XCFGI_9	0xDC
+#define HSTX_CURRENT_17_1MA_385MV	BIT(1)
+
 #define USB2PHY_USB_PHY_M31_XCFGI_5	0xcc
- #define ODT_VALUE_45_02_OHM		BIT(2)
  #define HSTX_PRE_EMPHASIS_LEVEL_0_55MA	BIT(0)
 
 #define USB2PHY_USB_PHY_M31_XCFGI_11	0xe4
@@ -164,7 +166,7 @@ static struct m31_phy_regs m31_ipq5332_regs[] = {
 	},
 	{
 		USB2PHY_USB_PHY_M31_XCFGI_4,
-		HSTX_SLEW_RATE_565PS | PLL_CHARGING_PUMP_CURRENT_35UA | ODT_VALUE_38_02_OHM,
+		HSTX_SLEW_RATE_400PS | PLL_CHARGING_PUMP_CURRENT_35UA | ODT_VALUE_38_02_OHM,
 		0
 	},
 	{
@@ -174,9 +176,13 @@ static struct m31_phy_regs m31_ipq5332_regs[] = {
 	},
 	{
 		USB2PHY_USB_PHY_M31_XCFGI_5,
-		ODT_VALUE_45_02_OHM | HSTX_PRE_EMPHASIS_LEVEL_0_55MA,
+		HSTX_PRE_EMPHASIS_LEVEL_0_55MA,
 		4
 	},
+	{
+		USB2PHY_USB_PHY_M31_XCFGI_9,
+		HSTX_CURRENT_17_1MA_385MV,
+	},
 	{
 		USB_PHY_UTMI_CTRL5,
 		0x0,

---
base-commit: 2ae2aaafb21454f4781c30734959cf223ab486ef
change-id: 20250625-ipq5332_hsphy_complaince-c45be2e7224a

Best regards,
-- 
Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
