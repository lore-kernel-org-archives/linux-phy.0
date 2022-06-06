Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E91E1C433EF
	for <linux-phy@archiver.kernel.org>; Mon,  6 Jun 2022 15:29:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jOfMUwbtTNsDXaQ2y4onphPwhvd6IGUUcr8izX04Rgo=; b=mLkAAN3pqS9Sw3
	+zlkrbo883d1hh11lU/cQSqU9qIW/Wg3gAVOY7PKzSIew9M/YcFqlbHaOirCH7Co8dnuOqD4diHGl
	k2k1nD6ukNuWLqVQNuv2fEVkxCo2X5X4sBIc+PJst/MIXm+YR7JukDoW5a1/Zp7Eh1SOfbfRiawiZ
	1L/0l/KTAcs6wgFLic/TKN/E+nMQqIoW1/j5xYbZ5RjXeewQhzdLYw6un8nbhE6EmCVbyBx/GpVV+
	A20pYtWuVvyDs2+VruTbtLeby+Pupso6KQ391nDEo/z6E124w/MGacwwwB4KNn7zGDoUmBSqzw8tF
	CEhE+P2Mt1S+RUsWeW2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyEfe-001orM-24; Mon, 06 Jun 2022 15:29:34 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyEc3-001msK-Lq
	for linux-phy@lists.infradead.org; Mon, 06 Jun 2022 15:25:57 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1B9516154D;
	Mon,  6 Jun 2022 15:25:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F13A5C341D1;
	Mon,  6 Jun 2022 15:25:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1654529149;
	bh=QMD8XSxVTt5rMt1QS7PnIMdO/7mrai1uKEVRc/zSrng=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Pkhb51qqLs419Rmod7Jvmn+fG8oFjkUt34SQDdy8Lp8zxyEz2PVawgQmePW5czFn6
	 L46wfDpGrSQqegZX+WWdcVTbXXOnik+jXuEEEuJmcGHalj5q2p2IS969zhjBnrcPB1
	 qMrFwiJ7X1IUknEMW2363ri672vyF5fK8ot5DdD0uJ9WZPgrrfOq+IFyJmG/XzJHZS
	 CKwurPxtDZ9WKFqwqV827zh50nGPXFr2I38RZfhGKzAsNBUChqNu7s8zvBjk0NeKZm
	 awaa9WafXrNRUHmG/CL0sPIFIhD9Gb5TrG4UIn7onmV2QYupi1i2TJCMGEbYGFHVPL
	 QbVFhV6u+FIVg==
Received: from mchehab by mail.kernel.org with local (Exim 4.95)
	(envelope-from <mchehab@kernel.org>)
	id 1nyEby-0012Oz-3f;
	Mon, 06 Jun 2022 16:25:46 +0100
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: Linux Doc Mailing List <linux-doc@vger.kernel.org>,
	Jonathan Corbet <corbet@lwn.net>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	"Mauro Carvalho Chehab" <mchehab+huawei@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org
Subject: [PATCH 04/23] dt-bindings: reset: update st,stih407-powerdown.yaml references
Date: Mon,  6 Jun 2022 16:25:26 +0100
Message-Id: <debdd5a9a1bfa0cf1c7e9c45da32edbc2ac2d10a.1654529011.git.mchehab@kernel.org>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <cover.1654529011.git.mchehab@kernel.org>
References: <cover.1654529011.git.mchehab@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220606_082551_884882_BEE64B1D 
X-CRM114-Status: GOOD (  14.06  )
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

Changeset 2ca065dc9468 ("dt-bindings: reset: st,sti-powerdown: Convert to yaml")
renamed: Documentation/devicetree/bindings/reset/st,sti-powerdown.txt
to: Documentation/devicetree/bindings/reset/st,stih407-powerdown.yaml.

Update the cross-references accordingly.

Fixes: 2ca065dc9468 ("dt-bindings: reset: st,sti-powerdown: Convert to yaml")
Signed-off-by: Mauro Carvalho Chehab <mchehab@kernel.org>
---

