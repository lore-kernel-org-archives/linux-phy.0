Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F066AC52D7C
	for <linux-phy@archiver.kernel.org>; Fri, 23 Aug 2024 07:04:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AcE5McNWcGnuCs9rFuTG6ojsRfM0rP6/8rva4rqLlpU=; b=kqJhKLwKu3ZJUl
	yrVRYFAe2HftRZTsY0fb9VEZzLEcxEsMAe89q3Xf80bxNIjsyVlQ9RHPrh1JbphV0nLRy0XafPaAZ
	llzXZ9rZ2F1opf/sIYcR4aNW5pzymUNvhIC/hXBjgMUDz+e31qnuy5fRk4F8GSyUZt5jOgcWJtHo6
	4TUS+bARhsM6er11LrHXo6Xq9B/+QZJiGqjHmfXIEXzJLbpZ8C1IqLhZLpLRAGuu27Sbzdfn3le+b
	UScVSv0hS6xwV9QFv/1lPptET0+pJ6oh9SyB8pwlgawvutuy1Zi7eTU60JzFqpW1MNlIc9Zwe7QL2
	eqawubG2jKka7Cj+AThQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shOLW-0000000FZ9s-3wH0;
	Fri, 23 Aug 2024 07:04:30 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shOLU-0000000FZ8U-3gHS
	for linux-phy@lists.infradead.org;
	Fri, 23 Aug 2024 07:04:30 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-a7a9185e1c0so155325666b.1
        for <linux-phy@lists.infradead.org>; Fri, 23 Aug 2024 00:04:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724396667; x=1725001467; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MQ7mhyA2j0MFrl3QJkg/ME/SpNMRr31BDPIhEa0SBMU=;
        b=KO2GUeRgRDIm3WyV5Wx3r68XebsO3nOPr4pLbKeLQ0TrXp5b4OMUH/4Bagq2E1grxQ
         1TlW/zFCxob3k7vAVCKif2n02zYkAWUCFgjmzcNV0RDgno8a3Mj8GIoKVjVPkZWyoo+I
         V4y24eoXH2qyn2E+UuxLmNb60LoAluxx5iTP6L+/ftTc0gzTp4oTrHcOi4AvT+xMATh9
         SozYBU/e7OYHV5WPNepIKJLK6bemGeRSG4rRClaAolFsjYKi/w/mJJlSanpx+V3PO0BU
         URYcTC4d/4mWy3Ef8aeSW16v0FqBN5suqqdjnMTyNnmJ3UVOzflmxCijKPnwYiiW4W/d
         07vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724396667; x=1725001467;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MQ7mhyA2j0MFrl3QJkg/ME/SpNMRr31BDPIhEa0SBMU=;
        b=rITpjmTlw6WhOs8J/hRzo8Mp7bzJX2k+cfULkllIzMi2cC8HMImxk5gjfXaVFmKbhP
         y9QEW7gjTfN8eYSOV0Ww8n2AYQ2dWlXI21vH5wt8O2ECLsp0S2cl8H082zNfA7ejHNoD
         yq7mvWYJk3apDgcBlICUYU52O3FBTsEUilwDmklDBTsIMc+yjYBiRIcYK9fM0ZTgrb+a
         04dTYE6OrT47kJs9hF+jugTFqsF3YnHh1gqOLzWIHCg2NkxcL1K1sPMweQErC4WbyKfg
         KWZWlGXzckt/PA0aFAP3ZY84kLSIW4eHOwTrJtaSs4DnkyuO3cTYW2MBVINRbA1590CM
         vgfw==
X-Forwarded-Encrypted: i=1; AJvYcCUyImukVygTSL/w2QdTkGpcBoRKYi8/fQIgwaehir5oFoiG9VBWi1MArHXn4ZwK4zzMcAIFmTb7eKY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx937v5k/pkY92mGsyn3lUkPXZp6aCgD2NAS24G2AhO367wdEkc
	ve277Qz8dWgX+lVIScAgGJ3xsfyzJgOVTzKScxrMJugZMjR7krnqG5vEAlb7IchBjOi99XQezo8
	3
X-Google-Smtp-Source: AGHT+IG6TdK5Q7DjQm/i9MCekRmwMaeOSrcst0icfF0xCCZTYGQ5AUTD0MHIKbFJ1vzZIBV5S7IfYQ==
X-Received: by 2002:a17:906:fe4b:b0:a7a:bae8:f2a1 with SMTP id a640c23a62f3a-a86a54899f5mr91060166b.42.1724396667187;
        Fri, 23 Aug 2024 00:04:27 -0700 (PDT)
