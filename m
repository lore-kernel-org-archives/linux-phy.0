Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41034CCD193
	for <linux-phy@archiver.kernel.org>; Wed, 15 Oct 2025 13:05:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AyUwAaAi42nmX/QT6DJQJuNuUBJzZQWWmrgLFRqhjcE=; b=zEwZOAxMHGY8ER
	T14HlEBKk93zeCq0lSlJUfJrSxO5BYYOxm5xNSda3d6hymE2adUOapTUAcj/9B8zrfMZ1/jn0JLq9
	ExhRSVWOjtMOzWWnkJF+X4PmRJ3gglFhI8Fk7UUqabI1UbdshcbzIQmitd+mkgzXBDWdAyECKPPBx
	xpoCkwtiSHhJocHUVV5RQCyQWLX5h3d2z5KhuMZ0mjsQgaXtS4ErPJIdzkBDHg9N8yFtfbDSvw2aB
	ZyktVnzPXSpEwgkjxQMOp1/ODBjX6rg5phzMloo/EmQL05dNHxz6xFFmSuzrJkToyHVzmqPgzcA4s
	BDpL1atMZkDvKzH0arsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v91CL-00000001eZa-012R;
	Wed, 15 Oct 2025 13:05:45 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v91CH-00000001eWf-0kpO;
	Wed, 15 Oct 2025 13:05:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id D0A1E44909;
	Wed, 15 Oct 2025 13:05:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8A275C4CEF8;
	Wed, 15 Oct 2025 13:05:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760533540;
	bh=2r5714A42xcyIZFh8H5uVbCGHRJdXN2qlO5VN/2T0Sc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bVh+57mKWZVZm31clx69McTVpcKPtVKXMVsVHMnFx1t54sVuWgpEGP38jnNDor41z
	 SQjR5suW6Rady1D6k/JVqoY2mYJR5TKba++BzWoKWtgms8nEKR9/Uso/JybM5VM+wY
	 P+yBwwelUiv7OBSqvJ3czmFScuZTt+s7TlVywdM2OHz5kZl2NyRhgJmIs3oL5scNRE
	 QQYTD2wgDx26wtabWpXNT6Gu9IBvwR2NB9X7D7XQ1B8FWNGnrQ81P0Hy0CaowrEKl6
	 6vngZORTXSdIEAvD3bi4EV3iZfCDqRRDBGzbTABJ3fmahCFbrBcCzjOK4KjjrzFiEb
	 lICeM2lYuHQvg==
Date: Wed, 15 Oct 2025 08:05:38 -0500
From: Rob Herring <robh@kernel.org>
To: Roy Luo <royluo@google.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Peter Griffin <peter.griffin@linaro.org>,
	=?iso-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>,
	Tudor Ambarus <tudor.ambarus@linaro.org>,
	Joy Chakraborty <joychakr@google.com>,
	Naveen Kumar <mnkumar@google.com>,
	Badhri Jagan Sridharan <badhri@google.com>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH v3 3/4] dt-bindings: phy: google: Add Google Tensor G5
 USB PHY
Message-ID: <20251015130538.GA3214399-robh@kernel.org>
References: <20251010201607.1190967-1-royluo@google.com>
 <20251010201607.1190967-4-royluo@google.com>
 <75756635-b374-4441-8526-175210e01163@kernel.org>
 <CA+zupgwHFpP5GEwGxOksmLJBU7+Kr_o0p50Pad1NmwNB0AxcGA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+zupgwHFpP5GEwGxOksmLJBU7+Kr_o0p50Pad1NmwNB0AxcGA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_060541_275889_C67823B2 
X-CRM114-Status: GOOD (  23.09  )
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

