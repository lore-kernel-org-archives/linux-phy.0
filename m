Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 504C1606A31A
	for <linux-phy@archiver.kernel.org>; Tue, 27 Oct 2026 09:54:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=cZsmyHLo;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=Nz6FXYNF
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=N0zXleCyrfSZayTwBosBaLI+97siPa8QQGACD0TooZk=; b=cZsmyHLoYHqTFVRdAKy7YGiJ5s
	SGkNPvXP7MUtwUMma615OkZNVcHc2n8zaehEjYCwRD/VllYgz2iBhBaKAWUhLX/PxfFpQuC9csGXX
	1/b6N46/Lm0GhlwId1SLBTNWsb4InwOEAwtkpFLaPwNErm9dObW98RUrpSxWJ3a99w5R2KqrNUnU3
	teHcJUYbKsr2fYmCPIhIuVx2JqOAeYu8+epoHImQQ5QrX8GqX4NhUddNowYOk8Q2UUTZKBZbjU56q
	mSKM/Q7bA9ozjkx2h5nYkJxVxcgbmPyVDJBj/zoIxodVavegVkJRSkRcFWa2F4HnTP6e3y387n5ZH
	2w39hCVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLdtD-00000004EGl-3pJ5;
	Tue, 27 Oct 2026 09:54:43 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLdtC-00000004EGB-47zJ
	for linux-phy@lists.infradead.org;
	Tue, 27 Oct 2026 09:54:43 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 4419B60200;
	Tue, 27 Oct 2026 09:54:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC17E1F01825;
	Tue, 27 Oct 2026 09:54:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793094882;
	bh=RC3LSUj/Y+l+ZeEFgu7Mk7yghLVJQ1fv0cPULmplmrs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=Nz6FXYNF9tnhKYD9PyCm7v6VZQOj/GALYwmAKkx3L+/JLInlfcZ3cM3fZDEgu5Sk4
	 pyH/Zjew3vKJ+/xZHyEbAz6XCyINKIs7EE7SA4dgnQPUkr0aJzB07EWJN0A6uq6JSZ
	 inBBEfdX6cw5C0YYCNdyXRRA3yOpE+a2PTdLlaZKhpXknmEuQrtqdBubJjWSc/QJ7O
	 rFBDaSDgIHxyqnD8WTKAouX2i9wQpEOOKenKfyMH89isbtDlaRE0ft4t13scKEOI0s
	 qRXqWCo8G9c7MsUcqlqAIvhxlB+j/U3+Oaq2ANP8PnpCqVbAT9EkA8u5l/xEj6Kmr+
	 bEJoYiLoIcxyA==
Message-ID: <0d25a732-ccd5-4a7b-9809-93e67899b4e7@kernel.org>
Date: Tue, 27 Oct 2026 11:54:36 +0200
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/7] arm64: dts: qcom: sm8450: Add CAMSS device tree node
To: Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
 Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 linux-arm-msm@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-media@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>, linux-phy@lists.infradead.org,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
References: <20261023163057.775917-1-vz@kernel.org>
 <20261023163057.775917-5-vz@kernel.org>
 <CAFEp6-03Kqxya74Cd+hgueZ0D4xAcYNOx_R1sNqdMu2JrMBynw@mail.gmail.com>
 <378094fb-5f7f-42c6-a91f-158e2083a6cb@kernel.org>
 <CAFEp6-3XTotgkOKRACGLT91wUw30CgFB=44RtHnXfA6cOF7bVA@mail.gmail.com>
