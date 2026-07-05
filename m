Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE286C43458
	for <linux-phy@archiver.kernel.org>; Sun,  5 Jul 2026 07:58:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=loGWEXYu8JX35zgWX0GcznjEVI3a9ejKCmsORqRb4mw=; b=bT2ZZCukMeGIsm
	9w7+FfXMfNMaPAfZk0Kjm9NSMx5vVrHluuOSgICHuEqLTeJwPu7BqP9F1kLx4jY69wv1uQ/QCsm6k
	mvOdLjuRcxEZYOis7i1VPqnezYAM4wMDFfpiBIFbYM9QKDaVV+Zm45KxzdR5QXPwp2D2dqcsnV3Qt
	5WlMj6CRETWgulBt50Jadk0EN47B7IErqzv1msmDSFjCjERIhpfdDaX7f4ePrpZPjJxBPPx+xDQ+T
	NfwWBcZmIk0kjyGWH+hq/WIi/ZuhBE9wPFNBej+NHPCg5xKJ2wa2PReidlZgirCHXim31jmttWPHm
	DsoX5PxzikIExSU/VzKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgHkX-000000094hf-14CC;
	Sun, 05 Jul 2026 07:58:49 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgHkV-000000094g1-01cy
	for linux-phy@lists.infradead.org;
	Sun, 05 Jul 2026 07:58:48 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-493b27c7451so26530965e9.0
        for <linux-phy@lists.infradead.org>; Sun, 05 Jul 2026 00:58:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783238325; x=1783843125; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7UY6T/viKs724YCtcNe87O9J53G3jzdQBIfSFXtvLiY=;
        b=PQVmTK5boUMrLWMRvyMKbCfI+z87N3ZandP2YtBHmHmMMPNb2PERa/lFTbX8kPLwNy
         md2ERZzO7TFyieR9o+CXpmELjPKV7engdH/97BpPvdJ0gZ7T9xuG1IZqgFr+AL2iXCpV
         Pb87jO6ZM//1TCPDVSxCVJRvY/C1uKefzvMjCCH3sPtRcnI1yPinHR4dJQXFOWnis+PG
         NMkfU2JxbwOOGD7W+PI/hcqiuXmt3P7HST//l9ByucRIcct7/bSRFw6HP4gj9RJUBavV
         9GK93V3nSNqmUlydWh+8VcvN3LsH+LM1e1TzXmgpr5DFf25LV+vF8a3WqKWOpfr9ntW7
         +d/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783238325; x=1783843125;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7UY6T/viKs724YCtcNe87O9J53G3jzdQBIfSFXtvLiY=;
        b=Gr74DfEkkgID4KfxTyPFhAQvMApmkcrhdMfeYh6eFatHnzVk5g74RL4U8+FmUdu+QT
         jEkpRTyaiuTAkYrL8LoHKM7f9DvD8x122um4JOvOW25hMKXirdbxRaZ5OjbMOkDWUKje
         QY8ih9eenq66Q9DVoIok4eMNrV8L73ARO1dvMnP/m7quXdMLleEm5NUXnfeU89qHCQxY
         2+8q/rLsnu0qy94xkh33I206G+gGr3RA/yk8iF+ksudisIFBpJ+Dcr/1jCmy5drqFPkz
         YfK5gM35uqbZvDHSc3e8sr9x384nemCJosY0GvAJbX4MmDcN6lhEuvu3FNWUz0TTDT1o
         vbTg==
X-Gm-Message-State: AOJu0YwFJC54oD/1WZlZjm00eEy7TKcf1OV805CPRiVYk0HLlUSmL9H3
	1BCc4cEk9m95hKimgxASTayjE80PcyGSCdGFpsrrljtGVVdyazdDnIYH
