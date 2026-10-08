Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1FC0CA600A
	for <linux-phy@archiver.kernel.org>; Thu,  8 Oct 2026 07:30:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JEIJIjM7LRUpIQihkDgwu/HVjTsjIzVnemv4Uy63aCc=; b=JSTZyuwR5OU/a0
	ARHH0BRW+ktIOaUzySpU1qWsfI4Jnmr/dhR+dFoGN4dG7QZ7DLmcY2hf99WOGjhNKo3ao0f290DX7
	oJMQSpBtKu2Id2AgKb1+GOTk02NTkvDRKENH6ssgZIjV4dhrYpGeEn2MWojhcFU+bmIpDf38FhCHL
	BZEApeLDNZ7nZuyrN4I2QVYcJKQG/CVi/snM+/ybuucU8JkIT4Q3Zp9/0raLbmCHp/EVuS0TmcMb9
	giObtdtcLQjFpfjtuRDuNpaYS8We8a/877dX+V0AtYdW0SMQr2bZSwU5joMQrodDpK1pUTuBu8UEc
	eYLTbetjg1ccHC45NNHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEiaX-00000003kc1-2C5R;
	Thu, 08 Oct 2026 07:30:49 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEiaV-00000003kZk-2QCe
	for linux-phy@lists.infradead.org;
	Thu, 08 Oct 2026 07:30:47 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 56EB643A77;
	Thu,  8 Oct 2026 07:30:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B7CFC1F00893;
	Thu,  8 Oct 2026 07:30:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791444647;
	bh=YtAY573Trop1gldQFI3m6kmIqtZQmLORC9wIKpI6iSE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Bv//8vmDlnc6EQrDpZ/TVEUzSgsyeunUZGo/ytOn/oklaiAmJfU21SRwc9uzLrz6G
	 dM2jrgO1pNCMQYirVPeO44qUUIwQM27TOpEWmXX6YIOrXBoAzJsVxhm3soc9u7bnr1
	 xFq22wG6j71v0i6pvmsohHhwKXwGW1obkVfTJy5uGi6woLwgj/ozO0U7AbWYrkhCwl
	 BOyjW7B4cxDHkgeKkHeso+otRbvjkSKnupKWOklBN9wr6g8ihm+A88Ss2ZcPyz8FKO
	 aziRW1Y+0k9x0qO+mY15/V1TcloBS5g+rvgZbpzCdVlRePfc/6LFLNGTIqz/5B1a2+
	 hds6CCyuXsX8g==
Message-ID: <sashiko-outbox-163763@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v19 06/12] media: qcom: camss: csiphy: Add support for
 v2.4.0 two-phase CSIPHY
To: "Hangxiang Ma" <hangxiang.ma@oss.qualcomm.com>
Cc: conor+dt@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, devicetree@vger.kernel.org, media-ci@linuxtv.org, vkoul@kernel.org, linux-phy@lists.infradead.org, robh@kernel.org
In-Reply-To: <20261008-kaanapali-camss-v19-6-b2c583ef50e0@oss.qualcomm.com>
References: <20261008-kaanapali-camss-v19-0-b2c583ef50e0@oss.qualcomm.com>
 <20261008-kaanapali-camss-v19-6-b2c583ef50e0@oss.qualcomm.com>
