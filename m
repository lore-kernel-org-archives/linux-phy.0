Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CF76C9830B
	for <linux-phy@archiver.kernel.org>; Wed, 23 Sep 2026 20:05:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4uVNVi6W2GjqUTk+y1B6CQtAdDlK5AhsYRowl9sz8Ac=; b=jsZKuFMPrZvBYl
	GWyDUXNYImfn/PI5Lea2ARZo26hUotGaCXHyPzD/n4n+uNo/Y0Zd12Vp6EQsIdlLbum6/fO0HhgD3
	eV9+Ufv2MiyqNcZ1ZBKUpOzQbQzwMSmn8AqsdWY0waeaHTEb6asZ9ZEDG7wxsXQwBRVgfxeh6JR9k
	2+5nQvJsOAzFRUGGrKtrVfrZr+L5JQFK2Sdo2+P2o7KiIn4Gn7yrUKtWsd+eoMFjqwZ3hYafPmAZS
	X5db6cSzrFF+eG1xENywSqhhRKtEwb4DBj8jTa3JGusUao5JpB0JAEP0uoYDim0Pc6GHmrim2zGqa
	CmdAHyevLgzg8uOmIV4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9TDa-00000009OIw-0VtY;
	Wed, 23 Sep 2026 20:05:26 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9TDY-00000009OI4-2QIY
	for linux-phy@lists.infradead.org;
	Wed, 23 Sep 2026 20:05:24 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id CCB9C600AA;
	Wed, 23 Sep 2026 20:05:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 283221F00893;
	Wed, 23 Sep 2026 20:05:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790193923;
	bh=7dwa7jH4CKOlaiXla7W5D/VkPOOHCAAejqwvLBwyJzc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=P7E/NrBVQ9iqIPbzKu0Uzx/RFm/wey9mKRLyVZdvz/6tjhgkMup7PQBZZlM6lQAuC
	 3AneeIXBxhWWDFWNhYjjCeICzM1SIAK8w3riOif+QtDWLmdiV4NiCaUD0AMzUEiwld
	 E/C1W1m6sMFgeDZbi3a/NGGyczu5B0RgSUjogdBUw7G3DzeKHWTsJAHMg6Dpzkudkm
	 B+j7LTGY7rcrls/S9c0SD57BYGzXYT4xG/0OEVb5Yaze32UIZk3y2x6QJ028KeZxE4
	 Pq1nvZriW5eZyM51u85QtRKmS1znGSFgPX2eEH7Ka++8Cpre9CW9B3L/+tL3Hscive
	 ucy5cDRP1fWSg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v10 05/11] arm64: dts: rockchip: rk3568: add
 XPCS and fixed-clock nodes
To: "Coia Prant" <coiaprant@gmail.com>
Cc: conor+dt@kernel.org, wsa+renesas@sang-engineering.com, olteanv@gmail.com, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, vkoul@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260922200336.2201212-6-coiaprant@gmail.com>
References: <20260922200336.2201212-1-coiaprant@gmail.com>
 <20260922200336.2201212-6-coiaprant@gmail.com>