T24gTW9uLCBPY3QgMTMsIDIwMjUgYXQgMDY6NDY6MzlQTSAtMDcwMCwgUm95IEx1byB3cm90ZToK
PiBPbiBGcmksIE9jdCAxMCwgMjAyNSBhdCA1OjEx4oCvUE0gS3J6eXN6dG9mIEtvemxvd3NraSA8
a3J6a0BrZXJuZWwub3JnPiB3cm90ZToKPiA+Cj4gPiBPbiAxMC8xMC8yMDI1IDIyOjE2LCBSb3kg
THVvIHdyb3RlOgo+ID4gPiArICByZWc6Cj4gPiA+ICsgICAgaXRlbXM6Cj4gPiA+ICsgICAgICAt
IGRlc2NyaXB0aW9uOiBVU0IyIFBIWSBjb25maWd1cmF0aW9uIHJlZ2lzdGVycy4KPiA+ID4gKyAg
ICAgIC0gZGVzY3JpcHRpb246IERpc3BsYXlQb3J0IHRvcC1sZXZlbCByZWdpc3RlcnMuCj4gPiA+
ICsgICAgICAtIGRlc2NyaXB0aW9uOiBVU0IgdG9wLWxldmVsIGNvbmZpZ3VyYXRpb24gcmVnaXN0
ZXJzLgo+ID4gPiArCj4gPiA+ICsgIHJlZy1uYW1lczoKPiA+ID4gKyAgICBpdGVtczoKPiA+ID4g
KyAgICAgIC0gY29uc3Q6IHUycGh5X2NmZwo+ID4gPiArICAgICAgLSBjb25zdDogZHBfdG9wCj4g
PiA+ICsgICAgICAtIGNvbnN0OiB1c2JfdG9wX2NmZwo+ID4gPiArCj4gPiA+ICsgICIjcGh5LWNl
bGxzIjoKPiA+ID4gKyAgICBjb25zdDogMQo+ID4gPiArCj4gPiA+ICsgIGNsb2NrczoKPiA+ID4g
KyAgICBtYXhJdGVtczogMQo+ID4gPiArCj4gPiA+ICsgIHJlc2V0czoKPiA+ID4gKyAgICBtYXhJ
dGVtczogMQo+ID4gPiArCj4gPiA+ICsgIHBvd2VyLWRvbWFpbnM6Cj4gPiA+ICsgICAgbWF4SXRl
bXM6IDEKPiA+ID4gKwo+ID4gPiArICBvcmllbnRhdGlvbi1zd2l0Y2g6Cj4gPiA+ICsgICAgdHlw
ZTogYm9vbGVhbgo+ID4gPiArICAgIGRlc2NyaXB0aW9uOgo+ID4gPiArICAgICAgSW5kaWNhdGVz
IHRoZSBQSFkgYXMgYSBoYW5kbGVyIG9mIFVTQiBUeXBlLUMgb3JpZW50YXRpb24gY2hhbmdlcwo+
ID4gPiArCj4gPiA+ICtyZXF1aXJlZDoKPiA+ID4gKyAgLSBjb21wYXRpYmxlCj4gPiA+ICsgIC0g
cmVnCj4gPiA+ICsgIC0gcmVnLW5hbWVzCj4gPiA+ICsgIC0gIiNwaHktY2VsbHMiCj4gPiA+ICsg
IC0gY2xvY2tzCj4gPiA+ICsgIC0gcmVzZXRzCj4gPiA+ICsgIC0gcG93ZXItZG9tYWlucwo+ID4g
PiArICAtIG9yaWVudGF0aW9uLXN3aXRjaAo+ID4gPiArCj4gPiA+ICthZGRpdGlvbmFsUHJvcGVy
dGllczogZmFsc2UKPiA+ID4gKwo+ID4gPiArZXhhbXBsZXM6Cj4gPiA+ICsgIC0gfAo+ID4gPiAr
ICAgIHNvYyB7Cj4gPiA+ICsgICAgICAgICNhZGRyZXNzLWNlbGxzID0gPDI+Owo+ID4gPiArICAg
ICAgICAjc2l6ZS1jZWxscyA9IDwyPjsKPiA+ID4gKwo+ID4gPiArICAgICAgICB1c2JfcGh5OiB1
c2JfcGh5QGM0MTAwMDAgewo+ID4gPiArICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJnb29nbGUs
Z3M1LXVzYi1waHkiOwo+ID4gPiArICAgICAgICAgICAgcmVnID0gPDAgMHgwYzQ1MDAxNCAwIDB4
Yz4sCj4gPiA+ICsgICAgICAgICAgICAgICAgICA8MCAweDBjNjM3MDAwIDAgMHhhMD4sCj4gPgo+
ID4gWW91IHByb2JhYmx5IG1pc3MgRFAgc3VwcG9ydCBhbmQgdGhpcyBkb2VzIG5vdCBiZWxvbmcg
aGVyZS4KPiAKPiBUaGlzIHJlZ2lzdGVyIHNwYWNlIGlzbid0IHNvbGVseSBmb3IgRFAgb3BlcmF0
aW9uLCBhIHNpZ25pZmljYW50IHBvcnRpb24KPiBtYW5hZ2VzIHRoZSBjdXN0b20gY29tYm8gUEhZ
LiBDb25zZXF1ZW50bHksIHRoaXMgc3BhY2UgaXMgZXNzZW50aWFsCj4gZXZlbiBmb3IgVVNCLW9u
bHkgb3BlcmF0aW9uLiBXZSBjYW4gZXhwZWN0IG1vcmUgcmVnaXN0ZXJzIGluIHRoZSBzcGFjZQo+
IHRvIGJlIHV0aWxpemVkIHdoZW4gRFAgc3VwcG9ydCBpcyBhZGRlZC4KPiAKPiBXaGlsZSBJIGFj
a25vd2xlZGdlIHRoZSBjdXJyZW50IG5hbWUgaXMgY29uZnVzaW5nLCBpdCBkaXJlY3RseSByZWZs
ZWN0cwo+IHRoZSBoYXJkd2FyZSBkb2N1bWVudGF0aW9uLiBXZSBjYW4gZWl0aGVyIGFkaGVyZSB0
byB0aGUgaGFyZHdhcmUKPiBkb2N1bWVudGF0aW9uJ3MgbmFtaW5nIG9yIHByb3Bvc2UgYSBtb3Jl
IGRlc2NyaXB0aXZlIGFsdGVybmF0aXZlLgo+IFdoYXQncyB5b3VyIHByZWZlcmVuY2U/Cj4gCj4g
Pgo+ID4gPiArICAgICAgICAgICAgICAgICAgPDAgMHgwYzQ1MDAyYyAwIDB4ND47Cj4gPgo+ID4g
VGhhdCdzIG5vdCBhIHNlcGFyYXRlIGFkZHJlc3Mgc3BhY2UuIEkgcmVhbGx5LCByZWFsbHkgZG91
YnQgdGhhdAo+ID4gaGFyZHdhcmUgZW5naW5lZXJzIGNhbWUgd2l0aCBhZGRyZXNzIHNwYWNlcyBv
ZiBvbmUgd29yZCBsb25nLgo+IAo+IEkgaW5pdGlhbGx5IGNyZWF0ZWQgdGhpcyBzcGFjZSB0byBh
Y2Nlc3MgdGhlIHVzYjJvbmx5IG1vZGUgcmVnaXN0ZXIsCj4gd2hpY2ggbXVzdCBiZSBwcm9ncmFt
bWVkIHdoZW4gdGhlIGNvbnRyb2xsZXIgb3BlcmF0ZXMgaW4gaGlnaC1zcGVlZAo+IG9ubHkgbW9k
ZSB3aXRob3V0IHRoZSBVU0IzIFBIWSBpbml0aWFsaXplZC4gVXBvbiByZXZpZXcsIEkgbm93Cj4g
YmVsaWV2ZSB0aGUgY29udHJvbGxlciBkcml2ZXIgaXMgdGhlIGJldHRlciBsb2NhdGlvbiBmb3Ig
dGhpcyBjb25maWd1cmF0aW9uLAo+IGFzIHRoZSByZWdpc3RlciBsb2dpY2FsbHkgYmVsb25ncyB0
aGVyZSBhbmQgdGhlIGNvbnRyb2xsZXIgY2FuIHRlbGwKPiB3aGV0aGVyIHVzYjMgcGh5IGlzIGdv
aW5nIHRvIGJlIGluaXRpYWxpemVkLgo+IAo+IFRoYXQgaXMsIEknbSByZW1vdmluZyB0aGlzIHJl
Z2lzdGVyIHNwYWNlIGluIHRoZSBuZXh0IHBhdGNoLgoKWW91IGFyZSBtaXNzaW5nIHRoZSBwb2lu
dC4gV2hhdCBleGlzdHMgZnJvbSAweDBjNDUwMDIwLTJjIGFuZCAKMHgwYzQ1MDAwMC0weDE0IGZv
ciB0aGF0IG1hdHRlcj8gSGFyZHdhcmUgYmxvY2tzIGRvbid0IGp1c3Qgc3RhcnQgb24gCnVuYWxp
Z25lZCBib3VuZGFyaWVzIGxpa2UgMHgxNCBvciAweDJjLiBEVCBkZXNjcmliZXMgdGhlIGgvdyBi
bG9ja3MsIG5vdCAKanVzdCBub2RlcyBvZiB3aGF0IGEgZHJpdmVyIG5lZWRzLiBTbyBpZiB0aGUg
MHgyYyByZWdpc3RlciBuZWVkcyB0byBiZSAKYWNjZXNzZWQgYnkgdGhlIFVTQiBkcml2ZXIsIHRo
YXQncyBmaW5lLCBidXQgdGhlIHJlZ2lzdGVyIGRvZXNuJ3QgZ28gaW4gCnRoZSBVU0IgY29udHJv
bGxlciBub2RlICdyZWcnLiBBIHByb3BlcnR5IHdpdGggYSBwaGFuZGxlIHRvIHRoZSBub2RlIApk
ZWZpbmluZyBhbGwgdGhlIDB4MGM0NTAwMDAgcmVnaXN0ZXJzIGFuZCBhbiBvZmZzZXQgKGlmIG5l
ZWRlZCkgaXMgCnR5cGljYWxseSB3aGF0IHdlIGRvIHRoZXJlLiBPciB5b3UgY2FuIGp1c3QgZmlu
ZCB0aGF0IG5vZGUgYnkgCmNvbXBhdGlibGUuCgpSb2IKCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
