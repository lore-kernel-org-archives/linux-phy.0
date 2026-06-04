Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01BA7CD6E60
	for <linux-phy@archiver.kernel.org>; Thu,  4 Jun 2026 01:33:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sAXDOGYkfXsPGuxq3djeiL+MpdHdAnqSslpDdVAG/ZI=; b=ngp/4y5asdniMR
	i4PpqSi9a07ThokkwENPyiwI88Wf+7gf1QYQ1CacD3ya9OLD6ICTecwyXQn40LXSK2RPXZiMfMEHd
	wGP1nvhlmGB75yETL4o5hHNpEW9mVqNAcibMRtyYMw6Z601DcgW3zmB2LPCPZfd2ssq/O5OacS5Iw
	lvm2pmsx49GPHC5YXm7QqACivqbn7o0VtJM9nmte+T1RDJFCzRhK+6BHnTpElppl+zARJT6l/DJSk
	q5ae4eYWiJPKKP/phZpzYftbuWMcb8JJjOQXcpq2igREf+SuAw4xZ9rEwNuTN4Vzosh6qU/xAYWh3
	UccjUA4owSDN8FjiN2Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUwxb-0000000G01Q-1eyr;
	Thu, 04 Jun 2026 01:33:27 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUwxY-0000000G00x-1idi
	for linux-phy@lists.infradead.org;
	Thu, 04 Jun 2026 01:33:25 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 653NAfEp1476963
	for <linux-phy@lists.infradead.org>; Thu, 4 Jun 2026 01:33:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=17PcoNEeNo90Qm4iX3hBk8
	teNDLcrwWXo6ltz+wsj7M=; b=fo1ujcOalTQDpF/eq2+Z0Z52zTm9Xp44jCswuP
	k/SRSAMzpmot8VcqFC0yEXonuqkiUqsSLctpV6yHSTWWGTtGDRfY/XrIWR8tLbG7
	dIpeOwtQbHx9pkBnYAN14yf10t2fU+WiCI9ou2+PS4SXP191cutfqrUOsgODrMRw
	7bFmXu0MoHte303a6Icj6WD4gSxrHbCMcnKaOz6wvb5wav+OfEDIZUj32Z12s5QA
	qg6pq9WJo2ccFzQA7f7tm2MVtz6YETti/AUIaXqAaKbXqFqCW2CtLVH7k8D7SlfJ
	IwF3bCgdgIt2FJc1YFa+mqcFprE0HuRQ0mby3leqF8la+cyQ==
