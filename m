Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23490C7EE23
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jun 2023 09:24:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5EQAdvLNPRsgBd3JZ9AwwmHFPpvuINAUiw9dT90MvaY=; b=pZuF8rjaUrbpi7
	jwBkwHtM/Mw4hOrqeIClO/gEiX036/dZ+Lx7KXl8GwJU7P4jOj+fzPXmmFpCoktSkj3zi1rcxvkig
	QCI9kBA6M0Tqx0t8SMVRTTwWMGzxma6gIshCcMtaIFNLxtkH61J+qf7SO+P9HdwTsNALntx6VGo5K
	2vYSxWmzPPEqCkvFE7/uK7krwQDrmxbqSUfdqpFv+WcHVypFDTllwQ2IlqshvvOa6Cpp/OCIkY761
	atvdGeuLpD418Wc66kG70AjtMuOaBHReRPC7T+jbE4sH3P11SKLtTBJS48hOeEE68IGPvr1/WtOlw
	0F7FQBDfOZwcIJgmC40A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8dmn-003Gqw-2A;
	Mon, 12 Jun 2023 09:24:29 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8dml-003Gq7-0k
	for linux-phy@lists.infradead.org;
	Mon, 12 Jun 2023 09:24:28 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-3f78a32266bso41286905e9.3
        for <linux-phy@lists.infradead.org>; Mon, 12 Jun 2023 02:24:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1686561865; x=1689153865;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=FtFss3/4BWnZx7BK6rTdWa1DuApsa4mA3kKtcIcOXC4=;
        b=qLJytdt6Jb/yVXsOZ6i6XGX8DjxK7ccMzfD1qS6kYgg8kta38u9WMlXXUab9tHe+YF
         K/ACwxglRzoF8jM6P1rF9+Ps5zpHWb4gIAiIB8L0DD7wQucMjDngSXyODnCyQ/XuJnxZ
         nDSIkg03r3lFVp/DfGV7PlLS6/gdgMWHdBwV9xrKYmPp4Ix5ADWRxT1D9s+DSFlU0BF+
         XCGfRDHbr8rlCR3wCnBtDqpED95AsNwmBjVAcdYwcKLoCDQZ7UzlvYNVfZ2xFhNAoZf6
         QigJ1LWe9B8J+1NmzCzmWHPrW9M+lR0OnYMO5XzU7BetZ902d+e18mzW32Tjru6XU2pp
         4u2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686561865; x=1689153865;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FtFss3/4BWnZx7BK6rTdWa1DuApsa4mA3kKtcIcOXC4=;
        b=ioJujL/0szJ+oL8EUNzUFEhRhrhaQoHE1ffZw965ZqyE/fb+oWo/ybPFrIotdBZFY6
         QjD/erlpEA4+mlsW5JjKLkYghKDo3GPgRv7s3hIRwBLR9ZxGGpMMQD0UGjNmNl83N8HQ
         319anFoFIPv3QbNRhPdGiHHQwsnz2hHoTQ8SdF3Fb4TyWxz4Mr43HNv+n7/GO7fNViBc
         SkrOeXyJz+iGXUU8OpV5EKUvHpB50FCc67ipUPuoVS/BNHRHphBLFyw768zlSK/zI9cA
         iHtG5D6cZBKQfx+gnnlflUfiPNA+1/LGhz8Jia+6TuGeLnDUPk6N1UKsECEI1Iuzc8xU
         L6Zw==
X-Gm-Message-State: AC+VfDwKBSdYKSJld4fZ68/ruJ2Ydnje15z9EniXuZsiLoqYEs7I+yqY
	36aJXBnemhXxmrKkqRhfBqG5Rw==
X-Google-Smtp-Source: ACHHUZ7jVY7WsrzBMbHCfUmR81pNeDeuO6Gb3yzNkzIgysAxxoKNzVSDsJJSKjHa4n/KMAp302GrIQ==
X-Received: by 2002:a7b:cd8a:0:b0:3f4:1cd8:3e99 with SMTP id y10-20020a7bcd8a000000b003f41cd83e99mr6686652wmj.28.1686561865141;
        Mon, 12 Jun 2023 02:24:25 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:a222:bbe9:c688:33ae])
        by smtp.gmail.com with ESMTPSA id p14-20020a7bcc8e000000b003f727764b10sm10892044wma.4.2023.06.12.02.24.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 02:24:24 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Vinod Koul <vkoul@kernel.org>,
	Bhupesh Sharma <bhupesh.sharma@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Jose Abreu <joabreu@synopsys.com>
