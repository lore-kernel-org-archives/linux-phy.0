Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF524CD98ED
	for <linux-phy@archiver.kernel.org>; Thu, 18 Jun 2026 21:55:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=c4xuex/BH1Tb+JNrJOrYvQ9ROw64cOKxboSa5x9t3Nk=; b=AjJURdtS3qolC+
	jT2SzKk7uMMQBK+js7LrphJXYfakheritP0+8DTRAsLeWdGLxE9V/ksIo2K3C6x3jH4Dfuus6pMKY
	XBmlIx1WxiJZz98TwctLyi/IlUYSjrQjWincPYrGUcO0dJrZN46fhmdX7HoavMj20qZSRhGqJGogo
	Pdat9D7sVTDqCucp4IHJPOAZ1c3fTKBFbUJ0HgmF2mfPku0h8v3v9QmP7iIpc72SBS4lgshqYorFg
	SnQRlvRe+UfIHsoqfxK734oZcw05F0QZVQ1DUv4jwl1Z9c8WviyCWfjbrJvNc+6GUpIIuWpEkBhQO
	t6/rYSOi/8BJaL7Kz6kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1waKhR-00000001os6-0dOu;
	Thu, 18 Jun 2026 21:55:01 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1waKhO-00000001or2-00Zp
	for linux-phy@lists.infradead.org;
	Thu, 18 Jun 2026 21:54:59 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65ILsvkl2402155
	for <linux-phy@lists.infradead.org>; Thu, 18 Jun 2026 21:54:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=cFhmc6tat5NN4iF51gvWQR
	hQtkdukby5rCSzb69wkuc=; b=W5xBCTnz9C4PWvZ0KwYkC9Z85RI+DCoWnM0z9T
	TxDgeQmxgffiG0dQ07hOCUGpeIUJyEeUYoiQs4doDQWqhnkRxjc7Kqdyk1gJzgn4
	MxrbR+nvseXvl5ZHm/NmeicZAFu7I2ONvqRJcEyOn9Ufma2xcHt1CKZOALYxvdVW
	spw1dYb092436mKOEljzDhQrrZdjQSZuQ3/vNZKou9PZdnjFhU1raTe2UEj7rck8
	Z9GpOdYTxK44E9wMCq7/g354UWHesXMP53ZKImDuBol3q55uoBha9qAncD9crGp0
	jPLagOtJ3DvsLo7nD11/zhoFvXzgplmqdcHKwJmcHrTH4WhA==
Received: from mail-dl1-f70.google.com (mail-dl1-f70.google.com [74.125.82.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4evkvf1ftw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 18 Jun 2026 21:54:56 +0000 (GMT)
Received: by mail-dl1-f70.google.com with SMTP id a92af1059eb24-137e49e896aso1919195c88.0
        for <linux-phy@lists.infradead.org>; Thu, 18 Jun 2026 14:54:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781819696; x=1782424496; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cFhmc6tat5NN4iF51gvWQRhQtkdukby5rCSzb69wkuc=;
        b=RAVvqMYIzJmD30zlKq+HagXdjKE5dzTxxaHlIRw+j8QP2yMKvpCdv7iAm9R7FlkQB3
         geUwc5XasnAgitPGfRY8Q8KvOEyWWA5/m+BlVh18tuvblo/zEn94TEP2VumpyGc8A5o5
         QcXMVwMOBrUpcvkDdlQrqpNBA+pEJYkLCN27worIkTii/OhjDL1X0xE/zWfk9bp9QxFE
         sfcjzQDODQRycZ9wl5lIm40bKbRpAQq6UnPRBQQ+yXSMPWvKDQOnzYDMxS7RoOiQJNHx
         pZH8YvvusSkoqn30HRVSp8OjQ4P49hqS8fVjJ1htQGQtkPOj+PvGjhidz6TsGQP5zEgk
         r85g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781819696; x=1782424496;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cFhmc6tat5NN4iF51gvWQRhQtkdukby5rCSzb69wkuc=;
        b=U1QogOVlb3fUmWG0OqPW99/6NQdB9lBCZX/bapoWnRgarSeT9VBYAhPJUXedIcvO4Q
         7RYKDI1SZp7QhNS6CuRsNscoqqToybCa5q1K5aN4nZMHKk7mq+8e2nokAF903pAF+xdU
         kXtNPY4mwqZxmolurgfEAhFFPTA8VEezmUXF+zNRYTrkrMDL+iMMuduOlGFW4/8beKPS
         ca8mLJ3sfnh5fMood6HbDkkit7IG2UX5npeG3bh2A0eZQynq3RBXwq5VoagK/+c27AVS
         xry1h69GvDZjF1VslykbY1CM3JYeZX41+BByw3w8XBIPHVDTcsA5H2SL6Ptw36vLBHNX
         nVww==
X-Forwarded-Encrypted: i=1; AFNElJ8UuaJ5M8hdEjKhpqtnAqrwQIJDhzCDtJO7wd1iOHeD53j2SoJOwhZNJXQE/SPSWHoQApOTAazK6aM=@lists.infradead.org
X-Gm-Message-State: AOJu0YyX6NguCZRveEKVXx+2std8tMOL4Y0pWxDhlr3dJd1ysj7nmwsv
	HXSG+SmNLy4StxeTPrR8Ktdtuf42AAjxWXu1y4ky13uFvYBuPESDftKqrbayMbqx1c0Zts//4Tj
	nFmHPULToLygDYNeXhrKsvKae6IXY1nbKmeTkvgNB05zQSWT6+4fXVrX9eZWHxZA3qZxP
X-Gm-Gg: AfdE7ckj/I4hUqs+5R7qeWt+BZ63r8EcF5yUZ703mUzIyLA+l6CO5WCcjF9nLOO2bPZ
	MPVGLbJXfv5GJp6xc/PGPeI1ERxTJjSTGaBusQmhrX3W0vPOVlCoV+O0uf/axd5e1brEKz8Y0jU
	CHJ+ZMeyDnplr/Y2+XBiHDrtwu6RGM76tfRHgOjS6gH5hwW5uv3fKiyMNXWtpGFE+ldkWpKQyVa
	tFeYT5XjUMeUOSUwwCFniD9LW6yan/Bd2AdCO6G+SgFIXDQIUsyAT3fwW5vK3c5PWrmhFCXCr3n
	K3akh+Ak2isQ1Xy60Djw9i9RQhwpwfqAYBvMy0imvnlglEIgBin9d15kDjwiE9SIHSgfzRGXFKh
	c2O7Frk6wpb6u5rifTXNf6Gd6gQyXayoZBaLRzKnhgqiq6PC+
X-Received: by 2002:a05:7023:b0c:b0:139:85c2:d7aa with SMTP id a92af1059eb24-139a311b661mr469631c88.18.1781819696135;
        Thu, 18 Jun 2026 14:54:56 -0700 (PDT)
X-Received: by 2002:a05:7023:b0c:b0:139:85c2:d7aa with SMTP id a92af1059eb24-139a311b661mr469611c88.18.1781819695614;
        Thu, 18 Jun 2026 14:54:55 -0700 (PDT)
Received: from [169.254.0.3] (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-30c0670a1b4sm619430eec.8.2026.06.18.14.54.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jun 2026 14:54:54 -0700 (PDT)
From: Matthew Leung <matthew.leung@oss.qualcomm.com>
Subject: [PATCH v3 0/4] phy: qcom: qmp-pcie: Add PCIe PHY support for Hawi
Date: Thu, 18 Jun 2026 21:54:35 +0000
Message-Id: <20260618-hawi-phy-pcie-v3-0-3fa42ca45ea4@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIABtpNGoC/23NQQ6CMBAF0KuQri0pHUBw5T2MC1oGW6MUKVQJ4
 e62GGNC3Ezykz/vz8Rir9GSQzSTHp222rQ+wC4iUlXtBamufSac8ZxlLKeqemraqYl2UiPlBZQ
 AIk0SQOJ/uh4b/Vq90/mT7SiuKIeAhIbSdjD9tA66JPS+drGxXUIZ5bAXRZlCBo08Gmvjx1jdp
 LnfY39ImHD8h+Qs3SLcIwJLVtSQ5awWf5BlWd7m5TkxCAEAAA==
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1781819694; l=3298;
 i=matthew.leung@oss.qualcomm.com; s=20260428; h=from:subject:message-id;
 bh=RHPv53SnE8+XMk7kiNsS/IPw0K+WbzN9wk2f4cANiIs=;
 b=2vQ3spsrM+vhNVXBIP/ekl4DyABK1cAFh76MkEZM/E3wgDICHeWcVEfnhj40Y0pIYHkXW21CO
 MxsP++tKE16DMtFY67CG8GBrQpt6lrwh79sQ6hZOClUuOJdVrntstrn
X-Developer-Key: i=matthew.leung@oss.qualcomm.com; a=ed25519;
 pk=aT25ggJo5PMHLN9N+TsZ3s/BVU++kEYuiFebPWe21+o=
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjE4MDIwMCBTYWx0ZWRfX3zsjbfZopCgu
 22qra6pdlvXqWhhBFHcPQ3aD3pHGg6aWwDhlfwcbr576jXTajc5Zf4cITWvv0nuyO3AfMbeTqbp
 15F+tfFvJUdh0jFRx6isoFTiJYfQW+E=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjE4MDIwMCBTYWx0ZWRfX2mpi9Lad5cHm
 7GFsFsLHRaP5JrOfo+l0ZTX6Pg7sK1+r0u9EFzgLyGTF59h7cU23Iycg3nhjfdJhc47mpCAeE3U
 K7VzFqeesi/lWDEU+QsD0c7MRnXyboJKjLHwcUtKsih8izItKdsZb+pJsYAIUWw9GteIl140Osu
 oy8gV9KYgpSevTYDTk33xD3ppYqdqH6YSGNrNZQyRA2nizjI17UE+gKQRjv/ZVONuUMIlaSbHEN
 KUSlg7Ye3N0JtlZjNMvMipamKxWu5Ng0e3ggmj9dROi/ewMcWi2RlQa15BEw864z+HKM0MFE9NB
 79rNlNPe4HZiTSZYkBbYEOqoTtntBUlUjtaBRp3PYUgVcyq+RkOFGn6CnMJpSwyYCyKOIB2LrLq
 Pc2vg/Gc/C5nCgJWTrwMYi+nGr6ar2L5KAQkkM00Gbkf7pgn5So4ebSiJr6+kiXUlTTwtLyP+GB
 MQmNmdlqS2bzXu0gdWg==
X-Authority-Analysis: v=2.4 cv=H/3rBeYi c=1 sm=1 tr=0 ts=6a346930 cx=c_pps
 a=SvEPeNj+VMjHSW//kvnxuw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=bC-a23v3AAAA:8 a=KKAkSRfTAAAA:8
 a=JfrnYn6hAAAA:8 a=NdRViCHAqdO61CPby4IA:9 a=QEXdDO2ut3YA:10
 a=Kq8ClHjjuc5pcCNDwlU0:22 a=FO4_E8m0qiDe52t0p3_H:22 a=cvBusfyB2V15izCimMoJ:22
 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-ORIG-GUID: fq6GARbe41e3z3pdefsIsDqev8jXwqt2
X-Proofpoint-GUID: fq6GARbe41e3z3pdefsIsDqev8jXwqt2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-18_04,2026-06-18_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 clxscore=1015 impostorscore=0 spamscore=0
 suspectscore=0 phishscore=0 bulkscore=0 adultscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606180200
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260618_145458_062885_7DB02857 
X-CRM114-Status: GOOD (  13.33  )
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
- device tree bindings
- v10 register offset headers
- v10.60 register offset headers
- driver support with PHY initialization tables for both configurations

Overlap:
The series has overlap with "phy: qcom: Introduce USB support for Hawi"
by Ronak Raheja (see link [1]). Both patch series introduce a subset of
v10 registers (this series for PCIe and Ronak's for USB). I have
coordinated with Ronak regarding the overlap, and we can update the
series to resolve any overlap based on the order of merging.

Link: https://lore.kernel.org/all/20260508213234.4643-1-ronak.raheja@oss.qualcomm.com/ [1]

Signed-off-by: Matthew Leung <matthew.leung@oss.qualcomm.com>
---
Changes in v3:
- Squashed v10 register offsets into a single change
- Squashed v10.60 register offsets into a single change
- Removed USB mentions from header comments; offsets are PCIe-specific
- Reused the tx offset for the v10.60 combined txrx module instead of
  introducing a separate txrx offset
- Link to v2: https://patch.msgid.link/20260604-hawi-phy-pcie-v2-0-be908d3560db@oss.qualcomm.com

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
Matthew Leung (4):
      dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add Hawi compatibles
      phy: qcom-qmp: Add v10 register offsets
      phy: qcom-qmp: Add v10.60 register offsets
      phy: qcom: qmp-pcie: Add QMP PCIe PHY support for Hawi

 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |   6 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 375 +++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v10.h   |  18 +
 .../phy/qualcomm/phy-qcom-qmp-pcs-pcie-v10_60.h    |  26 ++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v10.h        |  22 ++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v10_60.h     |  23 ++
 .../phy/qualcomm/phy-qcom-qmp-qserdes-com-v10.h    |  49 +++
 .../phy/qualcomm/phy-qcom-qmp-qserdes-com-v10_60.h |  55 +++
 .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v10.h   |  47 +++
 .../qualcomm/phy-qcom-qmp-qserdes-txrx-v10_60.h    | 109 ++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h                |  10 +
 11 files changed, 740 insertions(+)
---
base-commit: 8cd9520d35a6c38db6567e97dd93b1f11f185dc6
change-id: 20260506-hawi-phy-pcie-283933b4113e

Best regards,
--  
Matthew Leung <matthew.leung@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
