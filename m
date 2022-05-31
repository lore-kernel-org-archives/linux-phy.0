Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 650DDC433F5
	for <linux-phy@archiver.kernel.org>; Tue, 31 May 2022 15:03:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+I9KFwy6Nf/go4YMZmHQIDFpz3z4AcGTlMFMxygE9FU=; b=Sa2eNHblzi5dpG
	jmDI8/Xtt6NGVxSlkxdGjBPnk9+FK++eJVKu3kf/M4JfyIo6QlIqrEA4SaHcO5uWFuvyY28+xssth
	WnxZvMOToMQEuQFRPeYr7wJSHMXlcj9lUxwLvoQYAHMB5RyRctOW7M1kUs8Bn7mvKS47xVfzji2dn
	1SAK+0q0Ob9nQuafuc4AbuGDkcrZIkYBQ+iP1NTKUrDVDgTsoo6EG3SPGKBnhVOy176h6O/rCK+BI
	HIMheMzp/Sso0MKWtT1EzgM1pBAmcGIncdmbFBi0raxCGwznyYL0VtW3Dvbey6DH3m4Y9v2kd1i9g
	doKGnJzX9h0nyQOSs4TQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nw3PP-00BQZx-GO; Tue, 31 May 2022 15:03:47 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nw2H2-00BAFP-GU
	for linux-phy@lists.infradead.org; Tue, 31 May 2022 13:51:05 +0000
Received: by mail-wm1-x334.google.com with SMTP id y24so8062270wmq.5
        for <linux-phy@lists.infradead.org>; Tue, 31 May 2022 06:51:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=V0mir9eT63DKpCuSFhXy2EQ9q6hMHk3Lk25p5hkr1WY=;
        b=dgPXuSTwBJUbGqXppjZhZZZOomCBtiDDRzWdJYbbljs4aTyDRm+Rc7yvBXo99ZlOUR
         U7mwFug0gjhRtdGOHx+b6JtR/f+n8/zxm2PDGTHjIPz/KhJYudpdaSA1BwC3X7i3s4Hr
         HDaavWH9RbL8wPJaZbnSIeRt0gsaiINZnc/ykOQ2BIYBBEtJ2fIb/S9kytfEqSzP2NbH
         qCSnSlzdfu5UlZu6g48e8t4J/3G6v16GoWLx/irJQpEzoh5NlHyGsJfxl0Gw80km5oQv
         3ZY1xvrun6xC9e4jGwbOr1PrJsdJ5tEYLvd9Q7LpqBKpPeYigH/lFh3JFg3igrkvpwyS
         XUwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=V0mir9eT63DKpCuSFhXy2EQ9q6hMHk3Lk25p5hkr1WY=;
        b=qj9FWSAiGGeBLF0wQ7w97b5a2L7Bh3dWmJ4ayJ3PBx+8TeehyPfcdt3EqJP9OJN+7L
         u0qDA0XwJLsJe8OqrKxPpr+2/r3D6z59/N5ZtSX/CP5nezlq4GHq5N3k6ZZnRwDof3Gs
         UvnxB9ZBsDSBFs+GrE6gzLtBkZoGzppJSykdR/x2oyDth0UWSy/AmYeesHqZ8+FyBKde
         VdbJvBZ9n17ab3jX3BHe7tBrlGCZ7K+bQhZem6NR8iFyVkWIpEsPphoHQzFRXDjGyWhl
         OWYe5eZlhGj47Str6VTZnofvXhvxoewExrwe/fUQRPaTem39x7sGIFjGvin7Db+BNcQ7
         iNbQ==
X-Gm-Message-State: AOAM533qNY0Jh02M/QHJ/4eFJjYZDhtJbXWEtLTr23/Ga3ujuCj6ukwx
	eFdTmeV1Of+sc+BS2TE80IgdFA==
X-Google-Smtp-Source: ABdhPJzCiszx6tFF9AeRKTF7WMnbdQGjSgr3MjgxoHordumIGouDeHTHRrvMyk2Xvt9rX9h430+GnQ==
X-Received: by 2002:a1c:f213:0:b0:39b:ad32:5e51 with SMTP id s19-20020a1cf213000000b0039bad325e51mr10808986wmc.72.1654005060973;
        Tue, 31 May 2022 06:51:00 -0700 (PDT)
Received: from localhost.localdomain ([88.160.162.107])
        by smtp.gmail.com with ESMTPSA id l11-20020a05600c1d0b00b00394351e35edsm2404806wms.26.2022.05.31.06.50.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 May 2022 06:51:00 -0700 (PDT)
From: Fabien Parent <fparent@baylibre.com>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	vkoul@kernel.org,
	qii.wang@mediatek.com,
	matthias.bgg@gmail.com,
	jic23@kernel.org,
	chaotian.jing@mediatek.com,
	ulf.hansson@linaro.org,
	srinivas.kandagatla@linaro.org,
	chunfeng.yun@mediatek.com,
	broonie@kernel.org,
	wim@linux-watchdog.org,
	linux@roeck-us.net,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	dmaengine@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-iio@vger.kernel.org,
	linux-mmc@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-serial@vger.kernel.org,
	linux-spi@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-watchdog@vger.kernel.org,
	Fabien Parent <fparent@baylibre.com>
Subject: [PATCH 12/17] dt-bindings: phy: mediatek,tphy: add MT8365 SoC bindings
Date: Tue, 31 May 2022 15:50:21 +0200
Message-Id: <20220531135026.238475-13-fparent@baylibre.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220531135026.238475-1-fparent@baylibre.com>
References: <20220531135026.238475-1-fparent@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220531_065104_627372_04CEA11B 
X-CRM114-Status: UNSURE (   8.50  )
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

Add binding documentation for the MT8365 SoC.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 Documentation/devicetree/bindings/phy/mediatek,tphy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml b/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
index 7b2e1bc119be..4b638c1d4221 100644
--- a/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
+++ b/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
@@ -82,6 +82,7 @@ properties:
               - mediatek,mt8183-tphy
               - mediatek,mt8186-tphy
               - mediatek,mt8192-tphy
+              - mediatek,mt8365-tphy
           - const: mediatek,generic-tphy-v2
       - items:
           - enum:
-- 
2.36.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
