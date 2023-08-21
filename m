Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9EF53EE49AA
	for <linux-phy@archiver.kernel.org>; Mon, 21 Aug 2023 00:25:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Tjf4k3dW1nQaFA0DW5fjQQuaCrComdhs/UJ5UwMOXpM=; b=exoBnZ4aNjFn73
	FLzlJz5omVBpTyFMMTFoojwxYOy0E9iWW42lScCOhETLzU8vA4GVr5043/ovHOF71jXNtwmIqyPF7
	A+6LzK5+LfHdycV3vjubGkpz2Kxw5ixNxlUnLKfrdafZHQA3G/glI16dWDhVAz/wEYMzLJJfdfrzz
	ch1YrbplCDgaE8t7agr+kZZZMCAV8dz+QYVBnR8+TBKVDVbMCgqObajQm1KxNeQAogn0lDZiiHaC/
	G2ZDatkvW9tn4lYdkQMbtK/mKpDCQrBRZQoyjiPXx3JynbJ/L+Y+mIk7KJRcS15HZr8Sy/d8R1AOg
	JCuxGWLV4iQCc57NOYdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXsjl-00CjjP-1w;
	Mon, 21 Aug 2023 00:25:41 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXsjj-00CjiK-1U
	for linux-phy@lists.infradead.org;
	Mon, 21 Aug 2023 00:25:40 +0000
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2b962535808so45207151fa.0
        for <linux-phy@lists.infradead.org>; Sun, 20 Aug 2023 17:25:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692577536; x=1693182336;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=yEbvmaIurG+6Mij2R4BdBj5E2cSt8yX9PK0EjQaA8S4=;
        b=ZRsSENn60CNjQo0Npc207j90WCFn8GIgKzKgxgWybWY4zmYMRwhpahGkQrHiR0v9eW
         yscWP4SB2O2OU20PQFxs54SzDDbX8LeXsC6j0ltmO361QGv6Z22039T1j6aBNpTSSvns
         JegkjKuHl3FF9r+RpGOx8Fu2kcu9dFq+xDAglJGxj9+KhLSCohY16Sz+hyqPOPqVSDpw
         QboyUP/89ZNHVRurUghDSVpgXsWMOQVTIB7o2T45hV3Yyn1oT/3iGasFJuSdZL4CyN7x
         f2VAKotjwsdyGwMGPZS8Bf7bqUKOgPHe+dS3PkS547dCfxOW3UZNOh43apLktsACbE4E
         eliw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692577536; x=1693182336;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yEbvmaIurG+6Mij2R4BdBj5E2cSt8yX9PK0EjQaA8S4=;
        b=Zor/92ReKjlL9MbirZTGMFF2RNk3wS3IztWniHlsQlX9zWSHqV8kgLBrwRwONzN/Ty
         XkCSLpIKNXMyZjH0+1J0ffrk0F1Y5IquYy1T7c1XOwyV/q0m5sTYXl4Jc7iiqTScQdSC
         gE9iyoDoXUbLiJ/34hUPXM1TbjQNlIt3YsWgs4Av7LnssddQZY9VJTyFor30xQcsfjN4
         mxRQAbFBePuDuXPXN6jpNpugQ4yvr1R1lM5zIm1azLXnwmsnLd0KeCifH6l47ezLI2Cw
         hLmpWmc8qL/k4IWfdP6cnn1BacESH3V5ARS+S3kl7ItPaDi47qsgv9AYA+JhlmmdGIs7
         x1rw==
X-Gm-Message-State: AOJu0YwKc0skVAuw/xQ0wTC3IceQhHRRaJsPP67nsWHS6+Q2SI69hf5t
	2T+tvitkUseDXfntdofJumMBJQ==
