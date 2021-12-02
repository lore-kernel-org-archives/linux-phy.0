Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34D08C433FE
	for <linux-phy@archiver.kernel.org>; Thu,  2 Dec 2021 14:18:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vU0VDiHg23WsXEMZ406vX9gtM8yFJnHU9xqdh6GjESE=; b=E8+2Iq84gO99Gd
	nRqgUNbOTp0yFwk0IH8fNEFySVCQgG/n+yLJk9rnqgD/IRblCqpyTKltEz+mp1AsVU1nzW2lMPTXV
	5dnFgRUWTl9SsrLe+phuc/q+apKwQ+ZrtIZbDatPLHLSKaEe5+z8hayXKZyhwZ2tfi2CDCki7vMnN
	dEvNiwrJd4WEYM9y6qJJmgFb7ko5gv9KUodCc+vbXhkAujvVIwpRtLyCxysFZGKVViNAad3H3okrX
	HgsW7YHo6+60A5EWkzDeRc11MjpI1SqqhZbazEeLwKl/MOXSl2O56qptBbVdip70VJZMuqZ8fFOq1
	U50N55oNLtvJXuJxO6tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msmuT-00CWvL-IK; Thu, 02 Dec 2021 14:18:05 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msmty-00CWdW-0M
 for linux-phy@lists.infradead.org; Thu, 02 Dec 2021 14:17:35 +0000
Received: by mail-lj1-x22a.google.com with SMTP id l7so22357lja.2
 for <linux-phy@lists.infradead.org>; Thu, 02 Dec 2021 06:17:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ToWnpfe61IfHA5YsWaVruIWs7PR7FCG4QDVMRFV5+CU=;
 b=nnYQtkhZySQHRL4T+FQKZ4NzmaMhSowa7e6+EGktIsJASm5I4lWiCnyRmfuTT6Aqu8
 u4zDxiz25IHQNEYgJkpV9j6MRBJhqdbOcZxRyxmete/m73Dgatol+7rNdHjqyn3NeK+B
 mXHfaz/TQJtL5TgnlhQmqn2Qw1JT3ZSDBdZOsQ3Tnnlh+bGiFHgfghX2CliezhdbUwLW
 HtaeGvjQJDGSr/X8XutiD81dG0cLUkqmLrSLnFc4lHalfY3xtHrzXz3CPon+pSAE3BEq
 Wd1mEGsU0cxwiw2v9ZwgHiCL6IbMUXhWwulYMLS2uIRrnpADeQNTMbUfTlUydersDNJR
 /RKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ToWnpfe61IfHA5YsWaVruIWs7PR7FCG4QDVMRFV5+CU=;
 b=vpGppGciGD75PV09qcHq1R0hWXw/Bn4NhXA2YgdrBfzGKUgMVYpa1i0PGLhZGUSz81
 mrlhX7q8Jpe81ox1X96c9fYCYyBbrYPhcbnKmyQf8ih8accjuv0APjUjM0ruQZopchbe
 z4ibonr8yEMUhy5dPYaU39qMaL84EIvMNBhIOnBJ6hNnLNfEc5953OO0CN2vlTd1TfQt
 rGcsesOI0r8hkhNiSBbb5uqtv2mwtuzdkqRMEsWlcxvk6LooZaCBFFfWjdA4fptSWMD9
 EzUghPYFyAb+K+tl2RCWZLwQGBG8k6iNG0uAcLU3bGZC4JD8ujFLLqraa+UPQRjUoses
 tZAw==
X-Gm-Message-State: AOAM5321AOojo6MmcFD65GrxwAK9Qx7D+qlzgm67uJ8qQpE4Gv5iX2ja
 +SERdO42Vs2e0MgnDXhYATOdhQ==
X-Google-Smtp-Source: ABdhPJxy4zvG2aNJz1OXzlcJN1fIbwVtfb4nGd30eSQHXVFnpukbgqtGwDb+qnS2pQmTGh0Zet+5rg==
X-Received: by 2002:a2e:a314:: with SMTP id l20mr12664682lje.86.1638454651352; 
 Thu, 02 Dec 2021 06:17:31 -0800 (PST)
Received: from eriador.lan ([37.153.55.125])
 by smtp.gmail.com with ESMTPSA id m15sm362487lfg.165.2021.12.02.06.17.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Dec 2021 06:17:30 -0800 (PST)
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
Subject: [PATCH v1 00/10] qcom: add support for PCIe0 on SM8450 platform
Date: Thu,  2 Dec 2021 17:17:16 +0300
Message-Id: <20211202141726.1796793-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211202_061734_132543_E2ECDD90 
X-CRM114-Status: UNSURE (   7.52  )
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

----------------------------------------------------------------
Dmitry Baryshkov (10):
      dt-bindings: pci: qcom: Document PCIe bindings for SM8450
      dt-bindings: phy: qcom,qmp: Add SM8450 PCIe PHY bindings
      phy: qcom-qmp: Add SM8450 PCIe0 PHY support
      PCI: qcom: do not duplicate qcom_pcie_cfg fields in qcom_pcie struct
      PCI: qcom: add flag to enable use of ddrss_sf_tbu clock
      PCI: qcom: add support for SM8450 PCIe controllers
      arm64: dts: qcom: sm8450: add PCIe0 PHY node
      arm64: dts: qcom: sm8450: add PCIe0 root device
      arm64: dts: qcom: sm8450-qrd: enable PCIe0 PHY device
      arm64: dts: qcom: sm8450-qrd: enable PCIe0 host

 .../devicetree/bindings/pci/qcom,pcie.txt          |  21 ++-
 .../devicetree/bindings/phy/qcom,qmp-phy.yaml      |   2 +
 arch/arm64/boot/dts/qcom/sm8450-qrd.dts            |  14 ++
 arch/arm64/boot/dts/qcom/sm8450.dtsi               | 143 ++++++++++++++++++++-
 drivers/pci/controller/dwc/pcie-qcom.c             |  93 +++++++++-----
 drivers/phy/qualcomm/phy-qcom-qmp.c                | 125 ++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h                |  33 +++++
 7 files changed, 397 insertions(+), 34 deletions(-)


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
