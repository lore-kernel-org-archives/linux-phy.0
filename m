Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63272C4332F
	for <linux-phy@archiver.kernel.org>; Sun, 13 Nov 2022 07:57:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:
	References:In-Reply-To:Subject:CC:To:From:Date:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dpFXthNtM2kuPXXtW1xeD3MBbrrDp75VPsBkgrigEH4=; b=kMryoJnQ7LMJEW
	FBE5v/r7lQyv1ztSPVcWJ8kQ4JijM0l4WjAj2bQ/7RJnm8phIkBj9ZGgHEs089aYbvfoxgQbqPLf3
	S10tl0c5E2jhk23oMg54g/rmpQeWjTe7PEev0C856PTHBvjp60Opf7ATQopiVQXI3uEfNKfyHAimt
	Sq3Wmpv6YaJGbK5/FmDDX6VO/k6TMdEeuPIUTuo4wPy3J0zahhWe09KHN+Jvta1Xu3c/eAy6chKG9
	LcmDyPIaRyfjR2cpWz9uhzav7axi1dXddlBPpiSFPadYG4mD5M0SGDxyV4NY3in/vpOoAevC/yI6h
	cUrMVNcv6x4xqo4MmdHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ou7rW-00AFi5-EI; Sun, 13 Nov 2022 07:57:06 +0000
