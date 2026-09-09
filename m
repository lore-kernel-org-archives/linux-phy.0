Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94F54C79FAD
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 08:33:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=USA53yAt3z2RfX7L39L7VCo6ZxDmBjmqc47ZXSFqD1M=; b=pGu/l3kW5Zc/sA
	GAugD2C7XI+cJCB2HWqECLCJUwiZsW4iw57YIUMmOSXuuqde86rPxGplUP7oQX/mK11XreTde6HYd
	hbpzN1jLikrUgh+7ifeHxjjj6iGKJukyDYuG+Bl+HQc0u943tMemDlWIPuh0M78X25dfx7VLI5XJW
	qzAxfPOGSx71NY8CpWMjUBWy+ADG6tlDPhHcQ/QNO0fixE3dSzoojqIU4MXRViTrAmUqSwWSCHs6Y
	Q4M3T5VjrblyOfZQwhP2nAd3riBYp8nwF9n5N0MjtyrwpcPbhWNS54yzJcnlcmaBHYSPvq/pi38Zo
	VV0Vdm9A/9KoBF8VkLiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4Dkd-0000000B8TQ-1GFE;
	Wed, 09 Sep 2026 08:33:51 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4Dkb-0000000B8T2-2CLf;
	Wed, 09 Sep 2026 08:33:49 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 4A65840548;
	Wed,  9 Sep 2026 08:33:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A69E71F00A3A;
	Wed,  9 Sep 2026 08:33:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788942829;
	bh=mQsZ6aebHJQxMkqt08Wbinhh4q6wlMlL8C0i60RN04A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Fy4iarGhYC+fWRY4cqIOo4UckU2EIMXS943jL66BN3X8QLqdQmc+dpdmIZU3mx+dk
	 T8pBJ5C62jV4HmOpG+OzT00naRFeuSY7Dt0NFoGkrJLEcHNPk0kx8LGq0UVbEgLEcB
	 QeXk94WlbdJciaYl/0RKL767RGRa0jvIR1Bdw3Mdk3zGiuP3ByXJ7g35V+uWWZRQ2e
	 z/F4MCGVzPverSRjIrLLgnKo2+uRxovZkstb92Vg4jmWifuyQvlCa8bnhpDAgj0MWS
	 yCrOLtF8kMA9RgQuZJqK+zKNy2vWUIy9sxOXD6KWvc++TarkGv7Jz+lVE9EOAeIUNI
	 75C+c7kRhXn8A==
Date: Wed, 9 Sep 2026 10:33:40 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Ryan Chen <ryan_chen@aspeedtech.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@codeconstruct.com.au>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: phy: aspeed: Document AST2700 USB3.2
 PHY
Message-ID: <sb34uqn5egc36c3or6mbhjj3k2sgcdxkdwnrberrnqzn7oqrag@75ghpc6cjmrp>
References: <20260701-upstream_usb3phy-v3-0-00e12315b6f9@aspeedtech.com>
 <20260701-upstream_usb3phy-v3-1-00e12315b6f9@aspeedtech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260701-upstream_usb3phy-v3-1-00e12315b6f9@aspeedtech.com>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gV2VkLCBKdWwgMDEsIDIwMjYgYXQgMDI6NTg6MTdQTSArMDgwMCwgUnlhbiBDaGVuIHdyb3Rl
Ogo+IERvY3VtZW50IEFTVDI3MDAgVVNCMy4yIFBIWS4gVGhpcyBJUCBpcyBjb25uZWN0ZWQgYmV0
d2Vlbgo+IFVTQjMgY29udHJvbGxlciBhbmQgUEhZIG1vZHVsZS4KPiAKPiBSZXZpZXdlZC1ieTog
S3J6eXN6dG9mIEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBvc3MucXVhbGNvbW0uY29t
Pgo+IFNpZ25lZC1vZmYtYnk6IFJ5YW4gQ2hlbiA8cnlhbl9jaGVuQGFzcGVlZHRlY2guY29tPgoK
QWNrZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQG9z
cy5xdWFsY29tbS5jb20+CgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g
4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
