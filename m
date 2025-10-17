Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F36CFCCD184
	for <linux-phy@archiver.kernel.org>; Fri, 17 Oct 2025 04:59:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WX1hznJgbIAxo9I/O4s/W29i2AVPgZ/cmE+/72EUBq8=; b=32IxPjRFAdL6MA
	GtqbhjC50ulkpIlmla0JQ+pO3YdHKUyU2698mndsbSrj5CaxAV7JzZPjadhn4TeaM7Jlrh8nSQtCe
	UEEvm4S3CvvgoUp2gjJNRyttGLvN77S7DhAEm65B/2Qv2MkjmyXlR39rRJ7k/LvyVFqQKhIjodLra
	+fM29k4oU2jadWgHmXqFhi8ekesnJqU1KbaRF5c3XoTCf9GLY/ZuHxRprXaiv0zqK0iWmCauZEXGE
	iS5JocU1UMYXey2JCL8WvvFd1XmULo/iy+XRmPWSEHFmBbRGoAKZS/TzV+LAdg/FzYEaMZ8xW7sqm
	DO+eCcBu5YTGRYln1NZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9cYp-00000006ZdC-2XVT;
	Fri, 17 Oct 2025 04:59:27 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9cYm-00000006Zct-41Gk
	for linux-phy@lists.infradead.org;
	Fri, 17 Oct 2025 04:59:26 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-b3e8f400f79so23379666b.1
        for <linux-phy@lists.infradead.org>; Thu, 16 Oct 2025 21:59:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760677163; x=1761281963; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=FUnCnObHtvExaoAwWKhjWqhVzitq0j5khgwEsaU6beU=;
        b=jQebtbmxOxHV3j6svZLHM9FN/rC/FVxpYizM0yfbGmqMX9yZjr+r/3RoJ+2yrPMCQv
         zQmTn93YiTrUAY8jFxwMxgCqIqN2TfEydwUMdK1RVwOGtfyvU62F/Fc3fMjVBbnj614/
         3NAN8/jLjWQ/WIB47DLNKc4ZgU/pFqTZzYcwAPt4OcIqgiunu3FwT/797WAeDapYzLZB
         ijY486L15LIrw1NxzRY9bnx3IKjnkgKzAOHrINseGMY5kQGJiN9drtNQMau3MHths4rq
         xOdDLBuwaShNmJ7gpRfnuoELM9CQv033xoySO5dxPoWr5QmhhPIKtdaIE6XWxXkrXqCH
         n7AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760677163; x=1761281963;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FUnCnObHtvExaoAwWKhjWqhVzitq0j5khgwEsaU6beU=;
        b=mgFmcZzG0KQnt1vBJY1m8iuhVpLLGzON3M5kayl4jKu5AW2nNGVyDm8UrgOrZ6AaVm
         fbMdil/itSw38tBq2NjT3j58O3XOkyTerxaIh8p4g98qnQBoJEy9CbyhTUXckoKpOTXk
         SYQ4PUfiwRL25dFOxcfadXymubjRlPMII1v2vrKf0SklJZ0Eq4XHkxtWJ55gRvIz4xaS
         +ZtO1AeNSgZfDKbrb6HEvayMkGpTxVXT+FxIfvWrNEIZ9VNHsb99gX8XUviL+RfdBcwO
         CZdAlTcurPTXJpjUvzoTik/+HCzitPdJa6j+IFXoxg9nFTsb/aLyqI2QRGfNiPhOVd6I
         dLtQ==
X-Forwarded-Encrypted: i=1; AJvYcCUEfz131+rvSwmjN57+axJisAsamaGLyz8X9N8tMeCNx5srZQ15W/n8sKjzNBBoBPALj2QW2Bqov0U=@lists.infradead.org
X-Gm-Message-State: AOJu0YzwsKtcEbEjR3+7B1u6KspM/yFuz7NLOiZs53wwKNFQAR+KSKH/
	UJnI4xkzwnJmdonwXDk0YmariWQ+NRB/CTn5VCLmNXRia8feltx7zB5fdycyNVQImg0=
X-Gm-Gg: ASbGncuC+7k+A/x+6CRvgfw+kpJY2Jlu7SNmP1z3ggCfun9qAeDM5EMQQehAWPEC0Ij
	caLevCgfZ4t96rXOF22aDpOd8YMsSo+Y+5wMX5Lfrxaip4FxsWpAIA7xcbTt0KqlvxoqMvvW9Ro
	G26GBmxBGLUMjE1wfLK4arZ0lwVT3eHgZQpUu04pRDC2Grm6GX2YuIjMVhsuVU1l+iFmFdlTcX3
	Jm27m+BylzDVOTC+OJtTilHYoSOkEbpvLWPmsJGmBbPw70yO6WpW8RZDzDRo7sYQFN7bnOgCLHT
	m5kXhnWAG7xNzbENhg0nQ+thnQzlUnsUd6A8kONK/g1nIy6owOo6hoYCxYBWaxYma+zpyQqFu5Q
	ghB4HZ/PrSU91tru5wPJP936dHH1X0nfFNuXYkeBi8+BeMLZ0U0uZXT0lXSKJJBx3ipdSMMRlRO
	cnbM9IHsru28s=
X-Google-Smtp-Source: AGHT+IFYxqz0Ttcz8UykimpyIaiCfE30akXHB7FNTj96qec06NuAlaW4UjbM/IwFrLs2OKOR1FkUpw==
X-Received: by 2002:a17:907:7f21:b0:b42:1324:797b with SMTP id a640c23a62f3a-b6474834edemr124163266b.9.1760677162690;
        Thu, 16 Oct 2025 21:59:22 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b5cb965c599sm718858666b.11.2025.10.16.21.59.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 21:59:21 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Restrict resets per each device
Date: Fri, 17 Oct 2025 06:59:20 +0200
Message-ID: <20251017045919.34599-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251016_215925_189901_F85E899F 
X-CRM114-Status: UNSURE (   6.90  )
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

Bindings should be complete, thus complete the constraints for the
resets by adding missing compatibles for devices with two resets and
"else:" clause narrowing them for all other devices.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml          | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 119b4ff36dbd..9f5f9af6f6cd 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -215,15 +215,23 @@ allOf:
             enum:
               - qcom,sm8550-qmp-gen4x2-pcie-phy
               - qcom,sm8650-qmp-gen4x2-pcie-phy
+              - qcom,x1e80100-qmp-gen3x2-pcie-phy
               - qcom,x1e80100-qmp-gen4x2-pcie-phy
               - qcom,x1e80100-qmp-gen4x4-pcie-phy
               - qcom,x1e80100-qmp-gen4x8-pcie-phy
+              - qcom,x1p42100-qmp-gen4x4-pcie-phy
     then:
       properties:
         resets:
           minItems: 2
         reset-names:
           minItems: 2
+    else:
+      properties:
+        resets:
+          maxItems: 1
+        reset-names:
+          maxItems: 1
 
   - if:
       properties:
-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
