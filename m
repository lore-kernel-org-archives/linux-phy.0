Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFB3BCAC5A5
	for <linux-phy@archiver.kernel.org>; Wed, 24 Sep 2025 23:33:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AY5kmmtEA3wTvCkhLptRSzwAa68glviP3CQlT1zXT68=; b=gc2Nvgi4VCSw/U
	BodvJLN0qE+biET1uirRGZ9tFLQtY2wEvfM4a+yZqrk6iTP+ahVNqgahVRq2otD5xCRLzUkx5sS63
	P9bxnEXQVZw06GPjvIZsT8L0+bEzVVS5ZhaD+QTNtRF0XPOZKFYd4ru4Tydfh0hl9eM5CqPCqGBsH
	ONxqa+2h6krCBRfDg4TLzSPbPNtPb3ZTzJQyQNewr8WOIcQFPAx0l4pgfAWsEgC91HVAsRCHWNeFY
	b/tne3nViVKqOkEgVggpHhRFLowgjj7wuyRdKD3ktAAmjyQTqBxnrVRGs7sAVieJNJtA0eKQFu8Ae
	+98VnnLAYfAsokLOCObg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1YzJ-00000004iZL-1xlY;
	Wed, 24 Sep 2025 23:33:29 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1YzG-00000004iVv-0kDt
	for linux-phy@lists.infradead.org;
	Wed, 24 Sep 2025 23:33:28 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OD2ePx025120
	for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 23:33:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=VNIomdy5vQZBr0Xb1zY4tT
	/Acpu4g0XVUwXNo3bXGx4=; b=jCuRNqUUMjb0jv51pmB8cl8BDgQTKqHaV+MSVh
	voWepDXGh7ziPfsJsEKLw8cf8ckByRtvSAITRASobY7Rp+K8OquQQaO8YVgIAXw7
	SE7KoVv0UD8q0q3nmHnH1PYxAFoZwWw6lFzFzOS4Xrs1JlQFFvQRhioBlSzHbQir
	/5Yk6TnrO5U/Qj+w50tkFgR78EyE1p58UP1oJFC+xMT3Q9MiGVnh6OqNv9AtcVzk
	+zZZRXdFujW3s2tBEVxsQShnhWIaiTLxlJcrwmfLpsBHIxUcnB3ALO/f3+nis5Kh
	fKw2uQP9VQk99PGliSU6wISuLZFrOXulKYmQwDyQ5+T8sn8w==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499kv162gs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 23:33:24 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-32eb18b5529so392937a91.2
        for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 16:33:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758756804; x=1759361604;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VNIomdy5vQZBr0Xb1zY4tT/Acpu4g0XVUwXNo3bXGx4=;
        b=CTYXT72U5Xo+kMYftWWctPbXhMkHUEAsIv/xp+vX+N8s2WcnJnsfGUPx984c23YY+G
         awgztg1Q/cZIzbvp7AeiY6Egk+rinEe94fdkGXSh005uROUM0nExssR8C9DjwS7+YwwT
         jjFWQPsqYd2eiN0OKYSQ/FCyZZOuJrSuLtT7fbR2GBToDRM54/7tKvsIzerRjiNdWxEI
         rxaPS0EVXBlfyU9csvfs23NMwuLbflIaeb8iTviXXlhOYjJQXkGjB9V45DwJCHp+MjX+
         FF/IWR4TEehZRGNfSBQ6/78e3Pi88e8fP+W86KGhsG2YL0WTp12ERznzqTg0NbLMyf/j
         0Jmg==
X-Forwarded-Encrypted: i=1; AJvYcCXUVEJn1GAsYqMGLT+8f01ucDIGmTY5H07/yo5lNGL/sKogz4pIveIzR8LTL8tn19AXElFWh1N3/sA=@lists.infradead.org
X-Gm-Message-State: AOJu0YxC93VOH0qejY7uOaB25iTpwoNM/61ORxXr0jw1swHEeoMvWZcD
	7D6dnIu6pPhk92vSzIch4mSvewgMCreg6wf/jlYZ0VVJJG16Da63RpDUDkoK+y7fbOsnxnyGEnq
	aAd14bAaVz081ETQF8dhkeV1E1pfe8/LztjwSehs+Tz3pXMwaonwrYAafxKqm1Ymv5hzI
X-Gm-Gg: ASbGncunlNhCdSuuAPaM/ox5OBx1MtJjP1PqGmIfKeZ/J42BG1L09gxDDQjKt2gxO6l
	MJhVMcwgP9nBZDLGnDvilvwNqfu1QDq46kDfTs7OevTCYFHrGUybr0fAW8P661Or33OouYfZCh3
	xled57E2oZl4G5+Q6Yz0pnyWxvrMIZKA+s8JxxepUcDhShdMqBVozZuZ00gAy2VHSA1JEUHHqea
	aB8MeccukPm4oMej6OmuHx21Q62IDt+gaEI6X5f92jZ2SmVg+o6mXU9D6fA61JbYjIEgm31Z66C
	HEsZWquH8Wc8rC2HlgbNJiBuk8Zh1IUu/6GG9ftJmFJhiPMrPcvtgXvIJFAiQ3s0bifoaaXhc90
	bqjOQlhRG1Sw362w=
