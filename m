Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59C27CD8CB2
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jun 2026 11:10:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/ONeKdq3r9P+u6e6+45+4VAMNahmClYYM4ASs9dRyNQ=; b=W9qgnt+95ooqK+
	JJ/zTraRDcFc8kn1ShltjjaHBVbUDo0O0JwxlCWpr75SDft5EO9VlaEA+Jiz713llkbR7eVvedTWE
	FVe6/Fn7ZUNK3K8i0nAWEc4yoUq6qahW/td4moaBbl7ptwGWRTpXvcJw9wbAWLDqdnSH+BEYTKdeW
	fErBfhP62wicTrq+GJi9KgsEpGCAigKLJlXxfSerRolmhdLEsg/77QTK9gsCYTcZIvno20beqve+n
	pmO1ubj6JIAHnCICE/oTbfrFSjxMMDylNQ3BV+H53qS8IvYn2nU34W8sEtCg4UV/XGpGQSZI3r4S6
	7SVYeS1N/iljJKFYTm8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXGpD-00000007UpI-29UC;
	Wed, 10 Jun 2026 11:10:23 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXGpA-00000007Uop-0jmE
	for linux-phy@lists.infradead.org;
	Wed, 10 Jun 2026 11:10:21 +0000
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-2c0c35980fdso66403335ad.2
        for <linux-phy@lists.infradead.org>; Wed, 10 Jun 2026 04:10:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781089819; x=1781694619; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ONdaAz3lAyvZtpSLEpD0avPz3gy5OYFvenkxhDXGSww=;
        b=dlTtqeQKmi+1Ggjxk/62lXWSt6oqaOjorVf861er925J+Y/gGkXBRzd7j6bly5Of1Q
         2dPS+4rke3c8f4flsZhcvl8rjRfcI4/DCPMtsgjKhFToNvIKQ1T+dX8BSs8ixmX+CIa/
         4XnyOS1VAWwmhMa6VIOelGjQ+x9TSHnR8vXsSyH9HEJsdg/kDvCi9KCpW/QXWXCU0qv/
         dSB32y/0KzxrVU+BM2avKMfSdd2u+6fkqC352K5kT3udMQFmwxKNqMriW9nyy06ti87f
         sS1R5X8UI3jLWJX1bJx9rADdDnNzCnp36mAMMTVc+iYieKPUvqfdTY7MkrFM0a3ASs+U
         USGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781089819; x=1781694619;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ONdaAz3lAyvZtpSLEpD0avPz3gy5OYFvenkxhDXGSww=;
        b=ZSaqI2cz8AeJJWNbICvM0JnB+2GcnvxLmlLRdk+MsCG6YTlcfFRSKM4dKSZNpo/Wa5
         2VnQ65m+AX8aZh/+J4cQ9Iy8QIj/n7T1ihdYcZW5x0ETvFiaQWr5rgo8mPZOzmB7yz8e
         3WPvWqHJcLHq0RAtPzXaZcqAav3CaH2Y9oiZ61z6WaIoVoyZWo1VfIWc/snw+9KTxCBe
         1Ouh/N33uq6YGZNUPqK+t6rhaJdGOe76ifevAWEMK68n1D2DztZOCBaB+3GdGrWDX4xi
         V24oh1v5w4Nh9D+nOGofRdkNl2TQVRwk0MEuk10GUsyn7lyaQBVZA9wuk/5BMiy53vQd
         41Ww==
X-Forwarded-Encrypted: i=1; AFNElJ/do3JOCXKUmMimcVXd69VMG+bW6axZgutgBpiQvhXJrp+gMcTRrX7P4bECfyKnNPpGwmtSngRgr6E=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx8g+5Jrs0bMpE7xyc8QcUKxs5m6m/VnispP9eAr/LPgwv3zx1d
	tIMo2Vru+M26Qm2WWM+f241RKazjx/hoG7qMuOVg068Sq3FBUdcFoO4s
