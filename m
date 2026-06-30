Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4793EC43458
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jun 2026 19:03:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5OcUqcRQPWuDs90xws4szTo8oYzviJ/VvixuErLR1W0=; b=Tqs/9458gdH/Kb
	Qmltyr/+HaXIuWZDkcXZ7P/uJGO9wp1uw3TD2e6po6ySXcL88WMSdOAbzE7yMgMKYGQsAh97XDIds
	ZzHGPXstzvNrM47SL5ZujIBcXtScrYBhnLmhmzlda+OA7LYdt2V5qKZJOqHO+RlP0Um0joGqmeHVK
	AZXUe/p2AP4OItHltWuXVPONjLWMuqz1HjfVdxmS2uEGGxbjW9REs5lPzIVXpQI+ICUuqJtR6iYOK
	aJvBoBFNx+bdhFt1lTa6NVZj/zqb0S5z+XyzkZs1YNuvaPy2GVggxfNIYvW20x3ROElw3r4+RC5rp
	PjPCgj5lk/eMt3P904KQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wedju-000000005CJ-3N0t;
	Tue, 30 Jun 2026 19:03:22 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wedjs-000000005Bv-2uAw
	for linux-phy@lists.infradead.org;
	Tue, 30 Jun 2026 19:03:22 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65UHkflk2646649
	for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 19:03:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=54AYRgZXvf1coJSYDJ7gWV
	G1vab9Ivg+RUjNrzNJr9E=; b=hS54l00KM3CPK3ibO6D+sKBkMYZKKW5zBhBPMj
	FQoaKd34lrUQNQ4vqR06liGGQzQUFZCqquOZbaiV++D/oP9/26pv+3FxHl/KFMH1
	UDPBtcWORSPnx0Ne4lh94tmcOEAnWcp7bgSCJfEpVIHi8bfrgm3EkfYLwB1aFx2l
	yjaTC5dWjU0xLvtRQgB+xACEtYJSyD1BlBwHqJNoz1OK5Rfe6SKQXoDVvmVYGKjM
	U7k8iC1RWLXCp/hD+0yl+aZKHwk2Uz819LAB10UU4C1wItrkwVZoNjv7Q6lfv6FL
	SVE7HVRmpgHMFmnw9VnSf4FJlOa+oGBtuhDmYqAzJ0e5v3oQ==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f4hfy8sqg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 19:03:18 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-30c011c7cb9so13661378eec.1
        for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 12:03:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782846198; x=1783450998; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=54AYRgZXvf1coJSYDJ7gWVG1vab9Ivg+RUjNrzNJr9E=;
        b=JXnYcLCAd3MCTL2CH5YUAnvH/vN2RWkAQw0/zf3XC8YM+DQq+7j4Yd4F0iXIDH9egM
         EejlypGJbk+Uxg+6iZ8NdGLVYm+z6uQ0xZ80tPsbAkK9WJWt5aF7zb7QqK0x11Iw8/FX
         vODqKUyZ8fSmIO4lcmynQoVizLGSF0F6sY7VGrM1EYddDz8UQL57Nm8d3Lb9e9TmT0uR
         svyCs/7SiNHREVpkVkecaacOJTyCLUDqDHLW4bFOVAXiks8y84dVVTFlp182tGfZiDa5
         b7ox61tyPDcG4YxEgtxbONehQIXQBNQ48w17Y82NN3Ys5/9q2F2YdgzTPFptp43pFEhR
         EB5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782846198; x=1783450998;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=54AYRgZXvf1coJSYDJ7gWVG1vab9Ivg+RUjNrzNJr9E=;
        b=HQ+9vKjMwmfWbWE2U5bt0G1g4aCIXwRWxgCrDSd9zmIxKAncoMtVcB7YaiXjW7jrjf
         V8AP1QM559edUzq8X+ROYFh/kD5A4DaXcepQE/0Oiyg5eMwvYyToiR/JqPi+SfdRQU4p
         u8GxdEpVwQNHsnJIJySHlyc4UIHIHdlZy0a749pwcDVMza83l0HNSFfuTi9B/AmKo7EE
         gdvt9dW/EuQ7kXlMrU6GmJdd5dobdkaYy+Rr/xHWfUUWCSpmo3rQssp7jzLtIClw9+tK
         7sV29nUm4zRoPYV5M77Gw5ZBwBiLAijr0EyMv5TDdYyJalORH/YfuuFFH8aMP2brgNAu
         R7Ww==
