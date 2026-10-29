Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35859606A31D
	for <linux-phy@archiver.kernel.org>; Thu, 29 Oct 2026 17:23:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=nF4elYM6;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=TS6Ze+dq
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=+pTjO4TQBpE748eDu3TqxXpBvX5P0IDlJU9WcFBoD4A=; b=nF4elYM6msXRe/Mi1t0vFistFv
	KyWYGNCEHZ21BaL8/fBo6n0lF1WVqVFLrP1owcjzwbxa932bI6xwtLoRDejd2OJYGaIB8+hfTK3td
	kjZjj6ig38Yc0rjHTGXushrPM3z3DHeLvv4k2qmtnNUW3LwlTGhkD2hYsEj8PaF5bSPY2mhpMagTW
	zHW6P4uoL575Y0nemLoYQpISkN6ZykGSM/MX0ZCFDaSCpcxL6JSCyZHRWMcfxnpa18cFQLyaTaYn+
	/h3IR4OfLuDiwyF7V9zYs/PxsEn4nq3v8nn8SDuWGwGpUlMCFZa7RSQ78tPUZWd1QzU7ESjHYLb8c
	NcHlGIZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMTqu-00000009xgv-41Ho;
	Thu, 29 Oct 2026 17:23:48 +0000
Received: from mail-vs1-xe35.google.com ([2607:f8b0:4864:20::e35])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMTqr-00000009xex-3yeO
	for linux-phy@lists.infradead.org;
	Thu, 29 Oct 2026 17:23:47 +0000
Received: by mail-vs1-xe35.google.com with SMTP id ada2fe7eead31-7c3cecbda48so526321137.3
        for <linux-phy@lists.infradead.org>; Thu, 29 Oct 2026 10:23:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793294624; x=1793899424; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=sK+5+ySWu9IBFfxfFyEDRqwJRDyxGMa+VIc2I6+6GOM=;
        b=TS6Ze+dqg4rpfwDHx14cKzPnKCrZoBvgnoxT0hT0CDyJkA1CbkibxflUfmWUHI16t4
         R+LWuMUKkYZNQJhqOiVsu5tq4EXNeYXIQ4ZKCxW+0c+mJlamgN7+kh8nKI5aiznTRiZz
         1WfnwZqTjDAZEBwCMc1gD6RyMN20T57/N2DohvgBiUGuDtzeWLLhLdNZ4JdOxvyob/Sp
         2RceY4IjLsqai4yBug/yrdfvjYc6mg+GjUhW8RMWAh35CZE1XqMtZeoEkvW57sPrt4YL
         9lyeeL89qh0gQkCcNZVNz+HqtjMND0yzvuj7Wc+QgpoyIIfQ97UNtXhUh11Yi1D91C9A
         tVLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793294624; x=1793899424;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=sK+5+ySWu9IBFfxfFyEDRqwJRDyxGMa+VIc2I6+6GOM=;
        b=cE08wAkiwI2Q3mxNnILnUomWjtbuTaydnY1XuBXGpZ8xkY5cJiO7bTYty0gIQPaIIL
         3+DsxwW/Rbup8PlLsUtRk/w6yHhIyDaqVYvbOGOcboopKAvjhr05jTB5AymbNAZMtPSy
         ZyKua1tLCUFXqlmy3vsd/QWEjSntpy8H8rmklF7CFCr7Gx3f+RT7j/lACLK3HhLk2FjD
         iUzQAto37j2QmMg+3JRRj7tRJBF/+3WQHvknJsM7cr3RH3FAhLJBmkb1W/lhuGAhNFxM
         NhcXnODQZ23Txyv0Ojei56gMjc3Z9G80kFnY/Vcs5FrkovRvKwqEGXF8rmsAu/2lIFVI
         9CxQ==
X-Forwarded-Encrypted: i=1; AKwUvBw3QlGx98vcyVXILSDMnrBea63rhdfM0pjjdx+9nt4ZJw9Oir5zb34oNfOjTjWyjBpYD9MgugKIq9w=@lists.infradead.org
X-Gm-Message-State: AFq9FYJ5sZaiRQOZau2dPTVILR0uqC3npVmEpXAClIFHZCEhS8xXQL0g
	bkm1kj4Z/5IYPe1flyfYvN/dz3i12LXXtzngr1jCvJNNEYg94TvxbD+B
