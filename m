Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E97FD58D62
	for <linux-phy@archiver.kernel.org>; Tue, 26 Nov 2024 09:21:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cy8knLtwEJj2fjT3zzsOP3zRDnVzbKzdcgvK0S0E4qc=; b=mjCC1djIkx+oz+
	6bhOxNLfEcP9K87s1qr8kNJYXSfOY9RnXNPHwhEnEx6ykWiZ7Ihnj0X4u8zYbfAyc5h7JiYBvR8Am
	z7GBC4dMkMi95DvTYm1tP0XloxrmbDi0A40pS18LeYUd5o2ibUZBEqvUR4UCu25Rtm3GR9BSC7lSf
	sM4nuihHgHYr7QpRG9Qk+yMpugo8U8OuDn84X5kEri4XB59sANN8vaqS/eRr+xrxhcPOPpbBILGg9
	2SAG7L37UcwesxS50x3NOhkdiVg+OCCR7dfQTk+/2S43DHII1wT7FAuiz+08wiqO6dK0Kc3fHN9xW
	3QsVVEGDcETIDpM2rSHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFrlI-0000000A7Os-3vIT;
	Tue, 26 Nov 2024 09:21:36 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFrl9-0000000A7CT-2uAD
	for linux-phy@lists.infradead.org;
	Tue, 26 Nov 2024 09:21:29 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-4349e1467fbso17704385e9.1
        for <linux-phy@lists.infradead.org>; Tue, 26 Nov 2024 01:21:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1732612886; x=1733217686; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E4M5g4cOSJdZAIQtrKw1Bn/YMzw7ikJ/cpvkoOSwCx8=;
        b=PyNrQQTmQAerhYO+YNm4NGDsXHU/OGUomVhBl8QP/ly7SDSGjyivg/ApWu8o08+drZ
         BmyO4AKj0Hunx0p901hT3eB3g1jlqoxPD8A8kXKilT3eVXr9yjWTO8O+CxX6Yk8hRDGV
         Johyk68BnEcA1G4qYFsgupTlVWu5ud8wC23hxJHXrAvQ0IvFSGY/Q1/DSKY6uKhVEcaA
         Yyzfgq/wah8B1jxRzBHENDJaJ4htfF22aqr8zWyAyuNrknvtzlE0QthBM3trcOa7DuOV
         4CATFjm7vHLX2GDJi9QAKXtPLtoehYHH2phvh6EatIBExsrf49DPC4HX4Ulx68LHVHja
         P0MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732612886; x=1733217686;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E4M5g4cOSJdZAIQtrKw1Bn/YMzw7ikJ/cpvkoOSwCx8=;
        b=WPiwZualX2DF6xemBGSVyuH8/yXBB8GvPyliUN3xUAIsOqUGKnrrHZuHfjZj6+ui5O
         mgAMj020FqorJI1tzAQpbWKLgEIozDI54NcrsIjC2bBoIBo37V9mgKnnmOQ2GTYCbSmN
         D0avKWN+hphvjc7yCoVbffIO0KQ6nPnqveXBCR+0/LSaRwTWW5mkkqSaWE776UsHqDOg
         aGUei1mEO3TbwxU1ZQazsGH8/NcdwXJ6+LiRc/VojfEniPyYs5Oqlz7UAUCOMRSqf55I
         2zgsULrZZ9OQzf9+Fu3FmjI5SXF/ngemAAEI4QtRYrtN5SWCpN1vLnp8He2aTsOQS6Dz
         nPnw==
X-Gm-Message-State: AOJu0YwOur5y3HdcWlmI9bv5EGJoIvN0rz9dhAc/WjtbjtTqcFXGq0Rz
	46ZT5+AhfXa0j+DkiKsrVVDNYsaE8G6WhLCYlfBcY/PPgRGoKHvRMuBy/hoGCjs=
X-Gm-Gg: ASbGnctx+5iWXLJm86I2kMT+DaIXRmVv07kquBqzpKcW97S0RAicqXBDaRBNle7tzXo
	vAywBhYDgMc+dWOS3iD9tYkI4RhdK7/e+p4nON+OphB0KiujgNr1I4PdnGTYumd8VrCM5a80ZyE
	TKgnQ6GrEDyCr8SVv78XtwxJ2zenw8VeQQ4jK02z9JZRhvuZy76kwSEXhp2uiZf6fm5qNlakmOF
	6ILZdTANqMMfALaLC7UdiFhcoH8dFq60WCydb/LtvIBfpo7T+HOQ+ZUp4OrGrFhruxd3TTeN8tt
	xRM=
