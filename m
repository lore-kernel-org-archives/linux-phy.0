Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 659CAC433F5
	for <linux-phy@archiver.kernel.org>; Tue, 14 Dec 2021 22:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=s01oYlpYIP9ozkkGN9oKRCtFSM4zL441NrmEsaYm22c=; b=JIAF3ZEkevhAwG
	TuCEIWE61aXXBJX2FYvXAUo7mdw2SGFam/7V9Dq3MMSoYKiIduunMxy8QwjBunibu2/Msp1ga98ZN
	wbbqt5Aq/HZ3/izbWYcrppLTvtDOgzvBaXjc5TfnvhLLy7o9I4hn+Q/j+TshlvNXkDCSdxgPwWEqV
	mdIn5ZRIduKJDJZatlsuc+0Xhp2A5nVfB19x5Z+G8amfzdnTdmU86ao+S1c0s2mXJptJDtpiImJ2+
	hh/dh45Vu8/V33lxhCSa9wuGwJ84OeWe+X4GUTQVMiYslmFPAxwFKAZsSww6L/MqkPVzD8Aim0Gxl
	MuIjYV/5lwBspGlU1TQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxGl8-00G0Ot-Qk; Tue, 14 Dec 2021 22:58:58 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxGl5-00G0NM-Do
 for linux-phy@lists.infradead.org; Tue, 14 Dec 2021 22:58:56 +0000
Received: by mail-lf1-x132.google.com with SMTP id c32so39751351lfv.4
 for <linux-phy@lists.infradead.org>; Tue, 14 Dec 2021 14:58:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/ElhjSQRkBAVirJx6rQQ9wOPmR/xdLQ5Y4DtXvBrY/A=;
 b=IP/SqCET/cIDz5W/tkTOoRj//JrcmN0RGsWN5l+Ru0RjNNGNm6ClYB9vI2+EGEZHzo
 Yld3FVUuv6trAPU46mrts0q3WibtZansba+FfL44V2ESZjScqHEFz7M8rQN2txxULIOc
 9u6JUrF6UZt7vrrJXn9Ndrfw4IY2PtfXwMyBQnivXoAN7/I5YjV8a4mZIaWXkEPCllrb
 EquvQ/ZhfcBIdAdKjJ5BeYcwVoY+9CBxcjwMD5wGP4E5gdQ8PQYXDAX7tDi38kEX9xGs
 nfRwb9N7gZcz0x785KK9DYFOPc+XEGfAtttIccE6n7IL/m0CUg91CtQPucJuvzonhkL+
 +7Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/ElhjSQRkBAVirJx6rQQ9wOPmR/xdLQ5Y4DtXvBrY/A=;
 b=ta1Q94jyb9uM2Q1xLTOX8TwjtByRHUQTcyI0r/pseAk5retPO1YqlNpZShynht7fWl
 6aoHAajxcfTpn8i2et8sZ99bOdjgSt3kxOK7mjT12NRTsox/rO9mSQdt+ot8iz1Dm3nc
 iTSGDG5G62GQ6xoJXA4wkl6KBcYUAD6bfp1GuUgOA7NLe6/WNqtAjEniEZ51QQHDHXTI
 k3P/uNTEc8W/vbrwhh5AvgPTZopIIxsnYtgDW9o3uWcM6YHnQINhMXqsZ2ryOS/uAmax
 vvuX56vBk93UbRae5Ad+78h9lDWxiUcqWjwpbPGKlwaJvhn8EgRPTA8J80VF1Zm75M16
 kQAw==
X-Gm-Message-State: AOAM530VEPjCVM+Kk6MOG8txETVjegaAhFfZ0anDbZy3Vvy7ha7v2Nld
 710RvPw2aLj75DCrx/pp4L9B+A==
X-Google-Smtp-Source: ABdhPJx0SgvSJtbcVOQeXt6YA544j26Avfy58G+7BFNLy9a2hL9JByO623Fq0Qfn+4yZMNVbtkM17Q==
X-Received: by 2002:a05:6512:11e5:: with SMTP id
 p5mr7001672lfs.537.1639522732735; 
 Tue, 14 Dec 2021 14:58:52 -0800 (PST)
Received: from eriador.lan ([2001:470:dd84:abc0::8a5])
 by smtp.gmail.com with ESMTPSA id t10sm45115lja.105.2021.12.14.14.58.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Dec 2021 14:58:52 -0800 (PST)
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
Subject: [PATCH v4 00/10] qcom: add support for PCIe0 on SM8450 platform
Date: Wed, 15 Dec 2021 01:58:36 +0300
Message-Id: <20211214225846.2043361-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211214_145855_489485_CAF6CA06 
X-CRM114-Status: UNSURE (   8.61  )
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

Changes since v3:
 - Fix pcie gpios to follow defined schema as noted by Rob
 - Fix commit message according to Bjorn's suggestions

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