X-Received: by 2002:a17:90b:17c3:b0:330:7a11:f111 with SMTP id 98e67ed59e1d1-3342a300367mr1473546a91.35.1758756803660;
        Wed, 24 Sep 2025 16:33:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHdtlLUNGJJSlyqnknrbjF3ipSmmLDcYIbOKelFSeVIJvhkvC4jn26Ddrkbxi9be3pwqyR8oQ==
X-Received: by 2002:a17:90b:17c3:b0:330:7a11:f111 with SMTP id 98e67ed59e1d1-3342a300367mr1473516a91.35.1758756803192;
        Wed, 24 Sep 2025 16:33:23 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b57c53ca107sm392911a12.13.2025.09.24.16.33.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:33:22 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Subject: [PATCH 0/6] Add PCIe support for Kaanapali
Date: Wed, 24 Sep 2025 16:33:16 -0700
Message-Id: <20250924-knp-pcie-v1-0-5fb59e398b83@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIALx/1GgC/x3MQQrCMBBG4auUWTuQFgq1VxEXyfSPHaQxzIgIp
 Xc3dfnB4+3kMIXT3O1k+KjrqzT0l45kjeUB1qWZhjCM4dpP/CyVqyhYcphCFklpBLW8GrJ+/6v
 bvTlFByeLRdZzsEV/w+g4fuHf7elzAAAA
To: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, Qiang Yu <qiang.yu@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758756801; l=1250;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=tlF/XmDSlCSzHpDbYIYkAuUDBatLs6VY5lZmH+8tSdw=;
 b=GhjB8yFSJhE3XlM7FLgPQU2mx4t683odAMUdhaUPcxG1u0zlAsRUbnig06Uw5wi57WJUJm3AK
 VABUOcz9YyuBnBBGiNns9LLItEdxBIUGRSTsNbmFS1JSSZCmADYc5i3
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: bZbLuoTMr6RPp2z-i5n2RtjeYEcSX_fe
X-Authority-Analysis: v=2.4 cv=RO2zH5i+ c=1 sm=1 tr=0 ts=68d47fc5 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=xicjnEbRADQpFcw3uD4A:9
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAyNSBTYWx0ZWRfX4jIKjoNbmo0s
 XxFsKtNRtRcv4FSUIlPrTMsgHLLPnt0u6XZgtGUGm0Jocs6YUyL9MNhEa3HiPQAnzdRSnVvS5et
 mJ2cndjEkmxjArZV+P0utcSFHDdTT+iNiNptSB/LmB4meGvxeRhsMqbawSULBWooX3oo03llK5Y
 1bllf/GqFbdS1xfQ6HYcj0vxWBi44dNGaFXqTqrgujd8VaKm1R4TaJDs+PE+SKi+tuDBVYAjij8
 oD4E2+xac1rZGlv/c/Ky2369AZDpjgkQEYhVPgbuF3q27nJ7GP0N/1vkufwDOWOSBQ0wSjokT84
 rXsAWS6O76zE3NPj+7urtv4CehnZxEQcz/HxiRcS5/RewwV77dxUbiQDr4VZo25b0yWKa0rUPaT
 or2RJkxZ
X-Proofpoint-ORIG-GUID: bZbLuoTMr6RPp2z-i5n2RtjeYEcSX_fe
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 suspectscore=0 priorityscore=1501
 impostorscore=0 spamscore=0 adultscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200025
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_163326_373765_AC953C92 
X-CRM114-Status: GOOD (  10.33  )
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

Describe PCIe controller and PHY. Also add required system resources like
regulators, clocks, interrupts and registers configuration for PCIe.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
Qiang Yu (6):
      dt-bindings: PCI: qcom,pcie-sm8550: Add Kaanapali compatible
      dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add Kaanapali compatible
      phy: qcom-qmp: qserdes-txrx: Add QMP PCIe PHY v8-specific register offsets
      phy: qcom-qmp: pcs-pcie: Add v8 register offsets
      phy: qcom-qmp: qserdes-com: Add some more v8 register offsets
      phy: qcom: qmp-pcie: add QMP PCIe PHY tables for Kaanapali

 .../devicetree/bindings/pci/qcom,pcie-sm8550.yaml  |   1 +
 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |   3 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 194 +++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v8.h    |  35 ++++
 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h |  11 ++
 .../qualcomm/phy-qcom-qmp-qserdes-txrx-pcie-v8.h   |  71 ++++++++
 6 files changed, 315 insertions(+)
---
base-commit: ae2d20002576d2893ecaff25db3d7ef9190ac0b6
change-id: 20250918-knp-pcie-cf080fccbb5e

Best regards,
-- 
Jingyi Wang <jingyi.wang@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