Date: Wed, 23 Sep 2026 20:05:22 +0000
Message-Id: <20260923200523.283221F00893@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gYXJtNjQ6IGR0czogbWlz
c2luZyByZXF1aXJlZCBwaHlzIGFuZCBwaHktbmFtZXMgaW4geHBjcyBub2RlCi0gW0xvd10gYXJt
NjQ6IGR0czogaW52YWxpZCBzdGF0dXMgcHJvcGVydHkgaW4gZXRoZXJuZXQtcGNzLW1paSBzdWJu
b2RlcwotLQoKY29tbWl0IGY3ZjQyOTgxM2NkODJlOTliNWQ4MTBkNDZlNGMxZTUyYjg0ZDE2MjMK
QXV0aG9yOiBDb2lhIFByYW50IDxjb2lhcHJhbnRAZ21haWwuY29tPgoKYXJtNjQ6IGR0czogcm9j
a2NoaXA6IHJrMzU2ODogYWRkIFhQQ1MgYW5kIGZpeGVkLWNsb2NrIG5vZGVzCgpUaGlzIGNvbW1p
dCBhZGRzIHRoZSBYUENTIGRldmljZSBub2RlLCBpdHMgUENTLU1JSSBzdWItbm9kZXMsIGFuZCBm
aXhlZC1jbG9jawpub2RlcyBmb3IgR01BQyByZWZlcmVuY2UgY2xvY2tzIHRvIHRoZSBSSzM1Njgg
U29DIGRldmljZSB0cmVlLgoKPiBUaGUgWFBDUyBub2RlIHJlcXVpcmVzIGEgcmVmZXJlbmNlIHRv
IHRoZSBhcHByb3ByaWF0ZSBOYW5lbmcgQ29tYm8gUEhZCj4gdmlhIHRoZSBwaHlzIHByb3BlcnR5
LiAgZHRic19jaGVjayBvbmx5IHZhbGlkYXRlcyByZXF1aXJlZCBwcm9wZXJ0aWVzCj4gZm9yIGVu
YWJsZWQgbm9kZXMsIHNvIHRoZSBTb0MgZHRzaSBkb2VzIG5vdCBwcm92aWRlIHBoeXMvcGh5LW5h
bWVzOgoKW1NldmVyaXR5OiBMb3ddClRoZSBjb21taXQgbWVzc2FnZSBzdGF0ZXMgdGhhdCBkdGJz
X2NoZWNrIG9ubHkgdmFsaWRhdGVzIHJlcXVpcmVkIHByb3BlcnRpZXMKZm9yIGVuYWJsZWQgbm9k
ZXMsIGJ1dCBpcyB0aGlzIGFjY3VyYXRlPyAKClRoZSBkdC1zY2hlbWEgdmFsaWRhdGVzIGFsbCBt
YXRjaGluZyBub2RlcyBhZ2FpbnN0IHRoZQpyb2NrY2hpcCxyazM1NjgteHBjcy55YW1sIHNjaGVt
YSwgcmVnYXJkbGVzcyBvZiB0aGVpciBzdGF0dXMgcHJvcGVydHkuIFNpbmNlCnRoZSBzY2hlbWEg
ZGVmaW5lcyBwaHlzIGFuZCBwaHktbmFtZXMgYXMgdW5jb25kaXRpb25hbGx5IHJlcXVpcmVkLCB3
aWxsIHRoaXMKY2F1c2UgbWFrZSBkdGJzX2NoZWNrIHRvIGVtaXQgbWlzc2luZy1wcm9wZXJ0eSB3
YXJuaW5ncyBmb3IgZXZlcnkgUkszNTY4CmJvYXJkIHRoYXQgZG9lcyBub3QgZXhwbGljaXRseSBw
cm92aWRlIHRoZXNlIHByb3BlcnRpZXM/Cgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzU2OC5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azM1NjguZHRzaQo+IGluZGV4IDNiYzY1M2YwMjdmMWYuLjJjZWExMDhiMzFhNGUgMTAwNjQ0Cj4g
LS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjguZHRzaQo+ICsrKyBiL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LmR0c2kKClsgLi4uIF0KCj4gKwl4cGNz
OiBldGhlcm5ldC1wY3NAZmRhMDAwMDAgewo+ICsJCWNvbXBhdGlibGUgPSAicm9ja2NoaXAscmsz
NTY4LXhwY3MiOwo+ICsJCSNhZGRyZXNzLWNlbGxzID0gPDE+Owo+ICsJCSNzaXplLWNlbGxzID0g
PDA+Owo+ICsJCXJlZyA9IDwweDAgMHhmZGEwMDAwMCAweDAgMHgyMDAwMDA+Owo+ICsJCWNsb2Nr
cyA9IDwmY3J1IFBDTEtfWFBDUz4sIDwmY3J1IENMS19YUENTX0VFRT47Cj4gKwkJY2xvY2stbmFt
ZXMgPSAiY3NyIiwgImVlZSI7Cj4gKwkJcG93ZXItZG9tYWlucyA9IDwmcG93ZXIgUkszNTY4X1BE
X1BJUEU+Owo+ICsJCXN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gKwo+ICsJCXhwY3NfbWlpMDogZXRo
ZXJuZXQtcGNzLW1paUAwIHsKPiArCQkJcmVnID0gPDA+Owo+ICsJCQlzdGF0dXMgPSAiZGlzYWJs
ZWQiOwoKW1NldmVyaXR5OiBMb3ddCkRvZXMgYWRkaW5nIHRoZSBzdGF0dXMgcHJvcGVydHkgaGVy
ZSBjYXVzZSB1bmRvY3VtZW50ZWQgcHJvcGVydHkgd2FybmluZ3MKZHVyaW5nIGR0YnNfY2hlY2s/
IAoKVGhlIHJvY2tjaGlwLHJrMzU2OC14cGNzLnlhbWwgc2NoZW1hIGRlZmluZXMgdGhlIGV0aGVy
bmV0LXBjcy1taWkgc3Vibm9kZXMKdXNpbmcgcGF0dGVyblByb3BlcnRpZXMgd2l0aCBhZGRpdGlv
bmFsUHJvcGVydGllczogZmFsc2UsIGJ1dCBkb2VzIG5vdApleHBsaWNpdGx5IGluY2x1ZGUgc3Rh
dHVzIGluIGl0cyBhbGxvd2VkIHByb3BlcnRpZXMsIG5vciBkb2VzIGl0IHJlZmVyZW5jZSBhCmNv
cmUgc2NoZW1hIHRoYXQgd291bGQgYnJpbmcgaXQgaW4uCgpTaW5jZSBkaXNhYmxpbmcgdGhlIHBh
cmVudCB4cGNzIG5vZGUgaXMgc3VmZmljaWVudCwgaXMgdGhlIHN0YXR1cyBwcm9wZXJ0eQpyZWR1
bmRhbnQgaW4gdGhlc2UgY2hpbGQgbm9kZXM/Cgo+ICsJCX07CgpbIC4uLiBdCgotLSAKU2FzaGlr
byBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwOTIyMjAw
MzM2LjIyMDEyMTItMS1jb2lhcHJhbnRAZ21haWwuY29tP3BhcnQ9NQoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
