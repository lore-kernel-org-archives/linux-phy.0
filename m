Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2884DC982FF
	for <linux-phy@archiver.kernel.org>; Tue, 22 Sep 2026 12:38:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5tM5+eOJVbghXE3z9USNkQ1uY2BaGjx++qurGsIkbnk=; b=O6MC2GWlqXnsnS
	R8kHzln2YFahY7+fSJ7bRNyJ/+k5FIU4FIsfEEF9/JuynyaAx01oXtDA5HyGNzQ19EOvGTClwY24O
	/xVNUn1JRUCcgqYgxlB2kQ4Ri7H4ZnlAa6KYI2dpibZQYsMuBJ1yu5ZsmiH2AN9WzVlxMpU0JCSXr
	rjbVoh8CHig+yGatrf87yXe2IPXPmMgxtqjT5FsKmlu3/YTCwzADQ6OqwqaHMSnUQnWT20nT0Dgnf
	PlrJXKmFsvqx5JlroJPeX5nX4oNNVJOcZyniDXpD65JH3lSPNKNSfS+WTkrtmc0En8N+44jGfFSZU
	X+3K/t7dGGSOrA0ksU0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8zl9-00000005KLo-3ZBU;
	Tue, 22 Sep 2026 12:38:07 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8zl7-00000005KLF-3wcm
	for linux-phy@lists.infradead.org;
	Tue, 22 Sep 2026 12:38:05 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 67A67437F8;
	Tue, 22 Sep 2026 12:38:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72D391F008A0;
	Tue, 22 Sep 2026 12:37:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790080685;
	bh=J8+ca+gcpuLslZLTovu0Gzm9+ZZc7DYd8Nmf5QdLI6A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=QunjsvmsZuEbdErQzbL2KnbidMZvxv7Kdr8MUmJ9yOICqRkOoZvEnZfPSsjl8ZSI5
	 3FbgUpG8pDmZTil+8Py5ZK2ZhxoBNhrICg+mV1YGtfHBma6BEhAsyXQvKqmYrBoihC
	 a8fdsFBAsvV1n/vcWSN7wH4T5eN/GOHOUBXFAHCIrhBARSH0fcQSmCkNq6YW9aPL5n
	 42WDBjx8nxl99BG5A6H/lS14Ua6AAQsSCgMCL5qVPFDMGmZxCXhtDvU7CZrfW7QXiq
	 bSlhmqip2n1wxBe0xmMrf9KRDfSTtnakaWcY7CqACBiLpqNbLRuSL0RSAboXPtzXeJ
	 e3rECrvz5iaLQ==
Date: Tue, 22 Sep 2026 14:37:53 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, Bryan O'Donoghue <bod@kernel.org>, 
	Loic Poulain <loic.poulain@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Felipe Balbi <balbi@ti.com>, linux-arm-msm@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, linux-phy@lists.infradead.org, 
	Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v20 4/6] phy: core: Add missing kerneldoc colon in two
 locations
Message-ID: <qjmvybdgxf7vpxhiqogzgwgaiz3klheil33lxohgrlbjaexm74@wvjxm6clvmfe>
References: <20260918-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v20-0-dc244e124e71@linaro.org>
 <20260918-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v20-4-dc244e124e71@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260918-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v20-4-dc244e124e71@linaro.org>
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

T24gRnJpLCBTZXAgMTgsIDIwMjYgYXQgMDI6NTY6MzlQTSArMDEwMCwgQnJ5YW4gTydEb25vZ2h1
ZSB3cm90ZToKPiBDb3JyZWN0IG1pc3NpbmcgY29sb24gYWZ0ZXIgUmV0dXJuIGluIGtlcm5lbCBk
b2MuCj4gCj4gU3VnZ2VzdGVkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4u
c2FkaGFzaXZhbUBvc3MucXVhbGNvbW0uY29tPgo+IFNpZ25lZC1vZmYtYnk6IEJyeWFuIE8nRG9u
b2dodWUgPGJyeWFuLm9kb25vZ2h1ZUBsaW5hcm8ub3JnPgoKUmV2aWV3ZWQtYnk6IE1hbml2YW5u
YW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQG9zcy5xdWFsY29tbS5jb20+Cgot
IE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K61
4K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
