Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E06D9606A320
	for <linux-phy@archiver.kernel.org>; Sun, 22 Nov 2026 02:56:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=stfhYFCy;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=XGilMkxt;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=OOAmYSLa
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=Yu+w9Aeq9c5gMuaypOoLQHtEk+cSFKO4w9vrmxtuCz0=; b=stfhYFCynm4p5sOw5w2Jcl3AX1
	pmBjALROIFOqPudes8K86jSMllpMu0v1FQa4ceeT7QUMrj8XfPTsQxV9Cd7VhVD3/NPLmI4CLTLJn
	haKO1Nez2HBl3LgsRom1Z5f3kM263eef2pK202yhDK88owSadr8ah/2N8iwpL076QDeqUXhfHeRct
	dsHMDxEY4RJhgkSr6uerEMIOvyLgi7xTtgFBoDsf9yHW98p65kNMWZOOu6QcbyletbAXv9Slv2uLt
	5blNPMT9ynXqFjFTtc3Is3w456bq2CmMiyOP7JAY5nnMhS6+Kwb+exIvQhQJY7CxL1tvMl7fVzs8N
	aBIOBhxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUxkr-00000000h4O-0D7k;
	Sun, 22 Nov 2026 02:56:37 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUxko-00000000h43-2C8l
	for linux-phy@lists.infradead.org;
	Sun, 22 Nov 2026 02:56:35 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AM08qth2174595
	for <linux-phy@lists.infradead.org>; Sun, 22 Nov 2026 02:56:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=R3tSSWYPQrETVDjfSFXNDw
	1wYtJcf93mV9ZliLI0xY4=; b=XGilMkxtU5MPR2MdQvH5iyCExm2UtSoU4z1J54
	+lTV8+vUGMTIWNOPN1Sm0MzWa1hzHm2j9w9O9GjMgu9dCt3iNPS4mijr7Y3IfT9V
	Q30REE4LuUUbit1Xg8xL0k7aTTkeKKgpyXZGwAVJDYjis9Q+SAD8HxCl8NDwzUBS
	RRdyhZc/rgOUJPMaI95vsOL/AqtaVww0SA/E6pL09mPOlruOPOiam2CoHQpKNuWM
	+ONevSO6lLvqatKZS+skhek/f1LU2aGYa5NStgX/DWn5aSrTqTX7ATagS4OIT6PK
	VOiVTSDOWhNmYq1t9qvuzNINgSbam/IecjKt8COxVWEcOWWg==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j328rtq28-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 22 Nov 2026 02:56:32 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-386a65fca25so360307eec.0
        for <linux-phy@lists.infradead.org>; Sat, 21 Nov 2026 18:56:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795316192; x=1795920992; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=R3tSSWYPQrETVDjfSFXNDw1wYtJcf93mV9ZliLI0xY4=;
        b=OOAmYSLaWpI9ye1kaaGsVkplXFZGOlh9mCtGt7XztEFuIomBr4lqUQLXRcNvYEapph
         GxDZ3YCzUpmReT0wKvOOB8j+cKrBIdcrvgCIb0ZR48cQzmBGLQ3BqbeiIn1C5dyLJWZG
         O2denh/R4+NLSVClsEvmfWvJPKRmirR7o1IDgF1bmMugtCjcYf4igpJ1IsUDu1pQzHlB
         DJspkU/mKWDRL2g2mwgmH39Vl0PKicE9i9YMHJmDYMP+hY6OpqQ5DId21dVYKDu0e+Cs
         M8QAEFDBodMJoH34pCSHYkGJZS9E3sAkS9PVRL397WLGFrGVZbaVn697Hyw7vgxXSLq4
         Oj/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795316192; x=1795920992;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=R3tSSWYPQrETVDjfSFXNDw1wYtJcf93mV9ZliLI0xY4=;
        b=S9/ygF4idBhvKlnywd5QAIGNJrjApMRk/b/GKMq/GNk6pTVWYSppP6J+1vcOZ6i+41
         fwc9hFMItsOSFA1FymEst3I7JpD4oc0uCr22tdwLugdMgk1ssX+AfVwMWLjXwFivrqZi
         2GqQYsnj00HuaRfcCKGdZ4NNYB2MaYF5yuZEpDQjMcPiiw6csGGhMRUoyRw6Ckf+9fDX
         J7+seNBS/9NWgAUQ0QKwPVLEXC0SkPEZ+tITgu8N8QIi4TtB9VMpSO+OPtO0cTkHowlf
         fmBBX68RcYUg+/KvuaiGJe+/lfBhEunBw9JKukrAUCnCMS+xktl92UW0/Z+zaPBX2Cd8
         rT3g==