From: Vladimir Zapolskiy <vz@kernel.org>
In-Reply-To: <CAFEp6-3XTotgkOKRACGLT91wUw30CgFB=44RtHnXfA6cOF7bVA@mail.gmail.com>
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gMTAvMjcvMjYgMTE6MDcsIExvaWMgUG91bGFpbiB3cm90ZToKPiBPbiBNb24sIE9jdCAyNiwg
MjAyNiBhdCAxMTozOeKAr1BNIFZsYWRpbWlyIFphcG9sc2tpeSA8dnpAa2VybmVsLm9yZz4gd3Jv
dGU6Cj4+Cj4+IEhpIExvaWMuCj4+Cj4+IE9uIDEwLzI2LzI2IDE4OjMyLCBMb2ljIFBvdWxhaW4g
d3JvdGU6Cj4+PiBPbiBGcmksIE9jdCAyMywgMjAyNiBhdCA2OjMx4oCvUE0gVmxhZGltaXIgWmFw
b2xza2l5IDx2ekBrZXJuZWwub3JnPiB3cm90ZToKPj4+Pgo+Pj4+IEFkZCBRdWFsY29tbSBXYWlw
aW8gQ0FNU1MgZGV2aWNlIHRyZWUgbm9kZSB0byB0aGUgcGxhdGZvcm0gZHRzaSBmaWxlLAo+Pj4+
IHRoZSBDQU1TUyBpbnB1dCBwb3J0cyBhcmUgY29ubmVjdGVkIHRvIG91dHB1dCBwb3J0cyBvZiBD
U0lQSFkgZGV2aWNlcy4KPj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IFZsYWRpbWlyIFphcG9sc2tp
eSA8dnpAa2VybmVsLm9yZz4KPj4+PiAtLS0KPj4+PiAgICBhcmNoL2FybTY0L2Jvb3QvZHRzL3Fj
b20vc204NDUwLmR0c2kgfCAxNjcgKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4+Pj4gICAg
MSBmaWxlIGNoYW5nZWQsIDE2NyBpbnNlcnRpb25zKCspCj4+Pj4KPj4+PiBkaWZmIC0tZ2l0IGEv
YXJjaC9hcm02NC9ib290L2R0cy9xY29tL3NtODQ1MC5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0
cy9xY29tL3NtODQ1MC5kdHNpCj4+Pj4gaW5kZXggYmFiZjFhNDE5NmExLi43ZjViMDUwMWEyM2Ug
MTAwNjQ0Cj4+Pj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3NtODQ1MC5kdHNpCj4+
Pj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3NtODQ1MC5kdHNpCj4+Pj4gQEAgLTMz
MTAsNiArMzMxMCwxNjcgQEAgY2NpMV9pMmMxOiBpMmMtYnVzQDEgewo+Pj4+ICAgICAgICAgICAg
ICAgICAgICAgICAgICAgfTsKPj4+PiAgICAgICAgICAgICAgICAgICB9Owo+Pj4+Cj4+Pj4gKyAg
ICAgICAgICAgICAgIGNhbXNzOiBpc3BAYWNiNjAwMCB7Cj4+Pj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgY29tcGF0aWJsZSA9ICJxY29tLHdhaXBpby1jYW1zcyI7Cj4+Pj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgcmVnID0gPDAgMHhhY2I2MDAwIDAgMHgxMDAwPiwKPj4+PiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICA8MCAweGFjYjcwMDAgMCAweDEwMDA+LAo+Pj4+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIDwwIDB4YWNiOTAwMCAwIDB4MTAwMD4sCj4+Pj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgPDAgMHhhY2JiMDAwIDAgMHgxMDAwPiwKPj4+PiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICA8MCAweGFjYzYwMDAgMCAweDEwMDA+LAo+Pj4+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwwIDB4YWNjYTAwMCAwIDB4MTAwMD4sCj4+Pj4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPDAgMHhhY2Y2MDAwIDAgMHgxMDAwPiwKPj4+
PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8MCAweGFjZjcwMDAgMCAweDEwMDA+LAo+
Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwwIDB4YWNmODAwMCAwIDB4MTAwMD4s
Cj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPDAgMHhhYzYyMDAwIDAgMHgzMDAw
PiwKPj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8MCAweGFjNzEwMDAgMCAweDMw
MDA+LAo+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwwIDB4YWM4MDAwMCAwIDB4
MzAwMD4sCj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPDAgMHhhY2M3MDAwIDAg
MHgyMDAwPiwKPj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8MCAweGFjY2IwMDAg
MCAweDIwMDA+Owo+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgIHJlZy1uYW1lcyA9ICJjc2lk
X3dyYXBwZXIiLAo+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJjc2lk
MCIsCj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgImNzaWQxIiwKPj4+
PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAiY3NpZDIiLAo+Pj4+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJjc2lkX2xpdGUwIiwKPj4+PiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAiY3NpZF9saXRlMSIsCj4+Pj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgInRwZzAiLAo+Pj4+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICJ0cGcxIiwKPj4+PiArICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAidHBnMiIsCj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgInZmZTAiLAo+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJ2ZmUx
IiwKPj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAidmZlMiIsCj4+Pj4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgInZmZV9saXRlMCIsCj4+Pj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgInZmZV9saXRlMSI7Cj4+Pgo+Pj4gSXMg
dGhlcmUgYSBjYW1zcyAidG9wIiByZWdpc3RlciB0byBkZXNjcmliZSBoZXJlPyBlLmcuIHRvIHJl
dHJpZXZlIHRoZQo+Pj4gQ0FNU1MgaGFyZHdhcmUgdmVyc2lvbi4KPj4KPj4gSSdtIG5vdCBhd2Fy
ZSBvZiBhbnl0aGluZyBsaWtlIHRoYXQuIFdoYXQgaXMgIkNBTVNTIGhhcmR3YXJlIHZlcnNpb24i
Pwo+Pgo+PiBDQU1TUyBlbWJyYWNlcyB2YXJpb3VzIGJsb2NrcywgdGhlcmUgYXJlIENTSUQgYW5k
IFZGRSwgZnVsbCBhbmQgbGl0ZQo+PiBJUHMsIGFuZCBhbGwgdGhlc2UgY29tcG9uZW50cyBkbyBl
eHBvcnQgdGhlaXIgdmVyc2lvbnMgaW5kaXZpZHVhbGx5Lgo+IAo+IEkgbWVhbiwgQ0FNU1MgdXN1
YWxseSBoYXMgYSB0b3AtbGV2ZWwgcmVnaXN0ZXIgYmxvY2sgKG9mdGVuIHRvcCBvcgo+IGNwYXNf
dG9wKSB0aGF0IGNvbnRhaW5zIHRoZSBUaXRhbi9TcGVjdHJhIHZlcnNpb24gaW5mb3JtYXRpb24s
IGFsb25nCj4gd2l0aCB2YXJpb3VzIGdsb2JhbCBjb25maWd1cmF0aW9uIGFuZCBtdXggcmVnaXN0
ZXJzLgoKT24gU004NDUwIHRoZXJlIGlzICJjcGFzX3RvcCIgcmVnaXN0ZXIgPDB4YWMxMzAwMCAw
eDEwMDA+IChub3QgaW4gdGhlCnNlcmllcyksIEkgYmVsaWV2ZSB5b3UgcmVmZXJlbmNlIHRvIGl0
LgoKSXMgQ1BBUyBhIG5hdHVyYWwgcGFydCBvZiBDQU1TUz8gQ2FuIGl0IGJlIG1vZGVsbGVkIGRp
ZmZlcmVudGx5LCBlLmcuCmFzIGEgc2VwYXJhdGUgZGV2aWNlL2RyaXZlciwgbGlrZSBpdCB3YXMg
ZG9uZSB3aXRoIEpQRUcgb3IgQ1NJUEhZPwoKSSBzZWUgdGhhdCB0aGVyZSBhcmUgb25seSBTTTYx
NTAgYW5kIFNNNjM1MCBwbGF0Zm9ybXMgbWVudGlvbiB0aGlzCnJlZ2lzdGVyLCB0byBjYXB0dXJl
IGFuZCBwcm9jZXNzIGZyYW1lcyBvbiBTTTg0NTAgdGhlcmUgaXMgbm8gbmVlZAp0byBwcm9ncmFt
IENQQVMuCgpOb3RlLCB0aGF0IGV2ZW4gU002MTUwIGFuZCBTTTYzNTAgcGxhdGZvcm1zIGRvIG5v
dCB1c2UgdGhpcyByZWdpc3RlciwKaXQgbWFrZXMgaXQgcmVkdW5kYW50LgoKPiBJbiBwYXJ0aWN1
bGFyLCBleHBvc2luZyB0aGlzIGJsb2NrIGNvdWxkIGJlIHVzZWZ1bCBmb3IgcmVwb3J0aW5nIHRo
ZQo+IFNwZWN0cmEgdmVyc2lvbiB0byB1c2Vyc3BhY2UsIGZvciBleGFtcGxlIHRocm91Z2ggbGli
Y2FtZXJhLgoKSXQgY291bGQgYmUgc28sIGJ1dCBhZGRpbmcgZGVhZCBjb2RlIGlzIGFuIGFudGkt
cGF0dGVybiBpbiBzb2Z0d2FyZSBkZXNpZ24uCgo+IE1vcmVvdmVyLCBpZiB0aGUgZ29hbCBpcyB0
byBkZXNjcmliZSB0aGUgQ0FNU1MgaGFyZHdhcmUgZXhoYXVzdGl2ZWx5Cj4gaW4gRFQsIHRoaXMg
YmxvY2sgc2hvdWxkIHByb2JhYmx5IGJlIHJlcHJlc2VudGVkIGFzIHdlbGwuIFdoZXRoZXIgaXQK
CkhlcmUgSSBvcHBvc2Ugc3VjaCBhIGdvYWwgYXMgaW1wcmFjdGljYWwsIHRoZSBzZXQgZ29hbCBp
cyB0byBnZXQgd29ya2luZwpjYW1lcmEgb24gdGhlIHBsYXRmb3JtIHdpdGggdGhlIG1pbmltdW0g
b2YgaXJyZXZlcnNpYmxlIGNoYW5nZXMuIEl0IHdhcwpwcm92ZW4gbXVsdGlwbGUgdGltZXMgaW4g
dGhlIHBhc3QsIHRoYXQgImFuIGV4aGF1c3RpdmUgZGVzY3JpcHRpb24iCmVxdWFscyB0byAidGhl
IHRvdGFsbHkgYnJva2VuIGRlc2NyaXB0aW9uIiwgYW5kIGJyaW5ncyBub3RoaW5nIHZhbHVhYmxl
CmJ1dCBpcnJlY292ZXJhYmxlIGV0aGVybmFsIHByb2JsZW1zIHRvIG92ZXJjb21lLgoKPiBiZWxv
bmdzIGluIHRoaXMgc3BlY2lmaWMgYmluZGluZyBpcyBvcGVuIGZvciBkaXNjdXNzaW9uLCBidXQg
bXkKPiBpbmNsaW5hdGlvbiBpcyB0aGF0IGl0IGRvZXMuCgpUaGlzIHJlZ2lzdGVyIGlzIG5vdCBu
ZWVkZWQgdG8gZ2V0IENBTVNTIHVwIHRvIHRoZSBmdW5jdGlvbmFsbHkKd29ya2luZyBzdGFnZSwg
d2hpY2ggaXMgcmVwcmVzZW50ZWQgYnkgdGhlIHNlcmllcy4KCkkgYmVsaWV2ZSBzb21lb25lIG1h
eSBjcmVhdGUgYSBuZXcgZmFuY3kgQ1BBUyBkZXZpY2UgZHJpdmVyIG9yIHNvLCBhbmQKdGhlIG5l
dyBkZXZpY2UgZHJpdmVyIHdpbGwgdXRpbGl6ZSB0aGUgImNwYXNfdG9wIiByZWdpc3RlciBhbmQg
b3RoZXIKQ1BBUyByZXNvdXJjZXMgaW4gYSBiZXR0ZXIgd2F5LCB0aGUgcmVnaXN0ZXIgc2hhbGwg
bm90IGJlIG5haWxlZCB0bwp0aGUgQ0FNU1MgcHJlbGltaW5hcmx5LgoKLS0gCkJlc3Qgd2lzaGVz
LApWbGFkaW1pcgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
