Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1DDF8C87FDB
	for <linux-phy@archiver.kernel.org>; Mon, 11 Aug 2025 14:33:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Iz0LVFTqAEE2cjRMSjsp3GCeb1T2w11SgVI9rO4wBSs=; b=Wq/AZM3tQznIw4
	zoWwWFZy1YtGFMfksGKo3/RQQTPhbxc9O0sKN8sJl7wu1G4A/bzw1UYHe1eIqnWV3eJ5gBj+rFXS+
	AL30nLpVt8DqZaY18i66G/wT8n+iD4A015EytStWQHs8xDvJ5GgqJHfqFoYmdscHICnnlqO3syEeA
	Fbv0AkTMv2k4QiOIvQV9EV8kBXYEu/69M/vcVPtYz+fp8t30Ng8Qc2zmXUVGXYRVUFWEbq95AFEGj
	KmGW19At6eX/T7LtUErSe4UecShUVl/6pgibt/1lknVz31VZjLKiVeZUqkaYh2IBtpZpyZxEvFKFB
	GyoFTB6FMywOWUYQa+6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulTaM-000000082VR-3Pqq;
	Mon, 11 Aug 2025 14:33:14 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulSye-00000007tfG-1KuQ
	for linux-phy@lists.infradead.org;
	Mon, 11 Aug 2025 13:54:17 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-af946c07c84so60671566b.2
        for <linux-phy@lists.infradead.org>; Mon, 11 Aug 2025 06:54:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754920455; x=1755525255; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oqhbJGyWXO0pDEnjUQmQZz1y0G16+abJkAfpIFUeykg=;
        b=WcqQvML4uL6x4O/bEowrVR/ejvLasCy3XahmIhtrD9NZGQSGaxY/CT2JhmBwZnkcZP
         jzImGaCUh4NuDhOb0JiUe6TkYs0MvhU119gXGcMaAtddsw+QIHD8X/jwwFp/ZKH6aaBK
         q5ZTSxTlfdQGVAxf8lNpH3P0K36S3qc9C5n0ihwBm2Ub669b+haefdP8K991NeRr9Qmh
         n6gh/a/hJb3QXirJkN4k4oGeAs/efxpPuNuMIYqLB04o4ObH1WIjFZe4u/4EONOzrd9Q
         gyZ4gvYPBCamy7FGrCDIY71bqvg/c10a3cIxApmVezKp5rEROPbIWTniB9+yORFOsMxI
         awWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754920455; x=1755525255;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oqhbJGyWXO0pDEnjUQmQZz1y0G16+abJkAfpIFUeykg=;
        b=FSNS/XCQioNihQRsm82fZOEpgxByC9fL42vjNr9lgh/5LKV8i44XQ7Or3KvNbCVxUf
         932l5E2NdvkSDGLRcUtaCwGlrCzGU2yGOd7LnRSCVafQZZfymw5S9dpihS2MhXoqaX8C
         BjN9SKNobG9NoYsLIpRABoDdxwX2gdWk7JpezycNYb4tFURIIsbG2/AWxXKnaziUs869
         euVhlwD0gJxL7kFOEMUjmruHjxsgFOl8q69IxMSrk52n45u9bCAojn3kI345d2rW1/Zj
         VDKr9+7uxS78F7OSDGDJ6K8gBwaPqQ8gDGpqWsRrYl7pSHwdrEs5grauGcjI/dExRuLe
         jbNg==
X-Forwarded-Encrypted: i=1; AJvYcCUgG8hFPsPjEbKVbJAVfmFTpG0it2Pb4e4I3hSmam018pHsu61RSNe2y9CHRJbv522UnJytu84bsoY=@lists.infradead.org
X-Gm-Message-State: AOJu0YySiofMOpeoKsy6E67yRqS9RiQrtzbyXRN57Gmm30MVrPo/XTq+
	GzWGT+ifaydqETcMSsXRcnr1+zg7EJyIl/F4adV8AKEfpd4hlETD5EpM3s0Ff2rWw14=
X-Gm-Gg: ASbGncsWd877WfF6vgEAH3TSP0aBwU91ur6u7vy3PrL6sG8aD+5Jb1qa8nwcYueHU0/
	oTrO7uOnFvqDKboTzis8Gy48KnBN1o8CV1Bzuv64205ii2CcDOdewOTkGY/atx91bNBe2xbqmpV
	ngJU/UdmvjzqOsEsjnI8A43p4x9cCrCbFFLdTrIV3soCk4IGR9Pgd5qsGGtxM7TVX6eQ/4C9wBo
	X59K/gpVVZ+xz8fnRC93ZScoMSvrUON3jLyPmsAXhzPXKFkdv0Uvk+2mV63FtOYMqeXT/3ujpUg
	WLVdS4Mxu5lVUhshiGtGHyNILgRylUAsx12uMPCxCfTkz5QJzlCOYut0Q1b1TXzD5nSO+xHayei
	l4F/xI9U5m3cQJ5TV5A9oS7YTarpOSGhX0B7aZzA=
