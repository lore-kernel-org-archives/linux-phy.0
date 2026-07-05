Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E67DAC44500
	for <linux-phy@archiver.kernel.org>; Sun,  5 Jul 2026 10:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JJRGrYBuZy912/G/9uJ1hkkDBPRwReqowh/M4l0dxuA=; b=M2atoUz/bI9ZI+
	1pDeDzrpFtECjP1uhYhqoHeBbilUYtMHsJYdvahW97HbL+/P7b5eJVAjQBZnfMdpiuw4/SB4hfZT1
	7xPcRwkt7pHH1R5RAEXjzQsmaxCRpxm8uhNYC6oFOFTZlRzRyNBQFQPYuMLKnsiBYoab3pqimi706
	x9ezOkB0hg7vIREChyM/It0dJYkDEPFRCd/R1rKWYVBsNcw7fNIF7BJfPMVBZe5kur/gh2xziweWU
	OMaln+1XP1MjirGt/ETxQz2dZgd773+4sgn0FmtDTgCSmY8AUrVIS8oJ3RAGGsZho7BD6cnau+6XJ
	nIMVmTxpHW3pei42U4MQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgJot-00000009E3Q-2QkO;
	Sun, 05 Jul 2026 10:11:27 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgJoq-00000009E2O-2d6m
	for linux-phy@lists.infradead.org;
	Sun, 05 Jul 2026 10:11:25 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-493b7612475so17640635e9.3
        for <linux-phy@lists.infradead.org>; Sun, 05 Jul 2026 03:11:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783246283; x=1783851083; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NTQQYukmPEeRXmpWGMDD6xv10gI6rwVhTPfZN5h8J8Q=;
        b=sLRYsBG/HT0EBmAKArAfZEXu+BD/bsHZWhg84t2fkXxvYvrYzkfaYRias1Nmab/CQ9
         sbqXx/0ix1E/vCl6fren9iCw5sv6z7vT3sDzxq494CNXJqJ3vEtuzs9uK/9X2j01KWAB
         +FuQ0K54NsgMN5r6DqoCfEIzJqpjRp0A08B4c6HquVkJQtdcYt/4Z/Vm9T2bVxETXLrR
         oQ8zDyzgit2tT89Kklbe8UshRrHOxaQjqquriTzT8bl4RND5Z88GfhGs4/yINohDoIb5
         k9jt3//pgg/qig1bYU69gMZpdoB7FSgF5iq3c3e7xU9W4l40vVnVHchPQE0fIg+pfSGK
         e6+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783246283; x=1783851083;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=NTQQYukmPEeRXmpWGMDD6xv10gI6rwVhTPfZN5h8J8Q=;
        b=bPUWxMsGKwkCiE9HVsQcesrzJA1Ci+ySrhScKwC2MYFHp/Ru3jIv0foY6y83D9Jq9n
         jk5ErBoVWC7Btz+pst0pvzw2FSH32rl98jwVdEr8P4pH0yA9MVKRI6KKXcOJlYdXa1mf
         z2C0vYsmS/bKXWd2yeuqyqIyHxGb13e6BaLWAJOzUc+0X0W55amKbfGAwHLuC3IdGXBi
         JaAEWshECaVIp0RosdpjBX8I5PWiTBmv0aQrnQUEpirB2jjimzfEiSIk3bGUKKU2ZYQe
         aCO7QUDV+2W1JqcEk98G6DrPBTAz4qomAURvchVbRFwj14IptX0RuzndRGI+D4LZbSCu
         M/cA==
X-Gm-Message-State: AOJu0YxQO45BpwDOPNJ3qrdhqyQp17wupSQoNlNp5Y96vQqmOx+MfWFi
	slfnnZhr8dr5Go0HxxgoshhMAq1N/OmlWFUHCD8WaxTPS9VaW04qiQSU
