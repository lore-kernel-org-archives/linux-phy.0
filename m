Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE61AC55184
	for <linux-phy@archiver.kernel.org>; Tue,  4 Aug 2026 06:37:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cBvvqTW09DstzKt0+7eVEX2yCANDR16T8l27Er6YUZg=; b=cpUmXlCMzCF5Jz
	MCZoMAXDJ9oZNAkm9l+uP4aCpbWYuhDK1Yp9wxE7spTVQT4O7/3tn20WPQgHq62+2/SVASjTTF/sN
	w4+x0Rl5GQKTlxS9yj1EJaH6BLEVgnHbqMyF+eFF0ClX6bSi04NHXaiKyHbkvykMAcS/KiLrVGnWr
	EjrGaViaOdI1g5H6sB5dyVHCyJ1oONO6YAAj9W7+rl5DwqJI8Fn/nYJMT5scsiBF5+5PD4O17/MRv
	qgbrpT9fL9058KwXH/8Lf5yqPUSfluQ9ZBBPfdZhpadFOa/ZbUsShnm/KUaC2EUrD50z3fGhW9UeI
	r9aRv2orVBeir9d6PaUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wr8mk-000000018ET-1gPU;
	Tue, 04 Aug 2026 06:37:58 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wr8mj-000000018Dm-0kyf;
	Tue, 04 Aug 2026 06:37:57 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 34FE060A59;
	Tue,  4 Aug 2026 06:37:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E77811F000E9;
	Tue,  4 Aug 2026 06:37:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785825475;
	bh=sVV9ANkNdZSlIxQxx6G0UrPV7UdyTkbaOPTjRrwl8xo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=jaMly5HTZ3fqszrH4+9Avu8iT9Iu4USutKzAtFZXji71cQ/MKlmxt3iNMousKck4p
	 0St6s/+igXJGmG6faNAYUPY2KnHGQNaTNxvaFz/nsL/yNENZCNy6pH7KrXDNkwPmRr
	 qDfoC9OjF5pZE9wMZrpqXpk6ZHOMhFQplfeL4f3AX3WcJzdX41CxFDp+BCJFydpPpG
	 7o+mt/Rb9Y1kROTR+MJ0oy1e9kAjGKOCWY7Qbk0Om+6ZdlJF6djsB5j9RFbw5R+et8
	 hmQNo4y9OoTRY6/hLF7yux1HlWKKPvtB0ifjGju0YGkdr05SSK7YFCZF/f5ZN4gcgE
	 eNa1VxO8oR8Hw==
Date: Tue, 4 Aug 2026 08:37:52 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Stefan =?utf-8?B?RMO2c2luZ2Vy?= <stefandoesinger@gmail.com>
Cc: Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Brian Masney <bmasney@redhat.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Russell King <linux@armlinux.org.uk>, Lee Jones <lee@kernel.org>, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org, mfd@lists.linux.dev
Subject: Re: [PATCH v9 01/12] dt-bindings: clk: zte: Add zx297520v3 top clock
 and reset controller
Message-ID: <20260804-tough-reindeer-of-zoology-6ccd59@quoll>
References: <20260802-zx29clk-v9-0-d05530d85d28@gmail.com>
 <20260802-zx29clk-v9-1-d05530d85d28@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260802-zx29clk-v9-1-d05530d85d28@gmail.com>
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

