Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 839E2CCF9F8
	for <linux-phy@archiver.kernel.org>; Fri,  7 Nov 2025 11:44:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u7PGPNT/lJu5XwGxJFnzU4ed1dVRXk9g72q8L7xHn+Y=; b=o1QP+kkcf9DgGX
	OC0SY8Wqj4FhlGQ/YwYznGHJ9HdHiJzriHanD7jAH50T9C7webBC9A7dJ5ntJ+yVM24U9GZD9SYY3
	HLjItEx0CGyy4D44zWZ7IBgs7dtfXVXQpBB65HEvOR65FiXaprPSrCjrremVpXIty8ZnN5y/6qr4s
	gkBn12vhhIEHB46sKleYFYldYiXbJEHxw9mJKhE4I37WNPuL27pWlKaa2bq/OfwPfOHfkhY2v91sh
	A1bTpKRXdzpMLbl3sLs0JJR+4jZa0hIIdGM/WhquFoHUTASte6qhQLsxs0WTrJBpBpSkNzA9H2e8Q
	ZH+mUZj7YDN/el+X5oPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHKtM-0000000HE4U-0fqQ;
	Fri, 07 Nov 2025 11:44:32 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHKtL-0000000HE4D-17HD
	for linux-phy@bombadil.infradead.org;
	Fri, 07 Nov 2025 11:44:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=XFx5vGAhkz2uuhx6AcJBnHB5TmmETwQ8GS3PFDBvsZw=; b=W00XoTpIhBfQtA95FbVAkm/f7p
	payF8adl0a0+BnqnfJ2mf0LcXnzdfIIyEmswHy+xtzUbropHjsbMyI3nys8sqr75xKlUeIhd5cHWh
	CXfcgvj9NhbXO688TeebyGuuaWqtShNcd1HmRKukUdyLLYNop2zblU+IGV/16fZ+FlykxGl/dS8pi
	m/A1lDZrrE8JizB4hQlxrqutlmSets74Hsjnod353OEkQtMYU7nwyXs+9Q6ptgRFCwrA03KTylE/t
	LrUF1fLj6aCmJn1c1XL6z0Cavzy9sCJ5z7KWs1hAMhjSYyf70TFpLw5iQF9Pg5LM9X36dxfCkkQCx
	BVhN0sMg==;
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHK1b-00000006JUx-02nq
	for linux-phy@lists.infradead.org;
	Fri, 07 Nov 2025 10:49:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id C024B43219;
	Fri,  7 Nov 2025 11:44:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D327C116C6;
	Fri,  7 Nov 2025 11:44:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762515863;
	bh=r8/pj/KN/8+FilylEfrnzaY5pwZnIr6KxYsofkXqxZo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nAsxCuXaRteTRWHGbVHTxWsDXv1YsNKTjT28AknYUqskWJp++FB1hmHft5i2H4kZw
	 M6GQ8SA0os6BdcnNYZk9d/CHsNuYOnIDM3Jwei63V4KEdCQ5vtDZ798ek+OrNJuW2c
	 yQTTsa/LboKiUjFtjZz4o0CC6nGbtIEfZq1UhIRp7Sz1ClDCQOzE6bPgnEzebfNvWr
	 CHM12WlRgAm1nXUICtioOs5hbIxV45pLB6rYOJlNFQ5KOoJMcF8PatgRSTXTx8Nwce
	 JhZdHaXQlbZrZhGjrVB7BcozKEJrZCvyvZQNeqoBZxsU0MN4rOWEecHc+y9VK/J33P
	 IcTxjUJAslwcg==
Date: Fri, 7 Nov 2025 17:14:04 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: vkoul@kernel.org
Cc: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>, andersson@kernel.org, 
	konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	jingoohan1@gmail.com, lpieralisi@kernel.org, kwilczynski@kernel.org, 
	bhelgaas@google.com, johan+linaro@kernel.org, kishon@kernel.org, 
	neil.armstrong@linaro.org, abel.vesa@linaro.org, kw@linux.com, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com, 
	quic_krichai@quicinc.com, quic_vbadigan@quicinc.com, 
	Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Subject: Re: [PATCH v14 0/5] pci: qcom: Add QCS8300 PCIe support
Message-ID: <mmzrkh7nyjnrmymvtionsiv54nv7wgqx4l5d42g4yt6rjhtq4f@wnztvnzccv3n>
References: <20251024095609.48096-1-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251024095609.48096-1-ziyue.zhang@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251107_104859_543251_5DD80E55 
X-CRM114-Status: GOOD (  17.95  )
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

