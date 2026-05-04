Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCD03CD3427
	for <linux-phy@archiver.kernel.org>; Mon,  4 May 2026 17:07:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hykFX8eGdeGA9UZHTTlrw0vMQChDA50DQVF4OL0FoxA=; b=JBCYiVb2yU0pYn
	b3hLIjjMxfGV/M9dXfXlvkOmjKL0JSlMrjjTojfuOdSquwL/l6Zp20TOOeQl5rmTvqONdggr41xzK
	VLMmoBWOdThzrbK8+kMQg1QOsUqQsOaHHFtCsaH1LxPJ6o1/bslHfFSS5PTkPGQ9wwzORfCdzpQed
	M5EEi/1zujB1T0Zj093d2coDV9XvfRLVJgFTvbQLKrC1AaydRj/tKRz9WbUaO9ocDW6596VXDsWSH
	Niou+eICv62BGjJoefCylbsdE+Zc0BkBavv/pMOPY8wat9+bntIOiE0lT7sKJrJDVGDmCFv0uOaJ2
	2h0WeZIKmBXoG7Sru6yA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJwlH-0000000DnJs-0gUk;
	Mon, 04 May 2026 17:07:15 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJwlE-0000000DnJK-1O2n
	for linux-phy@lists.infradead.org;
	Mon, 04 May 2026 17:07:13 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 644B4Dai636487
	for <linux-phy@lists.infradead.org>; Mon, 4 May 2026 17:07:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=vnLRN/b0NlAa9y/7bNkF1EzAAUbk8bLGcQK
	rMdeZgYU=; b=N/vjQaXcpdpIit9nwzzaY0utC5UmlTbh6hv6ZWn43dLNd3e4RTi
	fI7zgm09QbR984iuQXrQate9AKuLNJgRa27OysNGOYYCkFQAdQiu+yRlMWr13xtz
	6dM7dcb4fsMf62ZCYlYBPR3Z6UpvnbmBgLT+dj0b2nlAKqgsdCReSkz7OwBDtiTD
	sp6i/dl0A5Q2mjBFzsOQmz+jaRd82dywfvRN3QrTgI0Fuopci4VPc4xmaNottRyZ
	O8J+Ioi2Ub1KRDkPH0bWgjl7hAtL6pGx5lzwBNAEqPXHkE/huKN3zZfjaSM1rK/Z
	VDuI7yDKMgMtqzwkF8B7Hr/gw7XS0FfBC4Q==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dxsx499qx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 04 May 2026 17:07:10 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-c7985752be1so1529015a12.0
        for <linux-phy@lists.infradead.org>; Mon, 04 May 2026 10:07:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777914429; x=1778519229; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vnLRN/b0NlAa9y/7bNkF1EzAAUbk8bLGcQKrMdeZgYU=;
        b=AaT5py/3/FJwIeh6mQSs/biweda+jMrOXnnUKHrsdwgDwEt4zF3xbYq8C1vWguojqr
         /0FYjI9AMf8f5tpz89mPqQDmlzw1j6/gq6jULNRZ5Hw5Q3RrY62UAiKU2plLsXBZwjj5
         zBr9xLAlWmigPTKSwqf+l+AR2sqBe4Y+xSH8CEBYHp6tPDlPSPSSNdCYGwI+1qpDGMKr
         BNS+Y0UmB2Wzbi7MR6pdyGxIGJvYeEqO80h/Amc2QsCnRFe/YoOZQtC1IcnBYNO8TgeE
         hQUS3re4/dE8kQzWO4Wb+gHTyWIqqcE8rYsrqJ/gXZwBuXPidG1gEiUB6GZrBzD29IzZ
         Pmvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777914429; x=1778519229;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vnLRN/b0NlAa9y/7bNkF1EzAAUbk8bLGcQKrMdeZgYU=;
        b=A3QxPg/RIQGiFtfdPie1yo2Zy+ZtFjLhh85wg6SuAJke/T7LtaMVz5+jeUuMiCk+PC
         C++BtmIILvI1v2g2TSoDoKUShvc9V9ZOq05EgVObP3OtBPKfzNCabVVJAVxS8y7bvYXR
         k4qveE0qg1eEtoVRXxZw/i3rOAZxlM3ObUjUr/RI6ePPG1D06LlcS0ZZHbO6qR1vrMZU
         pCAHbYSMl6zDf3p5M2TzubGkLMihLwIr8gGXKOI4J6Ao/K1Cc+l15RZqN8TM7UWrRSqq
         4CJ4jCrgpyf97eSfSPLGNA+xHahCQCYe3jquTg6kptUF8Qy3jNI02plJqOR7SafaokY/
         I4Cg==
X-Forwarded-Encrypted: i=1; AFNElJ9XsvpKgc3t4fhw3QynXb595yGqAQygti+ddlAnW6kMDo9faUoRP03a2ySogXwWFS7tF/1KPws49XM=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywjjts/s9JkbQ59y6Lvmt1YOVv2Xn/PFoe0sS7zwZ8OAFerP9YK
	S/3YavknLLMp1jcL0Kq/a28C/aNEocyH5rmp/BQZ+3qpRXJh0LmLgtm/a+MZ889zWxlzuQ66mx1
	irDFYfDNRqxozBPs8ha8i2SnR/XvdyaGXxqDCIAB5/ju7ZfOzOJ5ocsXdIMInsxQuV9uZ
