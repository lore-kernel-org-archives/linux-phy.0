Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 236ECCAC5BB
	for <linux-phy@archiver.kernel.org>; Wed,  1 Oct 2025 22:05:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8TNovHCxaQx+pmA0/NVuUVt9WEcnfNDeIYODxZYzjhY=; b=hr1jKC+40VeOnu
	OZFAKGbERABmScRDsSaPlqGyR+vGD3NrdI7tZn96PPYZcKp3yVk17cgZGjPIr/kg4F3n4hDCS/F0s
	WBHvg/5F4EjYVbTs3K5jPqzELi9xcWAhF0JveDp2fYgPrsiRCiv0dusZUlIOPvd4B1ghBQTjMDphD
	3M6i+lODUXC2kcNmXxdjtZOhexhWMtego5QY+c0NwPURf0rqlCGNXr3nUnKKJHVV06fYgL+6ztvNC
	8ME1FED9+5Ves3v0FzCf90x06WX6cERC2WUXKIVXoREbHyJ28XTtHkIMj+c6bXRSmOjiun2dn87Sp
	r1Wjw3O9j1pSIkUyxwJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v44xD-000000096sG-34ob;
	Wed, 01 Oct 2025 22:05:43 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v44xA-000000096qw-2UfK
	for linux-phy@lists.infradead.org;
	Wed, 01 Oct 2025 22:05:41 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 591IcEQn000929
	for <linux-phy@lists.infradead.org>; Wed, 1 Oct 2025 22:05:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=2E82fWMJs7/CltSb2bc3lU2woFhMHzKTAIE
	lMVu/z78=; b=Ha4LZ4Fo0k1WjYvzIlc8wzeiX+X4GqWVv0C6thmcID+Nq0QA75r
	pzWtGB7EkPKQenbLnSZHwxQRXQgwvR0ZgDu6FZjN1VEl7eAixHKkcd4P1j7neH2+
	BQ4s+7cdmNjRIon8dEmmVeVzo483QDFTCMqdVQQrgtU6E+GEg3t1uDPnYLmV6KYI
	+gE/bZrSv6A+6s5+Y11K3d5Q3LQXGgK11GtB0FBSKx/s02/LSRxv/fvwdhMqsjaJ
	ADTSOYEeoljVutvh2PRzdKuDJzFerz0pGLPzD9HbXZGE7Z/rI2DSaNxOzVzzFj7Y
	A4Zg9tp2HqHjFOhwPjn/qd0miBklQ7FEecg==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e6x5x45k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 01 Oct 2025 22:05:39 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-3352a336ee1so787388a91.0
        for <linux-phy@lists.infradead.org>; Wed, 01 Oct 2025 15:05:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759356338; x=1759961138;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2E82fWMJs7/CltSb2bc3lU2woFhMHzKTAIElMVu/z78=;
        b=Gau80HMMb0SMEC4IEe/Iy231isrgijewhdAjHNdJcr+5SxSRccQlB8NCkRm6xUXJ6Y
         InZsEK1OxwdUP+47qW3vHUTavYB+WbLqyP90BLB61OUryZ+67qxCtb+TeXam78WBbztd
         2K6loW9HD3o2VHuEOc3mWZThI6wZxzF5f4YM+n5QsnjTRQvsCn3BieLBhOMH59HHyU3K
         cV36A+5diVqhub9r533V5fze7pDksWBHodh7fqPGXWIrRtTBy2DIqPjkKzRHXT/O6MNG
         K7H40DG2ohnaCZyGs+C0tMa6LusYC3WcdPmYVYL++wCCuemv/zssAdFILqqCNI4EQZCi
         h5+Q==