Received: from mail-dl1-f69.google.com (mail-dl1-f69.google.com [74.125.82.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ejp6ntekr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 04 Jun 2026 01:33:21 +0000 (GMT)
Received: by mail-dl1-f69.google.com with SMTP id a92af1059eb24-137f8f21861so255120c88.0
        for <linux-phy@lists.infradead.org>; Wed, 03 Jun 2026 18:33:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780536801; x=1781141601; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=17PcoNEeNo90Qm4iX3hBk8teNDLcrwWXo6ltz+wsj7M=;
        b=bEV8TfFmI61fY75UjYkGZl7SlPShvQS+EF1kvYcB7tIlOax7fYg1qpCFZs6xjjU6nH
         dwFxQM6cbFjmzh4D/4GMlHxyyJ1r+/VAs/Kd7h5HH5xkJrD4X6sCR7FcmG0EeLf7Rf2Q
         dj5erw+b4EW0bSQ4FAnOYP8OgsQGpeI9Lff1pPXyITYwAkbxFkXjeS7GbVkKaOXgE+EN
         OGHQF/QPE5ePJUAFA1EfJSsCdaaBAgph2C+kqPbgnRbahlCYVNSZIZvOHEcf919QOdKH
         fB56o8ubHBAe7qLw365RC5jpDOiqIw/8NlGGoBmkhd6TH54/Jw0htRwArxhLWNENDyX8
         ZHLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780536801; x=1781141601;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=17PcoNEeNo90Qm4iX3hBk8teNDLcrwWXo6ltz+wsj7M=;
        b=iwU1k1O4vS1BSIRNLZ8p8z+OALxYXjDPox8IlERfkccVqTZeUpajj6OJwPf6vvx2aZ
         q2Fpfs9oeQymG9KJ3JW4LxK0ouiJx0uQVER7KKT8/GissVEEVHXGyFCWKjnby+gO2hhD
         +PF6vnHypPuCcPyKE0Z3Gro42v7dW5Ixw0l17pM2GDiY/wykSOwGckYw5B7vsuUzYlYP
         FXoV69iPKDRuykjdHMGDX32LaCGMpBDV2R4pQB87IXFL1gbH8OFSoQyJHv0bOqM6aJBH
         bFFADzAoS0Kk2xgelU4wt8IcBLlXBy6IQW3GagS7hFeNyJLLtMrp4lD+7WNPVMf5Sy7v
         IO3g==
X-Forwarded-Encrypted: i=1; AFNElJ97eUBbXN7CJODTp+0ZW026Z/RaUs8+mZRG56VMJhNodOchXQ1NGvFvCgX8U7pc+Audcfu5SbtSrco=@lists.infradead.org
X-Gm-Message-State: AOJu0YwGbw8oMw/zQ3+9qtZpk0bwNQYwTh2y+ihzm+xLdwwD3/UMk9Ap
	J1Di/KTzqTt1xBsvF3naXbcW5JjxmBL+it1e6dTJ+TIU/SdbFTF522ZP1opUsbl1BJjSjhwnMm6
	4eCI+1w0kmwXTd4wwRJgnoodXMCjYMM43NjKvzR7HDp0Vw3qEf+4e89HEuI2HMzMGXiYNEDbtfx
	fo
X-Gm-Gg: Acq92OFSI1gaflZomrf4ia2WbWdhv9VB0o/c/a9kzLojUsZVVfutl79W91U5oboLAbJ
	D0vM9qZ0GaRujvVHlcfs4B2Zx19wWfvg6AQAyDFoB71v7LFMYS0L82Llnco5Kp873amCFDBNU4N
	5bizU14M6hR76Hc7O0ojMLy3w+brWyOKe+qSFCJzCDnYfqr4GtjESwgHFXwC+sF6n238SyPSgAp
	u6k8Pd/RgA88Ok3Z6HWH2vcATmHyXfaqAOMwWAWbSH59sAd8ul5LETDcs5AVIeHKHWTGcxgf1Iy
	4dBaVMTmZyMMUMhreIYAT3XLVEuUztzbdl5k2hZ1jXWpTgMnd7jcukaPRZtIUXNnrshg4TZOzFe
	nb8/GjA5KfZHUXU5Yio2+9YHc9aTvq0CO+972nPdDPAUvr5Ad34SXv6o6hamT2wx/qYOnTA==
X-Received: by 2002:a05:7022:1b0c:b0:134:fea9:f107 with SMTP id a92af1059eb24-137f6bd09camr2140781c88.33.1780536801112;
        Wed, 03 Jun 2026 18:33:21 -0700 (PDT)
X-Received: by 2002:a05:7022:1b0c:b0:134:fea9:f107 with SMTP id a92af1059eb24-137f6bd09camr2140762c88.33.1780536800527;
        Wed, 03 Jun 2026 18:33:20 -0700 (PDT)
Received: from [169.254.0.3] (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-137f553ab33sm2870659c88.10.2026.06.03.18.33.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2026 18:33:18 -0700 (PDT)
From: Matthew Leung <matthew.leung@oss.qualcomm.com>
Subject: [PATCH v2 00/10] phy: qcom: qmp-pcie: Add PCIe PHY support for
 Hawi
Date: Thu, 04 Jun 2026 01:32:54 +0000
Message-Id: <20260604-hawi-phy-pcie-v2-0-be908d3560db@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAMbVIGoC/12Nyw6CMBREf4XctSV9AIIr/8OwgHqx1wjFFlBC+
 HcLxo2bSU4yc2YBj47QwylawOFEnmwXQB4i0KbqbsjoGhgklxlPecZM9SLWm5n1mpDJXBVK1Yk
 QCiFseocNvXffpfyyH+s76mGTbA1DfrBu3g8nsfV+7vzPPQnGmVTHOi8SlapGn6338XOsHtq2b
 RwCynVdP5LDLqfDAAAA
X-Change-ID: 20260506-hawi-phy-pcie-283933b4113e
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Matthew Leung <matthew.leung@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1780536795; l=3318;
 i=matthew.leung@oss.qualcomm.com; s=20260428; h=from:subject:message-id;
 bh=uTCKAOimS1e3IAJT8RyhpxQQI0cr7ZclI5yzTrMleqQ=;
 b=y8pI9fhwl74kPeC+ouRPoY00C4rw66ueKur/P9ExNw3XdUoF/+dyqbO4Mq2iOdXplm/hJMmew
 2zXpR44WGJVBSah8G000oG3ontyhBmI9upH8Oq2K7z/WTmYnhlxZlN3
X-Developer-Key: i=matthew.leung@oss.qualcomm.com; a=ed25519;
 pk=aT25ggJo5PMHLN9N+TsZ3s/BVU++kEYuiFebPWe21+o=
X-Proofpoint-GUID: r4_5ZNDg2Zt9r6_tbnhFMLXDCrAm4sRh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA0MDAxMiBTYWx0ZWRfX/FTtT1/M8Z6u
 HhGj0XKlmAQYjQJS3VdkrN8j8dZ88G996DTRoXPfUiFVUP27Jws7dnTYwsM02+/cZVGUdiOAGWT
 A/F60MgcsGFp7VL9clLmVLK41kNpEPegTpBsSTNYCFLiWKYOuE9NSpvCQzF2NVinCS8vJKwDHaM
 OMdYYAPQIjfhN7GRieF8q94ZiQfg9+oy7UpgjrJSkeGNKPSscwT8DpXTdvWRhbkEUsUOdOvwiuU
 rTbmc4Dh+K44ni3JZ6cuFLqySfsyNFgpuKcZdCO0KopTCPNcCrLHB4WOjtrbzJbuqkdk1PqckFn
 y1ng7YfqLw1XMxDE29akiF0+8BFhwO9oq6jOaD5/Xfr3ChJys2klMmk9hyfMEg6eeubIru3e+hv
 bkEXt/TYWD9FlOShM37drI+OhSmpa6EJJ0Pc1GIg1UQx59gIzqfaxqSraxFmPuNuYOWiDSw9O/Z
 Cbnz2XIgnzclatiiIsA==
X-Authority-Analysis: v=2.4 cv=DbcnbPtW c=1 sm=1 tr=0 ts=6a20d5e1 cx=c_pps
 a=kVLUcbK0zfr7ocalXnG1qA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=bC-a23v3AAAA:8 a=KKAkSRfTAAAA:8
 a=JfrnYn6hAAAA:8 a=lrmUyyXwqMAXkeg-CF8A:9 a=QEXdDO2ut3YA:10
 a=vr4QvYf-bLy2KjpDp97w:22 a=FO4_E8m0qiDe52t0p3_H:22 a=cvBusfyB2V15izCimMoJ:22
 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-ORIG-GUID: r4_5ZNDg2Zt9r6_tbnhFMLXDCrAm4sRh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-04_01,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 adultscore=0 spamscore=0 phishscore=0
 bulkscore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606040012
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_183324_492334_BE1BD09B 
X-CRM114-Status: GOOD (  13.05  )
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

This series adds QMP PCIe PHY support for the Qualcomm Hawi SoC. The Hawi
platform features two PCIe PHY configurations: Gen3 x2 and Gen4 x1.

The Gen3 x2 PHY uses v10 register definitions, while the Gen4 x1 PHY uses
v10.60 register definitions.

The series adds:
- device tree bindings (patch 1)
- v10 register offset headers (patches 2-5)
- v10.60 register offset headers (patches 6-9)
- driver support with PHY initialization tables for both configurations
  (patch 10)

Overlap:
The series has overlap with "phy: qcom: Introduce USB support for Hawi"
by Ronak Raheja (see link [1]). Both patch series introduce a subset of
v10 registers (this series for PCIe and Ronak's for USB). I have
coordinated with Ronak regarding the overlap, and we can update the
series to resolve any overlap based on the order of merging.

Link: https://lore.kernel.org/all/20260508213234.4643-1-ronak.raheja@oss.qualcomm.com/ [1]

Signed-off-by: Matthew Leung <matthew.leung@oss.qualcomm.com>
---
Changes in v2:
- Rebased onto v7.1-rc6
- Patch 1: no change (Reviewed-by carried forward)
- Patch 9: rename QPHY_PCIE_V10_60_PCS_PCS_TX_RX_CONFIG to
  QPHY_PCIE_V10_60_PCS_TX_RX_CONFIG to be consistent with the
  naming convention used in previous pcs-pcie headers
- Patch 10: update usage of renamed macro
- Link to v1: https://patch.msgid.link/20260508-hawi-phy-pcie-v1-0-237b894353fc@oss.qualcomm.com

To: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
To: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>
To: Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org
Cc: linux-phy@lists.infradead.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org

---
Matthew Leung (10):
      dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add Hawi compatibles
      phy: qcom-qmp: qserdes-com: Add v10 register offsets
      phy: qcom-qmp: qserdes-txrx: Add v10 register offsets
      phy: qcom-qmp: pcs: Add v10 register offsets
      phy: qcom-qmp: pcs-pcie: Add v10 register offsets
      phy: qcom-qmp: qserdes-com: Add v10.60 register offsets
      phy: qcom-qmp: qserdes-txrx: Add v10.60 register offsets
      phy: qcom-qmp: pcs: Add v10.60 register offsets
      phy: qcom-qmp: pcs-pcie: Add v10.60 register offsets
      phy: qcom: qmp-pcie: Add QMP PCIe PHY support for Hawi

 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |   6 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 382 +++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v10.h   |  18 +
 .../phy/qualcomm/phy-qcom-qmp-pcs-pcie-v10_60.h    |  26 ++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v10.h        |  22 ++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v10_60.h     |  23 ++
 .../phy/qualcomm/phy-qcom-qmp-qserdes-com-v10.h    |  49 +++
 .../phy/qualcomm/phy-qcom-qmp-qserdes-com-v10_60.h |  55 +++
 .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v10.h   |  47 +++
 .../qualcomm/phy-qcom-qmp-qserdes-txrx-v10_60.h    | 109 ++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h                |  10 +
 11 files changed, 747 insertions(+)
---
base-commit: e43ffb69e0438cddd72aaa30898b4dc446f664f8
change-id: 20260506-hawi-phy-pcie-283933b4113e

Best regards,
--  
Matthew Leung <matthew.leung@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
