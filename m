Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4ECFCCA490
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 08:57:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2cJnliNIq0hzGEm6/vSxjcsqgjEyuzL2O3AOT6On3ZE=; b=nfdFnWHiVodrSZ
	cru4vv3yPe+Di6fIsYVZeWPV4s3qzecwCCJfHXVR04FC6hQ+Hr2M6n16l+trla2xPkgZ2H+UjaDoN
	UjSzq7++knevGTbfyQrRNfr4g8e0NOyxAIOf/h+I4qS3eZVuxYoVf89vokJo3PTxudrNccTKAn2BZ
	Mufs/qACpJMPGcmHK+ghaovqUsx9fQzM/Av+TE74xHgAQOAfGqdzIk8Wk6x28/PqjCA9/dKFSxaC2
	7773sNTRmG2Fwf8Mspv4DPgKifKd6CGl2dwgjhButQ4cM3OcsY8I31moxfwKrlFOOFelzziVM4cOJ
	rUQ+vRBZG73rx7wS6AXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHdki-00000002Ofu-25Q1;
	Fri, 16 Oct 2026 08:57:24 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHdkg-00000002OcN-1YNS
	for linux-phy@bombadil.infradead.org;
	Fri, 16 Oct 2026 08:57:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=soC3oS7a5a03KgF4DpWOLsJcd+T0181emvr4pS+/rCo=; b=UyFeime+i0vS0dEduXuCyC5fMF
	onbc1LvdQ4sKL/6JsBLsGwsrieo01Cnnd0rsVplWwkGU0G6WKvsRi+lswZzU2UrCrmXD0sZtk3+MY
	l9cJnmIW1ULLXZXhzE0rQ6chSg+86PZTiW5Exno70XKY6te2Oq/w+YSloX/l9uJn56E7K0XszQLqT
	ugIC68/LbGrPdCTDRAXu/5ZUN5SaW1GKksP6nDc4b7QwX74co6wJcl/p5JS60c0jsxVeTFpgpa/Fs
	jY8n+hpcQ/uGPUsAV1Ve4yHIdme4KDXcROvn1IJrxVaevla/VmnOGW1ohsES9EdPMK1t4q+rjxn7j
	l5AG9UtA==;
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xHdkc-00000001HxT-3f1F
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 08:57:21 +0000
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-2e8ad5b2f61so4019485ad.2
        for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 01:57:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792141037; x=1792745837; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=soC3oS7a5a03KgF4DpWOLsJcd+T0181emvr4pS+/rCo=;
        b=XdqPAZ6vs1/RAufnD78UUZgGTAEgYM0x7n3cuFsso8bQe6YRJedy/pimXe8O5mK+7z
         Lac66ShfgJ+ww7xkQJqnZMZKwagajCFVDCCuF7fI13x2PiUUo8hOga/0qRqXhzjd4b4G
         rLLON/CeX68PdDwnGEkuOahYg3ELl3B9gKyBL1YAtUN//pHCrfZQmDTGyMBOG0r7tzdT
         U8EVLbU/ufK9YpXvco8yBe7Aasc1qSXIBOU93OarZ0I5kxCILzGlM5l2MKrwoTBUGrcJ
         Fe0N1gKDOlU0D0VLA3sJjtaSFyH0rPxWKS3rj0/S34m/SeDwfCcljso8fj0YY5DA/AIT
         Lt2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792141037; x=1792745837;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=soC3oS7a5a03KgF4DpWOLsJcd+T0181emvr4pS+/rCo=;
        b=tCBdrvY7aBajR8PuqfbFFaWb1oB/hpsb3RZgNQcRR0xGkyqZlEYDeF3bBR8K18/9Xk
         QzJxSSXz05cH8nuEkRLz1L1NsicEIBigGSaHJ5938x51KbyTKeJAiYBStrG1RQAib29W
         sxM5ygko2cO+tFQ0W8o0s2KOYPJYGr6MPUlQMIUc3MNK5HW7mKchcmUm5/xNRT8j7Iqm
         7+BczKUSvnpeVcOUMbyXiyTJZ+q8JQTyDZep6Zwu7EXUK8TGZlUzuVUuj1BZMNKJjiXs
         FAYZo651vePsGwuDtP8eVoHxtubxlvayfo4hlKBCJLZqHvphZV9irvpMFjzHOZ30L52T
         dNUw==
X-Forwarded-Encrypted: i=1; AKwUvBwe3DTTGxmz4FIPaPLNT2/Koa/xMUWaTOsIpcAuvfvqRlKGf9oYZ5s0FOY0Z5gR1j2mftrbVHOnqYY=@lists.infradead.org
X-Gm-Message-State: AFq9FYLIDvFArI1z71EAmjrVbliCo4TuEz2O1hIdlfTFsRCPAA09WDex
	sS5mFlN5GFlpmnfWlqVDT0PzNeQX4FCsfMHR/bjzFy9mioajb4iDoGlN
