Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4AEE1C61D97
	for <linux-phy@archiver.kernel.org>; Fri, 24 Nov 2023 08:41:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g0zsmBIMJRT2x4MGyJOu1aTIn+UF3iRbRjPt7ZAxfNQ=; b=nRJRA2FA142XK4
	pccGkQQN9eyOXMhmd4frPLjJx9nMdv5WH51ebxwx1s03SEuaRy/gQhS4z9GtHBihsODiNyo+W2dIw
	K3fLf+ZKhDKZ59tmo/vCF2PxDchJI8ObLU+je5XHNOsH024PWtHCW2o7P4dwA8rSlq/hAt+sv/RE7
	q42DGthknOgc43dkA4UjGsonnMWooD9N1xbQS3mSSmHhy4iEQhQnB+AyVzhOfaF9OfmKDxoRA0j4V
	3710pMd1AfGsJ41aqFv6s0aPh+IMwzLS97YXMUentJWsAQy+LlRqgT+tni7KT88RWdL9MkDmG3geb
	8NxBCDo2uVt+thlJVsLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r6Rkm-006XsF-2k;
	Fri, 24 Nov 2023 08:41:36 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r6Rkf-006XjL-1O
	for linux-phy@lists.infradead.org;
	Fri, 24 Nov 2023 08:41:31 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-32f737deedfso946407f8f.3
        for <linux-phy@lists.infradead.org>; Fri, 24 Nov 2023 00:41:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700815286; x=1701420086; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Rfvt+EmrHZv1zbeX+XtXPk6Fy/0gOVGXRVeJ603Il6c=;
        b=Xtvu0xuyZ/NOXe4SmrzruMwzRriOkwywgoWudcT5ifWA+9Vxk+7epGFMumG3uS815v
         +pEXcJNlRjebIPVk2t2FYAmnso42uPdun7RkqJPyFnNxQx2/rIF03JWshU+UnvZiwbL0
         FSWaFzP1MmXhcMVEeRjpuVNcJacgSciaD3q3owTB7+L58QFfLAOhEmmATcyPK+V6l363
         zGpj0wc1cO3kPyknAQ6lF5e6TfjzyrwHCJQAIYGw1xTw4OXHH1UI6RVsdZFU3c1tOdrJ
         WiPkeRU+7jgi1l9EUTb6FLiNxUNkS8HBXdAnwFMwxvhf4TuB7coaRb/anZQgiBVv+PHL
         cf1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700815286; x=1701420086;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Rfvt+EmrHZv1zbeX+XtXPk6Fy/0gOVGXRVeJ603Il6c=;
        b=U2HjNWdHgRu34LK8zaW4UE4/HOCUmukAb5E8Pe/b/yAWBxxFHfQko1SughcJ+0a/f8
         zxvpDRxF5Y2fuyKTlZHBjRI4IlHK0K7TQAjCJpklFPO7AftknLOhOZ3PAzVg5kqY601R
         FpAdhfrpn/LQPtLQYKtyvkkm++WF3TtEUWNLYdANwckDNEPJx/Y9MjuOsR5ElNT5uA4n
         CBL21PGYQEkJlw4dbf0ES81eUj7OfprW9Gr+QgOG5z52flPrCNmNfUIQPDt4XZDebhOd
         kIKP764K/uB80MrfWch4xOY2oGb2AUwTdrWvRbThB8UHvDuh89CBXE4DKZUaE5IOd23T
         lWHg==
X-Gm-Message-State: AOJu0YytqvkYRA85jbxw1zOx7swTq73wnm+FMPn0XGcieKEH3Sx0g30I
	zBkmXT9o0YyGXNfnTqBneyEeNw==
X-Google-Smtp-Source: AGHT+IFnuchw8Ikyiy3m+j3gALkvJfoErNWWwqz7BB2ufK/58r0Gt+p5OXv1H8cdurIdKXJg/ONALw==
X-Received: by 2002:adf:f48d:0:b0:332:e6d8:9345 with SMTP id l13-20020adff48d000000b00332e6d89345mr1676453wro.8.1700815285668;
        Fri, 24 Nov 2023 00:41:25 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id c11-20020a5d4f0b000000b00332e67d6564sm2534562wru.67.2023.11.24.00.41.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Nov 2023 00:41:25 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 24 Nov 2023 09:41:12 +0100
Subject: [PATCH v9 01/12] dt-bindings: clk: g12a-clkc: add CTS_ENCL clock
 ids
MIME-Version: 1.0
Message-Id: <20231124-amlogic-v6-4-upstream-dsi-ccf-vim3-v9-1-95256ed139e6@linaro.org>
References: <20231124-amlogic-v6-4-upstream-dsi-ccf-vim3-v9-0-95256ed139e6@linaro.org>
In-Reply-To: <20231124-amlogic-v6-4-upstream-dsi-ccf-vim3-v9-0-95256ed139e6@linaro.org>
To: Jerome Brunet <jbrunet@baylibre.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Jagan Teki <jagan@amarulasolutions.com>, 
 Nicolas Belin <nbelin@baylibre.com>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Remi Pommarel <repk@triplefau.lt>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, 
 linux-phy@lists.infradead.org, Rob Herring <robh@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=761;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=OBDzXE6zqX89kc7pvzy4CIEH7gf5glqDzs5WzIgtsF0=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlYGGupCZ+JBm/j62lgDoGr7xNwQCD1mUMzIViQ3Q+
 5BTtcTmJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZWBhrgAKCRB33NvayMhJ0e0rEA
 C7eQ9byvp8DK/smW2cQqD8180I42XiMLdt3wZ7xVsHlZzRItzA+GMiMo8KBxOsciSTcMe2vQ3qkNz8
 /viQaJnuONTjKXGF1XzU0w2a1mU/w+GMAqpq5t5GYrsJYhBKucDz9O4ybGOoKdKFn12f8S8vjiTPdC
 +zThFD679SlacJRPuk0vKbwaPI4yFbHSvKWYKMtm1yYUOTWdf3asCcSbA1r7ZdSxR9n5ptrY/j0S+/
 7MyDnuRCfp8bhrWJqlXGhdXqWuabpaTaiWo7WgKW1sfpHHJgnES0z1FOzy3t+/lECu07cuhyLkdHK6
 hBFrNDz28dCn70wp0d3lmAAKuMaGh0riTCG6cjJHW9y2nNUNfLScNubW48XowuSlqaadd5YUu67laO
 bsXX8vh7L1Nu5uT2wmRY2BZpkUek6F6XRKcvDP9fG/P7LNiGCNkG/gK2pGYR0D8pI8SfeZN3558EO5
 m43V1xVJ/3fhvgYUcrY9QiimI6m7WxdQhcxoePjjVBNYsQwezxq4FGFV6yYRLjjGzzPY1REEU0hYSx
 oHJQit3xEHjUuNXc2fQH7wAQLOFnTcqe1LFiHzo8u0TVEv0EaxKFo1fFXSlIPwb+jNK9flSKdZq9aV
 jjtxeGFXZGXslCW1Bd7c+mso633D4cWnl5ZWduv7cUenT9VDAgcrqQz9kh6w==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231124_004129_481308_94158F41 
X-CRM114-Status: UNSURE (   8.04  )
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

Add new CLK ids for the CTS_ENCL and CTS_ENCL_SEL clocks
on G12A compatible SoCs.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 include/dt-bindings/clock/g12a-clkc.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/dt-bindings/clock/g12a-clkc.h b/include/dt-bindings/clock/g12a-clkc.h
index 387767f4e298..636d713f95ff 100644
--- a/include/dt-bindings/clock/g12a-clkc.h
+++ b/include/dt-bindings/clock/g12a-clkc.h
@@ -279,5 +279,7 @@
 #define CLKID_MIPI_DSI_PXCLK_DIV		268
 #define CLKID_MIPI_DSI_PXCLK_SEL		269
 #define CLKID_MIPI_DSI_PXCLK			270
+#define CLKID_CTS_ENCL				271
+#define CLKID_CTS_ENCL_SEL			272
 
 #endif /* __G12A_CLKC_H */

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
