Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4414BC44500
	for <linux-phy@archiver.kernel.org>; Sat,  4 Jul 2026 07:39:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s6jf04QUh4v1c7ITTUyx6ZwNMdvEOfN+W65tvgZIgYU=; b=kwK41GS+DY24Lf
	UaoQd2basbFP9MNUl8rvF0iaGc0IbFofi9A2vJ/aGISGGRpy/q6lI+8KOMB82N+ZY6X76d9kK2vDh
	RfLEAMESSTd2loyLU+Q2qrkwGldfcYSL8c7rkDRqnphhXrD8+YWeJqXcnK3uIqq11HkHd/87INeuK
	jgzmixsJ3CyB+9ecdOo7ox7/ml4juH/fZm9Z80ONBE5Jhx7tjNIg6tMNooBG1gjKCWjmgS9xd6sX6
	2Yl8gsr4fRWEsodDzN17dgSzT9TZ7Mrxs08C4bRugNW8epzu/YkpL2udRJ4g/uPi2EN2G88056ywl
	6XYKUdvSGspH1AUT1t8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfuyD-00000008GSW-4AyF;
	Sat, 04 Jul 2026 07:39:25 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfuyB-00000008GQQ-1EVE
	for linux-phy@lists.infradead.org;
	Sat, 04 Jul 2026 07:39:24 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-493ae59eca6so8702445e9.1
        for <linux-phy@lists.infradead.org>; Sat, 04 Jul 2026 00:39:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783150761; x=1783755561; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=BCU57h1AQhpc1p/9qZeN2ZrfUbMLmuZ03JO7I6z1Jug=;
        b=UEIm0CGmMw1aNLtK3IJ+mrLKkP5xjYrrTmA8xE96ddXIi0PUWoo+IYa4eBrkdkAszg
         r95jKyals32VWP5tpHYQhWrrAnr/UiyfG5fWMLOcWicNjHjX8HIVfWlxrlpMlzFVTBOp
         /FPZRlWBRb2iESQThTkXe//joRLjmCa62/9KF2SewZ34PZGCGHlL5pIY18Lta/LFZCHG
         k95pL/dlPdpMU54Ie+Jf4KyJhbD8Z//qPCYQxTK9dzNuBe1Tag3beWmOzJDq4SUveGkc
         vVo9IZEESkLOvE80PeIDsKbD31xPaR6YVX7MJl38/vRbGqg6PZszSEJ7d57LTIMzEa8I
         ox+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783150761; x=1783755561;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=BCU57h1AQhpc1p/9qZeN2ZrfUbMLmuZ03JO7I6z1Jug=;
        b=DTq79Cv95bE3kGveU55O7XKAUxYIpBy+a4kCmwEHaCtHiJ8BOn+lnIuF2BfaWr6eXd
         T9StoNVYEpQ2GWFhw+ZU9LmRFlozuufKJrN833Vd1AyuIY2fwWfRUbb2xkb6ye6Xgk7X
         9VE6OAh70TkyMwyuVEXjtWbKkZdrGKW6XERldN/6KcyPgRkMNjV8quXZqG2q4Qk6Utpg
         xxPtwWKnFOpMC3tN4ISGVvs3y/seKxhwRZ+Kb0d2BwaKiryOb4Cz+jv471aPicZiXKQu
         U82644w9w0H3F9JDPcaQ7eBRdT/GwX3jqmmDO+ZNDvYFbrg6jIPsbG9Up77eCJsZO59r
         9sEg==
X-Gm-Message-State: AOJu0YyLO6FmD1F1n42Uq+zZHgVfgtCMks6m3I+1Mv6PesSo0tpDStfP
	Vjw/yxfHTnGc2+6RiaEtLu0ebgn5mfU1C5dRuOTtKU1g8ke7Dsbn2bVN
X-Gm-Gg: AfdE7cnoIChczmbBOqGyfjE1ORp2x9wqbuJNWdeVdMBclg8F59WnA32KUILqDW7HF6M
	u4fqxAZrLylii0TS0Px8LB40qEZ9RKjylzGiUegHIUhewbIv7YJ44HiF3ET5EQDUS6VC3zpC3tI
	cwzd2iJVEDL8JoUdAq5v9V+/Joy0wifD+vpp+BZ4JZBgWf5hYy3n3y0MLzUuEZCFvFMO9vGuOo6
	WQ+TVj9NDHn4Tu3YfjobnqTla5NUxVcfVYo5nvvpUdwiqT/6in+vuwJ734FbC93PpoegiI3zdZO
	w5w/qrfKuU+/il8dBAzCoLHfz75vHPCwZbqLWXMJmOct4Ytnb8f7B+OIgGRUEiBvgxoSnVCIpJx
	OVqVBvkJQoneObJHW0LBFdv0pk2MGpquchnSL/Tqla346pVcSx0aPFbYxfOQAa2Q3vljum0RvbR
	94IcmRPOct2I1xB0yIg0C+zKLbaB7KIdIpTg==
X-Received: by 2002:a05:600c:4e13:b0:493:b729:3a9 with SMTP id 5b1f17b1804b1-493d11f577amr25900125e9.27.1783150761434;
        Sat, 04 Jul 2026 00:39:21 -0700 (PDT)
Received: from localhost.localdomain ([95.43.220.235])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47a9de1e736sm6565488f8f.7.2026.07.04.00.39.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Jul 2026 00:39:21 -0700 (PDT)
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
Subject: [PATCH 4/5] ARM: dts: ti: cpcap-mapphone: use charger detection interrupt for CPCAP USB PHY
Date: Sat,  4 Jul 2026 10:38:42 +0300
Message-Id: <20260704073843.1750458-5-ivo.g.dimitrov.75@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260704073843.1750458-1-ivo.g.dimitrov.75@gmail.com>
References: <20260704073843.1750458-1-ivo.g.dimitrov.75@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260704_003923_348243_DE5769F0 
X-CRM114-Status: GOOD (  11.42  )
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
 arch/arm/boot/dts/ti/omap/motorola-cpcap-mapphone.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/ti/omap/motorola-cpcap-mapphone.dtsi b/arch/arm/boot/dts/ti/omap/motorola-cpcap-mapphone.dtsi
index 6b1195c2a768..b75a327caf1f 100644
--- a/arch/arm/boot/dts/ti/omap/motorola-cpcap-mapphone.dtsi
+++ b/arch/arm/boot/dts/ti/omap/motorola-cpcap-mapphone.dtsi
@@ -125,11 +125,11 @@ cpcap_usb2_phy: phy {
 			interrupts-extended =
 				<&cpcap 15 0>, <&cpcap 14 0>, <&cpcap 28 0>,
 				<&cpcap 19 0>, <&cpcap 18 0>, <&cpcap 17 0>,
-				<&cpcap 16 0>, <&cpcap 49 0>, <&cpcap 48 0>;
+				<&cpcap 13 0>, <&cpcap 49 0>, <&cpcap 48 0>;
 			interrupt-names =
 				"id_ground", "id_float", "se0conn",
 				"vbusvld", "sessvld", "sessend",
-				"se1", "dm", "dp";
+				"chrg_det", "dm", "dp";
 			mode-gpios = <&gpio2 28 GPIO_ACTIVE_HIGH>,
 				     <&gpio1 0 GPIO_ACTIVE_HIGH>;
 			io-channels = <&cpcap_adc 2>, <&cpcap_adc 7>;
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