Received: from [127.0.1.1] ([82.79.186.176])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a868f48ae0dsm214820766b.184.2024.08.23.00.04.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Aug 2024 00:04:26 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Fri, 23 Aug 2024 10:04:15 +0300
Subject: [PATCH v3 1/2] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Document the X1E80100 QMP PCIe PHY Gen4 x4
MIME-Version: 1.0
Message-Id: <20240823-x1e80100-phy-add-gen4x4-v3-1-b7765631ca01@linaro.org>
References: <20240823-x1e80100-phy-add-gen4x4-v3-0-b7765631ca01@linaro.org>
In-Reply-To: <20240823-x1e80100-phy-add-gen4x4-v3-0-b7765631ca01@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Johan Hovold <johan+linaro@kernel.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1524; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=WTyLfsiYFOCQpAv2bKcQ9v9a4Pc0v6j5pZTdsIRc/X0=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBmyDR1Nny/j5fvOoS5x44kAo7U1DbCsp09QLnZ7
 bib2dHHXTSJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZsg0dQAKCRAbX0TJAJUV
 VnGlEACigT4aIoteJz1UrJ7BeFhqxU88FSKULM1LejKWaaiXbnlojm5febRgfevLieXNjMEUcfu
 85xxfk2w7CCcRqWXRoLGbknc0WHFAEOCty1UpZUO7/s/Qx2Yae2jHjYn7hLwbsL9l+Nyp+i/osG
 qXEUsbKIwTZOCqOxTTYsj0GpeoCuTbv9Y8AojqWNDQ2gGowGPCIRjAEwTyhVoyuY1qt6AnDm2mX
 MJJImUK4VnGZtbnkHsfY+K20hASz9PO9es/IMNz6y/DECJ9uXTeKvRVVxLwDHUS6gZeascllYzm
 dEC+DT/5b6ToM5Kkom2wR0mGxrS7lOBTPUE+iPS5D9ZG150ClgPkoIfWXOPflZXyy94FQM5kS8G
 92vYi09EcVxVG8JHSC8vaa1I/Q5VEN/v880Q0C5gT7eU/a8VgxiTRXCo53oOUoPp+ZHl3V4Iy4h
 rZZntxKUUJeA73CZCvokq7VAQK+/z52YKWmBHnXGIY7IaR6NgqnBhnMg9zufAv4VzF87mGTSZI/
 Qp4ykkCv9vxhOEruLdMFWUbwQi9F2ZksA9WOUrHK0HrB3HC8XC/B/dNjOy6j09XEfIA/nx24Rwm
 atxOZPEV3A5SzuAsFv68vO4+C7EUQYSIJUBww2L6x+mMEgLUVi90frQz2cjbvjmRYNvC1sKkcj1
 /0iATzZPlgGYJsA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_000428_968047_0D08183C 
X-CRM114-Status: UNSURE (   7.63  )
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

The sixth PCIe instance on X1E80100 can be used in either 4-lane mode or
2-lane mode. Document the 4-lane mode as a separate compatible.

Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
Reviewed-by: Johan Hovold <johan+linaro@kernel.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 03dbd02cf9e7..dcf4fa55fbba 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -40,6 +40,7 @@ properties:
       - qcom,sm8650-qmp-gen4x2-pcie-phy
       - qcom,x1e80100-qmp-gen3x2-pcie-phy
       - qcom,x1e80100-qmp-gen4x2-pcie-phy
+      - qcom,x1e80100-qmp-gen4x4-pcie-phy
 
   reg:
     minItems: 1
@@ -118,6 +119,7 @@ allOf:
           contains:
             enum:
               - qcom,sc8280xp-qmp-gen3x4-pcie-phy
+              - qcom,x1e80100-qmp-gen4x4-pcie-phy
     then:
       properties:
         reg:
@@ -169,6 +171,7 @@ allOf:
               - qcom,sc8280xp-qmp-gen3x1-pcie-phy
               - qcom,sc8280xp-qmp-gen3x2-pcie-phy
               - qcom,sc8280xp-qmp-gen3x4-pcie-phy
+              - qcom,x1e80100-qmp-gen4x4-pcie-phy
     then:
       properties:
         clocks:

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
