Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FFEBC369BD
	for <linux-phy@archiver.kernel.org>; Wed, 16 Apr 2025 12:21:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yx2bNOeAjK/lBmf7yOWutayjjOmb0xkOk8eqHq5+OpA=; b=bN+ZmlDTydT5P+
	gzzZwhRv6ShyCoXw7twarrYf5ezPBxGOYuGbQIpsRv7zgUd6tr4OgXoN9VbVAiCdpTvkl6vhUHHN1
	eDnBf3uNeZxbyGFz65IhrPO03nNMxzkGfz7+jKARVPUST/psm/E3H4aQIYeUGmj40OkSTCtvlJtHx
	dGqzyvLpMmCGr24xp5DYOz4eBqQqhRS9BM9u8Wg5PPm7ZQQ4Ak8/LtzEMCRhABDnX37ejYhkE3oA3
	NXCIh7NSjjxYzUnNVPINQtBnFG5S8irN2YVQuXoZXciEymAlJGPZb6dRlhMDGq232zp+n6H+uepwj
	qsBl2M8HTZLUxBL9y6VQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u51lp-00000009Uc1-07us;
	Wed, 16 Apr 2025 12:21:37 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u51VM-00000009Qy7-1fZQ
	for linux-phy@lists.infradead.org;
	Wed, 16 Apr 2025 12:04:37 +0000
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-227b828de00so61944695ad.1
        for <linux-phy@lists.infradead.org>; Wed, 16 Apr 2025 05:04:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744805075; x=1745409875; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BM7x+ZBG1DXAyQZ90aa0DW8MY6nV37JS9LRikgJBlYM=;
        b=ZQZjPk6rzCp4fLVh07ntEyq5BOiq0kJaCgR7VULMexzDB73QGmBK3HYKa6dIq3o3Ol
         QMKuNI+DHudfrjdHqHoPpmfviXyv9swyuzp/EqOwEpyEWObef6YsZ9vltSYGNpbPV1iG
         w61VXp6BgF5AD9IeOJThigC16FbA5HIikr9o7DliN6wGLVIyqSwgzt1Tx2ww+550nGPc
         OU0hukO9AsWiz6syKEFGnDVy6ISKAxmJG1BpPhtjpFd+pe173L3R9JbVn7jNeDAMMtz7
         2yvLQec05iEQLDEit6B8eptgGSlQsu7Fx7sCU8CFWItmzRgDjtflCLpLzKkt/1rY0R9P
         3ueQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744805075; x=1745409875;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BM7x+ZBG1DXAyQZ90aa0DW8MY6nV37JS9LRikgJBlYM=;
        b=MpcMnOqPTYyTHNSOwV+t9IHT8c1hKfPLDn9WWjw1ngVwWnvOdONJqYa71x9ejRdU9+
         v1FAjzcBzYJPlCJnva/pephvJubsUeOdAzLG4xisVLVFHdsxdOuHO4EzpQ/0vhtp2xK2
         9ialic7s0YcR7ApcpdPHMt0ClbxrC9LDiJxQbSKLlQFAZScI+HgRISrQlztoyG0CgDvv
         rox9UEGMnelmG6za2S9dUdk9b7GHrR7dgoNRe6RDxNTZfUH1AuRAxxmJ/kWEa4HiDC8+
         foXMp0q48sI1GUadYhku2cbZwipO9qGOuCIYI6sUnCw8roVkN4oCw47QPWerm/3KGVLI
         xvZg==
X-Forwarded-Encrypted: i=1; AJvYcCVGXAc8fHSlXE8TBWrwiNnIfTMuqDFxD+HcYXGFF2Pd2QLBJUAU0YTjkDfjOOAhXkdc7+Ni4hZT/IQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YwTWliy6v9iOh1Y2VXhnJEASetI3JUSY+PdU20+O1z0xAoEYnPB
	n1o2baAukhwuVhUe5u3PXvVdS8JvLSyRpF2PaE+OYWc6qCGD3Z3P