X-Gm-Gg: AYBFou1naZZdCZqPXcZkBGgTtM5vnl6eUVUnnf0GHREtmYNLFljlJdp4k/KQjWmPmCZ
	8vdu2zLwRxf3VsqoJasn/8Bd+QTmBQkce7X8PGL2YSXG+yYDhscSR0dqdhRQxfI9j/ypTLQdhAk
	lWXX4H8hX/67k6isb38Op69pvU082ZDPuf58Z3QmhF+PQA5HxoA56MptjmWzRYfdminqAR8FTIg
	+GO7WIErOdM5aR4pyYgKnWK8Uo3Cm2yhnFdzH4RwFh0OeEn8Wk9haZL7M9AzJWYcy5ccuMS2ORp
	kq8vGCswbkHkyKj/xLfWxQKPiMS94HeT2+ZCRkfuUjgDYWK10vxy7Sb5YV5yZ3s+VbvKvGlHc2z
	LfeVILUqR3I30/pRW5L0k2yjHiwR1LN6jbq9dI2zQ8njUEWbyHCqEdX3pXXndot+iTIasU3ypS3
	EcnHpkXR6VrG6RigIUyH80fQRcOKHeoCooxrVBCoOBi5G+BP07iPhC6AHoYdEFpdIg0oi6PHrpV
	RYo4RwvdDcVmjXW7vKUrYMNnq65kA==
X-Received: by 2002:a17:903:2407:b0:2e9:53b1:a3c8 with SMTP id d9443c01a7336-2e953b1a559mr91141175ad.0.1792141036442;
        Fri, 16 Oct 2026 01:57:16 -0700 (PDT)
Received: from [127.0.1.1] (211-23-39-77.hinet-ip.hinet.net. [211.23.39.77])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e97e882a20sm6971025ad.62.2026.10.16.01.57.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Oct 2026 01:57:15 -0700 (PDT)
From: Jason Yang <jason98166@gmail.com>
Date: Fri, 16 Oct 2026 16:56:41 +0800
Subject: [PATCH v5 7/8] arm64: dts: rockchip: use two phy cells for the
 rk3588 mipi dcphys
MIME-Version: 1.0
Message-Id: <20261016-dcphy-rx-v1-v5-7-e63b49eabe2d@gmail.com>
References: <20261016-dcphy-rx-v1-v5-0-e63b49eabe2d@gmail.com>
In-Reply-To: <20261016-dcphy-rx-v1-v5-0-e63b49eabe2d@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Guochun Huang <hero.huang@rock-chips.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: Michael Riesch <michael.riesch@collabora.com>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Jason Yang <jason98166@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792141002; l=1777;
 i=jason98166@gmail.com; s=20260721; h=from:subject:message-id;
 bh=4OavUBeyGqaDIQHOgA/IhtahRkKYw5WBMKHlgGZGkLg=;
 b=v4sInDUQ/7XkIMzK26fj1mNhWedwz2y1jAeJhVW/owd/Y+g6H8l/hQlvpgno7POd/zFYYL10J
 lVky0MG/7a6BXkIlwekLASsH7MOoF5G3njxjIvRURKOz+XEH0L9NH+L
X-Developer-Key: i=jason98166@gmail.com; a=ed25519;
 pk=xQmD001Q/ooHl39PxyQtusbUQmgbOsSfpFryRVWZ/k4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_095719_617953_CCD06103 
X-CRM114-Status: GOOD (  10.13  )
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

The MIPI DC-PHY binding takes a second cell that selects the transmitter
or the receiver. Switch mipidcphy0 and mipidcphy1 to two cells and let
dsi0 and dsi1 select the transmitter.

Signed-off-by: Jason Yang <jason98166@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
index 376ad04e0786..94d68fd89753 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
@@ -1788,7 +1788,7 @@ dsi0: dsi@fde20000 {
 		resets = <&cru SRST_P_DSIHOST0>;
 		reset-names = "apb";
 		power-domains = <&power RK3588_PD_VOP>;
-		phys = <&mipidcphy0 PHY_TYPE_DPHY>;
+		phys = <&mipidcphy0 PHY_TYPE_DPHY PHY_DIRECTION_TX>;
 		phy-names = "dcphy";
 		rockchip,grf = <&vop_grf>;
 		status = "disabled";
@@ -1816,7 +1816,7 @@ dsi1: dsi@fde30000 {
 		resets = <&cru SRST_P_DSIHOST1>;
 		reset-names = "apb";
 		power-domains = <&power RK3588_PD_VOP>;
-		phys = <&mipidcphy1 PHY_TYPE_DPHY>;
+		phys = <&mipidcphy1 PHY_TYPE_DPHY PHY_DIRECTION_TX>;
 		phy-names = "dcphy";
 		rockchip,grf = <&vop_grf>;
 		status = "disabled";
@@ -3429,7 +3429,7 @@ mipidcphy0: phy@feda0000 {
 			 <&cru SRST_P_MIPI_DCPHY0_GRF>,
 			 <&cru SRST_S_MIPI_DCPHY0>;
 		reset-names = "m_phy", "apb", "grf", "s_phy";
-		#phy-cells = <1>;
+		#phy-cells = <2>;
 		status = "disabled";
 	};
 
@@ -3445,7 +3445,7 @@ mipidcphy1: phy@fedb0000 {
 			 <&cru SRST_P_MIPI_DCPHY1_GRF>,
 			 <&cru SRST_S_MIPI_DCPHY1>;
 		reset-names = "m_phy", "apb", "grf", "s_phy";
-		#phy-cells = <1>;
+		#phy-cells = <2>;
 		status = "disabled";
 	};
 

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
