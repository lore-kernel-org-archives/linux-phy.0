Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F04D6C36002
	for <linux-phy@archiver.kernel.org>; Wed,  9 Apr 2025 18:08:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ifnut1M3NUuS8fhQGBKtJefz2VruRorpYv7DhnHDPKc=; b=lop6tBw+9imoAf
	4krBm8nLTOJloCrHN9BZGX9l8rVSKoPk/k9eadogDJaD2rUkm+kkw2S0e3hPap0JTgp4OzVnANvt5
	KrKNY+y1YtU82n9EZvsiDKt/ZLP1zeyCOq2IfOcvlOjM8bCIvVtG85K/GpBANiatCBPiCWiCoho1O
	ESDjVSds3ig/PU8jXjfvqgF6Ukcl2dDNcRlw+UpoVmcQ3BAz5DZaHps9f26SSOXRU4AC/2nKorTus
	5W7u1ktrTynYA7NKnU8UFutdYTdV7IokPpROtF+75oFt2R1L5wclEEODMxrkjpOky60y+HhV7c3gr
	cU5792wkzxLxYjQDIkrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2ZqX-000000087ZA-39Za;
	Wed, 09 Apr 2025 18:08:21 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2ZXX-0000000856z-0YRT
	for linux-phy@lists.infradead.org;
	Wed, 09 Apr 2025 17:48:44 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 539H7jVt028048
	for <linux-phy@lists.infradead.org>; Wed, 9 Apr 2025 17:48:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OoIwOCvsPp6Maqmzq2QbjdipyauVWuYRAJ0nohLBhgk=; b=WFMpF1AFRu6gZsaN
	Lll4eub/OHXIbQjgsVsiBWLjXxHZBJcb0CaK/5M+lSoBHkQGpa8qOeBAHnI8K63K
	q+HK2+BLp+7XR5ZFtvLRr8AnPxUmrVjU2OhPphBPle7eZbboxxK2KiAlpnOR5PjI
	cSOshyeP3dy5FhKSF2QtPw5hnD2DwNwGItuKnwN/dByIm3s1BbY+nmANFgxqTZME
	U0HBV7hdMoYrmn8U4DpAuUL46/4Z5xsRDpKd0PzZAQbeK2CY/cneBibZmZIw4M94
	uipz1rzkFR3H2SS5Pcb5Z+/2TglAUpFH5/mrm1nmuQJPfA2IFqNQWslf3jZjs+sH
	t480hg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twdgmcb4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 09 Apr 2025 17:48:42 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-224347aef79so96073905ad.2
        for <linux-phy@lists.infradead.org>; Wed, 09 Apr 2025 10:48:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744220921; x=1744825721;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OoIwOCvsPp6Maqmzq2QbjdipyauVWuYRAJ0nohLBhgk=;
        b=Z0+WwUO3jO8Teba0SKIbJLZ5PnzuxaSLpyp+TyXvJtJrj6nmvHdhuwZkGvFKalZX+/
         GloFNBuSqiRRjmnnTDITWZB1iJV6EC1u2bizLsm79lgL5joqr0HlDQ1lZfypC9mhfzby
         /qXPphkmcxhm9Mh0e9FTdgHGKcy+x5eoC+YMkV92+EyjpS0FsvOAkHr3H+L8+Oynr4KR
         dsqGSczNNiZoZhYwhSOi+bjuhYBSUPsH3M32h3y32vMk3X4cOC4CLalrh6ryZoTODAcf
         IcbQSMHBLXZX0wnfn8VP2r/JhETpgTaie7jiYqnFA+uepyEmdF8NKP4NvpJx0fN3d9ka
         SXIg==
X-Forwarded-Encrypted: i=1; AJvYcCUcI3wC6NbG0Fs+ZB9IzIPCrETrVlgB/ULcmw0D9DKb+wbXRE7EEZTOkEuntmQ5iYXWkh/QBVVHjIw=@lists.infradead.org
X-Gm-Message-State: AOJu0YyRhJI11NApqMoCti57kVZqV9hhmcSxCDUxfHdfeNVK/fHFAJ3+
	OX1GIschmqz+qk25FS2iwVOgocHGWHH4ZIQ/2QgGUvqiS6Tz251n17hjbtrjKrXebH1JwBbPEmj
	1WuejXtulmln/uTgizkTYLnYT/iZ2+GzouvMtNoB9r9aB9Wc5u+JlsOWKat3bj6Au
