Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7DDDCA9EC5
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 08:10:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TAu45KbNnbEGXqfcTXap91i5M76XosIqq54PsGr+p2g=; b=SgNX5MavJgnvPv
	5UffVNknssBSqm+AQcekgHDjhbvfx61Pxk3p0MGBRte/nmYfwIuhsW/gHuflhp6QIJpzGx/+ql1Mp
	m1ZZhkZqbNNQyuhfx6rBjHFq6LJx3ojCsINL8LBwzYjGY4+8pQchxFAuCIi6lr8DAnmu/yDgUDGpU
	adwnDfhPbovaBvSKQh8kQ0llxfFVAkEpmNdUdvdYz9sTGEF1JvLuypFLo16VydHx8s2yoT3BSuw6E
	LVg+puoV47zclXGpw83Fn6TcdKpm5OgFo3QS7JQJAX10WejA85jPx+Ta3C9eSNhHQfCknMZovQsGB
	A/i03M/S36JMT/llLLvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGB73-00000009uBd-21m7;
	Mon, 12 Oct 2026 08:10:25 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGB72-00000009uBQ-3HEr
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 08:10:24 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 323F9404C4;
	Mon, 12 Oct 2026 08:10:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 16ADF1F0089B;
	Mon, 12 Oct 2026 08:10:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791792624;
	bh=QevQ6Tupp6Y5Q71lWFERf3zC8gS1eFojsFS0KOuxiFs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=dh36JnY3MrEljugYPHQ4jd4BIPja9n9k7ZVGK3AWn07KWrVB8fQM8wuvZWx32u3wE
	 +8goqAUnr/WuEsLk03lJ/U+/ip7dx2lKlGAMGapQ6c6wvIFu8/Kgg9dBqE3Q1JWujE
	 ZhSRokkDQ88G2LYd9tynhE8kPeexazdpEdpaxq+6Kci36AIOHLhwlDLLBz3qONQg7s
	 Gtyzct177n25BDDyCKYWsRR1hfW8bfZHTMHQ/vjFFr7c/u0UeiFCTVIx0bYMDrjhAZ
	 YjYKiaNqECpTwJR8Pgy3X/J5Xh5JvNqYyZX/+56C6Qmj1erbDlZuQQ9UPacl//Bnfr
	 Yfnyq0TB+Tzyw==
Date: Mon, 12 Oct 2026 13:40:13 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Christian Marangi <ansuelsmth@gmail.com>, Andy Gross <agross@codeaurora.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 05/10] phy: qcom-ipq806x-usb: fix the SS PHY
 TEST_POWERDOWN bit
Message-ID: <asyVtSA2MRJkwxXC@debian>
References: <20260810-msm8974-usb3-v1-0-1a47e1185524@oss.qualcomm.com>
 <20260810-msm8974-usb3-v1-5-1a47e1185524@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260810-msm8974-usb3-v1-5-1a47e1185524@oss.qualcomm.com>
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

T24gTW9uLCBBdWcgMTAsIDIwMjYgYXQgMDI6NDI6MzVQTSArMDMwMCwgRG1pdHJ5IEJhcnlzaGtv
diB3cm90ZToKPiBUaGUgU1MgUEhZIGV4aXQgc2VxdWVuY2UgdHJpZXMgdG8gcHV0IHRoZSBQSFkg
aW50byByZXRlbnRpb24gdmlhIHRoZQo+IFRFU1RfUE9XRVJET1dOIGJpdCBvZiBTU19QSFlfQ1RS
TCwgYnV0IGRlZmluZXMgdGhhdCBiaXQgYXMgQklUKDI3KS4gSW4KPiB0aGUgRFdDMyBRU0NSQVRD
SCBTU19QSFlfQ1RSTCByZWdpc3RlciBURVNUX1BPV0VSRE9XTiBpcyBiaXQgMjYgKHNlZQo+IHRo
ZSBkb3duc3RyZWFtIHBoeS1tc20tc3N1c2IgZHJpdmVyIGZvciB0aGUgc2FtZSBJUCBnZW5lcmF0
aW9uKSwgc28gdGhlCj4gc2VxdWVuY2UgcG9rZXMgYW4gdW5yZWxhdGVkIGJpdCBhbmQgdGhlIFBI
WSBpcyBuZXZlciBwb3dlcmVkIGRvd24uCj4gCj4gRml4ZXM6IGVmMTliMTE3YjgzNCAoInBoeTog
cXVhbGNvbW06IGFkZCBxY29tIGlwcTgwNnggZHdjIHVzYiBwaHkgZHJpdmVyIikKPiBBc3Npc3Rl
ZC1ieTogQ2xhdWRlOmNsYXVkZS1mYWJsZS01Cj4gU2lnbmVkLW9mZi1ieTogRG1pdHJ5IEJhcnlz
aGtvdiA8ZG1pdHJ5LmJhcnlzaGtvdkBvc3MucXVhbGNvbW0uY29tPgoKUmV2aWV3ZWQtYnk6IE1h
bml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQG9zcy5xdWFsY29tbS5j
b20+CgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a
4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
