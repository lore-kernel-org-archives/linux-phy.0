Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDB5DC47072
	for <linux-phy@archiver.kernel.org>; Mon, 25 Dec 2023 12:03:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0fl0c4V0aT65v7n3uGZqx1kyVetIDgHadnEtxQzaYkI=; b=vkyXA0CAjK8Yvt
	gzj9043PrZ5eRvdn74iOcCACAyRyE1wzmG43G0LdeDRyT0x7ybQtsSvGVIdfRF/iIJJ1dCPuUuBo2
	bcYjsjnZ40VqbfFgETzhWefkLY85kGwBBSiByTyH/D7vN5fX0fZPu6V7VFWg9DPxL9hP0hwFvq8ZQ
	xDnWfvnuWtw4YdBQr5iF6N7fo59BDUGFb72gAHgbsBAiY+7QK3V6Go46q2h89ANQxVUvZcmS6PU9R
	kV0QlYcVOHPhjfMtt7XCbFsS53n7AS3fCzv3FFksWhnZf8BYN9Jr0+hS4OACL9y9+xiIQSujH1XGR
	3QBe1rEPwJkw6R2Vm+kA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rHjgL-00AmrM-1b;
	Mon, 25 Dec 2023 12:03:41 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rHjgH-00Amn1-2U
	for linux-phy@lists.infradead.org;
	Mon, 25 Dec 2023 12:03:39 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-40c48d7a7a7so35965075e9.3
        for <linux-phy@lists.infradead.org>; Mon, 25 Dec 2023 04:03:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703505815; x=1704110615; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=M9FH57aGkJw13IKFppWR0d0ExXBNDN8V4v9B+/Ni+Oo=;
        b=YAUt9hypkKerL5bonpU2j1qv1jzA8bEhBZylsfHpRLX/ybVKTGk02g4X0s8WeCZ/WN
         VNyfpWWhenLa0dnIT/eASBKLAxofP+tn7M5Z/RxwT+AiWqg0L4cy/NdW3LokG9XaZ+rP
         0ofMwlq8Hwf7KV/urJKgZEsNX477RC4h+rXtvlP5iEf2poId1Ctd7mcPabPasBbxLaCO
         xsWyMXrEOhRHAF+RmtebYixY8h/dxZiiLIfiAfO5xkat6w3U5FxUWJ2tS5zRd+s831j4
         JOhN8bvvpxmOuC6NLV3fknLO3drkoi7LR0Dd1yY5uC1GbPFV4Pb6OmiVmrrLQtylfctc
         7cHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703505815; x=1704110615;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=M9FH57aGkJw13IKFppWR0d0ExXBNDN8V4v9B+/Ni+Oo=;
        b=AWyP9RQN8O3U6gnBWewcTWIMpZxIKPtWdE+DflEgSI0U1UXIkZ+GlhUvDEooXQndPo
         jSswVZreI5DcG+uPzMfIOC9kW3Ai/o/AIVbp5DU3RCSFJ7vcx8TsAvsqQQr6Kiy2L0Wv
         kcPlWX5sz/sslsPuGXUmVRpAUSPjIhiPo/3egJX6t6GDMXbwPAdq47EsVlDkTbmtiAst
         qBYdsA6TYY9nVGWmZ1eh3mWeONIgVVFt6r8PeTQYOuy9SZtN81zyF5oq9z7k7Vmvu+96
         GxZose+yAXMhUzQAmTOPyCdg8oyBdtc+LuWy5YQ+i8KXbI17G29q7o7x3mEwxXx7NQmP
         u7JQ==
X-Gm-Message-State: AOJu0Yx/7sIdfYCRhpO7j81LldWEVCCcN7wGO7T8mK0QuV09LHP2eYQZ
	KDgY8uy/51fhPPYNkqPwIj4=
X-Google-Smtp-Source: AGHT+IG/Vs2hMcBk9dE1QNzxQyPaPfS892cgWA78VxcazBgLVeHJwXbFGn9Y6zC2d9xt6CMKPtcfRQ==
X-Received: by 2002:a05:600c:1c2a:b0:40c:5971:6162 with SMTP id j42-20020a05600c1c2a00b0040c59716162mr4046285wms.81.1703505814885;
        Mon, 25 Dec 2023 04:03:34 -0800 (PST)
Received: from david-ryuzu.fritz.box ([178.26.111.208])
        by smtp.googlemail.com with ESMTPSA id 14-20020a05600c020e00b0040d23cea7bcsm6349456wmi.1.2023.12.25.04.03.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Dec 2023 04:03:34 -0800 (PST)
From: David Wronek <davidwronek@gmail.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"David S . Miller" <davem@davemloft.net>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Joe Mason <buddyjojo06@outlook.com>,
	hexdump0815@googlemail.com
Cc: cros-qcom-dts-watchers@chromium.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org,
	David Wronek <davidwronek@gmail.com>
Subject: [PATCH v3 0/8] Add UFS support for SC7180/SM7125
Date: Mon, 25 Dec 2023 12:59:53 +0100
Message-ID: <20231225120327.166160-1-davidwronek@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231225_040337_810418_66AEC671 
X-CRM114-Status: GOOD (  11.79  )
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

This patchset introduces UFS support for SC7180 and SM7125, as well as
support for the Xiaomi Redmi Note 9S.

Signed-off-by: David Wronek <davidwronek@gmail.com>

---
Changes in v3:
 - Use SM7150 UFS PHY compatible as a fallback
 - Fix dts style issues
 - Add regulator-allow-set-load and allowed-modes to UFS regulators

Changes in v2:
 - Fix device tree binding for QMP PHY
 - Separate ICE into its own node
 - Fix style problems in sc7180.dtsi

---
David Wronek (7):
  dt-bindings: crypto: ice: Document SC7180 inline crypto engine
  dt-bindings: ufs: qcom: Add SC7180 compatible string
  dt-bindings: phy: Add QMP UFS PHY compatible for SC7180
  dt-bindings: arm: qcom: Add Xiaomi Redmi Note 9S
  phy: qcom: qmp-ufs: Add SC7180 support
  arm64: dts: qcom: sc7180: Add UFS nodes
  arm64: dts: qcom: sm7125-xiaomi-common: Add UFS nodes

Joe Mason (1):
  arm64: dts: qcom: Add support for Xiaomi Redmi Note 9S

 .../devicetree/bindings/arm/qcom.yaml         |  1 +
 .../crypto/qcom,inline-crypto-engine.yaml     |  1 +
 .../phy/qcom,sc8280xp-qmp-ufs-phy.yaml        |  2 +
 .../devicetree/bindings/ufs/qcom,ufs.yaml     |  2 +
 arch/arm64/boot/dts/qcom/Makefile             |  1 +
 arch/arm64/boot/dts/qcom/sc7180.dtsi          | 70 +++++++++++++++++++
 .../boot/dts/qcom/sm7125-xiaomi-common.dtsi   | 28 ++++++++
 .../boot/dts/qcom/sm7125-xiaomi-curtana.dts   | 16 +++++
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       |  3 +
 9 files changed, 124 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/sm7125-xiaomi-curtana.dts

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
