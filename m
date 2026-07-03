Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72BE0C43458
	for <linux-phy@archiver.kernel.org>; Fri,  3 Jul 2026 02:11:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/4pkggHYs3xDrb2obs0d7sgfOEU4k8MAZ+hNMrnm9f0=; b=3dNiRpV6k2xsGL
	XcUxU3oieSpK5y3dKWEhd1fG1mdH852DeJvc8hq/QKw2ZeHtlzKtE/2bx28jtUnbR2ji8K4/2k1C6
	AcmEJGJIiEMHkLqNEXNES5464N2TYIzqk/05VDfpdPNqrOgnKk3ix1ljsNgzufdQ3VzFSliV0z8oV
	w3w7EMWrv9tJ2zJmTGYihfQtUO2HtaHZE53jYc+ilgrBtzp4XTpMSI8dQN77Ke1tFrIG4Djzzigjc
	ZzuaNqzqdDOj0cxge/MzVWCObnfnMNiS/HifSCu9umHp8jB9BGMWWAaMwt9Yl+tys6XoWP07cHLrq
	LMcQUd3Z8rIrrbf1go1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfTMq-00000005s5g-42mq;
	Fri, 03 Jul 2026 02:11:00 +0000
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfTMo-00000005s4I-20c8
	for linux-phy@lists.infradead.org;
	Fri, 03 Jul 2026 02:11:00 +0000
Received: by mail-pf1-x429.google.com with SMTP id d2e1a72fcca58-845e363246aso73558b3a.1
        for <linux-phy@lists.infradead.org>; Thu, 02 Jul 2026 19:10:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783044657; x=1783649457; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9te5WRnB3/pnQ+/Q0S83oqHxAqp55SmkhfuxRe3M02I=;
        b=AufIWTqtt7ZvjgYSl3Art5Kwgd6zYElVVUKyV7I22PWE57fzNVYnXAQBqCU+FyQ9nP
         puqJY9BH5Z0B/MFFXp6HLEEevUMoCq8g27KJ0ctfONWsTo/C4F/ycsuemoJxy2ddcgEo
         750tbn5iJFKl8oMy73TDF16ey8Wc1manSsqbJsoH4XIF6jgTZOiRVWzzMb42ssHykmHV
         2wFjqC0TbtOuF2WrKTrWJEUu51vMfs2JYM60cEy7zOpJdJGxf0xWFt9eaZLu8/GB24DE
         eILv86TCSaDPnj3seH/xRrHjVwCg2pDwn9sEdnTvOzXW9W9PldGpRFCyUtHsp3J+rxxW
         cQTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783044657; x=1783649457;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9te5WRnB3/pnQ+/Q0S83oqHxAqp55SmkhfuxRe3M02I=;
        b=FTGE8/snFny2UVneu/kuogG7ePIpKRUdZ8Hm8s3Kszs9BfuWARM7xSNUX73Ewvhp5T
         kJ6PDsNawBUhVydffzYcr5ewcnIDQ4F8QKq4sns1a++lXFah63kfQUTZsgty6rxGENoT
         uzu/tb1b80bVM36/hIP2qDT7euesR5rWrvY+YuPWqBoKPwTaSYD2fv1fdBfTgXB6+3ES
         qOdGe5WCxbUgE3SgT78V+4Y3tSlcdJs+hZ/ggJEI15ArXY1+IxqwwrapgbuBtH/EEc4U
         XiZ+6o+d4cC551zrZQOk3/pTECGQDipnhyceFYzv2zq7TeNQfRtLEXrxZ/qROvk42d3f
         ehNQ==
X-Gm-Message-State: AOJu0YyTf5gZRZEnSCUODNSFB2jF87yja5RppJmk8RR1B0RS0SSjTlul
	eCXYzzKmGDl5PPEyuCFF6aroO1irJEoIkJDHRtkPS7p6k1A7k/N4yGdc
