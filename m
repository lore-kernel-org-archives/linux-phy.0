Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87735C71157
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jun 2025 17:13:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vUQjJgFL1tEbwNh6C4t+23aMfsD/u4j3ruicNeOHu4o=; b=AZH7LZGIkWnWw3
	zjDw1GQxKQUQrZZDG7KnEYesUjjUYC1bdNoKW5FzOwWqqrLNo6pmAPO61+7x4hHj/chh4rU1v3PLG
	EXFWjsE0YVuRmAWeJJHomceePA9D3DsnYAWON7//DWBrJCBynlHIjgbmeJdtbBsZMlWKlCPzyy+ZA
	6lnNpMYXyPDbzL/iGLHyNOmhPzKW9ocUxij6saZH1uQG+wFF0yt/XvS82nputLAW6RlmAqNUsWhFX
	w/JN2Jp9r3Cl0jGz8wg9HHtF4Qo2TXs7knyOfx6sHTbOLPhkZ+7Z7fd4xCBf2mtHgiDxr4WiX1lwN
	+qOcvjfR8siKIK5e/HWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRZrp-000000080gL-0yrD;
	Tue, 17 Jun 2025 17:13:01 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRZII-00000007tU8-2F1y
	for linux-phy@lists.infradead.org;
	Tue, 17 Jun 2025 16:36:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id C0F5CA516D5;
	Tue, 17 Jun 2025 16:36:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AF174C4CEE3;
	Tue, 17 Jun 2025 16:36:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750178177;
	bh=bq8mzeX0QkCOdRY4fhxPAU9SH5SZwaXWZhjNFAv43gs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Zp8cBVGBL3B7+cVLlo2sXCfehRHKX6KHdfgcdm52sZWDHm3d2bqwLjHjaDxfEaNXm
	 l7jhkEsQVj8Q3KbPueqKqAr6t6RLD5OJsbqJ/3nprw/okGoLjvk0sHm235aySHiYsm
	 aWNWSx+G0UhiZQka+dGBUoZX0ov4lmojIL8eB0VAvxupjPqRM/4tCliFQPDTvsv9GA
	 776WBqzY8WjltACyLYjmf+uqjy0lxPqaQC0t6h+7HxFp+S4jfKzSsOsX8ck1Ic34iS
	 gz/PZIPYTB76w8IKanxrF07tctZIgmI9lE4KqMUFp8POu+vlzmRPTjE2vRYclJ6t9I
	 sJywAxqR/iwyA==
Date: Tue, 17 Jun 2025 22:06:05 +0530
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
Message-ID: <axcfeisgtkhnpoayj4zpn4sy237xz6udk2qzm62qk4nfxcica3@behrkpyuarb2>
References: <20250527072036.3599076-1-quic_ziyuzhan@quicinc.com>
 <20250527072036.3599076-4-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250527072036.3599076-4-quic_ziyuzhan@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_093618_700367_23373EBB 
