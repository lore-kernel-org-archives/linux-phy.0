Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C81E0CAC5A5
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 00:52:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zdCO/AcxL6PvTec5XK+q78BsfNi4USRShqJOwubIPYY=; b=QrZkWzc48qEcLa
	r19yR0+198BOcCkO1+nOZ7eYQprIqfMt8JpgwkjAQRconYZaWtMvA7zk6fYCREiR33jVBjkRrH91X
	NR0RApNhZePgYBFw4zqRd4pSUMBRG05FlQzNQkZnOXa8vtO1XM1Ge9Fy/hGkahoIsx++ZyZL9Qfev
	nuy8YNkXHTnkpgmGKOM/uIAFrLI0TQVxRdDxhJyZKp3ebZJSYoJEViyMRI1fSIJ9kUgc09y/PSEXG
	122zOLRSIlh2d21R6nqtET0kJsIj22ef7tjNQzWC4jFRDE/IRcyPBNxahJUXek1b5xvFY/trZL2RZ
	YEsEI085hE39QWgXA9eA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1aDt-000000058B5-1nPZ;
	Thu, 25 Sep 2025 00:52:37 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1aDr-000000058AN-2Ddj
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 00:52:36 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OD5hvf029706
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 00:52:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=nzXyVD9qAsVJZyPhyB0idDDfhpNBSjuyVh5
	MWcnszg0=; b=Mw1Y/hgfaRAUkNXuOLfG7N7fIOCYu0rN60W2g9HeVeH5DOjqemO
	vIVohzMTSOktedDH3VYOOiyYQ+Kx1CSK4aa1BFd4DCXfj7Qn4n0gMyQrep73EYmm
	+faT+2rAFgABGGk97TaWprDY4217dPvwAvYIR/qAnlV4dNd3Oec4ZU6PmhGYXa3e
	sMDGE2AabTpWyb1P3L3MS2le6rg9Q0CaIa31V+kc2rQOD0APEGJuBZW9iFusTzXF
	IacOhwmncFpauac6FoCCvnD4xApAc4LNaiSK4mcyt91DdJPEYj5U6Fx59zVQDeCN
	wrOAjeBqsyf122XE1hPWCo0OIPcmFk2NZng==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499n1fp3k3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 00:52:33 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-24457ef983fso7480655ad.0
        for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 17:52:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758761553; x=1759366353;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nzXyVD9qAsVJZyPhyB0idDDfhpNBSjuyVh5MWcnszg0=;
        b=rs21aLr9plx2a8CiXlgriS60cXzAaeo72rEOuXCC6yaLAL+aNME/hcsh9g7AkqKLfZ
         zvg2/hlYpa1reQsFmyAA/Zb2XrhEQmGjTYwtl33WMG4md4bFKtjLNMCY9hmGVjZ3wDLA
         v50uJK8oUEQFEbLlw2GEdvyIe23rQL7a+jfmhfc+XGQKUrAECouQrzwqgfXuZbyZ7xSw
         HZlbS8+dQHynl9JiuLxUB/7t8ervzl6lmLDxBm06mRlvlBzeRS+uJyGvu14SSFs5A5KC
         0eCMWvAIQ7EybMNFQ572NV/0pjtWaCUXjvoT21yxvJDJeDuOWPoirVsQfadH4iHMe5/K
         0thA==
X-Forwarded-Encrypted: i=1; AJvYcCWf6A4m8mi75xYWNNNuQXUHFfZMAW21CS+OooYobYOrvBHRISw0evrSzDHpKIkLQOCOpYIeMR/PPSE=@lists.infradead.org
X-Gm-Message-State: AOJu0YykpooR++2tZicYX8JAG28aGku2gMmzLG768i3KFEUvr8k1+kpF
	30LfPm3rkOOPLhHgOMxEl+SjUDpP5jahnxu1zq3lB55FOWo+Rl4EvSa1w6c3E2svq+vuOGNa+KH
	CFjxvErfjP0HJ8Gl1HOX8iNfEhESQtp3XHp7OQyUkvdi2NoE5qIQ26D2o7IwQhokumgqW
