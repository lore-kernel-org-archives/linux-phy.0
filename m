Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FE2CC433F5
	for <linux-phy@archiver.kernel.org>; Sat, 18 Dec 2021 14:10:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3kTgycn+TFiTg7PplvyQS8mj5Y6wI3RltMkDgncc2+k=; b=j2Wn9Ysx55RCdK
	fWalRdpoHJe6i2Zam71ZuRMrU4VT0CmVElRSAtmXNY7kNecQYG5EXbVYtI4I2xgIcQjtmeoKa9fpr
	zzvF/lzBIPxPklpclp8iikAgJX1x7sbsXCyDGZqAgqeyrttx1rOSNCaPW2PPaoc/1nqxmTlQLMVk8
	NOxiGBqad/tOI8WFN/n5hL4/U5F9eBAFdMt1vT7lzD561KFi9OYMPQJ+XfDtaV/uAFs1RLBYec+dx
	BS+vTIAVUTvjR8IyZsxG1nuYDDe3lDfEELNHr5Ho6EPBMw/x4OlTOf6tDWXhnCOr4qp4LDinec249
	vUfntHS4gU2tg0FTs9WA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1myaPy-00DxYS-PG; Sat, 18 Dec 2021 14:10:34 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1myaPw-00DxWZ-3v
 for linux-phy@lists.infradead.org; Sat, 18 Dec 2021 14:10:33 +0000
Received: by mail-lj1-x235.google.com with SMTP id 207so7865772ljf.10
 for <linux-phy@lists.infradead.org>; Sat, 18 Dec 2021 06:10:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lFt6X0KER9eQ+C0OYY/wY0eK0N3IsPMop2A/RWQEB+8=;
 b=Sv78hEqnXqXaU8ZsZL+1SFCTGZio744Bua3QkrdgMwABcuhMRNQCQxnq6V0H8yLzRp
 5B8s9Bg9pgSENp2SVlkwmR3dJJ5UqmCa8VuXdkROUho77JvyIz6qXMdYXrjIwnvD9hUZ
 NoqUDmdcjf315URgqhjhttQX7CtaSZsNn1LdQeS5ceZGIPARlPqIBu2tgMdvbnYr1C78
 OxRm0+p4tN+jFDxYauWeNHdWDuTm+9R8RtAXs+U3czmoq+IaFgOmwSkA19Plt9dGVJpY
 rvi3HlXMH9o315iWLFMvnPFvQt43yaHctk/N29/w5Gj/noEQ3P3FRScTEIlLu7UBp0GA
 nZuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lFt6X0KER9eQ+C0OYY/wY0eK0N3IsPMop2A/RWQEB+8=;
 b=amBtKmiUyJo/4MChpiStgBtnIOTPL5CgVa8rFJfXti0yShsaTuIOPWofWfjMZ4P2kW
 7PRBtnLvsMNAEKqHPs58jJMJzanvEPM1x8spkFIsPX3f2VJLgpOigCT3uix6OUpS+KGR
 SwqLWXagyKmihDw+X3KbNTN09MIOxA0QzIRfiV7Tuic6uYpsAT46SToEiEVuvso3bBAf
 vMzNE0+xPllJFIVOqTeRxbUVw9AztkaevbTB2oupN4HzH002aHt4Ki2vBubcsf2iaFqv
 Y01w240DRRVIpKIbWgxq0FQCIr8PO9OMJjeYrtLfEjNMlddRofy9FmJosB4ajjNs6OJ7
 kIlA==
X-Gm-Message-State: AOAM5305UnQ6EqqrZPeLUxdPemVCuqFwgy+u6lM1bmd8Q0Ufb9JrWTj0
 FqAazlN+s3Hwq2koWjT2vzNtxg==
X-Google-Smtp-Source: ABdhPJxQx+BiEdXyNqa+ssNg1vIeTyUlhVk9vDvWUSuNBVNNrFZigv7asswBCg3rY4KUd29fi861xA==
X-Received: by 2002:a2e:a305:: with SMTP id l5mr7140349lje.73.1639836628838;
 Sat, 18 Dec 2021 06:10:28 -0800 (PST)
Received: from eriador.lan ([2001:470:dd84:abc0::8a5])
 by smtp.gmail.com with ESMTPSA id c2sm145789lfh.189.2021.12.18.06.10.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Dec 2021 06:10:28 -0800 (PST)
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
Subject: [PATCH v5 0/5] qcom: add support for PCIe on SM8450 platform
Date: Sat, 18 Dec 2021 17:10:19 +0300
Message-Id: <20211218141024.500952-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211218_061032_218971_D7806F38 
X-CRM114-Status: UNSURE (   7.18  )
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
one lane and another with two lanes. Add support for both PCIe
controllers

Dependencies:
 - https://lore.kernel.org/linux-arm-msm/20211218140223.500390-1-dmitry.baryshkov@linaro.org/

Changes since v4:
 - Add PCIe1 support
 - Change binding accordingly, to use qcom,pcie-sm8450-pcie0 and
   qcom,pcie-sm8450-pcie1 compatibility strings
 - Rebase on top of (pending) pipe_clock cleanup/rework patchset

Changes since v3:
 - Fix pcie gpios to follow defined schema as noted by Rob
 - Fix commit message according to Bjorn's suggestions

Changes since v2:
 - Remove unnecessary comment in struct qcom_pcie_cfg

Changes since v1:
 - Fix capitalization/wording of PCI patch subjects
 - Add missing gen3x1 specification to PHY table names

----------------------------------------------------------------
Dmitry Baryshkov (5):
      dt-bindings: pci: qcom: Document PCIe bindings for SM8450
      PCI: qcom: Remove redundancy between qcom_pcie and qcom_pcie_cfg
      PCI: qcom: Add ddrss_sf_tbu flag
      PCI: qcom: Add interconnect support to 2.7.0/1.9.0 ops
      PCI: qcom: Add SM8450 PCIe support

 .../devicetree/bindings/pci/qcom,pcie.txt          |  22 ++++-
 drivers/pci/controller/dwc/pcie-qcom.c             | 101 ++++++++++++++-------
 2 files changed, 91 insertions(+), 32 deletions(-)



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
