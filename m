Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A3CDD4A5F4
	for <linux-phy@archiver.kernel.org>; Sun, 18 Jan 2026 13:36:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JTDv08+IYN4ogjoKbYJZ1EQZyRaXEarFEqSEzCTjUBE=; b=NoZhiVg2pvOcQn
	YAMVhIYq/lHgDmCCyPCEI7hDrtvHKqYITac2E5zLJ66G/VxC9KZM1htEW5/3dwbxkRwxV9vAe5Qva
	di88j1CbRKkAxEB7IrUgATbnRQzTIqF5XW075q7bb+ut1ANbIC4hRgE4XMnfsiYGirSqxK6p3kWhL
	fX8JZr6iYJpw0mGrIEUUS9f+t1b2hPaYsm2heXvZ9V5GXzr9c0xvuFjeXk+Gbewls9WQ2p02p5mWV
	NeoVBbNgZfRFSwtHG/WRd1vLwUumry9u+h0aJV4LRbOdz9svGAuZMvot81Hh73TIelLkyYuy5U8vF
	uq90pFtoB9O0ubudIYBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhSwt-000000007pf-0acD;
	Sun, 18 Jan 2026 13:36:11 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhSwp-000000007pD-3U42
	for linux-phy@lists.infradead.org;
	Sun, 18 Jan 2026 13:36:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 91B9160010;
	Sun, 18 Jan 2026 13:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 86D90C116D0;
	Sun, 18 Jan 2026 13:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768743366;
	bh=ja+dnipH53AlTtKs9+FniT/yNEbDZimoOF27PN0Mxv8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OmJvJjviCcHUxI0hiBl15KkI9QG4ZzSOomWHuka+smSgPcKxhoy1rkdpNPeK+PIaD
	 3KX6C92rJ8lMu88e71gSJielOoICyzqA2FOjBs7SFE5HM38jxayDjzGoDy31OAY3tN
	 BPE0d7L71R9SD2t38X/OP4QcpUfoDKQuQ1ThoGyozDVi/lffbrAtLA5RrBRY1i7OI4
	 /SLI0gcMbTYIGhh8F2mSv0MUGNUewfBf4sq8XnINXUjfxnuymR6ZRLWgOzuuzjazl+
	 eKXRLPmrB69ZakQ6ED0PIU46v30BcM3FiLzYpm8F69miQ5vOkk/3x3yyLW05sqsX+J
	 RMnCuWJpv3T5A==
Date: Sun, 18 Jan 2026 19:06:03 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Yulin Lu <luyulin@eswincomputing.com>
Cc: neil.armstrong@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, p.zabel@pengutronix.de,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, ningyu@eswincomputing.com,
	zhengyu@eswincomputing.com, linmin@eswincomputing.com,
	huangyifeng@eswincomputing.com, fenglin@eswincomputing.com,
	lianghujun@eswincomputing.com
Subject: Re: Re: [PATCH v7 2/2] phy: eswin: Create eswin directory and add
 EIC7700 SATA PHY driver
Message-ID: <aWzhw65QEoLj2XE7@vaman>
References: <20260106062944.1529-1-luyulin@eswincomputing.com>
 <20260106063309.241-1-luyulin@eswincomputing.com>
 <aWeH5fn8nGOzjDpP@vaman>
 <133c22d5.2674.19bc5ff735f.Coremail.luyulin@eswincomputing.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <133c22d5.2674.19bc5ff735f.Coremail.luyulin@eswincomputing.com>
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