X-Forwarded-Encrypted: i=1; AHgh+RrcTCLB1L658klOmvBL01ozNa7APQ9OPlgPtZvvOCOFnvTpn97Vwx1MK4qFVaZ+BbkCMH5HOwLC0MA=@lists.infradead.org
X-Gm-Message-State: AOJu0YwWmo3E1mVQ1QkHQ0XYWR+0k2lER1cs34rBfwwJ8BGoDxfdbotH
	iEIEFkoYLOM3hmOL+yckCTpH2mv71ZzMnLWDN5umsvpVIqfTnXrv3U5n9cvIFmqmtVay56cHrb5
	QhWnpEEz4m7E2b25PGnMthkuQurEtPi+YamUh/2q1nAoPdJF7WwQd7zLyEoOONNMoumd9
X-Gm-Gg: AfdE7clu1O/8nhfaEZSeuY7qRlT/s2PEsAyCQEM9D5Ug++Mfo1IEJQYTt8Ik4OiXeqG
	urKX7qENDVW0yx2Uko3Uvxh05XTwOVkmfQ9zkrU3PY3mcG7r+19r4ChAATJpBoohXNGS1KF3kKa
	gE+yJHjZh3K/KR9llvgK9YPWCRNRl29i5YOesKXw61eDdm6xenug2msZ0UJqKdl9mmLHaxMfW0q
	l8MotkHuVx7yEjZdZkd8hLXHCX1JjfdJQ4nbILakVkrTf3+K1p6bYpNE0ujnluJAjdxj1mkjKb5
	haHXE5mRsGR9QtXmtMtKnYFN7KQr74xs7ASJI7IV+aaXBjEdXPIynFaweBGHYL7li3N913O0l6I
	eXtfuOwYBLqQ4jedeJzWbdCtCnstMVk1jXMrvf18WUsn1x8o=
X-Received: by 2002:a05:7301:e02:b0:30c:6025:da8a with SMTP id 5a478bee46e88-30ee134962dmr4071749eec.14.1782846197974;
        Tue, 30 Jun 2026 12:03:17 -0700 (PDT)
X-Received: by 2002:a05:7301:e02:b0:30c:6025:da8a with SMTP id 5a478bee46e88-30ee134962dmr4071698eec.14.1782846197362;
        Tue, 30 Jun 2026 12:03:17 -0700 (PDT)
Received: from hu-sushruts-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-30ee317095dsm14963815eec.15.2026.06.30.12.03.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jun 2026 12:03:16 -0700 (PDT)
From: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
Subject: [PATCH 0/9] PCI: qcom: Add PCIe support for Shikra SoC
Date: Wed, 01 Jul 2026 00:32:42 +0530
Message-Id: <20260701-shikra-upstream-v1-0-e1a721eb8943@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIANISRGoC/x3MzQpAUBBA4VfRrN2akS55FVlcDCb5aQYpeXc3y
 29xzgPGKmxQJQ8oX2KyrRGUJtBNYR3ZSR8NGWYeCyRnk8wa3LnboRwWR3lbel8OhEgQq115kPs
 /1s37foi1EFVhAAAA
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org,
        Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782846191; l=2304;
 i=sushrut.trivedi@oss.qualcomm.com; s=20251127; h=from:subject:message-id;
 bh=LvlwbbSfGWB/DCQMdh/o6bn7mfpSa5BBkE//6kj5XNQ=;
 b=3763bsqpx1pPGmDO0q0eQLi+UTbzjWu7ITIUvsYsUGaOWDX8P5RJYqmMHKnQYZmHQ3zKg/ClK
 xZZ8ExeoEK6CkefBKEg/3J2RCJy7MpS0xinHTnq6FQpeWGyLNJYnjmk
X-Developer-Key: i=sushrut.trivedi@oss.qualcomm.com; a=ed25519;
 pk=OrUHTxBaSg1oY3CtCictJ5A4bDMNLRZS1S+QfD9pdjw=