X-Gm-Gg: AeBDietV6GgxYo6INjONLoPDqRbHCucOtnZlql790gBg5SZCk1AdeywMehTLgGGZ/Oa
	GU349wRXez0ph1JGNWknuFRCMFOzOwY30Qxxu1V5nYTXbUU0Q7OTmDbxTgzjE3xjmSZvv7mNA3d
	wVY7tr5kEYU09DX8yhpUIaQMDVshS8IDQp9zbl2RvCz0fjmBH9uDNuLn52lRtWEpexOI53LiAYg
	IcycjMSFDwD+GIbQj3uXCA3RPuSjaXZs3P5kZRH8/MRR+TzIBDfbVy3SdsMJI1grazYbpgSlL2S
	1TGHX4zF/voBQlA2slOOtEH4cNPJsMfFxlTkrEyBEZ9v5///ttpCSEcS0odvKgy6l7ApZMwjbkT
	uryvuiTAxGLwW6idn2k2ZbOSZOe/A35h4I8wuQq5YVC1wV12Of6uDZod042hZ12c/RzjJVrzzMQ
	eABoNYOuDW7np7cmlJBXyRSIiKLA==
X-Received: by 2002:a17:90b:4a4f:b0:35e:3afb:a3ff with SMTP id 98e67ed59e1d1-3650cd08f1fmr10015841a91.3.1777914429132;
        Mon, 04 May 2026 10:07:09 -0700 (PDT)
X-Received: by 2002:a17:90b:4a4f:b0:35e:3afb:a3ff with SMTP id 98e67ed59e1d1-3650cd08f1fmr10015740a91.3.1777914428196;
        Mon, 04 May 2026 10:07:08 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-36528ad3154sm6256847a91.2.2026.05.04.10.07.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 May 2026 10:07:07 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v2 0/4] Add USB Phy driver and binding changes for Qualcomm Shikra SoC
Date: Mon,  4 May 2026 22:36:55 +0530
Message-Id: <20260504170659.282532-1-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA0MDE1NiBTYWx0ZWRfX6HMmG5qDPgIE
 cQ0tJlIPczSBjOyHk6uSCjxtRL2Nscr44qiOn9w7bJBdap3UOxgdEIvQwh/GXkT82v7UzH8SoNi
 Mr7/mCkQrYxDLSuw48DthIj4M/g3QahBIeTEChrE6wHXkjQZmSiERiBFo2CJh79+3tWkDhSpZMH
 6KWklaZQtlSSuRcp44xfindtRLdeVj/J4GTsCvBwxXlU3U9vuKTxRHqjSGSE9+Wt5TEXZmY5fjM
 KXReKejqO/yyJmp+0tTl7v7iqnI7tyjrnE8d2lfugbm4SEJB7WIfvJQWa959GTiMUVJ8tszaWkk
 HXo2LNa2GF/q7VWZBx+HUy6tb7HXY8MtX5PoY5eS1O73eaaAaaEbfrNdE6hmOI3uY7f9mV4Z9tW
 +ufJYaAkzzujFH6LeSLnqFDCztRGxa5ocZMxCnksw9eGO4PzW96whjcwqIDHIVDTP63rcQ7w3wl
 4mA6pxPN8l8EWdokGzw==
X-Proofpoint-ORIG-GUID: r_griSFAkmkaSc8l-VjN3NmVnsWvCQH-
X-Proofpoint-GUID: r_griSFAkmkaSc8l-VjN3NmVnsWvCQH-
X-Authority-Analysis: v=2.4 cv=LdIMLDfi c=1 sm=1 tr=0 ts=69f8d23e cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=_yzwj3N-3Ah45w2uUsUA:9
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-04_05,2026-04-30_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 suspectscore=0 impostorscore=0
 malwarescore=0 bulkscore=0 adultscore=0 lowpriorityscore=0 spamscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2604200000
 definitions=main-2605040156
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260504_100712_553010_4272D4EA 
X-CRM114-Status: GOOD (  12.28  )
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

This series adds Driver and binding changes for USB Phys on Shikra. There
are two USB controllers - One of them is SS capable and other is highspeed
only capable. The ss Phy init sequence is same as that of Talos.

Changes in v2:
- Separated the usb controller binding changes
- Updated commit texts.

Krishna Kurapati (4):
  dt-bindings: phy: qcom,qusb2: Document QUSB2 Phy for Shikra
  dt-bindings: phy: qcom,msm8998-qmp-usb3-phy: Add support for Shikra
  phy: qcom-qusb2: Add support for Shikra
  phy: qcom: qmp-usbc: Add qmp configuration for Shikra

 .../bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml  |  2 ++
 .../devicetree/bindings/phy/qcom,qusb2-phy.yaml  |  1 +
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c         |  3 +++
 drivers/phy/qualcomm/phy-qcom-qusb2.c            | 16 ++++++++++++++++
 4 files changed, 22 insertions(+)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