X-Forwarded-Encrypted: i=1; AJvYcCWeAXkczsASmSAKBXVnf61ZQW5EiHh4fyE0Fl4gHFcq1kQIYkXp04egoHMEghx/FNYpmOrXDWvKGto=@lists.infradead.org
X-Gm-Message-State: AOJu0YyCDBsKc9AuOFZ7xZp/XTOlhiksVn7rgdUwHWcnVOeSusiDufhK
	IjN60Zl6Ghbkzv95evUArQygJHcehEV1PSvzJ9K70+3sWIAQAfayLBItJcSaRj/3GfWbczZnVJq
	jSv/7NPYfuLQIZrRHEmxjBvMWsO6/+DcUKqYtSCBr8wY0l9qkV/cgMVTlaLPdhtBTyZcM
X-Gm-Gg: ASbGncuS3j/ssiaGKT1C/HVfFIHb7ps1RJaOqvnbtSskOnVz9uIeOPFhDukGeEvApsy
	2XRbLFcUV29usQxuBNYLKnAY3vLmqp/0CyVXaUrrVH0u0tvcMCxf5z2Pkpi8chn/qL8eILVQLLr
	T7TJ/m2k+AVPZXirLGvKSOqa8TzbjQEnLJrqghYrHQmNmKqq7knWGDtEPkwZXyuHOiDBE6Dou/k
	GhvXuMri2hz0llSMLTANHjCZFBaOpiJZTeUDptmtjVk2E4ugCaky/E2c35Fpptq32Fru9gzDgUi
	DS4MzQeFQU6myaV0imebbBM2pLq2nmMczdfnYu4yDJnz9347pUY6NgvKAZmBncKvyK6yhvQFgE3
	bhnYOBQhdbHZEMq9nNse2Qw==
X-Received: by 2002:a17:90b:4a4f:b0:329:ed5b:ecd5 with SMTP id 98e67ed59e1d1-339a6f077fdmr5548832a91.19.1759356337589;
        Wed, 01 Oct 2025 15:05:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHpG0a+/1ddOhqZgj2PUQhFUXjO9C38MdvW9oBXkB4sjVIrrjyTq0zZe7rYuFj7BM7r6xga8w==
X-Received: by 2002:a17:90b:4a4f:b0:329:ed5b:ecd5 with SMTP id 98e67ed59e1d1-339a6f077fdmr5548793a91.19.1759356337055;
        Wed, 01 Oct 2025 15:05:37 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-339b4ea3c3dsm702085a91.5.2025.10.01.15.05.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 15:05:36 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, konrad.dybcio@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com, kishon@kernel.org, vkoul@kernel.org,
        gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v4 00/10] Introduce Glymur USB support
Date: Wed,  1 Oct 2025 15:05:24 -0700
Message-Id: <20251001220534.3166401-1-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Proofpoint-GUID: ypX8zeaq1tsmh2b6F6Pu7iETgd9NhKH9
X-Proofpoint-ORIG-GUID: ypX8zeaq1tsmh2b6F6Pu7iETgd9NhKH9
X-Authority-Analysis: v=2.4 cv=ZtPg6t7G c=1 sm=1 tr=0 ts=68dda5b3 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=x6icFKpwvdMA:10 a=K6vXddHitPicjvNs8NYA:9 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAxOCBTYWx0ZWRfX5wuseDARqzI1
 791+Uzhd0p7VeLx6H108a0rFPs34Qj1PqNGDULbYR1fz9XuHrLiiB0PuoL7mqT8pQOGQUTskqfn
 2Lm8LtUEM3eDGDjfrAmMjlzK1UlwtfZtXYXaP4XIDV+v/y0zISnzfqA/TmWPUH11PZxu/0+CLli
 mR3xV1pim9YInj73HSVYijAyKreJWOzY0iRzfVK/JjKS+EnpXs25BFspkPFKjT/hZtMsv5SJCZi
 wloLzy8sS+MGCZvqbMVNS0rIl/eDMBSseKKmEEZNV4EAVVEBtuaiJOHAxDkcOvQIPdkNEo11Zdf
 ywdeeJ7W5/QlnayH8U+ylXFxNkPGh0YRIkG7RTia+f6u5k1fB6IiYBOLcyZg329fppJBWLZ3aCc
 R6bdo3jKMw1w/3lQErwDatFvsnszRA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-01_06,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 priorityscore=1501 malwarescore=0 bulkscore=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251001_150540_750285_70DACBC5 
