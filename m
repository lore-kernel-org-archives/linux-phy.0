Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24E44C87FD2
	for <linux-phy@archiver.kernel.org>; Mon, 11 Aug 2025 14:35:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I2kmO3AhtdJXdAsFbFevlAX8s7HhNPrc/kYuhV0QcOE=; b=jyFSdBCpd3zdjN
	jBmxOj65e14BbTSy6HwKvf0vDHNC+GGCzqW3BHlHqyMIdM576wPUkW8VVuCgaz+CijBACF99Vdt8y
	ZjDoiD/t7JfYb1sI+8Umt05RAL741VRYqZfFHZewQehQQsDUyW1SwsXbHa+izFpoEWjupwDMoitpG
	KtYJCIqkvAj8tDgM/g51w6xqRdVdGkE2txIgwo/BUp3W1+u8D2tcdwAbY60qzatTTge/Su1UwYXro
	95YFsjxyAwL2lbCSTNWBgWzXDTO9L1ik6fu5Y5QB5x+4ywBTfoc8b+s0BIHSZOk/Ygtzim4Gme/Hm
	yeNyzjL+ub7DCEQihZWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulTcx-0000000833C-3pMq;
	Mon, 11 Aug 2025 14:35:55 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulSyf-00000007thB-3ou2
	for linux-phy@lists.infradead.org;
	Mon, 11 Aug 2025 13:54:19 +0000
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-af933e84619so68420466b.0
        for <linux-phy@lists.infradead.org>; Mon, 11 Aug 2025 06:54:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754920456; x=1755525256; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=y33Pv3KzofFQINb0XIyuYWEMtrAvE50zQkghzUlQZqo=;
        b=oCJDwB7GkWhssESaTGyI7TPx0OWlS7TbtQJqCQigAldIhGIIQ6SGNorcAv9TK8k/n+
         PkLdzCsY1ta20WxiJro1ob74OiEug4fHluwi8XMHD7hmCrZCYWZz7oJZD06fZCaaCk74
         1pxeA44qjDShoQb1iMyPzvLtY8m0va+n+M08Ov7pli8Jo7py4hHG1GiUwH8clhdXgRl7
         RAqUW8++MtdZkbgR7edQGuko5Wil46TzV3129pYqPwpCFKJxiAiCDeAJ4boVTXC1SkyS
         aw1k+5MwL4nkZqElRwrXV76GzOfHxVRHSQjrnV4YZQvHqpmySTd+00voWSDRm8fmTAr7
         RLWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754920456; x=1755525256;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y33Pv3KzofFQINb0XIyuYWEMtrAvE50zQkghzUlQZqo=;
        b=NLvGJEgUE0w7fLHuRCFDDlbmiEnwNBoIFe/P/N2vMzKjS0naxY6AY6Mg9Pm8h4HrB6
         p4raaA5NUZ6TrG/zvgCVhixucpFAhPJBFptE0d5OWjGsts9pDk+iraftB/o25ooYkwEK
         u1xyZFIQDXOPHUgFWEhagMcP4VUESSqMmLYCuSUJa/sidsdMwdUh5JHg9OqLJDkQMcch
         gR4j3jl0yutf92LFT1xC12KXkrXjeqEWgVKY26vd9ldaLD5gBy9BxBQSUCKFDZdWAu6c
         8wO8VfUTi+huwUJrNvT3/H1fd05XE/fOX2anQC9eeWIcPEHYXwbqZvf4DjhPM3VlnDI0
         VQmQ==
X-Forwarded-Encrypted: i=1; AJvYcCV7p7CQytcT6CI72BXqQLGzxSrO3y+yGSmVAptQ/JzBgF2ndUVcwH1sUutNedISpnlXd6fS76nnA2U=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx+zhdNrChbvOje5UjcSoh2Lkw4Tjk0uYqahzDDqy/l8DsCSvds
	XMnbw8zD3Frbdb3kn6D+6xRTlwzzFr68558YucmpPbf4P9HtRzIeaEz2NiU8VwcJsQw=
