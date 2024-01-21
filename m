Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B03EC47422
	for <linux-phy@archiver.kernel.org>; Sun, 21 Jan 2024 16:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oLEC2JTx03UXDY+KcENT1nxOoRZJ33lhst1jtERQXTw=; b=mJ5iak/ShOw6Gw
	2N0H3FObBMalBNU/rmVj5Ed/HZIa3Pvn9ZY3Zi8z1VmdM5Jhp8ycEtcBbbhFgLQkF8E+sx6nNA4Jr
	wMegLkK4GjYdAM1yR674GZquHM9UQhIh+KYbIaOGGvWNddgsX44MlIk5sVjYQHLXJ6N+LaF3RoR6d
	RKcLddu0ASVKy/OqmUFKytIoMwKZYgEzscFgoB6UJXJ/AUiSq+H82OsiSRezn3AOcbRD/XHsktYnb
	ZEmmy1Z77ZyvAvkAaBe+t4vV5aOaphA3sRbpt0zWpGGjfJgSNu18bgfbT7B/olSQnZ7UaEFLuHaw+
	LT06Qxotwqe8cMLYy5Cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rRbAH-009lvi-2I;
	Sun, 21 Jan 2024 16:59:21 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rRbAF-009luX-04
	for linux-phy@lists.infradead.org;
	Sun, 21 Jan 2024 16:59:20 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-339289fead2so1404532f8f.3
        for <linux-phy@lists.infradead.org>; Sun, 21 Jan 2024 08:59:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705856356; x=1706461156; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Iw0lURdtpNdGU/9fKSnj2h+p7EalE0kEm389szngll4=;
        b=hNOYszRn8EZy5Z0eX5Uh4Lfu4Xkxfht5Cvq7OiM2egoltOaSkVBhCACSnO+m7BqCTu
         LsqAKDTGWMthmPJVmwcet6+Lyu1Zp/IOA7mSkgSo0UxWY05B16fukYgt1SyEdsS18VKM
         hjqR4Sr2XZ1NZPwXF2ezfwFWvL/Oq9gPYi/XYynVemmn3fg3vRSG8Mq6r0JZxuL4GpHj
         5VZyzAiwQyp0+TojPlG9QsX3j5aC4PE8MESDLHeaMifRN6Sio+5+9fDHQn+UqVezaSp5
         tJqa5Tw3StJLuG4naelnVW9IMwUvLcycndKGXncqoPuNHGbTHZRv+HX8ccs9AlA44KY8
         NLjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705856356; x=1706461156;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Iw0lURdtpNdGU/9fKSnj2h+p7EalE0kEm389szngll4=;
        b=ubSH9hKJ/hhMKLAiITTIHrWLoV98MtsJCO/HL1QnibWrxUpcx+qezoASx+yU41sYJ5
         mLRpQJkQ4UiPem+n4uEwoG1t76M4bVavEpdcoYGhujWZEMv+Y22ZdaODld+2+IM2sBrK
         WkuEckibdUJW21QAHfZtEUNUEnex0Jd6+PZN+Z5bmnPLng+WK7oR1fkCVH6v2tI/iCaK
         xdYbxI95Ca8dO03Axhb0rdp4x/tFjr4mWldy4j6ycqJ9s++1mf62hLLn7SNxzaIkjNGi
         bknhkGj12fzqlR97yKFHadfpfBR3dN2Ud0zY2itPtiRKdZv64pBp/GdOqFgBAzM9MGx7
         RdLQ==
X-Gm-Message-State: AOJu0YxytMq59FB4Srofs8XiVaF4YDvyzc5g6tYMgKZ5XiI/SiRDzkAV
	MYosqIqpHsZ1Ye8ksVNuNKkjHcJ9EMS7hCOv6ZyoWe/8V1LlVCWx
X-Google-Smtp-Source: AGHT+IERvsYoNAV2dkYnGva5iE/kqnhp/zG/OmHsOop7nVzlgHfM9/vVAwuyxKjyDDvGBKAZBnPP6A==
X-Received: by 2002:adf:a15d:0:b0:337:6322:de93 with SMTP id r29-20020adfa15d000000b003376322de93mr1486268wrr.103.1705856355783;
        Sun, 21 Jan 2024 08:59:15 -0800 (PST)
