Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A14DAC54E94
	for <linux-phy@archiver.kernel.org>; Thu, 26 Jan 2023 12:47:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=C6wMsAcj0nACUG5xwbFgn1vNZiYE6QXdK4/HEaUb1C0=; b=3f3FuG9rvfytvr
	zT4Zndq5BB3mOXSZq+54Xu9N+Hl50NYvtVHgfft/HWmBTFYFgDX85uSyIOzLlDvhyxkP37x8EHgO5
	CdqqEjz2Q7TaHnKjwBdRGbfrCC8aXOx1JGKKoBHGDpUHNiGhVb+fwYfNbcAQtFWjyCUh+RMJpisx/
	4mQYO93VS/j2/5pSXwI6kxmn90+WBGJ0MuZM7vWXI5f4XOe3HTwatVbtpyYZvXUmZ6iTwFHrjZPvY
	Hd7RsUxT7jimZod+xYvieOfmNqt52o0X6jhhSdOBskQ9lVMt1if6lGWQU4D27yaOyEEq+1TvKQ/0g
	XAUh8s0WLsjxLCMhcsEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL1ep-00AsCr-WA; Thu, 26 Jan 2023 12:47:12 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL1em-00As5L-0B
	for linux-phy@lists.infradead.org; Thu, 26 Jan 2023 12:47:09 +0000
Received: by mail-wm1-x335.google.com with SMTP id fl11-20020a05600c0b8b00b003daf72fc844so3195456wmb.0
        for <linux-phy@lists.infradead.org>; Thu, 26 Jan 2023 04:46:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=aEwl4rXqwP7HFZuGGS8GvTs9Re4pfspXDU7w3TmmVI0=;
        b=jQY5FDIzJd/D5AfxGaPGYIZIrxbmpQCSjcWGkffpFvIaQgR1klTO6ENQ754svYLOvG
         BgXcfe0ulf+BwgcCGkM5hZNZaQlx44wuZNZFwCtdb5sctz49e3b8MWpTqoKNlJBBYxFf
         xeI4WSgPevD+nwPzpdKkG4b4XbiAcdMg3JjWI/1RH95g6BcACOdoyL5+PNGEIR3FrBqA
         /x3HKYRA0nx62uKk8xJHGODcAZR/swdp2I6CFbRI1RxYZT/6ec/5TI0+JqZwuh78zrGc
         /LXemjExKf5HwgiJBROMkOK34NfNYjn0OMLOYCNiPJyw3rG9GwvPx9ssRj1PpEZ7oIK9
         xtww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aEwl4rXqwP7HFZuGGS8GvTs9Re4pfspXDU7w3TmmVI0=;
        b=e8GY1vqEc1va2GV2RgQbQzMUdtqekevBBWbR3+Bwm2UOfUkNNLGPhQ2CMOc8x9PSWA
         imduq2DfnVWzAlP9GDjkErKVvjD8vb6dCpq9i4M/SZyugr04p5ALufqdcuXonLMOrL2t
         cFfteirblgCOrdFtgLq3+APPyc6o4hdF3gkeZXZ/Q5WgKcsaYlvAPBryS3+8Vvu24m1C
         HsfOBIa+CV1bgyarz141T8SuxS6pa2GtlcWXK3T+buNoO5xt1EPrBbdVXaOa8WhYflvi
         48t5kBdzXyxrzxgfnM/VldjSvkgIDMRtweXKEMvq/F/KSfFXFPXwnfI+hpepNIbws9oS
         a5eQ==
X-Gm-Message-State: AFqh2kq42VndzuhpZPEWxpF2+PiQN8vKar3Obx4k+vNbCRHvzRRcMW17
	Yrs4Jvb7u3BM54JKqXRZnbFQ5Q==
X-Google-Smtp-Source: AMrXdXslJr4J5js/ytBZ7wAvx3rO670yMpHaS8sIaBr7oBWzofte/ymYVVnVFGDtLY2OAxvkzY7S8g==
X-Received: by 2002:a1c:f317:0:b0:3d0:480b:ac53 with SMTP id q23-20020a1cf317000000b003d0480bac53mr35697160wmq.12.1674737217607;
        Thu, 26 Jan 2023 04:46:57 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id v11-20020adff68b000000b002bfb8f829eesm1198681wrp.71.2023.01.26.04.46.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jan 2023 04:46:57 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-phy@lists.infradead.org
Subject: [PATCH v2 0/8] sm8550: Add USB HC and PHYs support
Date: Thu, 26 Jan 2023 14:46:43 +0200
Message-Id: <20230126124651.1362533-1-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_044708_058926_85C7AC9A 
X-CRM114-Status: GOOD (  10.75  )
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

This patchset adds support for USB for Qualcomm SM8550 platform.

This patchset is based on top of the following patchset:
https://lore.kernel.org/all/20230124124714.3087948-1-abel.vesa@linaro.org/

For changelogs please look at each patch individually.

Abel Vesa (8):
  dt-bindings: phy: Add qcom,snps-eusb2-phy schema file
  phy: qcom: Add QCOM SNPS eUSB2 driver
  dt-bindings: phy: qcom,qmp-usb: Document SM8550 compatible
  phy: qcom-qmp: pcs-usb: Add v6 register offsets
  phy: qcom-qmp: Add v6 DP register offsets
  phy: qcom-qmp-combo: Add support for SM8550
  arm64: dts: qcom: sm8550: Add USB PHYs and controller nodes
  arm64: dts: qcom: sm8550-mtp: Add USB PHYs and HC nodes

 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    |   1 +
 .../bindings/phy/qcom,snps-eusb2-phy.yaml     |  78 ++++
 arch/arm64/boot/dts/qcom/sm8550-mtp.dts       |  22 +
 arch/arm64/boot/dts/qcom/sm8550.dtsi          |  92 +++-
 drivers/phy/qualcomm/Kconfig                  |   9 +
 drivers/phy/qualcomm/Makefile                 |   1 +
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 406 ++++++++++++++++-
 .../phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h    |  31 ++
 drivers/phy/qualcomm/phy-qcom-qmp.h           |   4 +
 drivers/phy/qualcomm/phy-qcom-snps-eusb2.c    | 421 ++++++++++++++++++
 10 files changed, 1061 insertions(+), 4 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-snps-eusb2.c

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
