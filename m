Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5161FC44501
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 14:36:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HUlPGHQW7abifMHjp+5dymsDHrs7OGd+WwEH46YAiR4=; b=v7t8LEvAJmyVKf
	djRpVjuHLRJH2iAp694/cD9LeZcbDzwrexkJ0qlcgl6tnsZp2Lgb/bvf+qYQoYhprgQ/xLognUlCz
	YC6VnF4DX4Zy1DMQT3UnczgWAN5ABgRyo7QjmKMXbi72+oNAT+zMVpOY+zJ28LwqySYa4NU6F7zw0
	HcDtu5xkkEYU9xf3+7aIoO0BB16XiGDQ3SRN0Y00UgiWLESiItnj2tLnNHVe0CBgHF9oONfP/l323
	Joy+sQu8m9EmHsTJoK0A9SWuruaTArqMJY4D58yV+yC+0kfJD335n6oDkDEX8nT2ACIJejqLSryD5
	bGpzo58UPdSL6EwQwN+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh6uu-0000000FBqQ-3uig;
	Tue, 07 Jul 2026 14:36:57 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh6uq-0000000FBor-3z8g
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 14:36:55 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-4759b4f0897so1981930f8f.1
        for <linux-phy@lists.infradead.org>; Tue, 07 Jul 2026 07:36:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783435011; x=1784039811; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Cr4ORC5iEzVJ8CZQXiF8gWDp6d51C+uYuHd+oA5It4Q=;
        b=GjsIJ8ycVE9aGEtAdpkXGIV7LGGt/X+01gkNrJD1+Q2qojetY65YnUrttteMuM4jAv
         q6zkUKPVpV5qQ0UuxGXFnnkRIPWfEVR1EEu+FueI8iYTABMN4hI6fIOTfnrzO00PN9ch
         Jk0xR7+Yx8GSVarG7FIkFT5nPQh4RoNItgPrYiNvlLwdo3phkahnquaL79qtd8zEbIv4
         kTQuL3jSDdA8w+wp06ODKIpeZGR08WnD8nmLAGHyeAeYdV+ONNPiq7jnCz5Bk9RQkzgs
         B+OMzFAJLllGA7jv2QEA4GYlPLjBi/69HYuC5WhkHUEwHBEw++QxowzBwVOhKHaC4eOV
         uVoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783435011; x=1784039811;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=Cr4ORC5iEzVJ8CZQXiF8gWDp6d51C+uYuHd+oA5It4Q=;
        b=pZMiUcj2cmV6f2WAFoz3foaff9iHWpLaLQ4MCPiJ/Wd5SOzJg5EZ1n72tk68h8OyuX
         C6wPdMWocRGVkLZmXFIn+vmQKXdaIaDQhDmuujOaskKoho2dbjy7z6aLq/KGSwZW35HD
         oPFu57nJw8etMgrj9A/1q/XG6eX5Qgr5ds8gysu4zt4BJZk69I+93C/Os3oNCqZ6Y/WO
         tg6D46cCH1vpi2/TCU3Va4aR9fZu3BDttzvzqRVRPZ/bQcPkTYdnYRbWmgCwR/4LdkZR
         v7GQKyrzKPmqTA90G0maXs18HsRnxBGGrHz7inmZ+glc2vpsowVMT9DxkPDxltTK5Zgy
         ejlA==
X-Forwarded-Encrypted: i=1; AHgh+RoTANLqYBPgHMaKmvQ6FakfXHY3vYzA6lsVbwC99fgyuCGkbm10Ed+bDdWy7Fq5sjDALYGlwxyZDbQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YwuG54rIQcnvpSgEH2qrk2o7rv9vT5A3ZmuqBFTcNqpHxGWrjFC
	g5oMXfm+TVdFufjgqRml5Z1iTeFAXeLBkfDXe98zb5piQ5yMLMOA9zqt
X-Gm-Gg: AfdE7cl2J5bob8i7gqPcJzT34DwaeEecEsZwCX5LWfQeHC7PZGjvPsyf8qZbIM5rfSC
	6QTgoHr6UI3vwAKreAbOb3BJZRJNfe+6PMk8WBf9V0aIXK9yVlM/rNyhNQZERiMIHg13KCQn8Bp
	h0RCvgAwQghkp3JoaqMpoa8YIkWLdNR8qlaPqp4unq9sGGwhc2VmnK/H7hKbQEQiITh/Jj7h251
	sF++zomcXwPvt1OdnJdHMUYBdy+writhLPTGOkxdDAN/WQVZY6itye9sZu2+fL1Mk+CgkuwbWgi
	TqYmzZSGafuJ6f2Zv+fJ8H7s+RzCLgCNDKpvd/ZCAAuPi+UW/SXpV1xmqPr6psk/qvQq9mzJlOV
	liPkpZu9BkO1QF1obcNChw9IgnxexYtbrFQk9SNp3jNF1i5VP3JAPMwkN/pzY57SfQAetdMxwya
	jSw6QPXTGTRrmdptMV02c3RJgpNpGHSmCG7OfJGA==
X-Received: by 2002:a5d:648a:0:b0:46f:7d90:8127 with SMTP id ffacd0b85a97d-47de66cf83dmr5043918f8f.13.1783435010951;
        Tue, 07 Jul 2026 07:36:50 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:a702:d301:a4ac:4e7f:194a:852e])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47aa039ae44sm33228611f8f.23.2026.07.07.07.36.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jul 2026 07:36:50 -0700 (PDT)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v3 2/9] dt-bindings: phy: renesas,usb2-phy: Document RZ/G3L PHY bindings
Date: Tue,  7 Jul 2026 15:36:34 +0100
Message-ID: <20260707143646.245177-3-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260707143646.245177-1-biju.das.jz@bp.renesas.com>
References: <20260707143646.245177-1-biju.das.jz@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260707_073654_615215_0D264DFE 
X-CRM114-Status: GOOD (  10.22  )
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

From: Biju Das <biju.das.jz@bp.renesas.com>

Add device tree binding support for the RZ/G3L (r9a08g046) USB2 PHY.
The RZ/G3L USB PHY is almost identical to the RZ/G3S USB PHY, the
difference being 2 OTG blocks on RZ/G3L compared to 1 on RZ/G3S.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v2->v3:
 * No change
v1->v2:
 * Collected tag.
---
 Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
index 9740e5b335f9..d6b9d08ceec6 100644
--- a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
@@ -16,6 +16,7 @@ properties:
           - enum:
               - renesas,usb2-phy-r8a77470  # RZ/G1C
               - renesas,usb2-phy-r9a08g045 # RZ/G3S
+              - renesas,usb2-phy-r9a08g046 # RZ/G3L
               - renesas,usb2-phy-r9a09g057 # RZ/V2H(P)
 
       - items:
@@ -132,6 +133,7 @@ allOf:
             enum:
               - renesas,usb2-phy-r9a09g057
               - renesas,usb2-phy-r9a08g045
+              - renesas,usb2-phy-r9a08g046
               - renesas,rzg2l-usb2-phy
     then:
       properties:
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