X-Gm-Gg: AfdE7cn7Wc4xG7zAUJO+6y2O4+dHdSN+VIdq2a+dUxs8BcNRVSSnIL4akwELb/Oz0nl
	wEHv/1+1EYSuqBxmurXa+suLpTQJ319ZzzLY2+vtCeHPogvdpIDdl0jG9csJYTfWQmcWLx09gFw
	maDfGNjc8yO0OmSLcPsqkPt16jhlpAjUV/t1l3/xL4ybUrWO97bDBHnIiaGTiYCcd9fvBmM/aJa
	xN5gIFk9eix0jhkngmnh6PVXoru7CABPJet89yv95mlPyZJRurWO3vM+fTm/iPyVQ0wRpOx5RfS
	HSoM2sXZ7OPgSOvdb345cZC9yHo25j5d+I9ptjS6K9Yc5m710I/2g94ZHgkUJsAyhOSnwUYloEg
	GAHjUUtUD8iQ4fC3a18gk9eRkzNMCzBEdwgnmY5JTNylV00DgpshiCf0vDAvdQ9tI+9W33atMwd
	pOJaUC7gXNSN8kdatYZi3FyD2AMzorFwoCgg==
X-Received: by 2002:a05:600d:8444:10b0:493:c566:7bd6 with SMTP id 5b1f17b1804b1-493d159bae7mr37777895e9.18.1783238325038;
        Sun, 05 Jul 2026 00:58:45 -0700 (PDT)
Received: from localhost.localdomain ([95.43.220.235])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493c63bfba1sm305769765e9.15.2026.07.05.00.58.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jul 2026 00:58:43 -0700 (PDT)
From: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Aaro Koskinen <aaro.koskinen@iki.fi>,
	Andreas Kemnade <andreas@kemnade.info>,
	Kevin Hilman <khilman@baylibre.com>,
	Roger Quadros <rogerq@kernel.org>,
	Tony Lindgren <tony@atomide.com>,
	Linus Walleij <linusw@kernel.org>,
	Bartosz Golaszewski <brgl@kernel.org>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-omap@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>
Subject: [PATCH v2 3/5] ARM: dts: ti: cpcap-mapphone: use charger detection interrupt for CPCAP USB PHY
Date: Sun,  5 Jul 2026 10:58:07 +0300
Message-Id: <20260705075809.1793784-4-ivo.g.dimitrov.75@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260705075809.1793784-1-ivo.g.dimitrov.75@gmail.com>
References: <20260705075809.1793784-1-ivo.g.dimitrov.75@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260705_005847_212312_DB5CDAED 
X-CRM114-Status: UNSURE (   9.94  )
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

Update the CPCAP USB PHY interrupt mapping to use the charger
detection interrupt and corresponding "chrg_det" interrupt name.

This matches the driver and binding updates for DCP detection.

Signed-off-by: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>
---
 arch/arm/boot/dts/ti/omap/motorola-cpcap-mapphone.dtsi | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/ti/omap/motorola-cpcap-mapphone.dtsi b/arch/arm/boot/dts/ti/omap/motorola-cpcap-mapphone.dtsi
index 6b1195c2a768..51a858021541 100644
--- a/arch/arm/boot/dts/ti/omap/motorola-cpcap-mapphone.dtsi
+++ b/arch/arm/boot/dts/ti/omap/motorola-cpcap-mapphone.dtsi
@@ -125,11 +125,13 @@ cpcap_usb2_phy: phy {
 			interrupts-extended =
 				<&cpcap 15 0>, <&cpcap 14 0>, <&cpcap 28 0>,
 				<&cpcap 19 0>, <&cpcap 18 0>, <&cpcap 17 0>,
-				<&cpcap 16 0>, <&cpcap 49 0>, <&cpcap 48 0>;
+				<&cpcap 16 0>, <&cpcap 49 0>, <&cpcap 48 0>,
+				<&cpcap 13 0>;
 			interrupt-names =
 				"id_ground", "id_float", "se0conn",
 				"vbusvld", "sessvld", "sessend",
-				"se1", "dm", "dp";
+				"se1", "dm", "dp",
+				"chrg_det";
 			mode-gpios = <&gpio2 28 GPIO_ACTIVE_HIGH>,
 				     <&gpio1 0 GPIO_ACTIVE_HIGH>;
 			io-channels = <&cpcap_adc 2>, <&cpcap_adc 7>;
-- 
2.39.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