X-Forwarded-Encrypted: i=1; AL+hErF5GpILXTuqkhwO7HD33pcOYohkkc7q+JYSCgdxOcAGAGbuh3mTXV2VKtMF+neahsAkqwK++UzfieQ=@lists.infradead.org
X-Gm-Message-State: APuU4Z9HIYd2QMdX4L4H0XohG+uFmsUQq+AOrnkkNj6YlXb012owe67O
	ps5Yebo29iueBNE5fDwYo6l9jvyoVAIjbixPRNuPbEEMsSIkLnUMol0xd7HpI5HYnhdX9GT9Zjp
	1yfJt6Z8MVVI7WklYshL5C44gCwpsxo+vDJtDrjigakZk/3QBq5BfZ382q10PUN+y8+FefgpNSX
	dw
X-Gm-Gg: AZFdTZdrCIB7RaGsrGLEqUWeYxTFTQ3eByA0doo5iVNo4LV9fkg+cLTum5Wc2uzZ1Jw
	dgFnJUeqglkR1hhgs1UCPLaIowtYmt/EclcjwWuwdvmaFrCk64H7fVoG795Kxx18lppobP4ZyFb
	V9kM4hBbAOuGGw0rkoAxdcEd/5DdlQ2EF6944DPFeORs3pa6BCEIqJjDVOaMhn53Ffmol/W1Mi8
	xs6ZQttez9ix04hEPYqsYfNLJlCO+ksCMu3PaoxKq5TbClMyk+yYyXRyvTodN67FUxYOOA0CPAf
	SucySoKJZBSYMjJgn1Ce5AbR8sCw/zsfFG3oD6hwRffGSuGUOPPKBvfuK2fy/+wI2Yx72xuCt6J
	6pYtow51KMbGkk6rPB9Dp8JsivNLXwaW2BLqBedjw328s/USwk+hn5pb6ul6Hop+ITHgBvYAY+C
	G4HGHBqHqL
X-Received: by 2002:a05:693c:62db:b0:386:a7e6:79c5 with SMTP id 5a478bee46e88-386a7e68253mr696536eec.12.1795316191388;
        Sat, 21 Nov 2026 18:56:31 -0800 (PST)
X-Received: by 2002:a05:693c:62db:b0:386:a7e6:79c5 with SMTP id 5a478bee46e88-386a7e68253mr696514eec.12.1795316190850;
        Sat, 21 Nov 2026 18:56:30 -0800 (PST)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-386aaae4960sm312044eec.18.2026.11.21.18.56.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Nov 2026 18:56:30 -0800 (PST)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Subject: [PATCH 00/11] PCI: qcom-ep: Add Nord PCIe Endpoint controller
 support
Date: Sun, 22 Nov 2026 08:26:13 +0530
Message-Id: <20261122-nord_ep-v1-0-6d8839ffa9aa@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAM1ZAmsC/yXMQQqAIBCF4avErBPURVZXiYjUsaaFhVYE0t2zW
 n7wv5cgYiCM0BYJAp4UafUZoizAzKOfkJHNBsllJbhUzK/BDrgxV2FtlW6M4ApyvQV0dH1PXf8
 7HnpBs79zuO8HGfC76msAAAA=