Date: Thu, 08 Oct 2026 07:30:46 +0000
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIG1lZGlhOiBjYW1zczog
TlVMTCBkZXJlZmVyZW5jZSBpbiBtc21fY3NpcGh5X3N1YmRldl9pbml0X2xlZ2FjeSBvbiBLYWFu
YXBhbGkKLSBbTWVkaXVtXSBkb2M6IGNvbW1pdCBtZXNzYWdlIGNsYWltcyB0byBtb2RpZnkgRFBI
WSBkcml2ZXIgYnV0IHBhdGNoIGRpZmYgb25seSBtb2RpZmllcyBjYW1zcy5jCi0tCgpjb21taXQg
ZWU0ZjVlZjMxMzQ3NzQwZmZkNjRjNGM5ZWMwOGU3ZTFmMjM5OGJmYwpBdXRob3I6IEhhbmd4aWFu
ZyBNYSA8aGFuZ3hpYW5nLm1hQG9zcy5xdWFsY29tbS5jb20+CgptZWRpYTogcWNvbTogY2Ftc3M6
IGNzaXBoeTogQWRkIHN1cHBvcnQgZm9yIHYyLjQuMCB0d28tcGhhc2UgQ1NJUEhZCgpUaGlzIGNv
bW1pdCBhZGRzIHN1cHBvcnQgZm9yIHRoZSB2Mi40LjAgdHdvLXBoYXNlIENTSVBIWSBmb3VuZCBv
bgpLYWFuYXBhbGksIGRlZmluaW5nIGEgbmV3IHJlc291cmNlIHN0cnVjdHVyZSBmb3IgaXRzIGNv
bmZpZ3VyYXRpb24uCgo+ICAgICBBZGQgc3VwcG9ydCBmb3IgdGhlIHYyLjQuMCB0d28tcGhhc2Ug
Q1NJUEhZIGZvdW5kIG9uIEthYW5hcGFsaSwgd2hlcmUKPiAgICAgdGhlIFBIWSBpcyBkcml2ZW4g
YnkgdGhlIHN0YW5kYWxvbmUgcGh5LXFjb20tbWlwaS1jc2kyIERQSFkgZHJpdmVyCj4gICAgIHJh
dGhlciB0aGFuIGJ5IENBTVNTLiBBZGQgdGhlIG1pcGlfY3NpMl9kcGh5XzNubV9rYWFuYXBhbGkg
Y29uZmlndXJhdGlvbiwKPiAgICAgd2hpY2ggcmV1c2VzIHRoZSB4MWU4MDEwMCBsYW5lIHNlcXVl
bmNlLCBjbG9ja3MgYW5kIHN1cHBsaWVzIGJ1dCBzZWxlY3RzCj4gICAgIHRoZSB2Mi40LjAgY29t
bW9uIHN0YXR1cyBvZmZzZXQsIGFkZHMgS2FhbmFwYWxpIHBvd2VyIGRvbWFpbiBhbmQgcmVnaXN0
ZXIKPiAgICAgdGhlICJxY29tLGthYW5hcGFsaS1jc2kyLXBoeSIgY29tcGF0aWJsZS4KCltTZXZl
cml0eTogTWVkaXVtXQpEb2VzIHRoaXMgcGF0Y2ggb21pdCBzb21lIGZpbGVzLCBvciBkb2VzIHRo
ZSBjb21taXQgbWVzc2FnZSBpbmNvcnJlY3RseQphdHRyaWJ1dGUgY2hhbmdlcyB0aGF0IGJlbG9u
ZyB0byBhbm90aGVyIHBhdGNoIGluIHRoZSBzZXJpZXM/CgpUaGUgY29tbWl0IG1lc3NhZ2UgZXhw
bGljaXRseSBjbGFpbXMgdG8gYWRkIHRoZSBEUEhZIGNvbmZpZ3VyYXRpb24gYW5kCnJlZ2lzdGVy
IHRoZSBjb21wYXRpYmxlLCBidXQgdGhlIGFjdHVhbCBwYXRjaCBkaWZmIG9ubHkgbW9kaWZpZXMK
ZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLmMuCgo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MuYyBiL2RyaXZlcnMvbWVk
aWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy5jCj4gaW5kZXggZmNhM2RlMjE0YTkyMi4uZWVj
ZWI3OWMxZTg2MyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ft
c3MvY2Ftc3MuYwo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1z
cy5jCj4gQEAgLTM4LDYgKzM4LDUxIEBACj4gIAo+ICBzdGF0aWMgY29uc3Qgc3RydWN0IHBhcmVu
dF9kZXZfb3BzIHZmZV9wYXJlbnRfZGV2X29wczsKPiAgCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3Qg
Y2Ftc3Nfc3ViZGV2X3Jlc291cmNlcyBjc2lwaHlfcmVzX2thYW5hcGFsaVtdID0gewo+ICsJLyog
Q1NJUEhZMCAqLwo+ICsJewo+ICsJCS5jc2lwaHkgPSB7CgpbU2V2ZXJpdHk6IEhpZ2hdCkRvZXMg
dGhpcyBjb2RlIGNhdXNlIGEgTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlIG9uIHByb2JlIGlmIHRo
ZSBkZXZpY2UgdHJlZQpsYWNrcyBlbmRwb2ludHMgZm9yIHRoZSBjYW1zcyBub2RlPwoKSWYgYSBt
YWxmb3JtZWQgb3IgZW1wdHkgZGV2aWNlIHRyZWUgaXMgcHJvdmlkZWQsIGNhbXNzX2RldGVjdF9s
ZWdhY3lfcGh5KCkKbGVhdmVzIGNhbXNzLT5sZWdhY3lfcGh5IGFzIHRydWUuCgpEdXJpbmcgY2Ft
c3NfaW5pdF9zdWJkZXZpY2VzKCksIHRoaXMgdHJpZ2dlcnMgYSBmYWxsYmFjayB0byB0aGUgbGVn
YWN5CmluaXRpYWxpemF0aW9uOgoKY2Ftc3NfaW5pdF9zdWJkZXZpY2VzKCkgLT4gbXNtX2NzaXBo
eV9zdWJkZXZfaW5pdF9sZWdhY3koKQoKVGhlIGxlZ2FjeSBpbml0aWFsaXphdGlvbiB1bmNvbmRp
dGlvbmFsbHkgZGVyZWZlcmVuY2VzIGh3X29wczoKCnJldCA9IGNzaXBoeS0+cmVzLT5od19vcHMt
PmluaXQoY3NpcGh5KTsKClNpbmNlIGNzaXBoeV9yZXNfa2FhbmFwYWxpIG9taXRzIGh3X29wcyBo
ZXJlLCB3b3VsZG4ndCB0aGlzIHJlc3VsdCBpbiBhbgppbW1lZGlhdGUga2VybmVsIHBhbmljIGlu
c3RlYWQgb2YgYSBjbGVhbiBlcnJvciBkdXJpbmcgcHJvYmU/Cgo+ICsJCQkuaWQgPSAwLAo+ICsJ
CQkuZm9ybWF0cyA9ICZjc2lwaHlfZm9ybWF0c19zZG04NDUKPiArCQl9LAo+ICsJfSwKPiArCS8q
IENTSVBIWTEgKi8KPiArCXsKWyAuLi4gXQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBz
Oi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MTAwOC1rYWFuYXBhbGktY2Ftc3MtdjE5LTAt
YjJjNTgzZWY1MGUwQG9zcy5xdWFsY29tbS5jb20/cGFydD02CgotLSAKbGludXgtcGh5IG1haWxp
bmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