X-Gm-Gg: ASbGncuJ/FvTK8F6Z4V9vUspyp9Qq0rVvcWBhFY6hqPbBGZyJawEJAuK3Sue3nPmUto
	oAuD6IoT8BImmibmHEt3iU1KfTavmoRLcqHsSw2hT1RT2T1ee/xHnGrMZ55OERajRVSO5IEoGpp
	/6syncGgZLoKQ9QSceTQgPaGtRJsQtiSEykBV3MSzEiTF0aZ0MDk9jn9T335g/1a3qIM/JvMgof
	ykqmT/n2s7sIij+0DL0hkJ28hjWCETe83wxBwEnYB34Ru20wSG4fVIJ731jjom+cAiWA8cgSpy0
	oLclVfgSb9+/J4jQBuYwikCRlL76LLpiAv2txg9WyxlNKtKg7d6EIEeJBbhXjTHa9hbN4R12WjH
	epR5gI61S39sZxaJBK2REE8oNJnLiHrZfmfE/n/g=
X-Google-Smtp-Source: AGHT+IH4Qf+ySBLIVJ9RkUzdhUf9nuY3HqBodr3qXxNFSQgHsOTF3ilWLqfyHr1IQq10+Kz8o09S9Q==
X-Received: by 2002:a17:907:3ccb:b0:af9:aaa6:a86c with SMTP id a640c23a62f3a-af9dead3f1fmr358990066b.10.1754920456487;
        Mon, 11 Aug 2025 06:54:16 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af986a477c4sm1179029866b.56.2025.08.11.06.54.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Aug 2025 06:54:15 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Mon, 11 Aug 2025 15:54:04 +0200
Subject: [PATCH RESEND 2/2] dt-bindings: phy: fsl,imx8mq-usb: Drop 'db'
 suffix duplicating dtschema
MIME-Version: 1.0
Message-Id: <20250811-dt-bindings-db-v1-2-457301523bb5@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1112;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=c3RG28Ko/mx6f7xdaUC6cmwJZ34iCoqiGu5BWiOS8Xk=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBomfYCAhXzoTChGKL7Xql44UhldrwIyMLU8rSvj
 ClxLJtPxI+JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaJn2AgAKCRDBN2bmhouD
 1/rGD/95sl+p+L3yZcu4PpLeRAKVr8M0CAYYWYQISgDBn6rgUWKMSxWpjRCK+XTyJTfIVm2M0da
 rshpXmRzJhjNa2N6onDSKhQIhcWQxb8ziD1k7w2CoWg+38e9S8dzL/Dpfb8egWwXGVa/COwBnSo
 g4fNEx+07u433Bn5HQy8MfjFOczQXrOFsuFS8iQ8jXqER9zY9u66tjwNpkKuSandtQNQn9hrb3J
 gc8bWN3fkE5gVxt89ZVe32cD0Jg6cftQCiIG7K4N2zmSpzeiSPWKwo4UOvyqjE7zOFQI54ert7X
 gMFwj2f5Qxv6M5KuecERmUWYaVOFrurwMa3274qrvyahcAGfK+mDU06akPsgfdiE1Vsr5hTIZiQ
 4f+KYICmuJoClFIRJzuorhp24lAjhcEgcEDB9T2e2L2uQzYjTIrPiuMBEWYhPhp43mHSd1KTs9o
 FtpspdYBCN1VfmOyqpzK1nf9Nf6NEhZR5GsJ5AryaPV44iJNm6xIKJd724oyK+P8HL4Ae9n2l3p
 U5VFAsCg3b3+3mp+j9MmDIgyll8GFVqTkCzFndCkdhNQd7AJHdSHsi2uYFatm191/KHTZGuXRsk
 Bfj9yHmaePvlSvESbySzB/IoUn9p5izL5PH3oq7+Ly7Sbba6OFqrsGsuJsgk95oDdjbNnsK20KQ
 09bNiVFG/ckn9GA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_065417_981115_B97283EA 
X-CRM114-Status: UNSURE (   8.61  )
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
 Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml b/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
index 22dd91591a09428214afaa4c9c8e37aae9bd8aba..6a47e08e0e97b286538798190225ca2966a7ab34 100644
--- a/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
@@ -76,7 +76,6 @@ properties:
     description:
       Adjust TX de-emphasis attenuation in dB at nominal
       3.5dB point as per USB specification
-    $ref: /schemas/types.yaml#/definitions/uint32
     minimum: 0
     maximum: 36
 

-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
