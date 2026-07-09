Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5825CC44503
	for <linux-phy@archiver.kernel.org>; Thu,  9 Jul 2026 08:31:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qa5tfrS3Jk4rqo282jROXlWTVgwJ9fD933YvSYSG35E=; b=SgSvgBqOGRmiIZ
	JFZoevMNesbfGN8pwjLdNwo8+NWA/qErPIdaU4z1Kxbs+vvs5O4QkPG8wvwsvmPZFH/PFwkd8CrfV
	9f0Vf7ML9XcgJ4FQpc+ThsV1nM2yf2h7I3MQrd6N7xP3nu+NSkbHWerUA1CzIazEjKmqB5Qz46cst
	pZrTEatJzhJQ+WxLG2kwKoL6ex2FjFtwOCfYeWoryYmsqTUulI7VMp2gejjuYgIuFvUsqDblFTOM0
	oU6EGPnoiszULCFc5rajdg8F6fgztXSyH6QcTO+6J5WhBysSqle3RYFsRoVLbfxAes/b8OVP1IpPo
	TiyU8JgJCMf5gYi6fecQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkAC-00000001Qhh-0SuN;
	Thu, 09 Jul 2026 08:31:20 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkA8-00000001Qfd-11PS
	for linux-phy@lists.infradead.org;
	Thu, 09 Jul 2026 08:31:19 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-493d92b7db3so16612875e9.2
        for <linux-phy@lists.infradead.org>; Thu, 09 Jul 2026 01:31:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783585874; x=1784190674; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=AM1zEpcKvD6W7WPG9CZWunBD7IXZLxdUb+DuWtxzpK4=;
        b=Wsuox8oXsJyNiEqCVA3MwKrB8BlX7DRfASSrWUhk6Jdj/gHxTW+mWds4Sb0v/UM5eO
         YAVLz6MecFq6XziS+eOiqUnUQCjnLyOgNRIFIB5BEjxH3TCXr/nJ7NR8kcyNhNNsRVCn
         YYzOn2Agmnk/LmqapgDlqLkO0y2pfZpA9mfKfvzE5/seRPKPEU6z8yhTxweErfrZ/5Uv
         dHuhwjid6gbUZ168WpNqEhG45HmjLR8kdSHga4E09KW4eg86oRXXEkmRtxCAQNADuKa+
         B9t0/wpAQu+Bons9Uuvxp8n2B1K0mtBsponFM8H2o4b/J9lO0bzeNcZWtd/qbylV7/GU
         ks/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783585874; x=1784190674;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=AM1zEpcKvD6W7WPG9CZWunBD7IXZLxdUb+DuWtxzpK4=;
        b=Vf+h7PAeVPBHNSI0mTwgxpRbgvbKDyBi+vBprIodgXp1d4bBZMX0Q7Jkzgt3QIXunR
         vrsIYy6aCSBys4jAcgPLoFEhY04XnAYjX4WUaeQWS+VLT29sKfpz2r/R3nINE7m4mGMg
         9+MaVYjj4w+sanVzp8gZ5m63W+BJkL6LiRQYjb7hDTYo5C8SEpNBJU4GNTLmfOpwQg2Q
         MLhFCJBuslnkXZH7zthVxmEkcVQdYAEAmDc5HrLm3v5Yi7ghJD+dxc8Ge9wn4QUDaCRD
         GkbMTUIeRBfE/4UldhGNydGTOTXvT64SbP4PSxPpTEKdvtfIHBjEkLKuqlYdi/itpRLy
         ciqw==
X-Forwarded-Encrypted: i=1; AHgh+RozhOdONgC1ejokLErU1WM8phGObNt6PmJvsSlO1TM/BEw6qHA5yLM6j4W14kR/8cQXbPxgr75KHes=@lists.infradead.org
X-Gm-Message-State: AOJu0YxEMeqmic9apUWnlaReScAXHVEmVAYTWJ3peLXUFPu4Nk2iP1A8
	SoRk8YdgVWYdkLRJthmkuDCwypMcFRR8zI+1i+qMmKEAkauqbs+Eubwf
X-Gm-Gg: AfdE7cn8DWgYLNp9PxaSFep/608+R5APVXoW5YEjkTHB3+QIfz2NhbtVQxm8b5IjOIN
	jFUl/EuImlFWIwzGXSxagEFYujJIz4woBT19z6X+qHiI6xd/Vij3zBZmhe2+4IlKY4qFBpd/aiS
	NIZTGnRoajlPWJCm5uIMWpe0ntPjJAQn7uD/MKoUypOKajcrGi0IDEhKsSR1g42y85cLZk17NG2
	GwiggT3m3/xeksNCquKa7K6mofiTTceSx8XbE2GSjm48bJ0mnSOfXSOO78egx+bds+lj170hsw8
	/wEPnKURplfAK6dkB8LSirvptPkCDCFKz61Mgv/PTiuXmkZR/gmdoHo8zYAKEql0ISrWAwhPG4c
	p0FPJeX5QUrXDdaplzeMT9h3WmDlH3g+Kc+8fL0A5sTKKDLdLJ6vU0P6tk7Xk2WeAETvyjZKXDH
	rwRDU4JplDO+iljA7tZOEy
X-Received: by 2002:a05:600c:5308:b0:493:d0f7:69c3 with SMTP id 5b1f17b1804b1-493e68eefecmr55543765e9.33.1783585874216;
        Thu, 09 Jul 2026 01:31:14 -0700 (PDT)
Received: from biju.lan ([2a00:23c4:a702:d301:8fb6:1d85:3dc1:42ab])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47a9e4d780csm50316543f8f.11.2026.07.09.01.31.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jul 2026 01:31:14 -0700 (PDT)
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
Subject: [PATCH v4 5/9] dt-bindings: phy: renesas,usb2-phy: Document RZ/G3L PHY bindings
Date: Thu,  9 Jul 2026 09:30:58 +0100
Message-ID: <20260709083108.108370-6-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260709083108.108370-1-biju.das.jz@bp.renesas.com>
References: <20260709083108.108370-1-biju.das.jz@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260709_013116_319479_80106BE7 
X-CRM114-Status: UNSURE (   8.96  )
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

From: Biju Das <biju.das.jz@bp.renesas.com>

Add device tree binding support for the RZ/G3L (r9a08g046) USB2 PHY.
The RZ/G3L USB PHY is almost identical to the RZ/G3S USB PHY, the
difference being 2 OTG blocks on RZ/G3L compared to 1 on RZ/G3S.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v3->v4:
 * Moved the patch for easy merging.
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
