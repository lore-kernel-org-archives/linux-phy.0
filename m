Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E532C5B572
	for <linux-phy@archiver.kernel.org>; Sun, 16 Aug 2026 21:46:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YhE13lX/9Fx28M8er3qoC4vDEx2U2C3p/bguaOnRf2Y=; b=z8zVwook1vVL+H
	Vyu3blnzjvqDhwic+xSqHrXc6j+iKas9fe9eQQTxg25fMljmSUVk9hkxmxbKilGloN6lpZ/bC5wmY
	EJVNHfSRTuXfY50ced+Q6umCwZKAmgRRZ1M5fQzjh4PhVsEnlTVzHE2qeHOfFP9VyU3hr+NKOMSJs
	dTjXMnAZaCfMPUNbhV5/NVlZCy1a5OnouWVGLz+usS+mtprzcJYTWDNF3DSYc2xVtgNj2gjfoV2Ih
	oUF2Kzq8pefA/NQxOkk56zh+RFhCxFYyB3fr0YaagKFgtUXUx0fnAJtjgep+8oGKwKbKP7AAFBj8y
	N2+biS1Uys+jfos0efKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvigj-000000058DF-3erc;
	Sun, 16 Aug 2026 21:46:41 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvigi-000000058D9-3A2d
	for linux-phy@lists.infradead.org;
	Sun, 16 Aug 2026 21:46:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id D414D4389A;
	Sun, 16 Aug 2026 21:46:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A1B11F000E9;
	Sun, 16 Aug 2026 21:46:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786916799;
	bh=N1yPng0hDUiR0SYCoB7hfu/loI16gFAg/z2Zkiq8RGY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=jvSeApKpdgr/B1x+f2KQwFW9XHMjsFNjDyFvrgRJRu9iKqalnp2pqb0niE8SmUwfq
	 AZjAgXGxMvTkftThE4ig4AVSFxxR6Mjq+ktBAC3vDrfqE4ljtXjYqCAlAblbLF8XXI
	 M0UJf8bsJSXXw/qHUTXjTNG8+xpGCMr8Lggii7GfAMBmjkKWmYURi3ifQvqRB9Rx/9
	 Ul3Mo0GOvv+2dayOS4PnREPbFRY+5U1TJNXG0OhwMcz3fA1RyGj+xeEU4dNoXYEQ78
	 njlxhFjFOmoG1u7goB65acegX/BaAFopJ4o8opqmvbrwEzw4dne3T2e0SifLxTcb8s
	 obHirD03SNHZg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 3/9] dt-bindings: usb: generic-ehci: Document
 access-controllers property
To: "Marek Vasut" <marex@nabladev.com>
Cc: olteanv@gmail.com, robh@kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, vkoul@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260816213849.1044073-4-marex@nabladev.com>
References: <20260816213849.1044073-1-marex@nabladev.com>
 <20260816213849.1044073-4-marex@nabladev.com>
Date: Sun, 16 Aug 2026 21:46:38 +0000
Message-Id: <20260816214639.4A1B11F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIHBhdGNoIGFk
ZHMgdGhlIGBhY2Nlc3MtY29udHJvbGxlcnNgIHByb3BlcnR5IHRvIGBnZW5lcmljLWVoY2kueWFt
bGAgYnV0IGZhaWxzIHRvIHVwZGF0ZSB0aGUgY29tcGFuaW9uIGBnZW5lcmljLW9oY2kueWFtbGAg
YmluZGluZyBzY2hlbWEuCi0tCgotLS0gUGF0Y2ggWzNdOiBbUEFUQ0ggdjIgMy85XSBkdC1iaW5k
aW5nczogdXNiOiBnZW5lcmljLWVoY2k6IERvY3VtZW50IGFjY2Vzcy1jb250cm9sbGVycyBwcm9w
ZXJ0eSAtLS0KY29tbWl0IDUzNTgyNDg1MjE4YmRhYzAyMjBmM2FjYWY1MTI0YTZkOTU0OWY3YjMK
QXV0aG9yOiBNYXJlayBWYXN1dCA8bWFyZXhAbmFibGFkZXYuY29tPgoKZHQtYmluZGluZ3M6IHVz
YjogZ2VuZXJpYy1laGNpOiBEb2N1bWVudCBhY2Nlc3MtY29udHJvbGxlcnMgcHJvcGVydHkKClRo
aXMgY29tbWl0IHVwZGF0ZXMgdGhlIGdlbmVyaWMgRUhDSSBkZXZpY2UgdHJlZSBiaW5kaW5nIHRv
IGRvY3VtZW50IHRoZQphY2Nlc3MtY29udHJvbGxlcnMgcHJvcGVydHkgZm9yIGNvbnRyb2xsZXJz
IHRoYXQgcmVxdWlyZSBhY2Nlc3MgY2hlY2tzLgoKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi9nZW5lcmljLWVoY2kueWFtbCBiL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy91c2IvZ2VuZXJpYy1laGNpLnlhbWwKPiBpbmRleCA1NWE1
YWE3ZDdhNTRlLi42MDIyNDE4ODdkOTk1IDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy91c2IvZ2VuZXJpYy1laGNpLnlhbWwKPiArKysgYi9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdXNiL2dlbmVyaWMtZWhjaS55YW1sCj4gQEAgLTgwLDYg
KzgwLDkgQEAgcHJvcGVydGllczoKPiAgICAgIG1pbkl0ZW1zOiAxCj4gICAgICBtYXhJdGVtczog
Mgo+ICAKPiArICBhY2Nlc3MtY29udHJvbGxlcnM6Cj4gKyAgICBtYXhJdGVtczogMQo+ICsKCltT
ZXZlcml0eTogTWVkaXVtXQpTaG91bGQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L3VzYi9nZW5lcmljLW9oY2kueWFtbCBhbHNvIGJlCnVwZGF0ZWQgc3ltbWV0cmljYWxseT8KCldo
ZW4gYWNjZXNzLWNvbnRyb2xsZXJzIGFyZSBjb25maWd1cmVkIGZvciB0aGUgY29tcGFuaW9uIE9I
Q0kgY29udHJvbGxlcgppbiB0aGUgZGV2aWNlIHRyZWUgKHN1Y2ggYXMgb24gU1RNaWNyb2VsZWN0
cm9uaWNzIFNvQ3Mgd2hlcmUgRUhDSSBhbmQgT0hDSQpvcGVyYXRlIGFzIGZpcmV3YWxsZWQgY29t
cGFuaW9ucyksIHdvdWxkbid0IHRoZSBkdF9iaW5kaW5nX2NoZWNrIHZhbGlkYXRpb24KZmFpbCBz
aW5jZSBnZW5lcmljLW9oY2kueWFtbCBlbmZvcmNlcyB1bmV2YWx1YXRlZFByb3BlcnRpZXM6IGZh
bHNlPwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRj
aHNldC8yMDI2MDgxNjIxMzg0OS4xMDQ0MDczLTEtbWFyZXhAbmFibGFkZXYuY29tP3BhcnQ9MwoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
