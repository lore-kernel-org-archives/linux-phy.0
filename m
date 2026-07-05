Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32A70C43458
	for <linux-phy@archiver.kernel.org>; Sun,  5 Jul 2026 07:58:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lqh4dNJIhm4mMaH75sSk7Qi1CsLLTuc4/nCBvVqULrM=; b=w3j+PL0ExECqV+
	fM9kTvXyX6K2UoQs6lJJ5RzZR9by8xOtf8MLz3CtgauMAzXMZEi9zLf+taNCDcYh6Ma0IXve14fnA
	jXl7OfyzPOEBAI5iIkSOMbxdr8Dt7QMylSC0co7rabIh2oAGrDmnXYnC/O9ilByGH5m7rMghzsrW8
	8zpHA8LPRGOLuOTtxNMNSIuCGrB5IcTR8XXJLORlRMaEqTanLKBiBroKfmSD0Z7rn0xgfwppMTdMv
	moooFLmn9rSerF3uODoE3teZzqnzEbfv/RsoTO7vJH4cd67yHECRw3Ay0wWIA94DCcc3NtGJL2SiM
	7ANs7A4mqQRLFZtbWRlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgHkO-000000094eP-38uh;
	Sun, 05 Jul 2026 07:58:40 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgHkM-000000094dr-0kVI
	for linux-phy@lists.infradead.org;
	Sun, 05 Jul 2026 07:58:39 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-493bb510ce4so14252065e9.1
        for <linux-phy@lists.infradead.org>; Sun, 05 Jul 2026 00:58:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783238316; x=1783843116; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xHxxISw9/eUoh0glcJjvTPDJ3DTP4w24ytxN3iIm2gE=;
        b=VofvMToqJkrVN+WjNvZDZYPnrbSJbenaXduhnBR/t4iNjfi29puvnvPtwZnvxsYFPO
         OKdEBdsuqWFADTEFUbyPyU36sZY6cZn3wNmCAgtM2ox3E5h8gKZPR7p5BY0gaDzXT6On
         AfDS+uBCr6sLOaXimkdWqvDexb7D2SYStbdCswVoFegwPcL3pUW71IKfPzd4vEQqoL8X
         dKfbhRRVFV9NDcKav62BNDtS6qdjGyTtHhGW4CRHYANX+lwlp19k70m/Y6HPoQqruGFI
         jjNZtnMzH0G98mRmPMd8DQP9AbLMdtSYIu+RUVdoGWX22T9N+3r6IuEUp4uFiUEthur6
         H7bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783238316; x=1783843116;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xHxxISw9/eUoh0glcJjvTPDJ3DTP4w24ytxN3iIm2gE=;
        b=ducdgGcFnLll6J8vmcKKg/WdxP+L50gC9pcdPW9B4Sj4Dsxeuu8ds1bJHFznCaAUVx
         I7CXONQWIqbmBnjJMRPHDofQElcL+jBav3/AdaEdV2huZy5Xz/RZhUU8RtWfFD5TdnXi
         TxQI8mvDXbWN5+G5TvSQNGX2ZBDN8+etlRBrXq064uTc9SByfjeSeeyLVE9T4CP22wp4
         IvhzIZDiY8vg2XsFnFZEl+NJhRjJQvtPtX43IuKvm5V3RfVhqEc4d1mwXXyUgOrc+3Ah
         IMvpRVkrKoJ4CTD1mKHvzVJYeE4jGyct7avWnBQ3DlFntmTyxO8TwhJFwlz6Lu4Qbbow
         l3aw==
X-Gm-Message-State: AOJu0YzJlOa4nbfNpQy9Alh2RwjIzxvPnbToyXeZpVbTtpEscuuFn3QC
	Dn6b2zoMa3KHDiYxyC/hv2EH2nJnlSOaGFwuKKSIGqatm4YmoX/pDj/wYPQ+2mwQ
