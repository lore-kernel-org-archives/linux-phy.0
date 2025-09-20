Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0363CAC597
	for <linux-phy@archiver.kernel.org>; Sat, 20 Sep 2025 03:21:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9OaY394ej9P+oheTRBnpsFVaEE+UYMhtNTRwXh7SUbs=; b=AJkYopyyBi1dYO
	87AoP7KQa/ctIv5tLJALYn7fDrn+pQ6f9udneqLE9mx7K3/NeAsNarxyBb0l3WmVF7ooA4yPJeSTM
	baFg5XqLgxOzZkBrjFiGYYlvQrX8QYTtDxYlj85Qd6twXYOOtqifVOGa5wXSIpHyJYxpopDeDpJwJ
	HUOf6Nn3vlnClntRgJbwp4W7mQhA49R/ESRAbxNWiUF2zcaYq7AnNU3W+/QmIeS4hyLGxGgb1Lftk
	YeV00gSJCrNwU/cgh4whncv4ZsQES+8V+tMRiipKobFoXgdM77QaieD+jGiXUuPL7c1vHEoiQ9NoV
	kAi1U9LFvTyJRGIZildA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzoA4-00000004e8g-23oX;
	Sat, 20 Sep 2025 03:21:20 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzoA1-00000004e6p-1xQb
	for linux-phy@lists.infradead.org;
	Sat, 20 Sep 2025 03:21:18 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58K3KU1S006900
	for <linux-phy@lists.infradead.org>; Sat, 20 Sep 2025 03:21:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=mN8wYVl6ESU9lxZvT+z+knTGjWTBarbi95s
	9t96uFCY=; b=D3YmAHs1L6zuwjw06urITN4y7EtDHdeq56luBVMG7I27Lr5atif
	GfJ3PrmQJH4Ag9rXbyWWQMvdgTAjLTeNJBnvG0KACRgZDiw9ranfQnZSXXXjhqaJ
	3YBn7FIVA2kkzTJGsHvLwXDLWmeMfYfEREJh2a++BH56KdStgU0rSbjRmK9/rrgc
	t1RYZaqPsjg+W313FWDVs4pzCON6CuxQhTDwximWmb7d6peYOsIqva9+aRGk4swA
	rGPQkCXBvrXgPrfKYucxbTPJYpMqFtkrozrEYxuSlo9L8D9B72W0Y2VEibD8ciEl
	OiQ4Oglhg7jTf6g/xGvjMIu6jmOmO18zjVA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499k98836p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 20 Sep 2025 03:21:15 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-269af520712so23869715ad.2
        for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 20:21:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758338474; x=1758943274;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mN8wYVl6ESU9lxZvT+z+knTGjWTBarbi95s9t96uFCY=;
        b=PuWube2yi+DxuMK/4kdOzMs1xDxm1JM2zWIcsxUz9exIgyPS69/KHaVCpvz0HZqruF
         fPKECuViRpsLaNtJRWbSEYz5FzNbQKBf+9zo+QE0ANcvH4+K4aUq88yDettS3WKF1U/2
         MXlana/70Vb856ovqqpBRsvi5ym0EWtShb2764omUyEHq2st/WW9kPVztqYgbNlDtFE/
         KY0zwCHR4kGq6OFf2cTD4OaH1qdwSlg22tWrehDQsQA0A3C+VvU3nrGpxSWpnWxLV6Ez
         CmhuFdGbws2J415o4OY7MG0jJwd0CJCV9temq7FVL10q7FtH1sCNB1qbdkX1omPm28wl
         T5FA==
X-Forwarded-Encrypted: i=1; AJvYcCV/LgdlSX8jXqZbv+fPClhcOwrPdrB2wpP9zUSq2ZZ391LpXPws/kAuPMhHdW8zYILrTwW1A988G2A=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz0uTbMio+5DxI+kOoh8gqBh6l+gnRN50qRNQLlTuGw8XqZYCUj
	/IgSMEUD+vguMj8c3dRIx2HKkxDkKGjuOP56wfTHZ1VZc1LTHAWXly/IEo2h2y6tAQ+MioAqyOg
	DDUnssoJCozdrogFN9o8qD1WWXiDpyKP+pNlDDCbjPgHwCmdgPmhEQoBzdngnY4yZbUaC
X-Gm-Gg: ASbGnct1bnNftKzVjKSegYlgfUS7BLtljCIUHIwz9LgBxGu/j5zkDKXKG0O3ekm7lZo
	xGUeSPUtPzdPX6TFfgIZcnUqv+7Ym+L54DOknRNdiHI1VKs1Qffk+EJG2rboHiTGZX71rGs2zrr
	qAcqTCyiREqhWRDBQ8LDaI7T9UjuFTqrncnY7rf0C++whNh8hcO1Yj3dibd3lod/s6TwxkzlUP8
	aSiwK31jMO9+J3Mv7eXOfFjVznCVXmIMtjDSMebjdGzBimFaXCbbOqWCSMwSahopVo8crIRHxeP
	gcC4XSdmaTc/p8lxHhLp3U5kx7wp9dmOghFPrIT6OoMeg3+UQVDn0ETGoQhcOxGuBOBvzgSqBY2
	EdRm3HXYhlcVJYQrA