X-Gm-Gg: ASbGncvMImF53W96lXKTao2aEjKtmFdo9ty94iB5P4ESjBBWGCYeLXW9LxsVsBrJbne
	su4igesy5DtUGNBga2lNK8AJ0Ahc9Ika74DK15B6ZGUz8ja2uvU3xHbCU2f9AG5lF2ACHezPfn8
	R9gJ7FFbqh9I+a90wiOGOvGq5Cbt/s7+W5fvRd4hLEZjaiBCdYmGpWN8VIV25ybWzLDwlQZ01a5
	6tr/68hGOUMYCC3KryPgKscsgQLVa1izuJfd3AtsSVjYwszKeVv9Ns7CWnJYv6BzlgKh+VjmJJh
	K72XHtAzBXG1Da+vRB6lC8N/mmSbw22sIYldnHM=
X-Google-Smtp-Source: AGHT+IGjmNkai2OqNwA8/dUWOCbwak6evON16LRF36TpbLv/gFaJvSGvFqbQl/bmCAtp4AcK/zNx+A==
X-Received: by 2002:a17:903:1a44:b0:223:325c:89f6 with SMTP id d9443c01a7336-22c358c2862mr29539835ad.10.1744805075390;
        Wed, 16 Apr 2025 05:04:35 -0700 (PDT)
Received: from nuvole.. ([144.202.86.13])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22c33febfb3sm12033385ad.259.2025.04.16.05.04.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Apr 2025 05:04:34 -0700 (PDT)
From: Pengyu Luo <mitltlatltl@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Pengyu Luo <mitltlatltl@gmail.com>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	Abel Vesa <abel.vesa@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: phy: qcom,snps-eusb2-repeater: Add more tuning overrides
Date: Wed, 16 Apr 2025 20:02:00 +0800
Message-ID: <20250416120201.244133-2-mitltlatltl@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250416120201.244133-1-mitltlatltl@gmail.com>
References: <20250416120201.244133-1-mitltlatltl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250416_050436_446502_8EA67E31 
X-CRM114-Status: UNSURE (   8.67  )
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

In downstream tree, many registers need to be overridden, it varies
from devices and platforms, not only HS trasmit amplitude(0x51),
HS disconnect threshold(0x53), Tx pre-emphasis tuning(0x57). And
some devices require different overrides for different dr_mode. So
add property entries for host mode, original entries will be used
for device mode.

Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
---
 .../phy/qcom,snps-eusb2-repeater.yaml         | 41 +++++++++++++++++--
 1 file changed, 38 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
index d16a543a7..d0f5e770d 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
@@ -36,25 +36,60 @@ properties:
 
   qcom,tune-usb2-disc-thres:
     $ref: /schemas/types.yaml#/definitions/uint8
-    description: High-Speed disconnect threshold
+    description: High-Speed disconnect threshold for device mode
     minimum: 0
     maximum: 7
     default: 0
 
   qcom,tune-usb2-amplitude:
     $ref: /schemas/types.yaml#/definitions/uint8
-    description: High-Speed transmit amplitude
+    description: High-Speed transmit amplitude for device mode
     minimum: 0
     maximum: 15
     default: 8
 
   qcom,tune-usb2-preem:
     $ref: /schemas/types.yaml#/definitions/uint8
-    description: High-Speed TX pre-emphasis tuning
+    description: High-Speed TX pre-emphasis tuning for device mode
     minimum: 0
     maximum: 7
     default: 5
 
+  qcom,tune-usb2-squelch:
+    $ref: /schemas/types.yaml#/definitions/uint8
+    description: Squelch detection threshold tuning for device mode
+    minimum: 0
+    maximum: 7
+    default: 3
+
+  qcom,tune-usb2-disc-thres-host:
+    $ref: /schemas/types.yaml#/definitions/uint8
+    description: High-Speed disconnect threshold for host mode
+    minimum: 0
+    maximum: 7
+    default: 0
+
+  qcom,tune-usb2-amplitude-host:
+    $ref: /schemas/types.yaml#/definitions/uint8
+    description: High-Speed transmit amplitude for host mode
+    minimum: 0
+    maximum: 15
+    default: 8
+
+  qcom,tune-usb2-preem-host:
+    $ref: /schemas/types.yaml#/definitions/uint8
+    description: High-Speed TX pre-emphasis tuning for host mode
+    minimum: 0
+    maximum: 7
+    default: 5
+
+  qcom,tune-usb2-squelch-host:
+    $ref: /schemas/types.yaml#/definitions/uint8
+    description: Squelch detection threshold tuning for host mode
+    minimum: 0
+    maximum: 7
+    default: 3
+
 required:
   - compatible
   - reg
-- 
2.49.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
