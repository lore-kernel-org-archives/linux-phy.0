Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67033C531DF
	for <linux-phy@archiver.kernel.org>; Thu, 22 Aug 2024 15:55:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K0DCBnCnq4nd6fcY6Vv1e95iWjQU8UUTTXXClgYKKWA=; b=w5QhHIKnbtwD+l
	JzPVbVqLa2hu+cUCRvbLDkdP7qKx66f0svQn3Hvo8IDn/1gPf48ohgAlaxp/UodvixoOKcm5+eNIV
	QicQxWu+6oXtAZPURbvCEwHRAFeffC/uAWgOp4zpIiFjJx1WE6tP7T5d/V53XwPSM6/R9xB4HQ0IK
	5zZHuMK7E8sIBRHcfyD5neq1v2dM6IhQQ31DQECaT3Qy5iIjAo/Nzp/nEYo8z9uB+4vtwIK8lPNJF
	iz7aJs6dz+/M1JDtMAqTe1f9ohY03UXX+DVCyQY1Cb8cEsH0IXmVyPZDwC7qVi0t4K52ZJcAHjkEh
	RtgbfY4FyIs+FxKkUTdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shA9a-0000000DS4P-2A8a;
	Thu, 22 Aug 2024 15:55:14 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh9jn-0000000DKs1-46EB
	for linux-phy@lists.infradead.org;
	Thu, 22 Aug 2024 15:28:37 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-a866cea40c4so118557466b.0
        for <linux-phy@lists.infradead.org>; Thu, 22 Aug 2024 08:28:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1724340514; x=1724945314; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mGjGXMgxdEYAGo1GbGD2zE9hgBaB/Zwy6Dj9nf1BYt0=;
        b=dqoawmiMxRKlhhNQCL9ai7x0WbJ360/ZS0gzcxBq12K3ruTTQ1EUDkyrseycOfJ/hw
         37xEdjQicLXjAv3C7ltT1wwCCORINtGXvfDynZwcPsMXyM2h4XfbFyatyKkfIb9+8wYQ
         scCwxNOQwNf85g3FS05QdrtTv2vlDj5Ye/Hq6o3HXppxbD1UWDbe0Cti0vbv8OCmlgkx
         2uz73UC2PDBW9jjhkuS9JRnAzHdFGgWqNrj6Nqb7MDuE+BwQV2HYLGeSkkrLtbfvjIYr
         0Y7M8c3+Fa8gvZLkcgrlVsD8lwIyN66ZUYO8dvwrUeZjfIxMtarhTB2kudHJLmUA089s
         fQ3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724340514; x=1724945314;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mGjGXMgxdEYAGo1GbGD2zE9hgBaB/Zwy6Dj9nf1BYt0=;
        b=JOn4aYoTEUjR2maAKpB/55y0DphF+9YuzZz0lfbzDCkfCk96LfiZ+cvBUtFBpAUXEb
         9KwIG+0xWe+3k6g4UGEu7DziN7L1bYlczRsrn06HkCm1zxKKDAJMmVQksGtUnnwwzrDU
         yB8HVmI/0ZfHqNDB9dnTJoWPVSwFPAcdemPfytf7cWplBPUTOaXWGA1tCDkUMuGq5AWd
         bipyzCYf2Nbop1kAjBNAPZdFOYzMdL0i3r3cNVtPHxyKzGOlLBynR0XZyqazy7Ic1m17
         pXSTqObB3xQiJHfIDzbWlde8IB5/PGzd17ybJ4w0X763f3V/3rtH8AGOufRSI0kN1Uqx
         0bgw==
X-Gm-Message-State: AOJu0Yx8on71G4qoGoTvTnKKnBdVBJgWEUqL/5gFsTQO4CqFNtJjEQ+Q
	YKKf4xgwEaMW6g2cRSf9mTHfcQQ9OKuJBcYUg0arInEd00YCBdTqNNZzPuFyiPM=
X-Google-Smtp-Source: AGHT+IGJeJoxOq1tlRUs+MCEa5uz16WViXX/h9LB3VGUBluXlsLHOcyR6hbTFMMPgE0Rs2wdaLi06w==
X-Received: by 2002:a17:907:f74f:b0:a72:40b4:c845 with SMTP id a640c23a62f3a-a866f70378emr511233066b.51.1724340514344;
        Thu, 22 Aug 2024 08:28:34 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a868f484dc5sm134189166b.171.2024.08.22.08.28.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Aug 2024 08:28:33 -0700 (PDT)
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
Subject: [PATCH 09/16] dt-bindings: usb: renesas,usbhs: Document RZ/G3S SoC
Date: Thu, 22 Aug 2024 18:27:54 +0300
Message-Id: <20240822152801.602318-10-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_082836_050420_9E6F7D5B 
X-CRM114-Status: UNSURE (   8.53  )
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

The USBHS IP block on RZ/G3S SoC is identitcal to the one found on the
RZ/G2L device. Document the RZ/G3S USBHS IP block.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 Documentation/devicetree/bindings/usb/renesas,usbhs.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/renesas,usbhs.yaml b/Documentation/devicetree/bindings/usb/renesas,usbhs.yaml
index c63db3ebd07b..0f84cba872ce 100644
--- a/Documentation/devicetree/bindings/usb/renesas,usbhs.yaml
+++ b/Documentation/devicetree/bindings/usb/renesas,usbhs.yaml
@@ -26,6 +26,7 @@ properties:
               - renesas,usbhs-r9a07g043 # RZ/G2UL and RZ/Five
               - renesas,usbhs-r9a07g044 # RZ/G2{L,LC}
               - renesas,usbhs-r9a07g054 # RZ/V2L
+              - renesas,usbhs-r9a08g045 # RZ/G3S
           - const: renesas,rzg2l-usbhs
 
       - items:
@@ -126,6 +127,7 @@ allOf:
               - renesas,usbhs-r9a07g043
               - renesas,usbhs-r9a07g044
               - renesas,usbhs-r9a07g054
+              - renesas,usbhs-r9a08g045
     then:
       properties:
         interrupts:
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