X-Google-Smtp-Source: AGHT+IH2TLA5eAwtc+QqDfSvcLBXW+oCUCt186ZZc0tI9aFuib9qxbba8DiMww84wen7n3z6/BM0tA==
X-Received: by 2002:a2e:c42:0:b0:2b8:3a1e:eec9 with SMTP id o2-20020a2e0c42000000b002b83a1eeec9mr3206278ljd.36.1692577536557;
        Sun, 20 Aug 2023 17:25:36 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id h27-20020a2eb0fb000000b002b6fe751b6esm1964923ljl.124.2023.08.20.17.25.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Aug 2023 17:25:35 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 00/16] phy: qcom-qmp-usb: convert to newer style of bindings
Date: Mon, 21 Aug 2023 03:25:19 +0300
Message-Id: <20230821002535.585660-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230820_172539_529832_69F2C3D1 
X-CRM114-Status: GOOD (  10.11  )
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

Reviewing several patchsets for newer platforms made it clear that
having two styles of QMP PHY bindings causes confusion. Despite binding
documents having notes telling that old bindings should be used for
older platforms, it is too easy to attempt adding new platform with
older QMP PHY binding. Thus let's have just a single documented style of
bindings.

Proposed merge strategy: immutable branch with binding and PHY patches,
which can also be merged into Bjorn's dts-for-6.7

Changes since v1:
 - Split large patchset into smaller parts
 - Rebased on phy/next
 - Reworked bindings to follow the common standard rather than blindly
   moving the PHY contents.

Dmitry Baryshkov (16):
  dt-bindings: phy: migrate QMP USB PHY bindings to
    qcom,sc8280xp-qmp-usb3-uni-phy.yaml
  phy: qcom-qmp-usb: simplify clock handling
  phy: qcom-qmp-usb: rework reset handling
  phy: qcom-qmp-usb: make QPHY_PCS_MISC_CLAMP_ENABLE access conditional
  phy: qcom-qmp: move PCS MISC V4 registers to separate header
  phy: qcom-qmp-usb: populate offsets configuration
  arm64: dts: qcom: ipq6018: switch USB QMP PHY to new style of bindings
  arm64: dts: qcom: ipq8074: switch USB QMP PHY to new style of bindings
  arm64: dts: qcom: msm8996: switch USB QMP PHY to new style of bindings
  arm64: dts: qcom: msm8998: switch USB QMP PHY to new style of bindings
  arm64: dts: qcom: sdm845: switch USB QMP PHY to new style of bindings
  arm64: dts: qcom: sm8150: switch USB QMP PHY to new style of bindings
  arm64: dts: qcom: sm8250: switch USB QMP PHY to new style of bindings
  arm64: dts: qcom: sm8350: switch USB QMP PHY to new style of bindings
  ARM: dts: qcom-sdx55: switch USB QMP PHY to new style of bindings
  ARM: dts: qcom-sdx65: switch USB QMP PHY to new style of bindings

 .../phy/qcom,msm8996-qmp-usb3-phy.yaml        | 287 ------------------
 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   |  53 +++-
 arch/arm/boot/dts/qcom/qcom-sdx55.dtsi        |  41 ++-
 arch/arm/boot/dts/qcom/qcom-sdx65.dtsi        |  35 +--
 arch/arm64/boot/dts/qcom/ipq6018.dtsi         |  35 +--
 arch/arm64/boot/dts/qcom/ipq8074.dtsi         |  76 ++---
 arch/arm64/boot/dts/qcom/msm8996.dtsi         |  40 ++-
 arch/arm64/boot/dts/qcom/msm8998.dtsi         |  39 +--
 arch/arm64/boot/dts/qcom/sdm845.dtsi          |  39 ++-
 arch/arm64/boot/dts/qcom/sm8150.dtsi          |  39 +--
 arch/arm64/boot/dts/qcom/sm8250.dtsi          |  38 +--
 arch/arm64/boot/dts/qcom/sm8350.dtsi          |  39 +--
 .../phy/qualcomm/phy-qcom-qmp-pcs-misc-v4.h   |  17 ++
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c       | 225 +++++++-------
 drivers/phy/qualcomm/phy-qcom-qmp.h           |   8 -
 15 files changed, 352 insertions(+), 659 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v4.h

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
