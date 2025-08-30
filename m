Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0722FCA0FF9
	for <linux-phy@archiver.kernel.org>; Sat, 30 Aug 2025 04:01:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gQn0EtObIxnH1Y/wDhSXo0RDW8D67UhiEm+SxNH/lAI=; b=0RYtq70y2bIYnj
	RMqlNVzc7nnALUnuJ9KraqGX3TSjKiDaEmo6wS5Zf/z/mB0iKAeJEzf27MT5n1tozjWw6tC920lrr
	3GX2v8tMfMA5T7/3S2RcW8ijKtqaP7n1X+opC9szlaETz6+QVzWEDMHR8VMapGaitEvgtxhdBV2Z7
	3CJgCqneESVTq380cLZPYxe/Zlt24p2HJzL9IF0mQQkrbpqk8sh5WwYTHWzqXYZ2SiYk/49HGkK2I
	EZFZ+OAI6KMPM32b/Decl2opFLdEIdkBHSs/Bmx8tvpq6zar1/o+NbSo+3PHg35JimQ/lYkmCvNG6
	UwnFFoJdJ0gdJPG2QsrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usCmg-00000007OxO-345W;
	Sat, 30 Aug 2025 04:01:46 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usCjv-00000007OkP-0eVo;
	Sat, 30 Aug 2025 03:58:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 9155F60191;
	Sat, 30 Aug 2025 03:58:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ABF6EC4CEEB;
	Sat, 30 Aug 2025 03:58:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756526334;
	bh=VABUD4jO9Kymnm8cj7uMAQ8AvocLC42Iebzpv/8ohiw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=knb/vVYf4lzqy+199q3lrWFfPdLUs3K4k2ZKF73nP9OEKi7V13ySggZQiv2/QnjKn
	 YATGK0Lmv/VQ9OpWMJLweUDUxXJrNz7qFfJMXHaKkNSVCB8SA5cbykG9MhYfHd4KBA
	 MjjMQ0SfPFwcJoz4Kpx7ZcO5ma6EzP76t1UHW37Fq+w/aeq9ValcipbntIFij7dNE5
	 K76xpi0EB9sVHWIiNteFgj6o55LbRmLuON7mGnck+00x2/Qp9qvuDEIY8mwPEk7jJR
	 ww4rvZWGxCeyCpaiJvC17/LAn0NToem0XETjxU3QuukDR03GcyUTjOTgZJOD6CjU02
	 wGM3SiHbl2QLw==
Date: Sat, 30 Aug 2025 09:28:44 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Shradha Todi <shradha.t@samsung.com>
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, lpieralisi@kernel.org, kwilczynski@kernel.org, robh@kernel.org, 
	bhelgaas@google.com, jingoohan1@gmail.com, krzk+dt@kernel.org, conor+dt@kernel.org, 
	alim.akhtar@samsung.com, vkoul@kernel.org, kishon@kernel.org, arnd@arndb.de, 
	m.szyprowski@samsung.com, jh80.chung@samsung.com, pankaj.dubey@samsung.com
Subject: Re: [PATCH v3 12/12] arm64: dts: fsd: Add PCIe support for Tesla FSD
 SoC
Message-ID: <dsa7u5pz7qmjaunzrqgpjkyv4xh427bbnpkdzvkpz3w6v6xf6v@5kxhihh4hw2j>
References: <20250811154638.95732-1-shradha.t@samsung.com>
 <CGME20250811154746epcas5p261ba0c811f9dd8748f8f241b76be6525@epcas5p2.samsung.com>
 <20250811154638.95732-13-shradha.t@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250811154638.95732-13-shradha.t@samsung.com>
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

