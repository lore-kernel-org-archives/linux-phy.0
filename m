Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C980CC53209
	for <linux-phy@archiver.kernel.org>; Mon, 27 Jul 2026 18:34:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FNLcn9i7H8bWzDBXQmOwgegdK9Ydflxh4iadpEOnlYk=; b=AOv57Ob0hC6t/w
	Wmiz4zm1aTzAi1NYgveCmiYr+4e+Mf+9QEx0BoaMaq3N7/P15WYcGEjDswvurUB3FjrhTYr9Em0wb
	b+FzoktV11G09mpbQRqFeQoaOfofhyWJdLxud9cs1veWx9sLZrPQL2JoqfkgAM5FGO0Q8RMWDZPg4
	xcSsTwiXxpELuW20guB8Ql/Nqv+rV4Zgit1FD5hMCI53F8Q/bdoi0zGx4zsHqWk0brqycEs73t6N3
	pzJvHWENf4Ixl/5p7zspBWbo2eLMVw6cwlgteh0TOa68c6TY2ETXwwL6k0nmPsoo1HAsBDnDurfwC
	FjnpIc7+BTozsk2KM8zQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woQ9c-00000003gCa-2C0p;
	Mon, 27 Jul 2026 18:34:20 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woQ9c-00000003gCS-0d9u
	for linux-phy@lists.infradead.org;
	Mon, 27 Jul 2026 18:34:20 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 86BED40E36;
	Mon, 27 Jul 2026 18:34:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4A2D1F000E9;
	Mon, 27 Jul 2026 18:34:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785177259;
	bh=P303M9fopkExUNwoiCPNBpRuNtM2ZkRvRpmWqj+7fXE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=OBDqq6tQUhIpAO/x8lw+JqDqz6LUXulhDJlcdUhYtu0hXpfR54R3Stq1pOzqr+xNq
	 lO60Jnb0QldGU3VycAp/DLGYHoalFunvsUpohSZiWzw2r63DJ6zW7c9oULnb/6L13U
	 MF13feEWKDq4yaF1Lqi/1q+RJZmdACtl/o5+huralCDt5pmGPROtzyNUeAA8HhwjIX
	 J73HEscR0zpAjR8macUvlGSv9ZHTriFtCBuerpGujca8IwuAtbxJvS49qKNVR79yni
	 D0VVGNlLAxz+a+aUznsbFL3YiOdFOfz4xugC1U8wGOSSV+cCGpOpy5erk/jJWMaU0b
	 /4w4mc5tFKi3A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 02/12] dt-bindings: clk: zte: Add zx297520v3 matrix
 clock and reset controller
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: vkoul@kernel.org, mfd@lists.linux.dev, conor+dt@kernel.org, robh@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, lee@kernel.org, olteanv@gmail.com
In-Reply-To: <20260727-zx29clk-v8-2-7a107b00f1dd@gmail.com>
References: <20260727-zx29clk-v8-0-7a107b00f1dd@gmail.com>
 <20260727-zx29clk-v8-2-7a107b00f1dd@gmail.com>
Date: Mon, 27 Jul 2026 18:34:18 +0000
Message-Id: <20260727183418.E4A2D1F000E9@smtp.kernel.org>
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
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

PiBUaGlzIGNvbnRyb2xsZXIgY29udGFpbnMgY2xvY2tzIGFuZCByZXNldHMgZm9yIGhpZ2ggc3Bl
ZWQgZGV2aWNlcyBvbiB0aGUKPiB6eDI5NzUyMHYzIGJvYXJkIGFuZCBoYXJkd2FyZSBzcGlubG9j
a3MgdGhhdCBJIGV4cGVjdCB3aWxsIGJlIG5lY2Vzc2FyeQo+IHRvIGNvbW11bmljYXRlIGNvcnJl
Y3RseSB3aXRoIHRoZSBMVEUgRFNQIGZpcm13YXJlIGJsb2IuCj4gCj4gSSBkb24ndCBrbm93IG11
Y2ggYWJvdXQgdGhlIGh3bG9ja3MgeWV0IG90aGVyIHRoYW4gdGhhdCB0aGV5IGV4aXN0LCBzbwo+
IHRoZXJlIGlzIG5vIGhlYWRlciB5ZXQgYWRkaW5nIG1lYW5pbmcgdG8gdGhlaXIgaW5kaWNlcy4g
UHJlc3VtYWJseSB0aGF0Cj4gbWVhbmluZyBkb2Vzbid0IGV4aXN0IGluIGhhcmR3YXJlIGFuZCBp
cyBkZSBmYWN0byBkZWZpbmVkIGJ5IFpURSdzCj4gZmlybXdhcmUgYmxvYnMgcnVubmluZyBvbiB0
aGUgcnByb2NzLgo+IAo+IFRoZSB6dGUtengyOTc1MjB2My1jcm0gZHJpdmVyIHdpbGwgaW5zdGFu
dGlhdGUgc2VwYXJhdGUgTUZEIGNoaWxkcmVuIGZvcgo+IGNsb2NrcyBhbmQgcmVzZXRzLCB3aGlj
aCBhcmUgaGFuZGxlZCBieSBzZXBhcmF0ZSBjbG9jayBhbmQgcmVzZXQKPiBkcml2ZXJzLgo+IAo+
IFNpZ25lZC1vZmYtYnk6IFN0ZWZhbiBEw7ZzaW5nZXIgPHN0ZWZhbmRvZXNpbmdlckBnbWFpbC5j
b20+CgpTYXNoaWtvIGhhcyByZXZpZXdlZCB0aGlzIHBhdGNoIGFuZCBmb3VuZCBubyBpc3N1ZXMu
IEl0IGxvb2tzIGdyZWF0IQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlr
by5kZXYvIy9wYXRjaHNldC8yMDI2MDcyNy16eDI5Y2xrLXY4LTAtN2ExMDdiMDBmMWRkQGdtYWls
LmNvbT9wYXJ0PTIKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