X-Gm-Gg: AYBFou16ZNscYUrOy01yb8LRw841R19Yqf14k9AikDXr+WkwUQMsM/vmakz7dP9p7/a
	5gDZhlFbW44XO5H4VQQbCi1BIlQDIgKVs7QpwqEIA9sCywcSHaniWjeReMpgaQM0jav7M5YZlY6
	VUoB03H/iOGhiUoJ/uD6EuKsaPFJzOreNSwaBDAJI4ZxbSc5mmatDF/U+vUXyyGD4yhfCcEfm7c
	P1pFJt6myufAP0Z3vULcS+kCx3ct5o5ZY6FePGchr0PUiMOAl6o54yjnkYkd8ewB+KGkn0Rq9bg
	2IP/Mm1/S41+XcqNp1OEQM6s5JmZECMHJCKpCx2M+KsY3wCZDqrWG/1WQM/poTjhmsvbWj/azqx
	fYPk9O7nrGuGx+wt7Q3WuNHoM0VsX9gDiNdR+w4E4Itc302/L353qsj04bZiFlVdzqMNyLZP5A5
	ZYwQdJ4Xh5iSWWkPSBq6bdIcrgcLyg4u5BzLur5rLZ/FqNnsu1nTa5yAN6O9KnR9s265krelLNx
	EXNejQ7ncqxFMxz7fzAxR6AEZj24GSEHvJH/UFChJ1kPiH/AmK/5vDPDyMOxQtw2XNOInziEIe+
	8KPqg6aV0aUrJt/PNjqIumZZiL/dE6bY2AEBHEKsc/cZ1E+blOk9DpZbZHPdtP0JazoAKxUbZs4
	p0a6wi1xju485QEbMEo4iKnDW44cyUdZAK1pcdgK9fA2/yyYlPFaCKxzHLg==
X-Received: by 2002:a05:6102:4b13:b0:7af:fef2:8ecf with SMTP id ada2fe7eead31-7d03a434b91mr3505471137.8.1793294623916;
        Thu, 29 Oct 2026 10:23:43 -0700 (PDT)
Received: from MaquinaLab.. ([179.179.238.247])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-7cea3d32a48sm9907357137.9.2026.10.29.10.23.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2026 10:23:43 -0700 (PDT)
From: Vinicius Pedrosa <vinicius.eduardo.pedrosa@gmail.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Andre Przywara <andre.przywara@arm.com>,
	Xu Rao <raoxu@uniontech.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] phy: sun4i-usb: add the Allwinner A733 USB PHY
Date: Thu, 29 Oct 2026 14:23:23 -0300
Message-ID: <20261029172325.3425046-1-vinicius.eduardo.pedrosa@gmail.com>
X-Mailer: git-send-email 2.43.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261029_102346_016102_7D269A74 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

This adds the A733 to the sun4i-usb PHY driver. It works with the D1
settings, except that the A733 gets SIDDQ cleared before the PHY reset
is released (patch 2). That made an intermittent USB1 enumeration
failure go away on my board.

I only have one Cubie A7Z, running a local DT, since there's no A733
dtsi upstream yet. Only USB1 is enabled in it, so PHY0 (the OTG port)
never went through the new order. The boots ran the same reorder on
top of 7.3-rc6, before I turned it into a per-SoC flag.

The numbers are in patch 2. The comparison inside the last run alone
(1/31 vs 0/60) isn't statistically significant, so it leans on the
earlier 3/40 too.

This goes on top of Xu Rao's v2 "phy: allwinner: sun4i-usb: disable the
PHY2 PMU clock after SIDDQ setup", which touches the lines just above:
https://lore.kernel.org/all/CE85F490F5646A2C+20260813130542.2425068-1-raoxu@uniontech.com/

One question. The vendor BSP uses this order in common code, for every
SoC. I kept it per SoC because I can't test the others and the manual
says nothing about the order. Would you prefer it for all the SoCs that
clear PHY_CTL_SIDDQ (D1, H616, and A100/A523 through the D1 fallback),
or is a per-SoC flag fine?

Vinicius

Vinicius Pedrosa (2):
  dt-bindings: phy: document Allwinner A733 USB-2.0 PHY
  phy: sun4i-usb: clear SIDDQ before the PHY reset on A733

 .../phy/allwinner,sun50i-a64-usb-phy.yaml     |  1 +
 drivers/phy/allwinner/phy-sun4i-usb.c         | 35 ++++++++++++++++---
 2 files changed, 31 insertions(+), 5 deletions(-)


base-commit: 8f56fdf3d8cb9f1dbdc93bf9ac816698aa6f70b7
prerequisite-patch-id: 77e92419764dd34a945f7d546d4cb1dccb6da112
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
