Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8AB39C55174
	for <linux-phy@archiver.kernel.org>; Sun,  2 Aug 2026 20:59:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ip7nscGSGux8EDgQ/a2zMXTNq8dWWy7jHEWki5Cu/Sw=; b=QdmMyM3sRLC/47
	wza4eH+4lgHIVYNwkg0a2haloNkQqj68PKQZHXkqA1iUgZ26Ql1AB2FV8RIxnM8s3yiVcw+lPne3x
	xQgJp28C53J1S1EZqaVJ+uUl4fqkfnCxzLpZKZu/RjhlaY03Zr3btuDbcwYYAoFotyVX0UDe/ka/U
	gRTXOXxiu3LOjs1Lius9Djoq0hVB1trbiKQ2p6j1QpKCYZdEbALhuBJXdH9lnU/H6cqPezKk/lCoY
	N4Rq/4HTHzyfA1SHET++UOYs9O23tabxT7rAW9TgN8+3+lL2pU0fw9T8HPz9PJXAd8PQLdoFdFwZR
	BYMU4/3h3M243WdSENbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqdHk-0000000G3Lh-15am;
	Sun, 02 Aug 2026 20:59:52 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqdHi-0000000G3LZ-2WhO
	for linux-phy@lists.infradead.org;
	Sun, 02 Aug 2026 20:59:50 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 51E3B42B9A;
	Sun,  2 Aug 2026 20:59:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 700C31F000E9;
	Sun,  2 Aug 2026 20:59:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785704390;
	bh=URKIU16FAdHpElxDdHeCMUSD0zEM11YN1XPg0zHL12s=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ECh1i8bOaOgYvGrJ2OBKehMT4eslK4QBp0iSaaSje+zBCdicFecw9u72YgoE4yPRp
	 ikIQuDp+B4wWKFFNT38x5AiNmA2bkmd2a2iOYxehx3ebaXFtMqq/TbWpKgPHvzhNdc
	 94MXJRtg3NjUs/MTvJsazAvVavvTk0nQ+9rzD34Ki498rX/s8otxm3fjNiVw4P/aWS
	 wWYdrwpigqQ49MUgnkz39IDIOeZzBHu4GBGAvs7UXdYQDQiseo/R65hH4/9Tp6wUmE
	 +fbL+RemlxxPjinQiYi3bFkNikoJb59PUY9BNW3TYACcwGJsiqPzJEN34KjAVhQ9j1
	 Qg7mKX3HhEkaQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v9 08/12] clk: zte: Introduce a driver for zx297520v3
 top clocks
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: olteanv@gmail.com, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, mfd@lists.linux.dev, vkoul@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, lee@kernel.org
In-Reply-To: <20260802-zx29clk-v9-8-d05530d85d28@gmail.com>
References: <20260802-zx29clk-v9-0-d05530d85d28@gmail.com>
 <20260802-zx29clk-v9-8-d05530d85d28@gmail.com>
Date: Sun, 02 Aug 2026 20:59:48 +0000
Message-Id: <20260802205949.700C31F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVXNpbmcgYGNvbnN0YCBz
dHJ1Y3QgdmFyaWFibGVzIHRvIGluaXRpYWxpemUgZmllbGRzIG9mIGEgc3RhdGljIGFycmF5IGNh
dXNlcyBhIGJ1aWxkIGZhaWx1cmUuCi0tCgotLS0gUGF0Y2ggWzhdOiBbUEFUQ0ggdjkgMDgvMTJd
IGNsazogenRlOiBJbnRyb2R1Y2UgYSBkcml2ZXIgZm9yIHp4Mjk3NTIwdjMgdG9wIGNsb2NrcyAt
LS0KY29tbWl0IDBhMzc4YTM2ODc4ZDQ1MWQ5ZTU4ZDA5MzM0NGI3ZWFkODZhZTYwNDIKQXV0aG9y
OiBTdGVmYW4gRMO2c2luZ2VyIDxzdGVmYW5kb2VzaW5nZXJAZ21haWwuY29tPgpjbGs6IHp0ZTog
SW50cm9kdWNlIGEgZHJpdmVyIGZvciB6eDI5NzUyMHYzIHRvcCBjbG9ja3MKClRoaXMgY29tbWl0
IGludHJvZHVjZXMgYSBuZXcgY2xvY2sgZHJpdmVyIGZvciB0aGUgWlRFIHp4Mjk3NTIwdjMgU29D
J3MKdG9wIGFuZCBtYXRyaXggY29udHJvbGxlcnMuIEl0IGFkZHMgZGVmaW5pdGlvbnMgZm9yIFBM
THMsIGZpeGVkIGRpdmlkZXJzLAptdXhlcywgYW5kIGdhdGVzIHVzZWQgYnkgY29yZSBkZXZpY2Vz
IG9uIHRoZSBib2FyZC4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xrL3p0ZS9jbGstengyOTc1
MjB2My5jIGIvZHJpdmVycy9jbGsvenRlL2Nsay16eDI5NzUyMHYzLmMKPiBuZXcgZmlsZSBtb2Rl
IDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMDAuLmY5OTE1NTgyZjI2MWEKPiAtLS0gL2Rldi9u
dWxsCj4gKysrIGIvZHJpdmVycy9jbGsvenRlL2Nsay16eDI5NzUyMHYzLmMKWyAuLi4gXQo+ICsv
KiBVc2VkIGZvciBnYXRlcyB3aGVyZSB3ZSBkb24ndCBrbm93IHRoZSBwYXJlbnQgaW5wdXQocyku
IEFzc3VtZSBnZW5lcmFsIG9zY2lsbGF0b3IgKi8KPiArc3RhdGljIGNvbnN0IHN0cnVjdCB6eF9w
YXJlbnRfZGVzYyBjbGtfdW5rbm93biA9IFBBUkVOVF9GVygib3NjMjZtIik7Cj4gKwo+ICsvKiBG
b3IgY2xvY2tzIHRoYXQgYXJlIGtub3duIHRvIHVzZSB0aGUgdW5nYXRlZCBvc2MyNm0gaW5wdXQg
Ki8KPiArc3RhdGljIGNvbnN0IHN0cnVjdCB6eF9wYXJlbnRfZGVzYyBjbGtfbWFpbltdID0gewo+
ICsJUEFSRU5UX0ZXKCJvc2MyNm0iKSwKPiArfTsKWyAuLi4gXQo+ICtzdGF0aWMgY29uc3Qgc3Ry
dWN0IHp4X2Nsb2NrIHp4Mjk3NTIwdjNfdG9wX2Nsb2Nrc1tdID0gewpbIC4uLiBdCj4gKwkvKiBv
c2MyNm0gZGl2aXNpb24gZm9yIGNsa19vdXRYICovCj4gKwlbWlhfQ0xLX09TQzI2TV9EMl0gICAg
ICAgICA9IEZJWEVEX0RJVigib3NjMjZtLWQyIiwgY2xrX21haW5bMF0sIDIpLAoKW1NldmVyaXR5
OiBMb3ddCkRvZXMgdGhpcyBjb2RlIGNhdXNlIGEgY29tcGlsZXIgZXJyb3IgYWJvdXQgaW5pdGlh
bGl6ZXIgZWxlbWVudHMgbm90IGJlaW5nCmNvbnN0YW50PwoKSW4gQywgY29uc3QgcXVhbGlmaWVk
IHN0cnVjdCB2YXJpYWJsZXMgYW5kIGFycmF5IGVsZW1lbnRzIGxpa2UgY2xrX21haW5bMF0KYXJl
IG5vdCBjb25zaWRlcmVkIGNvbnN0YW50IGV4cHJlc3Npb25zLiBTaW5jZSB6eDI5NzUyMHYzX3Rv
cF9jbG9ja3MgaGFzIHN0YXRpYwpzdG9yYWdlIGR1cmF0aW9uLCB1c2luZyB0aGVtIGhlcmUgbWln
aHQgcmVzdWx0IGluIGEgYnVpbGQgZmFpbHVyZS4KClsgLi4uIF0KPiArCS8qCj4gKwkgKiBIb3cg
ZG9lcyB0aGlzIFJUQyB3b3JrPyBJIGRvbid0IGtub3csIHRoZSBaVEUga2VybmVsIGRvZXMgbm90
IHRhbGsgdG8gaXQuIFRoZSBhY3R1YWwgUlRDCj4gKwkgKiBpcyBvbiB0aGUgSTJDLWNvbm5lY3Rl
ZCBQTUlDLgo+ICsJICovCj4gKwlbWlhfQ0xLX1JUQ19XQ0xLXSAgICAgICAgID0gR0FURSgicnRj
LXdjbGsiLCBjbGtfdW5rbm93biwgMHg1NCwgMSwgMCksCgpbU2V2ZXJpdHk6IExvd10KSXMgdGhp
cyBpbml0aWFsaXphdGlvbiBhbHNvIGFmZmVjdGVkIGJ5IHRoZSBzYW1lICJpbml0aWFsaXplciBl
bGVtZW50IGlzCm5vdCBjb25zdGFudCIgY29tcGlsZXIgZXJyb3Igd2hlbiB1c2luZyBjbGtfdW5r
bm93bj8KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0
Y2hzZXQvMjAyNjA4MDItengyOWNsay12OS0wLWQwNTUzMGQ4NWQyOEBnbWFpbC5jb20/cGFydD04
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