X-Gm-Gg: Acq92OGLvKqZcgU9TUnQ130FUEMSxb676rnT2aL+xVFmF3yBZWPsg1uOWQEm9vzw6wa
	TvOD977N57wSxWkpYPPn+Hrmlh1MJpX7FbVgIWzn+d3QCBEdt0OddkKoqI92H/aFjELBoI70VGU
	xQB9l0BOp5aXJ8wLXm4OUy1KEubrU0S8oLcif9PZUYYi9/OMZFSJwRyvvImnERlD11AlGxTDHyz
	8smRBdXmsmenjqwkMGhYNWEMXffyBYbtJjxMN5QEIDtm/95sem9DELiwvEw/DaWQUMme7MMWco6
	9QBHh8zILht6qoG4Ix2hctqtaevF+G+UrrarnLaj6V6JmWj9/qLyGMA/ryBAs7JjoOUAEeMPFpT
	R/V4TOh7Qox91w9AnqKv6yVQUAqFuY5j6x+iyg5Ci9oLiFWDyHRYprKMMb9zYiJAL8leq4uIcvh
	loBDDSG9CQtg5CCz/UmD0b7i1xJaQauV42Eyl28Q==
X-Received: by 2002:a17:903:94b:b0:2b2:4bf9:1766 with SMTP id d9443c01a7336-2c1e85c736bmr283708325ad.33.1781089818833;
        Wed, 10 Jun 2026 04:10:18 -0700 (PDT)
Received: from [127.0.1.1] ([2409:40f4:4111:52c8:138e:8096:a8df:e68b])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c164f6d37esm317175205ad.9.2026.06.10.04.10.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2026 04:10:18 -0700 (PDT)
From: Ramshouriesh <rshouriesh@gmail.com>
Subject: [PATCH 0/9] media/arm64: HM1092 IR camera and ASUS Zenbook A14
 (X1P42100) camera support
Date: Wed, 10 Jun 2026 16:39:25 +0530
Message-Id: <20260610-a14-himax-hm1092-v1-0-0c9907da47ed@gmail.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/3WS3W6kMAyFX2XE9WYU549ktFr1Papq5SSmpCowJ
 TBlVfXd19De7E9vkAz2Od+xeWsqzYVqczm9NTPdSi3TyAV8OzWpx/GRRMlcN0oqJ50MAsGIvgy
 4iX4AGZSIMUWSSgXsqOGx60xd2Q7J+4ePuq7xidKy63x2zPSystfy0dYMVCseXpfT98NKKyvyt
 f8lrjjjUAVtC407nLiBkCK53FkbgvIG757LiPN0nubHH4c8Lqk/pJQxyoAPEQATkZLGMWdog/T
 ZW5TUxais1PvUvwhWabEBiVSLEjvKzbMzeuucNzZYBX87/y+GE9EI7ls3MXIIwbmkFqBFXmrZ9
 b0EyYE4ZOVsezgbgzZgI7mcvw4X096nIIEyGHNwgAQdHwlkTsa1EnLyEtOfUy5r1xGiRsW2OnS
 +JTQtYsu70shjTN1F98VKmO+6zq/485NXMa7iDx5jAOXS3VTr+WXF5zQNw5kfB3TEymvkN2W5n
 Ezgv8V7SUmiT7r15AFiCnyRjOB9bpPjS6Xm4f39N7otzSKfAgAA
X-Change-ID: 20260609-a14-himax-hm1092-bbcbe0229afe
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Loic Poulain <loic.poulain@oss.qualcomm.com>, 
 Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Aleksandrs Vinarskis <alex@vinarskis.com>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
 linux-phy@lists.infradead.org, Ramshouriesh <rshouriesh@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=5829; i=rshouriesh@gmail.com;
 h=from:subject:message-id; bh=AeMf5Wr6Pe7z04trz/jF9RfVqQlRMCsK6v0jvJ8gVWI=;
 b=owEBbQKS/ZANAwAKARWVil4RHAXeAcsmYgBqKUYM2l5gT0Awhq5dKGACM7kdseuFqcEgj2gyc
 pzwu1jPtKiJAjMEAAEKAB0WIQS/0QuzNKVfvUNlNAkVlYpeERwF3gUCailGDAAKCRAVlYpeERwF
 3oYxEAC5nHpEAyEA4fCAKgzeJ3lXKotkjbpCfMKRL1zBudNQMlIs/HN/H6t1AeZEM4KAJlukbyr
 Cf0bp+Clcv3fFxIMECzY0r7qGBa8BPsCFskwq5uUaTWeWSWwAbEXnIlhIE5xWZOy92UDR9rNICf
 Ozf87E/nTvTNcbyiX0/7cD03kS+Sxgg1uILpWdg4OP0QrM/sq/smE0utdPrII6qScg/ZofQPGIr
 vkasL+LeylBhPRUlIBKSsh+XKHtA95aKpGSEEH4WhBOXmFIA+W5KWofEFd6HFwez+XLa90Q3hhX
 fhD+NHC0QlnKCORmN16z3I09Ojb2ycpUuxMmJKxF4jRAckFsFbFFyxkZsVKoDnt73Xjo3xHlqKW
 lyArs1KCQQl7QxyQjB0zmiV+7TcpS/o8bZtqLIT7LcOGKkP7vh0qs2rosXKazXSmhjmjyamUYMK
 tonVC+6ztjPNK9zs28u18evTXJg799+tw7cL70XFcZfSUiSR9CeT4o9m11F26bNurs2ZMxVV+fn
 xWREw3eebSBnDuGAUIob+hIhzQ4f81vt+hAFxDJSG9WeMCO5eyDwj99fivDCDuc0rwzfoVxi2cN
 lI6LDH+LK2XP26lYxq/zgBTwA+/MfYcNNKmACnMcfIiE0AugLWSvInWnQLN+Km8aVGNnp+0LDcw
 8qC2h4Fbj7ir0hQ==