To avoid mailbombing on a large number of people, only mailing lists were C/C on the cover.
See [PATCH 00/23] at: https://lore.kernel.org/all/cover.1654529011.git.mchehab@kernel.org/

 Documentation/devicetree/bindings/phy/phy-stih407-usb.txt | 2 +-
 Documentation/devicetree/bindings/usb/dwc3-st.txt         | 2 +-
 Documentation/devicetree/bindings/usb/ehci-st.txt         | 2 +-
 Documentation/devicetree/bindings/usb/ohci-st.txt         | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/phy-stih407-usb.txt b/Documentation/devicetree/bindings/phy/phy-stih407-usb.txt
index de6a706abcdb..35f03df00130 100644
--- a/Documentation/devicetree/bindings/phy/phy-stih407-usb.txt
+++ b/Documentation/devicetree/bindings/phy/phy-stih407-usb.txt
@@ -9,7 +9,7 @@ Required properties:
 - resets		: list of phandle and reset specifier pairs. There should be two entries, one
 			  for the whole phy and one for the port
 - reset-names		: list of reset signal names. Should be "global" and "port"
-See: Documentation/devicetree/bindings/reset/st,sti-powerdown.txt
+See: Documentation/devicetree/bindings/reset/st,stih407-powerdown.yaml
 See: Documentation/devicetree/bindings/reset/reset.txt
 
 Example:
diff --git a/Documentation/devicetree/bindings/usb/dwc3-st.txt b/Documentation/devicetree/bindings/usb/dwc3-st.txt
index bf73de0d5b4a..4aa368447b1e 100644
--- a/Documentation/devicetree/bindings/usb/dwc3-st.txt
+++ b/Documentation/devicetree/bindings/usb/dwc3-st.txt
@@ -13,7 +13,7 @@ Required properties:
  - resets	: list of phandle and reset specifier pairs. There should be two entries, one
 		  for the powerdown and softreset lines of the usb3 IP
  - reset-names	: list of reset signal names. Names should be "powerdown" and "softreset"
-See: Documentation/devicetree/bindings/reset/st,sti-powerdown.txt
+See: Documentation/devicetree/bindings/reset/st,stih407-powerdown.yaml
 See: Documentation/devicetree/bindings/reset/reset.txt
 
  - #address-cells, #size-cells : should be '1' if the device has sub-nodes
diff --git a/Documentation/devicetree/bindings/usb/ehci-st.txt b/Documentation/devicetree/bindings/usb/ehci-st.txt
index 065c91d955ad..d6f2bdee20fc 100644
--- a/Documentation/devicetree/bindings/usb/ehci-st.txt
+++ b/Documentation/devicetree/bindings/usb/ehci-st.txt
@@ -17,7 +17,7 @@ See: Documentation/devicetree/bindings/clock/clock-bindings.txt
  - resets		: phandle + reset specifier pairs to the powerdown and softreset lines
 			  of the USB IP
  - reset-names		: should be "power" and "softreset"
-See: Documentation/devicetree/bindings/reset/st,sti-powerdown.txt
+See: Documentation/devicetree/bindings/reset/st,stih407-powerdown.yaml
 See: Documentation/devicetree/bindings/reset/reset.txt
 
 Example:
diff --git a/Documentation/devicetree/bindings/usb/ohci-st.txt b/Documentation/devicetree/bindings/usb/ohci-st.txt
index 44c998c16f85..1c735573abc0 100644
--- a/Documentation/devicetree/bindings/usb/ohci-st.txt
+++ b/Documentation/devicetree/bindings/usb/ohci-st.txt
@@ -15,7 +15,7 @@ See: Documentation/devicetree/bindings/clock/clock-bindings.txt
 
  - resets		: phandle to the powerdown and reset controller for the USB IP
  - reset-names		: should be "power" and "softreset".
-See: Documentation/devicetree/bindings/reset/st,sti-powerdown.txt
+See: Documentation/devicetree/bindings/reset/st,stih407-powerdown.yaml
 See: Documentation/devicetree/bindings/reset/reset.txt
 
 Example:
-- 
2.36.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
