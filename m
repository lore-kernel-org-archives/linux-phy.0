Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 372BFF428F6
	for <linux-phy@archiver.kernel.org>; Thu, 16 Apr 2026 06:19:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xxbwnnxGW3RpdqGWuiGr312nCklfL9S7eemVA8QLHbw=; b=dh+vYQwFO2QiPi
	Xxb2vHgMGMnxOxW2HtfkdGn+Kta/CNWXG8V0Pi7/PIsF3Y8igaujui/l6LdIbPsnryE14Skwe4Iy/
	E4rm6x4wJW57G7kh6Tq45wuO5RRY9bh0fR1kE2+mnSbnTpXMUmxZU27K96MqdRg40/gk8rqM5yhuy
	/dV4wutdtOqVB0t85QBYpbyRURt4kE7LQQgOFh80KFRc+X3f/WQX9UAFU0XMkfc30kXa1kncQCwom
	2fIgPc6RjbvA/SglTvmQDrONomCPeup01qn/Rm6H7Tuko9ArghskrBPLrPTPJwPzzrATM92AgZhdi
	3YC+QWKae5KJBS6Wlu7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDG4L-000000022T1-2loe;
	Thu, 16 Apr 2026 06:19:17 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDG4J-000000022Sd-215G
	for linux-phy@lists.infradead.org;
	Thu, 16 Apr 2026 06:19:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 7657743325;
	Thu, 16 Apr 2026 06:19:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 52436C2BCAF;
	Thu, 16 Apr 2026 06:19:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776320354;
	bh=qNrd3txvGZOPg0VoT9q3rBedmFvwr8GAJPvfgU9ToZg=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=l0S0DHLWlB+yr9O9wvzJccCI49pX553txPkOeqgZqP1vbpI/ajG0Kgc9ecpGHJrZ+
	 8d3OKNGzL18SW2PSEko22GXeAGx35fOYNJyrAj2ZU5EDN0WXNekocJ00rkekNrNseG
	 yDj/Aa/7GUq06JQL0/z+S1HczrHOhK4JXgDZ8WE79NNgNU1V/CH8Qj2jHiJ20JcC7n
	 XoXQok6sVyr8NkhH+6eqOfzyqRNl6md2kSiLPFu3Pb5fdvCRZWGS+AWYczXAep8Sxk
	 bOt98lNI9BXOpKqQzMlO9GphEHlAegzaNjeJayXtOjTYU47n92imZ3+aMIPz1MZ/gd
	 yF5B80A1tJN2g==
Message-ID: <d486616b-ef21-4933-aaf5-dcba339dd8cc@kernel.org>
Date: Thu, 16 Apr 2026 08:19:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/5] arch: arm64: dts: qcom: Add support for PCIe3a
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260412-glymur_gen5x8_phy_0413-v3-0-affcebc16b8b@oss.qualcomm.com>
 <20260412-glymur_gen5x8_phy_0413-v3-5-affcebc16b8b@oss.qualcomm.com>
 <20260415-pragmatic-termite-of-attraction-3dbab5@quoll>
 <aeBWfv1oXnSQC454@hu-qianyu-lv.qualcomm.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <aeBWfv1oXnSQC454@hu-qianyu-lv.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260415_231915_558615_8A94DD43 
X-CRM114-Status: GOOD (  17.03  )
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

