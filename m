Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3C38CA1017
	for <linux-phy@archiver.kernel.org>; Sun,  7 Sep 2025 12:46:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WmrmANyJ1pswFHevcKXTLqFQrLgb1+xQq+R5b1yj1R0=; b=mtUryTvt07D6wP
	aqZ8zOPT5R1G98D9xnPXFSp2HJluFARvaiRxgiEKlbhjT1tX8gKIY7SaRruUU4oMSFO2bp9hGFiGj
	VkRCANNS26eVhw7oEh9UjMO/JrwL1FNVhnVQLmKvl/lVTUzD0oLTEy2fjwswnigr8c0D1DEn34dJR
	l9dWj6Ro58zaNQPTO6oU2T0Jsp+bPhh+q1x+tFa7MTCRa8JqKDbZ7DNqCxK1QDcGD/yCY/oFyAx2E
	07/wL+HF49c/P9+lDsyfT44QHX64m1QUFWH26q8a+sy8xFSuULAPMbwC2i5MmavqyhL7ZoACMLGm9
	tq6a1vscK7ccCQjKE8Gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvEnK-0000000B7TS-236D;
	Sun, 07 Sep 2025 12:46:58 +0000
Received: from out-189.mta1.migadu.com ([2001:41d0:203:375::bd])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvEkL-0000000B6lb-3eJN
	for linux-phy@lists.infradead.org;
	Sun, 07 Sep 2025 12:43:55 +0000
Date: Sun, 7 Sep 2025 08:43:32 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rosenzweig.io;
	s=key1; t=1757249020;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=rRX1+c0K0xHaPboS5O714TNd3MvbbW3BYzaa1w0TFKw=;
	b=sWRyJYqspCCh43pcmhdZ+q7B1qaT85R4FwTs7ICY9KbMZ66zTXf8PEwAj8seGt55M2eIf/
	i8UEoz/FwfChWkGzX4EOvu5imgzVyyyB9I89pmBQyoYgCNO/sPxnNzZb9Ty9kdgn5QWh/x
	s9qnQlhkvQAJoqt6I+Nco6830D3fInmg7zVkFijNbDRVSam/3pb9XhVOrd4OMUfIhbaGxc
	3BIRybMUzcAkQLyxXiNg9ryeL9ZIS+IWuCRsBfUeRE7hyuqI/HF/DSzEt83ybpinY2K9tb
	cHkcGRLQ/L0eLphJ/Fpp7G0fmTUZM8NUafE3g0cAnX8xB2J8KACyPub7Tvf07w==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Alyssa Anne Rosenzweig <alyssa@rosenzweig.io>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Sven Peter <sven@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Felipe Balbi <balbi@kernel.org>,
	Janne Grunau <j@jannau.net>, Neal Gompa <neal@gompa.dev>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Philipp Zabel <p.zabel@pengutronix.de>, Frank Li <Frank.Li@nxp.com>,
	Ran Wang <ran.wang_1@nxp.com>, Peter Chen <peter.chen@nxp.com>,
	linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, asahi@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
	Hector Martin <marcan@marcan.st>
Subject: Re: [PATCH v2 20/22] arm64: dts: apple: t8103: Add Apple Type-C PHY
 and dwc3 nodes
Message-ID: <aL199DK3XfkaelgH@fedora>
References: <20250906-atcphy-6-17-v2-0-52c348623ef6@kernel.org>
 <20250906-atcphy-6-17-v2-20-52c348623ef6@kernel.org>
 <20250907-zippy-auburn-koel-d6da32@kuoka>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250907-zippy-auburn-koel-d6da32@kuoka>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250907_054354_043124_3C60CD2F 
X-CRM114-Status: UNSURE (   7.13  )
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

> Please do not combine DTS patches in patchsets for Greg (e.g. USB). Greg
> expressed that many times, that he takes all or nothing, and DTS cannot
> go via driver branches/trees.

From the cover letter, emphasis mine:

> With the dwc3 glue driver this series can now also be merged independently
> once it's ready: Patches 1-4 can go through the dwc3 tree, 5-15 through
> tipd, 16-18 should go together through the phy tree, and I'll take the
> DTS changes through my tree. **If everyone's happy with the overall
> approach here I can also just send these as individual series**

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
