Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D31F606A88F
	for <linux-phy@archiver.kernel.org>; Sat, 14 Nov 2026 01:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=fk47H5Wi;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=cXgLXeS1;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=VUB7cKsJ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=cqhPCuF/FUZctqrDDl0vRejBHSuw8PKCsf2hreUk/Sc=; b=fk47H5Wil+WjwpyjNf2r/bbwkc
	FzrROkKxYX52c1d0wx0eMeClEgjcXi7NBu9BFMylH2R3rceheF6Kcb8VaCJ4WokADSxPwYzG9BTrJ
	Zti6IrngGXZgToaAFVqqCHQn4gX06GgBtwqi2IsZaQDh+zm2ol1ylTz2m0CBJJzEqfTL6fDa+rHv7
	M+9N3hD+tOiudWkkgcJlV8CObQLjnSzxypCvkbqNzy7dyd1qSPng5YB5HOiPfU1LYyJLTqr2f5pTP
	c8wy1gap2E9mIVaoAXfqTArUSdu0DpGluZlJjA4d9flyGbVTTTbqE5ahdHg+RI2tWcbZProjXVqpT
	hTeBi96w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xS2KY-0000000Ezwz-3SZQ;
	Sat, 14 Nov 2026 01:13:22 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xS2KV-0000000EzwY-3bip
	for linux-phy@lists.infradead.org;
	Sat, 14 Nov 2026 01:13:21 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6ADMbQVf1852757
	for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 01:13:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=kTe3eKjY4XOv4bMTLL6hPd
	xF10qrrinmEmdieEW7Zow=; b=cXgLXeS1+LMy2W/ICjBzD2Owh7SmPZrPOiTmrZ
	B8ISCHkmxI+EHjqrlu0L4FYVm6IbQQFvc/YYD1VnteEoM9YMpiWfjmg+n5dAITOK
	RkbSXlzNtnv2u26QaX81b/om8KaCW7A9mF/rNFHpyROLiaNSNXbt2bgScETOQodx
	TsNlXI5ugGQTnXCH69BoszIMtRszMsKuxMKd0M+nXHv0bBqQksYE3bdVohjcXTYS
	hJdEIacllZMKrgLso3qgdAROKbYFlFrvOYICs39XRYfFn7VAmNR2PGySXcMeyckv
	1RBsRHjYR/2ZGJKiY3UASETai/1PTfs8qQqG9cAZg3MeybrQ==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hxahj0n9y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 01:13:17 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-36f479b9819so1830277eec.1
        for <linux-phy@lists.infradead.org>; Fri, 13 Nov 2026 17:13:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794618797; x=1795223597; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=kTe3eKjY4XOv4bMTLL6hPdxF10qrrinmEmdieEW7Zow=;
        b=VUB7cKsJZNAYKsLvIFKxUOAOH0jRX3f1RaEEqmg0wqeV/HBahfahmCFmxTx1gnBhkI
         ukNDoiNSvTapemkXgK16ej5XJ406pUBjShJZYmEZnsVFJP5l8yT2d3syANC0HMxlDvrJ
         yqXGU6511QHUaiCaNt9nZzcm9a5gDS2fbue30WYpJoqnzj30/ApTWKmCSdMRz5T8U2sA
         uUsWQMrUNHBrsAJ/X0IUCLu6UDg+bTO1jOWusntQFGWDFI8nyYPImep/mCsZTS+yw757
         mH3FUw0N+ciVI1/ZgKGWtzsgGR+U2BKBO9S/eMPhAN2d7s2+zcPiMIwdClt24zzO+Rzb
         tqLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794618797; x=1795223597;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=kTe3eKjY4XOv4bMTLL6hPdxF10qrrinmEmdieEW7Zow=;
        b=LhFPjqouZx0KBwXHcysHKkFPxPbt0fdXwejvuoHftatuw9fYwKkvvVK88WSZakiwRo
         Mmv4jbuonxRysjnu1xaF2MX/Z2l/Hzs6Ivptyqff+kYVcYBv019y6S8dsasigG2hSaT+
         KooE9l4rQkbs75ZYs2OqDwNVCk0W+ge5U/jQujXuHboIFcozwrSgj5fOwYn9V6ORVKQt
         z9f7hRkQA6ig9DVpg/yn0QFUcU6W9gSsohH7viNh1/XuFopzNawHceYX4OuilvW/6m6I
         gOOfXT2ZQs6t1as447ocSuKH8ZnZyYdv1VJKgvAln5ehbUhLxUYgc/eorZwacTgc7Ybe
         VhIQ==
X-Forwarded-Encrypted: i=1; AL+hErGPvMcfu13WcLOJ0kflJnvWcizQummgsudP3hXBnC3bkADI+OWb0aFJ064VMBlINJ/ImrqahkIAqCc=@lists.infradead.org
X-Gm-Message-State: APuU4Z+OhKQ6bZtaBrp6KQOl6ElJDSUQ9gDCrMSm20N6IPfJkw7Ws8XS
	lD64vrXVnEjjC6yPuWeBaAeYtjfcaC1kZRZf4MkBvJ+JBBC3/ZffYhBOiDAgxW4p6sTzTMOigMA
	9mioMDM7Qwpzfrap8+XAN5iXhkwFNgEKG17mPRfhApMcRAlZ0PExvZYPL3rNSQMXHh78o
X-Gm-Gg: AYBFou0b4poZIZo3BP5AqAyz3H47aBdBAdMatkt7qJgh8ZXY+v3wFtJeCgtPfOz/Q6N
	RHFuQQaDFlIRIQ8wHhFKK7HDO0jFX/ByxueEbc5Rg1SJyCSbrW7LybofAumJ/VL+YQ6Eq4qSvO8
	3Td2xtxZ4jSyYfJ9cqqSEdN8o+JCLoNOAzVfsE5q2LMgHQX0GBawzHVDFi3ya9L9msr1JYEXmDT
	lrYSg9I1fht/1sG/4woJp/F2B3VD+kQbQgmklm+9k+25G2Fks2zD8QcqhMTBwsu2TiWH7klVzzP
	WMxUgRYygGCenKl/+6Fl/qfdBfz8NoqmUaIfR9g+w07ccGNYq7AcP6F+srWZsveIoh/BJd+97H0
	DFk5mfM92DFunRxcX027dN2N6rEZf4O4m4wMXPL/aqN70V9Ovr1yNfjOivkMVChsLCfxILTlHrL
	JXCTxLeYWP
X-Received: by 2002:a05:701b:2912:b0:1b2:490b:6fdd with SMTP id a92af1059eb24-1b5030ad368mr3877911c88.24.1794618796825;
        Fri, 13 Nov 2026 17:13:16 -0800 (PST)
X-Received: by 2002:a05:701b:2912:b0:1b2:490b:6fdd with SMTP id a92af1059eb24-1b5030ad368mr3877886c88.24.1794618796106;
        Fri, 13 Nov 2026 17:13:16 -0800 (PST)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3795378d7e5sm10952813eec.3.2026.11.13.17.13.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Nov 2026 17:13:15 -0800 (PST)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Subject: [PATCH v3 0/6] PCI: qcom-ep: Add PCIe Endpoint support for Monaco
Date: Sat, 14 Nov 2026 06:43:02 +0530
Message-Id: <20261114-monaco_ep-v3-0-7fe227cdfac0@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAJ6192oC/23N3wqCMBTH8VeRXTfZjinaVe8REfubi3S26SjEd
 2+zCC+6OfCFH58zI6+cUR4dshk5FYw3to9R7DIkWtZfFTYyNgICFWlojTvbM2EvasCa071mWhI
 lBIr7wSltnqt1On/aT/ymxJiAtGiNH617rc8CTbuvC3TjBooJrgpRQg2aE8mP1vv8MbG7sF2Xx
 4MSH+AHUEKbLQARqEsQvNGlJBT+AMuyvAHFbJ3+/AAAAA==
X-Change-ID: 20260918-monaco_ep-fb14fafd0ecc
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794618790; l=3448;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=HSSXpCPII9klFGjnKVFNox+HX1Zi7tvJ1q/JdjPsr/A=;
 b=mzC5SLAz+I4A1GceeUdQy980TaqpgvTcpEzshGVr47GyxQxRt/riLjQ5q6gzXqJQIEpja6etU
 c851xf0oY1cAa10RU8VyTcPADrmUVLdDu1HgHqJFvxQ0jA0L24WQs3e
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE0MDAwNCBTYWx0ZWRfX/POV/dDYaOVG
 fuL3krjvxohQ+MRdVwG3c9c7QWIV98ZqGRGx+D7x8gFwg8V+aUhiR92uuoTgHlZuq1o/gqYcdUq
 Ebe4SP1XsxcYJ5svySHsWXFRzrC219gaA/bocVzJLP0KGutc7ZthBvjOE0ReG6NoFCLEzINqDzQ
 CN6iCD78y6LX8MRqxUq0GFKnOiCaQvyqIFnwf2iKr0cnzkKoqMtQnoqAuE/oD0nbZK/bP3wquP0
 p+KarIl62nPqjPGzhPpsy4l7R/1ppxGzlt5n95mHI8gB2CUkUabLB/1KqNFPVB1TigR0DTGGrzh
 AxxCGOOj1HUQjb4n1+bALBXB+kauq6c9ZhhrZAXaFI4imZ0CmP41fNLJXhFpXOeVtvcpJ+Baii5
 2jXMI9iPgR1Wsyu5l1x4lxcYP0P1Jx85PFccX3eJygtQjCwdVWZGoYHdLABFaE02qzIuvFVMCu/
 uREWR8reOYdgKd/lKGg==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE0MDAwNCBTYWx0ZWRfX8he1Pa/lZ6jD
 Bu/mFQvYfP2PaGBMNkkbo/hVOY+zmkpK2Jb0sIbf181wzsPRrzSpyFtKIPwcCFv24FqmudqPnpp
 8Jpn6ft6II/b64NGnKUPUksLA2Vu6dY=
X-Proofpoint-ORIG-GUID: 8vLogMgYG-kmmJ8w4J997rQiIo0pi8YB
X-Authority-Analysis: v=2.4 cv=Kv/YSmWN c=1 sm=1 tr=0 ts=6af7b5ae cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=bC-a23v3AAAA:8 a=EUspDBNiAAAA:8 a=ABVqSM4OJHPb3BREvlQA:9 a=QEXdDO2ut3YA:10
 a=scEy_gLbYbu1JhEsrz4S:22 a=FO4_E8m0qiDe52t0p3_H:22
X-Proofpoint-GUID: 8vLogMgYG-kmmJ8w4J997rQiIo0pi8YB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-13_07,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 impostorscore=0 adultscore=0 clxscore=1015
 spamscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611140004
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_171320_053489_2646430A 
X-CRM114-Status: GOOD (  12.60  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

This series adds PCIe Endpoint mode support for the Monaco (QCS8300)
SoC, which has two PCIe controllers capable of operating as Endpoints.

- Patch 1 documents the dedicated 16 GT/s x4 QMP PCIe PHY compatible
  for QCS8300, correcting an earlier gap where this PHY variant had no
  QCS8300-specific compatible of its own.
- Patch 2 documents the QCS8300 compatible for the PCIe Endpoint
  controller binding, with SA8775P as its fallback.
- Patch 3 adds the corresponding Endpoint PHY register configuration
  to the QMP PCIe PHY driver, reusing the existing SA8775P programming
  for the 16 GT/s x2 PHY and adding a new configuration for the 16
  GT/s x4 PHY.
- Patch 4 fixes clock-enable ordering in the qcom-ep controller driver:
  some platforms require the interconnect bandwidth vote to be set
  before enabling clocks, otherwise certain clocks can get stuck off.
- Patch 5 fixes the existing pcie1_phy node's compatible string to
  list the new QCS8300-specific compatible first, ahead of the
  SA8775P fallback, matching the order used elsewhere in this series.
- Patch 6 adds the Endpoint device tree nodes for both Monaco PCIe
  controllers, covering register regions, clocks, interrupts,
  interconnects, IOMMU mappings, resets, power domains, and PHY
  connections.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
Changes in v3:
- Rebased to tip.
- Link to v2: https://patch.msgid.link/20261019-monaco_ep-v2-0-852cb9f5d012@oss.qualcomm.com

Changes in v2:
  -  dt-bindings: PCI: qcom-ep: Drop qcs8300 compatible from the standalone
    enum list(Krzysztof)
  - PCI: qcom-ep: Fix qcom_pcie_disable_resources() to tear down resources
    in strict LIFO order (phy -> clocks -> interconnect bandwidth),
    matching the enable path's error-unwind sequence. (Sashiko AI review)
  - arm64: qcom: monaco: Add reset-gpios and wake-gpios to the pcie0_ep and
    pcie1_ep nodes so the EP driver owns and correctly manages the PERST#
    and WAKE# lines; drop the output-low override from the wake-pins
    pinctrl state that was permanently asserting WAKE#. (Sashiko AI review)
  - phy: qcom: qmp-pcie: Reword commit message to clarify the new RX
    tuning sequence for the 16 GT/s x4 PHY is common to RC and EP modes,
    not EP-only.
- Link to v1: https://patch.msgid.link/20260921-monaco_ep-v1-0-63c5282fb0db@oss.qualcomm.com

---
Krishna Chaitanya Chundru (6):
      dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add qcs8300 16 GT/s PHY
      dt-bindings: PCI: qcom-ep: Add QCS8300 compatible
      phy: qcom: qmp-pcie: Add endpoint PHY configuration for QCS8300
      PCI: qcom-ep: Set initial interconnect bandwidth before enabling clocks
      arm64: qcom: monaco: Fix pcie1_phy compatible to list qcs8300 first
      arm64: qcom: monaco: Add PCIe Endpoint nodes

 .../devicetree/bindings/pci/qcom,pcie-ep.yaml      |   4 +
 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |   4 +
 arch/arm64/boot/dts/qcom/monaco.dtsi               | 150 ++++++++++++++++++++-
 drivers/pci/controller/dwc/pcie-qcom-ep.c          |  36 ++---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 105 +++++++++++++++
 5 files changed, 280 insertions(+), 19 deletions(-)
---
base-commit: d0cf0853ff6b71724a399a87ca028fc57be9ccca
change-id: 20260918-monaco_ep-fb14fafd0ecc

Best regards,
--  
Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