X-Developer-Key: i=rshouriesh@gmail.com; a=openpgp;
 fpr=BFD10BB334A55FBD4365340915958A5E111C05DE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_041020_251055_98326605 
X-CRM114-Status: GOOD (  15.94  )
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

The ASUS Zenbook A14 (Qualcomm X1P42100, "Purwa") has two front cameras
behind the SoC CAMSS: an OV02C10 RGB sensor and a Himax HM1092 mono NIR
sensor used for face unlock. This series adds a driver for the HM1092 and
the device tree to wire both sensors up on the A14.

The HM1092 binding, driver and MAINTAINERS entry do not depend on the
rest of the series and can go through the media tree on their own.

The remaining DTS and PHY patches are the A14 camera enablement. They sit
on top of several series that are not in mainline yet, listed below. With
those applied the series builds on next-20260609: the A14 dtb and every
module it touches (hm1092, qcom-camss including csiphy, and the
qcom-mipi-csi2 phy) compile and work: both sensors probe and stream
frames on the A14.

Prerequisites, in the order they apply:

  1. phy: dphy: Extend phy_configure_opts_mipi_dphy to support position
     and polarity (Bryan O'Donoghue, v1)
     https://lore.kernel.org/all/20260325-dphy-params-extension-v1-0-c6df5599284a@linaro.org/
  2. clk: qcom: videocc and camcc for X1P42100 (Jagadeesh Kona, v5)
     https://lore.kernel.org/all/20260507-purwa-videocc-camcc-v5-0-fc3af4130282@oss.qualcomm.com/
  3. phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver (Bryan O'Donoghue, v8)
     https://lore.kernel.org/all/20260523-x1e-csi2-phy-v8-0-a85668459521@linaro.org/
  4. media: dt-bindings and PHY updates for CAMSS on x1e80100 (Bryan O'Donoghue, v11)
     https://lore.kernel.org/all/20260326-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v11-0-5b93415be6dd@linaro.org/
  5. arm64: dts: qcom: x1e/Hamoa camera DTSI (Bryan O'Donoghue, v3)
     https://lore.kernel.org/all/20260326-x1e-camss-csi2-phy-dtsi-v3-0-1d5a9306116a@linaro.org/
  6. media: qcom: camss: Add support for X1P42100 camss (Wenmeng Liu, v2)
     https://lore.kernel.org/all/20260511-purwa_camss-v2-0-22608ab9126c@oss.qualcomm.com/

From the videocc/camcc series only the CAMCC block (patch 6/6) is still
needed; its clock drivers and bindings are already in linux-next. That
patch adds the camcc node and sets the Purwa camcc and videocc compatibles.

From the x1e/Hamoa camera DTSI series only the CCI and CAMSS-block patches
are needed; its CAMCC block duplicates the videocc/camcc series, and the
x1e80100 board patches do not apply to the A14.

Patch 1 adds the OV02C10 node. It is Aleksandrs Vinarskis' work, carried
here with his Signed-off-by so the A14 camera support stays one chain.

Signed-off-by: Ramshouriesh <rshouriesh@gmail.com>
---
Aleksandrs Vinarskis (1):
      arm64: dts: qcom: x1-asus-zenbook-a14: Add on OV02C10 RGB sensor on CSIPHY4

Ramshouriesh (8):
      media: dt-bindings: Add Himax HM1092 NIR sensor
      media: i2c: hm1092: add Himax HM1092 mono NIR sensor driver
      MAINTAINERS: add entry for the Himax HM1092 sensor driver
      arm64: dts: qcom: x1-asus-zenbook-a14: add HM1092 IR camera and wire cameras to camss
      arm64: dts/media: qcom: keep PLL8 out of Purwa camss hot path
      arm64: dts: qcom: hamoa: reorder csiphy power-domains for v8 CSI2-PHY
      dt-bindings: phy: qcom: add MIPI CSI2 mode constants
      phy: qcom-mipi-csi2: accept PHY_QCOM_CSI2_MODE_DPHY phy-cell

 .../bindings/media/i2c/himax,hm1092.yaml           | 118 ++++
 MAINTAINERS                                        |   9 +
 arch/arm64/boot/dts/qcom/hamoa.dtsi                |  32 +-
 arch/arm64/boot/dts/qcom/purwa.dtsi                |  12 +
 arch/arm64/boot/dts/qcom/x1-asus-zenbook-a14.dtsi  | 227 ++++++-
 drivers/media/i2c/Kconfig                          |  14 +
 drivers/media/i2c/Makefile                         |   1 +
 drivers/media/i2c/hm1092.c                         | 685 +++++++++++++++++++++
 drivers/media/i2c/hm1092_regs.h                    | 223 +++++++
 drivers/media/platform/qcom/camss/camss.c          |  16 +-
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c     |   3 +-
 include/dt-bindings/phy/phy-qcom-mipi-csi2.h       |  15 +
 12 files changed, 1326 insertions(+), 29 deletions(-)
---
base-commit: 49e02880ec0a8c378e811bc9d85da188d7c6204c
change-id: 20260609-a14-himax-hm1092-bbcbe0229afe
prerequisite-message-id: <20260325-dphy-params-extension-v1-0-c6df5599284a@linaro.org>
prerequisite-patch-id: 471e9403130bb3e65cea1d2365d75ef664662306
prerequisite-patch-id: 075fa72fba3c4f51138b88972e6a5e240038d90c
prerequisite-patch-id: 4edca361ad7d370a338641d1ebb5ca65b114a244
prerequisite-patch-id: 32dd1b55ba678d00088b376e33e12d9da6241aca
prerequisite-patch-id: 24424189b11acee204622997908d85a0efbb2503
prerequisite-message-id: <20260523-x1e-csi2-phy-v8-0-a85668459521@linaro.org>
prerequisite-patch-id: dc660c63d4382e84af51241381727954bd5ed013
prerequisite-patch-id: 237410e8df475d80bede4590288b6b053b1483e5
prerequisite-message-id: <20260326-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v11-0-5b93415be6dd@linaro.org>
prerequisite-patch-id: 6e8e67cd3ab96a602971bbeeb7dfdeaf3f1426a2
prerequisite-patch-id: bbf431fcabc17c30fa5e804eb4accb8275198b37
prerequisite-patch-id: a7fbea14628b62a8de096dea420473b283010aba
prerequisite-patch-id: b6b6c4e7a5818e1b93fe2758902bd32d2be48509
prerequisite-patch-id: 4f11e3d079a484008a03ce750952d6e2933c0253
prerequisite-patch-id: 5f5504fd7b5eee72c3fb8c045fa57219fd2f0456
prerequisite-patch-id: 570b65b326f4c684d813f6ebeda152378dc2a47f
prerequisite-patch-id: bc5b9321c124abd961ae1f60610dc46701dc80ac
prerequisite-patch-id: 6d36feaa3a210039f87ea47aa74423a670260fb6
prerequisite-message-id: <20260511-purwa_camss-v2-0-22608ab9126c@oss.qualcomm.com>
prerequisite-patch-id: 9430f9db2ca3486da39606aa806db3c1973ad2d1
prerequisite-patch-id: d90c86fbd38851530f9480562647703c32a86a91
prerequisite-patch-id: baa498638bf0da1bdc25a3c5e827c351d3b78e79

Best regards,
--  
Ramshouriesh <rshouriesh@gmail.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