T24gMTYtMDEtMjYsIDE2OjUwLCBZdWxpbiBMdSB3cm90ZToKPiA+ID4gK3N0YXRpYyBpbnQgZWlj
NzcwMF9zYXRhX3BoeV9pbml0KHN0cnVjdCBwaHkgKnBoeSkKPiA+ID4gK3sKPiA+ID4gKwlzdHJ1
Y3QgZWljNzcwMF9zYXRhX3BoeSAqc2F0YV9waHkgPSBwaHlfZ2V0X2RydmRhdGEocGh5KTsKPiA+
ID4gKwl1MzIgdmFsOwo+ID4gPiArCWludCByZXQ7Cj4gPiA+ICsKPiA+ID4gKwlyZXQgPSBjbGtf
cHJlcGFyZV9lbmFibGUoc2F0YV9waHktPmNsayk7Cj4gPiA+ICsJaWYgKHJldCkKPiA+ID4gKwkJ
cmV0dXJuIHJldDsKPiA+ID4gKwo+ID4gPiArCXJlZ21hcF93cml0ZShzYXRhX3BoeS0+cmVnbWFw
LCBTQVRBX1JFRl9DVFJMMSwgU0FUQV9DTEtfUlNUX1NPVVJDRV9QSFkpOwo+ID4gPiArCj4gPiA+
ICsJdmFsID0gRklFTERfUFJFUChTQVRBX1AwX1BIWV9UWF9BTVBMSVRVREVfR0VOMV9NQVNLLCAw
eDQyKSB8Cj4gPiA+ICsJICAgICAgRklFTERfUFJFUChTQVRBX1AwX1BIWV9UWF9BTVBMSVRVREVf
R0VOMl9NQVNLLCAweDQ2KSB8Cj4gPiA+ICsJICAgICAgRklFTERfUFJFUChTQVRBX1AwX1BIWV9U
WF9BTVBMSVRVREVfR0VOM19NQVNLLCAweDczKTsKPiA+ID4gKwlyZWdtYXBfd3JpdGUoc2F0YV9w
aHktPnJlZ21hcCwgU0FUQV9QSFlfQ1RSTDAsIHZhbCk7Cj4gPiA+ICsKPiA+ID4gKwl2YWwgPSBG
SUVMRF9QUkVQKFNBVEFfUDBfUEhZX1RYX1BSRUVNUEhfR0VOMV9NQVNLLCAweDUpIHwKPiA+ID4g
KwkgICAgICBGSUVMRF9QUkVQKFNBVEFfUDBfUEhZX1RYX1BSRUVNUEhfR0VOMl9NQVNLLCAweDUp
IHwKPiA+ID4gKwkgICAgICBGSUVMRF9QUkVQKFNBVEFfUDBfUEhZX1RYX1BSRUVNUEhfR0VOM19N
QVNLLCAweDgpOwo+ID4gCj4gPiBXaGVyZSBhcmUgdGhlIG1hZ2ljIHZhbHVlcyB5b3UgYXJlIHdy
aXRpbmcgY29taW5nIGZyb20uLj8KPiA+IAo+IAo+IEhpIFZpbm9kLAo+IAo+IFRoZXNlIHZhbHVl
cyBzZXQgdGhlIFRYIHByZWVtcGhhc2lzIGFuZCBhbXBsaXR1ZGUgcGFyYW1ldGVycyBmb3IgdGhl
IFNBVEEgUEhZLgo+IFRoZSBhY3R1YWwgbnVtYmVycyBjb21lIGZyb20gZXll4oCRZGlhZ3JhbSB0
dW5pbmcgcmVzdWx0cyBvbiBkaWZmZXJlbnQgaGFyZHdhcmUKPiBkZXZlbG9wbWVudCBib2FyZHMu
Cj4gVGhlIGN1cnJlbnQgY29kZSByZWZsZWN0cyB0aGUgc2V0dGluZ3MgZm9yIHRoZSBTaWZpdmUg
SGlGaXZlIFByZW1pZXIgUDU1MCBib2FyZC4KPiBJbiB0aGUgbmV4dCBwYXRjaCBJIHBsYW4gdG8g
bW92ZSB0aGVzZSBpbnRvIHRoZSBkZXZpY2V0cmVlIChEVFMpLgo+IFdvdWxkIHRoYXQgYmUgYWNj
ZXB0YWJsZT8KClNvIHRoaXMgd291bGQgY2hhbmdlIHdydCBlYWNoIGJvYXJkIHRoZSBkZXZpY2Ug
aXMuLi4/IE1heWJlIERUIHNob3VsZCBiZQpiZXR0ZXIgY2hvaWNlLiBQbGVhc2UgY2hlY2sgd2l0
aCBEVCBmb2xrcyBvbiB0aGUgYXBwcm9hY2gKCj4gCj4gPiA+ICsJcmVnbWFwX3dyaXRlKHNhdGFf
cGh5LT5yZWdtYXAsIFNBVEFfUEhZX0NUUkwxLCB2YWwpOwo+ID4gPiArCj4gPiA+ICsJdmFsID0g
RklFTERfUFJFUChTQVRBX0xPU19MRVZFTF9NQVNLLCAweDkpIHwKPiA+ID4gKwkgICAgICBGSUVM
RF9QUkVQKFNBVEFfTE9TX0JJQVNfTUFTSywgMHgyKTsKPiA+ID4gKwlyZWdtYXBfd3JpdGUoc2F0
YV9waHktPnJlZ21hcCwgU0FUQV9MT1NfSURFTiwgdmFsKTsKPiA+ID4gKwo+ID4gPiArCXZhbCA9
IFNBVEFfTV9DU1lTUkVRIHwgU0FUQV9TX0NTWVNSRVE7Cj4gPiA+ICsJcmVnbWFwX3dyaXRlKHNh
dGFfcGh5LT5yZWdtYXAsIFNBVEFfQVhJX0xQX0NUUkwsIHZhbCk7Cj4gPiA+ICsKPiA+ID4gKwl2
YWwgPSBTQVRBX1JFRl9SRVBFQVRDTEtfRU4gfCBTQVRBX1JFRl9VU0VfUEFEOwo+ID4gPiArCXJl
Z21hcF93cml0ZShzYXRhX3BoeS0+cmVnbWFwLCBTQVRBX1JFRl9DVFJMLCB2YWwpOwo+ID4gPiAr
Cj4gPiA+ICsJdmFsID0gRklFTERfUFJFUChTQVRBX01QTExfTVVMVElQTElFUl9NQVNLLCAweDNj
KTsKPiA+ID4gKwlyZWdtYXBfd3JpdGUoc2F0YV9waHktPnJlZ21hcCwgU0FUQV9NUExMX0NUUkws
IHZhbCk7Cj4gPiA+ICsKPiA+ID4gKwl1c2xlZXBfcmFuZ2UoMTUsIDIwKTsKPiA+ID4gKwo+ID4g
PiArCXJldCA9IHJlc2V0X2NvbnRyb2xfZGVhc3NlcnQoc2F0YV9waHktPnJzdCk7Cj4gPiA+ICsJ
aWYgKHJldCkKPiA+ID4gKwkJZ290byBkaXNhYmxlX2NsazsKPiA+ID4gKwo+ID4gPiArCXJldCA9
IHdhaXRfZm9yX3BoeV9yZWFkeShzYXRhX3BoeS0+cmVnbWFwLCBTQVRBX1AwX1BIWV9TVEFULAo+
ID4gPiArCQkJCSBTQVRBX1AwX1BIWV9SRUFEWSwgMSk7Cj4gPiA+ICsJaWYgKHJldCA8IDApIHsK
PiA+ID4gKwkJZGV2X2Vycigmc2F0YV9waHktPnBoeS0+ZGV2LCAiUEhZIFJFQURZIGNoZWNrIGZh
aWxlZFxuIik7Cj4gPiA+ICsJCWdvdG8gZGlzYWJsZV9jbGs7Cj4gPiA+ICsJfQo+ID4gPiArCj4g
PiA+ICsJcmV0dXJuIDA7Cj4gPiA+ICsKPiA+ID4gK2Rpc2FibGVfY2xrOgo+ID4gPiArCWNsa19k
aXNhYmxlX3VucHJlcGFyZShzYXRhX3BoeS0+Y2xrKTsKPiA+ID4gKwlyZXR1cm4gcmV0Owo+ID4g
PiArfQo+ID4gPiArCj4gPiA+ICtzdGF0aWMgaW50IGVpYzc3MDBfc2F0YV9waHlfZXhpdChzdHJ1
Y3QgcGh5ICpwaHkpCj4gPiA+ICt7Cj4gPiA+ICsJc3RydWN0IGVpYzc3MDBfc2F0YV9waHkgKnNh
dGFfcGh5ID0gcGh5X2dldF9kcnZkYXRhKHBoeSk7Cj4gPiA+ICsJaW50IHJldDsKPiA+ID4gKwo+
ID4gPiArCXJldCA9IHJlc2V0X2NvbnRyb2xfYXNzZXJ0KHNhdGFfcGh5LT5yc3QpOwo+ID4gPiAr
CWlmIChyZXQpCj4gPiA+ICsJCXJldHVybiByZXQ7Cj4gPiA+ICsKPiA+ID4gKwljbGtfZGlzYWJs
ZV91bnByZXBhcmUoc2F0YV9waHktPmNsayk7Cj4gPiA+ICsKPiA+ID4gKwlyZXR1cm4gMDsKPiA+
ID4gK30KPiA+ID4gKwo+ID4gPiArc3RhdGljIGNvbnN0IHN0cnVjdCBwaHlfb3BzIGVpYzc3MDBf
c2F0YV9waHlfb3BzID0gewo+ID4gPiArCS5pbml0CQk9IGVpYzc3MDBfc2F0YV9waHlfaW5pdCwK
PiA+ID4gKwkuZXhpdAkJPSBlaWM3NzAwX3NhdGFfcGh5X2V4aXQsCj4gPiA+ICsJLm93bmVyCQk9
IFRISVNfTU9EVUxFLAo+ID4gPiArfTsKPiA+ID4gKwo+ID4gPiArc3RhdGljIGludCBlaWM3NzAw
X3NhdGFfcGh5X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gPiA+ICt7Cj4g
PiA+ICsJc3RydWN0IGVpYzc3MDBfc2F0YV9waHkgKnNhdGFfcGh5Owo+ID4gPiArCXN0cnVjdCBw
aHlfcHJvdmlkZXIgKnBoeV9wcm92aWRlcjsKPiA+ID4gKwlzdHJ1Y3QgZGV2aWNlICpkZXYgPSAm
cGRldi0+ZGV2Owo+ID4gPiArCXN0cnVjdCByZXNvdXJjZSAqcmVzOwo+ID4gPiArCXZvaWQgX19p
b21lbSAqcmVnczsKPiA+ID4gKwo+ID4gPiArCXNhdGFfcGh5ID0gZGV2bV9remFsbG9jKGRldiwg
c2l6ZW9mKCpzYXRhX3BoeSksIEdGUF9LRVJORUwpOwo+ID4gPiArCWlmICghc2F0YV9waHkpCj4g
PiA+ICsJCXJldHVybiAtRU5PTUVNOwo+ID4gPiArCj4gPiA+ICsJcmVzID0gcGxhdGZvcm1fZ2V0
X3Jlc291cmNlKHBkZXYsIElPUkVTT1VSQ0VfTUVNLCAwKTsKPiA+ID4gKwlpZiAoIXJlcykKPiA+
ID4gKwkJcmV0dXJuIC1FTk9FTlQ7Cj4gPiA+ICsKPiA+ID4gKwlyZWdzID0gZGV2bV9pb3JlbWFw
KGRldiwgcmVzLT5zdGFydCwgcmVzb3VyY2Vfc2l6ZShyZXMpKTsKPiA+ID4gKwlpZiAoSVNfRVJS
KHJlZ3MpKQo+ID4gPiArCQlyZXR1cm4gUFRSX0VSUihyZWdzKTsKPiA+IAo+ID4gZGV2bV9wbGF0
Zm9ybV9nZXRfYW5kX2lvcmVtYXBfcmVzb3VyY2UoKSBwbGVhc2UKPiA+IAo+IAo+IEFzIGV4cGxh
aW5lZCBpbiBteSDigJx2NiDihpIgdjXigJ0gY2hhbmdlcyBpbiB0aGUgY292ZXLigJFsZXR0ZXI6
Cj4g4oCcTWFwIHRoZSBJL08gcmVzb3VyY2Ugd2l0aCBwbGF0Zm9ybV9nZXRfcmVzb3VyY2UgYW5k
IGRldm1faW9yZW1hcAo+IGluc3RlYWQgb2YgdGhlIGRldm1fcGxhdGZvcm1faW9yZW1hcF9yZXNv
dXJjZSBBUEksCj4gYmVjYXVzZSB0aGUgYWRkcmVzcyByZWdpb24gb2YgdGhlIFNBVEHigJFQSFkg
ZmFsbHMgaW50byB0aGUgcmVnaW9uIG9mCj4gdGhlIEhTUCBjbG9jayAmIHJlc2V0IHRoYXQgaGFz
IGFscmVhZHkgYmVlbiBvYnRhaW5lZCBieSB0aGUgSFNQCj4gY2xvY2vigJFhbmTigJFyZXNldCBk
cml2ZXIu4oCdCj4gVGhlIEhTUCBjbG9jay1hbmQtcmVzZXQgZHJpdmVyIHVzZXPCoGRldm1fcGxh
dGZvcm1fZ2V0X2FuZF9pb3JlbWFwX3Jlc291cmNlKCksCj4gbWVhbmluZyB0aGlzIHJlZ2lvbiBo
YXMgYWxyZWFkeSBiZWVuIHJlcXVlc3RlZC4KPiBUaGUgSFNQIGNsb2NrLWFuZC1yZXNldCBkcml2
ZXIgaXMgYWxzbyBjdXJyZW50bHkgYmVpbmcgdXBzdHJlYW1lZC4KCldvcnRoIGFkZGluZyBhIGNv
bW1lbnQgaGVyZSBmb3IgdGhhdAoKLS0gCn5WaW5vZAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