X-Authority-Analysis: v=2.4 cv=J5OaKgnS c=1 sm=1 tr=0 ts=6a4412f6 cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=0S22rWqy9xk-ZxXqdxcA:9 a=QEXdDO2ut3YA:10
 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-ORIG-GUID: wo0Onf9dYX7TPsc_o6TQTTMTe5GcL8RQ
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjMwMDE4MiBTYWx0ZWRfX5oh/tW7/x46W
 Dyi32ndQ8MQNEp924run5rGY2+5l3w2mhnvM/MTioEQ8LRh15nY5PzTgKphUJAdyE78Psr9quNX
 8ehk/GuPyAH5wMIPzy8sr1bDPKM0gAE=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjMwMDE4MiBTYWx0ZWRfX2q+QVqO1Smp3
 qthTxVN5GWiXGS+2+lFkw4JXLInAylJAJU/1OcV0Q1Qctw2NYbmt5GzEP77BM8k2gkddIf5/JfK
 cA7eYtJ9Gdlnt69QxK0VqEQPGSqtr0clBHrPpxb2J37k8ol281ZomySRwcsV32YeU3md7yjepj2
 g1kt7AFJ0YT2maotvsrNU4JqkasGKc+tD2LhDAe95/TFTo8qM6+c+/6GkTbS2mUd2gUDuDqRbLy
 R74rIzJ2i0KMHX6IYoLTqxiOK+dYMr4fCu7VJ0cPeD05j6lI7Kr20hPQdGMMwkmhfgoa8Mt09An
 zg4I9FiL13QGYEGt3FW9z9bD62BoULBQErFIZTfB/5HBHKAKQdjCnKOVCsX/ccIIXhnh9igFcSJ
 fcKLQf0sgcnWe2AGpnwNNm9MlEccJbjDFA/kbH1i11g03RorToXRzRxiCRMtJ11y+jmsWt8xD5Y
 iBHOctXcv+atN6tr2AA==
X-Proofpoint-GUID: wo0Onf9dYX7TPsc_o6TQTTMTe5GcL8RQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-30_04,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 priorityscore=1501 adultscore=0 clxscore=1011
 lowpriorityscore=0 malwarescore=0 impostorscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606300182
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260630_120320_892816_73419F5A 
X-CRM114-Status: GOOD (  11.02  )
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

Add PCIe support for Shikra target, by adding dt-bindings for phy,
controller and corresponding phy & controller drivers/device-tree
changes.

Shikra RC is connected to TC9563 PCIe switch on all three
EVK variants: CQS, CQM and IQS. The individual downstream ports
of TC9563 connect like below:

DSP1: M.2 B-Key for 5G Modem
DSP2: M.2 M-Key for NVMe
DSP3: Embedded ethernet device

Power and reset to M.2 B and M.2 M slot are controlled via
TC9563 GPIO's. Hence, add DT nodes to enable TC9563 switch
and include corresponding changes to configure power/reset
to TC9563 endpoints as part of power on sequence.

Signed-off-by: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
---
Sushrut Shree Trivedi (9):
      dt-bindings: phy: sc8280xp-qmp-pcie: Document Shikra PCIe phy
      dt-bindings: PCI: qcom: Document the Shikra PCIe Controller
      dt-bindings: PCI: Add bindings for endpoint gpios
      PCI: qcom: Add support for Shikra
      phy: qcom: qmp-pcie: Add QMP PCIe PHY support for Shikra
      PCI/pwrctrl: tc9563: Add API to control endpoint power and reset
      arm64: dts: qcom: shikra: Add PCIe PHY and controller nodes
      arm64: dts: qcom: shikra-evk: Add TC9563 PCIe switch node for PCIe
      arm64: dts: qcom: shikra-(cqm/cqs/iqs)-evk: Enable PCIe PHY node

 .../devicetree/bindings/pci/qcom,shikra-pcie.yaml  | 211 +++++++++++++++++++++
 .../devicetree/bindings/pci/toshiba,tc9563.yaml    |  22 ++-
 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |   2 +
 arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts        |   7 +
 arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts        |   7 +
 arch/arm64/boot/dts/qcom/shikra-evk.dtsi           | 152 +++++++++++++++
 arch/arm64/boot/dts/qcom/shikra-iqs-evk.dts        |   7 +
 arch/arm64/boot/dts/qcom/shikra.dtsi               | 154 +++++++++++++++
 drivers/pci/controller/dwc/pcie-qcom.c             |   1 +
 drivers/pci/pwrctrl/pci-pwrctrl-tc9563.c           | 152 ++++++++++++---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           |  73 +++++++
 11 files changed, 764 insertions(+), 24 deletions(-)
---
base-commit: 565fa02f75448ce1ddd18bda6b31ad985cf75411
change-id: 20260701-shikra-upstream-14b8668f1001

Best regards,
-- 
Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
