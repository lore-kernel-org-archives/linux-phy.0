Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2E2AC433EF
	for <linux-phy@archiver.kernel.org>; Sat, 29 Jan 2022 19:37:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Fl86iwNXTyBBBq7S6U1iKoQKDMquMc8zNHIZE2UKIU=; b=dgAx0kCdMFQfRI
	rCTOkcLNZkjjx45Hyb7U5Sla8X5Po6nt3kQob39tT8jX6TasWCW7iXmHzSllHWBDq1NAqgqcNklHY
	wIVUod1n1GQ+YsRRt9RJUQ/Ax9h4lxSFAiP11zOsd8gYn/p3O3KfjORBfW5puNnvCla7kJYoayh3V
	GunNgDvxeMmJeOhFpEhEh8zVl4rQgpqBW83cDfYD5VTwRz6dR03B4VLxsdIJ7Gb9CXja5aVo280F4
	YGeOB1xTjPR2pxg4CG2PWl+Auw2d0D+VwcpcOol9Xuy5mzpfHwsx/Ok/+5hR0jU/IKT0UaovLXuaD
	/p2IlHsYvrHFZcnoQgJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nDtWx-005JuO-TO; Sat, 29 Jan 2022 19:37:04 +0000
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nDtWu-005JtA-CY
 for linux-phy@lists.infradead.org; Sat, 29 Jan 2022 19:37:02 +0000
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 1C51D3F203
 for <linux-phy@lists.infradead.org>; Sat, 29 Jan 2022 19:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1643485012;
 bh=hAGep8pVNTsPRC1nSKuBp/hWEFmbR4UGlLqtXTKGMQk=;
 h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version;
 b=i4zpSszG15EZyTwRPbRKsmjbskf/clS+i5U33cpx5gXE5jiQk/5VXbe2wxivPbwtL
 M1WAaM/umTRMcJXwkLBqfdAoYHA2eVRjpBuv3NqQBCBe2SIEH3o/+25YAt2BFlZY+e
 2x9bpS0zo1prJcSyu5gyjBlnUes5BNnrcNOCl/lPezUfwsHDNnd2xixqNLeNTrvH//
 HNgd+Vxc52bS6VqEAh1RcewvPX32EGNGyaidUKcoFq9pLrb4RrrYIH6LOiPibhHxO4
 Q7teMXB1teYQ8Cgkc7oKZxyS2nX+OGWpdGAZg17sdASFK3OLoReDYHLXXge9crg+f4
 22I221hkOoAbQ==
Received: by mail-ed1-f69.google.com with SMTP id
 f21-20020a50d555000000b00407a8d03b5fso4742554edj.9
 for <linux-phy@lists.infradead.org>; Sat, 29 Jan 2022 11:36:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hAGep8pVNTsPRC1nSKuBp/hWEFmbR4UGlLqtXTKGMQk=;
 b=FKCBlRexaqCg4p38ugNEKvl5MbnDqvjRaYQYKI3p+/tJqp1SZ+vOii9djro9FI2VSX
 lJZVQaR6dLae/uWGgEaE09T/1ZBzHglZ39TwKpQP38W6q26xtlBkMNbabSV2uIy/608W
 lxeD7LvL3FMfum9M4O25tPkFjXIxRKFlP9wW1EQmBGmO70yYWVwZLIESVd1F7c5ATflj
 lkYv0VMWL1gh9vSp3iimpqdyK2QXVikishFoguR6Pg6Xop1/KhXPbMDhZVouQ1b22DD8
 nDwVnyJZvI+5Xa9Ce8oclPw4DNbnZqRIdHypPdnd6jg4yLYBXTF+RUtCoF1qZwPvOzqn
 H47Q==
X-Gm-Message-State: AOAM533pC5KhgCX5+PciLcFQ2EHiq6LPnFwqWHsrDQH6tluivy2g4Agd
 /xR7GRtUNblNsMHFAOiSYSP5tsz2HiwTlcyaVHLghDeLguQVDy7v4/h+B5rcXdk2FS21dJKolOh
 gPCKjaU0cNPATVaFVzSs2eA0D7mnxHy6I7/rcwkTSMoQ=
X-Received: by 2002:a17:906:e0cb:: with SMTP id
 gl11mr11488650ejb.135.1643485011238; 
 Sat, 29 Jan 2022 11:36:51 -0800 (PST)
X-Google-Smtp-Source: ABdhPJz6nnWsixSDr5XE5v72szvmmUfsStrbIoMAbLaY3/xYGrtNlZ1bDnYpJvY48+Oy+FGS75nXxw==
X-Received: by 2002:a17:906:e0cb:: with SMTP id
 gl11mr11488637ejb.135.1643485011078; 
 Sat, 29 Jan 2022 11:36:51 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id bf21sm14968026edb.2.2022.01.29.11.36.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 29 Jan 2022 11:36:50 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Guenter Roeck <linux@roeck-us.net>,
 Marek Szyprowski <m.szyprowski@samsung.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
Subject: [PATCH 2/8] dt-bindings: phy: samsung: drop old Eynos5440 PCIe phy
Date: Sat, 29 Jan 2022 20:36:40 +0100
Message-Id: <20220129193646.372481-2-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220129193646.372481-1-krzysztof.kozlowski@canonical.com>
References: <20220129193646.372481-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220129_113700_768322_19F70570 
X-CRM114-Status: GOOD (  10.93  )
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

The Exynos5440 PCIe phy support was removed in commit 496db029142f
("phy: samsung: phy-exynos-pcie: rework driver to support Exynos5433
PCIe PHY") (with its own bindings), so drop the old bindings.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../devicetree/bindings/phy/samsung-phy.txt     | 17 -----------------
 1 file changed, 17 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/samsung-phy.txt b/Documentation/devicetree/bindings/phy/samsung-phy.txt
index 8f51aee91101..390065f49b62 100644
--- a/Documentation/devicetree/bindings/phy/samsung-phy.txt
+++ b/Documentation/devicetree/bindings/phy/samsung-phy.txt
@@ -191,20 +191,3 @@ Example:
 		usbdrdphy0 = &usb3_phy0;
 		usbdrdphy1 = &usb3_phy1;
 	};
-
-Samsung Exynos SoC series PCIe PHY controller
---------------------------------------------------
-Required properties:
-- compatible : Should be set to "samsung,exynos5440-pcie-phy"
-- #phy-cells : Must be zero
-- reg : a register used by phy driver.
-	- First is for phy register, second is for block register.
-- reg-names : Must be set to "phy" and "block".
-
-Example:
-	pcie_phy0: pcie-phy@270000 {
-		#phy-cells = <0>;
-		compatible = "samsung,exynos5440-pcie-phy";
-		reg = <0x270000 0x1000>, <0x271000 0x40>;
-		reg-names = "phy", "block";
-	};
-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
