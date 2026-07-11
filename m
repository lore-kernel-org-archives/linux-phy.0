Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24F1DC43458
	for <linux-phy@archiver.kernel.org>; Sat, 11 Jul 2026 17:00:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JWuOshNTqmZwO8t/2JPhEAIWvkpLY144z65Pqnzg7LE=; b=HbrU+g0aKxN6yf
	WlB8ZqZF29Phpy/rkCNysF6tPM2ENmTqjOe5aGiqyGaIBJ22NuW9Vzym/YnWmoYjFDOX74Cl8/l9x
	NEymK6Msib+Uyr00MxFDe+Lk0crF2vlxQ8INV+HTLS8zpLXxeAGdB58zX7HbwX6cYH3l+hdX91Ex3
	xseV9YVX/X6t280pDbIyfhUV9zH7QBAbMAQ4QRJCsmUIYRhdV+4D1tZno/5h759QC+eN8r0CRcLlZ
	isQ3T5BlA/921FvJoJLr6prJzW5Tuz93KNnrOdtw7q98ZNbUfUJp9Mx0cLn0nGPtJ9PQZrf7j4/+1
	+xo3FeYHmiMDfu0IuzDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wib4S-00000006i8j-3VFf;
	Sat, 11 Jul 2026 17:00:56 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wib4R-00000006i8W-3f7V
	for linux-phy@lists.infradead.org;
	Sat, 11 Jul 2026 17:00:55 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id E5A6060052;
	Sat, 11 Jul 2026 17:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 785A31F000E9;
	Sat, 11 Jul 2026 17:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783789254;
	bh=NdtVT8Hj2MpX7its900+qFkj9HjahZIZyiXH+xTsg7k=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=BJiF+pTPL4obELx8Ts806003X3f6J1wzSFgOiS9XDQQxzI00wOIREzYtA/K/TmFsg
	 dKOQjQohCwKk4y09xb6eydB9f+FwBteXxZtkU3cSRhxMLPyO98NUxtDMvGj4Ap3yod
	 7NbaaX74pz17M/7qAf4OZtVJeAEpmnZf2146j3U5O9VyKj876jlLgq45+u325nBhwL
	 lG9tse3ay2VQOvGw5yPZtVjDWBYkncKT1UKHQc6dWkiMi3mpTv3Rwgsxv4o9sWD6EQ
	 xtpKAhm1dyMo2a8AD46K+LdbazK5zi7BulIltWRawSk3ftaQRT06is2uO5hAqrd7oR
	 GvNrlc6mLYhLA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 2/6] dt-bindings: phy: motorola,cpcap-usb-phy: add
 optional safe pinctrl state
To: "Ivaylo Dimitrov" <ivo.g.dimitrov.75@gmail.com>
Cc: conor+dt@kernel.org, linux-phy@lists.infradead.org, vkoul@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org
In-Reply-To: <20260711164754.185565-3-ivo.g.dimitrov.75@gmail.com>
References: <20260711164754.185565-1-ivo.g.dimitrov.75@gmail.com>
 <20260711164754.185565-3-ivo.g.dimitrov.75@gmail.com>
