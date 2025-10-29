Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85B28CCF9EE
	for <linux-phy@archiver.kernel.org>; Wed, 29 Oct 2025 08:40:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dud3LpD71DDaqFHZPyqI+ZxX20EmcUMnvaMtmeak04U=; b=jlHNLJJxQdWVbX
	KrzhEzDgmLDe8D88jLjWmcK5NISTZk3THekAn5dD4B4IyXgJC6HgPqGh8MzlF/+Y4QKWRUmOaasaJ
	P/ZZRn7by3AANrVU90xopT4wWfrx2+Bnidbd11LvPRYsDOaUTKi+TSNGqFGN4qfX1ejMrxCkOF9J2
	qE/6Fx4W4Nm4sty8sfMnbKrgoewIw4tc2SaqOCwoQu91Rl1/BrsGP2kZyfRki3CqDF7BorK2HJfnS
	/X4NVxSn7IV2q0gplr+KvacrQubB9XucYoJgo5OaykywRoEyPBJdhb8D7V1Qm8Dkk1N09U34+ScfJ
	CoOVnZhhgw8f+66SJTpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE1jZ-00000000LYX-1DxX;
	Wed, 29 Oct 2025 08:40:45 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE1jW-00000000LXK-2Mx9
	for linux-phy@lists.infradead.org;
	Wed, 29 Oct 2025 08:40:44 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-47721293fd3so1991335e9.1
        for <linux-phy@lists.infradead.org>; Wed, 29 Oct 2025 01:40:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761727239; x=1762332039; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BWxjeRjOEhcNVgfP/QkxqsBAhufcjSTlJ37Z8hpahuU=;
        b=F9gLxlE5aHl7xSgLlUPVqKZGAZYWF6m4RF0FNTyP+uqpRk1Lt23qMkQTFo4bH4rHT4
         pEXF6FItn6guGuHgMg8MTVbtnWte3RrxbHg4HPC1YZDDQofBzM4Ll0tMgc3FL6J97x1l
         MzVXJ9jEyKPxPBObZu9zcaluK2T+HooPOng25KHTny5up2BV1ueaJpQ1odTaxiE/lv4m
         jggOWm2U79aOhbOGsYAdXMJ08kRrLdEw8yNSE27XatgCCEEbBMqDC4iz82p2NBsUjVB+
         flGu+jYy4PfPioEIi+iaYGR1iMbNDSepDkJkgI1QHC6ppj7/AmTe+WDujPQpdq6h919n
         Mmbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761727239; x=1762332039;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BWxjeRjOEhcNVgfP/QkxqsBAhufcjSTlJ37Z8hpahuU=;
        b=pEyc9XZ9Ibiaci1RdHycOI51edh+IBpdi8xZIdGrQlhn+owMtioZCSiH23c4wDwKxq
         toBrSOqrFBXjdKo7HsJnJmm9jekzIFeB6FdxP3V0t73sTyJwUrbf/nY4d7YXISPfXq9w
         vPEsoft3Tb/KOMZTU0qQgow3bfL6h0bEvgrtWNekXf/28Y1HGO1UrUXlVBj8RBL9cusM
         fXOc4RoVSU9psqYKMC8ljUjs+6EIJ8KKY83fx8TSK8W/jk1zBjrUWp9NWNuPRBe1OiOa
         resYKKb66JLYiiBWpErHVp8sufqR21nv6rRBjOKvU3V1vxEctVxkdSeUTQCsS8Xfns1s
         LKNA==
X-Forwarded-Encrypted: i=1; AJvYcCU/dDIWMcJXjPIAfQDfOWgU+fKN5JWfR17aeUSfFRgbB8xfUWBqw9q/hH+ovcdUSbWWRYw1diBSWDY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzp8aKlhhl51lxW5XUjO/OyJ9Snf4v9TNcriIrzbOa8Nj/tcAf1
	v+kM9nOmSFbCEqdm6S6aZaxLkKgykgP8/icR/X1hxdcXk1cpShlMhRVv
X-Gm-Gg: ASbGncus+RsABeheDc6Vw9y74yNpZGkZrTUv0jgweHB1hiDID5gg25ou1F6kaTyUyKl
	KczLLghiwr5MA/PIXSchRZJ4y2xY3qgB0ZXp3Bg8d4gTrWWOcqu5P2IO1vdOro2yUK/ScY12LwS
	DRzzOBPXi3PIiDeNaFJOAe81hJKNj2onPOJU/mrDI9bEjdI36sBOwWqA/fKi30M4NzRHPlnwAik
	VrxrklmWWd/7N7cHiko8aIQS/7YD6OznImEWxxxH8qgsAvA1EAM7Va9ayBGGLRSmF5Dqe2tZVMp
	xZPMnmq7yIUImfljCN315E4OWBlE4b81vHNuyocquamEAolKQhAdDEhloKp2wGu/HYRguqGbweG
	9r2ubfz6X06fIxwh6kahjtFgRIN20OCeMurLmkacCr8Bw5cYi/cyj8/rnJWnsfUE/+ejNVGzKUA
	Eth0ifmUKljTDwvoeVNTxTrgGaJBEy6lMJFn/nEs3+2MyoVtdDadUFCXo9PgwZ
X-Google-Smtp-Source: AGHT+IHzDG9SBUzGPViM4O6XUORkMfXDOjYXSdJLjQD/Nfqn6/OKgCqHeLDZcWlwFIAoLgO8gs3hzQ==
X-Received: by 2002:a05:600c:4450:b0:46f:b42e:e38f with SMTP id 5b1f17b1804b1-4771e6a188bmr20563075e9.19.1761727239422;
        Wed, 29 Oct 2025 01:40:39 -0700 (PDT)
Received: from biju.lan (host86-162-200-138.range86-162.btcentralplus.com. [86.162.200.138])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4771e3a88fdsm39485785e9.10.2025.10.29.01.40.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 01:40:39 -0700 (PDT)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH v4 0/2] Add Renesas RZ/G3E USB3.0 PHY driver
Date: Wed, 29 Oct 2025 08:40:32 +0000
Message-ID: <20251029084037.108610-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251029_014042_622455_1B5408CE 
X-CRM114-Status: UNSURE (   9.62  )
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

From: Biju Das <biju.das.jz@bp.renesas.com>

This patch series aims to add Renesas RZ/G3E USB3.0 PHY driver support.
This module is connected between USB3 Host and PHY module. The main
functions of this module are:
 1) Reset control
 2) Control of PHY input pins
 3) Monitoring of PHY output pins

v3->v4:
 * This patch series split from[1] as this series can be merged
   without any issues.
 * Collected tag from Geert.
 
[1] https://lore.kernel.org/all/20250916150255.4231-1-biju.das.jz@bp.renesas.com/

Biju Das (2):
  dt-bindings: phy: renesas: Document Renesas RZ/G3E USB3.0 PHY
  phy: renesas: Add Renesas RZ/G3E USB3.0 PHY driver

 .../bindings/phy/renesas,rzg3e-usb3-phy.yaml  |  63 +++++
 drivers/phy/renesas/Kconfig                   |   7 +
 drivers/phy/renesas/Makefile                  |   1 +
 drivers/phy/renesas/phy-rzg3e-usb3.c          | 259 ++++++++++++++++++
 4 files changed, 330 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/renesas,rzg3e-usb3-phy.yaml
 create mode 100644 drivers/phy/renesas/phy-rzg3e-usb3.c

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
