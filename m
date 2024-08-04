Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 471F7C3DA64
	for <linux-phy@archiver.kernel.org>; Sun,  4 Aug 2024 21:58:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cEUqokCGl+y2zG2U+nSIgTHM74AT/EHGhq8Wwal5gFo=; b=NawkTCK0cU7AVV
	rwvmz7Jgc2vAfw3OeMcJ8PozGWfNJDgJhe2ahW2VXLx3Sim7Uq2Cp5AUtHYEUwBVU0ojjLapuxkmR
	RsNJZ56KrPyY90KXfHc4v9sNVBrxFdTx4GvH79MfR31i77uesGQ/7pFaSQtx0pKJj/p6zBd6i8J79
	4aRsb2FszkomW7IpCM7wWCEjgRLf/yBWiVzuNvNrtO0d6EGn0EGtLfw96XDyA6zjUZNdQrL57r+Cs
	tmbInn48MF4RHKLiV2M3/RSw9/dofTLeSZv/4sBibzwMQrgdJTdUqG+TQDv6hSJK0Hk5i7675Tzke
	SDagRHz59QuBTjvhH9SA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sajEs-0000000E0Dy-3eQK;
	Sun, 04 Aug 2024 21:58:06 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sajCR-0000000DzMz-1IRx;
	Sun, 04 Aug 2024 21:55:36 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-52f01b8738dso9448588e87.1;
        Sun, 04 Aug 2024 14:55:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722808533; x=1723413333; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ohIik8tuxkZdOhXKBGYVU1TaY9NMG4VqeNOE6YapqQ4=;
        b=aEPBLKVJXmZRSRQwid4bkbKsgIcRztOAiNQRHHFFOtL3SGYMtp9KbR4kdqTgeFX2uB
         aA5SUeZWoVDEqYAOf68kEwfJ2JbnFVKkpPt4gryeXDZ4ttiOAiRVTJn3qQBYMEOAQ+4U
         7/uHIqr+42xej129kqAZsp3cxmEnI3+LUc+E5aMMSqNGm9F2rwHpv8JoQZg2BWN0V4TJ
         ZTWhn9ddZA/ksWK3kVx0bOHAYxeTlRbVmIpvgWyVRT6Bxys1FDYCYTRCwPPaTzY/QB8M
         15/W7y8BQNpg2PG8zUT+t1U3MhvaS0hikzUTX0OBOjR/6xXLHPwp44j4mXE3E6saPMgu
         RnPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722808533; x=1723413333;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ohIik8tuxkZdOhXKBGYVU1TaY9NMG4VqeNOE6YapqQ4=;
        b=bHVJwVFo1VxEWaEUxwrTFqq3h5xLJC9S9qljkRyI1WOuVYNTGvVwouEc0DhMuTxEwn
         QbL7N5Hd74AT/DNhPXecJQfntWy+3aHS3+dmQ+2ncDyvMBrvFN/AGH7NmpnWlRGQYZor
         uEDrmcGECgpjgJPgl6z2iF+KgVfuXepSKnoSlqTRltRhxjGAKbBZu+IOSEO8w34ozsVx
         wqAy6+6V39PURjka/LPd60ffvqYpqTUpbwZIuhrebty4RIuxNLciin8SnrZM1iknpu+L
         Q9z6NXM8jwxiI30Y/iEfJfxrRWIBQ0Nvaf62POc53uoIlA9aBGJRmR7AOWz+7NBnYJxI
         HOpQ==
X-Forwarded-Encrypted: i=1; AJvYcCWVBSfeSKOLhfks2CUjomddeLgnBURpQSsagxAulVqJXQosdLNiw0JaTaRDuIRi07JNxyYXki7L8e3d5266cX+z@lists.infradead.org
X-Gm-Message-State: AOJu0Yzopgh12gU9D8U6nw7oVbxMdVxVmOJDc1YSb+RMaWx2MqtBP96B
	Mk66adtLNaNab5t0cYxZWwlAYtuJVfWOwng8qgjXVrtrkgOBDsUN
X-Google-Smtp-Source: AGHT+IGf4XNWbs7YR4aHSGzZXOop9qGrIJwSKWyF5QLUzVLZlUFd//3fW5Z7Dds3H/8T66ieEG+8Fw==
X-Received: by 2002:a05:6512:3041:b0:52c:cc38:592c with SMTP id 2adb3069b0e04-530bb30790emr6307202e87.0.1722808533083;
        Sun, 04 Aug 2024 14:55:33 -0700 (PDT)
Received: from localhost.localdomain ([2a02:ab88:3711:c80:e7a7:e025:f1a5:ef78])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-a7dc9d45452sm370485066b.111.2024.08.04.14.55.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Aug 2024 14:55:32 -0700 (PDT)
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
Subject: [PATCH 06/13] clk: samsung: exynos7885: Update CLKS_NR_FSYS after bindings fix
Date: Sun,  4 Aug 2024 23:53:51 +0200
Message-ID: <20240804215458.404085-7-virag.david003@gmail.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240804215458.404085-1-virag.david003@gmail.com>
References: <20240804215458.404085-1-virag.david003@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240804_145535_372415_7138A116 
X-CRM114-Status: GOOD (  12.97  )
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

Update CLKS_NR_FSYS to the proper value after a fix in DT bindings.
This should always be the last clock in a CMU + 1.

Signed-off-by: David Virag <virag.david003@gmail.com>
---
 drivers/clk/samsung/clk-exynos7885.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/samsung/clk-exynos7885.c b/drivers/clk/samsung/clk-exynos7885.c
index f7d7427a558b..87387d4cbf48 100644
--- a/drivers/clk/samsung/clk-exynos7885.c
+++ b/drivers/clk/samsung/clk-exynos7885.c
@@ -20,7 +20,7 @@
 #define CLKS_NR_TOP			(CLK_GOUT_FSYS_USB30DRD + 1)
 #define CLKS_NR_CORE			(CLK_GOUT_TREX_P_CORE_PCLK_P_CORE + 1)
 #define CLKS_NR_PERI			(CLK_GOUT_WDT1_PCLK + 1)
-#define CLKS_NR_FSYS			(CLK_GOUT_MMC_SDIO_SDCLKIN + 1)
+#define CLKS_NR_FSYS			(CLK_MOUT_FSYS_USB30DRD_USER + 1)
 
 /* ---- CMU_TOP ------------------------------------------------------------- */
 
-- 
2.46.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
