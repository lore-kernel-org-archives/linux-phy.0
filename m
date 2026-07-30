Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F15CEC55165
	for <linux-phy@archiver.kernel.org>; Thu, 30 Jul 2026 14:13:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4+g1CkE0Ii/dqtvosu+Wu8md0u72ssJLYHu9bSigHr8=; b=eEYdDaoVdyuf7B
	Np4q9nq/gsc/0VlFFTMt8yJEhezpMkI3YoDGGLlnSiCm/cCcTksMeCIxc9bEDdPb2RV2yHIx2WhPR
	VfylhAqWlhrzGB28AK7N4kqg5V7tzlr0Kffz4a+g/OfAfk7LKINcS4l6H/m7ahgkl95BvjgZ4fY9b
	v/HnluGnhlrx7sn/mjjjyli0GOMPYAG49k89Ux3+TGSWADfeZagcELsYGZR9SYozya8bEuZ8xzvEt
	2R12FaDuRi8ANDmKEdczDHKrfYNswcbfNtOcXcxNbsxYtRbQuiDOY42kyAHgoOnHJU/Q3zkdCROcD
	eWGMfOEHGMNmHhJWmAqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpRW2-0000000AiUL-24kN;
	Thu, 30 Jul 2026 14:13:42 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpRW0-0000000AiU9-4AWc
	for linux-phy@lists.infradead.org;
	Thu, 30 Jul 2026 14:13:41 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 210E7600B0;
	Thu, 30 Jul 2026 14:13:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 680B81F000E9;
	Thu, 30 Jul 2026 14:13:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785420819;
	bh=I5GwpwZWmSMbLHVBAn1Wn6Dr/xQbgXHKS/lIG0Te5Sw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=e+TSJCJithB42FTdeMYT8bRbWa7shv/AabqBDar7zKFvJo7s1PbaOZSI1/3jT+tko
	 SBXIIC3ai3B5kAOU4/Z4C56DTKrvTulpOjFhhLZrqQCFDgpKp+vD+5l/SULDgs0dtd
	 gDO5G0O8GpdlxbCjtsV9PwDM148XHIwbZc+KBB61A9GaHp86hoqh+dX1AlQCs9ZR2M
	 JPEhNF6M28tB3dP2wGpchkTzdU9FJRcIH5ly47qsdoB2bnSV4jz20unOQTNGzxHK8k
	 QowDxBkjWpBEPKWm/BAYHXG8OROt+ESzo97zsqR3GMtVc7hyhF/XDbwEB4HaKIG8gX
	 CNazamHR/WgmQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/2] phy: qcom-snps-femto-v2: Add support for SA8255P
To: "Mattijs Korpershoek" <mkorpershoek@kernel.org>
Cc: robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com, neil.armstrong@linaro.org, devicetree@vger.kernel.org
In-Reply-To: <20260730-phy-qcom-snps-femto-v2-8255-v1-2-8b8bf5105a68@kernel.org>
References: <20260730-phy-qcom-snps-femto-v2-8255-v1-0-8b8bf5105a68@kernel.org>
 <20260730-phy-qcom-snps-femto-v2-8255-v1-2-8b8bf5105a68@kernel.org>
