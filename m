Return-Path: <SRS0=KiND=NV=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC772C4320A
	for <linux-phy@archiver.kernel.org>; Mon, 30 Aug 2021 18:08:20 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B55C760F5B
	for <linux-phy@archiver.kernel.org>; Mon, 30 Aug 2021 18:08:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B55C760F5B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HE8jvqamXPVvYTWyfyZ1BbvzZPl+PcsgnyTb8YfRar8=; b=WV1UUjdKhIdCnB
	6FrefOEqcgDJqhpxnYYCg8LzinhmcU7eju0r60cKFCb9pRXJl2Ushy9UKz83AEaFDMZfwxNGSjBzB
	Afu7Bhhedbw1jiH7x2JdkvvNDyjr1t6Rc5Fa2TuPeOjNPQuhoWRm8TLJcdW/LvddHmG7BqmDIS/5i
	rA40vQK05MExEu8MBMuknbTlLCAnUkEnyZ0dGlgJA7RHdkGymEoVsoL+qllUZp+CmMFlEUmwXqiDj
	6WTZUhyCx1SY6Poe/g/iOU9Oelntzx+sz6AL/bayI9aPakjdpQaCGpvsJwM4uCPdwU2543aHvJqlz
	ZEk3AslvOp+BjBBR6WOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mKlhk-000HNW-4X; Mon, 30 Aug 2021 18:08:20 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mKlhh-000HLu-Ad; Mon, 30 Aug 2021 18:08:18 +0000
Received: by mail-lj1-x22b.google.com with SMTP id c12so27427334ljr.5;
 Mon, 30 Aug 2021 11:08:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=69UzMreQL07rBLiM2S/iSQWED86mjhTpne3vzrBcG+U=;
 b=tKq5Jh3L33D1rHakkGclZoHpOG2VDePsQtljLhaz6iWh4GEuOq/o/si8k5IROrfpKL
 EZi6Zfry5EkIGlqXqqCV1H4VZyfocdPPSq9LsRwuDjeMGQYwXXXyMlc0Xy0afV/xSQSu
 qafg4TLPgkPEgUw35AHZSQyaAD5D0ri3ocEabBmh1nJyfT8JFtIdESnE5RHuaNcPVEAV
 QPLnUEHtAJt/ehFU10ZQGYp55Gazg1H6J0dlliMeTTD27yGqQsQw4dlOzOsOtRkHWUAZ
 K/JQGkdVe+U+ccR+ChTfuK/q1ELXh3AuJLeAQ44j4BuMCrdRf6OmJECnlxo18ZkAULW+
 As7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=69UzMreQL07rBLiM2S/iSQWED86mjhTpne3vzrBcG+U=;
 b=AmH8HASRJ3LysdumiZNmW2siPfeTY/Un+6gGTqT0ygfBwK5+mlrC6qGhq+fBoGeqQv
 1SVkAeO7U6ERzGlfju/UgdL03aEJ4GYWH6jacXHPLkEpVKymm9w8VcXEhiqpIeQMUD4p
 zFynY6TeYD3ElZF3QJDiWAAxN+++IkQ1SJBhs2SzW+ZN+IfALpUu/91FuMpX2cOWX5Fz
 DZ2sm9bskf2XiKcf1c4bU99MOJ+a7mDWYN3VS/jxZtDI62cScstcOo/O7zt6Oq5LI3mH
 r/4eIlz0gjeuDUHgJ906B4VI80N53ogXLkaoZoMnX9YIZFfimYrheOruKA3aGGPWwM1H
 4U+g==
X-Gm-Message-State: AOAM531v8An09/ce9yTk+rJYj76xpSKzyMGFPEJNb/lQZjUVq7scPcdk
 JzvopdTLLUCZL9l0AErkIfmYbJRH2R3rBQ==
X-Google-Smtp-Source: ABdhPJz3vPiGQV++PBLINol58xbSTwl/Jajk64CWeX90YppbVh99OzM+ApQ1RuZmX4p9jNUDM2yXPQ==
X-Received: by 2002:a2e:bd0c:: with SMTP id n12mr21712030ljq.46.1630346894587; 
 Mon, 30 Aug 2021 11:08:14 -0700 (PDT)
Received: from localhost (37-145-211-218.broadband.corbina.ru.
 [37.145.211.218])
 by smtp.gmail.com with ESMTPSA id q18sm1909229ljp.19.2021.08.30.11.08.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Aug 2021 11:08:14 -0700 (PDT)
From: Mikhail Rudenko <mike.rudenko@gmail.com>
To: linux-phy@lists.infradead.org
Cc: linux-media@vger.kernel.org, Mikhail Rudenko <mike.rudenko@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v1 0/5] phy: phy-rockchip-dphy-rx0: add support for tx1rx1 rx
 mode
Date: Mon, 30 Aug 2021 21:07:49 +0300
Message-Id: <20210830180758.251390-1-mike.rudenko@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210830_110817_424914_777EF2D0 
X-CRM114-Status: UNSURE (   8.54  )
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

Implement support for RX mode of TX1RX1 D-PHY on RK3399. Code is based
on Rockchip BSP kernel branch 4.4. These patches have been tested on
FriendlyElec NanoPi M4 with OmniVision 4689-based sensor.


Mikhail Rudenko (5):
  phy: phy-rockchip-dphy-rx0: refactor for tx1rx1 addition
  phy: phy-rockchip-dphy-rx0: add support for tx1rx1 in receive mode
  phy: rename phy-rockchip-dphy-rx0 to phy-rockchip-dphy-rx
  dt-bindings: phy: phy-rockchip-dphy-rx0: add support for tx1rx1 phy
  arm64: dts: rockchip: add mipi-dphy-tx1rx1 for rk3399

 ...hy-rx0.yaml => rockchip-mipi-dphy-rx.yaml} |  39 ++-
 arch/arm64/boot/dts/rockchip/rk3399.dtsi      |  15 ++
 drivers/phy/rockchip/Kconfig                  |   8 +-
 drivers/phy/rockchip/Makefile                 |   2 +-
 ...chip-dphy-rx0.c => phy-rockchip-dphy-rx.c} | 231 +++++++++++++++---
 5 files changed, 252 insertions(+), 43 deletions(-)
 rename Documentation/devicetree/bindings/phy/{rockchip-mipi-dphy-rx0.yaml => rockchip-mipi-dphy-rx.yaml} (65%)
 rename drivers/phy/rockchip/{phy-rockchip-dphy-rx0.c => phy-rockchip-dphy-rx.c} (63%)

--
2.33.0

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