X-Received: by 2002:a17:902:f645:b0:269:a4c5:f442 with SMTP id d9443c01a7336-269ba527e9emr74545445ad.47.1758338473687;
        Fri, 19 Sep 2025 20:21:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGeReC8gmZ5NxVSWhUvUGV0oy+A6Sr9TpiqHXGqgd1xFA4p7XvnSQnBO/UwfTe45cPbjeV1ew==
X-Received: by 2002:a17:902:f645:b0:269:a4c5:f442 with SMTP id d9443c01a7336-269ba527e9emr74545085ad.47.1758338473178;
        Fri, 19 Sep 2025 20:21:13 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b54ff448058sm6178807a12.54.2025.09.19.20.21.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 20:21:12 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH 0/9] Introduce Glymur USB support
Date: Fri, 19 Sep 2025 20:20:59 -0700
Message-Id: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Proofpoint-GUID: Yg_bdsATsuZ5hcu21Da0at8HzJELMLLG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAxOCBTYWx0ZWRfX/WSROiZ1tp1t
 +vpPuvZtd9S+W9eY1T11/sicaHJjZ0rDtzZkIWWVz62Fq1CFvd8sUMrMHKuil1/Zv3ERgFoEkbi
 cj0SUKd0PEUsLZ+iYfEuS2aJRskoDrBzLdvCQfmTk/nBlVGZaQIQevfj+xVw8mQNiU241HZ6imM
 Yys5maoYTp36rQM5HDFxkW1Ynt+ltw2TpbSgTiRB0blo1D1bsvy4pIUBfgyz2BFDcoab2MPVUpQ
 Akya/2Uypz7J26XaYTvLI5I1B2nggGU1aeMVcZokeqSbDvUEVOZBKwODAWRG3ALNvr4InwKYk1P
 6mJZiAbsYK54YQ1w9EWGlR4aPKb6QeRLytfEGEILOh0g3bx4XzhEys2Jr3Hd07COUYOHbnQ9/8c
 cYViMug/
X-Proofpoint-ORIG-GUID: Yg_bdsATsuZ5hcu21Da0at8HzJELMLLG
X-Authority-Analysis: v=2.4 cv=Dp1W+H/+ c=1 sm=1 tr=0 ts=68ce1dab cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=yJojWOMRYYMA:10 a=KpXeH89YwCTRUSzem1gA:9 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-20_01,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1011 adultscore=0 bulkscore=0 impostorscore=0
 phishscore=0 spamscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_202117_623334_201DFA0F 
X-CRM114-Status: GOOD (  11.18  )
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

Elson Roy Serrao (1):
  phy: qualcomm: Update the QMP clamp register for V6

Wesley Cheng (8):
  dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add Glymur compatible
  dt-bindings: phy: qcom,qmp-usb: Add Glymur USB UNI PHY compatible
  dt-bindings: phy: qcom-m31-eusb2: Add Glymur compatible
  dt-bindings: usb: qcom,snps-dwc3: Add Glymur compatible
  phy: qualcomm: qmp-combo: Update QMP PHY with Glymur settings
  phy: qualcomm: qmp-usb: Add support for Glymur USB UNI PHY
  phy: qualcomm: m31-eusb2: Make clkref an optional resource
  phy: qualcomm: m31-eusb2: Make USB repeater optional

 .../bindings/phy/qcom,m31-eusb2-phy.yaml      |  11 +-
 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   |   7 +-
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    |  45 +-
 .../bindings/usb/qcom,snps-dwc3.yaml          |  26 +
 drivers/phy/qualcomm/phy-qcom-m31-eusb2.c     |   4 +-
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 347 +++++++++-
 .../phy/qualcomm/phy-qcom-qmp-pcs-aon-v6.h    |  12 +
 .../phy/qualcomm/phy-qcom-qmp-pcs-aon-v8.h    |  17 +
 .../phy/qualcomm/phy-qcom-qmp-pcs-misc-v5.h   |  12 +
 .../qualcomm/phy-qcom-qmp-qserdes-lalb-v8.h   | 639 ++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c       | 163 +++++
 .../phy/qualcomm/phy-qcom-qmp-usb43-pcs-v8.h  |  33 +
 .../phy-qcom-qmp-usb43-qserdes-com-v8.h       | 224 ++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h           |   4 +
 14 files changed, 1513 insertions(+), 31 deletions(-)
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
