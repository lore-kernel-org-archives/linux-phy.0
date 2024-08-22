Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3621DC531DF
	for <linux-phy@archiver.kernel.org>; Thu, 22 Aug 2024 15:55:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lSNEfsvwRSRQO0MuBursIOBwpt6KRG0zZVVXY3zWTN8=; b=CO7rXlBLdKlV98
	rKQX8P1vSERRmKKKWUUiSF2QwCv4LmaScq5eXVfWTV+L3SKZ3T01qI637SMlo/WbarD023KtGYrcV
	wEjjBl/WvIaoBJ3LtVh5O7xFfArbGHtXWmodM25rHLjkwr4K7x5k+g2lPXiP2DUk0PiWQhjoLZspg
	p6OZsAwq1kJJaZ4J7SRfYDNX0DRiDGu6M8KCJFtnq/gbQrUd9Ij7Y6tbxg6RWcOUrIQmhjNNKDRg+
	wHNR8lv2xb4jojhgEZHVyCcO5lWvN4xotXVcMvU6m5KEZ9dy/OgfYOzg8uAbsSMljesPvC5bAN+pH
	BflEQF94zfzosQrVlCXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shA9o-0000000DSHo-1jbX;
	Thu, 22 Aug 2024 15:55:28 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh9jw-0000000DKwf-2aFH
	for linux-phy@lists.infradead.org;
	Thu, 22 Aug 2024 15:28:45 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-a8682bb5e79so135728366b.2
        for <linux-phy@lists.infradead.org>; Thu, 22 Aug 2024 08:28:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1724340523; x=1724945323; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AWNzbrWT4cjZwlbw/B+Ku5dXdfTILO3SL/AQs9G2I5o=;
        b=H/eAwGUwhP+JcQ6nZvyIe5FgtNTvNsn019GPVWvJBAh9ZKWNm5+i3xlKXOEp+lcenM
         753aNGOAK1W8hc74Y+48N9D1p1Y4LKNg/a0y0S9fW3CvJPAWsfDIalCtSBh54JJhQ3CU
         iiAihdxWDA/QUDUR41PHpkUxuOMVNGJR/NrgYsrWOe5d6sS3pWYgY/T6K4vFlx9eAz7l
         OrXO1w7vVhB3gdxp//vRwdY+hQCX6wsyErNFG4diCNVm3CoDRAe4vYLvr6h9+qxTdRRc
         UQwrf9q5tVzk87oX21E3yrlrJIXhFqz0pM3p2u1CnQHODWt+ugBo4ZWtGtSBRCD8ywoJ
         97QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724340523; x=1724945323;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AWNzbrWT4cjZwlbw/B+Ku5dXdfTILO3SL/AQs9G2I5o=;
        b=rWHKqNgrKISwFvELac0JWc1OCOiagj/iJP/t3hN+aAqtM60gynYdmFjaOhD3pjJ6bG
         yhtdiJFj+JolwqMIyLRcchaP++miXoMFR1d/UOCs/al3tUkAbFXijaracSIKOXhmydJB
         VMT/hBpfRoWpH5z8iHJTIVgYAl4ViSQQXQTD8j1GKfHrHsKaSZn2mDx4iNJtl5Kuqvgq
         p9POuvlckV+bQu+QRaeJ8Jd1y8UWWGJPJcEmkqEvJmTGH9IveZMTtGbnFcCTaYGU7Aux
         7E8/qTLebTdRoR0xS4mbCuHMX/SsIxHOZtLZU3zgQ9EN2TP94rLqaxpD3nTOPfn1+X9B
         dbDg==
X-Gm-Message-State: AOJu0Yzlnisw4m9ItS1UsDWO/tH8iThXCEieqrEpbfhqhQtiAXPPpJgE
	iEB3Xec8nAk8l863sWWI/CgLeqWoJ0AiVZPr4XWIIxDfTgYj9J856d+SdrxkYFY=
X-Google-Smtp-Source: AGHT+IHil/3QLm3fW6hjS77rGDv48oy9/7q2NQAgMRaJIdEszcJA4lXA3RSoaEhwajY77aZMJWnb/Q==
X-Received: by 2002:a17:906:7313:b0:a86:700f:93c1 with SMTP id a640c23a62f3a-a86700fb357mr451883866b.60.1724340523183;
        Thu, 22 Aug 2024 08:28:43 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a868f484dc5sm134189166b.171.2024.08.22.08.28.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Aug 2024 08:28:42 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	gregkh@linuxfoundation.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	yoshihiro.shimoda.uh@renesas.com,
	biju.das.jz@bp.renesas.com,
	ulf.hansson@linaro.org
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-pm@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 13/16] arm64: dts: renesas: Add #reset-cells to system controller node
Date: Thu, 22 Aug 2024 18:27:58 +0300
Message-Id: <20240822152801.602318-14-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_082844_679781_115483C7 
X-CRM114-Status: UNSURE (   7.98  )
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

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

System controller on RZ/G3S can act as a reset controller. Add #reset-cells
for it.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/r9a08g045.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
index 0d5c47a65e46..cd7cefdb2bab 100644
--- a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
@@ -91,6 +91,7 @@ sysc: system-controller@11020000 {
 				     <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "lpm_int", "ca55stbydone_int",
 					  "cm33stbyr_int", "ca55_deny";
+			#reset-cells = <1>;
 			status = "disabled";
 		};
 
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
