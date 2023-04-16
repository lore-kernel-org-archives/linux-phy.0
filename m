Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 843AEC7EE21
	for <linux-phy@archiver.kernel.org>; Sun, 16 Apr 2023 13:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F4Td7YXjdlD10qcomkJD7aBRZmdEipf5qwhR8tTwP3s=; b=QmqaaMsnZJ6fJu
	15UeNRHYmAx0tsYuMVLemWlryP16wB3AsEbeRgTTZkpriQ3fJQHmulysZmq7AsJtjCHZkdTq6DTTu
	2z78cuhg0vV2v84A3xxxF5OB0pAaf8N4BoxKavsieZkYi392SONcVA4zmk5r7OHkXEj/4nUzkjndR
	KdxKS2X6irWL8EF3RB8uQMOPuExNLGUyaPmKwqPwLv0ng9ZHFI+lIDdXga4YrbAu9t4OAvT549dAa
	MVZRqNwO93t8fpwzzW+E0t//NVw43fOuLNanWJsDCz2+KRROBNlDBwQbjkR0QKhyVYazR3LlLtrpB
	OzHKEJAj7XH+g1N54OWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1po2YS-00Dsdd-2K;
	Sun, 16 Apr 2023 13:36:32 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1po2Xv-00Ds1W-0t;
	Sun, 16 Apr 2023 13:36:01 +0000
Received: by mail-ej1-x631.google.com with SMTP id sz19so395063ejc.2;
        Sun, 16 Apr 2023 06:35:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681652159; x=1684244159;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Deq7iuiEl1RFyBysVZfY7LGeNc11tLOLC+fdaC0CAMg=;
        b=qEtVp1Z9nM6S8XbiJoCplRphuYpTjtmHGzrpd3ybx9pO5OzPHfLtuiS13LO3vQ9s/Q
         qoGy9AGmRbHe2T+uJpbJ/XB0fxB1oGjkmtRpD4i96E5Rbo336OvHKjIXQzJEQrOFz7je
         CzTcaRxn5wNjZq1KcN3EJh7GyzU/hPTpuhu0T0zgHUQALHuTKhyq3BKeAHRhL4qrfd6J
         P0LYKAp3jaS7077nis0aCe2ogPsmY5wIW8o7nQ/a/1RoNjjwH5zBKw6wmXDxlGBBJghY
         pKHDr2rKHpXlHKuaBu7qSr0eECmm8EXndI3L+x9b/M+GTy1Dwmo83Q4jHFsQ8k7SbdfD
         Dodw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681652159; x=1684244159;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Deq7iuiEl1RFyBysVZfY7LGeNc11tLOLC+fdaC0CAMg=;
        b=WviplfWM/0Hjapy9DUdpzm1O7p+iY7M1LWw3ZelvoHCPVTqLWIyV6Sj5rDelixW63x
         z8K25CK36p6xvOp0l/zXTDp3lcPqbdj9LXs9DuwrPg3gvdIEqkMyA6a+Oa6ahndJvtba
         3kdiUbTrYAmsqJu0nehr8eu/Md6DxyjuLEz+CxftbCnINLTGOfpuJekdJbaXRlpXlRvN
         IJBkVfi4G1wvE1fjM9DjFODff8XIPMXzuzaqBPl7knq434FjWiZ4fBygZ7lPxXmkBc5g
         VuRemb6WKhfVF6m0X0+uSfHdsaKLUUQJjqqEnr7a9s8G8LV3z1+EFnFcJseI2R+mU0Bs
         kCbw==
X-Gm-Message-State: AAQBX9fG/qnLRsHFmcI6sE760o2ThTKRn94WIxeMsSC6LYlKbScN9a4h
	ujHoAKZEpbZAJDfF7ITSmtY=
X-Google-Smtp-Source: AKy350YadAm7tYLBr5BAsWXMhacr0mRYLnOX0Qe6f1ZBtmunodwY56V4KNqFq5dzyif3Jjvu2yo61Q==
X-Received: by 2002:a17:906:d1c3:b0:94f:26bd:e005 with SMTP id bs3-20020a170906d1c300b0094f26bde005mr3562160ejb.9.1681652158836;
        Sun, 16 Apr 2023 06:35:58 -0700 (PDT)
Received: from localhost.my.domain (83.8.121.70.ipv4.supernova.orange.pl. [83.8.121.70])
        by smtp.gmail.com with ESMTPSA id gn23-20020a1709070d1700b009373f1b5c4esm5122958ejc.161.2023.04.16.06.35.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Apr 2023 06:35:58 -0700 (PDT)
From: Artur Weber <aweber.kernel@gmail.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Alim Akhtar <alim.akhtar@samsung.com>,
	Rob Herring <robh+dt@kernel.org>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Tomasz Figa <tomasz.figa@gmail.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Olof Johansson <olof@lixom.net>,
	soc@kernel.org,
	Russell King <linux@armlinux.org.uk>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Kukjin Kim <kgene@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-phy@lists.infradead.org,
	~postmarketos/upstreaming@lists.sr.ht,
	Artur Weber <aweber.kernel@gmail.com>
Subject: [PATCH v2 11/12] dt-bindings: arm: samsung: Add Samsung Galaxy Tab3 family boards
Date: Sun, 16 Apr 2023 15:34:21 +0200
Message-Id: <20230416133422.1949-12-aweber.kernel@gmail.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230416133422.1949-1-aweber.kernel@gmail.com>
References: <20230416133422.1949-1-aweber.kernel@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230416_063559_328680_AD87A027 
X-CRM114-Status: GOOD (  10.19  )
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

Add the compatible strings for the Samsung Galaxy Tab 3 8.0 series
of tablets.

Signed-off-by: Artur Weber <aweber.kernel@gmail.com>
---
 .../bindings/arm/samsung/samsung-boards.yaml           | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml b/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml
index deb2cf971871..4ee026e7f7ad 100644
--- a/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml
+++ b/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml
@@ -104,6 +104,16 @@ properties:
           - const: samsung,exynos4412
           - const: samsung,exynos4
 
+      - description: Samsung Tab3 family boards
+        items:
+          - enum:
+              - samsung,t310                    # Samsung Galaxy Tab 3 8.0 WiFi (SM-T310)
+              - samsung,t311                    # Samsung Galaxy Tab 3 8.0 3G (SM-T311)
+              - samsung,t315                    # Samsung Galaxy Tab 3 8.0 LTE (SM-T315)
+          - const: samsung,tab3
+          - const: samsung,exynos4212
+          - const: samsung,exynos4
+
       - description: Exynos5250 based boards
         items:
           - enum:
-- 
2.40.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
