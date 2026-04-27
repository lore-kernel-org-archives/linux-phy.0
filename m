Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C846FF8867
	for <linux-phy@archiver.kernel.org>; Mon, 27 Apr 2026 21:42:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kbWyQNIYwBaFs9UF9UtbKmtprizpQeR1LEfcB1z8B3w=; b=FAfrspHj9eoW7C
	4d2Wf+CMiPkZJadjvjxHegdKN6jWKa3BXpGFIRzp7ATZNc3V1wOoZXLhZz4J+jwRM0RE+Ct7/2TzS
	NLd26aWiQ8vStU8+7wLQWr7naM3TmVZU4cZ0cPCTbb2yn6vrRI8yiBD9erjSMYsPZNPSahHl6dsxN
	FtewKeiqCUE3QDZodHqLSBRqAwTQuEn6L8amRENI9CbQe8M7DAZct6fDZnGac2KLnK3WHexAj4jVx
	LFMP2em1PTY7qxAL7oKLAoFys75UIOCWcOIUEz4YbHVHN0qynTKBqy6eM4d7bx6QemBA4XsGyY3G5
	vbYFq19c4OEj0i0TbjPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHTj0-00000000Brr-2YXH;
	Mon, 27 Apr 2026 21:42:42 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHTiy-00000000BrA-0Poq
	for linux-phy@lists.infradead.org;
	Mon, 27 Apr 2026 21:42:41 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63RFLSKD441000
	for <linux-phy@lists.infradead.org>; Mon, 27 Apr 2026 21:42:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=TJjHZ18GH17YGrCyaUvGtQLd/cBQ2Wd6z+S
	vG6pXlRU=; b=SA1MYBMv2oQINiSXWPiyj75cCCqKhQtibSeZsvS5Yh3gVG3xW6j
	TAg9Zac7zhqAA4cRd0onzYu2aVGfmAeBRs923zWqGoplkjaH+e0hRXonriAXukX6
	BG0YrqB6wOWMwlxQmNLz+63fOuj27Ur38P2pKC38Xl3VycLJlR60jdjJhGRY2Odn
	jifunNy2ixO32nxPAEKBIyoY5O1wt8W147Y8QejXMjiNfmlff4e7OrcyICkdWJu7
	eYCnsPlE7rr7qcCh3PFKFFp8rD5fnt3j977VGGIfmK05dqND0NMmAfQpPgv1ZxhD
	ZvuDDw+kCla/O++ATbhaSsvMKHaGq0qJH7g==