X-Google-Smtp-Source: AGHT+IFFCuS7xBS3otNkuGr2IzoMyH/CTvsuJMT+O34OiuKVD91ks7D0BrVopsaLaBF4QZUasDuXXQ==
X-Received: by 2002:a05:6000:18ac:b0:37c:d1bc:2666 with SMTP id ffacd0b85a97d-38260b502dcmr12951812f8f.4.1732612885919;
        Tue, 26 Nov 2024 01:21:25 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3825fbc3a47sm13027694f8f.73.2024.11.26.01.21.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Nov 2024 01:21:25 -0800 (PST)
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
	yoshihiro.shimoda.uh@renesas.com,
	christophe.jaillet@wanadoo.fr
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-usb@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 12/15] arm64: dts: renesas: Add #renesas,sysc-signal-cells to system controller node
Date: Tue, 26 Nov 2024 11:20:47 +0200
Message-Id: <20241126092050.1825607-13-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241126_012127_728563_298A6C2B 
X-CRM114-Status: UNSURE (   9.59  )
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

The system controller on RZ/G3S can provide control access to its signals.
To enable this, add the #renesas,sysc-signal-cells DT property. Consumers
can use the renesas,sysc-signal DT property to reference the specific SYSC
signal that needs to be controlled.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- none; this patch is new


 arch/arm64/boot/dts/renesas/r9a07g043.dtsi | 3 ++-
 arch/arm64/boot/dts/renesas/r9a07g044.dtsi | 3 ++-
 arch/arm64/boot/dts/renesas/r9a07g054.dtsi | 3 ++-
 arch/arm64/boot/dts/renesas/r9a08g045.dtsi | 3 ++-
 4 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/r9a07g043.dtsi b/arch/arm64/boot/dts/renesas/r9a07g043.dtsi
index 593c66b27ad1..2ebb951e6a39 100644
--- a/arch/arm64/boot/dts/renesas/r9a07g043.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a07g043.dtsi
@@ -585,8 +585,9 @@ cpg: clock-controller@11010000 {
 		};
 
 		sysc: system-controller@11020000 {
-			compatible = "renesas,r9a07g043-sysc";
+			compatible = "renesas,r9a07g043-sysc", "syscon";
 			reg = <0 0x11020000 0 0x10000>;
+			#renesas,sysc-signal-cells = <2>;
 			status = "disabled";
 		};
 
diff --git a/arch/arm64/boot/dts/renesas/r9a07g044.dtsi b/arch/arm64/boot/dts/renesas/r9a07g044.dtsi
index 6b1c77cd8261..9dd229cbf288 100644
--- a/arch/arm64/boot/dts/renesas/r9a07g044.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a07g044.dtsi
@@ -877,7 +877,7 @@ cpg: clock-controller@11010000 {
 		};
 
 		sysc: system-controller@11020000 {
-			compatible = "renesas,r9a07g044-sysc";
+			compatible = "renesas,r9a07g044-sysc", "syscon";
 			reg = <0 0x11020000 0 0x10000>;
 			interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>,
@@ -885,6 +885,7 @@ sysc: system-controller@11020000 {
 				     <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "lpm_int", "ca55stbydone_int",
 					  "cm33stbyr_int", "ca55_deny";
+			#renesas,sysc-signal-cells = <2>;
 			status = "disabled";
 		};
 
diff --git a/arch/arm64/boot/dts/renesas/r9a07g054.dtsi b/arch/arm64/boot/dts/renesas/r9a07g054.dtsi
index 01f59914dd09..31550b8c3143 100644
--- a/arch/arm64/boot/dts/renesas/r9a07g054.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a07g054.dtsi
@@ -884,7 +884,7 @@ cpg: clock-controller@11010000 {
 		};
 
 		sysc: system-controller@11020000 {
-			compatible = "renesas,r9a07g054-sysc";
+			compatible = "renesas,r9a07g054-sysc", "syscon";
 			reg = <0 0x11020000 0 0x10000>;
 			interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>,
@@ -892,6 +892,7 @@ sysc: system-controller@11020000 {
 				     <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "lpm_int", "ca55stbydone_int",
 					  "cm33stbyr_int", "ca55_deny";
+			#renesas,sysc-signal-cells = <2>;
 			status = "disabled";
 		};
 
diff --git a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
index be8a0a768c65..169561386f35 100644
--- a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
@@ -198,7 +198,7 @@ cpg: clock-controller@11010000 {
 		};
 
 		sysc: system-controller@11020000 {
-			compatible = "renesas,r9a08g045-sysc";
+			compatible = "renesas,r9a08g045-sysc", "syscon";
 			reg = <0 0x11020000 0 0x10000>;
 			interrupts = <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>,
@@ -206,6 +206,7 @@ sysc: system-controller@11020000 {
 				     <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "lpm_int", "ca55stbydone_int",
 					  "cm33stbyr_int", "ca55_deny";
+			#renesas,sysc-signal-cells = <2>;
 			status = "disabled";
 		};
 
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
