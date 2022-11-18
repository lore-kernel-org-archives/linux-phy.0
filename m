Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C72C9C4332F
	for <linux-phy@archiver.kernel.org>; Fri, 18 Nov 2022 15:28:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gnOGt5bE/5Q3wsNf7K+EEFodOtpVGcliPO7e6HdSkt4=; b=h/rmekv7+yJHHs
	GIRo7znVTWW9aSXkCgSrI+sxp0Spywi6r3b1i1PpXji57rvgjIz/CLH22xLQTzARG1xtZvCfQSpSA
	qztW2MLe+++cu5W7tmB8pP7XX4IhrfPIUmyZKdBY4/ptfvAonqBNJzbFkZZ+zx5/b4lMNoboTaKi1
	Gh48hcS62l7y4BgMxS6BHDOarcRUy3Vb0nnDQJA5wwesywtRNusv8LpvkX5DxCP3yc+iA/fPob4Sn
	H6PZXJ6JipjPbnWm9TPJdH6Kjm/HWfGZXWIeTdmBECaEoG6ZjUpYzNkWqqbihDmCKWuvYJiKL//8+
	3Xqj4pqouZeNPpldA9hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ow3Hn-004uE7-7C; Fri, 18 Nov 2022 15:28:11 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ow3HY-004u09-3y
	for linux-phy@bombadil.infradead.org; Fri, 18 Nov 2022 15:27:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=vtHGgz0aNZ8O4g5t85qJZBMPGFrxhFl4205fva4OsWQ=; b=F7rVqAzAwZAxgSJtCjVinH8tlu
	rPrswkMiEbwEm8X6ueGJRw8bFtkw7TrSbP+bdp72FGi7wm/VQtTVBxyonjGu5wE+gWuvAyRwFfyRm
	nV9TTFmcp5mwoNZBx0STQI5YoGdoOy38kw6rHk1AETF4Qc+u/RDpe19ctvrytVXgsLD0A3csz3+Lh
	gm3WBBTa5xQqc72tZWZqEgY6/GHVc1nZcY1voWLlYElTfWb/l2P5YGY0Mbcz7bJfnoG6O1OYugwL4
	zs9D7qSbCfLzyf1KOUxsIAmbvcp8vKdW0RAfPfb7AjaVzoXJIX6UV+9rA6Pn8A+PsU3B8HgHGfC32
	DzSikcDQ==;
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ow2R5-0020yv-3o
	for linux-phy@lists.infradead.org; Fri, 18 Nov 2022 14:33:46 +0000
Received: by mail-wr1-x432.google.com with SMTP id x5so5450930wrt.7
        for <linux-phy@lists.infradead.org>; Fri, 18 Nov 2022 06:33:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vtHGgz0aNZ8O4g5t85qJZBMPGFrxhFl4205fva4OsWQ=;
        b=BO8ROg5BJ6RGrVq0ohOOCYibPNqDvqoYFsCNTT11mx497PxFVxShxxsUfRwD4SK3cU
         TsZeYKUDcFOgHM4ELTZR4kNhfhkVLT/4o4ZGY670L9bRsP9uoQWoBWQyXIKx2pvTA9yP
         tphOK/1eDercWalNOehohRD0IVAjqv6ZLEgDoBj/MOW9ryORoKz/iYRO8WCuI1/SBf9u
         PZOhT4cdxEljiB1lmm06JfNbtsFmU6F5TMo262xjqipEVdKPbrudHDle9L7ubqqfzPvv
         mIImRMlOFpbPJYYhNmDAtX4e7tXnVMbIct1UMMktGogpQgzgf1iHHYMB54R7vE9uhzWQ
         bZnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vtHGgz0aNZ8O4g5t85qJZBMPGFrxhFl4205fva4OsWQ=;
        b=aYcvrPLtu76kyZh4QADLa9LA+Iz2jZXpFRZCL931VXLOHqNM+pNkvs5EUzcG9wLHKL
         TIdK7yhFjNCtOgSGEnwLnzugoVXX+9DeILR5B4b/LVGej/iN+mvWKMiKEFHZoaBI8IVq
         fPO0ClskyF/r43jbbsg9V4aA/AParLTQfJKyq/AXzFI5OtjKbfxGAtgpM/1aq8H07d3Z
         aQOsM9MgbY4HDi0V7J4EaRuZWhep8LyOKPVA+62OHcDl3Bn/8Hpht5Vr288TRzCrqTJ+
         fEVGqlvzsAITzzgshchk0jiFBo9MQDDHGAnq+KJJRAxKI8JMGL7zfdfz4/yE4SYk734Z
         ke0g==
X-Gm-Message-State: ANoB5pls1XvfJGEvI7+NWYKSy90S2kmp2HbSESBepclxDEIE4t7EB9vw
	wAkXTymCgyn8nuntIJ+iGB2j+g==
X-Google-Smtp-Source: AA0mqf4XNekGInOYNeUSa4phDRGqqyxVcnEtfIoRmwb92p+n2ynVm0c1NWFDdqoA08jLtN/J9Y9ReQ==
X-Received: by 2002:a5d:4408:0:b0:236:b877:d24a with SMTP id z8-20020a5d4408000000b00236b877d24amr4372700wrq.162.1668782021283;
        Fri, 18 Nov 2022 06:33:41 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id j21-20020a05600c1c1500b003cfb7c02542sm5436726wms.11.2022.11.18.06.33.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Nov 2022 06:33:40 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 18 Nov 2022 15:33:33 +0100