X-Gm-Gg: AfdE7cnlO/NpFI5V9PnYi6PJCE4L0Vgy02tqIBwBj7bedoZUJo/9dq4hfmkE9OekCpt
	rH3TJRGl6CfEjG/XYmp8Y8iq50an+nppToXmcw+RFZ1QqJxYFVJaNdYlWthv89ZOdIvGVORiY+/
	X73sgYMAQyU3OP8xshg8cOa0b69i/bNopexJzTb+l3lwPxdn1jwwkj6eRbL7PrI5c9LwJugL0uU
	FMBEdNUV33MDoVRK75Xk4JZJ6ncuc6NPR/0A63ObLFn1mY9pyCkUqgLEdAxOKVv1xavV7FE7Tku
	KsFYy2wll049IEt3sS+gPZJ0xiEk3lZ8b4Ucczsvxes3PE8Saqqq/6kc96xEKnrPEdGrQTRKxD2
	PH9XjlPstPAxZHLqlw0MRAnIbH9k+LtJe2Lh+hAuSguHguE+6aMP4GbiphoD/YnGiieTMDmYqsC
	JmwrOJtcS/otUJiaQ2VXsQfBEbflONA94SzA==
X-Received: by 2002:a05:600c:64c5:b0:492:4c2e:9613 with SMTP id 5b1f17b1804b1-493d5e61ff8mr29175395e9.18.1783246282611;
        Sun, 05 Jul 2026 03:11:22 -0700 (PDT)
Received: from localhost.localdomain ([95.43.220.235])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493c637bbcfsm261382715e9.6.2026.07.05.03.11.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jul 2026 03:11:22 -0700 (PDT)
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
Subject: [PATCH v3 1/4] dt-bindings: phy: motorola,cpcap-usb: add chrg_det interrupt
Date: Sun,  5 Jul 2026 13:11:02 +0300
Message-Id: <20260705101105.1798069-2-ivo.g.dimitrov.75@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260705101105.1798069-1-ivo.g.dimitrov.75@gmail.com>
References: <20260705101105.1798069-1-ivo.g.dimitrov.75@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260705_031124_683137_C9423614 
X-CRM114-Status: UNSURE (   9.46  )
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

The CPCAP USB PHY driver uses the CPCAP charger detection interrupt
for DCP detection.

Update the binding and example DTS to use the corresponding
"chrg_det" interrupt name.

Signed-off-by: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>
---
 .../devicetree/bindings/phy/motorola,cpcap-usb-phy.yaml     | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/motorola,cpcap-usb-phy.yaml b/Documentation/devicetree/bindings/phy/motorola,cpcap-usb-phy.yaml
index 0febd04a61f4..523a8f8480d0 100644
--- a/Documentation/devicetree/bindings/phy/motorola,cpcap-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/motorola,cpcap-usb-phy.yaml
@@ -30,6 +30,7 @@ properties:
       - description: se1 interrupt
       - description: dm interrupt
       - description: dp interrupt
+      - description: charger detection interrupt
 
   interrupt-names:
     description: Interrupt names
@@ -43,6 +44,7 @@ properties:
       - const: se1
       - const: dm
       - const: dp
+      - const: chrg_det
 
   io-channels:
     description: IIO ADC channels used by the USB PHY
@@ -91,10 +93,10 @@ examples:
         interrupts-extended = <
             &cpcap 15 0 &cpcap 14 0 &cpcap 28 0 &cpcap 19 0
             &cpcap 18 0 &cpcap 17 0 &cpcap 16 0 &cpcap 49 0
-            &cpcap 48 1
+            &cpcap 48 1 &cpcap 13 0
         >;
         interrupt-names = "id_ground", "id_float", "se0conn", "vbusvld",
-                          "sessvld", "sessend", "se1", "dm", "dp";
+                          "sessvld", "sessend", "se1", "dm", "dp", "chrg_det";
         io-channels = <&cpcap_adc 2>, <&cpcap_adc 7>;
         io-channel-names = "vbus", "id";
         vusb-supply = <&vusb>;
-- 
2.39.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
