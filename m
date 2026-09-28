Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D720C9833E
	for <linux-phy@archiver.kernel.org>; Mon, 28 Sep 2026 10:19:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sU0imUXmmNpEgGpeOAAjNVmFrSrJmbYQ+oV8veMcEjk=; b=Gk3zR96J7iQOyw
	7hhugBXPU5iO5+60dlS73Z5B6yeUUoaFhpGb1Ev0xwNg5I1VkrMJL24TNH7QJHAh1Uqs3iIdsjb8Z
	L+le0T0wWvUUYbrXUA5rPoZwfzGZKrC5qFgSOgURMdo4H9+Iw2v+1GFKTBWnqSWekSsdIg8NK2ok3
	U9//w3XUPR6cJJCFdUvXIxHSMovC/h3J/iRV4BKD2Zx2I427pZVSB0DLx1zeCUJYFEKrF+bf6rOgX
	cS9KhRQwHrA/ibdpOiV869+kBUZHL0GjTiLcsvlI6yxNyFB/pQgO8q3/YWfyhXsX9cHNVDdjN8YGK
	DcWuDxY5AghuLwFLs1Kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xB8SX-00000000Kin-0aB2;
	Mon, 28 Sep 2026 10:19:45 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xB8SW-00000000Kih-23UF
	for linux-phy@lists.infradead.org;
	Mon, 28 Sep 2026 10:19:44 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id EAB4B403A3;
	Mon, 28 Sep 2026 10:19:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EC0761F000FF;
	Mon, 28 Sep 2026 10:19:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790590783;
	bh=R5IjW6p0JCzbjjEnLYLbF1zbG5e9XSjD77RNp9djL0I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=EmzbuiIMbMvlKO6UavAjUCKsiQCf7Xv2dxoJ5U5RH2apfbGZaWISMQGhxCa+xl+h6
	 YY9s05cRjhrJLrj0MgMtI5jyfD1Mrbznfnml9aFELeNK33POLpDgu1QAddbthTupRH
	 P9fRCxk6kcpvHTgntbRf89hGH6PdU2J8b/7SLU4hdBI1rrWRDV4ets+8g47R3sn7jq
	 Lj0IHD7Dpe47dxy3Xymral+r3tzKoyZ8ZBl8y/FmKBN7KJpB0OIdffEs1ZWKJFqmhY
	 wKoy+7nPYHW578mufNYtCQXP4DsyAXsTEPbtl39REzdxyxW6ViXwUtcC6ZMifhZNCq
	 VWEbEupCbPhbQ==
Date: Mon, 28 Sep 2026 12:19:40 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Zhangfei Gao <zhangfei.gao@oss.qualcomm.com>
Cc: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bartosz Golaszewski <brgl@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Lorenzo Bianconi <lorenzo.bianconi@oss.qualcomm.com>, Shawn Guo <shengchao.guo@oss.qualcomm.com>
Subject: Re: [PATCH 0/3] phy: qcom: sgmii-eth: add Nord USXGMII support
Message-ID: <20260928-steel-hornet-of-kindness-aa5e2f@quoll>
References: <20260923-nord_ethernet_serdes-v1-0-f8ac1c487882@oss.qualcomm.com>
 <CAFkd8hvoUi3dyff8w72pmRHce0XDNUepCsR=1gtimFMgA6gmBQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFkd8hvoUi3dyff8w72pmRHce0XDNUepCsR=1gtimFMgA6gmBQ@mail.gmail.com>
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