Received: from mail-dl1-f69.google.com (mail-dl1-f69.google.com [74.125.82.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dtac41bj7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 27 Apr 2026 21:42:39 +0000 (GMT)
Received: by mail-dl1-f69.google.com with SMTP id a92af1059eb24-12dd33dc337so1168850c88.0
        for <linux-phy@lists.infradead.org>; Mon, 27 Apr 2026 14:42:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777326158; x=1777930958; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TJjHZ18GH17YGrCyaUvGtQLd/cBQ2Wd6z+SvG6pXlRU=;
        b=KRRnLaTt2jStYrhPxYvJIzjifgUNeMxCn3FX8A5XpdNBhbJEgIrEBlwCOaGl61FV10
         XPSTXglUsUxCWKuJojV5al1wyXW+/ic6GpPfz6IFqUVED7CEExJ+j0viJMHfZaKlTd1Z
         P/tOcvXiejeifPgmE2zP0d6qLdsvKnlu5EWwLTthKb7mVfkYQBi+5V89YDXKwVoQ9ER0
         2+N293ohTLDtQ2/lJE9UWPYBuQO0k+Tt/TYM15L1O5oUbhWSIkyo3KAAdLWeLISOo33y
         xuYRiaj1mO46j8Hx80dpc62SvriwFI18u4x4xzIuBOUgzDzUOeXvGDljIYbTFucLe58I
         4IDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777326158; x=1777930958;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TJjHZ18GH17YGrCyaUvGtQLd/cBQ2Wd6z+SvG6pXlRU=;
        b=OCX+xO+qpZoCG+JNdz8wXFiivJNHcK3xd7RS+pQCts0IIxeP23kSbCKDSEGURT7OF6
         Kd9ry/N7br7y/UIBXbp9DDuae5B7aHMiiBsztMfNRTgTChJ4rwZEiJKzRllT6laXCTBK
         ZKF30m8CYGjDSUOfngq5aFfgx8m1ZU4XcjZIo6U8oVKsWEl4b6ZmqgAh/EkD1feHWD47
         DlSRKlJ7HMa3UNHevgr7UkoYK/zxjHXAS2AJv8SUHqG6JKvKlEQamu1Yy6Mrojylwhuk
         MQrxjnKSRSmwN3xVbnqIFxjtrBhCjyhYqBEg9vb81DnB7fp2CsXG+x/v0eCB+57ee10Q
         d+uw==
X-Forwarded-Encrypted: i=1; AFNElJ+sz3JFSC3+lgAnirJbRTbDKA5JOXOqfrmyiXGIyy8SXtAEk5TvM6DDkckRgMjjR849BBlSp1IAEH8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx5jbAJ68FMX5DqSYN2C5KD2cZNb7VVx+vT+I3GeUZT8JgstiLe
	VLs4XICz8LW24TU5A4QnMAn5elrCMOl8mLVy63HSU1A5XSQvsYXuQ81eEPeRTapjEeY4QXdeG6T
	fvjiUXkaT21M3ICPIY/i0NGVv6eV/3obduhkgPiOTa9z+1B/1LY6ylNA1y4DzEUo4DCgM
X-Gm-Gg: AeBDietTXqmrml+11IeW9IfbzlOb/wr1rEeFFbIlUkV34wtEnJVE1FF8gT52WZRv0q8
	zquYK41cOPXUWiW7qU5zfZMzWXk/2V5/wfRktuH0y6M0ez5UE4zmGB97RYYhT5EDfRELeYu707K
	iC5qdFKzWErJPeNSFY1RCL24B7lItxRayNnGnxdvnhvNCywZfS7GaOOBm1STAYTMVjZ6TQTrpY6
	zJhnYcWC8yperIQlUCVIpwcBspHFmnkNizsXVJqmNCiO6U1ck3s/nL/ZpcOlxx83K3izIzMijCP
	/TBrGWLG5C2TToaf4NV3oSqBP2GrMquM/pg2V8Jh32rAeO9ODcOd1U+vAqXdIZJnm1SwwfuJiOV
	K2oUyImV4eavec61dUOa0pM98XgyJV2+5p0AMUjhvvP2fa2t1h7PKrBEytYqbqw5lqyUFFjQubQ
	64Z3cI35LH4w==
X-Received: by 2002:a05:7022:b8c:b0:12a:6d05:3938 with SMTP id a92af1059eb24-12dddb46febmr179865c88.7.1777326158500;
        Mon, 27 Apr 2026 14:42:38 -0700 (PDT)
X-Received: by 2002:a05:7022:b8c:b0:12a:6d05:3938 with SMTP id a92af1059eb24-12dddb46febmr179836c88.7.1777326157948;
        Mon, 27 Apr 2026 14:42:37 -0700 (PDT)
Received: from hu-rraheja-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-12ddd927bbbsm653119c88.2.2026.04.27.14.42.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Apr 2026 14:42:37 -0700 (PDT)
From: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
To: vkoul@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, robh@kernel.org,
        neil.armstrong@linaro.org, gregkh@linuxfoundation.org
Cc: dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        abel.vesa@oss.qualcomm.com, wesley.cheng@oss.qualcomm.com,
        krzysztof.kozlowski@oss.qualcomm.com, ronak.raheja@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/4] phy: qcom: Introduce USB support for Hawi
Date: Mon, 27 Apr 2026 14:42:13 -0700
Message-Id: <20260427214217.2735240-1-ronak.raheja@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Proofpoint-GUID: Fz-C56H_tCJqwU2rHQDl31_HpfdgS--1
X-Authority-Analysis: v=2.4 cv=D7J37PRj c=1 sm=1 tr=0 ts=69efd84f cx=c_pps
 a=kVLUcbK0zfr7ocalXnG1qA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=fySfh4wnc5TE2N7XS4QA:9 a=vr4QvYf-bLy2KjpDp97w:22
X-Proofpoint-ORIG-GUID: Fz-C56H_tCJqwU2rHQDl31_HpfdgS--1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDI3MDIzMCBTYWx0ZWRfXxaSq2xLYOtJG
 bG0mg0fiNWj0RBNkA+nBE5uBrpNNutDGUzSwhm4Rm1VYPWTy3I97j+a/NQhIasSehH/5KeSwtfW
 MIm2RLRBBeQJ9n87fOulOUbM5JdZIOYBzOKZ6pepNUIJ09J1t0gf0QBRIYFSJ0L0QGJ7xGvcyQv
 SjRlufm/XTG3T7jkilERKg1JUnIAQqX9chcn8oQvSCKjpCCM0OBSK7iPwMFo6rIaKU3HJmGovu8
 ZSceKHcb5EVYT0n539Kqm2FEm3iC00dvzNHQpSccFOjwCjWUZ3jLERogkdS3dCPSdlWAso9c2MM
 6k4Sa1bsPwHUh4vDBZIzRWE54I25UEuxOHd+NGMeBLEUJBnZR7G7fT0Np2F85sLCzDskMVYznCA
 GbEam6DE67Kl/MBkktfYMa+102YwfLbpzYCmrxJPEYGF73nwNYl0KFCWQijhkpVlf87VD3mbzKX
 N2zzgvimn/1SlG6xZrQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-27_04,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 phishscore=0 lowpriorityscore=0 spamscore=0
 priorityscore=1501 suspectscore=0 clxscore=1015 adultscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604270230
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_144240_155548_85211D8F 
X-CRM114-Status: GOOD (  12.66  )
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

This series adds USB PHY support for the Hawi SoC. It documents the
QMP USB3-DP combo PHY and M31 eUSB2 PHY bindings, adds the Hawi
compatible to the DWC3 USB binding, and adds the PHY initialization
sequences to the qmp-combo driver.

---
Changes in v2:
- Clarify in the QMP PHY binding commit message why Hawi needs a
  dedicated compatible string vs previous targets
- Remove stray blank line in hawi_usb3_rx_tbl
- Link to v1: https://lore.kernel.org/all/20260425070002.348733-1-ronak.raheja@oss.qualcomm.com/

Ronak Raheja (4):
  dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add Hawi QMP PHY
  dt-bindings: phy: qcom,m31-eusb2-phy: Document M31 eUSB2 PHY for Hawi
  dt-bindings: usb: qcom,snps-dwc3: Add Hawi compatible
  phy: qualcomm: qmp-combo: Add support for Hawi SoC

 .../bindings/phy/qcom,m31-eusb2-phy.yaml      |   1 +
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    |   2 +
 .../bindings/usb/qcom,snps-dwc3.yaml          |   3 +
 .../phy/qualcomm/phy-qcom-qmp-com-aon-v10.h   |  15 ++
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 231 +++++++++++++++++-
 .../phy/qualcomm/phy-qcom-qmp-dp-phy-v10.h    |  15 ++
 .../phy/qualcomm/phy-qcom-qmp-pcs-aon-v10.h   |  13 +
 .../phy/qualcomm/phy-qcom-qmp-pcs-usb-v10.h   |  19 ++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v10.h   |  34 +++
 .../qualcomm/phy-qcom-qmp-qserdes-com-v10.h   |  89 +++++++
 .../qualcomm/phy-qcom-qmp-qserdes-txrx-v10.h  |  89 +++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h           |   5 +
 12 files changed, 512 insertions(+), 4 deletions(-)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-com-aon-v10.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-dp-phy-v10.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v10.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v10.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v10.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v10.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v10.h

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
