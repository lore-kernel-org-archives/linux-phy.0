Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15379CF887B
	for <linux-phy@archiver.kernel.org>; Thu, 20 Nov 2025 15:28:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n8earuQr67C08NnoO33Q2kmleMVvjAlgKD/WTM9JUYw=; b=NRLhorCcNTXShN
	gt5BP5W8XCofg4gftpWbQFdhn4Qv2EBsxpIobMsdCOeT+fl9rRzlXKYEAxE8ZPT5KcbCETi5IHkH5
	nZTJYe4/sLDsMZkPgnZaB+2gL3wzr7nsbeMpa8c5vqG96VTrceQsyYR3kn4LbHwlGl1uDF3wCBClU
	GHCwa7DQ600chXp0XPx6F/QG/Gs3jBfLmpV/eGUooe8Yo05JpBEt9elRwL9KepgPHwJbffYepACMw
	3gp8mH6PQfWVHHmhPv8ojY9ljQi9UndLT6pDWwIQGJjxJ7xrN+HcsKflv2sHdO7lhimItu6FMCZ0i
	5YhRad8h8/SUUzbbjJvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM6aR-00000006umh-2aot;
	Thu, 20 Nov 2025 15:28:43 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM6aO-00000006ula-0TuO;
	Thu, 20 Nov 2025 15:28:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id BA094442CD;
	Thu, 20 Nov 2025 15:28:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A6A68C4CEF1;
	Thu, 20 Nov 2025 15:28:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763652519;
	bh=av02gv+HZPyHd+lIw8Xh7wER3k0Uka5SXi0z88gxPdo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=us4llj4X391VYU8sOmxwWHHr6n8k/hYwLXlgcz+nzomv7v/yeE+FiT65IYWIbAgx9
	 E3WOUcrMWSI5nuc6ZyTFcoN0rQJStQZ7jj3YcB5EzwnM9SgQNrrF3cTp2pgTU56adT
	 qY5/wBteX0BiewTsoMC6LFq5JKx/5lyeiGolcnXD2fY8OSms46Scsrxx/I6GTHCh4w
	 Q+ywHWt7pBT1aF4HfZVeOTsI2mVlnnUiyOPCn/2zNXDYgqt70Bi1vigQrviKy82t/R
	 Tfq9jc21NLFEJqyJGJi9TIuVjv5kfs6oyASQOLIQdp3xVyZdcwmnc2qV8d4CFOqhSN
	 2LxJGd8kQrtbQ==
Date: Thu, 20 Nov 2025 15:28:29 +0000
From: Lee Jones <lee@kernel.org>
To: patchwork-bot+netdevbpf@kernel.org
Cc: Sjoerd Simons <sjoerd@collabora.com>, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com, ryder.lee@mediatek.com,
	jianjun.wang@mediatek.com, bhelgaas@google.com,
	lpieralisi@kernel.org, kwilczynski@kernel.org, mani@kernel.org,
	chunfeng.yun@mediatek.com, vkoul@kernel.org, kishon@kernel.org,
	andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
	kuba@kernel.org, pabeni@redhat.com, lorenzo@kernel.org,
	nbd@nbd.name, kernel@collabora.com, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org, netdev@vger.kernel.org,
	daniel@makrotopia.org, bryan@bryanhinton.com,
	conor.dooley@microchip.com
Subject: Re: [PATCH v4 00/11] arm64: dts: mediatek: Add Openwrt One AP
 functionality
Message-ID: <20251120152829.GH661940@google.com>
References: <20251115-openwrt-one-network-v4-0-48cbda2969ac@collabora.com>
 <176360700676.1051457.11874224265724256534.git-patchwork-notify@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <176360700676.1051457.11874224265724256534.git-patchwork-notify@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251120_072840_193166_1AFC599D 
X-CRM114-Status: GOOD (  16.83  )
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