X-CRM114-Status: GOOD (  12.44  )
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
YW5nIDxxdWljX3ppeXV6aGFuQHF1aWNpbmMuY29tPgo+IC0tLQo+ICBhcmNoL2FybTY0L2Jvb3Qv
ZHRzL3Fjb20vcWNzNjE1LmR0c2kgfCAxNDYgKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4g
IDEgZmlsZSBjaGFuZ2VkLCAxNDYgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL3Fjb20vcWNzNjE1LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fj
b20vcWNzNjE1LmR0c2kKPiBpbmRleCBiYjhiNmMzZWJkMDMuLjBhZjc1N2M0NWViMiAxMDA2NDQK
PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vcWNzNjE1LmR0c2kKPiArKysgYi9hcmNo
L2FybTY0L2Jvb3QvZHRzL3Fjb20vcWNzNjE1LmR0c2kKPiBAQCAtMTAxMiw2ICsxMDEyLDE1MiBA
QCBtbXNzX25vYzogaW50ZXJjb25uZWN0QDE3NDAwMDAgewo+ICAJCQlxY29tLGJjbS12b3RlcnMg
PSA8JmFwcHNfYmNtX3ZvdGVyPjsKPiAgCQl9Owo+ICAKPiArCQlwY2llOiBwY2llQDFjMDgwMDAg
ewo+ICsJCQlkZXZpY2VfdHlwZSA9ICJwY2kiOwo+ICsJCQljb21wYXRpYmxlID0gInFjb20scGNp
ZS1xY3M2MTUiLCAicWNvbSxwY2llLXNtODE1MCI7Cj4gKwkJCXJlZyA9IDwweDAgMHgwMWMwODAw
MCAweDAgMHgzMDAwPiwKPiArCQkJICAgICAgPDB4MCAweDQwMDAwMDAwIDB4MCAweGYxZD4sCj4g
KwkJCSAgICAgIDwweDAgMHg0MDAwMGYyMCAweDAgMHhhOD4sCj4gKwkJCSAgICAgIDwweDAgMHg0
MDAwMTAwMCAweDAgMHgxMDAwPiwKPiArCQkJICAgICAgPDB4MCAweDQwMTAwMDAwIDB4MCAweDEw
MDAwMD4sCj4gKwkJCSAgICAgIDwweDAgMHgwMWMwYjAwMCAweDAgMHgxMDAwPjsKPiArCQkJcmVn
LW5hbWVzID0gInBhcmYiLAo+ICsJCQkJICAgICJkYmkiLAo+ICsJCQkJICAgICJlbGJpIiwKPiAr
CQkJCSAgICAiYXR1IiwKPiArCQkJCSAgICAiY29uZmlnIiwKPiArCQkJCSAgICAibWhpIjsKPiAr
CQkJI2FkZHJlc3MtY2VsbHMgPSA8Mz47Cj4gKwkJCSNzaXplLWNlbGxzID0gPDI+Owo+ICsJCQly
YW5nZXMgPSA8MHgwMTAwMDAwMCAweDAgMHgwMDAwMDAwMCAweDAgMHg0MDIwMDAwMCAweDAgMHgx
MDAwMDA+LAo+ICsJCQkJIDwweDAyMDAwMDAwIDB4MCAweDQwMzAwMDAwIDB4MCAweDQwMzAwMDAw
IDB4MCAweDFmZDAwMDAwPjsKPiArCQkJYnVzLXJhbmdlID0gPDB4MDAgMHhmZj47Cj4gKwo+ICsJ
CQlkbWEtY29oZXJlbnQ7Cj4gKwo+ICsJCQlsaW51eCxwY2ktZG9tYWluID0gPDA+Owo+ICsJCQlu
dW0tbGFuZXMgPSA8MT47Cj4gKwo+ICsJCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMTQxIElSUV9U
WVBFX0xFVkVMX0hJR0g+LAo+ICsJCQkJICAgICA8R0lDX1NQSSAxNDIgSVJRX1RZUEVfTEVWRUxf
SElHSD4sCj4gKwkJCQkgICAgIDxHSUNfU1BJIDE0MyBJUlFfVFlQRV9MRVZFTF9ISUdIPiwKPiAr
CQkJCSAgICAgPEdJQ19TUEkgMTQ0IElSUV9UWVBFX0xFVkVMX0hJR0g+LAo+ICsJCQkJICAgICA8
R0lDX1NQSSAxNDUgSVJRX1RZUEVfTEVWRUxfSElHSD4sCj4gKwkJCQkgICAgIDxHSUNfU1BJIDE0
NiBJUlFfVFlQRV9MRVZFTF9ISUdIPiwKPiArCQkJCSAgICAgPEdJQ19TUEkgMTQ3IElSUV9UWVBF
X0xFVkVMX0hJR0g+LAo+ICsJCQkJICAgICA8R0lDX1NQSSAxNDggSVJRX1RZUEVfTEVWRUxfSElH
SD4sCj4gKwkJCQkgICAgIDxHSUNfU1BJIDE0MCBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKPiArCQkJ
aW50ZXJydXB0LW5hbWVzID0gIm1zaTAiLAo+ICsJCQkJCSAgIm1zaTEiLAo+ICsJCQkJCSAgIm1z
aTIiLAo+ICsJCQkJCSAgIm1zaTMiLAo+ICsJCQkJCSAgIm1zaTQiLAo+ICsJCQkJCSAgIm1zaTUi
LAo+ICsJCQkJCSAgIm1zaTYiLAo+ICsJCQkJCSAgIm1zaTciLAo+ICsJCQkJCSAgImdsb2JhbCI7
Cj4gKwo+ICsJCQkjaW50ZXJydXB0LWNlbGxzID0gPDE+Owo+ICsJCQlpbnRlcnJ1cHQtbWFwLW1h
c2sgPSA8MCAwIDAgMHg3PjsKPiArCQkJaW50ZXJydXB0LW1hcCA9IDwwIDAgMCAxICZpbnRjIEdJ
Q19TUEkgMTQ5IElSUV9UWVBFX0xFVkVMX0hJR0g+LAo+ICsJCQkJCTwwIDAgMCAyICZpbnRjIEdJ
Q19TUEkgMTUwIElSUV9UWVBFX0xFVkVMX0hJR0g+LAo+ICsJCQkJCTwwIDAgMCAzICZpbnRjIEdJ
Q19TUEkgMTUxIElSUV9UWVBFX0xFVkVMX0hJR0g+LAo+ICsJCQkJCTwwIDAgMCA0ICZpbnRjIEdJ
Q19TUEkgMTUyIElSUV9UWVBFX0xFVkVMX0hJR0g+Owo+ICsKPiArCQkJY2xvY2tzID0gPCZnY2Mg
R0NDX1BDSUVfMF9QSVBFX0NMSz4sCj4gKwkJCQkgPCZnY2MgR0NDX1BDSUVfMF9BVVhfQ0xLPiwK
PiArCQkJCSA8JmdjYyBHQ0NfUENJRV8wX0NGR19BSEJfQ0xLPiwKPiArCQkJCSA8JmdjYyBHQ0Nf
UENJRV8wX01TVFJfQVhJX0NMSz4sCj4gKwkJCQkgPCZnY2MgR0NDX1BDSUVfMF9TTFZfQVhJX0NM
Sz4sCj4gKwkJCQkgPCZnY2MgR0NDX1BDSUVfMF9TTFZfUTJBX0FYSV9DTEs+Owo+ICsJCQljbG9j
ay1uYW1lcyA9ICJwaXBlIiwKPiArCQkJCSAgICAgICJhdXgiLAo+ICsJCQkJICAgICAgImNmZyIs
Cj4gKwkJCQkgICAgICAiYnVzX21hc3RlciIsCj4gKwkJCQkgICAgICAiYnVzX3NsYXZlIiwKPiAr
CQkJCSAgICAgICJzbGF2ZV9xMmEiOwo+ICsJCQlhc3NpZ25lZC1jbG9ja3MgPSA8JmdjYyBHQ0Nf
UENJRV8wX0FVWF9DTEs+Owo+ICsJCQlhc3NpZ25lZC1jbG9jay1yYXRlcyA9IDwxOTIwMDAwMD47
Cj4gKwo+ICsJCQlpbnRlcmNvbm5lY3RzID0gPCZhZ2dyZTFfbm9jIE1BU1RFUl9QQ0lFIFFDT01f
SUNDX1RBR19BTFdBWVMKPiArCQkJCQkgJm1jX3ZpcnQgU0xBVkVfRUJJMSBRQ09NX0lDQ19UQUdf
QUxXQVlTPiwKPiArCQkJCQk8JmdlbV9ub2MgTUFTVEVSX0FQUFNTX1BST0MgUUNPTV9JQ0NfVEFH
X0FDVElWRV9PTkxZCj4gKwkJCQkJICZjb25maWdfbm9jIFNMQVZFX1BDSUVfMCBRQ09NX0lDQ19U
QUdfQUNUSVZFX09OTFk+Owo+ICsJCQlpbnRlcmNvbm5lY3QtbmFtZXMgPSAicGNpZS1tZW0iLCAi
Y3B1LXBjaWUiOwo+ICsKPiArCQkJaW9tbXUtbWFwID0gPDB4MCAmYXBwc19zbW11IDB4NDAwIDB4
MT4sCj4gKwkJCQkgICAgPDB4MTAwICZhcHBzX3NtbXUgMHg0MDEgMHgxPjsKPiArCj4gKwkJCXJl
c2V0cyA9IDwmZ2NjIEdDQ19QQ0lFXzBfQkNSPjsKPiArCQkJcmVzZXQtbmFtZXMgPSAicGNpIjsK
PiArCj4gKwkJCXBvd2VyLWRvbWFpbnMgPSA8JmdjYyBQQ0lFXzBfR0RTQz47Cj4gKwo+ICsJCQlw
aHlzID0gPCZwY2llX3BoeT47Cj4gKwkJCXBoeS1uYW1lcyA9ICJwY2llcGh5IjsKPiArCj4gKwkJ
CWVxLXByZXNldHMtOGd0cyA9IC9iaXRzLyAxNiA8MHg1NTU1IDB4NTU1NSAweDU1NTUgMHg1NTU1
Cj4gKwkJCQkJCSAgICAgMHg1NTU1IDB4NTU1NSAweDU1NTUgMHg1NTU1PjsKPiArCj4gKwkJCW9w
ZXJhdGluZy1wb2ludHMtdjIgPSA8JnBjaWVfb3BwX3RhYmxlPjsKPiArCj4gKwkJCXN0YXR1cyA9
ICJkaXNhYmxlZCI7Cj4gKwoKUGxlYXNlIGRlZmluZSB0aGUgUENJZSBicmlkZ2Ugbm9kZSBhbHNv
LgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCu
v+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
