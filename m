Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79BB1C77B76
	for <linux-phy@archiver.kernel.org>; Sun, 16 Apr 2023 10:19:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F4Td7YXjdlD10qcomkJD7aBRZmdEipf5qwhR8tTwP3s=; b=Fs6ePay7j2mHo0
	C3X9jb0TqIbvMLEmKRCcuMo9FDGd3qqrxavH4FaxsShYwa5wmA3L3oZzfhEGViCmdvFARgz1hwTNV
	EAEH7mne2+MY+qaj0pAOFXukRAhx148uCqLjINMOm662zr6n2IaQM9rW23Mo4PveKs7wLsLA18AlO
	82AQpzRkzSJwvVLDlK9kyDBQzubEZMwthCegmGptzYt+twVLoy+eqEVn4fI3RRF3APWpXMYErw7nr
	qztB1oqKRxyiciXm5abwc8c0/jcV88PK1q7FcZbRCkPfeQ5V2GBZUBebW9jDEVsMwowSpmtZ+Ehqt
	O+ykNYVNGc43hwRf9nbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnzTK-00DW35-1d;
	Sun, 16 Apr 2023 10:19:02 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnzSr-00DVgz-0j;
	Sun, 16 Apr 2023 10:18:39 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-94ef8b88a5bso99084366b.2;
        Sun, 16 Apr 2023 03:18:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681640311; x=1684232311;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Deq7iuiEl1RFyBysVZfY7LGeNc11tLOLC+fdaC0CAMg=;
        b=ZAwt4HeI7zjFHJkplxlMJqzMttBg4MXXpiOfe9Mx+voSNjApPexnWf9uECiJ5Yl26Z
         ljMP/sqVqA1WmuJCGGf4iUWm0QxpbjJjTuBsLAkf2/z2fZahvgd2yhwHTf8brQIv3pH9
         YzjNwHThdfqX1s5uGL//gNzstTz4I0zZBjDesqKCzHURMRJpsU9CYAXSOTTxlflcRfAC
         7c5fcu7/rV7NLWHwe35UuqLChgWWbDavh1cUQfEhB5boPBfhYzI0Z38WBEYBMUArIOSI
         MCzjsxc0cCUgXe8RohOTFHSJMIx8FaWrvZf/hbdITR69cKMBxspbQmniQ35+PLB17jK1
         nzUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681640311; x=1684232311;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Deq7iuiEl1RFyBysVZfY7LGeNc11tLOLC+fdaC0CAMg=;
        b=WXLQli4sHRgoHdFpHhQ+ryKsHvv3/F9urgnqaeSpUW68IMrSiwBlq/gRdM+FOQ+qQv
         JLaAx1TgbWX1GkKMZG77/RiaKTq26XA3EJrjurJ0S06JitlQHnIAeXN+I1hc3obeopMC
         nbSDy+RsaNuJRvkP4g4lRecOWvH4Xc7mZzr67fwFZmSDjPnbiSOEsqxd0EBStzlqg0it
         50PrD3wgYz5kZz89O6uB+D/lgC2yvHo/GXl2F+cTFUxJjc1IGr72GIdzjbTjFlhmx/eh
         gum6dMUDYh6r1fyYFjooQVmHYqWmXGe0IKDkO5krKWimwmUE26TKra43HGHL0fBtqqK9
         jATw==
X-Gm-Message-State: AAQBX9f2Y96K3J5Ex19FJEkHr0C92mrTHkjqLF5VEeXL/780S/hvDzWr
	DimqYt6E9jXKnC+qLDraviw=
X-Google-Smtp-Source: AKy350YkWFGDJqV0rBc+9gzlX9eokYwBBCkk2wU46o9VJLPhqhdapjAD8Blc2K/bSjtNuYp3e6wasw==
X-Received: by 2002:aa7:df0d:0:b0:4fd:29e4:ccfe with SMTP id c13-20020aa7df0d000000b004fd29e4ccfemr10155286edy.18.1681640310676;
        Sun, 16 Apr 2023 03:18:30 -0700 (PDT)
Received: from localhost.my.domain (83.8.121.70.ipv4.supernova.orange.pl. [83.8.121.70])
        by smtp.gmail.com with ESMTPSA id r20-20020a056402019400b0050476da5160sm4427443edv.45.2023.04.16.03.18.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Apr 2023 03:18:30 -0700 (PDT)
From: Artur Weber <aweber.kernel@gmail.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Alim Akhtar <alim.akhtar@samsung.com>,
	Rob Herring <robh+dt@kernel.org>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Tomasz Figa <tomasz.figa@gmail.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Olof Johansson <olof@lixom.net>,
	soc@kernel.org,
	Russell King <linux@armlinux.org.uk>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Kukjin Kim <kgene@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-phy@lists.infradead.org,
	~postmarketos/upstreaming@lists.sr.ht,
	Artur Weber <aweber.kernel@gmail.com>
Subject: [PATCH 11/12] dt-bindings: arm: samsung: Add Samsung Galaxy Tab3 family boards
Date: Sun, 16 Apr 2023 12:16:23 +0200
Message-Id: <20230416101624.15866-12-aweber.kernel@gmail.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230416101624.15866-1-aweber.kernel@gmail.com>
References: <20230416101624.15866-1-aweber.kernel@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230416_031833_299108_D627E09D 
X-CRM114-Status: GOOD (  10.25  )
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

Add the compatible strings for the Samsung Galaxy Tab 3 8.0 series
of tablets.

Signed-off-by: Artur Weber <aweber.kernel@gmail.com>
---
 .../bindings/arm/samsung/samsung-boards.yaml           | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml b/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml
index deb2cf971871..4ee026e7f7ad 100644
--- a/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml
+++ b/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml
@@ -104,6 +104,16 @@ properties:
           - const: samsung,exynos4412
           - const: samsung,exynos4
 
+      - description: Samsung Tab3 family boards
+        items:
+          - enum:
+              - samsung,t310                    # Samsung Galaxy Tab 3 8.0 WiFi (SM-T310)
+              - samsung,t311                    # Samsung Galaxy Tab 3 8.0 3G (SM-T311)
+              - samsung,t315                    # Samsung Galaxy Tab 3 8.0 LTE (SM-T315)
+          - const: samsung,tab3
+          - const: samsung,exynos4212
+          - const: samsung,exynos4
+
       - description: Exynos5250 based boards
         items:
           - enum:
-- 
2.40.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
