Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A14AC64EC7
	for <linux-phy@archiver.kernel.org>; Wed,  8 Feb 2023 18:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MFS4RLL6QhFbc4sDIwQy5c4Icrv5zmd7kulOCWcy9lw=; b=YxFBAijmVInoq7
	i6H5FuEMzXgQjWSW4ClOFRqW9pcXLm3Up5BiuCyBjmw3eINnU2i16oNobkRqcI4puPKVzp+s7kbft
	+e4eJ8RbuueF/kp0GbQgEfXScEaKJdAjuisUf5XpJCevYZpY4XOR2n0u12ug3Kbv/OW7goD8gfvKl
	keB/gLmwNefWtHYbyi+R5K5NWX2/72uLy9aBsCPLJxBvzY8KzSw4trpIosQGEXvlq/GStHZRwqmwj
	OFicvUtQTiHSIaj7sKqzdKQ+Z89Yjh/8jrDV5EJHfd1j9673jy1oWXVdEPWsfkWuqCvgTxxBRWepu
	Gl1gvpb30NGN7SNrK5XA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPokX-00GXQj-Go; Wed, 08 Feb 2023 18:00:53 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPokU-00GXOi-DX
	for linux-phy@lists.infradead.org; Wed, 08 Feb 2023 18:00:51 +0000
Received: by mail-wm1-x332.google.com with SMTP id u10so10858486wmj.3
        for <linux-phy@lists.infradead.org>; Wed, 08 Feb 2023 10:00:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JM97LRzJuNIDSLoCISaLbKYkgeCT4D6L+oW9RVZ90Yk=;
        b=AhK6w+HaNN9UcUU9RClSrVf/MNf3cBzGVk1j/L/hIllRp/hGqKN2c785P5ZvV2M4HF
         glhT2PFlq/5knVylSOKQZH02xFnxnxj1nGCMgEKP0ld90BWvS/qhKK1V7TsVXGrrpkW4
         LRYIBOdPOeDA7TnL5z2imhnxyQHUiVpP+bb92NHbEbrxZUK1E9KW1lcdLsf6bsNZoyHX
         5Te/MV+LWIpLnGro18mO90JkeZJ6JQxE1KDQnU2iHbjWnAqy1MxSvCBXnkDvaGCIFVB9
         EogvRjNOUJWsobUduJ7b6CUAYll0c6EDP0HyZbLva0R1Sb/bcUbrVdcuoc+iHuOWtz65
         tNBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JM97LRzJuNIDSLoCISaLbKYkgeCT4D6L+oW9RVZ90Yk=;
        b=nuuwtNxu7tZJhQ1uYTe5z/d101M8KJKl0N8M7sxE6kFwWs97jLCrH+wljjXikgxQbQ
         HCX5sxzvAnWbHPXGgkRplqn5MRgJKc2RdJAEcRjgBTd4rzOiws7Ag1jCIRixawY+OkZR
         HxbjNoJas/yA6/HOUaAfDaif075ddrm8Z1Gv+JmdVT///YN40pt5ME+dDjzUWm1DY04e
         MZ+b66vjUppUixfADPaIfvx95trCwrr7Y0THB5JWaKRNqu3xoh4D32s0cnutbwDqWYhR
         wNaUIrdheCDjER1pzwDx2YSOyw/MWi85sEvRegv5K9xQuSrkWE5ntjipaEL/apy+rgdu
         fnOA==
X-Gm-Message-State: AO0yUKVxGinaeh4omE6B9MkKUKN7RUtfGuVUjv9WI74HLv5HxqHzDKE6
	fsxaiwZgGZ/nqBZyBiBwOgNszg==
X-Google-Smtp-Source: AK7set8Y152Z3sTAFY7YTLliHoMt3ktxih4kVHF3bHkaEDdbrPJEuvTVoUiiwlapKRteWSDw4GPGCA==
X-Received: by 2002:a05:600c:713:b0:3df:e4b4:de69 with SMTP id i19-20020a05600c071300b003dfe4b4de69mr7318950wmn.27.1675879246674;
        Wed, 08 Feb 2023 10:00:46 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id k20-20020a05600c169400b003dc54eef495sm2370286wmn.24.2023.02.08.10.00.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Feb 2023 10:00:45 -0800 (PST)
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
Subject: [PATCH v9 00/11] sm8550: Add PCIe HC and PHY support
Date: Wed,  8 Feb 2023 20:00:09 +0200
Message-Id: <20230208180020.2761766-1-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230208_100050_482707_49503E4B 
X-CRM114-Status: UNSURE (   9.23  )
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

Abel Vesa (11):
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
  arm64: dts: qcom: sm8550: Fix PCIe PHYs and controllers nodes

 .../devicetree/bindings/pci/qcom,pcie.yaml    |  40 ++
 .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       |  30 +-
 arch/arm64/boot/dts/qcom/sm8550-mtp.dts       |  10 +
 arch/arm64/boot/dts/qcom/sm8550.dtsi          |  52 +--
 drivers/pci/controller/dwc/pcie-qcom.c        |  25 +-
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 346 +++++++++++++++++-
 .../phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h   |  15 +
 .../qualcomm/phy-qcom-qmp-pcs-pcie-v6_20.h    |  23 ++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h    |  16 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_20.h |  18 +
 .../phy-qcom-qmp-qserdes-ln-shrd-v6.h         |  32 ++
 .../phy-qcom-qmp-qserdes-txrx-v6_20.h         |  45 +++
 drivers/phy/qualcomm/phy-qcom-qmp.h           |   6 +
 13 files changed, 611 insertions(+), 47 deletions(-)
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