T24gU3VuLCBBdWcgMDIsIDIwMjYgYXQgMTE6MzM6MzNQTSArMDMwMCwgU3RlZmFuIETDtnNpbmdl
ciB3cm90ZToKPiBUaGVzZSBTb0NzIGhhdmUgMyBjbG9jayBhbmQgcmVzZXQgY29udHJvbGxlcnM6
IFRvcCwgTWF0cml4IGFuZCBMU1AuCj4gQ2xvY2tzIGdvIGZyb20gb3NjaWxsYXRvciAtPiB0b3Ag
LT4gbWF0cml4IC0+IExTUCwgd2l0aCBhIHJlZ2lzdGVyIGluCj4gdG9wIGNvbnRyb2xsaW5nIG1v
c3QgY2xvY2tzIHRoYXQgZ2V0IHBhc3NlZCB0byBtYXRyaXggYW5kIGEgcmVnaXN0ZXIgaW4KPiBt
YXRyaXggY29udHJvbGxpbmcgYWxsIHRoZSBjbG9ja3MgdGhhdCBnZXQgcGFzc2VkIHRvIExTUC4K
PiAKPiBHZW5lcmFsbHkgZXZlcnkgZGV2aWNlIGhhcyB0d28gY2xvY2tzIChvbmUgd29yayBjbG9j
aywgYW5kIG9uZSB0aGF0Cj4gY29ubmVjdHMgaXQgdG8gdGhlIGJ1cywgSSBjYWxsIGl0IFBDTEsp
LCB0d28gcmVzZXQgYml0cyAoSSBkb24ndCBrbm93Cj4gd2hhdCB0aGUgZGlmZmVyZW5jZSBpcyAt
IHNvbWV0aW1lcyBhc3NlcnRpbmcgb25lIGlzIGVub3VnaCB0byByZXNldCB0aGUKPiBkZXZpY2Us
IHNvbWV0aW1lcyBib3RoIG5lZWQgdG8gYmUgYXNzZXJ0ZWQpLiBQQ0xLIGFuZCBXQ0xLIGFyZQo+
IGNvbnRyb2xsZWQgYnkgaW5kaXZpZHVhbCBnYXRlcy4gU29tZSBkZXZpY2VzIGhhdmUgYSBtdXgg
YW5kL29yIGEKPiBkaXZpZGVyIGZvciB0aGVpciB3b3JrIGNsb2NrLiBTb21lIGRldmljZXMsIGxp
a2UgdGhlIEdQSU8gY29udHJvbGxlciwKPiBvbmx5IGhhdmUgcmVzZXQgYml0cyBhbmQgbm8gY2xv
Y2tzLgo+IAo+IFRoZSB0b3AgY2xvY2sgY29udHJvbGxlciBpcyBmZWQgYnkgYSAyNiBNSHogZXh0
ZXJuYWwgb3NjaWxsYXRvciBhbmQgaGFzIDQKPiBQTExzIHRvIGdlbmVyYXRlIG90aGVyIGNsb2Nr
IHJhdGVzLiBaVEUncyBrZXJuZWwgbW9zdGx5IHJlbGllcyBvbiB0aGUKPiBib290IFJPTSB0byBz
ZXQgdXAgUExMcywgYnV0IG9uZSBMVEUtcmVsYXRlZCBQTEwgaXMgbm90IGNvbmZpZ3VyZWQKPiBv
biBzb21lIGJvYXJkcy4gVGhlcmVmb3JlIG15IGRyaXZlciBjb250YWlucyBjb2RlIHRvIHByb2dy
YW0gUExMcy4gSXQKPiBwcm9kdWNlcyBpZGVudGljYWwgc2V0dGluZ3MgYXMgdGhlIGJvb3QgUk9N
IGZvciB0aGUgcHJlLXByb2dyYW1tZWQKPiBmcmVxdWVuY2llcy4KPiAKPiBOb3QgYWxsIGNsb2Nr
cyB3aWxsIGhhdmUgYW4gZXhwbGljaXQgdXNlciBpbiB0aGUgZW5kLiBJIGFtIGRlZmluaW5nIGEK
PiBsb3Qgb2YgdGhlbSBzaW1wbHkgdG8gc2h1dCB0aGVtIG9mZi4gVGhlIGJvb3QgbG9hZGVyIHNl
dHMgdXAgYSBmZXcgb2YKPiB0aGUgcHJvcHJpZXRhcnkgdGltZXJzLCB3aGljaCB3aWxsIHNlbmQg
cmVndWxhciBJUlFzIChhbHRob3VnaCB0aGUKPiBrZXJuZWwgb2YgY291cnNlIGRvZXNuJ3QgbmVl
ZCB0byBsaXN0ZW4gdG8gdGhlbSkuIEkgZG9uJ3QgcGxhbiB0byBhZGQgYQo+IGRyaXZlciBmb3Ig
dGhlIHByb3ByaWV0YXJ5IHRpbWVyIGFzIEkgc2VlIG5vIHVzZSBmb3IgdGhlbSAtIHRoZSBBUk0g
YXJjaAo+IHRpbWVyIHdvcmtzIGp1c3QgZmluZS4gSSB3aWxsIGFkZCBhIGRyaXZlciBmb3IgdGhl
IHZlcnkgc2ltaWxhcgo+IHByb3ByaWV0YXJ5IHdhdGNoZG9nIHRob3VnaC4KPiAKPiBUaGUgY2xv
Y2sgbGlzdCBpbiB0aGlzIHBhdGNoIGlzIHByZXR0eSBjb21wbGV0ZSBidXQgbm90IGV4aGF1c3Rp
dmUuCj4gVGhlcmUgYXJlIG90aGVyIGJpdHMgdGhhdCBhcmUgZW5hYmxlZCwgYnV0IEkgY291bGRu
J3QgZGVkdWNlIHdoYXQgdGhleQo+IGFyZSBjb250cm9sbGluZyBieSB0cmlhbCBhbmQgZXJyb3Iu
IFNvbWUgb2YgdGhlbSBzZWVtIHRvIGRvIG5vdGhpbmcuCj4gT3RoZXJzIGNhdXNlIGFuIGluc3Rh
bnQgaGFuZyBvZiB0aGUgYm9hcmQgd2hlbiBkaXNhYmxlZC4gSXQgaXMgcXVpdGUKPiBsaWtlbHkg
dGhhdCBhIGhhbmRmdWwgbW9yZSBjbG9ja3Mgd2lsbCBiZSBhZGRlZCBpbiB0aGUgZnV0dXJlLCBi
dXQgbm90IGEKPiBsYXJnZSBudW1iZXIuCj4gCj4gU2lnbmVkLW9mZi1ieTogU3RlZmFuIETDtnNp
bmdlciA8c3RlZmFuZG9lc2luZ2VyQGdtYWlsLmNvbT4KPiAKPiAtLS0KPiAKPiBDaGFuZ2VzIHY4
LT52OToKClJldmlld2VkLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93
c2tpQG9zcy5xdWFsY29tbS5jb20+CgpCZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