Subject: [PATCH 07/12] dt-bindings: power: remove deprecated
 amlogic,meson-gx-pwrc.txt bindings
MIME-Version: 1.0
Message-Id: <20221117-b4-amlogic-bindings-convert-v1-7-3f025599b968@linaro.org>
References: <20221117-b4-amlogic-bindings-convert-v1-0-3f025599b968@linaro.org>
In-Reply-To: <20221117-b4-amlogic-bindings-convert-v1-0-3f025599b968@linaro.org>
To: Jakub Kicinski <kuba@kernel.org>, Wim Van Sebroeck <wim@linux-watchdog.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, Rob Herring <robh+dt@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
 Alessandro Zummo <a.zummo@towertech.it>, Eric Dumazet <edumazet@google.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Kevin Hilman <khilman@baylibre.com>, Ulf Hansson <ulf.hansson@linaro.org>, Heiner Kallweit <hkallweit1@gmail.com>,
 Vinod Koul <vkoul@kernel.org>, Russell King <linux@armlinux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Guenter Roeck <linux@roeck-us.net>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Jerome Brunet <jbrunet@baylibre.com>, Paolo Abeni <pabeni@redhat.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Cc: linux-media@vger.kernel.org, netdev@vger.kernel.org, linux-amlogic@lists.infradead.org, linux-mmc@vger.kernel.org,
 linux-rtc@vger.kernel.org, linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-watchdog@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
 Neil Armstrong <neil.armstrong@linaro.org>, devicetree@vger.kernel.org
X-Mailer: b4 0.10.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221118_143343_405162_F195D489 
X-CRM114-Status: GOOD (  12.52  )
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

Remove the deprecated amlogic,meson-gx-pwrc.txt bindings, which was
replaced by the amlogic,meson-ee-pwrc.yaml bindings.

The amlogic,meson-gx-pwrc-vpu compatible isn't used anymore since [1]
was merged in v5.8-rc1 and amlogic,meson-g12a-pwrc-vpu either since [2]
was merged in v5.3-rc1.

[1] commit 5273d6cacc06 ("arm64: dts: meson-gx: Switch to the meson-ee-pwrc bindings")
[2] commit f4f1c8d9ace7 ("arm64: dts: meson-g12: add Everything-Else power domain controller")

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../bindings/power/amlogic,meson-gx-pwrc.txt       | 63 ----------------------
 1 file changed, 63 deletions(-)

diff --git a/Documentation/devicetree/bindings/power/amlogic,meson-gx-pwrc.txt b/Documentation/devicetree/bindings/power/amlogic,meson-gx-pwrc.txt
deleted file mode 100644
index 99b5b10cda31..000000000000
--- a/Documentation/devicetree/bindings/power/amlogic,meson-gx-pwrc.txt
+++ /dev/null
@@ -1,63 +0,0 @@
-Amlogic Meson Power Controller
-==============================
-
-The Amlogic Meson SoCs embeds an internal Power domain controller.
-
-VPU Power Domain
-----------------
-
-The Video Processing Unit power domain is controlled by this power controller,
-but the domain requires some external resources to meet the correct power
-sequences.
-The bindings must respect the power domain bindings as described in the file
-power-domain.yaml
-
-Device Tree Bindings:
----------------------
-
-Required properties:
-- compatible: should be one of the following :
-	- "amlogic,meson-gx-pwrc-vpu" for the Meson GX SoCs
-	- "amlogic,meson-g12a-pwrc-vpu" for the Meson G12A SoCs
-- #power-domain-cells: should be 0
-- amlogic,hhi-sysctrl: phandle to the HHI sysctrl node
-- resets: phandles to the reset lines needed for this power demain sequence
-	as described in ../reset/reset.txt
-- clocks: from common clock binding: handle to VPU and VAPB clocks
-- clock-names: from common clock binding: must contain "vpu", "vapb"
-	corresponding to entry in the clocks property.
-
-Parent node should have the following properties :
-- compatible: "amlogic,meson-gx-ao-sysctrl", "syscon", "simple-mfd"
-- reg: base address and size of the AO system control register space.
-
-Example:
--------
-
-ao_sysctrl: sys-ctrl@0 {
-	compatible = "amlogic,meson-gx-ao-sysctrl", "syscon", "simple-mfd";
-	reg =  <0x0 0x0 0x0 0x100>;
-
-	pwrc_vpu: power-controller-vpu {
-		compatible = "amlogic,meson-gx-pwrc-vpu";
-		#power-domain-cells = <0>;
-		amlogic,hhi-sysctrl = <&sysctrl>;
-		resets = <&reset RESET_VIU>,
-			 <&reset RESET_VENC>,
-			 <&reset RESET_VCBUS>,
-			 <&reset RESET_BT656>,
-			 <&reset RESET_DVIN_RESET>,
-			 <&reset RESET_RDMA>,
-			 <&reset RESET_VENCI>,
-			 <&reset RESET_VENCP>,
-			 <&reset RESET_VDAC>,
-			 <&reset RESET_VDI6>,
-			 <&reset RESET_VENCL>,
-			 <&reset RESET_VID_LOCK>;
-		clocks = <&clkc CLKID_VPU>,
-			 <&clkc CLKID_VAPB>;
-		clock-names = "vpu", "vapb";
-	};
-};
-
-

-- 
b4 0.10.1

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
