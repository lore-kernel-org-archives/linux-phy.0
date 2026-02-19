Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9952C531CD
	for <linux-phy@archiver.kernel.org>; Thu, 19 Feb 2026 20:30:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5H88ahI9FQbtZvpEm0pewFnHfH4KK0EwRkGlrlz0Sx4=; b=uiCXe2cwgdegBv
	Udc0v5qv3GNwVbXmdn/DfL/fITl3JMSI669R4Dk6JcfAEzRVlOsDjRJVuGxFSSZivy1OpitcArzdc
	jjhRxg8gSXFL/jtHqUHDYS9+SZWY7xKoE3jILxFZXbxHw8a+APD+u2l+IL2P0DKAtTc4N7nSVF6gW
	VDUYTPCwGwQNVnqP8vfvBW4xg57X4oPB9/FlcbaGHr5nl7y1ooBMwUvWre4HfhATFBf1qTPiE7yci
	sYd28DGoJoGlkTrmPXTKUy4bYee/blZp41m0YgQiJePsiLBMqO9mhi+rkeOLPobSbos+aiVOK+7kl
	7o3LU7UlK5NOcmPar1pQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vtAfJ-0000000C1zs-0PEG;
	Thu, 19 Feb 2026 20:30:25 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vtAea-0000000C11u-0o1M
	for linux-phy@bombadil.infradead.org;
	Thu, 19 Feb 2026 20:29:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=wZU2t7XMmxTjBMCTcFIibISmzhE99RwBhwpcBK+4gxE=; b=CVds+MQFoyhY+I1csx0swN5ssx
	5uyHP8UFj7L2Jwjz3eLzU9G0+mtmn5Dt7c4btQ5My2JI5F6hPuJkkUWpmibI3kYIdPAFWRCHGJ7Fw
	vLgnCPvRNdDLuFTZQiWNL/08smpReEDQU5p9stcH9bYism7HMpagH3N8IIMfuVSNQohseoWDXkX1g
	rrC3Ox4XRFHQ+9EzZSajVDnDFgAqrL823wAF4zEITIrB113pjp3NvP5TFHrHvlHOO/ECPgwl/KwRp
	/BmUzLbJhIuz9t5wAFeybybNjGe569yqlVa+PDKs5a7AG9Lwbfi8TjwoawwnYceCiG+QLTFA2+DKO
	0kH28Mag==;
Received: from mgamail.intel.com ([198.175.65.19])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vtAeS-00000001qke-2hBQ
	for linux-phy@lists.infradead.org;
	Thu, 19 Feb 2026 20:29:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1771532972; x=1803068972;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=UVb/lJOOJhogtTXNOnHshhDE7UWpEz6L/FN2AVGtFbY=;
  b=LAVd/N3qmxuv4QxCTPNwlCo1O3u05svwTsRFNbAqiXgCSFMLX/+/QUTG
   Y3C0a7+DPQB+bCUWTI4k8Aku5Z3MtK17CvraqVbcxQBaKU19HHS9xETXs
   DosUKbPxnY0422zFEUt7NH5AJ0I8b68c0UeXg3iCccVkkOI/hzv+NehYK
   FSEk03qTwHQkWLv7dPwFdaKSdwGQJCerCFkcl4jmSxfiAGXBqF1DmuGha
   i+m8Z+kmElQAxPLUizmx/stLRLocPQWuemQmPvsu3IfhGSJnMcfKQak1W
   xArw83p1I2IiBIAibQ2e7yPiqSXeXSk1h/5X1/+1lTHQbJytWYgdBT5AR
   g==;
X-CSE-ConnectionGUID: 2hAaMyQVRzWN3mDeseXHHg==
X-CSE-MsgGUID: nybFKpAZTQ2jCLtyGbcuhw==
X-IronPort-AV: E=McAfee;i="6800,10657,11706"; a="72532338"
X-IronPort-AV: E=Sophos;i="6.21,300,1763452800"; 
   d="scan'208";a="72532338"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
  by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Feb 2026 12:29:15 -0800
X-CSE-ConnectionGUID: vaxD0SWIR6uxqp1QKPDpbQ==
X-CSE-MsgGUID: RT6iERWuQCahA0gz9TWgCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,300,1763452800"; 
   d="scan'208";a="219183208"
Received: from black.igk.intel.com ([10.91.253.5])
  by fmviesa005.fm.intel.com with ESMTP; 19 Feb 2026 12:29:13 -0800
Received: by black.igk.intel.com (Postfix, from userid 1003)
	id 076F89B; Thu, 19 Feb 2026 21:29:12 +0100 (CET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: linux-can@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: [PATCH v1 3/4] phy: phy-can-transceiver: Don't check for specific errors when parsing properties
Date: Thu, 19 Feb 2026 21:26:21 +0100
Message-ID: <20260219202910.2304440-4-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260219202910.2304440-1-andriy.shevchenko@linux.intel.com>
References: <20260219202910.2304440-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260219_202933_235325_6C70AAD6 
X-CRM114-Status: GOOD (  13.72  )
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

Instead of checking for the specific error codes (that can be considered
a layering violation to some extent) check for the property existence first
and then either parse it, or apply a default value.

With that, return an error when parsing of the existing property fails.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/phy/phy-can-transceiver.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/phy-can-transceiver.c b/drivers/phy/phy-can-transceiver.c
index dd08faf46837..ebce48ef217f 100644
--- a/drivers/phy/phy-can-transceiver.c
+++ b/drivers/phy/phy-can-transceiver.c
@@ -138,8 +138,9 @@ static int can_transceiver_phy_probe(struct platform_device *pdev)
 	struct gpio_desc *standby_gpio;
 	struct gpio_desc *enable_gpio;
 	struct mux_state *mux_state;
-	u32 max_bitrate = 0;
 	int err, i, num_ch = 1;
+	const char *propname;
+	u32 max_bitrate;
 
 	drvdata = device_get_match_data(dev);
 	if (drvdata->flags & CAN_TRANSCEIVER_DUAL_CH)
@@ -158,8 +159,15 @@ static int can_transceiver_phy_probe(struct platform_device *pdev)
 
 	priv->mux_state = mux_state;
 
-	err = device_property_read_u32(dev, "max-bitrate", &max_bitrate);
-	if ((err != -EINVAL) && !max_bitrate)
+	propname = "max-bitrate";
+	if (device_property_present(dev, propname)) {
+		err = device_property_read_u32(dev, "max-bitrate", &max_bitrate);
+		if (err)
+			return dev_err_probe(dev, err, "failed to parse %s\n", propname);
+	} else {
+		max_bitrate = 0;
+	}
+	if (!max_bitrate)
 		dev_warn(dev, "Invalid value for transceiver max bitrate. Ignoring bitrate limit\n");
 
 	for (i = 0; i < num_ch; i++) {
-- 
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