Cc: netdev@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH 00/26] arm64: qcom: sa8775p-ride: enable the first ethernet port
Date: Mon, 12 Jun 2023 11:23:29 +0200
Message-Id: <20230612092355.87937-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_022427_514759_EF2A7304 
X-CRM114-Status: GOOD (  13.38  )
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

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

There are three ethernet ports on sa8775p-ride. This series contains changes
required to enable one of the two 1Gb ports (the third one is 10Gb). We need
to add a new driver for the internal SerDes PHY, introduce several extensions
to the MAC driver (while at it: tweak coding style a bit etc.) and finally
add the relevant DT nodes.

Bartosz Golaszewski (26):
  phy: qualcomm: fix indentation in Makefile
  dt-bindings: phy: describe the Qualcomm SGMII PHY
  phy: qcom: add the SGMII SerDes PHY driver
  arm64: defconfig: enable the SerDes PHY for Qualcomm DWMAC
  net: stmmac: dwmac-qcom-ethqos: shrink clock code with devres
  net: stmmac: dwmac-qcom-ethqos: rename a label in probe()
  net: stmmac: dwmac-qcom-ethqos: tweak the order of local variables
  net: stmmac: dwmac-qcom-ethqos: use a helper variable for &pdev->dev
  net: stmmac: dwmac-qcom-ethqos: add missing include
  net: stmmac: dwmac-qcom-ethqos: add a newline between headers
  net: stmmac: dwmac-qcom-ethqos: remove stray space
  net: stmmac: dwmac-qcom-ethqos: add support for the optional serdes
    phy
  net: stmmac: dwmac-qcom-ethqos: make the rgmii clock optional
  net: stmmac: dwmac-qcom-ethqos: add optional phyaux clock
  net: stmmac: dwmac-qcom-ethqos: add support for the optional
    phy-supply
  net: stmmac: dwmac-qcom-ethqos: prepare the driver for more PHY modes
  net: stmmac: dwmac-qcom-ethqos: add support for SGMII
  net: stmmac: add new switch to struct plat_stmmacenet_data
  dt-bindings: net: snps,dwmac: add compatible for sa8775p ethqos
  dt-bindings: net: qcom,ethqos: add description for sa8775p
  net: stmmac: dwmac-qcom-ethqos: add support for emac4 on sa8775p
    platforms
  arm64: dts: qcom: sa8775p-ride: add the SGMII PHY node
  arm64: dts: qcom: sa8775p: add the first 1Gb ethernet interface
  arm64: dts: qcom: sa8775p-ride: enable the SerDes PHY
  arm64: dts: qcom: sa8775p-ride: add pin functions for ethernet0
  arm64: dts: qcom: sa8775p-ride: enable ethernet0

 .../devicetree/bindings/net/qcom,ethqos.yaml  |  14 +-
 .../devicetree/bindings/net/snps,dwmac.yaml   |   3 +
 .../phy/qcom,sa8775p-dwmac-sgmii-phy.yaml     |  52 ++
 arch/arm64/boot/dts/qcom/sa8775p-ride.dts     | 109 +++++
 arch/arm64/boot/dts/qcom/sa8775p.dtsi         |  39 ++
 arch/arm64/configs/defconfig                  |   1 +
 .../stmicro/stmmac/dwmac-qcom-ethqos.c        | 273 ++++++++---
 .../net/ethernet/stmicro/stmmac/stmmac_main.c |   2 +-
 drivers/phy/qualcomm/Kconfig                  |   9 +
 drivers/phy/qualcomm/Makefile                 |   3 +-
 drivers/phy/qualcomm/phy-qcom-sgmii-eth.c     | 446 ++++++++++++++++++
 include/linux/stmmac.h                        |   1 +
 12 files changed, 890 insertions(+), 62 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,sa8775p-dwmac-sgmii-phy.yaml
 create mode 100644 drivers/phy/qualcomm/phy-qcom-sgmii-eth.c

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