T24gMTYvMDQvMjAyNiAwNToyNCwgUWlhbmcgWXUgd3JvdGU6Cj4gT24gV2VkLCBBcHIgMTUsIDIw
MjYgYXQgMDk6NDQ6MTVBTSArMDIwMCwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPj4gT24g
U3VuLCBBcHIgMTIsIDIwMjYgYXQgMTE6MjY6MDBQTSAtMDcwMCwgUWlhbmcgWXUgd3JvdGU6Cj4+
PiBEZXNjcmliZSBQQ0llM2EgY29udHJvbGxlciBhbmQgUEhZLiBBbHNvIGFkZCByZXF1aXJlZCBz
eXN0ZW0gcmVzb3VyY2VzCj4+PiBsaWtlIHJlZ3VsYXRvcnMsIGNsb2NrcywgaW50ZXJydXB0cyBh
bmQgcmVnaXN0ZXJzIGNvbmZpZ3VyYXRpb24gZm9yIFBDSWUzYS4KPj4+Cj4+PiBTaWduZWQtb2Zm
LWJ5OiBRaWFuZyBZdSA8cWlhbmcueXVAb3NzLnF1YWxjb21tLmNvbT4KPj4KPj4gc3ViamVjdDog
ZHJvcCBhcmNoLgo+Pgo+PiBQbGVhc2UgdXNlIHN1YmplY3QgcHJlZml4ZXMgbWF0Y2hpbmcgdGhl
IHN1YnN5c3RlbS4gWW91IGNhbiBnZXQgdGhlbSBmb3IKPj4gZXhhbXBsZSB3aXRoICdnaXQgbG9n
IC0tb25lbGluZSAtLSBESVJFQ1RPUllfT1JfRklMRScgb24gdGhlIGRpcmVjdG9yeQo+PiB5b3Vy
IHBhdGNoIGlzIHRvdWNoaW5nLiBGb3IgYmluZGluZ3MsIHRoZSBwcmVmZXJyZWQgc3ViamVjdHMg
YXJlCj4+IGV4cGxhaW5lZCBoZXJlOgo+PiBodHRwczovL3d3dy5rZXJuZWwub3JnL2RvYy9odG1s
L2xhdGVzdC9kZXZpY2V0cmVlL2JpbmRpbmdzL3N1Ym1pdHRpbmctcGF0Y2hlcy5odG1sI2ktZm9y
LXBhdGNoLXN1Ym1pdHRlcnMKPj4KPiAKPiBUaGFua3MgZm9yIHBvaW50aW5nIG1lIHRoZSBsaW5r
LiBJ4oCZbGwgZHJvcCBhcmNoOiBpbiBuZXh0IHZlcnNpb24uCj4gCj4+PiAtLS0KPj4+ICBhcmNo
L2FybTY0L2Jvb3QvZHRzL3Fjb20vZ2x5bXVyLmR0c2kgfCAzMTYgKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKy0KPj4+ICAxIGZpbGUgY2hhbmdlZCwgMzE1IGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9x
Y29tL2dseW11ci5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL2dseW11ci5kdHNpCj4+
PiBpbmRleCBmMjNjZjgxZGRiNzdhNDEzOGRlZWI0ZTAwZGQ4YjMxNjkzMGEyZmViLi5jMTVmODdj
MzdlY2JhZDcyMDc2YTZjNzMxZjQ5NTlhMWE4YmQ4NDI1IDEwMDY0NAo+Pj4gLS0tIGEvYXJjaC9h
cm02NC9ib290L2R0cy9xY29tL2dseW11ci5kdHNpCj4+PiArKysgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3Fjb20vZ2x5bXVyLmR0c2kKPj4+IEBAIC03MzYsNyArNzM2LDcgQEAgZ2NjOiBjbG9jay1j
b250cm9sbGVyQDEwMDAwMCB7Cj4+PiAgCQkJCSA8MD4sCQkJCS8qIFVTQiAyIFBoeSBQQ0lFIFBJ
UEVHTVVYICovCj4+PiAgCQkJCSA8MD4sCQkJCS8qIFVTQiAyIFBoeSBQSVBFR01VWCAqLwo+Pj4g
IAkJCQkgPDA+LAkJCQkvKiBVU0IgMiBQaHkgU1lTIFBDSUUgUElQRUdNVVggKi8KPj4+IC0JCQkJ
IDwwPiwJCQkJLyogUENJZSAzYSAqLwo+Pj4gKwkJCQkgPCZwY2llM2FfcGh5PiwJCQkvKiBQQ0ll
IDNhICovCj4+PiAgCQkJCSA8JnBjaWUzYl9waHk+LAkJCS8qIFBDSWUgM2IgKi8KPj4+ICAJCQkJ
IDwmcGNpZTRfcGh5PiwJCQkvKiBQQ0llIDQgKi8KPj4+ICAJCQkJIDwmcGNpZTVfcGh5PiwJCQkv
KiBQQ0llIDUgKi8KPj4+IEBAIC0zNjQwLDYgKzM2NDAsMzIwIEBAIHBjaWUzYl9wb3J0MDogcGNp
ZUAwIHsKPj4+ICAJCQl9Owo+Pgo+PiAuLi4KPj4KPj4+PiArCQlwY2llM2FfcGh5OiBwaHlAZjAw
MDAwIHsKPj4KPj4gU2FtZSBjb21tZW50IGFzIGJlZm9yZS4KPj4KPiAKPiBUaGUgZXhpc3Rpbmcg
UENJZS9QSFkgbm9kZXMgYXJlIG5vdCBzdHJpY3RseSBvcmRlcmVkIGJ5IGFkZHJlc3MuIEN1cnJl
bnQKPiBvcmRlciBpczoKCk9idmlvdXNseSB3ZSBjYW5ub3QgZXZlbiBrZWVwIG9yZGVyIG9mIG5v
ZGVzIHdoZW4gY3JlYXRpbmcgYSBuZXcgRFRTSQpmaWxlIGZyb20gc2NyYXRjaC4KCkJ1dCBhZGRp
bmcgQGYwMDAwMCBhZnRlciBAMWMxMDAwMCBtYWtlcyBldmVuIGxlc3Mgc2Vuc2UsIHJlZ2FyZGxl
c3MgaG93CmJhZCBleGlzdGluZyBjb2RlIGlzLiBEb24ndCBtYWtlIGl0IHdvcnNlIQoKVGhpcyBn
b2VzIGJlZm9yZSBwaHlAZmEwMDAwCgo+IAo+IC0gcGNpZTQ6IHBjaUAxYmYwMDAwCj4gLSBwY2ll
NF9waHk6IHBoeUAxYmY2MDAwCj4gLSBwY2llNTogcGNpQDFiNDAwMDAKPiAtIHBjaWU1X3BoeTog
cGh5QDFiNTAwMDAKPiAtIHBjaWU2OiBwY2lAMWMwMDAwMAo+IC0gcGNpZTZfcGh5OiBwaHlAMWMw
NjAwMAo+IC0gcGNpZTNiOiBwY2lAMWI4MDAwMAo+IC0gcGNpZTNhOiBwY2lAMWMxMDAwMCAoYWRk
ZWQgaW4gdGhpcyBwYXRjaCkKPiAtIHBjaWUzYV9waHk6IHBoeUBmMDAwMDAgKGFkZGVkIGluIHRo
aXMgcGF0Y2gpCj4gLSBwY2llM2JfcGh5OiBwaHlAZjEwMDAwCj4gCj4gRG8geW91IHdhbnQgbWUg
dG8gcmVvcmRlciB0aGVzZSBub2RlcyB0byBmb2xsb3cgc3RyaWN0IGFkZHJlc3Mgb3JkZXI/CgpO
bywgYnV0IGRvbid0IGFkZCBub2RlcyByYW5kb21seSBvciBmb2xsb3dpbmcgdGhlIHByZXZpb3Vz
IGJyb2tlbiBvcmRlci4KCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9mCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
