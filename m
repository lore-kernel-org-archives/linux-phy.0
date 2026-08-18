Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DA49C5DF74
	for <linux-phy@archiver.kernel.org>; Tue, 18 Aug 2026 14:30:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FHViS3KV0TAedx0Y9qKh1d+rm3pSj78AKE7AxYhnyT4=; b=O1GmKk5qAcE2GX
	uLCRjaQUP1ZsJPlLXlM7R3H3JTdStptcT/ZjuzCjJQ11HV/rx7MAfeekKaRsqYEmbrv399BPvQ0p9
	gL/02aywDHLU+ccT1dJWm0A4SSTrDzDyhxeLQhKYrsP+p1xOF3Z/+mfBaKZXtlvATNYwxOO400aXi
	CyvAN7kkaOODfHNIB4DLeDdj2mqErGFAHzUMK1YTxkIyIUN5+g5xbpy2dKQh49DxFfmxsZDUq81oZ
	0DuSbjYdxlSWNXCs5C4MODH019WrPy18kTj8H7Ssg+xrC6owBgmdbOO1BAJ3DmxP5Pzm3cUDJ+Exs
	th5/HsHePMg5u9/BldtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwKpX-00000008Axp-0xht;
	Tue, 18 Aug 2026 14:30:19 +0000
Received: from mail-pg1-x52d.google.com ([2607:f8b0:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwKpV-00000008Aw6-14oh
	for linux-phy@lists.infradead.org;
	Tue, 18 Aug 2026 14:30:18 +0000
Received: by mail-pg1-x52d.google.com with SMTP id 41be03b00d2f7-cbe4592c193so268734a12.3
        for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 07:30:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787063416; x=1787668216; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Shib2rntu2e/Z5UR8HQqW2K03GJsazba3W0OpgQm6G4=;
        b=G/aaeM9iSjzYOvrClCgL+ln/qVfU3MKpapiPBRjdZJlGuOY+7k/Sl24e3K/7W+FxFg
         ooDSn2kVH3m9iWSmjnAGtsgMOjICkxDVtQLwdg8MWZpmtLfg4KSW9Qi34/9CmiiddY7V
         WEC9LDwvsuY37BDN8RwqPi6Lpf5NQYilTsgsv6PVcWGLZ6hT2hEihQetETPiy3EVGIdT
         tZtikvliSKZQGKpCOXM4dg9xB6sXlf0UqkjhEBhKnIAXVbuiBIaq7ymztr8z5LjOr3fF
         4WXNAfUjzYlLqOSCt7B9HOowlo98ixOCMAOzC2qR9GgmoGrDfQBi2tsxTcsqNtSGkdV2
         T+SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787063416; x=1787668216;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Shib2rntu2e/Z5UR8HQqW2K03GJsazba3W0OpgQm6G4=;
        b=XTIRoczfIMP4R2fByHsLE6S8+nTx3gvfBKX9u4nCyE8PKMuyLHiFvdnw//ud5cA0vc
         UCKCP+tJQBUg3PvjmkRiOzeW/asjHzerxHZtDlRlrJXPtARXxfFCCZaHysi9RhwY297e
         fp2Q55b+2WIFnxWO7jSAtyv/EzZ2/vthnuiIX0eWZ25Jqb5nI7V9fXY5oE1ACTS6yk9c
         LmDp7KcR7kGQs7jgtmekJteX2cshuNepDorOT+wIZ4IXi1HRTnlp4DgEV7qxvO1DVjxY
         PxC4tQWpUAFoondUGiXF3x8k2TeXK5G0c4TB9Dl1gsgsBptfFS8kQRuHIhf4nbQrp+lt
         JGQw==
X-Forwarded-Encrypted: i=1; AHgh+RqVlsHgonM9H4SLb39G973JhAB5b7xmitNwf7dw6YIrb0+6s4wxF+ZkliRPvRhfLyPAgze+QxWtD6w=@lists.infradead.org
X-Gm-Message-State: AOJu0YxQYn+tjTK0AXTh8cTS4TO3wyXqTvtopOpBmYnUpai7EXGy0bFe
	s8ctjP+EUvpYMzluRV6gDF70GuOsTtjPDXzJwM1VlAdtA/flPM3v1Oy/
X-Gm-Gg: AR+sD12n4BU72lioqmq9cekD5w3xSbivaJtUGT18rkD7IWZCAzWiEZSsPugVU7flZNe
	UWxp1u37+rh+6+YKrNCtP9lXOYty2iunSu0Gm2JvYANmBSgp+8whaumq1hY12lcG3V0OAthbiQk
	F4/Ge+zr9G5RWlRKTlM0syDZyE5/wpg9l8mOFkCEp4Q00ueGgAbntC36ehcx+M1M6G3bNOazje5
	8TGZ5x7zSuwp2chqRbbfeI1azwKyiXdS8FuiVwSJRwodh9TyiBMmn/GXi3GOFH2StSduzW77Jw1
	vRKMt1EW5C3twZLofUyvsmrF+S46HMDjS6lDot/5Y4NEs6JpyhQTWDDUIBCTkSx3IkpzhfUN9o/
	oUBbyrEUyZleIWh9mm6kDo7oFt4Ct/2BKz4mLO3Gqu661mqRz6Qfgp7jIzZaMcE+QR3gn3lsZYh
	vRJdN5S0N1nNG/EcYWmVHL2L08gDsv5qFjz4szTVVwe80jfQ11/k73OJ3jaSWSbtzYpbPK31lj
X-Received: by 2002:a17:903:3847:b0:2cc:f4d4:29a0 with SMTP id d9443c01a7336-2d3b0c9938cmr295090215ad.3.1787063416121;
        Tue, 18 Aug 2026 07:30:16 -0700 (PDT)
Received: from [10.90.163.252] ([2409:40c2:501a:6e15:dc3f:c23f:e55e:d03d])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-327b43d488dsm9043527eec.29.2026.08.18.07.29.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Aug 2026 07:30:15 -0700 (PDT)
From: Bhargav Joshi <j.bhargav.u@gmail.com>
Date: Tue, 18 Aug 2026 19:58:45 +0530
Subject: [PATCH v2 3/7] ARM: dts: ti: am335x: Fix redundant interrupts
 property in USB nodes
MIME-Version: 1.0
Message-Id: <20260818-ti-am33-usb-v2-3-66fd44d66824@gmail.com>
References: <20260818-ti-am33-usb-v2-0-66fd44d66824@gmail.com>
In-Reply-To: <20260818-ti-am33-usb-v2-0-66fd44d66824@gmail.com>
To: Vignesh Raghavendra <vigneshr@ti.com>, Vinod Koul <vkoul@kernel.org>, 
 Frank Li <Frank.Li@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Andrzej Siewior <bigeasy@linutronix.de>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, 
 Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, 
 Ravi B <ravibabu@ti.com>, Kumar Gupta <ajay.gupta@ti.com>, 
 Sergei Shtylyov <sshtylyov@ru.mvista.com>
Cc: dmaengine@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-omap@vger.kernel.org, 
 goledhruva@gmail.com, m-chawdhry@ti.com, daniel.baluta@gmail.com, 
 simona.toaca@nxp.com, j.bhargav.u@gmail.com
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787063337; l=2514;
 i=j.bhargav.u@gmail.com; h=from:subject:message-id;
 bh=2zGPgT53nMyKtGN4bplmgmbVd+Cg1WvfyXIJuEqowq8=;
 b=U44CBfLq+mbjkIIztglKnpvX2Szjq/KUNnCaHfRupVE20B/nuOBZ8VDQDiniFFo7nOR6ojcl5
 a0qkQIOtaOKCZggjOaSYj5Lei+aZaYsAaMkpyryBk3CoRhEFxzruH3X
X-Developer-Key: i=j.bhargav.u@gmail.com; a=ed25519;
 pk=IqNDwUZKECEA+n8wXctFLBbYL9NhFstZNbOznm/nX1k=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260818_073017_303710_92B3B41F 
X-CRM114-Status: GOOD (  10.69  )
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

The am33xx.dtsi defines a single interrupts property for the MUSB nodes.
Several board-level files override the usb0 node to use
interrupts-extended instead to include vbus interrupt.

Since both interrupts and interrupts-extended cannot be used
simultaneously, Add /delete-property/ interrupts to the overriding
nodes to resolve the schema warnings.

Signed-off-by: Bhargav Joshi <j.bhargav.u@gmail.com>
---
 arch/arm/boot/dts/ti/omap/am335x-bone-common.dtsi   | 1 +
 arch/arm/boot/dts/ti/omap/am335x-boneblue.dts       | 1 +
 arch/arm/boot/dts/ti/omap/am335x-bonegreen-eco.dts  | 1 +
 arch/arm/boot/dts/ti/omap/am335x-osd3358-sm-red.dts | 1 +
 4 files changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/ti/omap/am335x-bone-common.dtsi b/arch/arm/boot/dts/ti/omap/am335x-bone-common.dtsi
index 1d83fc116b66..c436edd98e10 100644
--- a/arch/arm/boot/dts/ti/omap/am335x-bone-common.dtsi
+++ b/arch/arm/boot/dts/ti/omap/am335x-bone-common.dtsi
@@ -197,6 +197,7 @@ &uart0 {
 
 &usb0 {
 	dr_mode = "peripheral";
+	/delete-property/ interrupts;
 	interrupts-extended = <&intc 18 &tps 0>;
 	interrupt-names = "mc", "vbus";
 };
diff --git a/arch/arm/boot/dts/ti/omap/am335x-boneblue.dts b/arch/arm/boot/dts/ti/omap/am335x-boneblue.dts
index d430f0bef165..7da2fb782ab2 100644
--- a/arch/arm/boot/dts/ti/omap/am335x-boneblue.dts
+++ b/arch/arm/boot/dts/ti/omap/am335x-boneblue.dts
@@ -304,6 +304,7 @@ &uart5 {
 
 &usb0 {
 	dr_mode = "peripheral";
+	/delete-property/ interrupts;
 	interrupts-extended = <&intc 18 &tps 0>;
 	interrupt-names = "mc", "vbus";
 };
diff --git a/arch/arm/boot/dts/ti/omap/am335x-bonegreen-eco.dts b/arch/arm/boot/dts/ti/omap/am335x-bonegreen-eco.dts
index d21118cdb6c2..6bf388c4abbf 100644
--- a/arch/arm/boot/dts/ti/omap/am335x-bonegreen-eco.dts
+++ b/arch/arm/boot/dts/ti/omap/am335x-bonegreen-eco.dts
@@ -35,6 +35,7 @@ v3v3: regulator-v3v3 {
 };
 
 &usb0 {
+	/delete-property/ interrupts;
 	interrupts-extended = <&intc 18>;
 	interrupt-names = "mc";
 };
diff --git a/arch/arm/boot/dts/ti/omap/am335x-osd3358-sm-red.dts b/arch/arm/boot/dts/ti/omap/am335x-osd3358-sm-red.dts
index 23caaaabf351..068ea23bbc0c 100644
--- a/arch/arm/boot/dts/ti/omap/am335x-osd3358-sm-red.dts
+++ b/arch/arm/boot/dts/ti/omap/am335x-osd3358-sm-red.dts
@@ -376,6 +376,7 @@ &uart0 {
 
 &usb0 {
 	dr_mode = "peripheral";
+	/delete-property/ interrupts;
 	interrupts-extended = <&intc 18 &tps 0>;
 	interrupt-names = "mc", "vbus";
 };

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
