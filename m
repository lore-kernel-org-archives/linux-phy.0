Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 423B4CA0FED
	for <linux-phy@archiver.kernel.org>; Thu, 21 Aug 2025 19:54:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8GhOKogjAiMarRaahhj8eV8AjXslSkxZ7xb/sDpAF/Q=; b=rIum5W8gKYRoWV
	H+WnnKU92Jh6vU+EM6kQOuQt1s5RZqUOGwuprkiEXyfhU8u/6tZeqa8qFe6j806G1fWSabDXqJk7A
	YIWlNA06+4Er1r9HP4XP6KR5gZ+PzCJD8Jna1lyKCP80qzoppy9JYqInNqw6WycnuHeKgrCly1ZgS
	R1MkjEzX3ZmJ+U0pROwo6bXxQGCk6TUcPEERizkGTy0WGKPQkkCBDeHk/1I8fmDu/u0Lk3OUJMYl9
	ZZguM+dAYHkhMzNUWCR+dmtroOIo6E9+7XTsjRGIGJpGHtYcrYXB4iJaNj0QV64MBM7DL+vHxkS+v
	NlTIY+b/M92lzcNC5bRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upBMH-00000000LsR-04Cd;
	Thu, 21 Aug 2025 19:54:01 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up7OW-0000000HQWh-1zXL;
	Thu, 21 Aug 2025 15:40:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id F38A74195C;
	Thu, 21 Aug 2025 15:40:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 752C7C2BCB8;
	Thu, 21 Aug 2025 15:40:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755790803;
	bh=9jDoVQ1/z0pxLrrUKQFvuFlzCV4MYmq0sO+xpriK97c=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=LhLcjB6Reg3+JMHJNyU7msIaDCdB8DHH5hCnQOy77QlG0uVvelenxdBkXFCEgICoS
	 9Lwb8I3MCJxO00NIG91hUHC4Wvb5ap2z4mh79xKZ/Eg9lP5VvLXs8Vbtq1e+lP221X
	 E/rz0KhuMwr5LYr9gLBrofaFOlUh5ljPVPMWyDHoc+LHFI+WeDB3o+L/xbFT8CHczc
	 saMOpBDeyys99H71m6ML8F8gR6Bk7eyVOG37cT9pNrgCNfYnnG/Dg6m3CwRMzevehO
	 +oF7qY/bNNaEv7Ijgd6adK+eYHKTIbwhauqaRnIsW5HyWS5XARfxSKIyUO1iWwrRtd
	 6en06OiDEpVvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A6A8CA0FE1;
	Thu, 21 Aug 2025 15:40:03 +0000 (UTC)
From: Sven Peter <sven@kernel.org>
Date: Thu, 21 Aug 2025 15:38:59 +0000
Subject: [PATCH RFC 07/22] usb: dwc3: apple: Adjust vendor-specific
 registers during init
MIME-Version: 1.0
Message-Id: <20250821-atcphy-6-17-v1-7-172beda182b8@kernel.org>
References: <20250821-atcphy-6-17-v1-0-172beda182b8@kernel.org>
In-Reply-To: <20250821-atcphy-6-17-v1-0-172beda182b8@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Felipe Balbi <balbi@kernel.org>, 
 Janne Grunau <j@jannau.net>, Alyssa Rosenzweig <alyssa@rosenzweig.io>, 
 Neal Gompa <neal@gompa.dev>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, asahi@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org, 
 Sven Peter <sven@kernel.org>, Hector Martin <marcan@marcan.st>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2771; i=sven@kernel.org;
 h=from:subject:message-id;
 bh=Ikp6czp+quI9KYT9CWH9WFMemYOvMSa7Gr19hm1ueGQ=;
 b=owGbwMvMwCHmIlirolUq95LxtFoSQ8Zy2xVS+teCv0fd52+62njLwutKT41zZ+O9/bz75wlvL
 pgvVt/dUcrCIMbBICumyLJ9v73pk4dvBJduuvQeZg4rE8gQBi5OAZjI1B5GhjadZ9FrY78wRmp7
 NX++XLy80071lkXGivInUwP1uPbLRDL8T9LQdmuR5mrdu8jPKO/k4vYE4eU37k1duEylI+kKj+o
 NFgA=
