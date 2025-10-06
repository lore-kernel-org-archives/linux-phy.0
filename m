Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81228CCA470
	for <linux-phy@archiver.kernel.org>; Mon,  6 Oct 2025 22:20:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jPNf+SeAnXuBNEq3NvWNTRK3IArk2k/hE4Yx8jBoAqs=; b=mmzy9iKaGk2dLm
	WLnrtpdwG7pxi6Rjsp3DQYIupHIW7P7xGmzs/IKmX8sHuQrroPfCVLqoK6w2LB2XHoMAkfmB2cGl/
	5hYWZqvpMOGFWFVzYVnK25kP2CpPS5ClCLCl91nCDOHPRnT1zu2vgE92WA9oKjvAdcBeHsn91BYk6
	D9+MGSaioAWTriuoLERmJMxUrLTfgWK/SXWI2Na97/gD8Tk+iiN4T+UrVj6FRXsJ2JbBVZ+JyzHDC
	wwbJIkcXq0iK4Q9kwo1Pa/ryh3apAaqXC4wmLbYLY1ZkIqoEoo7+fwHJsJTsHkKFzrWyopo8D55j/
	4eZuw+T/9GavTUBI4cHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5tZ5-00000000uSG-1BKi;
	Mon, 06 Oct 2025 22:20:19 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5tZ2-00000000uQf-2hiT
	for linux-phy@lists.infradead.org;
	Mon, 06 Oct 2025 22:20:17 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 596FObNI029291
	for <linux-phy@lists.infradead.org>; Mon, 6 Oct 2025 22:20:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=RGKF86TVDvAKv1fL1H0rAgmHc9LmQpxf1z8
	wB1amINA=; b=DYS9EGDOyjSCwLQjSssmFxKbQIh9+ybfQfPcqOrjrwn+/jVzKgP
	3p50a0MWkA5UDhy+24Woqz9K49yby4sm1uJ8xkh0UC1LjKa5PqpoywU2R3i6HKM5
	HuDKOicvCkDj7M36DOuBfKnoUxYV6jf9a5Tfk1ysf3gO/cS89taA1sSiXLM1rurq
	Y1ZJKE/uGP5HgB2EAmlLtyevh+BLl7+DC7u3E6vr/kdOIO+Ul7szYvTDhd4O69UZ
	Y9Rm+JGIBABOS2enF3KIZUVY7n75koOkPC2YoaLyvCvPYOZHzohb5LFZ+MlN9IoM
	fMimOQI5iFsccSGnTZTVMQw6LooSQybtrcw==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49js9dwhxu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 06 Oct 2025 22:20:16 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-780f914b5a4so4778817b3a.1
        for <linux-phy@lists.infradead.org>; Mon, 06 Oct 2025 15:20:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759789207; x=1760394007;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RGKF86TVDvAKv1fL1H0rAgmHc9LmQpxf1z8wB1amINA=;
        b=gMFnWgjGtJRU0lTEspR8pIhC0L6qgNIlVDnZea6IL7m9x+ua30FoYITnmfzvVrkX59
         YU8oGsiROwcw0JX/Ge3sZTbyA2P+sf1t8FfnZODrXWLyH4bmUz/rfsaKxig3LuEq7KGz
         qgzcqCuA3IHFj8e4CJdJc9aaOdtzVjoRThmg/CuqzTevx4U2QZVvImi0Nx6GuWCp87rC
         GX1ph+xl0QvvYe1h2+DwA7SHEsMjwWmT5RscNmvTb7hUs+M/GDeP4dr7W9tFWApweIPh
         FGI9smtiQUYchpuved+T5T5u6n0oZ8rQFjPhqWMzZE7HDQLDvSRA8ApCuVSOS5ew1jEC
         iWiA==
X-Forwarded-Encrypted: i=1; AJvYcCW1h3Fn/cciSxBhw69kdxwUosOcinjercgL+OO3Ucl2nLZgmzp6VvYTE8uni2kn8vyuYcOQXTjo/0E=@lists.infradead.org
X-Gm-Message-State: AOJu0YylDW/v3IXhnepjZUuQnDg/0RJ285JfcJ0XdJmjGpGHCiisT0H5
	EFl31icqgQuJYIKm71FxP2kn61gAGx0AmVw/6Lg+XkpkcPpjSaBT3E1YCyJw2ThQ4FsJcJUBUEu
	D14GKMIsy6sXfP3oPTu6V2mlequULuN33qFgVJ0sEGsVKOSWXX5FkGsbp0uKkHwn4PEBn