Received: from david-ryuzu.localdomain ([178.26.111.181])
        by smtp.googlemail.com with ESMTPSA id q5-20020adff505000000b00339214d70b5sm6541115wro.85.2024.01.21.08.59.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Jan 2024 08:59:15 -0800 (PST)
From: David Wronek <davidwronek@gmail.com>
Subject: [PATCH v4 0/8] Add UFS support for SC7180/SM7125
Date: Sun, 21 Jan 2024 17:57:40 +0100
Message-Id: <20240121-sm7125-upstream-v4-0-f7d1212c8ebb@gmail.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAARNrWUC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyTHQUlJIzE
 vPSU3UzU4B8JSMDIxMDQyND3eJcc0MjU93SguKSotTEXF0zCwNzo1RTc0uTpCQloK6CotS0zAq
 widGxtbUAnGr5zmEAAAA=
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Herbert Xu <herbert@gondor.apana.org.au>, 
 "David S. Miller" <davem@davemloft.net>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>, 
 Bart Van Assche <bvanassche@acm.org>, Andy Gross <agross@kernel.org>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, 
 ~postmarketos/upstreaming@lists.sr.ht, David Wronek <davidwronek@gmail.com>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Joe Mason <buddyjojo06@outlook.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=ed25519-sha256; t=1705856354; l=2765;
 i=davidwronek@gmail.com; s=20240121; h=from:subject:message-id;
 bh=V4XRfyu2VuNHj6+ng148/c2sivbOY9FCOFxmgKRmcyg=;
 b=f0h0X6jbWTIkh/If9Oab7dFen/KOOcROnZAshl6defaOa9stAXyNF18PQKrnsmJk7KQVz6Ufr
 wLbyCjnnsXCDDuGB4kZz2G7yvKMgp7CN1jv1dQkPNX35yj2DplKu0By
X-Developer-Key: i=davidwronek@gmail.com; a=ed25519;
 pk=PJIYyFK3VrK6x+9W6ih8IGSJ5dxRXHiYay+gG1qQzqs=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240121_085919_056199_BDA25B7C 
X-CRM114-Status: GOOD (  12.00  )
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

To: Bjorn Andersson <andersson@kernel.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
To: Herbert Xu <herbert@gondor.apana.org.au>
To: David S. Miller <davem@davemloft.net>
To: Rob Herring <robh+dt@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
To: Conor Dooley <conor+dt@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Alim Akhtar <alim.akhtar@samsung.com>
To: Avri Altman <avri.altman@wdc.com>
To: Bart Van Assche <bvanassche@acm.org>
To: Andy Gross <agross@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>
To:  <cros-qcom-dts-watchers@chromium.org>
Cc:  <linux-arm-msm@vger.kernel.org>
Cc:  <linux-crypto@vger.kernel.org>
Cc:  <devicetree@vger.kernel.org>
Cc:  <linux-kernel@vger.kernel.org>
Cc:  <linux-scsi@vger.kernel.org>
Cc:  <linux-phy@lists.infradead.org>
CC:  <~postmarketos/upstreaming@lists.sr.ht>

Signed-off-by: David Wronek <davidwronek@gmail.com>
---
Changes in v4:
 - Add Reviewed-by tag from Dmitry Baryshkov to fifth patch

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

 Documentation/devicetree/bindings/arm/qcom.yaml    |  1 +
 .../bindings/crypto/qcom,inline-crypto-engine.yaml |  1 +
 .../bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml    |  2 +
 .../devicetree/bindings/ufs/qcom,ufs.yaml          |  2 +
 arch/arm64/boot/dts/qcom/Makefile                  |  1 +
 arch/arm64/boot/dts/qcom/sc7180.dtsi               | 70 ++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/sm7125-xiaomi-common.dtsi | 28 +++++++++
 arch/arm64/boot/dts/qcom/sm7125-xiaomi-curtana.dts | 16 +++++
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c            |  3 +
 9 files changed, 124 insertions(+)
---
base-commit: ad5c60d66016e544c51ed98635a74073f761f45d
change-id: 20240121-sm7125-upstream-68072e5794bb

Best regards,
-- 
David Wronek <davidwronek@gmail.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