X-Developer-Key: i=sven@kernel.org; a=openpgp;
 fpr=A1E3E34A2B3C820DBC4955E5993B08092F131F93
X-Endpoint-Received: by B4 Relay for sven@kernel.org/default with
 auth_id=407
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_084004_571769_DC6CD472 
X-CRM114-Status: GOOD (  11.31  )
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

From: Hector Martin <marcan@marcan.st>

When tracing Apple's dwc3 driver under our hypervisor and comparing its
MMIO access with their kernel debug output these vendor-specific
registers have been identified. We don't know exactly what these do
or why they are required but without changing these parameters sometimes
USB3 devices don't work or take an additional 5 seconds to be recognized.

Signed-off-by: Hector Martin <marcan@marcan.st>
Co-developed-by: Sven Peter <sven@kernel.org>
Signed-off-by: Sven Peter <sven@kernel.org>
---
 drivers/usb/dwc3/core.c | 17 +++++++++++++++++
 drivers/usb/dwc3/core.h | 18 ++++++++++++++++++
 2 files changed, 35 insertions(+)

diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
index f8013ba2bdc22fa5e719df0841b12b84d9465b62..e018e80778cf39a9981d438c7e54534b26cddf63 100644
--- a/drivers/usb/dwc3/core.c
+++ b/drivers/usb/dwc3/core.c
@@ -1366,6 +1366,23 @@ static int dwc3_core_init(struct dwc3 *dwc)
 	 */
 	dwc3_writel(dwc->regs, DWC3_GUID, LINUX_VERSION_CODE);
 
+	/* Apply Apple quirks */
+	if (of_device_is_compatible(dwc->dev->of_node, "apple,t8103-dwc3")) {
+		dwc3_writel(dwc->regs,
+			    APPLE_DWC3_CIO_LFPS_OFFSET,
+			    APPLE_DWC3_CIO_LFPS_OFFSET_VALUE);
+		dwc3_writel(dwc->regs,
+			    APPLE_DWC3_CIO_BW_NGT_OFFSET,
+			    APPLE_DWC3_CIO_BW_NGT_OFFSET_VALUE);
+
+		u32 link_timer = dwc3_readl(dwc->regs, APPLE_DWC3_CIO_LINK_TIMER);
+
+		link_timer &= ~APPLE_DWC3_CIO_PENDING_HP_TIMER;
+		link_timer |= FIELD_PREP(APPLE_DWC3_CIO_PENDING_HP_TIMER,
+					 APPLE_DWC3_CIO_PENDING_HP_TIMER_VALUE);
+		dwc3_writel(dwc->regs, APPLE_DWC3_CIO_LINK_TIMER, link_timer);
+	}
+
 	ret = dwc3_phy_setup(dwc);
 	if (ret)
 		return ret;
diff --git a/drivers/usb/dwc3/core.h b/drivers/usb/dwc3/core.h
index 98e748cc348dfd9de1962c93fcf9f6a6690c2388..1caa46ca8b2ffb74dd3e58b174122e8f8216dd48 100644
--- a/drivers/usb/dwc3/core.h
+++ b/drivers/usb/dwc3/core.h
@@ -181,6 +181,24 @@
 
 #define DWC3_LLUCTL(n)		(0xd024 + ((n) * 0x80))
 
+/*
+ * Apple Silicon dwc3 vendor-specific registers
+ *
+ * These registers were identified by tracing XNU's memory access patterns
+ * and correlating them with debug output over serial to determine their names.
+ * We don't exactly know what these do but without these USB3 devices sometimes
+ * don't work.
+ */
+#define APPLE_DWC3_CIO_LFPS_OFFSET 0xcd38
+#define APPLE_DWC3_CIO_LFPS_OFFSET_VALUE 0xf800f80
+
+#define APPLE_DWC3_CIO_BW_NGT_OFFSET 0xcd3c
+#define APPLE_DWC3_CIO_BW_NGT_OFFSET_VALUE 0xfc00fc0
+
+#define APPLE_DWC3_CIO_LINK_TIMER 0xcd40
+#define APPLE_DWC3_CIO_PENDING_HP_TIMER GENMASK(23, 16)
+#define APPLE_DWC3_CIO_PENDING_HP_TIMER_VALUE 0x14
+
 /* Bit fields */
 
 /* Global SoC Bus Configuration INCRx Register 0 */

-- 
2.34.1



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