Date: Sat, 11 Jul 2026 17:00:52 +0000
Message-Id: <20260711170053.785A31F000E9@smtp.kernel.org>
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

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIGNvbW1pdCBt
ZXNzYWdlIGNsYWltcyB0byBkb2N1bWVudCB0aGUgJ3NhZmUnIHBpbmN0cmwgc3RhdGUgdXNlZCBi
eSB0aGUgQ1BDQVAgVVNCIFBIWSBkcml2ZXIsIGJ1dCB0aGUgZHJpdmVyIGl0c2VsZiBuZXZlciBy
ZWZlcmVuY2VzIG9yIHVzZXMgdGhpcyBzdGF0ZS4KLS0KCi0tLSBQYXRjaCBbMl06IFtQQVRDSCB2
NCAyLzZdIGR0LWJpbmRpbmdzOiBwaHk6IG1vdG9yb2xhLGNwY2FwLXVzYi1waHk6IGFkZCBvcHRp
b25hbCBzYWZlIHBpbmN0cmwgc3RhdGUgLS0tCmNvbW1pdCBhOWQyYzYyY2JiZjBmYjZlYzIzNDFk
MmMwNDU5YmZmOTA2NzBjNjcxCkF1dGhvcjogSXZheWxvIERpbWl0cm92IDxpdm8uZy5kaW1pdHJv
di43NUBnbWFpbC5jb20+CgpkdC1iaW5kaW5nczogcGh5OiBtb3Rvcm9sYSxjcGNhcC11c2ItcGh5
OiBhZGQgb3B0aW9uYWwgc2FmZSBwaW5jdHJsIHN0YXRlCgpUaGlzIGNvbW1pdCBhZGRzIGEgbmV3
IHNhZmUgcGluY3RybCBzdGF0ZSB0byB0aGUgQ1BDQVAgVVNCIFBIWSBkZXZpY2UgdHJlZQpiaW5k
aW5ncy4KCj4gRG9jdW1lbnQgdGhlIG9wdGlvbmFsICJzYWZlIiBwaW5jdHJsIHN0YXRlIHVzZWQg
YnkgdGhlIENQQ0FQIFVTQiBQSFkKPiBkcml2ZXIuCgpbU2V2ZXJpdHk6IE1lZGl1bV0KSXMgdGhp
cyBjb21taXQgbWVzc2FnZSBhY2N1cmF0ZSByZWdhcmRpbmcgdGhlIGRyaXZlciBhY3R1YWxseSB1
c2luZyB0aGlzIHN0YXRlPwoKTG9va2luZyBhdCB0aGUgZHJpdmVyIGltcGxlbWVudGF0aW9uIGlu
CmRyaXZlcnMvcGh5L21vdG9yb2xhL3BoeS1jcGNhcC11c2IuYzpjcGNhcF91c2JfaW5pdF9vcHRp
b25hbF9waW5zKCksIGl0CmFwcGVhcnMgdG8gb25seSByZXF1ZXN0IHRoZSB1bHBpLCB1dG1pLCBh
bmQgdWFydCBzdGF0ZXM6CgoJZGRhdGEtPnBpbnNfdWxwaSA9IHBpbmN0cmxfbG9va3VwX3N0YXRl
KGRkYXRhLT5waW5zLCAidWxwaSIpOwoJaWYgKElTX0VSUihkZGF0YS0+cGluc191bHBpKSkKCS4u
LgoJZGRhdGEtPnBpbnNfdXRtaSA9IHBpbmN0cmxfbG9va3VwX3N0YXRlKGRkYXRhLT5waW5zLCAi
dXRtaSIpOwoJLi4uCglkZGF0YS0+cGluc191YXJ0ID0gcGluY3RybF9sb29rdXBfc3RhdGUoZGRh
dGEtPnBpbnMsICJ1YXJ0Iik7CgpUaGUgc2FmZSBzdGF0ZSBkb2VzIG5vdCBhcHBlYXIgdG8gYmUg
cmVxdWVzdGVkIG9yIHVzZWQgYW55d2hlcmUgaW4gdGhlIGRyaXZlcgpjb2RlLgoKRG9lcyB0aGUg
ZHJpdmVyIHN0aWxsIG5lZWQgdG8gYmUgdXBkYXRlZCB0byBzdXBwb3J0IHRoaXMgbmV3IHN0YXRl
LCBvciBjb3VsZAp0aGUgY29tbWl0IG1lc3NhZ2UgYmUgY2xhcmlmaWVkIHRvIHJlZmxlY3QgdGhh
dCB0aGlzIGlzIGxheWluZyB0aGUgZ3JvdW5kd29yawpmb3IgZnV0dXJlIGRyaXZlciBzdXBwb3J0
PwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNl
dC8yMDI2MDcxMTE2NDc1NC4xODU1NjUtMS1pdm8uZy5kaW1pdHJvdi43NUBnbWFpbC5jb20/cGFy
dD0yCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK
