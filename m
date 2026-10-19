Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3220CCF2DA
	for <linux-phy@archiver.kernel.org>; Mon, 19 Oct 2026 09:25:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xn3Gj5U7Ce6AUuGU4Sni3Pt2sE8cU7Eumx6fpUC+1OM=; b=z3dF52GAgL4zYc
	KvxLBVvBAi+CUTiIlGgJUjbPKCLj6ru4Q+WfjcnlWh/5A+HK3YwqADo0p06c/1Jb6vcevV/TGTbZj
	V6bgGR+AP3m+R/BIjFZu1ZtJaK4urX5Bn4IlLq1pZAdGOSxoLiOD/CUyMZ0WYAY4V7yWAZaKelCxo
	d8O1N0y67DEI5bNOSsGFz5sWGe+dtcSWIix4Vwq3spGN4e7QKRJ8kSG6gldkQbYaUPcbIwoj2kY+a
	wekMXLFcwnOcUN/ZBc6Wj/jKiAGO2Oris4WBtILkDVcdnTdg44HGrfERLrsuVUqhYnYZmO7SUfZyy
	jBf+AXozPeCGcb2dpW3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIjca-00000006zaA-2Ib2;
	Mon, 19 Oct 2026 09:25:32 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIjcX-00000006zYV-1tEJ
	for linux-phy@lists.infradead.org;
	Mon, 19 Oct 2026 09:25:30 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69J8P4aG1896453
	for <linux-phy@lists.infradead.org>; Mon, 19 Oct 2026 09:25:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=EKRFsN8rnMk022/cD31rwX
	WBBc2zyHwGF5EAKF+r0uU=; b=pqqz0XSAkxyEKEXTnfiSjPKcE+uvf8TUJkj+UK
	o7tJ+gJxbcmynZ5K3ytgKWTLBftryrcf1bd7Bh4Dm0uRrGyvv+9ZHgSrXWwbd9yR
	tv34CSZSkkfzJKGj0HXcmyKweDVocVBKHm5yz2rr4oVVIoBsfx48UGjWLU4cUjgR
	c0sjYprxKz0N1ZLKyZoZKbndZUCHZyHgtl/KQfkj2eEIk57ff4Jo3OG0DcbXZnI2
	gF+jwxThJ7cCtw2YWnJ6UZuFep8TBeh0/terMK5G+TLxeqrDMgB+2KMSQGwKwoZq
	fuZliSFQQJj59IROGk4YfHLUqvt0PYwOMddQ5OREeE6q9xiw==
Received: from mail-dl1-f71.google.com (mail-dl1-f71.google.com [74.125.82.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hdbvr9617-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 19 Oct 2026 09:25:27 +0000 (GMT)
Received: by mail-dl1-f71.google.com with SMTP id a92af1059eb24-1383723dfddso3852900c88.0
        for <linux-phy@lists.infradead.org>; Mon, 19 Oct 2026 02:25:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792401927; x=1793006727; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=EKRFsN8rnMk022/cD31rwXWBBc2zyHwGF5EAKF+r0uU=;
        b=c0aMY1F3oY3lkG/uW3YUbQDb5lCkDuL+XhVq7Y0tJVCWV+bAU7im+dVbOldodr5dYg
         jftI+PGIm45496lrF6+gs9FkNxmNDEfll+1zPRYvbwidVyiokhhf6va1cA7X0pYluB27
         2gipkF7bDdifpibl97dr+ajWevyOSFrMV7x8RgaVk8zZASzkYqjFQG5HQQMaMww7swWD
         KhUqlgvSj33B3QH5cWKu1uJ2nGrcm+d7b6N04FY9qVUoo64sIDqOyR16BIXo+vxThgMR
         TXSWIVSJogvW+bsIcvUUUd5llZDqV69bqiGHoBN/JWEflFp10qQv+Y+FqqFl44GtJ1jZ
         Wj8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792401927; x=1793006727;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=EKRFsN8rnMk022/cD31rwXWBBc2zyHwGF5EAKF+r0uU=;
        b=XC6kYbKT3rThRBC5Cd09HeGBAZP6UyYxcVOvTXHBDj+uqdQh3A8+DpAud3kkIXYL2j
         qEGR4MwzHMvE5PwYKkjoHIBTCwnjCTweiUmMD2j4jWPUwQO2T4uk+wglGMacgVPOUWp/
         fKt8xV4e2k72itVjHjziEu/flS95Gq9+2UUYPKEmX7Av6z7IGzwPDttU7xNKaB2ep0yK
         5qXIkz/kFrGnn8BKPlTpj8ssW7o/HewXPcVvxamSvjfUV5VqkxtNx/abnKoV04NyILPp
         yW0tJjIzOyGACcNuAPRsk0sv6PFFj+zPjU++fvGdoWR0tTfJshgbnB9y7aj63SXlAME6
         kxxA==
X-Forwarded-Encrypted: i=1; AKwUvBz6mQ/2VWF7EPxPUJDN3/YTOb58gmCKLlNNDla5IwNJBvbiHo4IeM4ULN5oUaFTs1bU6MMnT9Nmp/k=@lists.infradead.org
X-Gm-Message-State: AFq9FYKd6ey+58yjgw/YkNyjONbEPn6oakOAYT2TnSTm8lAKmdANjGP5
	o6ElV9CRwdLjGKyrEmH4WMCMWNbEe8ojaaLGExgjJNDYFY+ZoPE7sgy7S95a+Gutr07xyCQlDjD
	ZZYhqIPL0Y+d+rfbMz0lS/5fmni5UCSfSDXoiVAQjkqzNco3tXe8/HWzWzRls6oKZJuwk
X-Gm-Gg: AYBFou0nHFugcQgmt80BwPMqjtjATsOvdjrln6EV3hgWHuLQZa/YuTCHepXOa9Xy7L1
	RUttr7mJRxdGBp7aZcFmi050kdxZ14T5mtnlmYr+ogaKr0bGGXUrIz/tN2SDvnMPF363xeLho9c
	dQYre6K+1VNnUCAyyYhZ/DL3YWpZluhLC8nVlBYx6M3XvPEZ9bUEYhp0QAPkdq/W9Oy1QulBTZq
	YLORvj36Kcseecm9/k3kDLv0ImDOSwM+glYpZZ7pOKDTdAM12rKl7mpgFCZgim3S1pJrHcqae+R
	9CU7Q50GpODzlo8r8ODgmdiYCjboxUJWy2bMPH/1PrEfl++HYbDH78TdT8FpZDV1RMJ9ailE0fp
	8bcDMET4ZQOGLtm9iiF5a/08PNvu7ZkmQSQ==
X-Received: by 2002:a05:7022:2097:b0:143:46a6:b01f with SMTP id a92af1059eb24-185131078e1mr11974410c88.31.1792401926451;
        Mon, 19 Oct 2026 02:25:26 -0700 (PDT)
X-Received: by 2002:a05:7022:2097:b0:143:46a6:b01f with SMTP id a92af1059eb24-185131078e1mr11974369c88.31.1792401925745;
        Mon, 19 Oct 2026 02:25:25 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1831c4d4675sm26682584c88.21.2026.10.19.02.25.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Oct 2026 02:25:25 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Subject: [PATCH v2 0/6] PCI: qcom-ep: Add PCIe Endpoint support for Monaco
Date: Mon, 19 Oct 2026 14:55:08 +0530
Message-Id: <20261019-monaco_ep-v2-0-852cb9f5d012@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAPTh1WoC/02Nyw6CMBBFf4XM2pK2PoKu/A9DTDtMpUYodoBoC
 P9uQRdubnKSk3MnYIqeGE7ZBJFGzz60CfQmA6xNeyPhq8SgpT7IoypEE1qD4UqdcFbtnHGVJER
 IfhfJ+dfaupRf5sHeCfslsBi15z7E93o2qsX7dbX6645KSHHY4l4X2llZ2XNgzp+DeWBomjwNl
 PM8fwC7j2WOuwAAAA==
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792401919; l=3328;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=UzSDvDLHIR8vUD/PBF+z84UxETXjLN+aGG5mAf6AxMw=;
 b=bryinFnw5NCiqJHL8v/CpYKB6l3W2+oZ/5pLQk1mj3MrBtN2HGUDcFDKTsTU/Wd2enwXYRCI6
 QXqkSi7gwv8Bpzb7Tbzx2fcadlYuQLSE9hFfDqROS1WL0GJ2sfzMAIP
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE5MDAzNyBTYWx0ZWRfX8kMwizxctVMu
 HySEhYc0CdCFNKbxRWA57kxcC9sKRCaK7lZq2dP7drs2PBlrQd/QeMblfxq64romyfOO+gRUhs0
 XyEptFt2DoBmbLHWAYhWXC4motHbNeDYVKkGcu0i3eNqPI/GEEpcKAyF/8XWZDM29KTYGgIlY6r
 2AFyFMNZ7kfT7l/8/PDj5uSpkykPApNYr/u672BxXVsxebE5vo56NhbIofohug4LP2VCL0KSeuN
 9Rd2bomP9TF+JXg2dyFX6C0gNCF+OZpeoVjgZr1KfPSArAB6jic2DVF3x7fBS+C+QKUg1vEM4zR
 dIzF17f5gHTNDGqMGzvDDniRjhHBoH5rbnp4VbYwxwhAtLkZVyTyHXlfzJH5ZkUoCc7wK/EfH+o
 8GPvxFPKmiIriZm5HgPMO9G96iV498G4PhvFskWto7LxRzDu+NO7kxhdUx4ZaKCTc1oYZFTdQK0
 s/bWNIv6gGt0x3mjCPg==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE5MDAzNyBTYWx0ZWRfXy4AG8StvBJEX
 9ACfcz7LO2dSYzl4CpiHePLjmqoBo4trI6vSNmfkxHmMSdRBeCv5APxBUkYNcsPZ2gVz+ZSY1Bg
 atJpBIDtQ4SnPu8Fpj93gy/t16TJtxI=
X-Proofpoint-GUID: -Gcdh6FZYtwyzloCSumy2yEaZNeq6RPL
X-Authority-Analysis: v=2.4 cv=K/+3jCWI c=1 sm=1 tr=0 ts=6ad5e207 cx=c_pps
 a=JYo30EpNSr/tUYqK9jHPoA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=bC-a23v3AAAA:8 a=EUspDBNiAAAA:8 a=adqygFarq3v0-pgez_gA:9 a=QEXdDO2ut3YA:10
 a=Fk4IpSoW4aLDllm1B1p-:22 a=FO4_E8m0qiDe52t0p3_H:22
X-Proofpoint-ORIG-GUID: -Gcdh6FZYtwyzloCSumy2yEaZNeq6RPL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-19_03,2026-10-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 spamscore=0 suspectscore=0 adultscore=0
 impostorscore=0 clxscore=1015 bulkscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610190037
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261019_022529_614081_4A61673C 
X-CRM114-Status: GOOD (  13.14  )
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
 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |  87 ++++++------
 arch/arm64/boot/dts/qcom/monaco.dtsi               | 150 ++++++++++++++++++++-
 drivers/pci/controller/dwc/pcie-qcom-ep.c          |  36 ++---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 105 +++++++++++++++
 5 files changed, 322 insertions(+), 60 deletions(-)
---
base-commit: 0927a1e73df63eda38bb120b91e50d746d640e17
change-id: 20260918-monaco_ep-fb14fafd0ecc

Best regards,
--  
Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
