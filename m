Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 470FDC44507
	for <linux-phy@archiver.kernel.org>; Wed, 15 Jul 2026 19:15:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7dEidCTCSkCeuxzPrmnGgT8L4lvWE52/6aC9JVxhlGg=; b=IiL48B426tMoYh
	YraZsNIqno2QBQGKANIFIUwgJ6nllyVt5Vry77pJBIXfoaxHMlW4b9YoxRg1MKqpMXMM4RyndCVAp
	89t0VHj6tsoX7uXNlP9ra/2SAk5BZkkmN5jdXBMnUGvxDMuIuvKJ2uJ8M96gM1wLdZLXjlqNZnTtR
	XW+WC7LHvvdIaicTXDN3InREJmk6iXEMUq5r78uBmvrMdmGsejvm0PATVoxCXjCrP4xEnqQqp5ic9
	1y/xf17WjlukZObEw4EGRF2hW2kehF5L1/YTthyjv8fzByE2A9VKNM1v51iQcMMcPtTxLag86LQIV
	k6aIdsLZlDr1t2dSSCZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk54P-0000000Fm0X-48YN;
	Wed, 15 Jul 2026 19:15:01 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk54K-0000000Flxs-2gkE
	for linux-phy@lists.infradead.org;
	Wed, 15 Jul 2026 19:14:56 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 5F08F4107B;
	Wed, 15 Jul 2026 19:14:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D033A1F00ACA;
	Wed, 15 Jul 2026 19:14:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784142896;
	bh=uM4epvXv9h1cGQUSasmZlR0KuyLAjXjxgDAwMcZOiv0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Ls9L19PJHGR5kdAPfHuvfJ10FcwyfiY8cU7OPAt78KvTRDVzsaFHGAwRw5wfn7O69
	 CILju/ex0blGiviT3DDUVKGISnt7+gNH2zO9nTvLonl0IooyPagCjc+aksvRtNnegP
	 CAt8iLry6TMyx84jMr8bPyXMvkJyxEDU6+d54NI2/w0NBrrIh8wBzpr8vOJAhe6P6I
	 +796fRUiZYL6SFoXzTqIjUK3XwiomOnlRwxpDAKjjpM2A2ZkoS7kMmKh7aQzDs8AKl
	 AXXTz5SaegfN7K5atBCzJSfFBcGBFq6urFZXi+dx6ssFUt/iaNkcivKD6OlQ3wRAEY
	 2r7J8AvsULABg==
From: sashiko-bot@kernel.org
Subject: Re: [RFC PATCH 08/10] net: stmmac: dwmac-rk: add SGMII support for
 RK3568
To: "Coia Prant" <coiaprant@gmail.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, linux-phy@lists.infradead.org, vkoul@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260714191341.690906-9-coiaprant@gmail.com>
References: <20260714191341.690906-1-coiaprant@gmail.com>
 <20260714191341.690906-9-coiaprant@gmail.com>