X-Gm-Gg: ASbGncvGFHVIOCXhQtLELu+dhZtUq+FgXVADGYB8F6nxgUxWDMDioJ0LIZaGnRzXhbz
	kLJV4OTeOBTdfPeiIuuSJxt1ouya9XmwkcRW/+OOwgfyWqmbbS2wONrAEn55u59nRxnB0LtAThU
	r9jLS4n3ifb9q9yk1+Fxl8WhASGbZhK4c/SmR1Mmf2lzk50kOP4dQbEe+W3cq0GaWyRbtNxTfo5
	kz+wz+Zn59bR5DxU1hhQE3YYnsNsI2OqkQR0CnWQXOM8P/Sb4tQINiMpAfDEZ5xHtuptYxS+xXy
	LLUUFW0SVzK5gy2aI7Dta9kWfkCiZazkcA4aVkmMb2IW6UHS/blZ/2yHfPIqVLeb0YaxVYHQvoH
	pXTlPk4Yc/EVyGhPt
X-Received: by 2002:a17:902:d60f:b0:267:cdc8:b30b with SMTP id d9443c01a7336-27ed4a873c8mr14727455ad.53.1758761552802;
        Wed, 24 Sep 2025 17:52:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHZb/eqow/4MDtfwG0wirrD5pVGj+rZTu8owWBw6yjQmbqpouZLqrvcXW52IQPKF2b9fRjZOw==
X-Received: by 2002:a17:902:d60f:b0:267:cdc8:b30b with SMTP id d9443c01a7336-27ed4a873c8mr14727135ad.53.1758761552307;
        Wed, 24 Sep 2025 17:52:32 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed6ac27d4sm5238105ad.135.2025.09.24.17.52.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 17:52:31 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        kishon@kernel.org, vkoul@kernel.org, gregkh@linuxfoundation.org,
        robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v2 00/10] Introduce Glymur USB support
Date: Wed, 24 Sep 2025 17:52:18 -0700
Message-Id: <20250925005228.4035927-1-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: IGeZNRtXckeHhf_2OAfWx-Pa1GmT3ug6
X-Proofpoint-GUID: IGeZNRtXckeHhf_2OAfWx-Pa1GmT3ug6
X-Authority-Analysis: v=2.4 cv=No/Rc9dJ c=1 sm=1 tr=0 ts=68d49251 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=yJojWOMRYYMA:10 a=uF0vjx2ZuONpqyvErPEA:9 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAzNyBTYWx0ZWRfX+2ZHcAWwKn35
 BDTBZs0kDYswSxKEYZXH5hmgw2nJnEl58rSqn6BBL6K4uSytzBVPH4W0CZcfbJ2oY0JYC8q0D16
 +gWMrqZues/eEM1+BfWHvIPC86YbeHPvb25lZvMHOIctsveQDXArlUIj+/QI+xGjh4EXLi5QGKh
 p1zqgPd0f5gZ9x1fVowbPVUoCezHQGdGjZVu4OZdVoTCI7LunctQ6DSYJ6PXyrd3EKkUCIfF44y
 l6w5eutx9BLZ4/0xzBSlbjfW3Yj8OosSaJtH9uhaFJ1qmByEXBWgaXK7NwggDAGf60CBDMH+JoE
 xs1e2Q2LZKxYINa8TftAhcr5rsoZSZO/AoZNbR3An5SjIO+7PjAq0GqJSOIRz+7Y3eekmi7GJZ5
 waOTJUGV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 adultscore=0 malwarescore=0
 phishscore=0 bulkscore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200037
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_175235_572861_AF9D4CED 
X-CRM114-Status: GOOD (  14.42  )
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
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    |  19 +-
 .../phy/qcom,snps-eusb2-repeater.yaml         |   1 +
 .../bindings/usb/qcom,snps-dwc3.yaml          |  26 +
 .../phy/qualcomm/phy-qcom-eusb2-repeater.c    |  18 +
 drivers/phy/qualcomm/phy-qcom-m31-eusb2.c     |   2 +-
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 349 +++++++++-
 .../phy/qualcomm/phy-qcom-qmp-pcs-aon-v6.h    |  12 +
 .../phy/qualcomm/phy-qcom-qmp-pcs-aon-v8.h    |  17 +
 .../phy/qualcomm/phy-qcom-qmp-pcs-misc-v5.h   |  12 +
 .../qualcomm/phy-qcom-qmp-qserdes-lalb-v8.h   | 639 ++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c       | 163 +++++
 .../phy/qualcomm/phy-qcom-qmp-usb43-pcs-v8.h  |  33 +
 .../phy-qcom-qmp-usb43-qserdes-com-v8.h       | 224 ++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h           |   4 +
 16 files changed, 1562 insertions(+), 13 deletions(-)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v6.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v8.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v5.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-lalb-v8.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-usb43-pcs-v8.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-usb43-qserdes-com-v8.h


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
