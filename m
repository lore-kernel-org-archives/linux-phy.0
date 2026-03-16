Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77B86F30295
	for <linux-phy@archiver.kernel.org>; Mon, 16 Mar 2026 03:20:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WHGwPmb9JD74b4uI5YasnJ2ThxUZ/GIjZ7KOY4+1gRg=; b=k4lYwQ4mkgNwuj
	oJx87/UiMXFfRPTOmelG5Fh/sT4mOvjjQrbk/byj9v+fsxvrtsHwRShxhbjXOTK0HIryRrf+UfDOy
	HCw3WBPZ8/GD2NVjTxrEmMBI4sa/nsQdBMLJb1LiEEBVTPjQrra8fSt7rFIrKC+bj5O2iSuDt17qV
	Od/TpHgeE4jX2RuokBfjRJRw5SfDFU0JV/J4yzIohLYzD5BasroNw+rMcZjfcyi0B/b4dHSh7WT3d
	nTeCWd+j4atW4/39D9WVc0N8IQBh4MmQB6pVMUorR4CXp3CpCmEmMjja202Hzi3faUtSDl7puaiwj
	WL5Z30cBbME31eVThQ2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1yVH-00000003GMR-0xci;
	Mon, 16 Mar 2026 03:20:27 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1yVE-00000003GLn-35iR
	for linux-phy@lists.infradead.org;
	Mon, 16 Mar 2026 03:20:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id A86806111A;
	Mon, 16 Mar 2026 03:20:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C959C19425;
	Mon, 16 Mar 2026 03:20:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773631223;
	bh=WuPKft6M5fTY0DWTvg8L3sujWRNBfLJxZ9DjriMFQ6M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IFB/n1fKO9ANP/cV5YTY7dm/pXdFYiuy0ANIcYtQIHeWDkppN1zEUdYi2Vk6fkcLY
	 a3F0ZOtfDrw6wZU5xrBh3mBDc+l0WO0N2NQLmiqMc/H0XjLcFUoCORBjXNfJzmJ25j
	 OqszTiZADEV7gOinRbunwZz/zxrUg7s0yWeteD8rSv9SGKdE5WHdZ4Ex5KVJdr5bKB
	 bmUCNuMPKMveenV5kTv3YVZVeW3dBs3uzO9aRfP2lUs5nJBXEGuWto/gW227xMUraI
	 IDDRS+R1giasf4gU6EpMXueiZRQiQ3SUlVGWBTvUgCsSNvPJCotm0ehUren3wzZHsD
	 qToE1CPis91Aw==
Date: Mon, 16 Mar 2026 08:50:12 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Bjorn Helgaas <helgaas@kernel.org>, 
	Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>, konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, jingoohan1@gmail.com, lpieralisi@kernel.org, 
	kwilczynski@kernel.org, bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org, 
	kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org, kw@linux.com, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com, 
	quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
Subject: Re: [PATCH v1 1/1] arm64: dts: qcom: hamoa: Move PCIe PERST and Wake
 GPIOs to port nodes
Message-ID: <kqpgjzcxnazjohiop27exget6qrv37wn3csmixt5nmc6d5dkbg@n7qjo6flaabn>
References: <20260313094618.1361418-1-ziyue.zhang@oss.qualcomm.com>
 <20260313164542.GA1405513@bhelgaas>
 <en5a7jrgpbn4bsmw5qwprugb2qmjkqw2x5eey6jxxu63634duz@b43rhcsqkj3o>
 <abdviJbrluDn2Vrx@baldur>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <abdviJbrluDn2Vrx@baldur>
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

