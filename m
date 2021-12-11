Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9937AC4167B
	for <linux-phy@archiver.kernel.org>; Sat, 11 Dec 2021 02:18:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=m237IIbMQbxJ3tm7IUzuTtys3c7/gVSwRNU0LeZ74C0=; b=DN/HY68cDP3PkP
	m1/k69H9W4mK55HpAWinMFnHMGL1qtD1UOWGr88dIGXqNu1Va/WLREvlMdONH87NjCYhQ2IkhuO2w
	GpUcPJ7DLOYaZwErax8p3CFoGm0+Egh5qy1DQhAYnxw2XjOSuYWt76tE+8GZLBz3p3GV6NbVw3RU0
	V6Qf1LKDpcNRTfpB27wCL4DLQkwUmBe/yrssSuxbkMrLWj3FBmN4Nqa24uiQ/rMwPBdd4Od3uYS68
	bVgraWXnsQJTJjF4uTM86fLQQJeaYSvYaOfGlZpGFaBS40oHojx7Z6AGUY4i/jtq0VF1ojWAvUqxt
	62D1c39FJ68Xs3LE0yYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mvrxf-004R61-UK; Sat, 11 Dec 2021 02:18:07 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mvrxc-004R45-BK
 for linux-phy@lists.infradead.org; Sat, 11 Dec 2021 02:18:05 +0000
Received: by mail-lf1-x132.google.com with SMTP id l22so21168018lfg.7
 for <linux-phy@lists.infradead.org>; Fri, 10 Dec 2021 18:18:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Ih8VEbLk5HADGlpnEJHtvirNVFfEWHbWt9yeGC0U/m4=;
 b=tfE7zCFn9P4fBH4D36xBAcVI7cw8uw+ugmzQANbHlVW3woHUXcmE5o5Aei6B28D1o/
 xBFEP0ookfGDun5ChIOuuQnyPEKbmtt/U5DpNDrV1Mm8eQRkvRExDZtDChv3nEiN9Qxo
 oQuThv3sqdK/TNt8DN9g0pvuZmScfnYsIWQU3UdupCfz1LYhNJknmP6wkd7UHAyflvth
 QQRqPyXOB3LEc9izelCJv2a9Yv066GjhBbQ7Z1SNKCMOW00O2fdsCLDFeGDNSjrz+FGz
 XK2j0iqQmP23WpZR9fsGJUcf6DM6fQu+gxXHkIxYyp4TxKhLBbY41U/sAxORwdORhPcE
 mb+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Ih8VEbLk5HADGlpnEJHtvirNVFfEWHbWt9yeGC0U/m4=;
 b=gM2H/SEUmr0HjhQD1o+6IJCLmiotdyUWtKhsU0pXXKkGSVfWTDXRpocTgo/GmjzTh4
 wMVTPYGDVMxtPccpDZ9jgRbAQ+cv7Oz+40KEhEg7exfl4i8qhfn361TMaKICm32Ln5e/
 Ctm3RXbxPy9Hfd13c1acjHzxZpwASgBU2udpJsDCNT4OjD9Iy0P750gKnB1gXwPylCeO
 Z/fwbPz/+Qv9DeKAgiqUU2PGKTYinoj9dyR7FX8LfJwVwVn5kZhQi6zU7fstabtgg28+
 MsknOhh+T/Qn1pABTOqq7RiMJ2LV/HoVBdlDHerXdJQL4ncIqNdftWODOnxz0YJHl1j4
 1TyQ==
X-Gm-Message-State: AOAM531mkYJL5djMeRU2HBipdosarJnmPOvWXDNr7gGUVZBBQQ1FZ4s8
 9HYR0oOj6iYqIeaz+B31VLA+Rw==
X-Google-Smtp-Source: ABdhPJzSANxpPqCT3Gq8MtF6TYbQpdPwmnk8n4mvREaQ01TeH7E5Oy9b1zhluBVdXST1n7jlMyPj6g==
X-Received: by 2002:a05:6512:220f:: with SMTP id
 h15mr16387154lfu.454.1639189082414; 
 Fri, 10 Dec 2021 18:18:02 -0800 (PST)
Received: from eriador.lan ([37.153.55.125])
 by smtp.gmail.com with ESMTPSA id y7sm504663lfj.90.2021.12.10.18.18.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Dec 2021 18:18:02 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Stanimir Varbanov <svarbanov@mm-sol.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org
Subject: [PATCH v3 00/10] qcom: add support for PCIe0 on SM8450 platform
Date: Sat, 11 Dec 2021 05:17:48 +0300
Message-Id: <20211211021758.1712299-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211210_181804_416281_8845DA54 
X-CRM114-Status: UNSURE (   8.12  )
X-CRM114-Notice: Please train this message.
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

There are two different PCIe controllers and PHYs on SM8450, one having
one lane and another with two lanes. This set of patches adds support
for the first PCIe phy and controller only, support for the second PCIe
part will come later.

Changes since v2:
 - Remove unnecessary comment in struct qcom_pcie_cfg

Changes since v1:
 - Fix capitalization/wording of PCI patch subjects
 - Add missing gen3x1 specification to PHY table names

----------------------------------------------------------------
Dmitry Baryshkov (10):
      dt-bindings: pci: qcom: Document PCIe bindings for SM8450
      dt-bindings: phy: qcom,qmp: Add SM8450 PCIe PHY bindings
      phy: qcom-qmp: Add SM8450 PCIe0 PHY support
      PCI: qcom: Remove redundancy between qcom_pcie and qcom_pcie_cfg
      PCI: qcom: Add ddrss_sf_tbu flag
      PCI: qcom: Add SM8450 PCIe support
      arm64: dts: qcom: sm8450: add PCIe0 PHY node
      arm64: dts: qcom: sm8450: add PCIe0 RC device
      arm64: dts: qcom: sm8450-qrd: enable PCIe0 PHY device
      arm64: dts: qcom: sm8450-qrd: enable PCIe0 host

 .../devicetree/bindings/pci/qcom,pcie.txt          |  21 ++-
 .../devicetree/bindings/phy/qcom,qmp-phy.yaml      |   2 +
 arch/arm64/boot/dts/qcom/sm8450-qrd.dts            |  14 ++
 arch/arm64/boot/dts/qcom/sm8450.dtsi               | 143 ++++++++++++++++++++-
 drivers/pci/controller/dwc/pcie-qcom.c             |  88 ++++++++-----
 drivers/phy/qualcomm/phy-qcom-qmp.c                | 125 ++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h                |  33 +++++
 7 files changed, 388 insertions(+), 38 deletions(-)



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