Date: Thu, 30 Jul 2026 14:13:38 +0000
Message-Id: <20260730141339.680B81F000E9@smtp.kernel.org>
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
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIEluY29ycmVjdCBwb3dl
ciBkb21haW4gZW5hYmxlbWVudCBhbmQgdGVhcmRvd24gb3JkZXJpbmcgaW4gZDMgPC0tPiBkMCB0
cmFuc2l0aW9ucy4KLSBbTWVkaXVtXSBUaGUgYHNhODI1NXBfc25wc19oc19waHlgIG1hdGNoIGRh
dGEgaXMgZGVmaW5lZCBhcyBhIHNjYWxhciBzdHJ1Y3QgYnV0IGl0ZXJhdGVkIG92ZXIgYXMgYW4g
YXJyYXksIHJpc2tpbmcgb3V0LW9mLWJvdW5kcyBtZW1vcnkgYWNjZXNzLgotLQoKLS0tIFBhdGNo
IFsyXTogW1BBVENIIDIvMl0gcGh5OiBxY29tLXNucHMtZmVtdG8tdjI6IEFkZCBzdXBwb3J0IGZv
ciBTQTgyNTVQIC0tLQpjb21taXQgMzM3YTRiNmZhNDZiNDJlMjU1ZjZhYTZiMTllMmI1MmU2NWU1
OWY3ZApBdXRob3I6IFNyaXJhbSBEYXNoIDxxdWljX3NyaXJhbWRAcXVpY2luYy5jb20+CgpwaHk6
IHFjb20tc25wcy1mZW10by12MjogQWRkIHN1cHBvcnQgZm9yIFNBODI1NVAKClRoZSBRdWFsY29t
bSBhdXRvbW90aXZlIFNBODI1NXAgU29DIHJlbGllcyBvbiBmaXJtd2FyZSB0byBjb25maWd1cmUK
cGxhdGZvcm0gcmVzb3VyY2VzLCBpbmNsdWRpbmcgY2xvY2tzLCBpbnRlcmNvbm5lY3RzIGFuZCBU
TE1NLgpUaGUgZHJpdmVyIHJlcXVlc3RzIHJlc291cmNlcyBvcGVyYXRpb25zIG92ZXIgU0NNSSB1
c2luZyBwb3dlciBwcm90b2NvbHMuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9xdWFsY29t
bS9waHktcWNvbS1zbnBzLWZlbXRvLXYyLmMgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNv
bS1zbnBzLWZlbXRvLXYyLmMKPiBpbmRleCBlYjBiMGY2MWQ5OGUwLi40YTliZDNhZTBlNTM1IDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXNucHMtZmVtdG8tdjIu
Ywo+ICsrKyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXNucHMtZmVtdG8tdjIuYwoK
WyAuLi4gXQoKPiBAQCAtMTM2LDggKzEzOSw4MSBAQCBzdHJ1Y3QgcWNvbV9zbnBzX2hzcGh5IHsK
PiArLyogZDNfdG9fZDAgdHJhbnNpdGlvbiBieSB0dXJuaW5nIG9uIGFsbCB0aGUgc3VwcGxpZXJz
ICovCj4gK3N0YXRpYyBpbnQgcWNvbV9zbnBzX2QzX3RvX2QwKHN0cnVjdCBxY29tX3NucHNfaHNw
aHkgKmhzcGh5KQo+ICt7Cj4gKwlpbnQgcmV0Owo+ICsKPiArCWlmICghaHNwaHktPnBkX2xpc3Qp
Cj4gKwkJcmV0dXJuIDA7Cj4gKwo+ICsJcmV0ID0gcG1fcnVudGltZV9yZXN1bWVfYW5kX2dldCho
c3BoeS0+cGRfbGlzdC0+cGRfZGV2c1swXSk7Cj4gKwlpZiAocmV0KQo+ICsJCXJldHVybiByZXQ7
Cj4gKwo+ICsJcmV0ID0gcG1fcnVudGltZV9yZXN1bWVfYW5kX2dldChoc3BoeS0+cGRfbGlzdC0+
cGRfZGV2c1sxXSk7Cj4gKwlpZiAocmV0KQo+ICsJCXBtX3J1bnRpbWVfcHV0X3N5bmMoaHNwaHkt
PnBkX2xpc3QtPnBkX2RldnNbMF0pOwo+ICsKPiArCXJldHVybiByZXQ7Cj4gK30KCltTZXZlcml0
eTogSGlnaF0KRG9lcyB0aGlzIHJlc3VtZSB0aGUgcG93ZXIgZG9tYWlucyBpbiB0aGUgY29ycmVj
dCBvcmRlcj8KClRoZSBjb21taXQgbWVzc2FnZSBzdGF0ZXMgdGhhdCB0aGUgcG93ZXIgZG9tYWlu
ICdjb3JlJyAocGRfZGV2c1sxXSkgY29udHJvbHMKdGhlIEdEU0MsIGFuZCAndHJhbnNmZXInIChw
ZF9kZXZzWzBdKSBjb250cm9scyBjbG9ja3MgYW5kIGludGVyY29ubmVjdHMuClJlc3VtaW5nICd0
cmFuc2ZlcicgYmVmb3JlICdjb3JlJyBtZWFucyBjbG9ja3MgYXJlIGVuYWJsZWQgd2l0aG91dCB0
aGVpcgpwb3dlcmluZyBHRFNDLCB3aGljaCBjb3VsZCBjYXVzZSBidXMgaGFuZ3Mgb24gUXVhbGNv
bW0gU29Dcy4KCkFkZGl0aW9uYWxseSwgc2luY2Ugc3RhdGUgZDEgaGFzICd0cmFuc2ZlcicgT0ZG
IGFuZCAnY29yZScgT04sIHNob3VsZG4ndCAnY29yZScKYWx3YXlzIGJlIGVuYWJsZWQgZmlyc3Qg
YW5kIGRpc2FibGVkIGxhc3Q/Cgo+ICsKPiArLyogZDBfdG9fZDMgdHJhbnNpdGlvbiBieSB0dXJu
aW5nIG9mZiBhbGwgdGhlIHN1cHBsaWVycyAqLwo+ICtzdGF0aWMgdm9pZCBxY29tX3NucHNfZDBf
dG9fZDMoc3RydWN0IHFjb21fc25wc19oc3BoeSAqaHNwaHkpCj4gK3sKPiArCWlmICghaHNwaHkt
PnBkX2xpc3QpCj4gKwkJcmV0dXJuOwo+ICsKPiArCXBtX3J1bnRpbWVfcHV0X3N5bmMoaHNwaHkt
PnBkX2xpc3QtPnBkX2RldnNbMV0pOwo+ICsJcG1fcnVudGltZV9wdXRfc3luYyhoc3BoeS0+cGRf
bGlzdC0+cGRfZGV2c1swXSk7Cj4gK30KCltTZXZlcml0eTogSGlnaF0KU2hvdWxkIHRoZSAndHJh
bnNmZXInIGRvbWFpbiAocGRfZGV2c1swXSkgYmUgcHV0IGJlZm9yZSB0aGUgJ2NvcmUnCmRvbWFp
biAocGRfZGV2c1sxXSk/CgpQdXR0aW5nICdjb3JlJyBiZWZvcmUgJ3RyYW5zZmVyJyBkaXNhYmxl
cyB0aGUgR0RTQyB3aGlsZSB0aGUgY2xvY2tzIGFyZQpzdGlsbCBhY3RpdmUuCgpbIC4uLiBdCgo+
IEBAIC0zMTYsNiArMzk0LDEwIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb3ZlcnJpZGVfcGFyYW0g
bHNfZnNfb3V0cHV0X2ltcGVkYW5jZV9zYzcyODBbXSA9IHsKPiAgCXsgMTMxMCwgMCB9LAo+ICB9
Owo+ICAKPiArc3RhdGljIGNvbnN0IHN0cnVjdCBvdmVycmlkZV9wYXJhbV9tYXAgc2E4MjU1cF9z
bnBzX2hzX3BoeSA9IHsKPiArCS5md19tYW5hZ2VkID0gdHJ1ZSwKPiArfTsKPiArCgpbU2V2ZXJp
dHk6IE1lZGl1bV0KV2lsbCB0aGlzIHNjYWxhciBzdHJ1Y3QgY2F1c2UgYW4gb3V0LW9mLWJvdW5k
cyByZWFkIGluCnFjb21fc25wc19oc3BoeV9yZWFkX292ZXJyaWRlX3BhcmFtX3NlcSgpPwoKVGhl
IG1hdGNoIGRhdGEgaXMgZGVmaW5lZCBoZXJlIGFzIGEgc2luZ2xlIHNjYWxhciBzdHJ1Y3QsIGJ1
dApxY29tX3NucHNfaHNwaHlfcmVhZF9vdmVycmlkZV9wYXJhbV9zZXEoKSBjYXN0cyB0aGUgbWF0
Y2ggZGF0YSB0byBhbiBhcnJheSBhbmQKaXRlcmF0ZXMgb3ZlciBpdCB1bnRpbCBjZmdbaV0ucHJv
cF9uYW1lICE9IE5VTEw6Cgpkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1zbnBzLWZlbXRv
LXYyLmM6cWNvbV9zbnBzX2hzcGh5X3JlYWRfb3ZlcnJpZGVfcGFyYW1fc2VxKCkgewogICAgLi4u
CgljZmcgPSBvZl9kZXZpY2VfZ2V0X21hdGNoX2RhdGEoZGV2KTsKCWlmICghY2ZnKQoJCXJldHVy
bjsKCglmb3IgKGkgPSAwOyBjZmdbaV0ucHJvcF9uYW1lICE9IE5VTEw7IGkrKykgewogICAgLi4u
Cn0KCkN1cnJlbnRseSB0aGlzIHRlcm1pbmF0ZXMgb24gdGhlIGZpcnN0IGl0ZXJhdGlvbiBiZWNh
dXNlIHRoZSB1bmluaXRpYWxpemVkCi5wcm9wX25hbWUgZmllbGQgaXMgaW1wbGljaXRseSBOVUxM
LCBidXQgaWYgYSBwcm9wZXJ0eSBpcyBldmVyIGFkZGVkIHRvIHRoaXMKc3RydWN0IGluIHRoZSBm
dXR1cmUsIGl0IHdpbGwgcmVhZCBwYXN0IHRoZSBlbmQgb2YgdGhlIHN0cnVjdCBpbnRvIGFkamFj
ZW50Cm1lbW9yeS4KClNob3VsZCB0aGlzIGJlIGRlZmluZWQgYXMgYW4gYXJyYXkgd2l0aCBhbiBl
bXB0eSBzZW50aW5lbCBlbGVtZW50IGxpa2UgdGhlCm90aGVyIHBhcmFtIG1hcHM/CgotLSAKU2Fz
aGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNzMw
LXBoeS1xY29tLXNucHMtZmVtdG8tdjItODI1NS12MS0wLThiOGJmNTEwNWE2OEBrZXJuZWwub3Jn
P3BhcnQ9MgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==
