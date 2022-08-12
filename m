Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5363AC00140
	for <linux-phy@archiver.kernel.org>; Fri, 12 Aug 2022 14:33:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bGB/MbO/lI0oIouQ5oRUQIHAp9K8yKLxY4BMVpeW6+M=; b=yCSanjTYfL4dga
	oHCVsJF9m57QIsRboYS7htf30imsnm81HhFsPahUM46sdOi16ntDj/gBqsjwGTl/BSqh/F9NxO1Xc
	C0LF0gl6grGk/SAuB4rGNI7uCRjmu8y3HjH7irkvHVcRCqdQ4Stkvllvyj0s61aKbHJjYoSoHB9zx
	IJO3eUPmi545w0AmCiPfGiv2H0iBnKqVO1IsM/jtrMuZSVJ67bBmYFBRcc0OTnVy3jEjLWTcAxF6N
	B7vbtXABYjgR+psEQNBttgpvMU3A/3RjIlrAZH/UvlgupB+tl7rAJHJr1TAXucIj38OVro0LtuTZL
	HjPEtqL3d1oMRDd69DvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMVif-008xpB-K9; Fri, 12 Aug 2022 14:33:01 +0000
Received: from mail-oi1-x235.google.com ([2607:f8b0:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMVia-008xkE-B5; Fri, 12 Aug 2022 14:32:59 +0000
Received: by mail-oi1-x235.google.com with SMTP id u14so1339806oie.2;
        Fri, 12 Aug 2022 07:32:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=qnSptJt7AFNWmzxMCkqf7MrpKQxtkc2Z0kVrcaCyyfQ=;
        b=fHUNNf1S5S9u5i9fO6AoDb45aFdyI7LsAef5jdetPzmCLDJQDqxAxoVfC/3HOZ1+fF
         rXvmcusyEHkXlXsD6IUcE8yfI6sTcNMZ8Jt0Qs/s3VMKIwyyrQLlJc2zCziVEyxSopG4
         uHzcI2qvtqh+d2Zv+GYT3xA/rlsx2w73DAHXU2Ii8O/EYYW54l8xhJkmjSrplePShJ8G
         rRU9XPhaBlRLEOKg1iqbtJ/nz5ik/U2i988xeKfWsZDnMaziVQBNdST8lfYWlNBuqhyj
         XCI4hk6UqVGh7k+7D1wbiidrlhynmE2m0hg5cxxn+C7eACMsBSF/p89iIzNC5CJACXqm
         KzXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=qnSptJt7AFNWmzxMCkqf7MrpKQxtkc2Z0kVrcaCyyfQ=;
        b=hxDvvtK1Zx7diLahdx4Fnk7sh/C+iwiVPaviFFVe84eXW++ntrs/eHi637/I5+eXUf
         1ZKfbvq+jImYCtf53TnBUrl02DDMoCa/jJ8cuU1YLoJL2okG6kBQQkFyTr4nInt9D/yB
         aCn+wGcPH3P9xWWon9dVnjJGMOjhwzfw9ZeB3+7Z2OHlOBcnkS4jl6nIgRUcPLHhKLho
         fotzdeaURwvEQZx3t7qSaLXgHAxZlR4Dwc9GzLiOfemK4eslC5njPREY1qBW/FY1+yS1
         n9Xhx7UVcvXxnMKU3N5zcKX5a4j8zNUQ93u5/q9lkz83vZ0G2qHpQMzQ94mcaTuVYUwZ
         JFrA==
X-Gm-Message-State: ACgBeo20T5Hxtaq5P90AT9JaBmQGQwsUELfpnyi7TdOGHKTqR4laEuDd
	aqUHmaBVmG7/tMbEGHjxk4gg+i6Y8dE=
X-Google-Smtp-Source: AA6agR74gN/Xj6CR93wrkDgpBU4uyyTXxxFhv531ShDGFeFjwDWXTSLw+iPpQOL7fuxOLOc8RLh9UQ==
X-Received: by 2002:a05:6808:1c07:b0:342:d3f8:e73c with SMTP id ch7-20020a0568081c0700b00342d3f8e73cmr1767595oib.71.1660314773714;
        Fri, 12 Aug 2022 07:32:53 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id n28-20020a0568080a1c00b003436fa2c23bsm282879oij.7.2022.08.12.07.32.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Aug 2022 07:32:53 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	vkoul@kernel.org,
	kishon@ti.com,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	daniel@ffwll.ch,
	airlied@linux.ie,
	heiko@sntech.de,
	hjc@rock-chips.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [RFC 2/4] dt-bindings: phy: phy-rockchip-inno-dsidphy: add compatible for rk3568
Date: Fri, 12 Aug 2022 09:32:45 -0500
Message-Id: <20220812143247.25825-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220812143247.25825-1-macroalpha82@gmail.com>
References: <20220812143247.25825-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220812_073256_400608_70484A3F 
X-CRM114-Status: UNSURE (   8.08  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add a compatible string for the rk3568 dsi-dphy.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml          | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml b/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
index 8a3032a3bd73..5c35e5ceec0b 100644
--- a/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
+++ b/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
@@ -18,6 +18,7 @@ properties:
       - rockchip,px30-dsi-dphy
       - rockchip,rk3128-dsi-dphy
       - rockchip,rk3368-dsi-dphy
+      - rockchip,rk3568-dsi-dphy
 
   reg:
     maxItems: 1
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
