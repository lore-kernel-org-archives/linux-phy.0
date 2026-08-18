Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E503EC5DF7D
	for <linux-phy@archiver.kernel.org>; Tue, 18 Aug 2026 14:35:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O3WJyZHXcrPkx27cXXhrCF/fJwvDukx8TmuxJjogcjY=; b=1WZLeVtnSOBTo/
	QIuCii83ISSvjiDLhYgPZXfjmjxIquz2fQOn4UwSrwqLd+RIE/bKy9Ys4r7CtHIg0D/+YuaQHqcVj
	KD2y1xRp1JExnQzsaygjT6KBqrVyULnguNQ5ym/eyjAkTrtuthuF9yb4CEZJKIKT1bj1GwLOumIM7
	mrXtdsoWuLC4+GWWuYxTVV30yWAYda8EQQga+4cLZzk7lI7+RIQWZoibzZ0cE0ImfaM9VTRp/PJF9
	EKRBfGxXvzC3fvxPYZd17Bufp6AZ5XuwFfb2CV1ZvW2ShDpyBYrDOH8LmpyQE+RZHLfBh8fgbbB9r
	1m3+LypKryk1dWt8XTMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwKuu-00000008BSQ-1p0q;
	Tue, 18 Aug 2026 14:35:52 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwKus-00000008BSG-49OE
	for linux-phy@lists.infradead.org;
	Tue, 18 Aug 2026 14:35:51 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 40CAB4128F;
	Tue, 18 Aug 2026 14:35:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 941D81F000E9;
	Tue, 18 Aug 2026 14:35:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787063750;
	bh=JB3LTQdUzexXJbGLFEoPVsFN3Sk3Yfq0VeSSpzHMggs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=icRAha+Gi55pC9f7y5416UaAT6IaQup9VLsBBexRgXIF8f0y9pi5M9MIPE1rqPvAi
	 Fj/HDikzsAdZhBoiu0+9rR2z3lJ66zMhHJ1T12g8PZqryv5WVunpmzx1PurwLv/k2h
	 4ysvs2wVoPo7x9jsJ75wVjm+EokTGSZ6GYyzCdYKJVECXVfPtn0KbkpSY81y6yUNgR
	 vFdTp+uCTb1J1enfJdkFXIbRD5ta2r8e/XpoXtPNCL4YadTuQa8ksA8luEf9FY7zBV
	 dSZbGI/lYxZ0s4OayfICmdBEk9XcCrnEowLWX/kGxzukeLpXvyLrWFp1GekrbYzktj
	 asP5ML/hYuabQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 6/7] dt-bindings: usb: ti,am33xx-usb: Convert to DT
 schema
To: "Bhargav Joshi" <j.bhargav.u@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, linux-phy@lists.infradead.org, dmaengine@vger.kernel.org, conor+dt@kernel.org, vkoul@kernel.org, Frank.Li@kernel.org
In-Reply-To: <20260818-ti-am33-usb-v2-6-66fd44d66824@gmail.com>
References: <20260818-ti-am33-usb-v2-0-66fd44d66824@gmail.com>
 <20260818-ti-am33-usb-v2-6-66fd44d66824@gmail.com>
