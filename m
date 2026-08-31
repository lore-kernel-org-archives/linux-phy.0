Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E59B4C61DE2
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 08:47:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VXcIpkFksSFwrWKgUrDP1cqYvVtgxndIRPFostr+gao=; b=vlYpXCpM9yGgpl
	l4ShVd6zYM7CsKqODx8/ip7GNNdH9uGZ2dPven+FyWg6KuemYMax5l8Z6feH6UIvChqTD+OJxtA+g
	2CCvHYDisGv8oDuszofDE/kgnPATcCOP+9vmxy+GTM/TYaWqQpLO33QUq4dQAmSBs0KzxiRlclVDt
	8hH53pUyY7ROY7IelRyQKP08TG6DVb+HRF+ArGsGNLI+fL65rUmvqEeUDc/c8K+dUulmjdFvDGPC5
	yQwaUAzGAtHX3zfX6WnnHa+5I78SZnV5Oe+puwPnZ1HlHucI69kse8m2tHVZr2FIC/a01H5Vo1NOV
	wUWxGLh6lUu6s6HARnsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0xft-00000008wF1-2djz;
	Mon, 31 Aug 2026 08:47:29 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0xfs-00000008wEa-1pJM;
	Mon, 31 Aug 2026 08:47:28 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id D03C841983;
	Mon, 31 Aug 2026 08:47:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B9CBC1F000E9;
	Mon, 31 Aug 2026 08:47:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788166047;
	bh=Pk4ErvGmQrZOLIOGBljUuFGpUWFpUDhlnCt2Mj3RrMo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=BIEFSvuzZBvTfLfVp+Vn+FHw9YzHUiaLSCr0qYW0HW0RTzuDXNHNewgiSgSY7+N86
	 TeSAUngT5um33hCuSvsZHzP6ZjGg7sbw3J4bkoujboHQlFlDtt3vWo51Q1q99T4YUG
	 i6GNrZIsHJ8EeUqkz0SbLR0sSlKdCMpuiq9J/+EiZZ//Vhjkq2ZRlMKVz20ehkWlmt
	 HeT7Pf0bHeWrVCvee6UdZ6JXq9RlDMTeG9bcQODpwq7yxHLrTG3VDNpZnqVOWP55XK
	 RGiy3YiNC2aTplQaKe3BiCpC+SH3W+yF8YzOXWKYS2/s1AdikKtyTU843iIZKLZ6VW
	 cl394f5bEgf7g==
Date: Mon, 31 Aug 2026 10:47:23 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Marek Vasut <marex@nabladev.com>
Cc: linux-phy@lists.infradead.org, Pankaj Dev <pankaj.dev@st.com>, 
	Rahul Kumar <rahul.kumar05@st.com>, Fabrice Gasnier <fabrice.gasnier@foss.st.com>, 
	=?utf-8?Q?Cl=C3=A9ment?= Le Goffic <clement.legoffic@foss.st.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Christian Bruel <christian.bruel@foss.st.com>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Patrice Chotard <patrice.chotard@foss.st.com>, Rob Herring <robh@kernel.org>, Rosen Penev <rosenp@gmail.com>, 
	Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org, kernel@dh-electronics.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [PATCH v4 1/2] dt-bindings: phy: Document ST STM32MP25
 USB2-FEMTO PHY
Message-ID: <20260831-festive-gerbil-of-prestige-2fbeeb@quoll>
References: <20260828150739.174460-1-marex@nabladev.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260828150739.174460-1-marex@nabladev.com>
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

T24gRnJpLCBBdWcgMjgsIDIwMjYgYXQgMDU6MDY6NTZQTSArMDIwMCwgTWFyZWsgVmFzdXQgd3Jv
dGU6Cj4gRnJvbTogUGFua2FqIERldiA8cGFua2FqLmRldkBzdC5jb20+Cj4gCj4gRG9jdW1lbnQg
VVNCMiBQSFkgZm9yIFNUTTMyTVAyNSBVU0IyIGNvbnRyb2xsZXJzLCB3aGljaCBpbmNsdWRlcyB0
aGUKPiBVU0IyLjAgaG9zdC1vbmx5IGNvbnRyb2xsZXIgYW5kIFVTQiAyLjAgcGFydCBvZiB0aGUg
RFdDMyBjb250cm9sbGVyLgo+IFR3byBzdWNoIFBIWXMgaW4gdG90YWwgYXJlIHByZXNlbnQgaW4g
U1RNMzJNUDI1IFNvQywgdGhleSBib3RoIGFyZQo+IHNsaWdodGx5IGRpZmZlcmVudCwgdGhlcmVm
b3JlIHRoZXkgdXNlIGRpZmZlcmVudCBjb21wYXRpYmxlIHN0cmluZwo+IHRvIGRpc2Nlcm4gdGhl
bS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBQYW5rYWogRGV2IDxwYW5rYWouZGV2QHN0LmNvbT4KPiBD
by1kZXZlbG9wZWQtYnk6IFJhaHVsIEt1bWFyIDxyYWh1bC5rdW1hcjA1QHN0LmNvbT4KPiBTaWdu
ZWQtb2ZmLWJ5OiBSYWh1bCBLdW1hciA8cmFodWwua3VtYXIwNUBzdC5jb20+Cj4gQ28tZGV2ZWxv
cGVkLWJ5OiBGYWJyaWNlIEdhc25pZXIgPGZhYnJpY2UuZ2FzbmllckBmb3NzLnN0LmNvbT4KPiBT
aWduZWQtb2ZmLWJ5OiBGYWJyaWNlIEdhc25pZXIgPGZhYnJpY2UuZ2FzbmllckBmb3NzLnN0LmNv
bT4KPiBDby1kZXZlbG9wZWQtYnk6IENsw6ltZW50IExlIEdvZmZpYyA8Y2xlbWVudC5sZWdvZmZp
Y0Bmb3NzLnN0LmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBMZSBHb2ZmaWMgPGNsZW1l
bnQubGVnb2ZmaWNAZm9zcy5zdC5jb20+Cj4gQ28tZGV2ZWxvcGVkLWJ5OiBNYXJlayBWYXN1dCA8
bWFyZXhAbmFibGFkZXYuY29tPgo+IFNpZ25lZC1vZmYtYnk6IE1hcmVrIFZhc3V0IDxtYXJleEBu
YWJsYWRldi5jb20+CgpSZXZpZXdlZC1ieTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6eXN6dG9m
Lmtvemxvd3NraUBvc3MucXVhbGNvbW0uY29tPgoKQmVzdCByZWdhcmRzLApLcnp5c3p0b2YKCgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