T24gVGh1LCAyMCBOb3YgMjAyNSwgcGF0Y2h3b3JrLWJvdCtuZXRkZXZicGZAa2VybmVsLm9yZyB3
cm90ZToKCj4gSGVsbG86Cj4gCj4gVGhpcyBzZXJpZXMgd2FzIGFwcGxpZWQgdG8gbmV0ZGV2L25l
dC1uZXh0LmdpdCAobWFpbikKPiBieSBKYWt1YiBLaWNpbnNraSA8a3ViYUBrZXJuZWwub3JnPjoK
PiAKPiBPbiBTYXQsIDE1IE5vdiAyMDI1IDIxOjU4OjAzICswMTAwIHlvdSB3cm90ZToKPiA+IFNp
Z25pZmljYW50IGNoYW5nZXMgaW4gVjQ6Cj4gPiAgICogRHJvcCBwYXRjaGVzIHRoYXQgd2VyZSBw
aWNrZWQgdXAKPiA+ICAgKiBJbXByb3ZlIG1lZGlhdGVrLG5ldCBkdCBiaW5kaW5nczoKPiA+ICAg
ICAtIE1vdmUgYmFjayB0byBWMiB2ZXJzaW9uICh3aWRlbmluZyBnbG9iYWwgY29uc3RyYWludCwg
Y29uc3RyYWluaW5nCj4gPiAgICAgICBwZXIgY29tcGF0aWJsZSkKPiA+ICAgICAtIEVuc3VyZSBh
bGwgY29tcGF0aWJsZXMgYXJlIGNvbnN0cmFpbnQgaW4gdGhlIGFtb3VudCBvZiBXRURzICgyIGZv
cgo+ID4gICAgICAgZXZlcnl0aGluZyBhcGFydCBmcm9tIG10Nzk4MSkuIFNwZWNpZmljYWxseSBh
ZGRpbmcgY29uc3RyYWludHMgZm9yCj4gPiAgICAgICBtZWRpYXRlayxtdDc2MjItZXRoIGFuZCBy
YWxpbmsscnQ1MzUwLWV0aAo+ID4gU2lnbmlmaWNhbnQgY2hhbmdlcyBpbiBWMzoKPiA+ICAgKiBE
cm9wIHBhdGNoZXMgdGhhdCB3ZXJlIHBpY2tlZCB1cAo+ID4gICAqIFJlLW9yZGVyIHBhdGNoZXMg
c28gY2hhbmdlcyB0aGF0IGRvbid0IHJlcXVpcmUgZHQgYmluZGluZyBjaGFuZ2VzCj4gPiAgICAg
Y29tZSBmaXJzdCAoUmVxdWVzdGVkIGJ5IEFuZ2VsbykKPiA+ICAgKiBTcGVjaWZ5IGRyaXZlIHBv
d2VyIGRpcmVjdGx5IHJhdGhlciB0aGVuIHVzaW5nIE1US19EUklWRV8uLi4KPiA+ICAgKiBTaW1w
bHkgbWVkaWF0ZWssbmV0IGJpbmRpbmcgY2hhbmdlcyB0byBhdm9pZCBhY2NpZGVudGFsIGNoYW5n
ZXMgdG8KPiA+ICAgICBvdGhlciBjb21wYXRpYmxlcyB0aGVuIG1lZGlhdGVrLG10Nzk4MS1ldGgK
PiA+IFNpZ25pZmljYW50IGNoYW5nZXMgaW4gVjI6Cj4gPiAgICogaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvbGttbC8yMDI1MTAxNi1vcGVud3J0LW9uZS1uZXR3b3JrLXYxLTAtZGUyNTk3MTliNmYy
QGNvbGxhYm9yYS5jb20vCj4gPiAgICogT25seSBpbnRyb2R1Y2UgbGFiZWxzIGluIG10Nzk4MWIu
ZHRzaSB3aGVuIHJlcXVpcmVkCj4gPiAgICogU3dpdGNoIEFpcm9oYSBFTjg4MTFIIHBoeSBpcnEg
dG8gbGV2ZWwgcmF0aGVyIHRoZW4gZWRnZSB0cmlnZ2VyZWQKPiA+ICAgKiBNb3ZlIHVhcnQwIHBp
bmN0cmwgZnJvbSBib2FyZCBkdHMgdG8gc29jIGR0c2kKPiA+ICAgKiBPbmx5IG92ZXJ3cml0ZSBj
b25zdHJhaW50cyB3aXRoIG5vbi1kZWZhdWx0IHZhbHVlcyBpbiBNVDc5ODEgYmluZGluZ3MKPiA+
ICAgKiBNYWtlIFNQSSBOT1IgbnZtZW0gY2VsbCBsYWJlbHMgbW9yZSBtZWFuaW5nZnVsbAo+ID4g
ICAqIFNlcGVyYXRlIGZpeGluZyBhbmQgZGlzYWJsZS1ieS1kZWZhdWx0IGZvciB0aGUgbXQ3OTgx
IGluIHNlcGVyYXRlCj4gPiAgICAgcGF0Y2hlcwo+ID4gCj4gPiBbLi4uXQo+IAo+IEhlcmUgaXMg
dGhlIHN1bW1hcnkgd2l0aCBsaW5rczoKPiAgIC0gW3Y0LDAxLzExXSBkdC1iaW5kaW5nczogbWZk
OiBzeXNjb246IEFkZCBtdDc5ODEtdG9wbWlzYwo+ICAgICAobm8gbWF0Y2hpbmcgY29tbWl0KQoK
SSB0aG91Z2h0IHRoaXMgZGF5cyBvZiBOZXQgcmFuZG9tbHkgcGlja2luZyB1cCBNRkQgcGF0Y2hl
cyB3ZXJlIGJlaGluZCB1cyEKCj4gICAtIFt2NCwwMi8xMV0gZHQtYmluZGluZ3M6IFBDSTogbWVk
aWF0ZWstZ2VuMzogQWRkIE1UNzk4MSBQQ0llIGNvbXBhdGlibGUKPiAgICAgKG5vIG1hdGNoaW5n
IGNvbW1pdCkKPiAgIC0gW3Y0LDAzLzExXSBkdC1iaW5kaW5nczogcGh5OiBtZWRpYXRlayx0cGh5
OiBBZGQgc3VwcG9ydCBmb3IgTVQ3OTgxCj4gICAgIChubyBtYXRjaGluZyBjb21taXQpCj4gICAt
IFt2NCwwNC8xMV0gYXJtNjQ6IGR0czogbWVkaWF0ZWs6IG10Nzk4MWI6IEFkZCBQQ0llIGFuZCBV
U0Igc3VwcG9ydAo+ICAgICAobm8gbWF0Y2hpbmcgY29tbWl0KQo+ICAgLSBbdjQsMDUvMTFdIGFy
bTY0OiBkdHM6IG1lZGlhdGVrOiBtdDc5ODFiLW9wZW53cnQtb25lOiBFbmFibGUgUENJZSBhbmQg
VVNCCj4gICAgIChubyBtYXRjaGluZyBjb21taXQpCj4gICAtIFt2NCwwNi8xMV0gZHQtYmluZGlu
Z3M6IG5ldDogbWVkaWF0ZWssbmV0OiBDb3JyZWN0IGJpbmRpbmdzIGZvciBNVDc5ODEKPiAgICAg
aHR0cHM6Ly9naXQua2VybmVsLm9yZy9uZXRkZXYvbmV0LW5leHQvYy9iYzQxZmJiZjZmYWEKPiAg
IC0gW3Y0LDA3LzExXSBhcm02NDogZHRzOiBtZWRpYXRlazogbXQ3OTgxYjogQWRkIEV0aGVybmV0
IGFuZCBXaUZpIG9mZmxvYWQgc3VwcG9ydAo+ICAgICAobm8gbWF0Y2hpbmcgY29tbWl0KQo+ICAg
LSBbdjQsMDgvMTFdIGFybTY0OiBkdHM6IG1lZGlhdGVrOiBtdDc5ODFiLW9wZW53cnQtb25lOiBF
bmFibGUgRXRoZXJuZXQKPiAgICAgKG5vIG1hdGNoaW5nIGNvbW1pdCkKPiAgIC0gW3Y0LDA5LzEx
XSBhcm02NDogZHRzOiBtZWRpYXRlazogbXQ3OTgxYjogRGlzYWJsZSB3aWZpIGJ5IGRlZmF1bHQK
PiAgICAgKG5vIG1hdGNoaW5nIGNvbW1pdCkKPiAgIC0gW3Y0LDEwLzExXSBhcm02NDogZHRzOiBt
ZWRpYXRlazogbXQ3OTgxYjogQWRkIHdpZmkgbWVtb3J5IHJlZ2lvbgo+ICAgICAobm8gbWF0Y2hp
bmcgY29tbWl0KQo+ICAgLSBbdjQsMTEvMTFdIGFybTY0OiBkdHM6IG1lZGlhdGVrOiBtdDc5ODFi
LW9wZW53cnQtb25lOiBFbmFibGUgd2lmaQo+ICAgICAobm8gbWF0Y2hpbmcgY29tbWl0KQo+IAo+
IFlvdSBhcmUgYXdlc29tZSwgdGhhbmsgeW91IQo+IC0tIAo+IERlZXQtZG9vdC1kb3QsIEkgYW0g
YSBib3QuCj4gaHR0cHM6Ly9rb3JnLmRvY3Mua2VybmVsLm9yZy9wYXRjaHdvcmsvcHdib3QuaHRt
bAo+IAo+IAoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