X-Google-Smtp-Source: AGHT+IE/1LgQrqO5eCCRUgilyifCk6jF84Qp9fDrZOql9XlTeOhTTbm9h/YyeGwJTKKvwOp71PXCZA==
X-Received: by 2002:a17:907:2d93:b0:ad8:a2b3:66fb with SMTP id a640c23a62f3a-af9deaaef27mr385687866b.3.1754920454644;
        Mon, 11 Aug 2025 06:54:14 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af986a477c4sm1179029866b.56.2025.08.11.06.54.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Aug 2025 06:54:14 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Mon, 11 Aug 2025 15:54:03 +0200
Subject: [PATCH RESEND 1/2] dt-bindings: leds: issi,is31fl319x: Drop 'db'
 suffix duplicating dtschema
MIME-Version: 1.0
Message-Id: <20250811-dt-bindings-db-v1-1-457301523bb5@linaro.org>
References: <20250811-dt-bindings-db-v1-0-457301523bb5@linaro.org>
In-Reply-To: <20250811-dt-bindings-db-v1-0-457301523bb5@linaro.org>
To: Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Vincent Knecht <vincent.knecht@mailoo.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Li Jun <jun.li@nxp.com>
Cc: linux-leds@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1148;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=TwhL9kHuNMw1ekpCMBDV2BMjjP7HjIb5JBPWSmFWyGU=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBomfYBFR4XrobLEhq7B1bbNoPCguuPOvtUYVs7T
 QoK2ACsJb2JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaJn2AQAKCRDBN2bmhouD
 1wX9D/0fgTSAEgjcithvcnihEli0+dhJu1IjNs8D4hs34omPoQQtm7fLqC0xRc+ZgX+vvRs/uD2
 WJrb3kblxWU4xiiT2m000ekQdnlQJaQdGA7JPSgu1YHHgsZdPxdPCzmKkJnxWRBqmcpbAybQ5Yy
 aBb+UA7EY96reCOw9mokeqAoqnZ2UldILGg9i7xKZsJLQbKGeofk6QjjMnA1H/o5IKGB5xBG2X+
 g5TmwluhQkVyB3TSat40bnb5Xx97fS1rLdBvp1o895jugOym4riUHY1DdvdxmqbvimR8uLxq6B5
 pdpTg1Qys0jqZAewiH/s/zRgAARR7toakmq2G0iwAmekvGXDKwpcDQdpnKH8azu0whlaUXlL2Dt
 b8PKF3JNOH8d1FteVKbm2Lb0ODRIPukQlCgDCpJ36p5G5qLjsqKAuEFUVlUYo8u+MVwdsYSPtu+
 P+whAhlYtCLDufA9vaHELAT5beRGjxzHJzxGv5kIDu7kXC/gK8kzjkN8GCFzRdAh3zrGqFldfAf
 vauniUM6e8Ta4Kd9uO//LDT+PZ6m4psOUj6cgsQUekspxFkVGOpYhfSExqaC3LrPWJgclAsVIMI
 FwPf7TcgRnrUAZVrOwLY14f5bD/yb01z9NYzpvW9iorDod4J2OjqkHSpwJPkzp1ILLvEX/V1530
 QU/fB9vh8kGxMXw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_065416_386418_62C2939B 
X-CRM114-Status: UNSURE (   8.78  )
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

A common property unit suffix '-db' was added to dtschema, thus
in-kernel bindings should not reference the type.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

RFC because this depends on dtschema changes and should be accepted
after new dtschema is released with this merged:
https://github.com/devicetree-org/dt-schema/pull/166
---
 Documentation/devicetree/bindings/leds/issi,is31fl319x.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/leds/issi,is31fl319x.yaml b/Documentation/devicetree/bindings/leds/issi,is31fl319x.yaml
index 3c0431c51159e549920b17cf2ddfd1b85ecde810..906735acfbaf94fa08244f771139df207dd6e4da 100644
--- a/Documentation/devicetree/bindings/leds/issi,is31fl319x.yaml
+++ b/Documentation/devicetree/bindings/leds/issi,is31fl319x.yaml
@@ -42,7 +42,6 @@ properties:
     description: GPIO attached to the SDB pin.
 
   audio-gain-db:
-    $ref: /schemas/types.yaml#/definitions/uint32
     default: 0
     description: Audio gain selection for external analog modulation input.
     enum: [0, 3, 6, 9, 12, 15, 18, 21]

-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