X-Gm-Gg: AfdE7ck9WXIynnnA3jvFIf0uX6bj1OujpwHC40b7lAUXAkAXfiF+DBylJTWyEvl2tqW
	yYE1melVcvhnHMybh+6Lm+plVlsWDT/ZOUC6AJxJzzwJiPk7VyPaOJx+8ZuxYeUY0ZpO/ObYLUC
	aMUd2VJ4M0l4E/F7nYMSOKbXB+L3XNsLajF41TJ6H8S4+DOcxbz098zOBh7YPUMtU5I1JJvOF+0
	C3qulomLV2cgOXBXTEFiykUYfO5JBSWfMuWqLbgR+9iB7viGAJOqoFlSdbp7ubR/TyJvYMmOHCU
	otDbY38w+7uD024ORPpnDXHKTV+NpK293lUPDK2dL5qVITvUpf7NjMh4k6eSoz8sNPFS1Bp2em6
	D23rItd1DvPg21x5s/RySjTbuM203AYT8dGdQHAxUmnaAR5sTthUgzSyG/YuMHmr73oJTCF//zy
	SIFyJGyVocZLw2hASnEXBbgA==
X-Received: by 2002:a05:6a00:b481:b0:847:8496:1aa2 with SMTP id d2e1a72fcca58-847c0731433mr8687798b3a.27.1783044657351;
        Thu, 02 Jul 2026 19:10:57 -0700 (PDT)
Received: from localhost ([2001:19f0:8000:3e6e:5400:6ff:fe38:3d01])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-847cb9b0220sm2124478b3a.50.2026.07.02.19.10.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2026 19:10:57 -0700 (PDT)
From: Inochi Amaoto <inochiama@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Yixun Lan <dlan@kernel.org>,
	Kees Cook <kees@kernel.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Inochi Amaoto <inochiama@gmail.com>,
	Alex Elder <elder@riscstar.com>,
	Ze Huang <huang.ze@linux.dev>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linux-hardening@vger.kernel.org,
	Yixun Lan <dlan@gentoo.org>,
	Longbin Li <looong.bin@gmail.com>
Subject: [PATCH v2 0/2] riscv: spacemit: Add K3 PCIe/USB comb phy support
Date: Fri,  3 Jul 2026 10:10:21 +0800
Message-ID: <20260703021024.495433-1-inochiama@gmail.com>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_191058_529350_A29EB5AD 
X-CRM114-Status: UNSURE (   8.76  )
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

The PCIe/USB comb phy on K3 is a big phy that contains multiple
standalone phys for each PCIe and USB controllers. This phy is
required to configure a syscon device for mux configuration and
calibration.

Changed from v1:
patch 1:
1. Add extra description for "#phy-cells" and "spacemit,apmu"
patch 2:
1. Fix multiple spelling errors and copy-paste errors.
2. Make some magic number as meaningful macros.
3. Remove USB3 set_speed() callback as it is not needed.
4. Fix the wrong land data config and mask.

Inochi Amaoto (2):
  dt-bindings: phy: Add Spacemit K3 USB3/PCIe comb phy support
  phy: spacemit: Add USB3/PCIe comb PHY driver for Spacemit K3

 .../bindings/phy/spacemit,k3-combo-phy.yaml   |  68 +++
 drivers/phy/spacemit/Kconfig                  |  16 +
 drivers/phy/spacemit/Makefile                 |   2 +
 drivers/phy/spacemit/phy-k3-combo.c           | 252 +++++++++++
 drivers/phy/spacemit/phy-k3-common.c          | 391 ++++++++++++++++++
 drivers/phy/spacemit/phy-k3-common.h          |  27 ++
 6 files changed, 756 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/spacemit,k3-combo-phy.yaml
 create mode 100644 drivers/phy/spacemit/phy-k3-combo.c
 create mode 100644 drivers/phy/spacemit/phy-k3-common.c
 create mode 100644 drivers/phy/spacemit/phy-k3-common.h

--
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