T24gV2VkLCBTZXAgMjMsIDIwMjYgYXQgMDQ6NTg6MDNQTSArMDgwMCwgWmhhbmdmZWkgR2FvIHdy
b3RlOgo+IE9uIFdlZCwgU2VwIDIzLCAyMDI2IGF0IDg6MDTigK9BTSBNb2hkIEF5YWFuIEFud2Fy
Cj4gPG1vaGQuYW53YXJAb3NzLnF1YWxjb21tLmNvbT4gd3JvdGU6Cj4gPgo+ID4gVGhpcyBzZXJp
ZXMgYWRkcyBzdXBwb3J0IGZvciB0aGUgRXRoZXJuZXQgU2VyRGVzIGZvdW5kIG9uIHRoZSBRdWFs
Y29tbQo+ID4gTm9yZCBTb0MuCj4gPgo+ID4gTm9yZCB1c2VzIGEgUU1QIHY3IFNlckRlcyBibG9j
aywgd2hpY2ggaXMgYW4gdXBkYXRlZCB2ZXJzaW9uIG9mIHRoZQo+ID4gU0dNSUkgU2VyRGVzIFBI
WSBJUCBhbHJlYWR5IGhhbmRsZWQgYnkgcGh5LXFjb20tc2dtaWktZXRoLiBUaGUgZHJpdmVyCj4g
PiBjdXJyZW50bHkgc3VwcG9ydHMgdGhlIDEuMjUgR2JhdWQgYW5kIDMuMTI1IEdiYXVkIGNvbmZp
Z3VyYXRpb25zIHVzZWQgYnkKPiA+IFNHTUlJLCAxMDAwQkFTRS1YIGFuZCAyNTAwQkFTRS1YLiBO
b3JkIGFkZGl0aW9uYWxseSByZXF1aXJlcyB0aGUgU2VyRGVzCj4gPiB0byBvcGVyYXRlIGF0IDEw
LjMxMjUgR2JhdWQgZm9yIGl0cyAxMCBHaWdhYml0IEV0aGVybmV0IGludGVyZmFjZXMuCj4gPgo+
ID4gVGhlIHNlcmllcyBjYW4gYmUgYnJvYWRseSBkaXZpZGVkIGludG8gdGhyZWUgcGFydHM6Cj4g
Pgo+ID4gICAxLiBBZGQgdGhlIHFjb20sbm9yZC1kd21hYy1zZ21paS1waHkgY29tcGF0aWJsZSB0
byB0aGUgYmluZGluZy4KPiA+ICAgMi4gUHJlcGFyZSB0aGUgZHJpdmVyIGZvciBQSFkgbW9kZXMg
d2hpY2ggcmVxdWlyZSBkaWZmZXJlbnQgU2VyRGVzCj4gPiAgICAgIHByb2dyYW1taW5nIGFuZCBy
ZWFkaW5lc3MgY2hlY2tzLiBFeGlzdGluZyBTQTg3NzVQIGJlaGF2aW91ciBpcwo+ID4gICAgICB1
bmNoYW5nZWQuCj4gPiAgIDMuIEFkZCB0aGUgUU1QIHY3IHJlZ2lzdGVyIGRlZmluaXRpb25zLCAx
MC4zMTI1IEdiYXVkIHByb2dyYW1taW5nCj4gPiAgICAgIHNlcXVlbmNlIGFuZCByZWFkaW5lc3Mg
Y2hlY2tzIHJlcXVpcmVkIGZvciBVU1hHTUlJIGFuZCAxMEdCQVNFLVIuCj4gPgo+ID4gVGhlIGNo
YW5nZXMgaGF2ZSBiZWVuIHRlc3RlZCBvbiB0aGUgTm9yZCBSaWRlIFNYIHBsYXRmb3JtLCB3aGlj
aCBoYXMgYQo+ID4gTVYtUTYyMjMgc3dpdGNoLCBydW5uaW5nIGluIGZpeGVkIGxpbmsgVVNYR01J
SSAxMEcgbW9kZS4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBNb2hkIEF5YWFuIEFud2FyIDxtb2hk
LmFud2FyQG9zcy5xdWFsY29tbS5jb20+Cj4gPiAtLS0KPiA+IE1vaGQgQXlhYW4gQW53YXIgKDMp
Ogo+ID4gICAgICAgZHQtYmluZGluZ3M6IHBoeTogcWNvbSxzYTg3NzVwLWR3bWFjLXNnbWlpLXBo
eTogYWRkIE5vcmQgY29tcGF0aWJsZQo+ID4gICAgICAgcGh5OiBxY29tOiBzZ21paS1ldGg6IHBy
ZXBhcmUgZm9yIGFkZGl0aW9uYWwgUEhZIG1vZGVzCj4gPiAgICAgICBwaHk6IHFjb206IHNnbWlp
LWV0aDogYWRkIE5vcmQgVVNYR01JSSBzdXBwb3J0Cj4gPgo+ID4gIC4uLi9iaW5kaW5ncy9waHkv
cWNvbSxzYTg3NzVwLWR3bWFjLXNnbWlpLXBoeS55YW1sIHwgICAxICsKPiA+ICBkcml2ZXJzL3Bo
eS9xdWFsY29tbS9waHktcWNvbS1xbXAtcGNzLXNnbWlpLmggICAgICB8ICAgNSArCj4gPiAgZHJp
dmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXFzZXJkZXMtY29tLXY3LmggfCAgIDIgKwo+
ID4gIC4uLi9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXFzZXJkZXMtdHhyeC12Ny5oICAgIHwg
ICA5ICsKPiA+ICBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1zZ21paS1ldGguYyAgICAg
ICAgICB8IDIyNiArKysrKysrKysrKysrKysrKystLS0KPiA+ICA1IGZpbGVzIGNoYW5nZWQsIDIx
OSBpbnNlcnRpb25zKCspLCAyNCBkZWxldGlvbnMoLSkKPiA+IC0tLQo+ID4gYmFzZS1jb21taXQ6
IGE4YzU5MWVkNmI2NzI5MTVlMGJlNTc4NDNmOTQzYTJhNzIzYWZmNDAKPiA+IGNoYW5nZS1pZDog
MjAyNjA5MjMtbm9yZF9ldGhlcm5ldF9zZXJkZXMtYzQ4NmY3MTVmMzgzCj4gPgo+ID4gQmVzdCBy
ZWdhcmRzLAo+ID4gLS0KPiA+IE1vaGQgQXlhYW4gQW53YXIgPG1vaGQuYW53YXJAb3NzLnF1YWxj
b21tLmNvbT4KPiA+Cj4gCj4gR29vZCBKb2LvvIwKPiAKPiBUZXN0ZWQtYnk6IFpoYW5nZmVpIEdh
byA8emhhbmdmZWkuZ2FvQG9zcy5xdWFsY29tbS5jb20+CgpUaGlzIGhhcyB0byBzdG9wLgoKV2h5
IGFnYWluIGFkZGluZyBmYWtlIHRlc3RpbmcgdG8gdGhlIGJpbmRpbmdzPyBZb3UgY2Fubm90IHJl
cGx5IHR3aWNlPwoKVGhlc2UgdHdvIHdlZWtzIGl0J3Mgc29tZSBwbGFndWUgb2Ygc3VjaCB0YWdz
Li4uCgpCZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
