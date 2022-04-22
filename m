Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D86F0C433F5
	for <linux-phy@archiver.kernel.org>; Fri, 22 Apr 2022 19:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KQkqbzqlPPHPBBeSufy7kj1xUCtMuciHKmJN1ILe0/c=; b=2pDLwqwTF2gThY
	ZfTcZYcrOrg++yqnAlk53/iMP0DR9rbA8OzeleQb4Q0H1HkHxlSv6aSaAU0WL6/K1Z8LBGGtjpI9R
	NRmmO15gXtsdd0lv5CFJupiJiwWSboDX8fq0CS4pV0ZranXxEbcqdKU2m+WcOTT4+zoqbFFyRx9PN
	EoQ4m7RGzeK2x5rVdfEiI9iWcQwAcbglFKX0dSBPYj1gql3LGB3L6ntxyp6LYW+qAvhKPf1rzdF6n
	7x4zXsdY4AFYjnyXWxudh1KW81oxcBsBspos5bx4GSGJq5SoGUrgtF8xmy9KvVhP/hd02pSDU78Gn
	hpcYPh6kdi77Dkp/JMdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhyq1-0027ER-9s; Fri, 22 Apr 2022 19:21:05 +0000
Received: from mail-oa1-f53.google.com ([209.85.160.53])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhypy-0027Dh-Qz
 for linux-phy@lists.infradead.org; Fri, 22 Apr 2022 19:21:04 +0000
Received: by mail-oa1-f53.google.com with SMTP id
 586e51a60fabf-e2442907a1so9608073fac.8
 for <linux-phy@lists.infradead.org>; Fri, 22 Apr 2022 12:21:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hyQzhiKlkaWZxWD1O6avqa7n3KAQtOMS3NT5kofLOHw=;
 b=BBDzh0xVStNzeAzUTkZRow42VwuduIKZfGdZdpF5Gny9m9USsGznStxo1Km6jFZ7ni
 sxjdFaFLDqjcl6686wHWdEgOISOLKPDFhQqpZQK8oY0MQESXCqpcRrDvAajNGAlV360a
 AwZRmtt6A1OaInyh4/EeAOe0rm0Su0EXWU/7OLnP7Exzm2/m7d+w+bwmVFOWIJIcvOh0
 eO0pj+nE2dOjit7jk2LoZX1UB7BXqF/vnI0blqn8LOuI176O0evuj1iXOwEeXs500C/C
 E2lvrf9jhyPlzuxqvojBTmXK/Q4BgV61tLkIthHniV239hXiUcDhOwwAS3wyWPCLpgxx
 55mQ==
X-Gm-Message-State: AOAM5321neRWG852SQFy57FCC+PYyms1rLnPOYOEikmKzMQ3wB+S+/km
 pZCWXiL7NBxaPQMyJhx7IA==
X-Google-Smtp-Source: ABdhPJzraLj00H7QigmfLMJVZWg2j+VnUjRuG4VeBvp5ivyV/JjFzQ+GWydMwMXrzDgEtpfCtjpqcQ==
X-Received: by 2002:a05:6871:893:b0:e5:bfed:cf08 with SMTP id
 r19-20020a056871089300b000e5bfedcf08mr6776760oaq.25.1650655260843; 
 Fri, 22 Apr 2022 12:21:00 -0700 (PDT)
Received: from xps15.. (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
 by smtp.googlemail.com with ESMTPSA id
 i7-20020a9d68c7000000b006054aec0025sm1034946oto.69.2022.04.22.12.20.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Apr 2022 12:21:00 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: phy: marvell,
 armada-3700-utmi-host-phy: Fix incorrect compatible in example
Date: Fri, 22 Apr 2022 14:20:54 -0500
Message-Id: <20220422192054.2591093-1-robh@kernel.org>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220422_122102_904729_275C1C34 
X-CRM114-Status: UNSURE (   9.32  )
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

Fix the example using the incorrect compatible string.

Signed-off-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/phy/marvell,armada-3700-utmi-phy.yaml   | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/marvell,armada-3700-utmi-phy.yaml b/Documentation/devicetree/bindings/phy/marvell,armada-3700-utmi-phy.yaml
index 2437c3683326..632d61c07f40 100644
--- a/Documentation/devicetree/bindings/phy/marvell,armada-3700-utmi-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/marvell,armada-3700-utmi-phy.yaml
@@ -45,7 +45,7 @@ additionalProperties: false
 examples:
   - |
     usb2_utmi_host_phy: phy@5f000 {
-      compatible = "marvell,armada-3700-utmi-host-phy";
+      compatible = "marvell,a3700-utmi-host-phy";
       reg = <0x5f000 0x800>;
       marvell,usb-misc-reg = <&usb2_syscon>;
       #phy-cells = <0>;
-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
