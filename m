Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B079C531FC
	for <linux-phy@archiver.kernel.org>; Sat, 25 Jul 2026 03:18:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vTfrExpC52HhZRAhEGTqrul8njt56ERO/ksEAnLENrY=; b=C8IlEVSxJM0FRx
	UaVmVv27hH/i1Fil8u1Jy3zCj77xjEbSAq2x4bGtJrF1bGTlCr978h4/IzvCXnHDj2sD82uK5WB37
	MW2NMDyw4SmS3XR2TCpGINHj7NhD7beSpVDDJEtFuAPC0rqr908a14UuY4751z9jsa7VD5UH5uDfv
	xdTQxXWZkLz4tLfvsE7AJ5oU5iV7+bVwD7KbzEFjETBJDe4WvLAJHZCleaYDJ1gtucjcAZILIIyt1
	G0UWar0eDIiWvfISLURIkcbgDLXDObHn/vATpbZQrm3mi4m7dkOtx2QyXokT/V/Zj0+WUNq215AVG
	EOLjgqzK4UhwjK4kIVjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnStq-0000000HXW7-2o57;
	Sat, 25 Jul 2026 03:18:06 +0000
Received: from mail-pz2-x00.google.com ([2607:f8b0:4864:3b::])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnStn-0000000HXUs-1hvp
	for linux-phy@lists.infradead.org;
	Sat, 25 Jul 2026 03:18:05 +0000
Received: by mail-pz2-x00.google.com with SMTP id 41be03b00d2f7-ca24d39d8a4so634591a12.1
        for <linux-phy@lists.infradead.org>; Fri, 24 Jul 2026 20:18:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784949482; x=1785554282; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=G9jy5raEKPdDIP6H9Rn1M27tE88CgVPDyIdAEUIQ/3U=;
        b=OKBYl323bN/vMz2/19OljPnBmLmSewNAnRNOOwKjbDcQnnMHddIsdwYFf4HL2RYEY/
         iNHchfnYNl1GuiwkBIiY6EVFRa9CvCuLYTsdeF0jLAu8gty6mpqlqkHI/9C3yPz837y7
         9vW5velHlPK2t7AuBD3y44mUEYYziPYTPpdN6cqeY1zGpasXpH+x6znXfUsIfuerUhu3
         wRHhPGo8hxhbj3OfOGKwTRB+0NTdcYfCuHG828CORDHPd+Gy8PuOk07y5NitxCP0yQ0N
         +H3b5msDrkvbCb+jrzyqO/uGDS3gNNFJpv0dRuYefigif0zewSvJI58w572h5wTAQ55v
         vU9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784949482; x=1785554282;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=G9jy5raEKPdDIP6H9Rn1M27tE88CgVPDyIdAEUIQ/3U=;
        b=M/JWqrQeUBn9k/FosmIqY3ZTxmodRJoczh/kpn+mtQ9o1NpORtn48uOHyj7s9X/zL7
         iQ8H8U5+zEkWHrPS/SN9Ar/g9JGEgcBfzWFRzI8uDGnq+Qa01UyEqOyi9ok/bshv7SaF
         G8J539iIyj6StAwapaObPedgdQVdOUcKEibfHMt3sw+NC9Tj45U3YeJI3h7jFtTBKSfb
         XbkT7kLZiw2F975pI2Tg99WarqjjGy8+uCoRFIDXaNg1tXLAIP9N6fpFFSVVfPfusedN
         86kX20qFVz/sQm8DmvpWsU3Ny8i5d/lLir3imDDdWFOgWIHd87P+H51RY53x8D/HeX35
         32yQ==
X-Forwarded-Encrypted: i=1; AHgh+RqM0/yoRd1hDcxt53Pgcb9iX77DvXDvUpzjZkbnbSdsxgDMBSg4OAhcWoFVPVtyJGdNN3dx/Z0u8WU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy6KyofdxNAugZE4Uv/levVJ/z/qDYGiFYipk+rsz81yWvcXcey
	QfN1nPhnOOUNFZmT+omrwWAC4+eE+6AhhgC8dO1zCySTqTF+CI4qsR6L
