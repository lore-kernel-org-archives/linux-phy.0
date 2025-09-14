Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86CAFCAC587
	for <linux-phy@archiver.kernel.org>; Sun, 14 Sep 2025 14:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1esRGxO8jv1zc5ymHPvx51vkAQMaUyUWTenhozYUqaY=; b=YLDceg6kN70E29
	U8jqozYLYuGljSKJdt7B2IcXkq0FzEeQ6JZrMFbXtge8QbImvaVJ8a+LJAnihAsU+ttpIDJX5HiLw
	z8sy38RMXWyc//6jIvghpNlAOAghEobDihF4siTYeQZy6GUHQ5bNa/TBc8tJkZ49fBVCDfPats20P
	tv8kq2rPK+nA59OZZ4EAN70YHwV0Nqt0kp84JPx2bqcjM/cSTFqBCs6NM1ja7J3zkgvBylL0ZOb4l
	4cDzUyqbfYES4YPWJdAQ68zLdr7PgRxN/ATMwn2TK6PtO8y2Bko+aWT8hXJuZ5liu0Kpqt3qcu/8H
	f8pqjt/P1XEwgYhcZumA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uxnYL-00000001Tir-0gfb;
	Sun, 14 Sep 2025 14:18:05 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uxnYH-00000001Td8-2Zb2
	for linux-phy@lists.infradead.org;
	Sun, 14 Sep 2025 14:18:02 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-3df35a67434so2035795f8f.3
        for <linux-phy@lists.infradead.org>; Sun, 14 Sep 2025 07:18:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757859480; x=1758464280; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WLnk4ZbyfQe9FhVo0Iaf0C5FfaSInQx1UG35rxo35j0=;
        b=j/Ub/8ZhfZool3OgCv4the35MFOZEzIqAeTc8KM5UmhHFz8qi1/tWajP4dSgvnWkIV
         AvMKOo0bY2CrCJ0B8BYlBNDaaxBA9EaFW/PDfl3UcFVajTdZvzdan/i3Q3E/W6IY3XA1
         z1hCy5O+HE3H6yNjfuwgbM25wjl5F5HR3jM1cJmLkIFrASs6VuhtNOIsQvKKIhbMc2Vs
         VnPHMQSpq6J9WOIIQlhsUXO2ZR3nHTqpsEG9THhStmBI0gm8jrscrlFFrBBoxXD4GWcA
         Xznfbj//ZjDgHuGIlkY3Z6MdNY395Q8ADuqQVKgBG2hE2Z8mTfnUqHPgtIl2NN9DDZGK
         UjXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757859480; x=1758464280;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WLnk4ZbyfQe9FhVo0Iaf0C5FfaSInQx1UG35rxo35j0=;
        b=kaIicjuu2iXXbvjxAbO4GnGhQrU+e9v0TxtjeR5BC7jtEizKlbxtK/sdbtRa23BYyG
         MdL9UZ7ydETGOM9uhxhYAdjgTLpUoC91962VywxJF6EoH1wDfFKVnThdZLnVxEvlT9t0
         Ka9oG9X6fXStRJAG7fGa3+sFxuHxCo1gNHhBf/dKNmQczwwNHkyZgtzZq+TcGiitM6fC
         6Kt58RBb+UZclJr2av0FSSBES+LkGr7v/SgzBDfjt6S4r4O0Zxu29vtye2xr0aibYu7d
         lKQost6Fd1MtXP8IUvtbUBszA046i0ElWyAgT2I3Q0n8jGT/ZR8R+zWpOIiVsoRIT+ke
         ol/Q==
X-Forwarded-Encrypted: i=1; AJvYcCVqNVlc7HC414NpC34xmiprrGfzV3QNqmscTxbTMTy1JiKFVa8PIKuRPN2EzB4CcC68XdfoHBJUNdQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YxN/85wjITXSBuULjpwT08dWAogWfbrNZNp+Gj7onvWy+7ZQX7C
	7OPAiqoUK5Xj7ai9dDJ/PQqw7SWzl/Grp9g19FwGpIU0iTYMWy+L+ckj
X-Gm-Gg: ASbGnctzKkAcDkYRTfEBiQGSYIG5meunaigTMgu9a0gJ0zlffiqgW6wph+si1nO4PdM
	8/7RUb4jm44rQu4vPlQ8XIRY83oJtDTs3mEnT1vern45/cTi/ooGskqfPSWBR5zcKqq9q+ptNl3
	ny1Q7YTBhdVO04xKZD3al2es05THMxSc3zSxKvvMHKSmI3KtDodcGQPuZzKCQ+CeLI04VhIqoRx
	HPxHllYsFRiPHDfncCtUuCeDC+fMsZYFFEwnuvYJACNZrpygPUvhC/rXFipCUX1lf1ZO4kG1fAQ
	Adi18mhwQjO6K9tSp0LfMMhtLGkjmeDpaMrhMoEfVhZopnOMCOmqycGZznlHZU01HL4LFLGbto0
	JCP7MfxHQVxEy2pmhKcntd4VERWEOfyqtYoEbtUzj2HXJsRLBMIttYYEdxGW6oyDgYZ+xOcwLZC
	O/v3rUvZG7
X-Google-Smtp-Source: AGHT+IGob/FXoyz3+A1gJIBnwRTgWRN15gu4QTGHa/hPMhwPvI0q1Q0NHBycPN6rl7zOaTPDOVjCoA==
X-Received: by 2002:a05:6000:22c7:b0:3e1:1cfc:ee90 with SMTP id ffacd0b85a97d-3e7659c4a5bmr6355341f8f.30.1757859479650;
        Sun, 14 Sep 2025 07:17:59 -0700 (PDT)
Received: from ivaylo-T580.. (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e813eb46f3sm7319270f8f.23.2025.09.14.07.17.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 07:17:59 -0700 (PDT)
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>
Cc: linux-samsung-soc@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 2/2] dt-bindings: phy: samsung,usb3-drd-phy: add exynos8890 support
Date: Sun, 14 Sep 2025 17:17:44 +0300
Message-ID: <20250914141745.2627756-4-ivo.ivanov.ivanov1@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250914141745.2627756-1-ivo.ivanov.ivanov1@gmail.com>
References: <20250914141745.2627756-1-ivo.ivanov.ivanov1@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250914_071801_681391_9698059C 
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

The exynos8890 SoC features two dwc3 controllers with one USBDRD and
one USBHOST controller. Document compatible for the USBDRD one.

Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
---
 .../bindings/phy/samsung,usb3-drd-phy.yaml    | 25 +++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
index e90640320..2b1544baf 100644
--- a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
@@ -33,6 +33,7 @@ properties:
       - samsung,exynos7-usbdrd-phy
       - samsung,exynos7870-usbdrd-phy
       - samsung,exynos850-usbdrd-phy
+      - samsung,exynos8890-usbdrd-phy
       - samsung,exynos990-usbdrd-phy
 
   clocks:
@@ -209,6 +210,30 @@ allOf:
         reg-names:
           maxItems: 1
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - samsung,exynos8890-usbdrd-phy
+    then:
+      properties:
+        clocks:
+          minItems: 3
+          maxItems: 3
+
+        clock-names:
+          items:
+            - const: phy
+            - const: ref
+            - const: pipe
+
+        reg:
+          maxItems: 1
+
+        reg-names:
+          maxItems: 1
+
   - if:
       properties:
         compatible:
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
