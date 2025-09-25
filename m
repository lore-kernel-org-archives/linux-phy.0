Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64B1ACAC5B1
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 02:29:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bKI8k6sHOqMiQ+EbeVHeN8TQzRYmhdAGu6UleuCY1KI=; b=JWAPMXyxpsiOQS
	U00PjQ0cl7Vbd8FUwY9RR43WPB+AOWSW1xKrYQKi+qfnh9tRakT8KDP1FIdjJS8YNzbTlcIuvzQxU
	TFg3l37Mvo/q+mAQOnM5lLkhMx+b21R8SfS+onJB+dXFPGGxTQ3X4pAY5iovLkGJlgQrlI3R1VOQl
	D+Eqc2MtJWVUBpitn5hX2C9rNQCTNLVDtR5TJV88QEU7sPRyhobMa7hrURQZUI2EeWsVkbusYmM5B
	7K+VA7MxkQA3l9owTw23Wez9K1gAsjJmAyDudbFIRpFVuvLPUh4RV7HqSbVWtuLSG5oOBFwZ09pF2
	Lp92wPyose7D7B1RksiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1bjI-00000005Iqo-3vQr;
	Thu, 25 Sep 2025 02:29:08 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1bj5-00000005Iif-2UJW
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 02:28:58 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P0qvLo025084
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 02:28:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=pozgUr4Pa5MFZ7maN78woqc3uxqicgDaK8J
	oc7Ogf0c=; b=gHaJ1xfV/vBnMerYgWszNYnjEUvMrv/BiGaG1j5cTGI1MBlAwx3
	koXSLXrNN1aFea4RcFLQX9cmVxlRqZ9KMZwjGDB9D/l1KYiM95b4PAFGobSLMNK7
	7FYgQL769AMGAoufbWYe8Wbg9gFLvYIwwlpxo/dKSNBcQ36i2++UlzTxq/XmOoOU
	G0gOyx/jJZx+xZfE91mk+ydSFissDmr2kgax/Kw9L70hvNqjblZHZNTPJnx24hZX
	zBGpuzNSc3M9CNyS+q4d9cZPGAQFsCavPkBqPf4pM6xHZoqIrEvJzvAmvIUvmOwK
	KNB+YLwl50pV60Ydq/J9zJ9wVwcvL/74zvA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hyexrms-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 02:28:55 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-24456ebed7bso5112365ad.0
        for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 19:28:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758767334; x=1759372134;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pozgUr4Pa5MFZ7maN78woqc3uxqicgDaK8Joc7Ogf0c=;
        b=a8EH91xgKE/zKOArXNzxZ53ef61JhDhpkSkxouXOf/2reGE2f3ojXXzgc07b5NUkXN
         Nz5hHpRmu6qaVN2UsnJr0iy2LeuOClUc1nhUkcZZpF9fBEx4IZZMeUG+h7f5E9mwosD9
         AWco3pEFF6cOspjUTaHo6Vq7ULeqdn6O9cdG8BnPrM8EpXLmaAPNudF7MUyXaiaXY/Cs
         rSOlpapg9UeGXIPKk3Hm+Zh64xz1STA2lE2hj8fMcpf9wJzhtXxwSP+s2UEBA1rjr2sg
         md3SzqYvEPLXq5mghacjS2uiahmnqi5Nk10XTenq7ULdW7/uSINY8nGSHUTwVQV2rJ6J
         fenw==
X-Forwarded-Encrypted: i=1; AJvYcCXZgPv8GoenB59k1VjfWWJvPmlecR8dwLfokWkKyTg9r0W5uQ8Qn9Dwx0J5Nb26m1Lip0aA0PbG2bw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz1UQXKBLkI8tPoYKxzFatVB5EHmq/aTmegPNOh+2h6zs2AS7lk
	pIWWqwfbdscMX95FiA6JM2fjb8ZJAUuc5StCHZHBjAAvtut2+xEU7TjX1Rv/ZVPCVqX4VfjXijs
	kyMdTeyvzeZgB5z/o2Bqlsak7VrXoMT1zftJF1S3wwnqjOORAyCDcwDH5iX+diN36LceZ
