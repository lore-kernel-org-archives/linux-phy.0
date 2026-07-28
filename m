Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 222D2C54F4C
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jul 2026 06:31:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IxJNuhaVo+qRMTM1mNxrtKBfSUr2Uf7vw7ns9vLQtUw=; b=Wm1mbg+P8xu9Jf
	en5wFKdqWzlKM4AxUD8Hwlc6ChqCPUyF3ZTgqHS/HbsKe9QLbzUd4n+0DqGec9g7kucYidGXB1Z/S
	1DztPWV8z0Paa2s45+CP6iZ7+nk892y/hWEyskK2plBTaF36zwgMMgKcrdGzsoUD0w+WHfGPDaLbP
	asQ/W3Ro0cZXbLEIZpKmgiYykncDaj1QNskIiyrDsXViSBEU36qOw8KoDYn8Fyh/qQMIHBfTlkfhC
	FnTQTlFkB4KYHQ27e/FBs3TR33jzso4xEfbFdl5oaNQbeX4s8KUKKyxMiH8OTujKnBDHUhoRDm1Gi
	ueYlNFklWCNFaAqMHr3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wobLU-00000004Xu5-3VW2;
	Tue, 28 Jul 2026 06:31:20 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wobLS-00000004XtT-3EZ4;
	Tue, 28 Jul 2026 06:31:18 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 8613A43931;
	Tue, 28 Jul 2026 06:31:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3C8461F000E9;
	Tue, 28 Jul 2026 06:31:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785220278;
	bh=lz3PR9OcYlfCk4wufRdu6End12F1+kNjFYW/Bo2K5NA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=epOvkjoI39bU5dVaYF3juBfYrce8bDlMCDRW1i4/Md+FEqQDazDLDGioiFYuV6u7/
	 CPB+wKqyxPCTti2nMXwLBiFnr6TOuiPz5a7vDO5tipOKFvhlH/Bk4rtuMMuh8yRLKM
	 8oGFpEOK+3AflIwKbliRCBkNJGjSIPYtA9m5LALQ/9kLZ39+2sflTNV97HB1Gm6zMU
	 oPAd57sitVOiptbs7NlzqWfpEpZuK14bzauV1Sis/g5HrdK/zOMWwXrHLNPFkVHDgs
	 ubFSjwpSOMRztYMsBNtkpIkJhuZbqaeXI/vqJU+VvO3MG3c3KJD8r6FxVf+4wbjkny
	 Pjv49DrGtOiRg==
Date: Tue, 28 Jul 2026 08:31:13 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Stefan =?utf-8?B?RMO2c2luZ2Vy?= <stefandoesinger@gmail.com>
Cc: Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Brian Masney <bmasney@redhat.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Russell King <linux@armlinux.org.uk>, Lee Jones <lee@kernel.org>, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org, mfd@lists.linux.dev
Subject: Re: [PATCH v8 02/12] dt-bindings: clk: zte: Add zx297520v3 matrix
 clock and reset controller
Message-ID: <20260728-wealthy-raspberry-lobster-bcfc8f@quoll>
References: <20260727-zx29clk-v8-0-7a107b00f1dd@gmail.com>
 <20260727-zx29clk-v8-2-7a107b00f1dd@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260727-zx29clk-v8-2-7a107b00f1dd@gmail.com>
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

T24gTW9uLCBKdWwgMjcsIDIwMjYgYXQgMDk6MjQ6MTdQTSArMDMwMCwgU3RlZmFuIETDtnNpbmdl
ciB3cm90ZToKPiBUaGlzIGNvbnRyb2xsZXIgY29udGFpbnMgY2xvY2tzIGFuZCByZXNldHMgZm9y
IGhpZ2ggc3BlZWQgZGV2aWNlcyBvbiB0aGUKPiB6eDI5NzUyMHYzIGJvYXJkIGFuZCBoYXJkd2Fy
ZSBzcGlubG9ja3MgdGhhdCBJIGV4cGVjdCB3aWxsIGJlIG5lY2Vzc2FyeQo+IHRvIGNvbW11bmlj
YXRlIGNvcnJlY3RseSB3aXRoIHRoZSBMVEUgRFNQIGZpcm13YXJlIGJsb2IuCj4gCj4gSSBkb24n
dCBrbm93IG11Y2ggYWJvdXQgdGhlIGh3bG9ja3MgeWV0IG90aGVyIHRoYW4gdGhhdCB0aGV5IGV4
aXN0LCBzbwo+IHRoZXJlIGlzIG5vIGhlYWRlciB5ZXQgYWRkaW5nIG1lYW5pbmcgdG8gdGhlaXIg
aW5kaWNlcy4gUHJlc3VtYWJseSB0aGF0Cj4gbWVhbmluZyBkb2Vzbid0IGV4aXN0IGluIGhhcmR3
YXJlIGFuZCBpcyBkZSBmYWN0byBkZWZpbmVkIGJ5IFpURSdzCj4gZmlybXdhcmUgYmxvYnMgcnVu
bmluZyBvbiB0aGUgcnByb2NzLgo+IAo+IFRoZSB6dGUtengyOTc1MjB2My1jcm0gZHJpdmVyIHdp
bGwgaW5zdGFudGlhdGUgc2VwYXJhdGUgTUZEIGNoaWxkcmVuIGZvcgo+IGNsb2NrcyBhbmQgcmVz
ZXRzLCB3aGljaCBhcmUgaGFuZGxlZCBieSBzZXBhcmF0ZSBjbG9jayBhbmQgcmVzZXQKPiBkcml2
ZXJzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFN0ZWZhbiBEw7ZzaW5nZXIgPHN0ZWZhbmRvZXNpbmdl
ckBnbWFpbC5jb20+Cj4gCj4gLS0tCgpSZXZpZXdlZC1ieTogS3J6eXN6dG9mIEtvemxvd3NraSA8
a3J6eXN6dG9mLmtvemxvd3NraUBvc3MucXVhbGNvbW0uY29tPgoKQmVzdCByZWdhcmRzLApLcnp5
c3p0b2YKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
