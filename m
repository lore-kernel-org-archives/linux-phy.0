Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D86FC44501
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jul 2026 21:47:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4/ZGyiR2O5t2nrpOh7if+tc63GBb+SmxBubN4VcH5Ok=; b=FADv4Fk5JA2ipU
	1mWcCktfUpEuPiSXO72bVQ7A/rwvvUz/925PDAXz9hUeurb50ti5PpVzFcWljNpWDkhv5XNo9T0SW
	hHCUdB7V0DHEhrCtl02/42DSBXU9Vj9IYTi7yrK5iYeKA95kVFUblz3ji723KqE9m9bmNWeUJY5bh
	iGKllU7NaFs20JTJLslxvh8J19iPXfLFuVPM9JqiXdLo9OppnAgZGM6hWXsmb8UrhWuvi/DPaKaFa
	jE3YV+jee66Ev1rNh+D70Y16erQB2OIlgKZfBxSyUsNdJjP8NM6yJY9nAc1tWWphyc7Wm7Bb20pF9
	Leq1D204vps+FbHovDQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wha7I-00000000Svr-3ysO;
	Wed, 08 Jul 2026 21:47:40 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wha7H-00000000SvP-2xPn
	for linux-phy@lists.infradead.org;
	Wed, 08 Jul 2026 21:47:39 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 3EDE46001A;
	Wed,  8 Jul 2026 21:47:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 97C8B1F000E9;
	Wed,  8 Jul 2026 21:47:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783547258;
	bh=Ho9t4saxM7CYjXi18IhwDcuBg23ex1BJ9BTaY2Iq+yo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=fxAG4duOfZ7dCvI3KnvqyST75qLCLabgdly1rNnBWlUVX2GDfMqBH0GEJq/jiEc29
	 So8hLAOBFTS6DP5hcaw4UQLEMia3rpqSs9eRiYyLWpZAiNxCiO2vHJsaoOOCUoDQ+D
	 hR4YFFzyHdqEP7sqzGJ9RNzv8fo3/SWAtOcZXNUl0G0uKUu+9KLA1P9Wfmo3wkN6dc
	 /POliTNNmWZtB1FpmWyxBGNvngB3jLQCFC3faY2vWV1RmyTod2bptgSlnyvv9KH9qt
	 divoPo5x4GYeaxtCjZZWG6vL7/TRuXCpSVZSkCqsNYESNNPL63e1BHu4uJxw5lRIhW
	 tWO/8539fB1VQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] phy: HiSilicon: Fix error handling in
 hi3670_pcie_allclk_ctrl()