X-Gm-Gg: AR+sD12DhJhc3DS+txxXYAUWy/Zp2d3cuzubsfIbMtXGPF5yyFVATkZ7mOzjHTMbYj6
	tKyLb1NCeFPePoB/5FAspyVW3wZ1VFvmlqzzfdCKHVzojrrZ3qohQoOVRxiN0oTgFk8AJCyYbrx
	QaF9nFeXEavCDcwJwayxI14Ysa65vpAbCcoZkx6QRhIK8Kg7ep7gsp/kyUFVJyPdyTPNfm1X9/h
	y9ad8jmKXLiCASERD1jmoZBbeZSXB7ClNtk5UsXkpu076s6qdRxH1JW/1cwuMp0j0e6Iknv/Lz/
	Us/Aq0foalAlpMPRq4+DEo0CqoMOUl4IQ5v6jlm74JvyDe3C5O5ScqkVEYqEFjxnu+F0K+xuCQo
	Zy9f8ToF94KOV2n7r5wAZpkNpodnk2Oqr4RXtxn+eBF5WvzEWQugkwBaoQmihzV0rgw==
X-Received: by 2002:a05:6a00:35cc:b0:848:44d2:72a2 with SMTP id d2e1a72fcca58-84e5944c07fmr653876b3a.27.1784949482608;
        Fri, 24 Jul 2026 20:18:02 -0700 (PDT)
Received: from [127.0.1.1] ([2a12:a305:4::403c])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84e53432834sm640542b3a.50.2026.07.24.20.17.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Jul 2026 20:18:01 -0700 (PDT)
From: Cody Kang <codykang.hk@gmail.com>
Date: Fri, 24 Jul 2026 23:16:38 -0400
Subject: [PATCH 06/17] clk: spacemit: k3: parent eDP/DP pixel clock to the
 PHY PLL
MIME-Version: 1.0
Message-Id: <20260724-k3-display-v1-6-f22a10a52867@gmail.com>
References: <20260724-k3-display-v1-0-f22a10a52867@gmail.com>
In-Reply-To: <20260724-k3-display-v1-0-f22a10a52867@gmail.com>
To: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@kernel.org>, 
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
 Haylen Chu <heylenay@4d2.org>, Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>
Cc: dri-devel@lists.freedesktop.org, linux-riscv@lists.infradead.org, 
 devicetree@vger.kernel.org, spacemit@lists.linux.dev, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-clk@vger.kernel.org, Cody Kang <codykang.hk@gmail.com>
X-Mailer: b4 0.15.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260724_201803_898416_29551CFD 
X-CRM114-Status: UNSURE (   9.22  )
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

The APMU eDP/DP pixel-clock muxes were parented to a placeholder, because
their real parents (the DP PHY PLLs) did not exist as clocks yet. They do
now, so point each mux at its PLL and let the pixel clock reach the
controller through the clock framework.

Signed-off-by: Cody Kang <codykang.hk@gmail.com>
---
 drivers/clk/spacemit/ccu-k3.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/spacemit/ccu-k3.c b/drivers/clk/spacemit/ccu-k3.c
index cb0c4277f72a..afbbbd797826 100644
--- a/drivers/clk/spacemit/ccu-k3.c
+++ b/drivers/clk/spacemit/ccu-k3.c
@@ -937,13 +937,13 @@ CCU_MUX_DIV_GATE_FC_DEFINE(ufs_aclk, ufs_aclk_parents, APMU_UFS_CLK_RES_CTRL, 5,
 
 static const struct clk_parent_data edp0_pclk_parents[] = {
 	CCU_PARENT_HW(lcd_pxclk),
-	CCU_PARENT_NAME(external_clk),
+	CCU_PARENT_NAME(edp0_pll_pxclk),
 };
 CCU_MUX_GATE_DEFINE(edp0_pxclk, edp0_pclk_parents, APMU_LCD_EDP_CTRL, 2, 1, BIT(1), 0);
 
 static const struct clk_parent_data edp1_pclk_parents[] = {
 	CCU_PARENT_HW(dsi4ln2_lcd_pxclk),
-	CCU_PARENT_NAME(external_clk),
+	CCU_PARENT_NAME(edp1_pll_pxclk),
 };
 CCU_MUX_GATE_DEFINE(edp1_pxclk, edp1_pclk_parents, APMU_LCD_EDP_CTRL, 18, 1, BIT(17), 0);
 

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
