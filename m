Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41F82C77B71
	for <linux-phy@archiver.kernel.org>; Tue,  4 Apr 2023 19:01:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GR623NfOasmVbZ99qthbKkcl4fD7c7rJ1VEX7y0NWho=; b=efTSIAs/OWTgt1
	fsC9iPSbBKLKgZbC/kpSaFeTnlE7eK2Se+gyAT8ym4vCyUZFT7vqG7YSYE8YP4GwGOIlkkiZMJ7Lg
	K0IusomeBeer6ti3aJsR0/IAXFWjvQ3FV+/O6XdQ1fahF/s3rmnlIyKjKRGOfzTNnkBbx7O7Ex7Ro
	R0WZuR3wczB2V+HJ0b7nWp/APOtOQbMgPmx4DGAQVcxcQ9NGOCiuEnTbOVtyPaA29q83JGW1Cglee
	cg0VAPCaVbPwsCD0ZizQWqFrCnAOH0bvBRyPNAbN4Ni+UcWV+nxLkfC/+owvt/kmWhmphnZ8OgPtJ
	VTmmpoRAvbcrSBArHq9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjluJ-002Z3V-2y;
	Tue, 04 Apr 2023 19:01:27 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjluG-002Z0D-2z
	for linux-phy@lists.infradead.org;
	Tue, 04 Apr 2023 19:01:26 +0000
Received: by mail-ed1-x52e.google.com with SMTP id cn12so134707187edb.4
        for <linux-phy@lists.infradead.org>; Tue, 04 Apr 2023 12:01:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680634881;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1gN6UktfhGhq/wt9oSUVorCmIWND3+y76zHl2dlJ3nY=;
        b=cSSpiX9pabelbWFTHnChkccbAVL+A8a8gUJgioolKVE61890gDbv2RljIMauD6hpkY
         TItoyCmOSXuWlWvaoZa6bcafjb03Q2CJaqlnMW9ytzRLsZaBH7V1PxVjGLwrWqbG/kTd
         V1JVPgpcHIzRsjhStilF9e2dBXV1tAQaVTcvE6sKAYMnTOOhxwHk5ItTlGgxIrMvzhu2
         Q3z6S6Bxui50SYu2llGq7FfKCI+Ww5wLAsHy8m12oih8G0lXGNEgyKHF8Q9oEF3llyFv
         I2HxP8ngwt4HjfmbH+5mE0zyMOnJi9WbUJvYlSJW500Exx0vxKlDnMILwqE88NyIWTt0
         9bbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680634881;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1gN6UktfhGhq/wt9oSUVorCmIWND3+y76zHl2dlJ3nY=;
        b=Dn4Vuy7YsUvUFmpB8f2otbWnE9QTxUv/qgTZSasY5dsFtoxy5JfHdPdtZteDIDO5U7
         sepKPTGLw6yI44VHT8KouWSHCUhx8wVeVMz7fz3ZlJhNRwMxO7wOTMqNeCASitIFh7Hb
         beABB0ZwoG+BimrUFY89l5niUYmxhYWjbZ9NIK1tfIHLDquqzJ7UyUuyjno7zIJT9tXf
         17Am/URnSokP8sxK00GGAAZAf9DKP6jUMAwPwpNvaIzWyAxQAaMYcqquuGz4ALJscLC6
         pLD6JhiEwytVTdP3zZY9W3PFqlorbOwkp7dbikbkC6WvjNqV4/xZiu8LUfKjmPl3KsFM
         tHsA==
X-Gm-Message-State: AAQBX9d6pIzcPJQHHb2z+Gv26+aE4wvY7FYVFAgW0p4I+T3GkmvcFleo
	L6srIdv1R5j5XK5BlnT3D6KXfQ==
X-Google-Smtp-Source: AKy350byDBq4o0sNh1eGFgbkcrFNkrCEYKSrGSAasw/Hf6E+t7r9pGPCdzC3i07Pi4ztIyN2VXCr6Q==
X-Received: by 2002:a17:906:c00d:b0:921:54da:831c with SMTP id e13-20020a170906c00d00b0092154da831cmr245053ejz.31.1680634881806;
        Tue, 04 Apr 2023 12:01:21 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:7467:56f4:40b7:cba8])
        by smtp.gmail.com with ESMTPSA id dx21-20020a170906a85500b008d044ede804sm6257079ejb.163.2023.04.04.12.01.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Apr 2023 12:01:21 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Swapnil Jakhade <sjakhade@cadence.com>,
	Yuti Amonkar <yamonkar@cadence.com>,
	Abraham I <kishon@ti.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 3/5] dt-bindings: phy: ti,phy-am654-serdes: drop assigned-clocks type
Date: Tue,  4 Apr 2023 21:01:13 +0200
Message-Id: <20230404190115.546973-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230404190115.546973-1-krzysztof.kozlowski@linaro.org>
References: <20230404190115.546973-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_120124_963445_48E9A3F9 
X-CRM114-Status: UNSURE (   8.49  )
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

The meta schema from DT schema already defines assigned-clocks, so there
is no need for device schema to mention it at all.  The specific
parenting of the first input and output clock is apparently important,
thus keep them as required, but without defining type.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/phy/ti,phy-am654-serdes.yaml         | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/ti,phy-am654-serdes.yaml b/Documentation/devicetree/bindings/phy/ti,phy-am654-serdes.yaml
index 738c92bb7518..854e554eae67 100644
--- a/Documentation/devicetree/bindings/phy/ti,phy-am654-serdes.yaml
+++ b/Documentation/devicetree/bindings/phy/ti,phy-am654-serdes.yaml
@@ -34,11 +34,6 @@ properties:
       Three input clocks referring to left input reference clock, refclk and right input reference
       clock.
 
-  assigned-clocks:
-    $ref: "/schemas/types.yaml#/definitions/phandle-array"
-  assigned-clock-parents:
-    $ref: "/schemas/types.yaml#/definitions/phandle-array"
-
   '#phy-cells':
     const: 2
     description:
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