X-CRM114-Status: GOOD (  17.21  )
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

This series enables the PHY level changes that are required to support
the type C based controllers and the multiport controller.  The typeC
ports utilize a usb43dp based QMP PHY for the SSUSB path, while using
the M31 eUSB2 PHY for the HSUSB path.  For the multiport controller,
it will utilize two QMP UNI PHYs for the SSUSB path, and two M31 eUSB2
PHYs for the HSUSB path.

-----
Changes in v4:
- Updated DT bindings change for QMP combo PHY to have IF/THEN blocks
to handle the newly added clkref, and fixed the commit message as well
- Added a new header with v8 offsets for the PCS MISC register set,
and refgen current load for the QMP combo PHY driver
- RE-added the headers for the QMP combo PHY

Changes in v3:
- Fixed some incorrect patch ordering.
- Alphabetized Glymur QMP settings for combo and UNI setting arrays

Changes in v2:
- Updated QMP combo PHY to properly handle the refgen-supply and to
remove the primary core reference/tag
- Updated QMP UNI PHY to properly handle the refgen-supply and added
a separate IF/THEN block to handle the new clkref
- Updated M31 eUSB2 to make clocks and clocks-name required for sm8750
and optional for Glymur
- Fixed missing PCS MISC table
- Added SMB2370 repeater changes

Wesley Cheng (10):
  dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add Glymur compatible
  dt-bindings: phy: qcom,qmp-usb: Add Glymur USB UNI PHY compatible
  dt-bindings: phy: qcom-m31-eusb2: Add Glymur compatible
  dt-bindings: usb: qcom,snps-dwc3: Add Glymur compatible
  dt-bindings: phy: qcom,snps-eusb2-repeater: Add SMB2370 compatible
  phy: qualcomm: Update the QMP clamp register for V6
  phy: qualcomm: qmp-combo: Update QMP PHY with Glymur settings
  phy: qualcomm: qmp-usb: Add support for Glymur USB UNI PHY
  phy: qualcomm: m31-eusb2: Make clkref an optional resource
  phy: qualcomm: eusb2-repeater: Add SMB2370 eUSB2 repeater support

 .../bindings/phy/qcom,m31-eusb2-phy.yaml      |  21 +-
 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   |  35 +
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    |  76 ++-
 .../phy/qcom,snps-eusb2-repeater.yaml         |   1 +
 .../bindings/usb/qcom,snps-dwc3.yaml          |  26 +
 .../phy/qualcomm/phy-qcom-eusb2-repeater.c    |  18 +
 drivers/phy/qualcomm/phy-qcom-m31-eusb2.c     |   2 +-
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 350 +++++++++-
 .../phy/qualcomm/phy-qcom-qmp-pcs-aon-v6.h    |  12 +
 .../phy/qualcomm/phy-qcom-qmp-pcs-aon-v8.h    |  17 +
 .../phy/qualcomm/phy-qcom-qmp-pcs-misc-v5.h   |  12 +
 .../phy/qualcomm/phy-qcom-qmp-pcs-misc-v8.h   |  12 +
 .../qualcomm/phy-qcom-qmp-qserdes-lalb-v8.h   | 639 ++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c       | 163 +++++
 .../phy/qualcomm/phy-qcom-qmp-usb43-pcs-v8.h  |  33 +
 .../phy-qcom-qmp-usb43-qserdes-com-v8.h       | 224 ++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h           |   4 +
 17 files changed, 1620 insertions(+), 25 deletions(-)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v6.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v8.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v5.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v8.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-lalb-v8.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-usb43-pcs-v8.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-usb43-qserdes-com-v8.h


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