T24gRnJpLCBPY3QgMjQsIDIwMjUgYXQgMDU6NTY6MDRQTSArMDgwMCwgWml5dWUgWmhhbmcgd3Jv
dGU6Cj4gVGhpcyBzZXJpZXMgZGVwZW5kIG9uIHRoaXMgcGF0Y2gKPiBodHRwczovL2xvcmUua2Vy
bmVsLm9yZy9hbGwvMjAyNTA4MjYtcGFrYWxhLXYyLTMtNzRmMWY2MDY3NmM2QG9zcy5xdWFsY29t
bS5jb20vCj4gCj4gVGhpcyBzZXJpZXMgYWRkcyBkb2N1bWVudCwgcGh5LCBjb25maWdzIHN1cHBv
cnQgZm9yIFBDSWUgaW4gUUNTODMwMC4KPiBJdCBhbHNvIGFkZHMgJ2xpbmtfZG93bicgcmVzZXQg
Zm9yIHNhODc3NXAuCj4gCj4gSGF2ZSBmb2xsd2luZyBjaGFuZ2VzOgo+IAktIEFkZCBkZWRpY2F0
ZWQgc2NoZW1hIGZvciB0aGUgUENJZSBjb250cm9sbGVycyBmb3VuZCBvbiBRQ1M4MzAwLgo+IAkt
IEFkZCBjb21wYXRpYmxlIGZvciBxY3M4MzAwIHBsYXRmb3JtLgo+IAktIEFkZCBjb25maWd1cmF0
aW9ucyBpbiBkZXZpY2V0cmVlIGZvciBQQ0llMCwgaW5jbHVkaW5nIHJlZ2lzdGVycywgY2xvY2tz
LCBpbnRlcnJ1cHRzIGFuZCBwaHkgc2V0dGluZyBzZXF1ZW5jZS4KPiAJLSBBZGQgY29uZmlndXJh
dGlvbnMgaW4gZGV2aWNldHJlZSBmb3IgUENJZTEsIGluY2x1ZGluZyByZWdpc3RlcnMsIGNsb2Nr
cywgaW50ZXJydXB0cyBhbmQgcGh5IHNldHRpbmcgc2VxdWVuY2UuCj4gCj4gU2lnbmVkLW9mZi1i
eTogS3Jpc2huYSBjaGFpdGFueWEgY2h1bmRydSA8cXVpY19rcmljaGFpQHF1aWNpbmMuY29tPgo+
IFNpZ25lZC1vZmYtYnk6IFppeXVlIFpoYW5nIDxxdWljX3ppeXV6aGFuQHF1aWNpbmMuY29tPgoK
SGkgVmlub2QsCgpDb3VsZCB5b3UgcGxlYXNlIHBpY2sgdXAgdGhlIFBIWSBEVCBiaW5kaW5nIHBh
dGNoPwoKLSBNYW5pCgo+IC0tLQo+IENoYW5nZXMgaW4gdjE0Ogo+IC0gcmViYXNlIHBhdGNoZXMK
PiAtIExpbmsgdG8gdjEzOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNTA5MDgwNzM4
NDguMzA0NTk1Ny0xLXppeXVlLnpoYW5nQG9zcy5xdWFsY29tbS5jb20vCj4gCj4gQ2hhbmdlcyBp
biB2MTM6Cj4gLSBGaXggZHRiIGVycm9yCj4gLSBMaW5rIHRvIHYxMjogaHR0cHM6Ly9sb3JlLmtl
cm5lbC5vcmcvYWxsLzIwMjUwOTA1MDcxNDQ4LjIwMzQ1OTQtMS16aXl1ZS56aGFuZ0Bvc3MucXVh
bGNvbW0uY29tLwo+IAo+IENoYW5nZXMgaW4gdjEyOgo+IC0gcmViYXNlZCBwY2llIHBoeSBiaW5k
aW5ncwo+IC0gTGluayB0byB2MTE6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI1MDgy
NjA5MTIwNS4zNjI1MTM4LTEteml5dWUuemhhbmdAb3NzLnF1YWxjb21tLmNvbS8KPiAKPiBDaGFu
Z2VzIGluIHYxMToKPiAtIG1vdmUgcGh5L3BlcnN0L3dha2UgdG8gcGNpZSBicmlkZ2Ugbm9kZSAo
TWFuaSkKPiAtIExpbmsgdG8gdjEwOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNTA4
MTEwNzExMzEuOTgyOTgzLTEteml5dWUuemhhbmdAb3NzLnF1YWxjb21tLmNvbS8KPiAKPiBDaGFu
Z2VzIGluIHYxMDoKPiAtIFVwZGF0ZSBQSFkgbWF4X2l0ZW1zIChKb2hhbikKPiAtIExpbmsgdG8g
djk6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI1MDcyNTEwNDAzNy40MDU0MDcwLTEt
eml5dWUuemhhbmdAb3NzLnF1YWxjb21tLmNvbS8KPiAKPiBDaGFuZ2VzIGluIHY5Ogo+IC0gRml4
IERUQiBlcnJvciAoVmlub2QpCj4gLSBMaW5rIHRvIHY4OiBodHRwczovL2xvcmUua2VybmVsLm9y
Zy9hbGwvMjAyNTA3MTQwODE1MjkuMzg0NzM4NS0xLXppeXVlLnpoYW5nQG9zcy5xdWFsY29tbS5j
b20vCj4gCj4gQ2hhbmdlcyBpbiB2ODoKPiAtIHJlYmFzZSBzYzgyODB4cC1xbXAtcGNpZS1waHkg
Y2hhbmdlIHRvIHNvbHZlIGNvbmZsaWN0cy4KPiAtIEFkZCBGaXhlcyB0YWcgdG8gcGh5IGNoYW5n
ZSAoSm9oYW4pCj4gLSBMaW5rIHRvIHY3OiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAy
NTA2MjUwOTI1MzkuNzYyMDc1LTEtcXVpY196aXl1emhhbkBxdWljaW5jLmNvbS8KPiAKPiBDaGFu
Z2VzIGluIHY3Ogo+IC0gcmViYXNlIHFjczgzMDAtcmlkZS5kdHNpIGNoYW5nZSB0byBzb2x2ZSBj
b25mbGljdHMuCj4gLSBMaW5rIHRvIHY2OiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAy
NTA1MjkwMzU2MzUuNDE2MjE0OS0xLXF1aWNfeml5dXpoYW5AcXVpY2luYy5jb20vCj4gCj4gQ2hh
bmdlcyBpbiB2NjoKPiAtIG1vdmUgdGhlIHFjczgzMDAgYW5kIHNhODc3NXAgcGh5IGNvbXBhdGli
aWxpdHkgZW50cnkgaW50byB0aGUgbGlzdCBvZiBQSFlzIHRoYXQgcmVxdWlyZSBzaXggY2xvY2tz
Cj4gLSBVcGRhdGUgUUNTODMwMCBhbmQgc2E4Nzc1cCBwaHkgZHQsIHJlbW92ZSBhdXggY2xvY2su
Cj4gLSBGaXhlZCBjb21waWxlIGVycm9yIGZvdW5kIGJ5IGtlcm5lbCB0ZXN0IHJvYm90Cj4gLSBM
aW5rIHRvIHY1OiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNTA1MDcwMzEwMTkuNDA4
MDU0MS0xLXF1aWNfeml5dXpoYW5AcXVpY2luYy5jb20vCj4gCj4gQ2hhbmdlcyBpbiB2NToKPiAt
IEFkZCBRQ09NIFBDSWUgY29udHJvbGxlciB2ZXJzaW9uIGluIGNvbW1pdCBtc2cgKE1hbmkpCj4g
LSBNb2RpZnkgcGxhdGZvcm0gZHRzIGNoYW5nZSBzdWJqZWN0IChEbWl0cnkpCj4gLSBGaXhlZCBj
b21waWxlIGVycm9yIGZvdW5kIGJ5IGtlcm5lbCB0ZXN0IHJvYm90Cj4gLSBMaW5rIHRvIHY0OiBo
dHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1waHkvMjAyNDEyMjAwNTUyMzkuMjc0NDAyNC0x
LXF1aWNfeml5dXpoYW5AcXVpY2luYy5jb20vCj4gCj4gQ2hhbmdlcyBpbiB2NDoKPiAtIEFkZCBy
ZWNlaXZlZCB0YWcKPiAtIEZpeGVkIGNvbXBpbGUgZXJyb3IgZm91bmQgYnkga2VybmVsIHRlc3Qg
cm9ib3QKPiAtIExpbmsgdG8gdjM6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvMjAyNDEy
MjExMzAxLmJRTzZ2WHBvLWxrcEBpbnRlbC5jb20vVC8jbWRkNjNlNWJlMzlhY2JmODc5MjE4YWVm
OTFjODdiMTJkNDU0MGUwZjcKPiAKPiBDaGFuZ2VzIGluIHYzOgo+IC0gQWRkIHJlY2VpdmVkIHRh
ZyhSb2IgJiBEbWl0cnkpCj4gLSBVcGRhdGUgcGNpZV9waHkgaW4gZ2NjIG5vZGUgdG8gc29jIGR0
c2koRG1pdHJ5ICYgS29ucmFkKQo+IC0gcmVtb3ZlIHBjaWVwcm90MCBub2RlKEtvbnJhZCAmIE1h
bmkpCj4gLSBGaXggZm9ybWF0IGNvbW1lbnRzKEtvbnJhZCkKPiAtIFVwZGF0ZSBiYXNlLWNvbW1p
dCB0byB0YWc6IG5leHQtMjAyNDEyMTMoQmpvcm4pCj4gLSBDb3JyZWN0ZWQgb2ZfZGV2aWNlX2lk
LmRhdGEgZnJvbSAxLjkuMCB0byAxLjM0LjAuCj4gLSBMaW5rIHRvIHYyOiBodHRwczovL2xvcmUu
a2VybmVsLm9yZy9hbGwvMjAyNDExMjgwODEwNTYuMTM2MTczOS0xLXF1aWNfeml5dXpoYW5AcXVp
Y2luYy5jb20vCj4gCj4gQ2hhbmdlcyBpbiB2MjoKPiAtIEZpeCBzb21lIGZvcm1hdCBjb21tZW50
cyBhbmQgbWF0Y2ggdGhlIHN0eWxlIGluIHgxZTgwMTAwKEtvbnJhZCkKPiAtIEFkZCBnbG9iYWwg
aW50ZXJydXB0IGZvciBQQ0llMCBhbmQgUENJZTEoS29ucmFkKQo+IC0gc3BsaXQgdGhlIHNvYyBk
dHNpIGFuZCB0aGUgcGxhdGZvcm0gZHRzIGludG8gdHdvIGNoYW5nZXMoS29ucmFkKQo+IC0gTGlu
ayB0byB2MTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjQxMTE0MDk1NDA5LjI2ODI1
NTgtMS1xdWljX3ppeXV6aGFuQHF1aWNpbmMuY29tLwo+IAo+IAo+IFppeXVlIFpoYW5nICg1KToK
PiAgIGR0LWJpbmRpbmdzOiBwaHk6IHFjb20sc2M4MjgweHAtcW1wLXBjaWUtcGh5OiBVcGRhdGUg
cGNpZSBwaHkgYmluZGluZ3MKPiAgICAgZm9yIHFjczgzMDAKPiAgIGFybTY0OiBkdHM6IHFjb206
IHFjczgzMDA6IGVuYWJsZSBwY2llMAo+ICAgYXJtNjQ6IGR0czogcWNvbTogcWNzODMwMC1yaWRl
OiBlbmFibGUgcGNpZTAgaW50ZXJmYWNlCj4gICBhcm02NDogZHRzOiBxY29tOiBxY3M4MzAwOiBl
bmFibGUgcGNpZTEKPiAgIGFybTY0OiBkdHM6IHFjb206IHFjczgzMDAtcmlkZTogZW5hYmxlIHBj
aWUxIGludGVyZmFjZQo+IAo+ICAuLi4vcGh5L3Fjb20sc2M4MjgweHAtcW1wLXBjaWUtcGh5Lnlh
bWwgICAgICAgfCAgMTcgKy0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3FjczgzMDAtcmlk
ZS5kdHMgICAgIHwgIDg0ICsrKysrCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9xY3M4MzAw
LmR0c2kgICAgICAgICB8IDMxMCArKysrKysrKysrKysrKysrKy0KPiAgMyBmaWxlcyBjaGFuZ2Vk
LCAzOTQgaW5zZXJ0aW9ucygrKSwgMTcgZGVsZXRpb25zKC0pCj4gCj4gCj4gYmFzZS1jb21taXQ6
IDcyZmIwMTcwZWYxZjQ1YWRkZjcyNjMxOWM1MmEwNTYyYjY5MTM3MDcKPiAtLSAKPiAyLjM0LjEK
PiAKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u
4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK
