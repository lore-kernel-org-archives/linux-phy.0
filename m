Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8267C3DA7F
	for <linux-phy@archiver.kernel.org>; Sun,  4 Aug 2024 21:55:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3vZ1xWTNthOfqdTf6Kqe9pV5/FssYjOeNYpE91WbA1Q=; b=PfKanpvhWSzfhB
	huox6aPRYLtPqeVmmMqR6vi0pYNda5LHqa7rLI9LRlP05Q4gPhll2MZrodewJK9bbVYayaV2STU/z
	uniKMQ2pKQQANpAq3d0kpMNHq4GmnlsT7O1/L+bGP32O4oLoo44nDpr1gtmFpDdrlSJKKWlMZ09pb
	cQDF/48nSwwVlCBWcRzwuQEv6J3ftfwTKbGOlC+/fly12qc7zP8Jiho9hWmis3KBEhfnc3IbSagMd
	8EHmOAIHHOl6SLUwyA3QfBxQBBLdU+cDoBuft0hLc9wv4MKOa9JczXiVatSB1sBmc4aV58k76+Uqb
	8HUn2T9gK7YhJNTEI+UQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sajCT-0000000DzOO-2QrQ;
	Sun, 04 Aug 2024 21:55:37 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sajC1-0000000DzFv-06M7;
	Sun, 04 Aug 2024 21:55:10 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-a7a94aa5080so359728066b.3;
        Sun, 04 Aug 2024 14:55:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722808507; x=1723413307; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DvYubfbVq4kUCAQhjBGxwtur3JW8+5d4oGvhKNwcNRM=;
        b=KbpuSijPX2qE3G2iO4c5yAXT9Wu9Y7tNRpjZqLkJIKBgzVDk2TAM2TMBYDOF5orQ/J
         xe4FY5HLGi1sVwa+Tbw9CbhiLbp6n6SVOxVYKunhi3eH90t/eTExPkQ7jxKJA99n/fDS
         wwslPbdDz4LitJovVtXbZKwp0l7xhQ4EqpoMry1aJMGdRVH+r9xvSLiK+MWaCbGuEzGt
         4WM/52wwq+4SguuX1w5hoB0G63RzGIyVDBogYDCEmZQYFGHlR6f+VbMOLKCfIlv7p0NQ
         HRPJ9Zcf0z1wrN1xX2rp6ziNeuEhPXcdtIsuLF5CnYgFCnDDsGQhn0iaSFt6UBddNSea
         smcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722808507; x=1723413307;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DvYubfbVq4kUCAQhjBGxwtur3JW8+5d4oGvhKNwcNRM=;
        b=UKlqwhljK2gpBf3hzyzD20rIMsmk1IeDbuJTRuxJossUpqT3ZDEygKxq4GjHK9OFp8
         U+k95aFGkz5LA4UND3Z4anVXFs+HvWsCxunHpfYqGQiD19voGbA2/YfgXfnFqx4VeEb2
         rDVSct9cZ96Mms+oygu7YV8SAXy8RMdaVkKBg/h/WToZWXClrqg0XrpKIXvW+iVPRSa7
         5TjiocUaarqMnbWFn14dsxRoIvLQTRMHWIz0keuR4lxrGSSiSakFUZtfzQpPE2XmmcG+
         BlhAl4VPh/LXBRgL+wy5v1c0NovsyX+jPwGAPlF2yzrYrrWyeRYO+ooFPkIUTn/Bgxlq
         eeXA==
X-Forwarded-Encrypted: i=1; AJvYcCVyxtmuCVKf944mQ+I0sHlsgBzMHgmBbwoqo59YGHHuX7d6aMY1g+8dVSZ64SbcwkAMLLcd26uGfhPjeCF7AnFbhB+04dXfPhlMmoE/udR96Np25iI=
X-Gm-Message-State: AOJu0YwjeaZIYPwKntEPr6+DctMCo6eLviq6RhsjsnimlKhoNdUNuxK6
	p/nrLkwNTjSUh/9Qo7BvXFmal/DlPqDLf7j0Ns3wXMV7dUVQlneO
X-Google-Smtp-Source: AGHT+IHZGBuLPIhPXt+S5usbtLF+u2ZCoSWc/lVqgIzNNaYZXnDghzPe7QjeKjQ2UYnp26qAEAvaAw==
X-Received: by 2002:a17:906:d54a:b0:a77:c330:ad9d with SMTP id a640c23a62f3a-a7dc51be76emr753902166b.61.1722808506919;
        Sun, 04 Aug 2024 14:55:06 -0700 (PDT)
Received: from localhost.localdomain ([2a02:ab88:3711:c80:e7a7:e025:f1a5:ef78])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-a7dc9d45452sm370485066b.111.2024.08.04.14.55.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Aug 2024 14:55:06 -0700 (PDT)
From: David Virag <virag.david003@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	=?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>,
	Peter Griffin <peter.griffin@linaro.org>,
	Sam Protsenko <semen.protsenko@linaro.org>,
	David Virag <virag.david003@gmail.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org
Subject: [PATCH 01/13] dt-bindings: clock: exynos7885: Fix duplicated binding
Date: Sun,  4 Aug 2024 23:53:46 +0200
Message-ID: <20240804215458.404085-2-virag.david003@gmail.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240804215458.404085-1-virag.david003@gmail.com>
References: <20240804215458.404085-1-virag.david003@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240804_145509_096864_0494B3D8 
X-CRM114-Status: GOOD (  14.74  )
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

The numbering in Exynos7885's FSYS CMU bindings has 4 duplicated by
accident, with the rest of the bindings continuing with 5.

Fix this by moving CLK_MOUT_FSYS_USB30DRD_USER to the end as 11.

Since CLK_MOUT_FSYS_USB30DRD_USER is not used in any device tree as of
now, and there are no other clocks affected (maybe apart from
CLK_MOUT_FSYS_MMC_SDIO_USER which the number was shared with, also not
used in a device tree), this is the least impactful way to solve this
problem.

Fixes: cd268e309c29 ("dt-bindings: clock: Add bindings for Exynos7885 CMU_FSYS")
Signed-off-by: David Virag <virag.david003@gmail.com>
---
 include/dt-bindings/clock/exynos7885.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/dt-bindings/clock/exynos7885.h b/include/dt-bindings/clock/exynos7885.h
index 255e3aa94323..54cfccff8508 100644
--- a/include/dt-bindings/clock/exynos7885.h
+++ b/include/dt-bindings/clock/exynos7885.h
@@ -136,12 +136,12 @@
 #define CLK_MOUT_FSYS_MMC_CARD_USER	2
 #define CLK_MOUT_FSYS_MMC_EMBD_USER	3
 #define CLK_MOUT_FSYS_MMC_SDIO_USER	4
-#define CLK_MOUT_FSYS_USB30DRD_USER	4
 #define CLK_GOUT_MMC_CARD_ACLK		5
 #define CLK_GOUT_MMC_CARD_SDCLKIN	6
 #define CLK_GOUT_MMC_EMBD_ACLK		7
 #define CLK_GOUT_MMC_EMBD_SDCLKIN	8
 #define CLK_GOUT_MMC_SDIO_ACLK		9
 #define CLK_GOUT_MMC_SDIO_SDCLKIN	10
+#define CLK_MOUT_FSYS_USB30DRD_USER	11
 
 #endif /* _DT_BINDINGS_CLOCK_EXYNOS_7885_H */
-- 
2.46.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