X-Change-ID: 20261027-nord_ep-f6e8d7b9c107
To: Manivannan Sadhasivam <mani@kernel.org>,
        Jeff Hugo <jeff.hugo@oss.qualcomm.com>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Frank Li <Frank.Li@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Niklas Cassel <cassel@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jingoo Han <jingoohan1@gmail.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: mhi@lists.linux.dev, linux-arm-msm@vger.kernel.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Anvita T <anvita.t@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795316183; l=3900;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=II104LFoYUY5bCZ8dL7uJ2flJ9MTEs2ATqgjrm8Rkco=;
 b=Ntg7aOOnLDOr1w8i2c53tVY/kOb0lH6r/CYyPBiWkneCkTr/bxCvNhbKpjfNZoLJIvOXy1+8+
 Njf0+TGjGSaAZ4mMQbKmueG1j92os4RS3EA/8VCY+R3lSnJ76GNuoQh
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTIyMDAxMSBTYWx0ZWRfXwC2dOhn4ZkNO
 aqnCR6peGQ/CYLSuQYpDn8PL1+vVGkUnlO0qteTMUC1MC1kamNrgA0e2iDfdlFACdw71fZ2u2+P
 oVYDLNGgf3V0MBmIX6PxOkwgHXBb4fc=
X-Proofpoint-GUID: AhvuPGl5iYOR3YH7zby-E4l9WBLe1NyP
X-Proofpoint-ORIG-GUID: AhvuPGl5iYOR3YH7zby-E4l9WBLe1NyP
X-Authority-Analysis: v=2.4 cv=c9w+0h9l c=1 sm=1 tr=0 ts=6b0259e0 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=Isxxj8DTuwmncN1cjOwA:9 a=QEXdDO2ut3YA:10
 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTIyMDAxMSBTYWx0ZWRfX3y4hU19OQ0pR
 S5coBNwD424LfhimKkt8ZEsatSWEJ/XXEXGi0j60ujjWqGUMU/wvUE5rZTFlb1cwJs1RBBkyuen
 80tKKhehQhb7vOS8rEh0LE+rtRdzCZ4/4W8/eQx3TLf8BwtaHVLj/oMrarDONBrqZxsc/lTh9zf
 8S/gVZFrHqlQubzS8y8/GvdBusUU/ummRPSXSs25Id4wHKsFbbYFwpUEyG9VT8CFq8POPWO+76C
 fQ2hn4iW2H7NAuGbVMqqIih2VSgT3RHj1z2EgexoIjHKrjLc5KlLx0XO934zRK0hmYunTFCHGjg
 1WUyAdiWUuRmyH8eps06U/IyZvIssPePkSXYkOqF055bHprwqsbOKnERtA/Th9UWBBEU4bfEF+r
 bDn67IWWYBTWbjOrMBIdJcvm+/BYut02rAlohnHda1ts9J0yAJIOgKAn8aPW1iBVzjl+svoz60m
 8L5SzJaTuiimtRafUsQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-21_06,2026-11-19_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 adultscore=0 bulkscore=0 clxscore=1015
 suspectscore=0 malwarescore=0 impostorscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611220011
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261121_185634_596158_99AE6662 
X-CRM114-Status: GOOD (  15.19  )
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

The Qualcomm Nord platform has four PCIe controllers (A/B/C/D) that can
operate either as root complex or as endpoint. The root-complex support
was added earlier; this series enables endpoint mode on top of it.

Bringing up endpoint mode touches several subsystems, so the series is
arranged as a set of generic, independently-useful changes followed by
the Nord-specific enablement:

Generic (useful to any platform, can be reviewed/applied on their own):
- PCI: epf-mhi: Pass the actual number of MSI vectors to pci_epc_set_msi()
     Fix a pre-existing double-encoding of the MSI count; a prerequisite
     for the MSI-X patch below to request the correct vector count.
