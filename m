Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BEB23C71136
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jun 2025 17:12:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lpStzl0ZtrJ+0ysZKph88E58O38bvyoBZA/c5IgAfJc=; b=AeNu6JDM0MWR0D
	+/H7XqA+++A+f8UsDjrk4aELKY8aKRWG6LSl5nt3u3JHDmlLt++mVwsHhMzNrbDQtSejeJ6bOS0t0
	N0E10DB70/fLKOPKlwWIIKcbMzyvqqfTUGCwddN8MjG9jeAHYCsJvK1ntzGOjOO4yQdaIzOOuE+cC
	vy+yk/GeuovZyAwYiN/7ip3XQ0e2Zg6vq3xZ1aMf5AuYfePEQuZ50IK6d25ZvBtJPn9vE1SFhQdPY
	00JIHrcsEalI4cEmSANQMe/8ypZhBGbsPSTofVa3xn9S2CGYOGHQhuwl185GzDW/DDtlz6GSpip7K
	fFFEAB0v3hDXKTiyM8Fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRZrj-000000080XF-44hm;
	Tue, 17 Jun 2025 17:12:56 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRZC7-00000007shl-3rgq
	for linux-phy@lists.infradead.org;
	Tue, 17 Jun 2025 16:29:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 89228629C4;
	Tue, 17 Jun 2025 16:29:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DEB7EC4CEE3;
	Tue, 17 Jun 2025 16:29:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750177793;
	bh=Sim24rciNtz/Wry2ODSA5yojtk7s24lHZdR/z+Qzrog=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EUJoeQzaXry11MAz7rGgpvqUAddhmgYi6Xaq2R5YAI69Wf0gmqyv337PH95c/BQ9P
	 jQrrFM4yIbU1CNz+ed+cE9w3Gm0T27GE8/N5l3PdPd6PFwP+1aKL0y+sySb3kTxPkh
	 gB3XKjl0tXAChqWuELQtEwh7vBWKdhUM5cDsSYRZ7yqK85lDoC+naiF8hEJHE8rDiR
	 hFxTqNwP8aeI3vxZWoztB5c7VXeZ8+9raKA/Pt+NjhP1PnbzkMSF8ba61m+lf9o0Vk
	 ELwtOjFnepf3gYxeRcPc6q04b3plB5NXdwRt2EBjqc9ZSibzP4pNPmtcvQgdYj3YZR
	 YsEeJCYsOuL+Q==
Date: Tue, 17 Jun 2025 21:59:41 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: lpieralisi@kernel.org, kwilczynski@kernel.org, 
	manivannan.sadhasivam@linaro.org, robh@kernel.org, bhelgaas@google.com, krzk+dt@kernel.org, 
	neil.armstrong@linaro.org, abel.vesa@linaro.org, kw@linux.com, conor+dt@kernel.org, 
	vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org, konradybcio@kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, quic_qianyu@quicinc.com, 
	quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
Subject: Re: [PATCH v5 3/4] arm64: dts: qcom: qcs615: enable pcie
Message-ID: <lvquxxmdoom7pax6pf57cpdigwlwfbnxwqs5bverwdfopafqvc@qufo2bzyjilg>
References: <20250527072036.3599076-1-quic_ziyuzhan@quicinc.com>
 <20250527072036.3599076-4-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250527072036.3599076-4-quic_ziyuzhan@quicinc.com>
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

