Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25C98D3B9A4
	for <linux-phy@archiver.kernel.org>; Tue,  9 Dec 2025 23:09:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JDxguFK7VBNZTEjxOGGtH+RYu3k+Nkc7d8ySW2n4DpM=; b=2mgmXCChv0W3Rq
	kqHUAum1aSaUBbuM1E8emvMWff5n/WDR0rW6mrNGRqKGBOUCUe0ctakA7OHB9UEC4uU6p8/Jm3diK
	5bww3wtEwzS4PXYMnEYwFsIdbFLQIRuVbSb6pSBSBZjJvUj6eFIC5xaokqXO+XdCD2BTeORILMJ1t
	NbjNadytCcP5TxgEyy8wEqwKT8AI2B4TuQb2INIot8JDhy9iCNSxdkr8HypxYqqx+4oBemBHIvhpv
	gxAcQ8Dsm6+z9g83P/yGvMyPASkGk2DKQsldsvIDbz8tV6cBHSaf1L1hF2guf4YUpnLhB1zjySjAo
	RC8b0EKFDHesc5Tw94rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vT6qA-0000000EtaM-43BQ;
	Tue, 09 Dec 2025 23:09:54 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vT6q8-0000000EtYn-1Fd3
	for linux-phy@lists.infradead.org;
	Tue, 09 Dec 2025 23:09:53 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B9MlmlP297881
	for <linux-phy@lists.infradead.org>; Tue, 9 Dec 2025 23:09:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=A0uSh8vW9lPCtE6HyPxpqi
	EnW7ZnxfsJrUX3fT7dJJ0=; b=kcHmPK4qDLLHRbJKauP54fwyqSDrmHXicLSLxW
	uiesV8TY7tTz/ED6AqnpMX9Y6aeT6zNn5kOIXFm4BpI3qKwnE30cd5MahRHZSq78
	yc69B3rVuKVZZYDFaNusjw5D79ejheVAJzA4b4AtW+azz8QG/DdOSv0f27ryBx09
	wkq11Gs5BOUEvB1qaNcV/I8wzF744Jh4vKuq0+8j0ytQZZSrot3NVjKyEZJ+TZIZ
	yJJNzFGhENBVfHzuXcK7VSnaE8Fk5SLe1QMrFmuhuCPXK2iUXkj9uIWJlEQEZo7Q
	6ogcbEiucJpauxAms9wZ3E9/AOQGHCHouUv+B3MHyJKFfk0w==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4axp4vse9t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 09 Dec 2025 23:09:50 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b6097ca315bso10098314a12.3
        for <linux-phy@lists.infradead.org>; Tue, 09 Dec 2025 15:09:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765321790; x=1765926590; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=A0uSh8vW9lPCtE6HyPxpqiEnW7ZnxfsJrUX3fT7dJJ0=;
        b=Y9iIKgZngZIgkdIGOsL5MpQnIesLTL9Jx2e7VyI71FfHMlRYlFXdjZb0wcFFeRQzkH
         UkhT/fSmt5fi019s+kgNmvW8+Pez3zecAgPcnv3yJ1jJLhM8S9HCpD9bnjWN+gwHcsbO
         BTFiJlXskL2MyDyFJelbYJSskg7X8TvA8HZQEOBEjYEvkVWyKU0I3K+RRJzW7Jqq43dA
         ZLmqvYF+9qTfB1sbXTUuk6aRSCwh89IG0aAAhWvT5abMEnFQ1or5pIbwPP3CKHuxn9q7
         5kGWL2o71uZr4L69NkHeZU/CPhD6HSpaLjE0iGv/GmH/ke276ARt1NBkjJwyyGYjZTIX
         U32Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765321790; x=1765926590;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A0uSh8vW9lPCtE6HyPxpqiEnW7ZnxfsJrUX3fT7dJJ0=;
        b=YC0l+zSsbFBXzxoic97wpifQgQmKeD+e5KjFEEOeadH8x8ULizhOMmr8xpmqM6o4m3
         bxpVNSgoRmWiU6DIoUlBMDCE0Xs1rTg3HMN07/ygKCsNWi9AGsWkyONDRSJOVfvfEzZx
         6Wob8vrJ0Ucnik486mDVG+Oqz66MpxW+GDR+esX7DIFedIIyUqoaK/t7bpVnb3mQqxvd
         bUUwSs7bRGoi44yLZtx3ZXgK4ETfp5pE+OpQ0ijXL1xkFSsJWEBToZ1n6AC2tVKSWcmO
         yN/dSe+8/BL+ACMSfxwLoFTR9xpVSmNofIq7HtXs7x1ljxx4j74S/4uiRJxNLtZE7dkY
         QF+Q==
X-Forwarded-Encrypted: i=1; AJvYcCV4KSxcnHTWaifbJLXF9Sx0rveHW38zNu39VmYF3K5MqVvxBajIVDCszS6wL3BnM73esKzaC/QQUfg=@lists.infradead.org
X-Gm-Message-State: AOJu0YzSPyxvihDL4WDyWKXyeeeZQWzJIQXkHNXVkfdTtO+67Q13pFk6
	sKX5E/cYB7dUMpNtJBbubXD8P+lsF5ia+r2g6aRO7ghEnkgmXXE6u3P71Ndl6N9in1sjfxngTcg
	33Ib5c8SOodRAe0XYa/Tg9Ux/pPl23QZptKdROBRTBXrQZ/uyTfZM60zjkEsw3RQ6uqwE
X-Gm-Gg: ASbGncs3hfmubSu691l5/dVhirz5Pq8nxkBbrUF2xHumsE+/CxP5mykLZ/njwMsge2X
	f64MOQwpdCWtJQoT07ywrOkrbNPXlWzuVpOkWMdqVrAw8puIxGTCiDgYSJzek0FrcRwEfFh6gcv
	HtIb7TM7G8pgJobs4Qwpn6B/JJBGQXMrtsdJMKJvMO1mUsdn12s2QoWSSoEdIYTY5mypeYDhPvR
	3bmCdOdIhiIgF5NSRPIrlONMYEyLcIyXfv2I3sn07FO0wocH4Mhq2X59Rqstpx3n0iQ9sVxd2dB
	LrXerLQytInLleLYvCKHzTIvcoZ71yCG1E1wVg5/T27XGZGNYzOqWx4szxdHxvI8nkKZnsUUiw+
	HslGum1ihbBwQSL3g+F8gCU7GpgODeBJmBl4KAwwjaZQjqxDqTEDaLI1d8F+y9g==
X-Received: by 2002:a05:7022:249b:b0:11a:61ef:8491 with SMTP id a92af1059eb24-11f2966a032mr319412c88.3.1765321789585;
        Tue, 09 Dec 2025 15:09:49 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHevoqM4i/BbJgQ2JaDxCHV2AGELivaEW6uZMzJ/46mUwlajEEzJf/D2ChlpBKx4eQc671KdQ==
X-Received: by 2002:a05:7022:249b:b0:11a:61ef:8491 with SMTP id a92af1059eb24-11f2966a032mr319378c88.3.1765321788950;
        Tue, 09 Dec 2025 15:09:48 -0800 (PST)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11f283d4811sm3338933c88.11.2025.12.09.15.09.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 15:09:48 -0800 (PST)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, abel.vesa@linaro.org, conor+dt@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, vkoul@kernel.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v8 0/9] Introduce Glymur USB support
Date: Tue,  9 Dec 2025 15:09:36 -0800
Message-Id: <20251209-linux-next-12825-v8-0-42133596bda0@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Change-ID: 20251208-linux-next-12825-cad8ef4a16c2
X-Proofpoint-GUID: S2ptTi6TB4CllxRYNaDIUfLgN-oRiAfL
X-Proofpoint-ORIG-GUID: S2ptTi6TB4CllxRYNaDIUfLgN-oRiAfL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA5MDE4MSBTYWx0ZWRfX2r5Wze9eCucX
 vkNwGv7/GIFovYvAr9y9ePKp8XxchnDSurJF/EKc+FsYVYye60i9Z43e5hY5L/96PmE/j2iU49r
 qkbw7cWmgmlJCfxtJDgNMle2QQQCfXQYGzhEKhd+r0ffZOEC8Kc7GJ5PZzlfGBhqZVO3ylgqULW
 2NasKTscmi8zHT2RME+D+jNN8/TIq90Doveh5FAHU+SK87RzpM9eHeMJou8ZxLrNQ0VwAv/gCFN
 74xjbxSM3Ntb2pNoecPutLBAo3EukpWf8U8swuscwmnmLYdebE3TsTQrLCPiNttNUw4Hf04k8Xt
 arSSTScVbIbSn2U7x/CL53RXSwEy0o6L4QUZ8trlG/4sha/fL/86WJU/BJNr0UChQJqPvhjgHSx
 5CdCSYVGcpDk/qLc7KwWv1dlsU4HXA==
X-Authority-Analysis: v=2.4 cv=IoYTsb/g c=1 sm=1 tr=0 ts=6938ac3e cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=KKvgRvfW_d-9gY9-AngA:9 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_05,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 priorityscore=1501 spamscore=0
 lowpriorityscore=0 malwarescore=0 bulkscore=0 phishscore=0 suspectscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512090181
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251209_150952_346260_75C2B706 
X-CRM114-Status: GOOD (  18.68  )
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

**Please consider this for -next

This series enables the PHY level changes that are required to support
the type C based controllers and the multiport controller.  The typeC
ports utilize a usb43dp based QMP PHY for the SSUSB path, while using
the M31 eUSB2 PHY for the HSUSB path.  For the multiport controller,
it will utilize two QMP UNI PHYs for the SSUSB path, and two M31 eUSB2
PHYs for the HSUSB path.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
Changes in v7:
- Add DP altmode tables from Abel
- Updated some DP settings with new HPG settings to get the DP portion
working
- Link to v6: https://lore.kernel.org/r/20251024-glymur_usb-v6-0-471fa39ff857@oss.qualcomm.com

Changes in v6:
- Reworked the reference clock requirements for the QMP and M31 eUSB2
PHYs.  In the QMP case (both UNI and combo), removed the need for
the clkref entry, as TCSRCC clkref switches will handle votes on the
CXO clock.  For entries w/o a TCSRCC clkref switch, populate the ref
entry to the CXO handle, while others (with TCSRCC entries) will
the TCSRCC clkref associated to the USB core.
- With the reference clock rework, dropped:
phy: qualcomm: m31-eusb2: Make clkref an optional resource
- Removed the need for a clkref entry in the QMP combo clocks list.
Removed previous reviewed-by tag due to this change.
- Split non PHY subsystem based patches into a separate submission.
- Remove DP related init tables from QMP combo
- Link to v5: https://lore.kernel.org/r/20251006222002.2182777-1-wesley.cheng@oss.qualcomm.com

Changes in v5:
- Moved phy-qcom-qmp-usb43-pcs-v8.h into USB specific QMP driver
- Fixed DT bindings for clock properties for QMP combo PHY
- Link to v4: https://lore.kernel.org/r/20251001220534.3166401-1-wesley.cheng@oss.qualcomm.com

Changes in v4:
- Updated DT bindings change for QMP combo PHY to have IF/THEN blocks
to handle the newly added clkref, and fixed the commit message as well
- Added a new header with v8 offsets for the PCS MISC register set,
and refgen current load for the QMP combo PHY driver
- RE-added the headers for the QMP combo PHY
- Link to v3: https://lore.kernel.org/r/20250925022850.4133013-1-wesley.cheng@oss.qualcomm.com

Changes in v3:
- Fixed some incorrect patch ordering.
- Alphabetized Glymur QMP settings for combo and UNI setting arrays
- Link to v2: https://lore.kernel.org/r/20250925005228.4035927-1-wesley.cheng@oss.qualcomm.com

Changes in v2:
- Updated QMP combo PHY to properly handle the refgen-supply and to
remove the primary core reference/tag
- Updated QMP UNI PHY to properly handle the refgen-supply and added
a separate IF/THEN block to handle the new clkref
- Updated M31 eUSB2 to make clocks and clocks-name required for sm8750
and optional for Glymur
- Fixed missing PCS MISC table
- Added SMB2370 repeater changes
- Link to v1: https://lore.kernel.org/r/20250920032108.242643-1-wesley.cheng@oss.qualcomm.com

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>

---
Abel Vesa (1):
      phy: qualcomm: qmp-combo: Add DP offsets and settings for Glymur platforms

Wesley Cheng (8):
      dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add Glymur compatible
      dt-bindings: phy: qcom,qmp-usb: Add Glymur USB UNI PHY compatible
      dt-bindings: phy: qcom-m31-eusb2: Add Glymur compatible
      dt-bindings: phy: qcom,snps-eusb2-repeater: Add SMB2370 compatible
      phy: qualcomm: eusb2-repeater: Add SMB2370 eUSB2 repeater support
      phy: qualcomm: qmp-usb: Add support for Glymur USB UNI PHY
      phy: qualcomm: Update the QMP clamp register for V6
      phy: qualcomm: qmp-combo: Update QMP PHY with Glymur settings

 .../bindings/phy/qcom,m31-eusb2-phy.yaml           |   9 +-
 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml        |  18 +
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         |  16 +
 .../bindings/phy/qcom,snps-eusb2-repeater.yaml     |   1 +
 drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c     |  18 +
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 676 ++++++++++++++++++++-
 drivers/phy/qualcomm/phy-qcom-qmp-dp-phy-v8.h      |  25 +
 .../phy/qualcomm/phy-qcom-qmp-dp-qserdes-com-v8.h  |  52 ++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v6.h     |  12 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v8.h     |  17 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v5.h    |  12 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v8.h    |  12 +
 .../phy/qualcomm/phy-qcom-qmp-qserdes-lalb-v8.h    | 639 +++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c            | 163 +++++
 drivers/phy/qualcomm/phy-qcom-qmp-usb43-pcs-v8.h   |  33 +
 .../qualcomm/phy-qcom-qmp-usb43-qserdes-com-v8.h   | 224 +++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h                |   2 +
 17 files changed, 1918 insertions(+), 11 deletions(-)
---
base-commit: 82bcd04d124a4d84580ea4a8ba6b120db5f512e7
change-id: 20251208-linux-next-12825-cad8ef4a16c2

Best regards,
-- 
Wesley Cheng <wesley.cheng@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
