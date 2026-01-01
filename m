Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7EB9EEE25E
	for <linux-phy@archiver.kernel.org>; Thu,  1 Jan 2026 20:40:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bIfTyR0IFxsEnqj94Sj3tw8uFYOExJvm/XlbmqlLIvg=; b=46zE4YErw9YnQ/
	9Fy7JIm5BWSiUI/NibXJlukZPvfZtHXOGRISkyT5PX29sr8ChztDAW4DrHqUFzjr/oq8dlMLskZah
	KXHfMkbt06NY5VpqHPDlaDkn73K0NaBXk4FDxHbFwqOvRunuRvooRlBLqM7qZWqObxsvAzmiqVitf
	uLxnOXJFosOqBVujXWBACdWhOni/8aks3wJpKnYu6ADfsTtD/E8uTBJJtzO7svchKXScVK7aC1+LD
	AU2NUvUWtiUw+On8E3lHMfYQ9CpA0CPY5Bw7+SSLckBlYJRfCUs3lKvue7a6soivo+Kk8QrTuy20Q
	iUOWlp3RtNWYA8rf3Prg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbPSl-00000007U7D-0F0Z;
	Thu, 01 Jan 2026 20:40:03 +0000
Received: from mout-p-102.mailbox.org ([80.241.56.152])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbPSg-00000007U5V-3akD;
	Thu, 01 Jan 2026 20:40:01 +0000
Received: from smtp202.mailbox.org (smtp202.mailbox.org [10.196.197.202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4dhzGM60DVz9tGX;
	Thu,  1 Jan 2026 21:39:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1767299995;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=IagLaPLeBzt460P4exNwADqzXUuvMCHLnSttbj4CQn8=;
	b=PcDnNQILSwCyE3ywemdSAbLOmVN/154gK68mTlkjZt1cUH3SaG47nXXk/BsLgsbP68kYSY
	pZ5owx3L4rDmMVXez8bdl2tSxDydXD7llczIJr2q1ykzSivaDLwyU2VoIog+t85/SKKbpR
	6JVyNAvszQTRmCTWOzwSZW3D3I6XD35G2JU5JFiDIO2k5WD3BIYzxKxvJCddIegqvclVBh
	ZcZY1utu4WoL8z4oI8ILvbmD8jEOOTqyWLustj8j5tY2kx525FQ+xmnSP2gl2cEX+UYnik
	6F/qj7HzmNX7Zldu8hunAYRy1Q9w39n0Nmnawa8HrD2c5WCv+NjWayAiY9QT2g==
From: Marek Vasut <marek.vasut+renesas@mailbox.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1767299993;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=IagLaPLeBzt460P4exNwADqzXUuvMCHLnSttbj4CQn8=;
	b=FgqD7rBFA+ggX0a/BwbtNZXYyFTfI2PakBQa2s5IXjiazNx/IGNBulIsSMx0B7LWyzgw6I
	iDXWoJ5PYxtE73xBL7AOtaOMsld6WVTlyACpawU701HHVs03PVR7EBijUBvASBmqEv5Q7S
	LL5W4Ig7IHbq41Y+b4I94okK8qdtXsCuS7kNoPC228XN67vc/vOt/rDhndQ6xKeIwfDZvM
	+i7tvgHzG8JwY5dRWpDhPZaC9TiN1hfCJ4Vs/6Uka4KtadoPxjRcBpm+cMHpvEyz+2jPXa
	ZhZM5laFshhLzJguYw1rkMP9Qdz/bR3kZavY0nvC9hXpwnP84cWcNcpBUiNbuQ==
To: linux-arm-kernel@lists.infradead.org
Cc: Marek Vasut <marek.vasut+renesas@mailbox.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH 01/11] dt-bindings: phy: renesas: usb3-phy: add r8a77990 support
Date: Thu,  1 Jan 2026 21:35:48 +0100
Message-ID: <20260101203938.159161-2-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20260101203938.159161-1-marek.vasut+renesas@mailbox.org>
References: <20260101203938.159161-1-marek.vasut+renesas@mailbox.org>
MIME-Version: 1.0
X-MBO-RS-META: hue1acap4etf344631etqcxx9ajb47hd
X-MBO-RS-ID: 46479d7265cfd5fed62
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260101_123959_033758_8E3C6EBF 
X-CRM114-Status: UNSURE (   9.57  )
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

This patch adds support for r8a77990 (R-Car E3).

Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>
---
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Magnus Damm <magnus.damm@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>
Cc: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: devicetree@vger.kernel.org
Cc: linux-phy@lists.infradead.org
Cc: linux-renesas-soc@vger.kernel.org
---
 Documentation/devicetree/bindings/phy/renesas,usb3-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/renesas,usb3-phy.yaml b/Documentation/devicetree/bindings/phy/renesas,usb3-phy.yaml
index fe57c5373d18a..d0dd2d19b1ddb 100644
--- a/Documentation/devicetree/bindings/phy/renesas,usb3-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/renesas,usb3-phy.yaml
@@ -20,6 +20,7 @@ properties:
           - renesas,r8a7796-usb3-phy  # R-Car M3-W
           - renesas,r8a77961-usb3-phy # R-Car M3-W+
           - renesas,r8a77965-usb3-phy # R-Car M3-N
+          - renesas,r8a77990-usb3-phy # R-Car E3
       - const: renesas,rcar-gen3-usb3-phy
 
   reg:
-- 
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