Date: Wed, 15 Jul 2026 19:14:55 +0000
Message-Id: <20260715191455.D033A1F00ACA@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBTR01JSSBpbml0
aWFsaXphdGlvbiBwYXRoIGluYWR2ZXJ0ZW50bHkgc2tpcHMgZW5hYmxpbmcgdGhlIE1BQyBjbG9j
a3MsIGxlYWRpbmcgdG8gaGFyZHdhcmUgaGFuZ3Mgb3IgZmF1bHRzIHdoZW4gTUFDIHJlZ2lzdGVy
cyBhcmUgYWNjZXNzZWQuCi0tCgotLS0gUGF0Y2ggWzhdOiBbUkZDIFBBVENIIDA4LzEwXSBuZXQ6
IHN0bW1hYzogZHdtYWMtcms6IGFkZCBTR01JSSBzdXBwb3J0IGZvciBSSzM1NjggLS0tCmNvbW1p
dCA3YmU1MGRiMmFjOGM0MGM4NDUxNDA3ZjM0NWFhYWFmMmQwNTM4Nzk5CkF1dGhvcjogQ29pYSBQ
cmFudCA8Y29pYXByYW50QGdtYWlsLmNvbT4KCm5ldDogc3RtbWFjOiBkd21hYy1yazogYWRkIFNH
TUlJIHN1cHBvcnQgZm9yIFJLMzU2OAoKVGhlIFJLMzU2OCBTb0MgaW50ZWdyYXRlcyBhIFN5bm9w
c3lzIERlc2lnbldhcmUgWFBDUyB0aGF0IGNhbiBiZSBjb25uZWN0ZWQKdG8gR01BQzAgb3IgR01B
QzEgaW4gU0dNSUkgbW9kZS4gQWRkIHRoZSBuZWNlc3NhcnkgZ2x1ZSBsb2dpYyB0byBzdXBwb3J0
CnRoaXMgY29uZmlndXJhdGlvbi4KCkxpbms6IGh0dHBzOi8vZGwucmFkeGEuY29tL3JvY2szL2Rv
Y3MvaHcvZGF0YXNoZWV0L1JvY2tjaGlwJTIwUkszNTY4JTIwVFJNJTIwUGFydDElMjBWMS4xLTIw
MjEwMzAxLnBkZiAoUGFnZSAzODYpCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9zdG1pY3JvL3N0bW1hYy9kd21hYy1yay5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvc3RtaWNy
by9zdG1tYWMvZHdtYWMtcmsuYwo+IGluZGV4IDhkNzA0MmU2ODkyNjEuLmVjYTQ4MmI0YjZiZmMg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvc3RtaWNyby9zdG1tYWMvZHdtYWMt
cmsuYwo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L3N0bWljcm8vc3RtbWFjL2R3bWFjLXJr
LmMKWyAuLi4gXQo+IEBAIC0xMzc5LDYgKzE0NDEsOSBAQCBzdGF0aWMgaW50IHJrX2dtYWNfcG93
ZXJ1cChzdHJ1Y3QgcmtfcHJpdl9kYXRhICpic3BfcHJpdikKPiAgCWlmIChyZXQpCj4gIAkJcmV0
dXJuIHJldDsKPiAgCj4gKwlpZiAoYnNwX3ByaXYtPnBoeV9pZmFjZSA9PSBQSFlfSU5URVJGQUNF
X01PREVfU0dNSUkpCj4gKwkJZ290byBzZXRfbW9kZTsKPiArCgpbU2V2ZXJpdHk6IEhpZ2hdCkRv
ZXMgdGhpcyBnb3RvIHNraXAgZW5hYmxpbmcgdGhlIE1BQyBjbG9ja3M/IEJ5IGp1bXBpbmcgZGly
ZWN0bHkgdG8gc2V0X21vZGUsCndlIGJ5cGFzcyB0aGUgY2FsbCB0byBnbWFjX2Nsa19lbmFibGUo
KSBmdXJ0aGVyIGRvd24gaW4gdGhpcyBmdW5jdGlvbi4KCkNhbiB0aGlzIGNhdXNlIGEgc3luY2hy
b25vdXMgZXh0ZXJuYWwgYWJvcnQgd2hlbiB0aGUgTUFDIHJlZ2lzdGVycyBhcmUgYWNjZXNzZWQK
c3Vic2VxdWVudGx5IHdoaWxlIHRoZWlyIGNsb2NrIGRvbWFpbiByZW1haW5zIGRpc2FibGVkPwoK
PiAgCXJldCA9IHJrX2dldF9waHlfaW50Zl9zZWwoYnNwX3ByaXYtPnBoeV9pZmFjZSk7Cj4gIAlp
ZiAocmV0IDwgMCkKPiAgCQlyZXR1cm4gcmV0OwpbIC4uLiBdCj4gLQkvKnJtaWkgb3IgcmdtaWkq
Lwo+ICtzZXRfbW9kZToKPiArCS8qIHJtaWksIHJnbWlpLCBzZ21paSAqLwo+ICAJc3dpdGNoIChi
c3BfcHJpdi0+cGh5X2lmYWNlKSB7Cj4gIAljYXNlIFBIWV9JTlRFUkZBQ0VfTU9ERV9SR01JSToK
Ci0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQv
MjAyNjA3MTQxOTEzNDEuNjkwOTA2LTEtY29pYXByYW50QGdtYWlsLmNvbT9wYXJ0PTgKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
