Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61439C61DA4
	for <linux-phy@archiver.kernel.org>; Fri,  3 Feb 2023 08:18:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hKgww26bBEyJYp5AefmndM5lpw7XDQL5nrVkeeJOQaU=; b=EF7cglhnPuNHuE
	eV8E1KNXIGQFL33w/5EknobBE+nZ4v8LlA3BQg/t1eEHPaJ9SX936RML3Ej+r2OSjM03MWl8l/oN4
	M9FBAOLJyiDat63gFu5Mt2X9++x6NfuWFQJrtDg0qobn9eATqP5VVBJekiwNS83lmQfCXaZ0l7Cv7
	WV6Faq8fW0dSgwZgsvQch9xVHEvRSHDnfWpWfaPsnqi5C1SgWEcJK4f4Ffw24Ltf3YRnX88Inf4aR
	Xc9cVftDzGCEjGGFld5ptWAU7B7T8O9lnoXIOMlfvfKDHq0IkQR6UgyPsi5ZdX+Lb7MqamvMCr9/Y
	JKo7zcH+GyxcBhf7S6Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNrGy-000yuN-Pb; Fri, 03 Feb 2023 08:18:16 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNrGw-000ytC-15
	for linux-phy@lists.infradead.org; Fri, 03 Feb 2023 08:18:15 +0000
Received: by mail-wm1-x331.google.com with SMTP id n13so3233583wmr.4
        for <linux-phy@lists.infradead.org>; Fri, 03 Feb 2023 00:18:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1+zmIdSXgf/9OAjOo/5v7/iiHWMzGsZdzsgctlof5pU=;
        b=OfDw1obaGJS0zV4tv43EPhYhjBcKctQL2mn9EaK4R7a1H4+h0jCcuDtxNoNH6fBpvi
         q8XKJeGaYAlJMa4iahtRv4L3ynUKT6ESptD/Ly0UvYIrWRJS5BKUrcLghNWYg5DBO/cr
         h2xKHfjM83QxcD2ZkNAhGKcB9gTUeDMKCes+09syLKewUwf1Ebe2n3PCFwt0V+9H0so/
         w8p/oygNciJ28xxL/AnYQyljl/xl05pSn4aRUmkOFsGuuN4J7tNmbSBTrs/u2/B5/fNL
         SvSlTgvzawDggS5974B+bF4XRh/nYHTme0nXvDeoeoxcpKCEg5BMvhT5Z8i5RwF5+Zkl
         wF6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1+zmIdSXgf/9OAjOo/5v7/iiHWMzGsZdzsgctlof5pU=;
        b=0yR/bi4ON/4tVQ6rIGI6uI5X2wA/AwgjZS4rJ0vXyMcJhfsP0GsR8zy8dVUkp9aOXP
         ysf+fUtKkpxmEePS5Kax29js2daM59TYAjo3ysxhrZAn72WU1iWJ/2H77Gdswuf5OJyZ
         hoUyrM3wStAJ+sZYaB3vbra2rDR+sz8JOKJB+HtfPeMORvzZB11ojc/QZ0hnQXvRCjCi
         ai4wbIPfJWU6GYLxB9+UeiFBMWwUs1y0U66mb+sbwjz0+OiQ01fdasrlRT2b5kxMJ9HX
         5o6EB1i1SD2t9q2CGssy7Q3XaXlAxuBH5SJKnczY7ipV06P4ye7lRHyx3AE820ojG1P1
         KXzw==
X-Gm-Message-State: AO0yUKVWre445L9OxvVZQyQA+qUjZzT3w/iRTZ2h80kDelMYT41NaU6s
	eOpubQInVm43G5UKZVW8+O2Cdg==
X-Google-Smtp-Source: AK7set8phMyLrpuyriFL8L+YTOudLj9YO9Aqc8c0mHqau8cijP5DErbOT4qAQYD+Jh0bxjQfu0Hp1Q==
X-Received: by 2002:a05:600c:3486:b0:3df:9858:c03d with SMTP id a6-20020a05600c348600b003df9858c03dmr3829290wmq.18.1675412292557;
        Fri, 03 Feb 2023 00:18:12 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id az24-20020a05600c601800b003dc4baaedd3sm7316591wmb.37.2023.02.03.00.18.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Feb 2023 00:18:12 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH v7 00/12] sm8550: Add PCIe HC and PHY support
Date: Fri,  3 Feb 2023 10:17:55 +0200
Message-Id: <20230203081807.2248625-1-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230203_001814_087348_3950D430 
X-CRM114-Status: UNSURE (   8.42  )
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

For changelogs please look at each patch individually.

Abel Vesa (12):
  dt-bindings: phy: Add QMP PCIe PHY comptible for SM8550
  phy: qcom-qmp: pcs: Add v6 register offsets
  phy: qcom-qmp: pcs: Add v6.20 register offsets
  phy: qcom-qmp: pcs-pcie: Add v6 register offsets
  phy: qcom-qmp: pcs-pcie: Add v6.20 register offsets
  phy: qcom-qmp: qserdes-txrx: Add v6.20 register offsets
  phy: qcom-qmp: qserdes-lane-shared: Add v6 register offsets
  phy: qcom-qmp-pcie: Add support for SM8550 g3x2 and g4x2 PCIEs
  dt-bindings: PCI: qcom: Add SM8550 compatible
  PCI: qcom: Add SM8550 PCIe support
  arm64: dts: qcom: sm8550: Add PCIe PHYs and controllers nodes
  arm64: dts: qcom: sm8550-mtp: Add PCIe PHYs and controllers nodes

 .../devicetree/bindings/pci/qcom,pcie.yaml    |  44 +++
 .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       |  30 +-
 arch/arm64/boot/dts/qcom/sm8550-mtp.dts       |  38 ++
 arch/arm64/boot/dts/qcom/sm8550.dtsi          | 197 +++++++++-
 drivers/pci/controller/dwc/pcie-qcom.c        |  25 +-
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 369 +++++++++++++++++-
 .../phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h   |  15 +
 .../qualcomm/phy-qcom-qmp-pcs-pcie-v6_20.h    |  23 ++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h    |  16 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_20.h |  18 +
 .../phy-qcom-qmp-qserdes-ln-shrd-v6.h         |  32 ++
 .../phy-qcom-qmp-qserdes-txrx-v6_20.h         |  45 +++
 drivers/phy/qualcomm/phy-qcom-qmp.h           |   6 +
 13 files changed, 841 insertions(+), 17 deletions(-)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6_20.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_20.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-ln-shrd-v6.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_20.h

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
