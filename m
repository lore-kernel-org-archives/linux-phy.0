Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A848CA600E
	for <linux-phy@archiver.kernel.org>; Thu,  8 Oct 2026 06:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=efIM9FjnMdyLIAzzqjK2foaUXLVLm8u8x1hFTEl6sGU=; b=zSV8obn9hp74N+
	lyHVkQBW6NYKwzgEYwVIPs4YM3aCSEy/LHPlFzituUSi3PC8b0PQQoiy7ZpMUAwgg1Za4kg9PUvZX
	WU0HyBfMKeAQOcgyMnTjPL8EFO2x71dWkPSyCBzRlNJCTjMkw3UBktZb235UNpufwdwqcxBx3z5vF
	M3GHcx1dz31yXWHX/1OKFwVXvVzJzyjbwC7sNkgPJIzJg7iNTtCtELvYfKlz1vgZnAHtmjJJxIged
	EAvGuqMQ9nPvk2LaorVYdJ4RK18L7PXcy6xBHUSy2KrgaW/NzvdtsXxWwL/YCap2eWXnHeqN9HVSb
	+Qtf1cY/vK43HkvyJZEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEhHH-00000003c5h-3Yww;
	Thu, 08 Oct 2026 06:06:51 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEhHF-00000003c3o-26aP
	for linux-phy@lists.infradead.org;
	Thu, 08 Oct 2026 06:06:50 +0000
Received: by mail-pj1-x1035.google.com with SMTP id 98e67ed59e1d1-3aacde0cc0fso233585a91.2
        for <linux-phy@lists.infradead.org>; Wed, 07 Oct 2026 23:06:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791439608; x=1792044408; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=C7z8/qe+AfvmJGG4y2bRYtRiZGRNOq/Sl0ivxixfInc=;
        b=Gjb4BdRpjZ4+wDNw/Q1cjOsPMu8BCdgGUy209/ZIkjoxjmV8I17gHUNvFSOmldsxtj
         6q86nivPPEBD6vuXKgfFCwcsCGJNr+xNtZzEb+lGeVECrJ22eMI7A0r3+fzBg7TrpQgT
         psG/SgqX5uyW1Byua8aonXHjV/zD+BczbJCZj2Xk3ly0W86EBqk5NhlZEsqk+C++xRPY
         En3Yrfqdcu8SE/0cv9opQ8faYLu9M3+J2/AgqqoqseuJHjpz+RGKTlwjsyDXnUchlnGz
         702C0okFqJRTpjSmkeruxznnSIMNTLH95OWGScZsdsUWAchInzOF0yn0AougCSt3HExp
         9U8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791439608; x=1792044408;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=C7z8/qe+AfvmJGG4y2bRYtRiZGRNOq/Sl0ivxixfInc=;
        b=j2n/e+YcamX6rqLPrXd4fshgpN4JhXGZ3S0ujyj3kBqBZUhqgHC0zKeoTJI34ov7B3
         PV1nxUgClnEvitUqI6vBXsVq15wdA1zyScaMhwrPeE1g/XOSlPbvrCReCijB2j4r4mnz
         7ht0NSnoRb1rHSXc5EGNjluUcJvCFYr4BLdlsWh0QlolDvgD56bKX5slk42U5WLqeI02
         kyo6eaUPd95qeq9kPIrLlGuDT6MyETMMvpBbPug584WJatakEH42nS9uj3de89Kj9ERs
         rvRiPIC2MxaniAM4V3r+R1pg58dap+2AQtODNJ6go0VBVwGCUNPlixGQnGmwFu7KgfPm
         0FhA==
X-Forwarded-Encrypted: i=1; AKwUvBywk308jSN0PAOEjrC+qHGaT50wvvzfJdorqh7X790LmAgYNMtWs3CUTr2LWXek+4zZ7xE3eLEqjsw=@lists.infradead.org
X-Gm-Message-State: AFq9FYLGhUIRxfoBdPm9JvJYN10swy5/+dALrZxcirOCUtxcnQhM/1qW
	zDpDk5NszMRUvj0tyJE7kpyNZ0WuOITld1WPDyefT2vJ+aQU/CEsQ2jp
X-Gm-Gg: AYBFou2tt4wP07rue/g/05u9XAxbGJolUA7b0Z2sagqhSzekC4SM89ZIV5LiYXqigLj
	T0iK7Q1dsxqhmVk0ehZuH9LjPTMEOGW/bkTgQSeA1Iqv7A5tGsRXJ8wxwcDBuKjpU95nX38LKwB
	larflKWWbkOsi+QErwX8yfi+FH2awAP1YIaA92FGNcg3OlOPeZd1wbxHCxII/EY5T4ZfNU/wblj
	N22aCcbxwTNmrfVjTIAU4f+TWUGNllxcIlDgh1b6DlFkCkW1gYEYHMGUdgInWkny5fQeyIokhxy
	cMKpk1/fqr3Stm5g2CZgBnro6SGKyEkenvXx45zNznu0o+qzhBW6peniKi/YDm9+d9I1fHGO2uJ
	gbaIqY2MNbT5HYh5aQUzfKuExsxYeViLEDmFy8qZ4/0J8RiCYQHyG6CJZ7BwF7JRSwkFXFg0xvK
	yk06+mBciRDgQjbRtir04Fd5t7gn+Mnob1vP9757VQgsWgyWdiBiGbdvVpzeGhGffbp6XmJESQK
	97XTpE176Pvk3lNkbr5CIROZrgWmZynoGM9zGW3WucAqA8pYsGU1Nd5KGeSpv2E
X-Received: by 2002:a17:90b:3908:b0:3a8:1a1a:7895 with SMTP id 98e67ed59e1d1-3a8a0b8b75dmr3123041a91.18.1791439608487;
        Wed, 07 Oct 2026 23:06:48 -0700 (PDT)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3aa0cbccea3sm2632203a91.15.2026.10.07.23.06.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Oct 2026 23:06:48 -0700 (PDT)
From: Joey Lu <a0987203069@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Jacky Huang <ychuang3@nuvoton.com>,
	Shan-Chun Hung <schung@nuvoton.com>,
	Hui-Ping Chen <hpchen0nvt@gmail.com>,
	Joey Lu <yclu4@nuvoton.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Joey Lu <a0987203069@gmail.com>
Subject: [PATCH v7 3/4] phy: nuvoton: phy-ma35d1-usb2: remove unused linux/io.h include
Date: Thu,  8 Oct 2026 14:06:28 +0800
Message-ID: <20261008060629.2736806-4-a0987203069@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261008060629.2736806-1-a0987203069@gmail.com>
References: <20261008060629.2736806-1-a0987203069@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261007_230649_547438_B10B6F8A 
X-CRM114-Status: UNSURE (   9.58  )
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

This driver never performs direct MMIO access (no readl()/writel()/
ioremap()/__iomem); all register access goes through regmap via
syscon_regmap_lookup_by_phandle(). linux/io.h has therefore been
unused since the driver was first added.

Signed-off-by: Joey Lu <a0987203069@gmail.com>
---
 drivers/phy/nuvoton/phy-ma35d1-usb2.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/phy/nuvoton/phy-ma35d1-usb2.c b/drivers/phy/nuvoton/phy-ma35d1-usb2.c
index 9a459b700ed4..0b9976fb15c1 100644
--- a/drivers/phy/nuvoton/phy-ma35d1-usb2.c
+++ b/drivers/phy/nuvoton/phy-ma35d1-usb2.c
@@ -5,7 +5,6 @@
 #include <linux/bitfield.h>
 #include <linux/clk.h>
 #include <linux/delay.h>
-#include <linux/io.h>
 #include <linux/kernel.h>
 #include <linux/mfd/syscon.h>
 #include <linux/module.h>
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