T24gVHVlLCBNYXkgMjcsIDIwMjUgYXQgMDM6MjA6MzVQTSArMDgwMCwgWml5dWUgWmhhbmcgd3Jv
dGU6Cj4gRnJvbTogS3Jpc2huYSBjaGFpdGFueWEgY2h1bmRydSA8cXVpY19rcmljaGFpQHF1aWNp
bmMuY29tPgo+IAo+IEFkZCBjb25maWd1cmF0aW9ucyBpbiBkZXZpY2V0cmVlIGZvciBQQ0llMCwg
aW5jbHVkaW5nIHJlZ2lzdGVycywgY2xvY2tzLAo+IGludGVycnVwdHMgYW5kIHBoeSBzZXR0aW5n
IHNlcXVlbmNlLgo+IAo+IEFkZCBQQ0llIGxhbmUgZXF1YWxpemF0aW9uIHByZXNldCBwcm9wZXJ0
aWVzIGZvciA4IEdUL3MuCj4gCj4gU2lnbmVkLW9mZi1ieTogS3Jpc2huYSBjaGFpdGFueWEgY2h1
bmRydSA8cXVpY19rcmljaGFpQHF1aWNpbmMuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFppeXVlIFpo
YW5nIDxxdWljX3ppeXV6aGFuQHF1aWNpbmMuY29tPgoKUmV2aWV3ZWQtYnk6IE1hbml2YW5uYW4g
U2FkaGFzaXZhbSA8bWFuaUBrZXJuZWwub3JnPgoKT25lIGNvbW1lbnQgYmVsb3cuCgo+IC0tLQo+
ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vcWNzNjE1LmR0c2kgfCAxNDYgKysrKysrKysrKysr
KysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAxNDYgaW5zZXJ0aW9ucygrKQo+IAo+
IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vcWNzNjE1LmR0c2kgYi9hcmNo
L2FybTY0L2Jvb3QvZHRzL3Fjb20vcWNzNjE1LmR0c2kKPiBpbmRleCBiYjhiNmMzZWJkMDMuLjBh
Zjc1N2M0NWViMiAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vcWNzNjE1
LmR0c2kKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vcWNzNjE1LmR0c2kKPiBAQCAt
MTAxMiw2ICsxMDEyLDE1MiBAQCBtbXNzX25vYzogaW50ZXJjb25uZWN0QDE3NDAwMDAgewo+ICAJ
CQlxY29tLGJjbS12b3RlcnMgPSA8JmFwcHNfYmNtX3ZvdGVyPjsKPiAgCQl9Owo+ICAKPiArCQlw
Y2llOiBwY2llQDFjMDgwMDAgewo+ICsJCQlkZXZpY2VfdHlwZSA9ICJwY2kiOwo+ICsJCQljb21w
YXRpYmxlID0gInFjb20scGNpZS1xY3M2MTUiLCAicWNvbSxwY2llLXNtODE1MCI7Cj4gKwkJCXJl
ZyA9IDwweDAgMHgwMWMwODAwMCAweDAgMHgzMDAwPiwKPiArCQkJICAgICAgPDB4MCAweDQwMDAw
MDAwIDB4MCAweGYxZD4sCj4gKwkJCSAgICAgIDwweDAgMHg0MDAwMGYyMCAweDAgMHhhOD4sCj4g
KwkJCSAgICAgIDwweDAgMHg0MDAwMTAwMCAweDAgMHgxMDAwPiwKPiArCQkJICAgICAgPDB4MCAw
eDQwMTAwMDAwIDB4MCAweDEwMDAwMD4sCj4gKwkJCSAgICAgIDwweDAgMHgwMWMwYjAwMCAweDAg
MHgxMDAwPjsKPiArCQkJcmVnLW5hbWVzID0gInBhcmYiLAo+ICsJCQkJICAgICJkYmkiLAo+ICsJ
CQkJICAgICJlbGJpIiwKPiArCQkJCSAgICAiYXR1IiwKPiArCQkJCSAgICAiY29uZmlnIiwKPiAr
CQkJCSAgICAibWhpIjsKPiArCQkJI2FkZHJlc3MtY2VsbHMgPSA8Mz47Cj4gKwkJCSNzaXplLWNl
bGxzID0gPDI+Owo+ICsJCQlyYW5nZXMgPSA8MHgwMTAwMDAwMCAweDAgMHgwMDAwMDAwMCAweDAg
MHg0MDIwMDAwMCAweDAgMHgxMDAwMDA+LAo+ICsJCQkJIDwweDAyMDAwMDAwIDB4MCAweDQwMzAw
MDAwIDB4MCAweDQwMzAwMDAwIDB4MCAweDFmZDAwMDAwPjsKPiArCQkJYnVzLXJhbmdlID0gPDB4
MDAgMHhmZj47Cj4gKwo+ICsJCQlkbWEtY29oZXJlbnQ7Cj4gKwo+ICsJCQlsaW51eCxwY2ktZG9t
YWluID0gPDA+Owo+ICsJCQludW0tbGFuZXMgPSA8MT47Cj4gKwo+ICsJCQlpbnRlcnJ1cHRzID0g
PEdJQ19TUEkgMTQxIElSUV9UWVBFX0xFVkVMX0hJR0g+LAo+ICsJCQkJICAgICA8R0lDX1NQSSAx
NDIgSVJRX1RZUEVfTEVWRUxfSElHSD4sCj4gKwkJCQkgICAgIDxHSUNfU1BJIDE0MyBJUlFfVFlQ
RV9MRVZFTF9ISUdIPiwKPiArCQkJCSAgICAgPEdJQ19TUEkgMTQ0IElSUV9UWVBFX0xFVkVMX0hJ
R0g+LAo+ICsJCQkJICAgICA8R0lDX1NQSSAxNDUgSVJRX1RZUEVfTEVWRUxfSElHSD4sCj4gKwkJ
CQkgICAgIDxHSUNfU1BJIDE0NiBJUlFfVFlQRV9MRVZFTF9ISUdIPiwKPiArCQkJCSAgICAgPEdJ
Q19TUEkgMTQ3IElSUV9UWVBFX0xFVkVMX0hJR0g+LAo+ICsJCQkJICAgICA8R0lDX1NQSSAxNDgg
SVJRX1RZUEVfTEVWRUxfSElHSD4sCj4gKwkJCQkgICAgIDxHSUNfU1BJIDE0MCBJUlFfVFlQRV9M
RVZFTF9ISUdIPjsKPiArCQkJaW50ZXJydXB0LW5hbWVzID0gIm1zaTAiLAo+ICsJCQkJCSAgIm1z
aTEiLAo+ICsJCQkJCSAgIm1zaTIiLAo+ICsJCQkJCSAgIm1zaTMiLAo+ICsJCQkJCSAgIm1zaTQi
LAo+ICsJCQkJCSAgIm1zaTUiLAo+ICsJCQkJCSAgIm1zaTYiLAo+ICsJCQkJCSAgIm1zaTciLAo+
ICsJCQkJCSAgImdsb2JhbCI7Cj4gKwo+ICsJCQkjaW50ZXJydXB0LWNlbGxzID0gPDE+Owo+ICsJ
CQlpbnRlcnJ1cHQtbWFwLW1hc2sgPSA8MCAwIDAgMHg3PjsKPiArCQkJaW50ZXJydXB0LW1hcCA9
IDwwIDAgMCAxICZpbnRjIEdJQ19TUEkgMTQ5IElSUV9UWVBFX0xFVkVMX0hJR0g+LAo+ICsJCQkJ
CTwwIDAgMCAyICZpbnRjIEdJQ19TUEkgMTUwIElSUV9UWVBFX0xFVkVMX0hJR0g+LAo+ICsJCQkJ
CTwwIDAgMCAzICZpbnRjIEdJQ19TUEkgMTUxIElSUV9UWVBFX0xFVkVMX0hJR0g+LAo+ICsJCQkJ
CTwwIDAgMCA0ICZpbnRjIEdJQ19TUEkgMTUyIElSUV9UWVBFX0xFVkVMX0hJR0g+Owo+ICsKPiAr
CQkJY2xvY2tzID0gPCZnY2MgR0NDX1BDSUVfMF9QSVBFX0NMSz4sCj4gKwkJCQkgPCZnY2MgR0ND
X1BDSUVfMF9BVVhfQ0xLPiwKPiArCQkJCSA8JmdjYyBHQ0NfUENJRV8wX0NGR19BSEJfQ0xLPiwK
PiArCQkJCSA8JmdjYyBHQ0NfUENJRV8wX01TVFJfQVhJX0NMSz4sCj4gKwkJCQkgPCZnY2MgR0ND
X1BDSUVfMF9TTFZfQVhJX0NMSz4sCj4gKwkJCQkgPCZnY2MgR0NDX1BDSUVfMF9TTFZfUTJBX0FY
SV9DTEs+Owo+ICsJCQljbG9jay1uYW1lcyA9ICJwaXBlIiwKPiArCQkJCSAgICAgICJhdXgiLAo+
ICsJCQkJICAgICAgImNmZyIsCj4gKwkJCQkgICAgICAiYnVzX21hc3RlciIsCj4gKwkJCQkgICAg
ICAiYnVzX3NsYXZlIiwKPiArCQkJCSAgICAgICJzbGF2ZV9xMmEiOwo+ICsJCQlhc3NpZ25lZC1j
bG9ja3MgPSA8JmdjYyBHQ0NfUENJRV8wX0FVWF9DTEs+Owo+ICsJCQlhc3NpZ25lZC1jbG9jay1y
YXRlcyA9IDwxOTIwMDAwMD47Cj4gKwo+ICsJCQlpbnRlcmNvbm5lY3RzID0gPCZhZ2dyZTFfbm9j
IE1BU1RFUl9QQ0lFIFFDT01fSUNDX1RBR19BTFdBWVMKPiArCQkJCQkgJm1jX3ZpcnQgU0xBVkVf
RUJJMSBRQ09NX0lDQ19UQUdfQUxXQVlTPiwKPiArCQkJCQk8JmdlbV9ub2MgTUFTVEVSX0FQUFNT
X1BST0MgUUNPTV9JQ0NfVEFHX0FDVElWRV9PTkxZCj4gKwkJCQkJICZjb25maWdfbm9jIFNMQVZF
X1BDSUVfMCBRQ09NX0lDQ19UQUdfQUNUSVZFX09OTFk+Owo+ICsJCQlpbnRlcmNvbm5lY3QtbmFt
ZXMgPSAicGNpZS1tZW0iLCAiY3B1LXBjaWUiOwo+ICsKPiArCQkJaW9tbXUtbWFwID0gPDB4MCAm
YXBwc19zbW11IDB4NDAwIDB4MT4sCj4gKwkJCQkgICAgPDB4MTAwICZhcHBzX3NtbXUgMHg0MDEg
MHgxPjsKPiArCj4gKwkJCXJlc2V0cyA9IDwmZ2NjIEdDQ19QQ0lFXzBfQkNSPjsKPiArCQkJcmVz
ZXQtbmFtZXMgPSAicGNpIjsKPiArCj4gKwkJCXBvd2VyLWRvbWFpbnMgPSA8JmdjYyBQQ0lFXzBf
R0RTQz47Cj4gKwo+ICsJCQlwaHlzID0gPCZwY2llX3BoeT47Cj4gKwkJCXBoeS1uYW1lcyA9ICJw
Y2llcGh5IjsKPiArCj4gKwkJCWVxLXByZXNldHMtOGd0cyA9IC9iaXRzLyAxNiA8MHg1NTU1IDB4
NTU1NSAweDU1NTUgMHg1NTU1Cj4gKwkJCQkJCSAgICAgMHg1NTU1IDB4NTU1NSAweDU1NTUgMHg1
NTU1PjsKCkRvIHlvdSByZWFsbHkgbmVlZCB0byBzZXQgdGhlIHByZXNldHMgZm9yIHRoaXMgU29D
PyBKdXN0IG1ha2luZyBzdXJlIHRoYXQgaXQgaXMKbm90IHJhbmRvbWx5IGNvcGllZCBmcm9tIG90
aGVyIERUUyB3aXRob3V0IHB1cnBvc2UuCgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43g
rqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
