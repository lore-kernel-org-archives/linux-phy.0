Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1047C43602
	for <linux-phy@archiver.kernel.org>; Sun,  5 Jul 2026 10:11:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=loGWEXYu8JX35zgWX0GcznjEVI3a9ejKCmsORqRb4mw=; b=gBQOMM8+nA5Ht2
	lghaWeTa1e/s1Eq43GwbmrFAJEDCdpu3dbJow/DsLFlwEJCZDkgXByFo++ieFliRKJxLXKsXptxFj
	h7n35uxM6Qkg6hC5f6EzLP3q4E5HtvdnJni4Uhx+UfJqwBfInWb5aocQEi+p0XK3CP6Q1kQvFBTjw
	61IylXFCqJZloO3nUSZ2Tb1OWoYh1muqxyhELmQzX9uj5934DPCd5TAr7MDnMNhnm+VNBFE+swNcx
	f/sOV+bpRFG9Hq+4mTimHi9kPYJLH/IvRJ8KjpRhr+kXUq6hdZNCi6bX+dtv7NyEW4rpFRNafPpYe
	TvOKHqt7IXD3L7/XoCFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgJov-00000009E4S-30ST;
	Sun, 05 Jul 2026 10:11:29 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgJos-00000009E2n-0uS9
	for linux-phy@lists.infradead.org;
	Sun, 05 Jul 2026 10:11:27 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-493b786d6c0so9916075e9.2
        for <linux-phy@lists.infradead.org>; Sun, 05 Jul 2026 03:11:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783246284; x=1783851084; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7UY6T/viKs724YCtcNe87O9J53G3jzdQBIfSFXtvLiY=;
        b=JLwV13ytZiys6LmU4oWptwLxGyDxL166QKcOpuonE5Gz+EFR42KZVltxXw3QdamXJj
         TcS8d72Q2Oj3MzAtxpqUXMPvEptqCstKL74tjMZm8+99lhiYi+lJwKMNIaOAn92TahGS
         mdp5EoqB5tLihbbX0uyP3r6w6QaYNmOtT01EthyhVY2X8MEixLNsw0tbkigHnlUJv+jb
         0WqmHqgGCfVINMcK0VJpfdS7VLAsndGanb8Cc0hP+AYjprrSbTmL2wmjM5dd9gdQcqz7
         Abu/rFMbmuNMeZ1o7BITIhVD9wv2GDcQn5BVKPsHWHea34t1BND3yUz+IeBZmFLL0rxA
         eXpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783246284; x=1783851084;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7UY6T/viKs724YCtcNe87O9J53G3jzdQBIfSFXtvLiY=;
        b=DNe1luYZWgY9GnUAeh8KqSrh8UN86cEo9+M0rDCM9M6sxOFKBXZ1HjWHbTG7p895IG
         FqZty0jvQT+0dgmbEqj2bt6D1DuCYAGyM+CDUnX6J82gS8tBTyNXKZJVl5/QUpkHl13U
         KrA3sG4eOdaCSBnizJgOf/88NM/s4zY1/T1KgFrn/jcbddQpeert933QtMjHoB9y9xYn
         zGYcGfgwP5aYu4PAodvKdDogiCtjzDJSRrkbwwhWhn0+Wkh1TR21WNe2yHKWrL2LPjXC
         varMY8eXfyMchfxGEYVKfMWlNTDr1ckVH7SBBKV8hvUzrzSsvPHU7bEeOKaYHfmt3PVK
         JALQ==
X-Gm-Message-State: AOJu0YwKKM/stnuEoJm2QH63+Wgu5McwewySC6M75+cjq0AJOWxIGK8y
	BZ+3X4yMYoJPdVdawrVpYPHfzwu4dW9LpEfZtg3iWrL3yt1O4duYv2oL
X-Gm-Gg: AfdE7cnLq/kzZQOvq0vTQsyJtzNQiouJKa/E4Nh7i2/aPh17kWCtRA2w/dd1YI7mF3E
	gCQU0IzrqrKbUwkLaY8SRBsDdBRxIfkRYdaZ81XzcX5xdyC55UXTaANmXvnVB19K5lqvX6UCwcw
	cWNuqIDrNfD3edwNocxFq/qpHhx4zPtZ+siRNdkmzB2J40DE4C/RsQOY3Yw6eNWfHnc5HpDpMhJ
	Bprsm2hJa2jvdhm0kofWpCn0o7uBuq/ayTaYFfIge6/smP5J8FUOdiM+mKbT+ayKOjws7+DPGQp
	O2+Iy2wHyBarTg8/1nG5jJMef62dLFs1G2Y87k0H+28fRMYt0Cl9bYkPMrsPylHqWkawzb6+zxY
	S8nkFLQO6cSKSYXv2wUkwpWVItTzVFVjLyP93ovPHVGvqeBjwVmJkEr1JoyXqTS46hB6Srq0rFq
	OSljpALFyfFZ/YUMMEn2IhEr8MT9HsA13vIA==
X-Received: by 2002:a05:600c:8b85:b0:493:bcef:5646 with SMTP id 5b1f17b1804b1-493d11db32emr69992255e9.12.1783246284252;
        Sun, 05 Jul 2026 03:11:24 -0700 (PDT)
Received: from localhost.localdomain ([95.43.220.235])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493c637bbcfsm261382715e9.6.2026.07.05.03.11.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jul 2026 03:11:23 -0700 (PDT)
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
Subject: [PATCH v3 2/4] ARM: dts: ti: cpcap-mapphone: use charger detection interrupt for CPCAP USB PHY
Date: Sun,  5 Jul 2026 13:11:03 +0300
Message-Id: <20260705101105.1798069-3-ivo.g.dimitrov.75@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260705101105.1798069-1-ivo.g.dimitrov.75@gmail.com>
References: <20260705101105.1798069-1-ivo.g.dimitrov.75@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260705_031126_265891_167719E7 
X-CRM114-Status: UNSURE (   9.93  )
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
