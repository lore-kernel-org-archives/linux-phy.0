Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51808C61DB9
	for <linux-phy@archiver.kernel.org>; Tue, 25 Aug 2026 21:29:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WWXlrYENwZnXV5LGgO7cNb4uRwdGt5uAc3FqPvphd7g=; b=LIUcIw8n1mDn3D
	Xn7CP0ccFymsallbNKtDCSmJ1X9LwJ4o+P3ohDZ4qBOw+anUz4z2YpRCMOgnKPqVDU1SEaiw41K8+
	n2ulng8BvTeb2DYuOTablOt5V10hB+aghBYZuwUh+Aq6O+J2CFcLyXvOj0+E+LuWVtOTWFDH9u4Wr
	ljfIJLsK4Lm1EOABVFOBERcW4KMSmdiafPxc9MVfyVbUs0NEXBe/CXjmEYJB8aaOJz1eig7nQT0tF
	/o+dlwxXHpDkxgzCrC1EJah0fHuzFIoSjnm8JQtqi5s2SeGP53Wsa+X7Fo31gCiajw1uyOr821Wpf
	345Jwi/1yImwWiMKMJ8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyyhs-00000001XEO-0Az1;
	Tue, 25 Aug 2026 21:29:20 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyyhr-00000001XEI-0KBL
	for linux-phy@lists.infradead.org;
	Tue, 25 Aug 2026 21:29:19 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 8390E600C4;
	Tue, 25 Aug 2026 21:29:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A3CB91F000E9;
	Tue, 25 Aug 2026 21:29:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787693358;
	bh=2iozFZtdIl/TKicvL7HVAobgaKbBMDb8eRHLkQ4R22E=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=gUTtHF40akrSsShv09VA/vHpcn7FArzOO5JeCSryFHocSQt8eGMWwYkNGnl3O+omr
	 Pi38QX9thGw+8yMWgi9/i0xJEcL9pJ6icG1E3jJCVzktmDYbwkoNyfebXSuPmXXJm8
	 yOu/9QL+ecXk4oS5NkvVLRFDFUiqd2PB60DbdAEmlQ9/J9MzIgqOqTfE4h2n90+TqL
	 Q5Of2u8DGD68veZX5BOSNpl0wn4+s/0wtiuQWbT46HcTtbyavkC838GHw29wBd6D0o
	 vPFK14LAS3NZdW4sKVq47323RDlF9ay8ueIU+EXOWCbavUnjyzzqODWZ9yAHwXssy7
	 CsWHEmf77OPxg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 02/12] dt-bindings: clk: zte: Add zx297520v3 matrix
 clock and reset controller
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: devicetree@vger.kernel.org, vkoul@kernel.org, mfd@lists.linux.dev, olteanv@gmail.com, linux-phy@lists.infradead.org, lee@kernel.org, robh@kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org, linux-clk@vger.kernel.org
In-Reply-To: <20260826-zx29clk-v11-2-f8ad59c6426c@gmail.com>
References: <20260826-zx29clk-v11-0-f8ad59c6426c@gmail.com>
 <20260826-zx29clk-v11-2-f8ad59c6426c@gmail.com>
Date: Tue, 25 Aug 2026 21:29:17 +0000
Message-Id: <20260825212917.A3CB91F000E9@smtp.kernel.org>
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
IFJldmlld2VkLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQG9z
cy5xdWFsY29tbS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogU3RlZmFuIETDtnNpbmdlciA8c3RlZmFu
ZG9lc2luZ2VyQGdtYWlsLmNvbT4KClNhc2hpa28gaGFzIHJldmlld2VkIHRoaXMgcGF0Y2ggYW5k
IGZvdW5kIG5vIGlzc3Vlcy4gSXQgbG9va3MgZ3JlYXQhCgotLSAKU2FzaGlrbyBBSSByZXZpZXcg
wrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwODI2LXp4MjljbGstdjExLTAt
ZjhhZDU5YzY0MjZjQGdtYWlsLmNvbT9wYXJ0PTIKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
