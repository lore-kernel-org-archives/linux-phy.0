Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9F16C36002
	for <linux-phy@archiver.kernel.org>; Wed,  9 Apr 2025 17:57:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J/D7JFjx31ubvzm3ygxz8xJ79GEMbUPXjxfvlqfpeh8=; b=wBQjYKXhaYJFiz
	tAaKw2turKNqAeYvrJIL2E/ckjBwfgJAvVTLRFD/QsYdDtgNGHMaBj593+qGIPcBb4ejUg22PomEb
	6UlYSiYKiFgPgsCegiPngViCZkkwCzbQzThe7VdeaSvWTK5tvouVxYhc7z8DF/YEpz3npcnQAP9HX
	xkn1xhKGL06sLhJxTmIhlfVJc+tIXyGR7tkrO4A83rOKJc+CNblysMQL/iSrVzEaYLLX16HB1DMy4
	xyeLdSXKI/TsO8PYidWJjqdI3hJjs7im1XQzOXnyIs7rvXd4u8LTxI3ZPHqrl9LtbMB0JthU//HIo
	Elgw1+mCw2Y6VFciOywg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2Zg4-000000086O2-301x;
	Wed, 09 Apr 2025 17:57:32 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2ZXP-0000000852e-29nL
	for linux-phy@lists.infradead.org;
	Wed, 09 Apr 2025 17:48:36 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 539HDrVY027515
	for <linux-phy@lists.infradead.org>; Wed, 9 Apr 2025 17:48:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VagdqhLUqQ/cHTS3wCaLxpv5RxPWVf0KWqzjzsj4gTk=; b=VvUtVBGptRZErBVd
	8QANgRJCQNYcuAXAdwJDUKfBGephgEpA963ww4JlR+B3FBzaHpmhHNGBTNz96/ei
	EdCNiP8WCd8YOzxxCWNfkLrbVCBAbi8x9Pybt7oE/hT/DxeENB1pS9Jo76n7ST8b
	4mQcZpEb7UOUARmq2CFT+zAS8e4JdhKyLsKRphzhg7FoQSFlI1mATjf3up+WsStd
	unXkGp7A9bLo+pXwvH/2ZhthA7B+kHrUoPZMV7j8l4tLuBtBMCXwbrQAU3WZH6H4
	yyhDzs2iht09oZfJkRGfUvVpJkiPu5LSmvRukh0jpMfho9UEBHD1FmK4TL9ceZib
	+ExFDw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twcrmd0p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 09 Apr 2025 17:48:34 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2254e0b4b85so60345ad.0
        for <linux-phy@lists.infradead.org>; Wed, 09 Apr 2025 10:48:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744220913; x=1744825713;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VagdqhLUqQ/cHTS3wCaLxpv5RxPWVf0KWqzjzsj4gTk=;
        b=OhW3DKsM19f9todNgbMpu2RQdlLScnkmfd/HNVMsDspQeKt/snNZH42f5/W2C12jGj
         w6WamoktTgps30Rt9LlxHCI/EBesoiKVwmR8cTRPMvgWc/O6DI4Y1IeHo6P0vjfp967h
         HQhREHPtIpd+ymUGwpadi9x1HAmyy9lSpDhvqXAqetJbkDQWKtrFGCqdHrTtnVTwx7r+
         +g71FWGKV4By0E2oFgFdWBMS92gOmFu/tDwCThyPZ9mFP9g+7DOYd8kStJoK2tPHNewf
         U7wqFL7CGMPWc5kCOvbqTRn1zwTqs6Pl/jlCzk1CObDh0tJgtlrVVnNIzYZyIC1Hc3me
         V8hw==
X-Forwarded-Encrypted: i=1; AJvYcCUvwXT0KkwEbUal/d//gFTw4Wni14jwi9mA2bp6T37GstAKW8nUFAcLG7uYnq1eL3OdgJP9BwfPNfU=@lists.infradead.org
X-Gm-Message-State: AOJu0YymoqigYEoU4SFvydUSiH3xxtD0YjP5RQfEVJU1OMZi3WiClYGZ
	PdMtrtNT3LPr4JEBNmRUQQohlO1R+Q+tCtwNjs+R+IqLDkPfQderJou5Ckxd1rdfM1MgGIFFuIf
	hfpcAgQ+zYRQ5Fk6KtRCFQ7yEzyOwUzI51/MWxdzdj3Z37uUjLcV675UYyLNyD2VI
X-Gm-Gg: ASbGncuswZuU6pSLFj7gy1+PVUgxl/bBZISBQRuYP3d2soI51SsIIE3z/sFtRAxrDHL
	A0GrAj6SgGxElZZCRi5LXcb7SCLjbuEivtkE+uNerQA609tOG+HLaiWQgT266T2qiJAsgQh7bDp
	0P0QIvuX6X6UQaiayEYwuxhajYKGFyktElmxvsDZOBmBzmdaX1r7LZy/RxMSSwnuCztjIqeJQJV
	A1Pd63m/4hWPIS4m7UfhP51UViMnT5xBC9nRzZYfv7qW5PScXSLtG1ATALmp8O297TntgttH/18
	i4LT2DkWlHSv8Mz/kLWU6hL37RVyx7gadx+CCxQ9/Khw4nrH1tEC8FFj0hJwJn+DY0I=