X-Gm-Gg: ASbGncutQ8axyYPaOLWuVhwe6WrsXTq1/FJ9HL6OwtR4ANVX6DIf2V/e6q6kaiiJI99
	aSYTAgCiUCsOJAM2GXpQFLaLr1+UQON1WrTShAABEFbibIpP5fogdYsWTaHrOreVGsTzTVhNu2x
	FuSDPOy5wi09iWmpoJJBkk1aOX5PHHbt93oXMBZArp0gtNDykTrOWvhnxA8owIjwhYJoqglqWaa
	XGOCQ+yvUZpb0c8Yw1rvzd+U5OdZ9V08Fjq8NWOgEDxa8KHPss2cdZ9OIAJk/EwEc1ejJg7Gbn0
	qOhCMOS9FVTjXKnMSXyBnf/DXvhX1dxww8XLSYLdeZgP6VYrkH3iVAKlallW7oOeXk8OuT5xfWI
	FFnXnsuUbAwTp5Irej2NBFw==
X-Received: by 2002:a05:6a00:84a:b0:781:d21e:136f with SMTP id d2e1a72fcca58-78c98deac4cmr16335596b3a.26.1759789206897;
        Mon, 06 Oct 2025 15:20:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEKfPsN6sUhqkQtc17HeV3fxUqq2CQHTosBe9Ogh+oYvS7dvTA1+fvWCJRnPz3xcYUrQk7a/g==
X-Received: by 2002:a05:6a00:84a:b0:781:d21e:136f with SMTP id d2e1a72fcca58-78c98deac4cmr16335560b3a.26.1759789206391;
        Mon, 06 Oct 2025 15:20:06 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-78b01fb281bsm13734968b3a.37.2025.10.06.15.20.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 15:20:05 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, konrad.dybcio@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com, kishon@kernel.org, vkoul@kernel.org,
        gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v5 00/10] Introduce Glymur USB support
Date: Mon,  6 Oct 2025 15:19:52 -0700
Message-Id: <20251006222002.2182777-1-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=Hrl72kTS c=1 sm=1 tr=0 ts=68e440a0 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=x6icFKpwvdMA:10 a=K6vXddHitPicjvNs8NYA:9 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: Vh-zsfVtaIuLUKkgKks8UbNocjGrjIrW
X-Proofpoint-ORIG-GUID: Vh-zsfVtaIuLUKkgKks8UbNocjGrjIrW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAwNCBTYWx0ZWRfX5npv6n6a+2ip
 1bzo+sGuIppHZDFzqpMRKfa6ZFpoGJF1462zidjzCm3txBbV9ymgXsPnKSWvqVRzBnq/6l4OGr4
 KAc75V/94CFSJHLEYpHGIRMUz9ir+6Dyy/5+kZbYXFdKADjGxmcHzOTSE5DFOu+QyxS4jiUO4Ec
 n8TLeXpYOgC8qMadRhQVlhwpjqf1Uu/1zVodrvAYR1clgOP2EB0OKtvgWIEVLnjBk3UZnxx15yG
 1yaSwAdPwvQmpzdycCIr3eMtA0LnxVu2yXM/gcjM8Th3MXeOD4ICvDs5EYGQq6A6KRNmkz558jH
 ptnc9yD6flXEFiTfZvNhoa8gaMWdzP9sBRbwnwA+9JeCis1KqQ/OD0dac9ZCnN4XmMWKfH/cRvY
 K7EdF1H7zHl9L/qzZcb0TJUFLoU6hg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_06,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 spamscore=0 adultscore=0 lowpriorityscore=0
 bulkscore=0 priorityscore=1501 malwarescore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040004
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_152016_691446_02C39AE5 
X-CRM114-Status: GOOD (  16.48  )
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
Changes in v5:
- Moved phy-qcom-qmp-usb43-pcs-v8.h into USB specific QMP driver
- Fixed DT bindings for clock properties for QMP combo PHY

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
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    |  72 +-
 .../phy/qcom,snps-eusb2-repeater.yaml         |   1 +
 .../bindings/usb/qcom,snps-dwc3.yaml          |  26 +
 .../phy/qualcomm/phy-qcom-eusb2-repeater.c    |  18 +
 drivers/phy/qualcomm/phy-qcom-m31-eusb2.c     |   2 +-
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 352 +++++++++-
 .../phy/qualcomm/phy-qcom-qmp-pcs-aon-v6.h    |  12 +
 .../phy/qualcomm/phy-qcom-qmp-pcs-aon-v8.h    |  17 +
 .../phy/qualcomm/phy-qcom-qmp-pcs-misc-v5.h   |  12 +
 .../phy/qualcomm/phy-qcom-qmp-pcs-misc-v8.h   |  12 +
 .../qualcomm/phy-qcom-qmp-qserdes-lalb-v8.h   | 639 ++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c       | 163 +++++
 .../phy/qualcomm/phy-qcom-qmp-usb43-pcs-v8.h  |  33 +
 .../phy-qcom-qmp-usb43-qserdes-com-v8.h       | 224 ++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h           |   2 +
 17 files changed, 1622 insertions(+), 19 deletions(-)
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
