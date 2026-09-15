Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00F07C88E7F
	for <linux-phy@archiver.kernel.org>; Tue, 15 Sep 2026 10:43:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FPxZPi2aPNX2ouglCKJrisp9OrFbX6rOkwrXokchr2Q=; b=AJfgUOgx980iyd
	IuqCgiodXyUDsJZeUYPB92x7LlYvOr0gJvDy8KV/ypVTwdcoYD/KcNPJtXD5wH8MWTadJ0Xu+jkHn
	AYiN7DgcHSai0f5ts7bslHLiwTD73iBcYTCou8FTvTSahZsDIDaCKJc9RjNVJomPCVYuuzy/PwsM6
	ODOXOadbFwx0lPVaW0DqH1/fqB0ILpHCN9GVGfXDTlglXcSj7NWwUx41dbcJeuaHmqit3955Ezmv6
	dt6CGeLJM0tmaJAA16D/HoRxwRP6d+QPYRjoFuqzaYXQzBe0Xyj72WVW80Qy8VaMG64GToT6p12nJ
	PFuQTlt+ukRYmrq9mYmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6Qda-00000005xaV-2rNG;
	Tue, 15 Sep 2026 10:43:42 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6QdU-00000005xUB-23nv
	for linux-phy@bombadil.infradead.org;
	Tue, 15 Sep 2026 10:43:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=P6/E0n0oXj35RKNOrfB7WlcbfXYrFEXx2o5InJpzTZE=; b=oRRRhcdOCCdrHyRgxhQYuE9qvi
	Zgpzs8JP7gd4yFgRkFHuHK8UQ+SR2Iz3E1wsjESJcN+FiCQVCFoctt12wfTEDbn4xzGJ5Kw5Z16UM
	KPao+MluVcxaokTsX2/dVxCxsiN0DGd+AMpUnEPEAaLN/3hO4Dn2tW9H7Je1LF2Sh04G02KeUMCpJ
	IerhMdfbxG9kkJcCVn/gqgAKGY6Yn1YfPhEcGic7QSRjhl1HrArZ95x2oyagr8Rp7Zf0ogpmnW0Pz
	/ReqrMOP3LVu0p6oEjcG2l07kwG4l2bZFOft2A5abvaJOJF+ItNVz/8hpONRTz6jdnZuVeFPEt7Jx
	p4PJI3SA==;
Received: from mail-wm2-x11.google.com ([2a00:1450:4864:31::11])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x6QdP-00000006ZhE-3XD7
	for linux-phy@lists.infradead.org;
	Tue, 15 Sep 2026 10:43:35 +0000
Received: by mail-wm2-x11.google.com with SMTP id 5b1f17b1804b1-49e6c0fce17so798385e9.1
        for <linux-phy@lists.infradead.org>; Tue, 15 Sep 2026 03:43:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789469010; x=1790073810; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=P6/E0n0oXj35RKNOrfB7WlcbfXYrFEXx2o5InJpzTZE=;
        b=Ig7jyYedXb6xT3BsaVLDL9Vro0u8akmsJeIhU5QRCoqBTApwx2TouZTj8Hpq8FJRzb
         Cc9ZeqcdBbfiUHyrkzPbRP8Jgsq+bhhDbMDQkXZKXOg5HPzqe1j66eGghM0FviX4kUfv
         2GEMSYx78bi2zYGmoTRcSvvIOIt8AvAezRZKpcjFkBZvrO8LKLGZKobsHbCIOrEk3Q8T
         Gaw01/victvJy3xyVyqBuow1Q/iF8syitBv32+TTrUPc5YwVckIGGuH0497z7r8HYGUm
         00YB5Tp74wFIChsLjDufhCPYyTfgrDQHGvw85ju8E4Jbhq2zsijEoqpYxe4IPPZSnt50
         W5lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789469010; x=1790073810;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=P6/E0n0oXj35RKNOrfB7WlcbfXYrFEXx2o5InJpzTZE=;
        b=dpMus890phOxJhrxAqqXlmSMYSAhlZfHuRIm2OlZd+vGVzbqfY0itGiV0ce9cgKwHX
         0l7vnfV4UE26d0dF80/qIPiMUoBgH/Nr+ulNK0WAv0IcP/5t3MTwfMNWdpifN92KniZw
         Ifqqp0CEMtRQxAbwM5IoS6hIsvwfKJb06cpMSH6zo7FdDoDYUhpMieKaFNEtPcRxlGiD
         8Hb/aYzZyEuA8wRiaKwZeq46onvxvjmaSrF8D8iICRGf76zhT/5OY6bUUycSck0Um008
         p8zECktco3tpqy4HNmT/NLcIX3hcllkaCvKd+Tzw8lMWPTCTHYkRS6G3EOqeZbqdHZFw
         ozgw==
X-Forwarded-Encrypted: i=1; AKwUvBx3y5OXjsbcLIhfUlAjwv16pvACA/DQpoZOpfazalqKLirDeOXGP+1P4lZpaR9wl+BTEWWsMbiJncc=@lists.infradead.org
X-Gm-Message-State: AFuF++lUqeW2MUba6qK4+rw0YdR/SACz48bg4TaSu20BZz3LHsJMucnF
	ecbYj7tapoJAU9Sf+KYCkBCUId0TCCP7QwyIlF+Kg+6yl3rARYllgKg+
