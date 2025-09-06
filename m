Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21121CA1002
	for <linux-phy@archiver.kernel.org>; Sat,  6 Sep 2025 15:52:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iweUuhJmNmGkCMsOHmGwC4znumaOmCzYrbUj2UP+zVM=; b=0HyPpz+NCyGbOS
	ivdbxbFizOvGTILRMRsgs+3RVRbjuSdcZqGrusD67ijNoqGR+Eh+RJCq8EhU+nH1pHfzJPHJYD9/b
	PDlR53rgSLgCKLNhm81w1XverjrkTtNv8EpQURJPWHQx3Pj7+gb6aMqyo9vhLXGN0GSoYe02ub6dZ
	E8zr7FAVaFL4Yk79eSDeCnbpg4eCNEK0zOYmUoqzasNQk67a2UdH+Ngb2LPx/g0/ZPKFgVI9tCeW8
	Jn4+KXI0KvFNPmgcJhvUv+WQ8Kqll8qYa/rWUi80mBF8P9QUErN7K8Jeq65RDBiZIt5A+Z/yoEXt9
	VDP8EJlutsvu/liNSUBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuvDI-000000083uw-3Uhp;
	Sat, 06 Sep 2025 15:52:28 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuv4m-000000081ev-0gIY;
	Sat, 06 Sep 2025 15:43:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 93F05451D5;
	Sat,  6 Sep 2025 15:43:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 51894C4CEF9;
	Sat,  6 Sep 2025 15:43:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757173419;
	bh=Q8PS/CHcVU9sVoFvstzk8Tw0m//oeM0x0Mm79e4aeeQ=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=ZWA8+H3o5lxJeOz0/0ZNMqEOZ1XJgDCUXDnU+EyAZEJxThMe8qLib7FqcCigQyRv0
	 lsS4FIaDfDOhg8rzANlfvhOYvQEVaaDTj9EhlubhMT2LryGTLY9CVgR7lXhgtHmqD8
	 f1SFd7Ljc9bfNd5izXyE7qxcUyd6WLNYTbSLdZQink2CM3p6zGCDObQC/GuzWq7tSn
	 8BX2EUCyTPzELyzZxuMn0w6AgXaA05UislMxj4Suev5NL0ChH6zeNJedrsb4/bijVV
	 24UHW8rvQskhGIQsl2mf+AFNmGFA7yH8DviijBKxQWqsNUhQECQGG5gkmTE8cj4Ilr
	 xUz3AWZItKUBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3CFE2CA1002;
	Sat,  6 Sep 2025 15:43:39 +0000 (UTC)
From: Sven Peter <sven@kernel.org>
Date: Sat, 06 Sep 2025 15:43:15 +0000
Subject: [PATCH v2 02/22] usb: dwc3: dwc3_power_off_all_roothub_ports: Use
 ioremap_np when required
MIME-Version: 1.0
Message-Id: <20250906-atcphy-6-17-v2-2-52c348623ef6@kernel.org>
References: <20250906-atcphy-6-17-v2-0-52c348623ef6@kernel.org>
In-Reply-To: <20250906-atcphy-6-17-v2-0-52c348623ef6@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Felipe Balbi <balbi@kernel.org>, 
 Janne Grunau <j@jannau.net>, Alyssa Rosenzweig <alyssa@rosenzweig.io>, 
 Neal Gompa <neal@gompa.dev>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Frank Li <Frank.Li@nxp.com>, 
 Ran Wang <ran.wang_1@nxp.com>, Peter Chen <peter.chen@nxp.com>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, asahi@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org, 
 Sven Peter <sven@kernel.org>, stable@kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1330; i=sven@kernel.org;
 h=from:subject:message-id;
 bh=Q8PS/CHcVU9sVoFvstzk8Tw0m//oeM0x0Mm79e4aeeQ=;
 b=owGbwMvMwCHmIlirolUq95LxtFoSQ8aesNktsybFzVVaed8xlyc7weRDuT6/vvjjdfN7r61Rf
 JT+s3luRykLgxgHg6yYIsv2/famTx6+EVy66dJ7mDmsTCBDGLg4BWAia6Yw/I9KuJ5ww0JJXST2
 usDtWCcJRrW1egs23c5g0n/g/756HRvD/7I81oyq2YXTBMt2dE0x8olUj6iwvPPhfaeK+McVTpP
 ZeAE=
X-Developer-Key: i=sven@kernel.org; a=openpgp;
 fpr=A1E3E34A2B3C820DBC4955E5993B08092F131F93
X-Endpoint-Received: by B4 Relay for sven@kernel.org/default with
 auth_id=407
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250906_084340_253304_35C37F2D 
X-CRM114-Status: GOOD (  11.52  )
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

On Apple Silicon machines we can't use ioremap() / Device-nGnRE to map most
regions but must use ioremap_np() / Device-nGnRnE whenever
IORESOURCE_MEM_NONPOSTED is set. Make sure this is also done inside
dwc3_power_off_all_roothub_ports to prevent SErrors.

Fixes: 2d2a3349521d ("usb: dwc3: Add workaround for host mode VBUS glitch when boot")
Cc: stable@kernel.org
Signed-off-by: Sven Peter <sven@kernel.org>
---
 drivers/usb/dwc3/host.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/dwc3/host.c b/drivers/usb/dwc3/host.c
index 1c513bf8002ec9ec91b41bfd096cbd0da1dd2d2e..e77fd86d09cf0a36161c20ad3c83f10e67099775 100644
--- a/drivers/usb/dwc3/host.c
+++ b/drivers/usb/dwc3/host.c
@@ -37,7 +37,10 @@ static void dwc3_power_off_all_roothub_ports(struct dwc3 *dwc)
 
 	/* xhci regs are not mapped yet, do it temporarily here */
 	if (dwc->xhci_resources[0].start) {
-		xhci_regs = ioremap(dwc->xhci_resources[0].start, DWC3_XHCI_REGS_END);
+		if (dwc->xhci_resources[0].flags & IORESOURCE_MEM_NONPOSTED)
+			xhci_regs = ioremap_np(dwc->xhci_resources[0].start, DWC3_XHCI_REGS_END);
+		else
+			xhci_regs = ioremap(dwc->xhci_resources[0].start, DWC3_XHCI_REGS_END);
 		if (!xhci_regs) {
 			dev_err(dwc->dev, "Failed to ioremap xhci_regs\n");
 			return;

-- 
2.34.1



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