- PCI: qcom-ep: Add MSI-X support
     Advertise an MSI-X-capable epc_features variant and route
     PCI_IRQ_MSIX in ->raise_irq(). No change for existing SoCs.
- PCI: dwc: Preserve glue-provided eDMA HDMA channel separation
     dw_pcie_edma_init_data() hardcoded the HDMA channel register
     separation (ch_space_sz) to 256 bytes, overwriting anything a glue
     driver programmed. Only apply the default when it is unset, so a
     glue driver can describe hardware that spaces the per-channel
     register blocks further apart. Builds on the recently merged
     Channel Separation support.
- PCI: epf-mhi: Add MSI-X support
     Let the MHI endpoint function raise MSI-X when the controller
     supports it, using a dedicated MSI-X BAR from an optional "msix"
     region. Falls back to MSI otherwise.
- phy: qcom: qmp-pcie: Add PCIe endpoint mode support
     Add a .set_mode() hook and an optional per-config EP-mode table
     delta, applied as a second pass over the PLL/TXRXZ/PCS blocks when
     the PHY is put into endpoint mode before power-on.

Nord-specific enablement:
  - dt-bindings: PCI: qcom-ep: Add Nord PCIe Endpoint
  - PCI: qcom-ep: Add Nord PCIe Endpoint controller support
    (HDMA, NO_SNOOP override, MHI RAM parity-check disable, MSI-X, and
     the 4K HDMA channel separation via edma.ch_space_sz)
  - PCI: epf-mhi: Add Nord endpoint support
  - bus: mhi: host: pci_generic: Add support for Qualcomm Nord
    (lets a Linux host enumerate and drive the Nord endpoint over MHI)
  - phy: qcom: qmp-pcie: Add Nord endpoint mode init sequences
  - arm64: dts: qcom: nord: Add PCIe endpoint nodes (disabled by default)

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
Anvita T (2):
      PCI: qcom-ep: Add MSI-X support
      PCI: epf-mhi: Add MSI-X support

Krishna Chaitanya Chundru (9):
      PCI: epf-mhi: Pass the actual number of MSI vectors to pci_epc_set_msi()
      PCI: dwc: Preserve glue-provided eDMA HDMA channel separation
      phy: qcom: qmp-pcie: Add PCIe endpoint mode support
      phy: qcom: qmp-pcie: Add Nord endpoint mode init sequences
      dt-bindings: PCI: qcom-ep: Add Nord PCIe Endpoint
      PCI: qcom-ep: Add Nord PCIe Endpoint controller support
      PCI: epf-mhi: Add Nord endpoint support
      bus: mhi: host: pci_generic: Add support for Qualcomm Nord
      arm64: dts: qcom: nord: Add PCIe endpoint nodes

 .../devicetree/bindings/pci/qcom,pcie-ep.yaml      |  38 ++-
 arch/arm64/boot/dts/qcom/nord-embedded.dtsi        | 369 +++++++++++++++++++++
 drivers/bus/mhi/host/pci_generic.c                 |  13 +
 drivers/pci/controller/dwc/pcie-designware.c       |   5 +-
 drivers/pci/controller/dwc/pcie-qcom-ep.c          |  33 ++
 drivers/pci/endpoint/functions/pci-epf-mhi.c       |  74 ++++-
 drivers/phy/qualcomm/phy-qcom-qmp-pcie-multiphy.c  | 123 +++++++
 .../qualcomm/phy-qcom-qmp-qserdes-com-pcie-v6_40.h |   7 +
 8 files changed, 654 insertions(+), 8 deletions(-)
---
base-commit: f3ad6a695e245798f9a5bb34f2c7616880bac3d6
change-id: 20261027-nord_ep-f6e8d7b9c107

Best regards,
--  
Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