X-Gm-Gg: ASbGnctZet8rW5EeSKCUO85xC2IXfo8lvoA/mWCVfofJgu74tZQsdR4/IFJL5Efy0/P
	ouOGaCNRFZAr09pEYZmYC33GD0NGsYqoywkfwdRclU3FC6Fdzf7I2ApIhxFUylq9MYoJ0F7YEqY
	hwZ/43ps60ivJI9/MLjKf//crK/4Tpi4RWd/6lcIx4O0yPSuwoEOVpohS54liYY/UkqTGkG22o+
	1HboVw/jO/N8L5fjfTQxP7bglyArelC5zajnbKE43WgVJCZUGI4dIDDtuo58+3QncrOUT8/2qdC
	QBUY9Bq7W8tF7y5S86ig6h09GdhF85152VVnrA9EhIlqCGnTpefFP7vPTdhKV26ay0Y=
X-Received: by 2002:a17:903:904:b0:224:b60:3ce0 with SMTP id d9443c01a7336-22ac297c897mr60756975ad.5.1744220920761;
        Wed, 09 Apr 2025 10:48:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF9Zec3l17hLm205zREJHoTa4464+gN4IaUuSWe5lE6kU9rHdyOfldq5vm7D/xBfbpFrEDcbg==
X-Received: by 2002:a17:903:904:b0:224:b60:3ce0 with SMTP id d9443c01a7336-22ac297c897mr60756685ad.5.1744220920456;
        Wed, 09 Apr 2025 10:48:40 -0700 (PDT)
Received: from hu-molvera-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22ac7c97a1bsm14964005ad.148.2025.04.09.10.48.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 10:48:40 -0700 (PDT)
From: Melody Olvera <melody.olvera@oss.qualcomm.com>
Date: Wed, 09 Apr 2025 10:48:21 -0700
Subject: [PATCH v4 10/10] arm64: defconfig: Add M31 eUSB2 PHY config for
 SM8750
MIME-Version: 1.0
Message-Id: <20250409-sm8750_usb_master-v4-10-6ec621c98be6@oss.qualcomm.com>
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
        Melody Olvera <melody.olvera@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1744220903; l=899;
 i=melody.olvera@oss.qualcomm.com; s=20241204; h=from:subject:message-id;
 bh=xHMrp8qNO7tQrgEjD1Y8BRuZnIp5Xons8bY+VaR7WOU=;
 b=74VSIE/7Bc7NqGuL514qL3g2azY8mMk8Lf8fxgvdpQzxf5vl9+AaSUiv7GOU2Ldi9NXWAGV0D
 VsQaZ/nOOoKBV67eMLcddN7lVBAl/zbN1AiljquEA3aWFCvLMDOkUeL
X-Developer-Key: i=melody.olvera@oss.qualcomm.com; a=ed25519;
 pk=1DGLp3zVYsHAWipMaNZZTHR321e8xK52C9vuAoeca5c=
X-Authority-Analysis: v=2.4 cv=PJgP+eqC c=1 sm=1 tr=0 ts=67f6b2fa cx=c_pps a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=yCBuECYR7Rf6QDnvud8A:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: T3-OTMn2Skt2oeW1i11x3AsDbjvC6TaP
X-Proofpoint-GUID: T3-OTMn2Skt2oeW1i11x3AsDbjvC6TaP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-09_06,2025-04-08_04,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0
 lowpriorityscore=0 clxscore=1015 adultscore=0 malwarescore=0 spamscore=0
 impostorscore=0 suspectscore=0 mlxlogscore=541 bulkscore=0 mlxscore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504090116
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250409_104843_318038_46B51F04 
X-CRM114-Status: GOOD (  10.32  )
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

The SM8750 SoCs use an eUSB2 PHY driver different from the
already existing M31 USB driver because it requires a connection
to an eUSB2 repeater. Thus, for USB to probe and work properly on
SM8750, enable the additional driver.

Signed-off-by: Melody Olvera <melody.olvera@oss.qualcomm.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 5c85e5da152f2a9f24fd121fca427afe428438a7..a28eed0c59c2ae0adffcbeb3646b69879442ef27 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1596,6 +1596,7 @@ CONFIG_PHY_QCOM_QUSB2=m
 CONFIG_PHY_QCOM_SNPS_EUSB2=m
 CONFIG_PHY_QCOM_EUSB2_REPEATER=m
 CONFIG_PHY_QCOM_M31_USB=m
+CONFIG_PHY_QCOM_M31_EUSB=m
 CONFIG_PHY_QCOM_USB_HS=m
 CONFIG_PHY_QCOM_USB_SNPS_FEMTO_V2=m
 CONFIG_PHY_QCOM_USB_HS_28NM=m

-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