T24gU3VuLCBNYXIgMTUsIDIwMjYgYXQgMDk6NTM6MzNQTSAtMDUwMCwgQmpvcm4gQW5kZXJzc29u
IHdyb3RlOgo+IE9uIFNhdCwgTWFyIDE0LCAyMDI2IGF0IDA3OjUwOjUwUE0gKzA1MzAsIE1hbml2
YW5uYW4gU2FkaGFzaXZhbSB3cm90ZToKPiA+IE9uIEZyaSwgTWFyIDEzLCAyMDI2IGF0IDExOjQ1
OjQyQU0gLTA1MDAsIEJqb3JuIEhlbGdhYXMgd3JvdGU6Cj4gPiA+IE9uIEZyaSwgTWFyIDEzLCAy
MDI2IGF0IDA1OjQ2OjE4UE0gKzA4MDAsIFppeXVlIFpoYW5nIHdyb3RlOgo+ID4gPiA+IENvbW1p
dCA5NjA2MDliMjJiZTUgKCJhcm02NDogZHRzOiBxY29tOiBoYW1vYTogTW92ZSBQSFksIFBFUlNU
LCBhbmQgV2FrZQo+ID4gPiA+IEdQSU9zIHRvIFBDSWUgcG9ydCBub2RlcyBhbmQgYWRkIHBvcnQg
Tm9kZXMgZm9yIGFsbCBQQ0llIHBvcnRzIikgZGlkIG5vdAo+ID4gPiA+IGNvbnZlcnQgYWxsIEhh
bW9h4oCRYmFzZWQgcGxhdGZvcm1zIHRvIHRoZSBuZXcgbWV0aG9kIG9mIGRlZmluaW5nIFBFUlNU
IGFuZAo+ID4gPiA+IFdha2UgR1BJT3MgaW4gdGhlIFBDSWUgcm9vdCBwb3J0IG5vZGVzLgo+ID4g
PiA+IAo+ID4gPiA+IFdpdGhvdXQgdGhlIGNoYW5nZSBQQ0llIHByb2JlIHdpbGwgZmFpbC4gVGhl
IHByb2JlIGZhaWx1cmUgaGFwcGVucyBiZWNhdXNlCj4gPiA+ID4gdGhlIFBIWSBzdGF5cyBpbiB0
aGUgY29udHJvbGxlciBub2RlIHdoaWxlIHRoZSBQRVJTVC9XYWtlIEdQSU9zIHdlcmUgbW92ZWQK
PiA+ID4gPiB0byB0aGUgcG9ydCBub2Rlcy4KPiA+ID4gPiAKPiA+ID4gPiBUaGlzIGZpeGVzIHBy
b2JlIGZhaWx1cmVzIHNlZW4gb24gdGhlIGZvbGxvd2luZyBwbGF0Zm9ybXM6Cj4gPiA+ID4gIC0g
eDEtaHAtb21uaWJvb2steDE0Cj4gPiA+ID4gIC0geDEtbWljcm9zb2Z0LWRlbmFsaQo+ID4gPiA+
ICAtIHgxZTgwMTAwLWxlbm92by15b2dhLXNsaW03eAo+ID4gPiA+ICAtIHgxZTgwMTAwLW1lZGlv
bi1zcHJjaHJnZC0xNC1zMQo+ID4gPiA+ICAtIHgxcDQyMTAwLWxlbm92by10aGlua2Jvb2stMTYK
PiA+ID4gPiAgLSB4MS1hc3VzLXplbmJvb2stYTE0Cj4gPiA+ID4gIC0geDEtY3JkCj4gPiA+ID4g
IC0geDEtZGVsbC10aGVuYQo+ID4gPiA+IAo+ID4gPiA+IEZpeGVzOiA5NjA2MDliMjJiZTUgKCJh
cm02NDogZHRzOiBxY29tOiBoYW1vYTogTW92ZSBQSFksIFBFUlNULCBhbmQgV2FrZSBHUElPcyB0
byBQQ0llIHBvcnQgbm9kZXMgYW5kIGFkZCBwb3J0IE5vZGVzIGZvciBhbGwgUENJZSBwb3J0cyIp
Cj4gPiA+IAo+ID4gPiBBcmUgeW91IHNheWluZyB0aGF0IERUcyBpbiB0aGUgZmllbGQgYnJva2Ug
YmVjYXVzZSBvZiBzb21lIGtlcm5lbAo+ID4gPiBjaGFuZ2U/ICBUaGF0J3Mgbm90IHN1cHBvc2Vk
IHRvIGhhcHBlbi4gIEV2ZW4gdGhvdWdoIFBIWSwgUEVSU1QsIGFuZAo+ID4gPiBXYWtlIEdQSU9z
IHNob3VsZCBiZSBkZXNjcmliZWQgaW4gUm9vdCBQb3J0IG5vZGVzIGluc3RlYWQgb2YgdGhlIFJv
b3QKPiA+ID4gQ29tcGxleCBub2RlIGluICpmdXR1cmUqIERUcywgdGhlIGtlcm5lbCBpcyBzdGls
bCBzdXBwb3NlZCB0byBhY2NlcHQKPiA+ID4gdGhlIG9sZCBzdHlsZSB3aXRoIHRoZW0gZGVzY3Jp
YmVkIGluIHRoZSBSb290IENvbXBsZXggbm9kZS4KPiA+ID4gCj4gPiAKPiA+IFRoaXMgaXMgbm90
IHJlbGF0ZWQgdG8gdGhlIGRyaXZlciBjaGFuZ2UuIFRoZSBkcml2ZXIgY29ycmVjdGx5IHBhcnNl
cyBhbGwgUm9vdAo+ID4gUG9ydCBwcm9wZXJ0aWVzIGVpdGhlciBpbiB0aGUgUm9vdCBDb21wbGV4
IG5vZGUgKG9sZCBiaW5kaW5nKSBvciBSb290IFBvcnQgbm9kZQo+ID4gKG5ldyBiaW5kaW5nKS4g
QnV0IGNvbW1pdCA5NjA2MDliMjJiZTUsIGxlZnQgY29udmVydGluZyBtZW50aW9uZWQgYm9hcmQg
RFRTIHRvCj4gPiB0aGUgbmV3IGJpbmRpbmcsIGxlYXZpbmcgdGhvc2UgYWZmZWN0ZWQgcGxhdGZv
cm1zIGluIGEgaGFsZiBiYWtlZCBzdGF0ZSBpLmUuLAo+ID4gc29tZSBwcm9wZXJ0aWVzIGluIFJD
IG5vZGUgYW5kIHNvbWUgaW4gUm9vdCBQb3J0IG5vZGUuIERyaXZlciBjYW5ub3QgcGFyc2Ugc3Vj
aAo+ID4gY29tYmluYXRpb25zLCBzbyBpdCBmYWlscyBjb3JyZWN0bHkgc28uCj4gPiAKPiAKPiBB
cmUgeW91IHNheWluZyB0aGF0IGFib3ZlIGxpc3RlZCBtYWNoaW5lcyBoYXMgYnJva2VuIFBDSWUg
c3VwcG9ydCBpbgo+IHY3LjAtcmM/Cj4gCgpJIGhhdmVuJ3QgdmVyaWZpZWQgaXQsIGJ1dCBJJ20g
cHJldHR5IHN1cmUgUENJZSBpcyBicm9rZW4gb24gdGhlc2UgcGxhdGZvcm1zLgoKPiBJdCBzZWVt
cyB0aGlzIGlzIGEgKHBhcnRpYWwpIHJldmVydCBvZiA5NjA2MDliMjJiZTUsIGlzIHRoaXMgYWN0
dWFsbHkKPiBmaXhpbmcgdGhhdCBjaGFuZ2UsIG9yIGlzIGl0IG9ubHkgYXBwbGljYWJsZSBvbmNl
IHNvbWUgb3RoZXIgY2hhbmdlcyBhcmUKPiBhcHBsaWVkPwo+IAoKVGhpcyBjaGFuZ2UgaXMgZml4
aW5nIHRoZSBpc3N1ZSBpbiB0aGUgcmVzcGVjdGl2ZSBib2FyZCBEVFMgYW5kIGlzIGEgc3RhbmRh
bG9uZQpmaXggb24gdG9wIG9mIHY3LjAtcmMxLgoKPiBXaGVyZSBzaG91bGQgdGhpcyBiZSBtZXJn
ZWQ/Cj4gCgpRY29tIHRyZWUgZm9yIDcuMC1yY1guCgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXg
rqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
