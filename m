Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA357CAC598
	for <linux-phy@archiver.kernel.org>; Wed, 17 Sep 2025 10:55:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=D2mRzi12YBNgKwoUhTx7X2cZEIA7bv3twk+WJrBBqSg=; b=DBWnCzgO/us4qV
	sVhYZSxnWHC48Be1fO2SMPG2+2E5M5R7nLap/goCtLHdyqAKbYGhS4E4vK8/XgmVGpuU0LFwnT9tS
	Dzo7R3ObA6xmjpwj7EDvEL1kwK/1/oLYGCWgWSdo2uEgdktdQmt6omyDQ5SZpoJ5BlzZaiiJe1/iJ
	BboBm6182aY3HVGxOiT7T54g3mxKeXrnUarwAweaghdegCd6If8739+zFEmR3B8okUyFIAgIclfFV
	H/CEY1DiAUYsAYB5zXn6zJuU96Jg6C2F1Kmw17s91E2vEWkiFhpz3MLMJGFyqA5tPrQ2XXjOnrOkM
	ZEkrlcrkFgNwUAD8R5yA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyppM-0000000B3Df-1uBN;
	Wed, 17 Sep 2025 10:55:56 +0000
Received: from mail-pf1-x431.google.com ([2607:f8b0:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyppK-0000000B3DB-0lmJ
	for linux-phy@lists.infradead.org;
	Wed, 17 Sep 2025 10:55:55 +0000
Received: by mail-pf1-x431.google.com with SMTP id d2e1a72fcca58-772843b6057so5916235b3a.3
        for <linux-phy@lists.infradead.org>; Wed, 17 Sep 2025 03:55:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1758106553; x=1758711353; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=adTihmHwzJbf+9dxqIDSLfiv88TU7A8gsjhgenPMslQ=;
        b=sLWJcGPrHW4dpv3GhIcJ4dLQ92MqH8WpZ51n7Uty06PIlRYqlOLPXpl0+Yl7C87fzX
         CjiVpWgPgJxKzf9YOCrHBk6pAuYTUT29+pRXj8vgHOEcheHaP7KDtsIKqZNz9zboNgmm
         o0O8uasiVAHlD7KlICBSj/c5iCqWHYKqxk85t3GK1LVlgY9cjH5fgAEI3+WgxcYREwZB
         MPhu60AMT3few2B6U112nnx0+GbPQIeIFE7KF3P1qhMvcZRm+DsgYH9uOQzSkYpOWFJC
         s19gNBnfEY323SoIefaSDLTUjB5QX7c0k23CHnwt244Xe8ONMJMDW4XrVKXud8qnQIXq
         deUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758106553; x=1758711353;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=adTihmHwzJbf+9dxqIDSLfiv88TU7A8gsjhgenPMslQ=;
        b=hlXROZi16cVqhi7hRLY03QN8+eufvCeX/dnw2oktHVpaJuIRXdhD52lf+oiVHq8CaP
         IiZUx65gEy1tgatTI+AQhsKTfdaUfThERVvke9QTAHna6ZHoW1g5/es7h4UsbLX5aOLd
         2ZPOuqlUs7X6PKVQeyjAoYFjh+qEmIVZSnW6pSY2uS3UDIAgthptinE0RS5+pGqJAZY/
         cv2EHiwRvz6vGFdYBdiqxWknfYu7OlxBTQCiG6RE9nUzdZvutCcwTRNypVQniZdnwHuh
         i3IplUInny/orZK5rin6GMRXP6GvcrcvNlY7nKY1TvSy8t5iA3+csRWp0Nz1+0EIPiKK
         +Cpg==
X-Forwarded-Encrypted: i=1; AJvYcCXUuE/zoG9o2Nqro0KhbM3wdrRhKqub8oamcyf7O3PF0CpiLoUadUiJu1NshZcxyXD9B5HmXJeplxk=@lists.infradead.org
X-Gm-Message-State: AOJu0YyzUIh+JVUsBeX/URX33W+eAY0pqlXALj8ZuFEpjBPkRwqoexEg
	gnVdE7xxKbKwCuZI7cOdehjEEzOLeZrMH6HSiVwNToFm2ibdC3HNIgo3c3JcOtlkhiE=
X-Gm-Gg: ASbGnct+WqXY2NBiDjpH1MlHXke4wCHiuGfNMIOBRU48rYuXhYVfrvxtKJk3caeUvcm
	vwadrihKJdKnNwGDe7Y+YSt5z7wYagYO4UDthEoOfU4fpR2hL4Y5W7PlmbhtvyXyZDF/wLRqy7S
	taTvc1QpMXLTHvPykNaEHtWw7VTZmbav1i9AC8juY2N6sS1OVwQhvRSkR0GWQHg6AELDhTunffj
	Czj6mqw1MfoybPXsv1Sr5KWV27zRlEnEkVjfWDQ6HNcrrkAgxUtYDktQiRSs2oxdZzXGJv1cniB
	JEunoBMwdq9QjnXFUNZ5fir0hIsSEVH/EmFTW4/5AR2k8EZlCoi766qi4hDQQanPuYycISexOm/
	0yYu9pFtpOplAiMcEOQtos2+ME+xy8FfukEFmEtV5bY42Yk+JLtQ/KFLx
X-Google-Smtp-Source: AGHT+IHu7B8nUjAHLAKGXC+EcCyBnCKDdaHlbT5cM0DjbI9g+YR/BAYDE26XBq1QLYfijEOd/iwymg==
X-Received: by 2002:a05:6a00:1994:b0:772:282d:5a68 with SMTP id d2e1a72fcca58-77bf9b5427bmr2020650b3a.29.1758106553021;
        Wed, 17 Sep 2025 03:55:53 -0700 (PDT)
Received: from fedora (cpezg-94-253-146-122-cbl.xnet.hr. [94.253.146.122])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-77618a7feefsm15249228b3a.58.2025.09.17.03.55.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Sep 2025 03:55:52 -0700 (PDT)
From: Robert Marko <robert.marko@sartura.hr>
To: daniel.machon@microchip.com,
	vkoul@kernel.org,
	kishon@kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	herve.codina@bootlin.com
Cc: luka.perkov@sartura.hr,
	benjamin.ryzman@canonical.com,
	Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH] phy: sparx5-serdes: make it selectable for ARCH_LAN969X
Date: Wed, 17 Sep 2025 12:55:14 +0200
Message-ID: <20250917105541.54033-1-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250917_035554_242772_AF6FCCFE 
X-CRM114-Status: UNSURE (   9.20  )
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

LAN969x uses the SparX-5 SERDES driver, so make it selectable for
ARCH_LAN969X.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
 drivers/phy/microchip/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/microchip/Kconfig b/drivers/phy/microchip/Kconfig
index 2f0045e874ac..2e6d1224711e 100644
--- a/drivers/phy/microchip/Kconfig
+++ b/drivers/phy/microchip/Kconfig
@@ -6,7 +6,7 @@
 config PHY_SPARX5_SERDES
 	tristate "Microchip Sparx5 SerDes PHY driver"
 	select GENERIC_PHY
-	depends on ARCH_SPARX5 || COMPILE_TEST
+	depends on ARCH_SPARX5 || ARCH_LAN969X || COMPILE_TEST
 	depends on OF
 	depends on HAS_IOMEM
 	help
-- 
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
