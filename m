Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72481CA5FFC
	for <linux-phy@archiver.kernel.org>; Tue,  6 Oct 2026 07:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EkekRenuAsJhpFU2uDvgM2TvfpEigWEYeY3rP/EPu8I=; b=DzUAmhtXk3+9ah
	1Yl/Tz7Q5mN13c/iuHzLsywYgRHVqOIYLMmC6o8l0YeveNcd+pAGazfpt2O9eFMwzb+E1TjAksUOl
	XJeyP+m+S8p/xr7noL68HZbcag67/OGXJI/bfxc8ZTOIXkTT17XMqosULfnkXR3FvMC/PsbvBU+Kx
	OLq5W05L7lReSJTnAs++MTpEQXZKCgjcRFTOlJR8B7duTzI1h0p5SMg/Qjr8LtLXvASY4/IQNFxKZ
	tJvFly98Q2OJdwBm+MITXPFwsDkR6BKWzeX7BC72SvoQemHl6+PCaJQkov7px+KnCM6whnpUQvMic
	bsbQaxPnwlhJXpTwoUIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDzuv-00000000DPG-0HWA;
	Tue, 06 Oct 2026 07:48:53 +0000
Received: from mail-pj2-x09.google.com ([2607:f8b0:4864:39::9])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDzur-00000000DMX-3knp
	for linux-phy@lists.infradead.org;
	Tue, 06 Oct 2026 07:48:51 +0000
Received: by mail-pj2-x09.google.com with SMTP id d9443c01a7336-2e13013f1ceso5399965ad.1
        for <linux-phy@lists.infradead.org>; Tue, 06 Oct 2026 00:48:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791272929; x=1791877729; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=v2tJApUzC1LEzp8M/eTL2SHChylQhCDDbwAQQxkGsv0=;
        b=bhSZWqptRQsUl5/k+N+khLQrR6n/uXrOTL68hc+lCIdbzzmqPd4SI73TkSLRGTZwE3
         lX9n0daXhiypssBVE/sHqmChmAirWs5/emXulUVuHFwYIDVqSBNRhPSCyhJBITNI/TGK
         ehFckzNfpj4Hs9wN0KFIQ/f0x4l9KEHNZOznUWt4xt9QZSdkdh1Okg6syPWiT8tko3Oi
         VZKlemj05vYVxTCZ17F+bRrggRzOyXYXb41iaZhoRgLzLmtvN7m57bbJf1VnOzXDVEmn
         xan4zssh7cDM8fencoOdFWQ9Eh3UqB3FNoyOhMGsq64+jxcn1oet0gCsRqPyoxSX/aPr
         fCrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791272929; x=1791877729;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=v2tJApUzC1LEzp8M/eTL2SHChylQhCDDbwAQQxkGsv0=;
        b=sokM5dRF4Hc3Esc/aiRBOpgHkR3GnK65+dZECdnUA1UkVkh7jxjXZDPxX9kApG3QzM
         GmAXMwmoVZUy5INjfjs2CLUVn187/PmYEvjaOtfaJIhvJY60J3RPYF65tznS9nCWeWgR
         kpfWBoh/yoDbPDAb8MABz7sU+LEdSZcAk0qfBEqFYw+EN1zBhw4h4rcc3S6KEI/MnXvz
         h0wtCWPH79uv+ox3AciLk8UQZ/MBYZw0x7wmUDFlsp+p3+1xXPbvvN9BvJ1vDJkX3P8A
         2aWuMCClJDqVHysVSJndG57wMcQhsB/rv8U7ewmhDkdvHFLhnL87LBUXI9l/0BWQjV42
         hfsw==