X-Gm-Gg: ASbGncsAsMdbeDJxjtS/iUK8V4piLduTDNhqt0B80kM57Gok5EENWzvPYcYWnYr9giu
	GZ2Up52jkZsy6d7cZSiG6o1yQgJGgrLCYSuioUncv34ITe5K9Aza9tiqIHggHnjO2owfFv617wc
	Q3XwleapfNjq2VY/LUVxsH8dIhf+Z2M4Wc3OGSfQ8UMFCQ3wewuQwqUxol5t4i3L8wU5Ol2Qlvu
	myQjizhi6MEmnoWwX+yJsgVUO2F9Vtn279C2+6gubHrYl0VvBFscIiHaC3TP5Obbv0NwJMfjn0Z
	OEuCVWCmag5eZl0UYfz3sSztBY7fg9IEIolBrl38W11pDWsaXf5k9kanpwhGzH2qzfXa1+zqmiG
	rVTY3ZHzPgIQnlZQy
X-Received: by 2002:a17:903:2403:b0:271:6af4:17c with SMTP id d9443c01a7336-27ed6abbab3mr7476185ad.1.1758767334034;
        Wed, 24 Sep 2025 19:28:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHpDQAb9zhwAQk2cn3fm3Sj/BbBznzSAqjeAN+5V7NHD0Qqpd9x8hSwTL4ww8Ou3qnnfWG26Q==
X-Received: by 2002:a17:903:2403:b0:271:6af4:17c with SMTP id d9443c01a7336-27ed6abbab3mr7476005ad.1.1758767333526;
        Wed, 24 Sep 2025 19:28:53 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33471d711ecsm499881a91.4.2025.09.24.19.28.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 19:28:52 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        kishon@kernel.org, vkoul@kernel.org, gregkh@linuxfoundation.org,
        robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v3 00/10] Introduce Glymur USB support
Date: Wed, 24 Sep 2025 19:28:40 -0700
Message-Id: <20250925022850.4133013-1-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Proofpoint-GUID: U5oXdJsxmf6oOfKTLpQC4UQg2_v5Xaiq
X-Authority-Analysis: v=2.4 cv=YMOfyQGx c=1 sm=1 tr=0 ts=68d4a8e7 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=yJojWOMRYYMA:10 a=uF0vjx2ZuONpqyvErPEA:9 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwNCBTYWx0ZWRfX2Rp1kSJTAk9Q
 fP3H7ZwfvVawPU5Jk33OmIf0DQeuOn8XdLJ/JeG4G8MJk4lnMTsIKkb3gaSUUbpvuLtCZuJtmX+
 uiHvfM+izznR6SKt3E6+gQoogcmkr7tgsitZbRW7k8eZqW/jesODi4lGBkwxfHU2SpR7inZiPj2
 7jnlftiLvZHxJvsoIrtog06gNFq7MatsKoU6jQgAM1I/xMLMNeVd5YDNDuZZ+a8QvtiJLzlCSMC
 STWVtXwKdDYjQlBcyH3WNpTJsRgMGqC32SFLHR+15jlib2cwvhTr1Wpf2VHWvwOVLyyU+mWJYqe
 5+rca15B0EAGCgSCSijzCg/ZDyCSRZItde9ie16rGed6e8VvwyWA3y3zofnq6cuUJFPyKtjHw24
 EVjlRazj
X-Proofpoint-ORIG-GUID: U5oXdJsxmf6oOfKTLpQC4UQg2_v5Xaiq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 adultscore=0 priorityscore=1501 spamscore=0
 clxscore=1015 suspectscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200004
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_192855_635410_B444A403 
X-CRM114-Status: GOOD (  14.07  )
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
 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   |  35 ++
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    |  19 +-
 .../phy/qcom,snps-eusb2-repeater.yaml         |   1 +
 .../bindings/usb/qcom,snps-dwc3.yaml          |  26 ++
 .../phy/qualcomm/phy-qcom-eusb2-repeater.c    |  18 +
 drivers/phy/qualcomm/phy-qcom-m31-eusb2.c     |   2 +-
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 349 +++++++++++++++++-
 .../phy/qualcomm/phy-qcom-qmp-pcs-aon-v6.h    |  12 +
 .../phy/qualcomm/phy-qcom-qmp-pcs-misc-v5.h   |  12 +
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c       | 163 ++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h           |   4 +
 12 files changed, 649 insertions(+), 13 deletions(-)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v6.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v5.h


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
