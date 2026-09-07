Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB00CC79FA1
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 15:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EkekRenuAsJhpFU2uDvgM2TvfpEigWEYeY3rP/EPu8I=; b=11R4zbrGYh+4if
	E7X+qUE/xULCWLgrVdodwva87zuaNYh9BLun51XKl9MRhJsIShMuCyPqp18gRY1gdI4U8C7gSFuPL
	vRf56nvzmmQi/IiHoKEfpXYr3dPjNKI3EDMzvOAhdFllsw9LrX+/1EjrEyihrF6Ep8ubGoAxBIZTh
	wGY2OBCYuEj+fcPE8fQeGYZh6UAqbgt2f8bpJgQJ6mA6ulPdTPgmgnMiKOJZJlKMBZIuxUYzUqLPF
	0yrnW7NObiIpjCPUnDe2JMnfAJRrFeaueA+qjaG35fsThq5VMivfYwtkYr/RH3L3D/iMjo0/EJFGr
	FWp0ItJ782hJZBEplzgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3bQw-00000007C3c-2AQU;
	Mon, 07 Sep 2026 15:38:58 +0000
Received: from mail-pj2-x00.google.com ([2607:f8b0:4864:39::])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3bQp-00000007ByU-34Mm
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 15:38:57 +0000
Received: by mail-pj2-x00.google.com with SMTP id 98e67ed59e1d1-399213ef56cso1810100a91.1
        for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 08:38:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788795531; x=1789400331; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=v2tJApUzC1LEzp8M/eTL2SHChylQhCDDbwAQQxkGsv0=;
        b=WU/u0l3vc2QRtnmU1V/aB+hVYikvU3xoX6hMlZ4/89YeVTjNj5R3S6IgUWPcIDpQxH
         D4ZEd471HMP3fSTCR+JXwv3xeuf9xYoxSf6z/yiMzxJI0qF3DfKmt2TN7IIGjnyR7Tyv
         irbTVlWLmIlCaVbGpOFK9vXEtlmda02TH9RtBhiNwWcaeII6syItYE9stfF40LmQr2c1
         be7QVghQJLOFPvQ/HTtsH8x9fPXJqVVdpoHR8w+Id1/otzYZ8EptM0djC8q9+Obca7It
         6fojA1a0XsqqdU6QKdlJ9bU9GAJLHcSCbuUBQkJsUw52fZp3c30LC8yq5uou1bu0525W
         zN2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788795531; x=1789400331;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=v2tJApUzC1LEzp8M/eTL2SHChylQhCDDbwAQQxkGsv0=;
        b=rXCFx6q3VCou3UVazpMZWYI6OESEBIchtRM4dncAECVLbO3eG3hyzpX3ZIf6ndtLOQ
         SG2o9iuEOvhoFX3deH55HxEokIGJ8jXaVPz/mZ+8dVcTNSRkZBZLqlB1mq27HqBlzG3P
         dJyv+2pZsBqAfvqmXnsGLX5z//Aq4orSbFhcCKoFDPC5GMTYkOJ4lbsoZrz2qTF4KcyL
         rq/d9Bg2Ua7wgPLXtIBgQTk9nfpHIJMrWYTJVDaV/u/jWdOzdakD4fPbjIoSQGzjL4/O
         ajkpRjgYvZYqv27PbZuC7bINLVOnApBeI8q1t7rYilZzFUgWiMSAfTeQ8U7KwDb+ANIr
         gK4Q==
X-Forwarded-Encrypted: i=1; AKwUvBx/kwjjjymFJBmjkGPCS4cP+UWjecp6GPwJNK1LtumyYC2wv6p9pI2H1CWEvBWCd9FXmwdhNLmSSV4=@lists.infradead.org
X-Gm-Message-State: AFuF++nG6P8wCwY5LdGNrc02kx+4E+JHaTfz9Y3ilVxS2gTJU0MZHjFL
	k5pz/PVTiZiE6rkeMK9gwVHJYquwdEPTirGCStfsO+LppS8W2HOFrcIu
X-Gm-Gg: AYBFou0NL0CsEfuaorhQSPWNvK6KrWj1ujWe35rGYB7oanGrFl80W8wxOrntphY/DE/
	0z6aOIyY2DTEnVGvDZWu8QAtHpNHtBk9d9UAAHRnqNET6U55PJh4pMk2Pdch/wmwhUblWxkiql8
	R1XfXQZA+aK1EndmBoTHnmMf6+305WX58YtbmVsoMKBSiRGel9DErhhjnme7/xZzHM6kPh1K8tw
	4f5RSv8muO8YU0b++D0EwrqgBnrN8DzXJy3ke0e83slUZvVuLcjvOknuqOunL7ALCrty/em/uGZ
	a5szczg5jhwsXHwgrxsFBxW464Nf3rz2q9EMeUGMMIP9A0PIZWHOEkcv9x7YIN8I379Nr3EVyZt
	av5zO275yNUSza/K25bVkBlqIBTtDUzZhfWVA+Qn8u0oyKcPCYLqS4UhDlB7ipuCM1Jz+DSSbDH
	ZN1KaJuM2mo7tE5abt/EM7jMJ443ZSG308PVaXCFSoIruXNKIEE5TJhSUlj20=
X-Received: by 2002:a17:90b:2ccf:b0:398:a2a3:b631 with SMTP id 98e67ed59e1d1-39b262aaf3dmr37885553a91.19.1788795530498;
        Mon, 07 Sep 2026 08:38:50 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-39b260fdf9asm21690121a91.9.2026.09.07.08.38.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2026 08:38:50 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Vinod Koul <vkoul@kernel.org>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Romain Gantois <romain.gantois@bootlin.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Coia Prant <coiaprant@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Russell King <linux@armlinux.org.uk>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	David Heidelberg <david@ixit.cz>,
	netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH net-next v4 02/10] dt-bindings: phy: rockchip: naneng-combphy: add rockchip,sgmii-mac-sel property
Date: Mon,  7 Sep 2026 23:37:05 +0800
Message-ID: <20260907153713.2572547-4-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260907153713.2572547-2-coiaprant@gmail.com>
References: <20260907153713.2572547-2-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_083854_292638_33CAEC48 
X-CRM114-Status: GOOD (  13.20  )
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