X-Forwarded-Encrypted: i=1; AKwUvBxhUs1EADO0TPCS89vzVgAb11+lJ2+KTWI1TrSeTMUNZ6ZOROAUUR6VGiPlcaJOkfzjv2wUpwIPD6U=@lists.infradead.org
X-Gm-Message-State: AFuF++lu1bKegEe7o98yDZnZF1Ii0UApoYzIQ0o190JuylDlkymAF6IU
	+93cHJiTLBksiW3/q5jMRNj1grs+BCmfCmH/0VVOnN0Ch6oa+vswYsfI
X-Gm-Gg: AYBFou1c/dA7kchX1rXPA2AR7cwPfuxhXUidxG3K2x5T6V/aGmQMMm/6wXE9EBAbNuh
	4ctCfVaqRVQaf5QwB7pf4CiX2Nea9Y7Ypqzb8KYYbBQHNA5QgWCwwp/iE6YhG3SBP3BnQQqzCQQ
	anJ99sxFRNGie/zKbSWKcBbHhxKupK6G8kPYWCj91Eqi3l8DjrX1NjIH9dVbjwGgUDi2Zhk8AnJ
	g/82aPraOzf43R+zA1kuqtKCXoSw4lPn7nouA9brDfUaA8xdIt8+LvqJrVkyhWzISev2OmP065n
	q3ijgMuU4GhjaD492PRtJ43gjizM7w6bLbcQjWAg54cW179F+DlhBGimSkZNuD/HqsV12LO6U93
	d3YeXPO2m08IVArF+WFyM90Sp4Ug1EcmKScnKXU8Yyiif9cOv2LaPQEpwCPa4nrP/kXq8+faSej
	2GTiUCSkM2eoJT3iwBajh3axsJdNEIp1GGZ+7Bl3A422/NXgn0rwOkIvlUuopn+/4M/8o7
X-Received: by 2002:a05:6a21:6b01:b0:3e1:1689:1ebd with SMTP id adf61e73a8af0-3e12485fceamr550520637.49.1791272928795;
        Tue, 06 Oct 2026 00:48:48 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cce6d2406b1sm1998173a12.8.2026.10.06.00.48.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Oct 2026 00:48:48 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH v12 1/2] dt-bindings: phy: rockchip: naneng-combphy: add rockchip,sgmii-mac-sel property
Date: Tue,  6 Oct 2026 15:47:48 +0800
Message-ID: <20261006074749.2010233-2-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261006074749.2010233-1-coiaprant@gmail.com>
References: <20261006074749.2010233-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261006_004849_968645_BCD0B250 
X-CRM114-Status: GOOD (  12.42  )
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

On RK3568, the SGMII interface can be routed to either GMAC0 or
GMAC1 via the pipe_sgmii_mac_sel bit in the pipe GRF registers.

Add the optional "rockchip,sgmii-mac-sel" property to allow the
device tree to select which GMAC controller is used for SGMII.

The property takes a value of 0 (GMAC0) or 1 (GMAC1). The hardware
reset value is 1 (GMAC1), but this can be overridden by setting the
property to 0 for boards where SGMII is connected to GMAC0.

This is necessary for boards such as the Ariaboard Photonicat, where
the SGMII interface is connected to GMAC0 and needs to be explicitly
configured.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 .../bindings/phy/phy-rockchip-naneng-combphy.yaml   | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
index 379b08bd9e97a..8e898bce9af73 100644
--- a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
@@ -80,6 +80,15 @@ properties:
     description:
       Some additional pipe settings are accessed through GRF regs.
 
+  rockchip,sgmii-mac-sel:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [0, 1]
+    default: 1
+    description:
+      Select gmac0 or gmac1 to be used as SGMII controller.
+      The hardware reset value is GMAC1 (1). Set this to 0 to route
+      SGMII to GMAC0.
+
   "#phy-cells":
     const: 1
 
@@ -105,6 +114,10 @@ allOf:
           maxItems: 1
         reset-names:
           maxItems: 1
+        rockchip,sgmii-mac-sel: true
+    else:
+      properties:
+        rockchip,sgmii-mac-sel: false
   - if:
       properties:
         compatible:
-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