To: "Akash Sukhavasi" <akash.sukhavasi@gmail.com>
Cc: linux-phy@lists.infradead.org, olteanv@gmail.com, neil.armstrong@linaro.org, vkoul@kernel.org
In-Reply-To: <20260708-b4-hi3670-v1-1-f9236f3e585c@gmail.com>
References: <20260708-b4-hi3670-v1-1-f9236f3e585c@gmail.com>
Date: Wed, 08 Jul 2026 21:47:37 +0000
Message-Id: <20260708214737.97C8B1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBUaGUgZXJyb3IgaGFuZGxpbmcgZm9yIGlzX3BpcGVfY2xrX3N0YWJsZSgpIGluY29y
cmVjdGx5IHJldHVybnMgMCAoc3VjY2VzcykgaW5zdGVhZCBvZiBhIG5lZ2F0aXZlIGVycm9yIGNv
ZGUsIG1hc2tpbmcgdGhlIFBIWSBpbml0aWFsaXphdGlvbiBmYWlsdXJlLgotLQoKLS0tIFBhdGNo
IFsxXTogW1BBVENIXSBwaHk6IEhpU2lsaWNvbjogRml4IGVycm9yIGhhbmRsaW5nIGluIGhpMzY3
MF9wY2llX2FsbGNsa19jdHJsKCkgLS0tCmNvbW1pdCBhYjg5NTg4YThmMTJlNWE5YmM2YzVhZjRi
Zjg3YWFhNGRkNGVjMGFlCkF1dGhvcjogQWthc2ggU3VraGF2YXNpIDxha2FzaC5zdWtoYXZhc2lA
Z21haWwuY29tPgoKcGh5OiBIaVNpbGljb246IEZpeCBlcnJvciBoYW5kbGluZyBpbiBoaTM2NzBf
cGNpZV9hbGxjbGtfY3RybCgpCgpXaGVuIGhpMzY3MF9wY2llX3BsbF9jdHJsKCkgZmFpbHMsIGhp
MzY3MF9wY2llX2FsbGNsa19jdHJsKCkgcmV0dXJucwotRUlOVkFMIGRpcmVjdGx5LCBza2lwcGlu
ZyB0aGUgY2xvc2VfY2xvY2tzIGNsZWFudXAgcGF0aC4gVGhpcyBsZWF2ZXMKdGhlIFBMTCB3aXRo
IGl0cyBwb3dlci1kb3duIGJpdCBjbGVhcmVkLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkv
aGlzaWxpY29uL3BoeS1oaTM2NzAtcGNpZS5jIGIvZHJpdmVycy9waHkvaGlzaWxpY29uL3BoeS1o
aTM2NzAtcGNpZS5jCj4gaW5kZXggNzM5NmM2MDFkODc0Ny4uZTkwOWQwZTViZTBhYyAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL3BoeS9oaXNpbGljb24vcGh5LWhpMzY3MC1wY2llLmMKPiArKysgYi9k
cml2ZXJzL3BoeS9oaXNpbGljb24vcGh5LWhpMzY3MC1wY2llLmMKClsgLi4uIF0KCj4gQEAgLTQ4
MCw3ICs0ODAsNyBAQCBzdGF0aWMgaW50IGhpMzY3MF9wY2llX2FsbGNsa19jdHJsKHN0cnVjdCBo
aTM2NzBfcGNpZV9waHkgKnBoeSwgYm9vbCBjbGtfb24pCj4gIAlyZXQgPSBoaTM2NzBfcGNpZV9w
bGxfY3RybChwaHksIHRydWUpOwo+ICAJaWYgKHJldCkgewo+ICAJCWRldl9lcnIoZGV2LCAiRmFp
bGVkIHRvIGVuYWJsZSBwbGxcbiIpOwo+IC0JCXJldHVybiAtRUlOVkFMOwo+ICsJCWdvdG8gY2xv
c2VfY2xvY2tzOwo+ICAJfQo+ICAJaGkzNjcwX3BjaWVfaHBfZGVib3VuY2VfZ3QocGh5LCB0cnVl
KTsKPiAgCWhpMzY3MF9wY2llX3BoeXJlZl9ndChwaHksIHRydWUpOwoKW1NldmVyaXR5OiBIaWdo
XQpUaGlzIGlzbid0IGEgYnVnIGludHJvZHVjZWQgYnkgdGhpcyBwYXRjaCwgYnV0IHdoaWxlIGxv
b2tpbmcgYXQgdGhlIGVycm9yCmhhbmRsaW5nIGluIHRoaXMgZHJpdmVyLCBJIG5vdGljZWQgYW4g
aXNzdWUgaW4gaGkzNjcwX3BjaWVfcGh5X3Bvd2VyX29uKCkuCgpXaGVuIGNoZWNraW5nIGlmIHRo
ZSBwaXBlIGNsb2NrIGlzIHN0YWJsZSwgdGhlIGRyaXZlciBjYWxscwppc19waXBlX2Nsa19zdGFi
bGUoKSB3aGljaCByZXR1cm5zIGEgYm9vbGVhbjoKCmRyaXZlcnMvcGh5L2hpc2lsaWNvbi9waHkt
aGkzNjcwLXBjaWUuYzpoaTM2NzBfcGNpZV9waHlfcG93ZXJfb24oKSB7CiAgICAuLi4KCXJldCA9
IGlzX3BpcGVfY2xrX3N0YWJsZShwaHkpOwoJaWYgKCFyZXQpCgkJZ290byBkaXNhYmxlX2Nsa3M7
CiAgICAuLi4KZGlzYWJsZV9jbGtzOgoJa2lyaW5fcGNpZV9jbGtfY3RybChwaHksIGZhbHNlKTsK
CXJldHVybiByZXQ7Cn0KClNpbmNlIGlzX3BpcGVfY2xrX3N0YWJsZSgpIHJldHVybnMgZmFsc2Ug
KDApIG9uIGZhaWx1cmUsIHRoaXMgYXNzaWducyAwIHRvCnJldCBhbmQgYnJhbmNoZXMgdG8gZGlz
YWJsZV9jbGtzLCB1bHRpbWF0ZWx5IHJldHVybmluZyAwIChzdWNjZXNzKSBpbnN0ZWFkCm9mIGEg
bmVnYXRpdmUgZXJyb3IgY29kZS4KCkNvdWxkIHRoaXMgbWlzbGVhZCB0aGUgY2FsbGVyICh0aGUg
UENJZSBjb250cm9sbGVyIGRyaXZlcikgaW50byBiZWxpZXZpbmcgdGhlClBIWSBzdWNjZXNzZnVs
bHkgcG93ZXJlZCBvbj8gSWYgdGhlIGNvbnRyb2xsZXIgdGhlbiBwcm9jZWVkcyB0byBhY2Nlc3Mg
dGhlClBDSWUgY29uZmlnIHNwYWNlIHdpdGggdGhlIFBIWSBvZmYgYW5kIGNsb2NrcyBkaXNhYmxl
ZCwgd2lsbCB0aGlzIGNhdXNlIGFuCmFib3J0IG9yIGtlcm5lbCBjcmFzaD8KCkFkZGl0aW9uYWxs
eSwgYSBGSVhNRSBjb21tZW50IGluIGhpMzY3MF9wY2llX3BoeV9wb3dlcl9vZmYoKSBub3RlcyB0
aGF0CmNhbGxpbmcga2lyaW5fcGNpZV9jbGtfY3RybChwaHksIGZhbHNlKSBjYXVzZXMgYW4gQXN5
bmNocm9ub3VzIFNFcnJvciBwYW5pYwpvbiB0aGlzIHBsYXRmb3JtLiBEb2VzIGludm9raW5nIGl0
IGhlcmUgaW4gdGhlIGRpc2FibGVfY2xrcyBlcnJvciBwYXRoCnRyaWdnZXIgdGhhdCBzYW1lIHBh
bmljPwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRj
aHNldC8yMDI2MDcwOC1iNC1oaTM2NzAtdjEtMS1mOTIzNmYzZTU4NWNAZ21haWwuY29tP3BhcnQ9
MQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
Cg==