Date: Tue, 18 Aug 2026 14:35:49 +0000
Message-Id: <20260818143549.941D81F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVGhlIFlBTUwgZXhhbXBs
ZSBjb250YWlucyB1bnJlc29sdmVkIHBoYW5kbGUgcmVmZXJlbmNlcyAoYCZjdHJsX21vZGAgYW5k
IGAmdXNiMF9waHlgKSwgd2hpY2ggd2lsbCBjYXVzZSBgZHRfYmluZGluZ19jaGVja2AgY29tcGls
YXRpb24gdG8gZmFpbC4KLS0KCi0tLSBQYXRjaCBbNl06IFtQQVRDSCB2MiA2LzddIGR0LWJpbmRp
bmdzOiB1c2I6IHRpLGFtMzN4eC11c2I6IENvbnZlcnQgdG8gRFQgc2NoZW1hIC0tLQpjb21taXQg
ZTQ0Y2FiNDZhYmM0Zjk5NzhjNzIyODk1YzQ5ZTQ1NGE1YWQ4MDdkNgpBdXRob3I6IEJoYXJnYXYg
Sm9zaGkgPGouYmhhcmdhdi51QGdtYWlsLmNvbT4KCmR0LWJpbmRpbmdzOiB1c2I6IHRpLGFtMzN4
eC11c2I6IENvbnZlcnQgdG8gRFQgc2NoZW1hCgpUaGlzIGNvbW1pdCBjb252ZXJ0cyB0aGUgVEkg
QU0zM3h4IFVTQiBXcmFwcGVyIHRleHQgYmluZGluZyB0byBEVCBzY2hlbWEuCkl0IGRyb3BzIHRo
ZSBVU0IgY29udHJvbCBtb2R1bGUgZnJvbSBjaGlsZCBub2RlcywgYWxsb3dzIHN0YW5kYXJkIHBo
eSBub2RlCm5hbWVzIGFsb25nc2lkZSBsZWdhY3kgb25lcywgYW5kIGRlcHJlY2F0ZXMgdGhlIHRp
LGh3bW9kcyBwcm9wZXJ0eS4KCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy91c2IvdGksYW0zM3h4LXVzYi55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL3VzYi90aSxhbTMzeHgtdXNiLnlhbWwKPiBuZXcgZmlsZSBtb2RlIDEwMDY0
NAo+IGluZGV4IDAwMDAwMDAwMDAwMDAuLjBiMzZiOWRkZmI0YTkKPiAtLS0gL2Rldi9udWxsCj4g
KysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi90aSxhbTMzeHgtdXNi
LnlhbWwKWyAuLi4gXQo+ICtleGFtcGxlczoKPiArICAtIHwKPiArICAgIHVzYkA0NzQwMDAwMCB7
Cj4gKyAgICAgICAgY29tcGF0aWJsZSA9ICJ0aSxhbTMzeHgtdXNiIjsKPiArICAgICAgICByZWcg
PSA8MHg0NzQwMDAwMCAweDEwMDA+Owo+ICsgICAgICAgIHJhbmdlczsKPiArICAgICAgICAjYWRk
cmVzcy1jZWxscyA9IDwxPjsKPiArICAgICAgICAjc2l6ZS1jZWxscyA9IDwxPjsKPiArICAgICAg
ICB0aSxod21vZHMgPSAidXNiX290Z19ocyI7Cj4gKwo+ICsgICAgICAgIHVzYi1waHlANDc0MDEz
MDAgewo+ICsgICAgICAgICAgICBjb21wYXRpYmxlID0gInRpLGFtMzM1eC11c2ItcGh5IjsKPiAr
ICAgICAgICAgICAgcmVnID0gPDB4NDc0MDEzMDAgMHgxMDA+Owo+ICsgICAgICAgICAgICByZWct
bmFtZXMgPSAicGh5IjsKPiArICAgICAgICAgICAgdGksY3RybF9tb2QgPSA8JmN0cmxfbW9kPjsK
CltTZXZlcml0eTogTG93XQpXaWxsIHRoaXMgY2F1c2UgYSBjb21waWxhdGlvbiBmYWlsdXJlIGR1
cmluZyBtYWtlIGR0X2JpbmRpbmdfY2hlY2s/CgpUaGUgZXhhbXBsZSByZWZlcmVuY2VzIHRoZSAm
Y3RybF9tb2QgcGhhbmRsZSBoZXJlLCBidXQgc2luY2UgdGhlIGNvbnRyb2wKbW9kdWxlIG5vZGUg
d2FzIHJlbW92ZWQgZnJvbSB0aGUgY2hpbGQgbm9kZXMgZHVyaW5nIHRoZSBjb252ZXJzaW9uLCB0
aGlzCnJlZmVyZW5jZSBhcHBlYXJzIHRvIGJlIHVuZGVmaW5lZC4KCj4gKyAgICAgICAgICAgICNw
aHktY2VsbHMgPSA8MD47Cj4gKyAgICAgICAgfTsKPiArCj4gKyAgICAgICAgdXNiQDQ3NDAxMDAw
IHsKPiArICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJ0aSxtdXNiLWFtMzN4eCI7Cj4gKyAgICAg
ICAgICAgIHJlZyA9IDwweDQ3NDAxNDAwIDB4NDAwPiwKPiArICAgICAgICAgICAgICAgICAgPDB4
NDc0MDEwMDAgMHgyMDA+Owo+ICsgICAgICAgICAgICByZWctbmFtZXMgPSAibWMiLCAiY29udHJv
bCI7Cj4gKyAgICAgICAgICAgIGludGVycnVwdHMgPSA8MTg+Owo+ICsgICAgICAgICAgICBpbnRl
cnJ1cHQtbmFtZXMgPSAibWMiOwo+ICsgICAgICAgICAgICBkcl9tb2RlID0gIm90ZyI7Cj4gKyAg
ICAgICAgICAgIG1lbnRvcixtdWx0aXBvaW50ID0gPDE+Owo+ICsgICAgICAgICAgICBtZW50b3Is
bnVtLWVwcyA9IDwxNj47Cj4gKyAgICAgICAgICAgIG1lbnRvcixyYW0tYml0cyA9IDwxMj47Cj4g
KyAgICAgICAgICAgIG1lbnRvcixwb3dlciA9IDw1MDA+Owo+ICsgICAgICAgICAgICBwaHlzID0g
PCZ1c2IwX3BoeT47CgpbU2V2ZXJpdHk6IExvd10KRG9lcyB0aGlzIGFsc28gbGVhdmUgYW4gdW5k
ZWZpbmVkIHJlZmVyZW5jZSBpbiB0aGUgZXhhbXBsZT8KClRoZSBwaHlzIHByb3BlcnR5IHJlZmVy
ZW5jZXMgJnVzYjBfcGh5LCBidXQgdGhlIHVzYjBfcGh5IGxhYmVsIHdhcyBkcm9wcGVkCmZyb20g
dGhlIHVzYi1waHlANDc0MDEzMDAgbm9kZSBpbiB0aGlzIGV4YW1wbGUgc2NoZW1hLgoKPiArICAg
ICAgICB9OwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9w
YXRjaHNldC8yMDI2MDgxOC10aS1hbTMzLXVzYi12Mi0wLTY2ZmQ0NGQ2NjgyNEBnbWFpbC5jb20/
cGFydD02CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
