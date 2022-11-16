Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26718C4332F
	for <linux-phy@archiver.kernel.org>; Wed, 16 Nov 2022 12:02:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jNfNP3sY65bb4VyCjpxN9UG942lO7bwo2NfPAQczetE=; b=0KemfDkMpK/adm
	yOLDDzKg/Kd/nN3TcMnpwqEH/xbxnmwkUa/jcdCLLBJgHKEVi9qls1lsBmnLZsALhpJZ1e9MUCmWe
	7NxSii4HVmIiat/8My9MDi25r/6hFIBFFuKaEN0GD5IsxIn02nV5zUgfFjN5TB/lObFsXbd6SxMVG
	tBmxJ9V07gvD3f0kcI+/zLTYIHDO6uS33h0EpM8x4ZC8I3LZbaR5hraw/4yG9gvw0ApdAcAbbpNmJ
	DVKzlRKf9hJReuF4YWY/gFaGJWLcJSPkg0JrJ7eXVtFEx+E232auvXdUcA/EtUEafg9/2CS0FNZeL
	Bnk/tkAh3cvXNUMybxTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovH7G-003Cx3-Fq; Wed, 16 Nov 2022 12:02:06 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovH7E-003Cuz-4P
	for linux-phy@lists.infradead.org; Wed, 16 Nov 2022 12:02:05 +0000
Received: by mail-wr1-x42d.google.com with SMTP id cl5so29542749wrb.9
        for <linux-phy@lists.infradead.org>; Wed, 16 Nov 2022 04:02:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dpRgnbMi8qckAARNiFgw/+KtlyEj1vTV5D3PXlU2xTg=;
        b=vj3zT89Y9w4Wmm6PjLwvVOBkxfmwSg71xksovxuPW14LdTfbw12qfIabfdtDu/+qt7
         C2IfBL6jUaK0shIZ3cf0uxGE+cqEBdowBAsxePJ+8ThqoPH8NFcfPV3ULp4EWnZmM8gp
         B9zCTYy7S3Z7mlFNGzu6LiTvfhs608kKx0bLOK/nFdC2ct9N/qnpIGVNidhHyuopolWW
         Whq3XkSZb8P57pXpoERARY90aPcOBPXZLiiN1VaZtLB+CTro6HdiPDJbFhXUgTKDi4xm
         vp/wrHyTJmWfp1pOXCeri51IyaCGZJNP8gsnTEKpZFS3fPSROCHDDcbSGEkTrt8aqIgD
         jgIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dpRgnbMi8qckAARNiFgw/+KtlyEj1vTV5D3PXlU2xTg=;
        b=Mg7kBtuIOX3mb8dVPg9qCNptiPKjWwOD8wuOJBXzuFvK5M0EkE4UnJMlEzxQUr1LNI
         0tbmDbJdHnoNnVtZ3ustS+GWk0fE7KToe3GS1RbUhYUzhZLhSrytlBBlvMKwu7xlI5P/
         IyMMfKTB4x6Wa195XTinXCb+TBEX/HSTvO/UFZ2ji8q331AXHxImFTH/h4VtmejptGg4
         sm+0UZ1C1hXPRXc8ttOi6I3aAuro7YM3bYuj3ZS3ErGjLR6w0CbRpu2i7J/ObXds6UlW
         Aulsvmxzaxt4RzqquOOH9i1BOJDL/K+bQULjDFpaEaHL8dzd7RR3IitRGW3XIxOgYwCb
         eVzA==
X-Gm-Message-State: ANoB5pnCPNL8buj04FVsr/xEwhtyeEuRGq+pqqMDXbC6pO+5DeZUL/9K
	Q7yuuhCdlMlbgdm0imXOSX58EA==
X-Google-Smtp-Source: AA0mqf6ixmpppWedB5Oh+piLn1Omme6b6zbkSxNf6UmceeGl0ZaoCF8e8wNiQu1SaTCKMsF8koLSlw==
X-Received: by 2002:a05:6000:181c:b0:236:60ce:7c10 with SMTP id m28-20020a056000181c00b0023660ce7c10mr13546096wrh.440.1668600120343;
        Wed, 16 Nov 2022 04:02:00 -0800 (PST)
Received: from localhost.localdomain ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id r8-20020a056000014800b002206203ed3dsm15120109wrx.29.2022.11.16.04.01.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Nov 2022 04:01:59 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH 00/10] phy: qualcomm: Add support for SM8550
Date: Wed, 16 Nov 2022 14:01:47 +0200
Message-Id: <20221116120157.2706810-1-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221116_040204_197287_89F5E697 
X-CRM114-Status: GOOD (  11.56  )
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

This patchset adds PHY support for the PCIe, UFS and USB found in
the new Qualcomm SM8550 SoC. Since the SM8550 bumps the HW version
to 6.0 (respectively, 6.20 for PCIe G4), add support for it beforehand.
The SM8550 also uses Synopsis eUSB2 PHY, so add a dedicated driver
for it.

To: Andy Gross <agross@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
To: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>
To: Rob Herring <robh+dt@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org
Cc: linux-phy@lists.infradead.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org


Abel Vesa (9):
  phy: qcom-qmp: qserdes-com: Add v6 register offsets
  dt-bindings: phy: Add QMP UFS PHY comptible for SM8550
  phy: qcom-qmp-ufs: Add SM8550 support
  dt-bindings: phy: qcom,qmp-usb: Document SM8550 compatible
  phy: qualcomm: qmp-usb: Add support for SM8550
  dt-bindings: phy: qcom,qmp-pcie: Document SM8550 compatible
  phy: qualcomm: qmp-pcie: Add support for SM8550 g3x2 and g4x2 PCIEs
  dt-bindings: phy: Add qcom,snps-eusb2-phy schema file
  phy: qualcomm: Add QCOM SNPS eUSB2 driver

Neil Armstrong (1):
  phy: qualcomm: phy-qcom-snps-eusb2: Add support for eUSB2 repeater

 .../phy/qcom,ipq8074-qmp-pcie-phy.yaml        |  38 +-
 .../phy/qcom,msm8996-qmp-ufs-phy.yaml         |  24 +
 .../phy/qcom,msm8996-qmp-usb3-phy.yaml        |   1 +
 .../bindings/phy/qcom,snps-eusb2-phy.yaml     |  84 ++++
 drivers/phy/qualcomm/Kconfig                  |   9 +
 drivers/phy/qualcomm/Makefile                 |   1 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 354 +++++++++++++
 .../phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h   |  15 +
 .../qualcomm/phy-qcom-qmp-pcs-pcie-v6_20.h    |  23 +
 .../phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h    |  31 ++
 .../phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h    |  31 ++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h    |  16 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_20.h |  18 +
 .../qualcomm/phy-qcom-qmp-qserdes-com-v6.h    |  75 +++
 .../phy-qcom-qmp-qserdes-ln-shrd-v6.h         |  32 ++
 .../phy-qcom-qmp-qserdes-txrx-ufs-v6.h        |  30 ++
 .../qualcomm/phy-qcom-qmp-qserdes-txrx-v6.h   |  68 +++
 .../phy-qcom-qmp-qserdes-txrx-v6_20.h         |  45 ++
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       |  91 ++++
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c       | 171 +++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h           |  13 +
 drivers/phy/qualcomm/phy-qcom-snps-eusb2.c    | 467 ++++++++++++++++++
 22 files changed, 1634 insertions(+), 3 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6_20.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_20.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-ln-shrd-v6.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_20.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-snps-eusb2.c

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