X-Received: by 2002:a17:903:90d:b0:224:7a4:b31 with SMTP id d9443c01a7336-22acfe92581mr4893755ad.6.1744220913240;
        Wed, 09 Apr 2025 10:48:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFsG92ws/nA3ox5Fmzps6PGoWhZkEoMYDBBjXWPelVVnEe90k6uZhmPJS67No7KaKKDplowIQ==
X-Received: by 2002:a17:903:90d:b0:224:7a4:b31 with SMTP id d9443c01a7336-22acfe92581mr4893535ad.6.1744220912893;
        Wed, 09 Apr 2025 10:48:32 -0700 (PDT)
Received: from hu-molvera-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22ac7c97a1bsm14964005ad.148.2025.04.09.10.48.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 10:48:32 -0700 (PDT)
From: Melody Olvera <melody.olvera@oss.qualcomm.com>
Date: Wed, 09 Apr 2025 10:48:16 -0700
Subject: [PATCH v4 05/10] phy: qcom: Update description for QCOM based
 eUSB2 repeater
MIME-Version: 1.0
Message-Id: <20250409-sm8750_usb_master-v4-5-6ec621c98be6@oss.qualcomm.com>
References: <20250409-sm8750_usb_master-v4-0-6ec621c98be6@oss.qualcomm.com>
In-Reply-To: <20250409-sm8750_usb_master-v4-0-6ec621c98be6@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Melody Olvera <melody.olvera@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1744220903; l=1432;
 i=melody.olvera@oss.qualcomm.com; s=20241204; h=from:subject:message-id;
 bh=4Pr6BN52SExwCz3h8ri0CiEwnp4b1SW1BiobceI7Ft8=;
 b=i23jhzeTsiK6PFNrYUYQ3S3HJO3uyNXokW2Ua3kOkY4OMdtdhsrt5b9CWvZvlUzzMpMndpmv5
 GwelesiEFTmDYEuIhlfB//FgZH094PA+hyNHpjmeAVxwODgJLkQiumU
X-Developer-Key: i=melody.olvera@oss.qualcomm.com; a=ed25519;
 pk=1DGLp3zVYsHAWipMaNZZTHR321e8xK52C9vuAoeca5c=
X-Proofpoint-ORIG-GUID: EGAaiLEKig4FQQ2Km9Xk7J7-K-5eWTRl
X-Authority-Analysis: v=2.4 cv=QuVe3Uyd c=1 sm=1 tr=0 ts=67f6b2f2 cx=c_pps a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=2IHzoM5ujN45o2WKKn0A:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: EGAaiLEKig4FQQ2Km9Xk7J7-K-5eWTRl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-09_06,2025-04-08_04,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 adultscore=0
 spamscore=0 malwarescore=0 mlxlogscore=929 bulkscore=0 priorityscore=1501
 clxscore=1015 phishscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504090116
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250409_104835_696914_6CED88CD 
X-CRM114-Status: GOOD (  13.57  )
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

From: Wesley Cheng <quic_wcheng@quicinc.com>

The eUSB2 repeater that exists in the QCOM PMICs are utilized for several
different eUSB2 PHY vendors, such as M31 or Synopsys.  Hence, the wording
needs to be updated to remove associations to a specific vendor.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
Signed-off-by: Melody Olvera <melody.olvera@oss.qualcomm.com>
---
 drivers/phy/qualcomm/Kconfig | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/qualcomm/Kconfig b/drivers/phy/qualcomm/Kconfig
index c1e0a11ddd76c2056eb2e72a287ece4def2cf5d8..3cfb4c9d3d10dce49bb93b241f9b56c75b934601 100644
--- a/drivers/phy/qualcomm/Kconfig
+++ b/drivers/phy/qualcomm/Kconfig
@@ -135,12 +135,12 @@ config PHY_QCOM_SNPS_EUSB2
 	  on Qualcomm SOCs.
 
 config PHY_QCOM_EUSB2_REPEATER
-	tristate "Qualcomm SNPS eUSB2 Repeater Driver"
+	tristate "Qualcomm PMIC eUSB2 Repeater Driver"
 	depends on OF && (ARCH_QCOM || COMPILE_TEST)
 	select GENERIC_PHY
 	help
-	  Enable support for the USB high-speed SNPS eUSB2 repeater on Qualcomm
-	  PMICs. The repeater is paired with a Synopsys eUSB2 Phy
+	  Enable support for the USB high-speed eUSB2 repeater on Qualcomm
+	  PMICs. The repeater can be paired with a Synopsys or M31 eUSB2 Phy
 	  on Qualcomm SOCs.
 
 config PHY_QCOM_M31_USB

-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
