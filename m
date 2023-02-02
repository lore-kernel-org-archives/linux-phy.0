Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8148C05027
	for <linux-phy@archiver.kernel.org>; Thu,  2 Feb 2023 13:38:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iJbJUZGDdvdWPeyT852oY6hKFZ3HU9BWirr+/jQegew=; b=IAhlZxQldvX4O5
	K1bdqKDbBoo07qf6UIkTmCUwMTuiFN1LdMoaH/9UVu0Gzi4kRU6HOgAxRWUqTxCtfTotgRMyizMKm
	+Ej7QfD9Hpaj2+T7m5GiV9ySrksXVC+YbW3g8A/7OCIMqN5PUnnM7Lx6t/PlHImUvYhJChh/FPaq1
	85pQ+c2iCgPQJR+kgoiWzIpgN2vXsuCler0kCvbnPJ0l1rDqd0lUuz0b8YvFUTAy0GrG4cMLuggb6
	6izB7sZCQ07HYpuiO2mq2o6mqytlZyxzFdahwcTWit/fH8jQfZUf0kMuGyctyfw1QXwLDtMnvumlN
	P14KsECzdotHHon2yBcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNZnP-00G2XQ-49; Thu, 02 Feb 2023 13:38:35 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNZnM-00G2V2-KW
	for linux-phy@lists.infradead.org; Thu, 02 Feb 2023 13:38:33 +0000
Received: by mail-wm1-x333.google.com with SMTP id hn2-20020a05600ca38200b003dc5cb96d46so3735707wmb.4
        for <linux-phy@lists.infradead.org>; Thu, 02 Feb 2023 05:38:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=up0Y4t69U4vgRLlW0caJKF4/hXf0ON3DpzJiFVXhbIE=;
        b=nnEiHkSNiJ+p+F1/8ICk557Vb00bABie3SDKnfY+mmrX3lm/+LyMp9jQXFWCThUy4A
         emLcjBvidZffjZ06y5B9IzUK0z5itkYRXK9c/LgP8PEQvIIYwMvXAzTejMcg/YDmbNnJ
         0BP2trd1wjf+nIl1PsZo/AgAVA9mvSDKozL4HPhrlyt11j/dI8L9ksUeaONgI0saLEi6
         Y64Gou09MZB8ytU04DFcvZMsZojtLuXL34sM159o+G4i3brHpbOtfO1n5ubVYjN2aK7V
         kQJpxR+3rRVU8wuRutPXZ+MqhjPaBtxgHyEJNbTHZ1IrLxzGlwpiNas0LBDCNQKSX+R1
         Ctpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=up0Y4t69U4vgRLlW0caJKF4/hXf0ON3DpzJiFVXhbIE=;
        b=daDlxVj8aGR+uPgf2kqDWTKyJXX0pUB4Lg1JyVNn/Hc+Od9ZJpftf5QVUEF5jU6/Oj
         thzxuZaJ6IhrIMWu7oAvogRBxCWKUFX/qxMZRiOMqaxVdwmKJnMXnH8QOJSWz5LjvDSA
         kvykpzjv+05eBfEf8CbWTkLa5En/Xm/ZyWwXCkW8aCqkkf88kLKFUTyIw3DyJWjqw11d
         NNaXKz40CYPos5nE0aAN98LVC5zTx8pCQFMDOrtzBKXNuXFiAXYp/Rf4saZBFVFM4bXZ
         2LNHJCmgDkOEy9pp70IkgpkQjOsXy+z7FMxgxB+zUlfKD7Ahmnl5gTkd9JPJFrs9So0d
         48nA==
X-Gm-Message-State: AO0yUKWwjbl5ez9A3TWnsy4OQtFJkU2rN1rW6bxx1tKkFisvbkMXWQoZ
	zL+exOEknGj9fWYW6+SL23hbeA==
X-Google-Smtp-Source: AK7set8e5D8nC7f9RQsyPu1b1/cHMG4COHxQnQLPr1DmsNkygYoQ85g2yKYhJrfhTRfiZJH/F/Lvrw==
X-Received: by 2002:a05:600c:4f95:b0:3dc:47f4:a022 with SMTP id n21-20020a05600c4f9500b003dc47f4a022mr1898542wmq.25.1675345110439;
        Thu, 02 Feb 2023 05:38:30 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id y10-20020a05600c364a00b003daf7721bb3sm4672657wmq.12.2023.02.02.05.38.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Feb 2023 05:38:30 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lee Jones <lee@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-phy@lists.infradead.org
Subject: [RFC v3 3/7] dt-bindings: phy: qcom,snps-eusb2-repeater: Add phy related properties
Date: Thu,  2 Feb 2023 15:38:12 +0200
Message-Id: <20230202133816.4026990-4-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230202133816.4026990-1-abel.vesa@linaro.org>
References: <20230202133816.4026990-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_053832_688164_3E2872A1 
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

The phy properties are used for allowing the eusb2 to interface
with the repeater, which is modelled as a phy driver. Add the phys
and phy-names properties.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 .../devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml     | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
index de72577e34a4..8efb09b2dc5c 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
@@ -33,6 +33,15 @@ properties:
   resets:
     maxItems: 1
 
+  phys:
+    maxItems: 1
+    description:
+      Phandle to eUSB2 to USB 2.0 repeater
+
+  phy-names:
+    items:
+      - const: eusb2-repeater
+
   vdd-supply:
     description:
       Phandle to 0.88V regulator supply to PHY digital circuit.
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
