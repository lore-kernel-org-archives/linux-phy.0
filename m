Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0233FC636CD
	for <linux-phy@archiver.kernel.org>; Tue,  7 Feb 2023 15:04:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IaWrYjbq65trTdfxylg9hRynVIk5e4L/+D5wLGfTBHg=; b=Sd7n+fOj7uJLDp
	v5lSrZPLH3WI5SNqdunATD2W6qsRYqfHAtmH4UGUL1PIGLb6ue4MFtY3y0/88zKEHM2X8pauXdXCK
	ef0RWccLeT9zfcEd8Kt4XD7E9f+VIMmXBWk+rHxk/ZlvBQQUWKzfEtB5HSPm4Xq1S+InMFjI935yP
	3PS8dvc6crP1fHQBkhSfdyu0tZhk8P/W0Pqk5LbeDpC+DMAmlrNPlnCHaI6F9/PN0gA1rmTbGc6sP
	8LRu8KvaIvFkGQGrsPb2AQwCtO/TNf7IlQca9xdBOqZArQjSGFZglSQzUY+EzfGYOKkmSiLs47vVM
	rhvltwnXM1QADvoPaN3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPPVs-00Cc64-Ew; Tue, 07 Feb 2023 15:04:04 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPPVp-00Cc4Y-Ks
	for linux-phy@lists.infradead.org; Tue, 07 Feb 2023 15:04:02 +0000
Received: by mail-wr1-x429.google.com with SMTP id h3so6009923wrp.10
        for <linux-phy@lists.infradead.org>; Tue, 07 Feb 2023 07:03:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=aFW7tNlak5JNTFgYIMMRwtC1A6KUFtjNBI4Nk45Lvrc=;
        b=GPdFjyMvf71VLRCDW/2J5DzEOsghLE8D+Xb2lSXMQ6Md9fZCxbvYYgLjnymhq1IaM5
         7U31PpSbLdHSxL9Eq276+JJ8sQZL+sl+oEBMKc0AaclU28W+9WtjfCSPUHfzyXmOqmoX
         X0ntnCdCvjOhynvv1w0zKzcZS7mMbQdww8TP9OHGuxD5qJguU3LaC8twn1tjPSwVh0jS
         53UJm/uNVhgL/78h6Z30WL4yu12ZbFVSo44XihwkKvxgNrdXfltEHHfof2B6fdddEbZl
         EejCBwye57dfhJwygT8aAREBcBJ+jm9/PlLxmPha3sLqvmLl8IcHSdEn0MXqkgDC9WJ6
         qarw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aFW7tNlak5JNTFgYIMMRwtC1A6KUFtjNBI4Nk45Lvrc=;
        b=gj87KNQ/ioTDvJ5VJn9qQ5sHS4C45y5wUCQP0fSd+jvBSIVILHOoAOOONsoLRGYBYW
         MxxxXFJ4XrW2YcmCEyzdpAF1YzAdtskbUp5HQm0w+FNybzWgxsdJspf07edkstgfnZoD
         g/xyUTI0Bl4B+0Cfs0nvfqOeMWHiaaLeaHpB0J0KAfTh/Yv6w/lW5grAyXhPGDRTXIKJ
         QOACDHhmsUgNsC45+C2naVOITvDWR0gM8csAspAD83Ks6Ju70wwX1dQglzberMhsWFAu
         hKitAAxEENryV/Tko4LcJnn1JURRbR4M5b5KAZ4pA1Hg/i3iGard/mhpPKxFPB7MTf3/
         Z9xw==
X-Gm-Message-State: AO0yUKUehkXNj1yrASlehNDVy/d+NPVyunXv4VKQX7TeqjDNk61MtCqT
	Ks5Vz6tAmLcShoY6DnmvqrYSUQ==
X-Google-Smtp-Source: AK7set/f5d5Gpi6UhKbDfQwgEwNZt0VF3yOdB/3oaOKJUnDOa+42YSsOXezDfmrEfQNbLfJUts4jNg==
X-Received: by 2002:adf:f350:0:b0:2c3:da3f:1def with SMTP id e16-20020adff350000000b002c3da3f1defmr3354645wrp.7.1675782235101;
        Tue, 07 Feb 2023 07:03:55 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id t15-20020adfdc0f000000b002c3f81c51b6sm1174395wri.90.2023.02.07.07.03.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Feb 2023 07:03:54 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 07 Feb 2023 16:03:53 +0100
Subject: [PATCH] dt-bindings: phy: amlogic,g12a-usb3-pcie-phy: add missing
 optional phy-supply property
MIME-Version: 1.0
Message-Id: <20230207-b4-amlogic-amlogic-g12a-usb3-pcie-phy-fix-v1-1-3e437b759549@linaro.org>
X-B4-Tracking: v=1; b=H4sIAFho4mMC/z2OwQrDIBBEfyV47oIxSQP9ldLDrq66YI0oKS0h/
 17poafhDcNjDtW4Cjd1Gw5V+SVNttxhvAzKRsyBQVxnZbSZtNEr0Az4TFsQ+88wGoS90QTFCkO
 JH/DyBloc+mX2tLqr6j7CxkAVs43dmPeUelkq9+3vwP1xnl/W7GQOkAAAAA==
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: Rob Herring <robh@kernel.org>, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230207_070401_715451_4F9C0C34 
X-CRM114-Status: UNSURE (   8.25  )
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

Add missing optional phy-supply property used to power up PHY regulators.

Fixes: 87a55485f2fc ("dt-bindings: phy: meson-g12a-usb3-pcie-phy: convert to yaml")
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../devicetree/bindings/phy/amlogic,g12a-usb3-pcie-phy.yaml          | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/amlogic,g12a-usb3-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/amlogic,g12a-usb3-pcie-phy.yaml
index 129d26e99776..3314711292d6 100644
--- a/Documentation/devicetree/bindings/phy/amlogic,g12a-usb3-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/amlogic,g12a-usb3-pcie-phy.yaml
@@ -35,6 +35,11 @@ properties:
   "#phy-cells":
     const: 1
 
+  phy-supply:
+    description:
+      Phandle to a regulator that provides power to the PHY. This
+      regulator will be managed during the PHY power on/off sequence.
+
 required:
   - compatible
   - reg

---
base-commit: 49a8133221c71b935f36a7c340c0271c2a9ee2db
change-id: 20230207-b4-amlogic-amlogic-g12a-usb3-pcie-phy-fix-b5daf54fb7d6

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