X-Gm-Gg: AfdE7cl2GglDNIN0vHYAerq+zANBIOzOGYeVbEaNGM7FyyPpEe0Wji2wRKXF3dCuTF8
	ZlSSlVsvph7eijNGRApuE0nrS74Bo/FkQl67LOR6Xr/h9YYSRmfgs/STHwTDe4U1Zxi+9gmGi/y
	z9mmP2+K5RHIkDNYdtmaVihh80nTviOAPLmLeObf1iNVBSBTn2tTB0c1szLuTiXZyigfoo2vxr0
	aie0sEJqOtNOWXqTcIayTI9Xv73hv5XljWtqlHG8eLiK44rdofGQWBSO+XUG7WZ66CEj3a8tZ5X
	ArLPwLfHiNmVmemv1jvrltG5OmilydqvSvr3UeDjxbX3FW47nT6pzg6VBhgPyfBM+Pg82Rl1jlV
	ZCiuRYQ5ju0eRzur2dtb/yCZMt0btSovc23ncSv4tpDyWYCSU11c0kYfaznPMEuv9AacMTXAfoP
	7kqx2kI7SwaOqiuIXFOzodnOc3nxgkksXZaw==
X-Received: by 2002:a05:600c:3551:b0:492:4714:2d7e with SMTP id 5b1f17b1804b1-493d11fe2f2mr68174165e9.36.1783238315894;
        Sun, 05 Jul 2026 00:58:35 -0700 (PDT)
Received: from localhost.localdomain ([95.43.220.235])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493c63bfba1sm305769765e9.15.2026.07.05.00.58.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jul 2026 00:58:35 -0700 (PDT)
From: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Aaro Koskinen <aaro.koskinen@iki.fi>,
	Andreas Kemnade <andreas@kemnade.info>,
	Kevin Hilman <khilman@baylibre.com>,
	Roger Quadros <rogerq@kernel.org>,
	Tony Lindgren <tony@atomide.com>,
	Linus Walleij <linusw@kernel.org>,
	Bartosz Golaszewski <brgl@kernel.org>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-omap@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>
Subject: [PATCH v2 0/5] phy: cpcap-usb: improve charger detection and export cable state
Date: Sun,  5 Jul 2026 10:58:04 +0300
Message-Id: <20260705075809.1793784-1-ivo.g.dimitrov.75@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260705_005838_237973_D772905F 
X-CRM114-Status: GOOD (  11.33  )
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

The Motorola CPCAP USB PHY contains the hardware state machine used for
USB cable detection. Besides distinguishing USB peripheral and host
connections, it can also detect dedicated charging ports (DCP).

This series starts with a fix to prevent spurious SysRq events when
switching between USB and UART modes. It then adds DCP detection support
to the CPCAP USB PHY, updates the Device Tree binding and corresponding
mapphone Device Tree to use the charger detection interrupt, and finally
exports the detected cable state through the Extcon framework.

The existing driver already interprets the CPCAP USB detection state
machine to determine the attached cable type. This series extends that
logic to distinguish DCP connections and exposes the detected cable state
through Extcon using a standard kernel interface. It also makes the idle
UART mode optional, allowing the PHY to remain in its default USB
detection configuration unless UART support is explicitly requested.

The series has been tested on Motorola Droid 4 hardware.

Changes in v2:
- add chrg_det interrupt instead of replacing se1
- Fix remove() race by cancelling detect_work before hardware teardown
- Restore SysRq state on all error paths
- Introduce CPCAP_UNKNOWN initial mode
- Snapshot enable_uart module parameter

Ivaylo Dimitrov (5):
  phy: cpcap-usb: Prevent line glitches from triggering sysrq
  dt-bindings: phy: motorola,cpcap-usb: add chrg_det interrupt
  ARM: dts: ti: cpcap-mapphone: use charger detection interrupt for
    CPCAP USB PHY
  phy: cpcap-usb: add DCP detection and make UART idle mode optional
  phy: cpcap-usb: add extcon support

 .../bindings/phy/motorola,cpcap-usb-phy.yaml  |   6 +-
 .../dts/ti/omap/motorola-cpcap-mapphone.dtsi  |   6 +-
 drivers/phy/motorola/phy-cpcap-usb.c          | 334 +++++++++++++++---
 3 files changed, 290 insertions(+), 56 deletions(-)

-- 
2.39.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