T24gTW9uLCBBdWcgMTEsIDIwMjUgYXQgMDk6MTY6MzhQTSBHTVQsIFNocmFkaGEgVG9kaSB3cm90
ZToKPiBBZGQgdGhlIHN1cHBvcnQgZm9yIFBDSWUgY29udHJvbGxlciBkcml2ZXIgYW5kIHBoeSBk
cml2ZXIgZm9yIFRlc2xhIEZTRC4KPiBJdCBpbmNsdWRlcyBzdXBwb3J0IGZvciBib3RoIFJDIGFu
ZCBFUC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBQYW5rYWogRHViZXkgPHBhbmthai5kdWJleUBzYW1z
dW5nLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBTaHJhZGhhIFRvZGkgPHNocmFkaGEudEBzYW1zdW5n
LmNvbT4KPiAtLS0KPiAgYXJjaC9hcm02NC9ib290L2R0cy90ZXNsYS9mc2QtZXZiLmR0cyAgICAg
IHwgIDM0ICsrKysrCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvdGVzbGEvZnNkLXBpbmN0cmwuZHRz
aSB8ICA2NSArKysrKysrKysKPiAgYXJjaC9hcm02NC9ib290L2R0cy90ZXNsYS9mc2QuZHRzaSAg
ICAgICAgIHwgMTQ3ICsrKysrKysrKysrKysrKysrKysrKwo+ICAzIGZpbGVzIGNoYW5nZWQsIDI0
NiBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvdGVz
bGEvZnNkLWV2Yi5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Rlc2xhL2ZzZC1ldmIuZHRzCj4g
aW5kZXggOWZmMjJlMWM4NzIzLi4xYjYzYzVkNzJkMTkgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02
NC9ib290L2R0cy90ZXNsYS9mc2QtZXZiLmR0cwo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
dGVzbGEvZnNkLWV2Yi5kdHMKPiBAQCAtMTMwLDMgKzEzMCwzNyBAQCAmc2VyaWFsXzAgewo+ICAm
dWZzIHsKPiAgCXN0YXR1cyA9ICJva2F5IjsKPiAgfTsKPiArCj4gKyZwY2llcmMyIHsKCkl0J2Qg
YmUgZ29vZCB0byB1c2UgdW5kZXJzY29yZSB0byBkaWZmZXJlbnRpYXRlIFJDIGFuZCBFUCBtb2Rl
czoKCglwY2llX3JjMQoJcGNpZV9lcDEKCj4gKwlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+
ICsJcGluY3RybC0wID0gPCZwY2llMV9jbGtyZXE+LCA8JnBjaWUxX3dha2U+LCA8JnBjaWUxX3By
ZXNldD4sCj4gKwkJCTwmcGNpZTBfc2xvdDE+OwoKQ291bGQgeW91IHBsZWFzZSBleHBsYWluIHdo
YXQgdGhlc2UgJ3ByZXNldCcgYW5kICdzbG90JyBwaW5zIGFyZT8KCj4gK307Cj4gKwo+ICsmcGNp
ZWVwMiB7Cj4gKwlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ICsJcGluY3RybC0wID0gPCZw
Y2llMV9jbGtyZXE+LCA8JnBjaWUxX3dha2U+LCA8JnBjaWUxX3ByZXNldD4sCj4gKwkJCTwmcGNp
ZTBfc2xvdDE+Owo+ICt9Owo+ICsKPiArJnBjaWVyYzAgewo+ICsJcGluY3RybC1uYW1lcyA9ICJk
ZWZhdWx0IjsKPiArCXBpbmN0cmwtMCA9IDwmcGNpZTBfY2xrcmVxPiwgPCZwY2llMF93YWtlMD4s
IDwmcGNpZTBfcHJlc2V0MD4sCj4gKwkJCSA8JnBjaWUwX3Nsb3QwPjsKPiArfTsKPiArCj4gKyZw
Y2llZXAwIHsKPiArCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gKwlwaW5jdHJsLTAgPSA8
JnBjaWUwX2Nsa3JlcT4sIDwmcGNpZTBfd2FrZTA+LCA8JnBjaWUwX3ByZXNldDA+LAo+ICsJCQkg
PCZwY2llMF9zbG90MD47Cj4gK307Cj4gKwo+ICsmcGNpZXJjMSB7Cj4gKwlwaW5jdHJsLW5hbWVz
ID0gImRlZmF1bHQiOwo+ICsJcGluY3RybC0wID0gPCZwY2llMF9jbGtyZXE+LCA8JnBjaWUwX3dh
a2UxPiwgPCZwY2llMF9wcmVzZXQwPjsKPiArfTsKPiArCj4gKyZwY2llZXAxIHsKPiArCXBpbmN0
cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gKwlwaW5jdHJsLTAgPSA8JnBjaWUwX2Nsa3JlcT4sIDwm
cGNpZTBfd2FrZTE+LCA8JnBjaWUwX3ByZXNldDA+Owo+ICt9OwoKWy4uLl0KCj4gKwkJcGNpZWVw
MjogcGNpZS1lcEAxNTQwMDAwMCB7Cj4gKwkJCWNvbXBhdGlibGUgPSAidGVzbGEsZnNkLXBjaWUt
ZXAiOwo+ICsJCQlyZWcgPSA8MHgwIDB4MTUwOTAwMDAgMHgwIDB4MTAwMD4sCj4gKwkJCSAgICAg
IDwweDAgMHgxNTQwMDAwMCAweDAgMHgyMDAwPiwKPiArCQkJICAgICAgPDB4MCAweDE1NDAyMDAw
IDB4MCAweDgwPiwKPiArCQkJICAgICAgPDB4MCAweDE1ODAwMDAwIDB4MCAweGZmMDAwMD47Cj4g
KwkJCXJlZy1uYW1lcyA9ICJlbGJpIiwgImRiaSIsICJkYmkyIiwgImFkZHJfc3BhY2UiOwo+ICsJ
CQljbG9ja3MgPSA8JmNsb2NrX2ZzeXMwIFBDSUVfU1VCQ1RSTF9JTlNUMF9BVVhfQ0xLX1NPQz4s
Cj4gKwkJCQkgPCZjbG9ja19mc3lzMCBQQ0lFX1NVQkNUUkxfSU5TVDBfREJJX0FDTEtfU09DPiwK
PiArCQkJCSA8JmNsb2NrX2ZzeXMwIFBDSUVfU1VCQ1RSTF9JTlNUMF9NU1RSX0FDTEtfU09DPiwK
PiArCQkJCSA8JmNsb2NrX2ZzeXMwIFBDSUVfU1VCQ1RSTF9JTlNUMF9TTFZfQUNMS19TT0M+Owo+
ICsJCQljbG9jay1uYW1lcyA9ICJhdXgiLCAiZGJpIiwgIm1zdHIiLCAic2x2IjsKPiArCQkJbnVt
LWxhbmVzID0gPDQ+Owo+ICsJCQlwaHlzID0gPCZwY2llcGh5MD47Cj4gKwkJCXNhbXN1bmcsc3lz
Y29uLXBjaWUgPSA8JnN5c3JlZ19mc3lzMCAweDQzND47Cj4gKwkJCXN0YXR1cyA9ICJkaXNhYmxl
ZCI7CgpTbyBvbmx5IGhvc3QgbW9kZSBETUEgaXMgY2FjaGUgY29oZXJlbnQgYW5kIG5vdCBlbmRw
b2ludD8gV2VpcmQuCgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a
4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK
