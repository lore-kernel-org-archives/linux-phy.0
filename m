Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326A0606A326
	for <linux-phy@archiver.kernel.org>; Fri, 20 Nov 2026 14:57:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=a7Dl8urI;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=IWGA7uvu
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=oRyTc5/q8AZtb8n+jQcEcoPPLH3jlz9XiHtJZfbWHOM=; b=a7Dl8urII+TNZdf5z01DoqhxKA
	hSwCoqGFsv8Ea0hF2boDaffnT5NdSmpKOkZBJkxM3TRmhrW9L5bSX3shd/U1dnbAQv2b15wmUK8Rz
	ANXbjMGkkaeAlT3dgLBozFOK5N5/khTHQ4y6PTbCNkpxYbzcCwn7DYwVlj7pjRD4AhHYOR8A7C3nz
	1oCnmBQaNVjEK4EaHO8EvOe2zrZ5ZTicJaffalDAoQ8VLOe7V69BQw+Q+Yj5D2X6ixfmw7CkGj2nX
	YUCo9fPyLCCexkLFzDeKivsTl5f+wtD4V1pT1LYIdlkIVCI/MpVTXj3NcHmBqjlm56zcrLaZUF1Ki
	a7XSMkjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUQ3A-0000000FKCv-32v6;
	Fri, 20 Nov 2026 14:57:16 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUQ39-0000000FKCo-24cV
	for linux-phy@lists.infradead.org;
	Fri, 20 Nov 2026 14:57:15 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 4325F40647;
	Fri, 20 Nov 2026 14:57:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3B98C1F000C6;
	Fri, 20 Nov 2026 14:57:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795186634;
	bh=VigvJCRt5rXY+6Kai55nHb34XII7DZnlFQiPz+X14Z4=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date;
	b=IWGA7uvu2MNG1+rvnP6DxMwptyVI8Pkgsj7+Sezxf/GivzfH5F6TV+kJ0Uh4Grg5D
	 m+Jf6nY7EKL/Ew9z/r7JgMb6+renWFEObbdwkmT6Crn+PdBvAzhnzh9GuaXB/u7yRX
	 +xxTsjiW9bKxm9pXEYOIA5dizN9RlIecuBq00HfiqxsQowP+ZpDSjeYskl3ncXnwll
	 5alPiJAejp3VcEbqdrhC/ED1O/H4HpjNp6Qwm1Ig8HVhTLdSVn7WiLtfUJLeCON1wn
	 gvxFL04fVGIO7+vxD67QCUJMNe0zu2j1VZFMjcnCDjdTANnwCByyBZxxDWFLO/IuXB
	 2s4qYPrfa1ulw==
From: Mattijs Korpershoek <mkorpershoek@kernel.org>
To: sashiko-reviews@lists.linux.dev
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org,
 neil.armstrong@linaro.org, olteanv@gmail.com
Subject: Re: [PATCH v5 2/2] phy: qcom-snps-femto-v2: Add support for SA8255P
In-Reply-To: <sashiko-outbox-225334@kernel.org>
References: <20261120-phy-qcom-snps-femto-v2-8255-v5-0-86a9880ee5a5@kernel.org>
 <20261120-phy-qcom-snps-femto-v2-8255-v5-2-86a9880ee5a5@kernel.org>
 <sashiko-outbox-225334@kernel.org>
Date: Fri, 20 Nov 2026 15:57:12 +0100
Message-ID: <xhkdbcxrzpn3r.fsf@mkorpers-koolstof.csb>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gRnJpLCBOb3YgMjAsIDIwMjYgYXQgMTQ6MTEsIHNhc2hpa28tYm90QGtlcm5lbC5vcmcgd3Jv
dGU6Cgo+IFRoYW5rIHlvdSBmb3IgeW91ciBjb250cmlidXRpb24hIFNhc2hpa28gQUkgcmV2aWV3
IGZvdW5kIDEgcG90ZW50aWFsCj4gaXNzdWUgdG8gY29uc2lkZXI6Cj4gLSBbTG93XSBwaHk6IHFj
b20tc25wcy1mZW10by12MjogdXNlIGRldm1fcG1fZG9tYWluX2F0dGFjaF9saXN0KCkgYW5kCj4g
ICBjaGVjayByZXQgPT0gMAo+IC0tCj4KPiBjb21taXQgNDAzMjNlZDgzZWU2ZjAzYzM2ZDI3Njdk
MWU5MWNkMDhjY2ZmMzczYgo+IEF1dGhvcjogU3JpcmFtIERhc2ggPHF1aWNfc3JpcmFtZEBxdWlj
aW5jLmNvbT4KPgo+IHBoeTogcWNvbS1zbnBzLWZlbXRvLXYyOiBBZGQgc3VwcG9ydCBmb3IgU0E4
MjU1UAo+Cj4gVGhpcyBjb21taXQgYWRkcyBzdXBwb3J0IGZvciB0aGUgU0E4MjU1UCBVU0IgSFMg
UEhZIHZhcmlhbnQsIHdob3NlIHBvd2VyLAo+IGNsb2NrLCBhbmQgcmVzZXQgcmVzb3VyY2VzIGFy
ZSBtYW5hZ2VkIGJ5IFNDTUkgZmlybXdhcmUgdGhyb3VnaCAiY29yZSIgYW5kCj4gInRyYW5zZmVy
IiBwb3dlciBkb21haW5zLgo+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9w
aHktcWNvbS1zbnBzLWZlbXRvLXYyLmMgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1z
bnBzLWZlbXRvLXYyLmMKPj4gaW5kZXggMGRhZTgzNjk2NzFhYi4uMGVjMzRiYzVjMjZlYyAxMDA2
NDQKPj4gLS0tIGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tc25wcy1mZW10by12Mi5j
Cj4+ICsrKyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXNucHMtZmVtdG8tdjIuYwo+
IFsgLi4uIF0KPj4gQEAgLTE2NCw4ICsxNjcsODIgQEAgc3RydWN0IHFjb21fc25wc19oc3BoeSB7
Cj4+ICAJYm9vbCBwaHlfaW5pdGlhbGl6ZWQ7Cj4+ICAJZW51bSBwaHlfbW9kZSBtb2RlOwo+PiAg
CXN0cnVjdCBwaHlfb3ZlcnJpZGVfc2VxIHVwZGF0ZV9zZXFfY2ZnW05VTV9IU1BIWV9UVU5JTkdf
UEFSQU1TXTsKPj4gKwo+PiArCXN0cnVjdCBkZXZfcG1fZG9tYWluX2xpc3QgKnBkX2xpc3Q7Cj4+
ICB9Owo+PiAgCj4+ICtzdGF0aWMgdm9pZCBxY29tX3NucHNfZG9tYWluX2RldGFjaCh2b2lkICpk
YXRhKQo+PiArewo+PiArCXN0cnVjdCBxY29tX3NucHNfaHNwaHkgKmhzcGh5ID0gZGF0YTsKPj4g
Kwo+PiArCWRldl9wbV9kb21haW5fZGV0YWNoX2xpc3QoaHNwaHktPnBkX2xpc3QpOwo+PiArfQo+
PiArCj4+ICtzdGF0aWMgaW50IHFjb21fc25wc19kb21haW5fYXR0YWNoKHN0cnVjdCBxY29tX3Nu
cHNfaHNwaHkgKmhzcGh5KQo+PiArewo+PiArCXN0cnVjdCBkZXZfcG1fZG9tYWluX2F0dGFjaF9k
YXRhIHBkX2RhdGEgPSB7Cj4+ICsJCS5wZF9mbGFncyAgICAgICA9IFBEX0ZMQUdfTk9fREVWX0xJ
TkssCj4+ICsJCS5wZF9uYW1lcyAgICAgICA9IChjb25zdCBjaGFyKltdKSB7ICJjb3JlIiwgInRy
YW5zZmVyIiB9LAo+PiArCQkubnVtX3BkX25hbWVzICAgPSAyLAo+PiArCX07Cj4+ICsJc3RydWN0
IGRldmljZSAqZGV2ID0gaHNwaHktPmRldjsKPj4gKwlpbnQgcmV0Owo+PiArCj4+ICsJcmV0ID0g
ZGV2X3BtX2RvbWFpbl9hdHRhY2hfbGlzdChkZXYsICZwZF9kYXRhLCAmaHNwaHktPnBkX2xpc3Qp
Owo+PiArCWlmIChyZXQgPCAwKQo+PiArCQlyZXR1cm4gZGV2X2Vycl9wcm9iZShkZXYsIHJldCwg
ImRvbWFpbiBhdHRhY2ggZmFpbGVkXG4iKTsKPj4gKwo+PiArCXJldHVybiAwOwo+PiArfQo+PiAr
Cj4+ICtzdGF0aWMgYm9vbCBxY29tX3NucHNfaXNfZndfbWFuYWdlZChzdHJ1Y3QgcWNvbV9zbnBz
X2hzcGh5ICpoc3BoeSkKPj4gK3sKPj4gKwlyZXR1cm4gaHNwaHktPnBkX2xpc3QgIT0gTlVMTDsK
Pj4gK30KPj4gKwo+PiArc3RhdGljIGludCBxY29tX3NucHNfcGRzX2VuYWJsZV9hbGwoc3RydWN0
IHFjb21fc25wc19oc3BoeSAqaHNwaHkpCj4+ICt7Cj4+ICsJaW50IHJldDsKPj4gKwo+PiArCWlm
ICghcWNvbV9zbnBzX2lzX2Z3X21hbmFnZWQoaHNwaHkpKQo+PiArCQlyZXR1cm4gMDsKPgo+IFtT
ZXZlcml0eTogTG93XQo+IENhbiBxY29tX3NucHNfZG9tYWluX2F0dGFjaCgpIHN1Y2NlZWQgd2l0
aCBoc3BoeS0+cGRfbGlzdCBsZWZ0IE5VTEwgd2hlbgo+IGRldl9wbV9kb21haW5fYXR0YWNoX2xp
c3QoKSByZXR1cm5zIDAgKGZvciBleGFtcGxlLCB3aGVuIENPTkZJR19QTSBpcwo+IGRpc2FibGVk
KT8KPgo+IElmIHRoYXQgaGFwcGVucywgcWNvbV9zbnBzX3Bkc19lbmFibGVfYWxsKCkgcmV0dXJu
cyAwIHdpdGhvdXQgZW5hYmxpbmcgdGhlCj4gcG93ZXIgZG9tYWlucywgYW5kIHFjb21fc25wc19o
c3BoeV9md19tYW5hZ2VkX2luaXQoKSBwcm9jZWVkcyB0bwo+IHFjb21fc25wc19oc3BoeV9jb25m
aWd1cmUoKSBhbmQgd3JpdGVzIFBIWSByZWdpc3RlcnMgd2hpbGUgY2xvY2tzLCByZXNldHMsCj4g
YW5kIHBvd2VyIGRvbWFpbnMgYXJlIG9mZi4gIEFsc28sIHFjb21fc25wc19kb21haW5fYXR0YWNo
KCkgYW5kCj4gcWNvbV9zbnBzX2RvbWFpbl9kZXRhY2goKSB3aXRoIGRldm1fYWRkX2FjdGlvbl9v
cl9yZXNldCgpIGluCj4gcWNvbV9zbnBzX2hzcGh5X3Byb2JlKCkgZHVwbGljYXRlIGRldm1fcG1f
ZG9tYWluX2F0dGFjaF9saXN0KCk7IGNhbGxpbmcKPiBkZXZtX3BtX2RvbWFpbl9hdHRhY2hfbGlz
dCgpIGRpcmVjdGx5IGFuZCByZXR1cm5pbmcgLUVOT0RFViB3aGVuIHJldCA9PSAwCj4gd291bGQg
YXZvaWQgYm90aCBpc3N1ZXMuCgpXaGlsZSBJIGFncmVlIHRoaXMgY2FuIGluZGVlZCBoYXBwZW4s
IGhhdmluZyBhIGtlcm5lbCBvbiBhbiBTQ01JLWVuYWJsZWQKYm9hcmQgc3VjaCBhcyBTQTgyNTVQ
IGRvZXMgbm90IG1ha2UgYSBsb3Qgb2Ygc2Vuc2UuIEkgdGhpbmsgdGhhdCBvdGhlcgp0aGluZ3Mg
d2lsbCBicmVhayBhcyB3ZWxsLiBJZiBpdCdzIG5vdCBzdHJpY3RseSBuZWNlc3NhcnkgSSdkIGxp
a2UgdG8KYXZvaWQgcmVzZW5kaW5nIGEgdjYganVzdCB0byBmaXggdGhpcy4KClZpbm9kLCBjYW4g
eW91IHBsZWFzZSBsZXQgbWUga25vdyBpZiBJIHNob3VsZCByZXNwaW4gdG8gYWRkcmVzcyB0aGlz
PwoKPgo+IC0tIAo+IFNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9w
YXRjaHNldC8yMDI2MTEyMC1waHktcWNvbS1zbnBzLWZlbXRvLXYyLTgyNTUtdjUtMC04NmE5ODgw
ZWU1YTVAa2VybmVsLm9yZz9wYXJ0PTIKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