Received: from mout.gmx.net ([212.227.15.19])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ou7rR-00AFhF-Tb; Sun, 13 Nov 2022 07:57:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=public-files.de;
	s=s31663417; t=1668326194;
	bh=89zGoUuEp0HViTv9Y4Q00ELT3Jsiq1G3fJq8q2YvMXU=;
	h=X-UI-Sender-Class:Date:From:To:CC:Subject:Reply-to:In-Reply-To:
	 References;
	b=HsweIWo/8e9KBqGDXifPqdRYg7hPtBJn+NSsXfDJveiKDLIKaOZPvC9mBVGShVL6O
	 Tcv/J2tPLwAN8VEcKo47xB1ZkyeIyTpTyFuwJcQ1tCbNhmRsm4byeIPyfXSMTGdN7R
	 TIX7ty1r7j3b0tl08iDZsPunz1HxwCgXhsBiaMBtPqnHaphDeZ5Wnbz8jpDWnHfLJO
	 sgh0zw8wbnjXXq9ysLw4hVvkM9FqGHQhN0ktto801QPHl2HjC4JOeQr/Q/jo4g2W63
	 0jRYSeDahc3pBFFt9+H+Ms35dyLHZzf/xmEPaMxqabTZ3lKGPMIB5+r+groVm7rd/9
	 Z+Vd6JI5Gzrvw==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [127.0.0.1] ([80.245.74.27]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1Mi2Jn-1pP4st2nFx-00e34I; Sun, 13
 Nov 2022 08:56:34 +0100
Date: Sun, 13 Nov 2022 08:56:25 +0100
From: Frank Wunderlich <frank-w@public-files.de>
To: Frank Wunderlich <linux@fw-web.de>, linux-mediatek@lists.infradead.org
CC: Ryder Lee <ryder.lee@mediatek.com>, Jianjun Wang <jianjun.wang@mediatek.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 Lorenzo Bianconi <lorenzo@kernel.org>, Bo Jiao <Bo.Jiao@mediatek.com>,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
 Rob Herring <robh@kernel.org>
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_v4_05/11=5D_dt-bindings=3A_PCI=3A?= =?US-ASCII?Q?_mediatek-gen3=3A_add_support_for_mt7986?=
User-Agent: K-9 Mail for Android
In-Reply-To: <20221112091518.7846-6-linux@fw-web.de>
References: <20221112091518.7846-1-linux@fw-web.de> <20221112091518.7846-6-linux@fw-web.de>
Message-ID: <25CE3BBD-05B2-4E44-8451-A164C5BBB9BD@public-files.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:RXjpN3W3W08raP5C+yB86kDRdauG6M3S3eL3CGdnFOEzy1z2uqO
 c0VuIMpQdLSMca3RMicXAAFQWhc6aMaZD2torvrkll2auuhfPeZDEUrJE+JETn/lZyeqXf9
 ynsmAmu7Is39/DsSy6ZiKkA/JNLZ5PClaErZVvZK/rsg5/1HjbCFpq6c321bQpwjFrfFEOY
 vJh1yqsy72FaLvEJcT3/A==
UI-OutboundReport: notjunk:1;M01:P0:rvZvYhD2qSo=;guJK+ePlyLa4DOpD8osZUFG8WXV
 qQXP7A97MRV80Pt4Z9vfrJvOhBwbgfSkeuW2oU7l2RG5qWsG7Gm6txwFC4RtUDU4wqPjPveen
 ZvBxpm6WToW+LdKUPe/ixOjOXhe6SkWrV3SbzAjdMWfAZt/t1vrBNjQqmU8Re+O6/mFjXs0p2
 IR321siC4clhkLFqyjCSC8dCyV2PGo1oKxBpTSYHCQQX93BwPhIxOawmxA3nEBE1UOZtpH1uw
 aC9WAPd/IUDrK9FqkqE7YJ2lUgmUfun7yjeoikbmenNy3qYB/pO1MuMjw8EPV8Fxj+3mHu04p
 zCL3I3G1qXv3bGPehpbGPu3860gX65vA2yJYb1mbUs9MyCgiWbZkWi6gy7Ar989zEK269m6CT
 vYWAtQ+lK1TM+5+rD3Fv25Ccx/pjzbplBDXlv/YBso3fyGernQxiea0dIUz4jo20CywWTxR9V
 kkAn6k1YjyKfDR1i8uGWpyBgaMH0qHd0pakOBZU9kxhaYMN6EU9RSg0RyOse9ILwgzsk3Lgrg
 Rmi/Z2+JQeu7bDncltr3T7u6P9KX3DU3jKDr5VE+pgOMsVUGeyZ3GY21I5dPRQD66Ih5ccv7Q
 g7cTgW+8MxLgRTuP7lendVgCljwIrgfinJLwPudC3D2+du/PCOjIfdkaeSaxslYvFjzuTxzIH
 Kp2guw4er3l3T2J6a7ukfc1edXc5cb9yrbXgxZqGmfDCsjjNeB/jXpEBvukeo6uwyUL1zlDtp
 rOPG7d3Yc+egCfKysdF4DoEHv1AKX5CLAlV+vmJ2u7vGg9RG+tuQrUu/ZlgKgESPa8dKzN7ct
 YVk9i4Kl+DBS4+egeoBx/L1SzKyU2qjUEI/CPvoxfh7C93kfRtE7rjr8Mzjt275sZTEBSKdHc
 o+9TOT2HWFJHP5FhVe5y03dVU5Ol4ydtCZ2L+vOhiRW6FMNpuoIGfN8nzCTB7nU59/02G7pij
 mYHcGw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221112_235702_259420_AFA67FD7 
X-CRM114-Status: UNSURE (   6.40  )
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
Reply-To: frank-w@public-files.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Am 12. November 2022 10:15:12 MEZ schrieb Frank Wunderlich <linux@fw-web.de>:
>From: Frank Wunderlich <frank-w@public-files.de>
>
>Add compatible string and clock-definition for mt7986. It needs 4 clocks
>for PCIe, define them in binding.
>
>Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
>Reviewed-by: Rob Herring <robh@kernel.org>
>---
>v2:
>- squashed patch 2+3 (compatible and clock definition)
>---
> .../bindings/pci/mediatek-pcie-gen3.yaml        | 17 +++++++++++++++++
> 1 file changed, 17 insertions(+)
>
>diff --git a/Documentation/devicetree/bindings/pci/mediatek-pcie-gen3.yaml b/Documentation/devicetree/bindings/pci/mediatek-pcie-gen3.yaml
>index 5d7369debff2..f7a02019daea 100644
>--- a/Documentation/devicetree/bindings/pci/mediatek-pcie-gen3.yaml
>+++ b/Documentation/devicetree/bindings/pci/mediatek-pcie-gen3.yaml
>@@ -48,6 +48,7 @@ properties:
>     oneOf:
>       - items:
>           - enum:
>+              - mediatek,mt7986-pcie
>               - mediatek,mt8188-pcie
>               - mediatek,mt8195-pcie
>           - const: mediatek,mt8192-pcie
>@@ -78,9 +79,11 @@ properties:
>       - const: mac
> 
>   clocks:
>+    minItems: 4
>     maxItems: 6
> 
>   clock-names:
>+    minItems: 4
>     maxItems: 6
> 
>   assigned-clocks:
>@@ -160,6 +163,20 @@ allOf:
>             - const: tl_32k
>             - const: peri_26m
>             - const: peri_mem
>+  - if:
>+      properties:
>+        compatible:
>+          contains:
>+            enum:
>+              - mediatek,mt7986-pcie
>+    then:
>+      properties:
>+        clock-names:
>+          items:
>+            - const: pl_250m
>+            - const: tl_26m
>+            - const: peri_26m
>+            - const: top_133m
> 
> unevaluatedProperties: false
> 

Missed ack i got here:

https://patchwork.kernel.org/project/linux-mediatek/patch/20221029175806.14899-3-frank-w@public-files.de/

Acked-by: Jianjun Wang <jianjun.wang@mediatek.com>
regards Frank

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