X-Gm-Gg: AYBFou3bvq3QTqBrJblDFkkAb/JSp0X1y+aivgI7X/0/SfUPi8oX8dmJ3eYhDfT+HiR
	W+eBH8qYe85aDtWW8lkSsOi6Ifi+8b7OqevcAQ6C/gnyGqNd7Yktdslvjl6lqOBikirx3sACl+V
	6p1Fim6IReTqjGd4Hbj1ks6dgeHMz92xfTnwUzZsxcei8OZZ/Dx/R+Db6/tkxlHt3LoCdhaVI2X
	vbhtv7JESnTs5NLMv6rGnRGMJFue/pFPHG1cgmM4UyQO4Se3IIc21J1b/Cn3MVyqeLVkMncFGX2
	EQz4buyT+FO0VuuC/f70ldgLbLYpzRJknDyZLpu5+IicK6ILmiRstMJ4yZCKsIQh1AsaKn6BeDx
	oYvk56ZezzL0v4DORX1LlnnIIYHSxbXZMraWPK1NHggnmaTeCG7lgsiqCQRstZVN63a58xAorgD
	Xp2dgHl/t0zu43nnybMi3s1jxMF57UguoPJRMRY8NMX9HCqJ6deMht/avuL1RKRJLeWQhiF8hhM
	8s1y3TDrHgGmOotLIolGnEJA8rqdoJ6jLRAaz5jtd+bPaWCXAIVbb10QN4V6lZzaiqp
X-Received: by 2002:a05:600c:8b54:b0:49e:7a00:b9a5 with SMTP id 5b1f17b1804b1-49e8222d27dmr8972995e9.4.1789469009914;
        Tue, 15 Sep 2026 03:43:29 -0700 (PDT)
Received: from [127.0.1.1] (2a01cb0007c59900d73f8285c1e647ab.ipv6.abo.wanadoo.fr. [2a01:cb00:7c5:9900:d73f:8285:c1e6:47ab])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49e7d2a94b9sm58001325e9.3.2026.09.15.03.43.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2026 03:43:29 -0700 (PDT)
From: Amin Gattout <amin.gattout@gmail.com>
Date: Tue, 15 Sep 2026 12:42:47 +0200
Subject: [PATCH v2 2/4] dt-bindings: phy: rockchip-inno-csi-dphy: add
 rk3576 variant
MIME-Version: 1.0
Message-Id: <20260915-rk3576-dphy-v2-2-b56e68b54b8c@gmail.com>
References: <20260915-rk3576-dphy-v2-0-b56e68b54b8c@gmail.com>
In-Reply-To: <20260915-rk3576-dphy-v2-0-b56e68b54b8c@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
Cc: Michael Riesch <michael.riesch@collabora.com>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, Conor Dooley <conor.dooley@microchip.com>, 
 Amin Gattout <amin.gattout@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789469006; l=1762;
 i=amin.gattout@gmail.com; s=20260818; h=from:subject:message-id;
 bh=iI/cZyNcu0lJPo6qa1Mf+1HxYhdTetig193HzvnkFFo=;
 b=zvkAUWKH6xsfLa5omHi8dFMZ76+DIzxdxeGwkj/eZhqT0s0dXZoIPjUvdeXPdhzqLFeXe0dAw
 Nxt/00tRo0xBDfkMfHqcmLZPm1clsJ5PnYNVdOmNhuGDzExnxy8Wr5M
X-Developer-Key: i=amin.gattout@gmail.com; a=ed25519;
 pk=MSIqDPkCOkwtyP8Fns1m+KFU9SgqoDl2mpLe18vL+hQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260915_114332_169363_5606B7B0 
X-CRM114-Status: GOOD (  12.33  )
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

The Rockchip RK3576 features two MIPI CSI-2 DPHYs compatible with this
binding. Unlike the RK3588 variant, each PHY instance only has an APB
reset line, so add the new compatible to the single-reset group as
well.

No fallback compatible is used because the RK3576 DPHYs match neither
existing variant: their control bits sit in a dedicated CSI-DPHY GRF as
on RK3588 (rather than in the shared VI GRF used on RK3568), while only
a single APB reset is wired up, as on RK3568. Falling back to
"rockchip,rk3588-csi-dphy" would make the driver request a second,
non-existent reset, and falling back to "rockchip,rk3568-csi-dphy"
would make it write to the wrong GRF offsets, so dedicated match data
is required.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Amin Gattout <amin.gattout@gmail.com>
---
 Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml b/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml
index 03950b3cad08..92d0c961f4c4 100644
--- a/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml
+++ b/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml
@@ -21,6 +21,7 @@ properties:
       - rockchip,rk3326-csi-dphy
       - rockchip,rk3368-csi-dphy
       - rockchip,rk3568-csi-dphy
+      - rockchip,rk3576-csi-dphy
       - rockchip,rk3588-csi-dphy
 
   reg:
@@ -89,6 +90,7 @@ allOf:
               - rockchip,rk3326-csi-dphy
               - rockchip,rk3368-csi-dphy
               - rockchip,rk3568-csi-dphy
+              - rockchip,rk3576-csi-dphy
     then:
       properties:
         resets:

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
