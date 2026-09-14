Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C32FC88E50
	for <linux-phy@archiver.kernel.org>; Mon, 14 Sep 2026 13:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0g9xvZBH1i4Juob1r18OTkXx1VnrIoCMrbldmNoLL1c=; b=O6NJreJsTrC1/9
	FJitAb5eNt+y7jkOa1dq+UfJohNsRZuJ88V/GB2EUPCvKgsDycTDqhIhynQhuPtPwhKjhgEIMS5k9
	Ex34WpScEDBJTFD/AFXxV3atQ69zFz5Sfrf9G8Gu/6ojsrSOUbB2fvFkq3qHqGiN+u/2nNeC4rCS6
	AtEbNzT54ZVSPUpd+nsPYkbMVAXxQ92z1rFBpVn6dH80pgcGDlc7B8zHX76Am5CVle5b+jjq9FE7I
	RxbJj3H/IibUufbAVnxsrFa4vL2w3fMm5umqxHatq7K7qf21NKNyfokCTEFc+G+5Ag5GYZWak3BgI
	eZJfKnfCxatDa2e5sinQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x66gf-00000003kds-0lQV;
	Mon, 14 Sep 2026 13:25:33 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x66ge-00000003kdV-1PfS
	for linux-phy@lists.infradead.org;
	Mon, 14 Sep 2026 13:25:32 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 71320601DE;
	Mon, 14 Sep 2026 13:25:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A2E761F000FF;
	Mon, 14 Sep 2026 13:25:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789392331;
	bh=Rry/0ntt2y+SFc/0AThu1SLgcoTiaKx70bKXtE6pHoA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=KFeULYDdlytz8FK+lGByfjXmtWTj7607kz7hGP9ZR48PcA0vhNkw7FwF84G2OkRhU
	 JaFzn7vGRC2g77EezEWnbU6mS7HWp7H3S+Y5MouoG+D0VcWRD00qpO96ShHqXRriNd
	 7BLjuz/WO8GeVioXuxFz7PWnkmz8WM6oSZ51wZK4jwKpfSz6BgIGAJPR2mNrmvfbb4
	 EToefo2A1HbQJDnEveRG1PhAitidgId5V+00EFXQDc3GjRQ801ywdYF6522EV6ANBi
	 Ntoen1b6w00TZrbIeN5uZneTc7u70lLgtpauxzNXtM8TlBRnKHdoFAS3mldd+v/qZj
	 Jq8hmQIs9cdjQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v12 23/24] scsi: ufs: mediatek: Remove undocumented
 "clk-scale-up-vcore-min"
To: "Louis-Alexis Eyraud" <louisalexis.eyraud@collabora.com>
Cc: vkoul@kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org, conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20260914-mt8196-ufs-v12-23-9279d7ef814d@collabora.com>
References: <20260914-mt8196-ufs-v12-0-9279d7ef814d@collabora.com>
 <20260914-mt8196-ufs-v12-23-9279d7ef814d@collabora.com>
Date: Mon, 14 Sep 2026 13:25:30 +0000
Message-Id: <20260914132530.A2E761F000FF@smtp.kernel.org>
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
IFtIaWdoXSBDbG9jayBzY2FsaW5nIHN0YXRlIGlzIHVwZGF0ZWQgdW5jb25kaXRpb25hbGx5IGV2
ZW4gaWYgY2xvY2sgb3BlcmF0aW9ucyBmYWlsLCBhbmQgcGFydGlhbCByZXBhcmVudGluZyBpcyBu
b3QgcmV2ZXJ0ZWQuCi0tCgpjb21taXQgNDJhYWFhODFkNTliNWYxMzhiYjYwYzBlODEzMDY4NDUy
MzZmMzI1OQpBdXRob3I6IE5pY29sYXMgRnJhdHRhcm9saSA8bmljb2xhcy5mcmF0dGFyb2xpQGNv
bGxhYm9yYS5jb20+CgpzY3NpOiB1ZnM6IG1lZGlhdGVrOiBSZW1vdmUgdW5kb2N1bWVudGVkICJj
bGstc2NhbGUtdXAtdmNvcmUtbWluIgoKVGhlIE1lZGlhVGVrIFVGUyBkcml2ZXIgY29udGFpbnMg
c3VwcG9ydCBmb3IgYW4gdW5kb2N1bWVudGVkLApub24tdmVuZG9yLXByZWZpeGVkIHUzMiBwcm9w
ZXJ0eSBuYW1lZCAiY2xrLXNjYWxlLXVwLXZjb3JlLW1pbiIuClNpbmNlIGl0IGlzIG5vdCBwYXJ0
IG9mIGFueSBiaW5kaW5nLCB0aGlzIHBhdGNoIHJlbW92ZXMgaXQuCgo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL3Vmcy9ob3N0L3Vmcy1tZWRpYXRlay5jIGIvZHJpdmVycy91ZnMvaG9zdC91ZnMtbWVk
aWF0ZWsuYwo+IGluZGV4IDJlYmY3YTMxMThkYWIuLmVmODkyNDcwNGM5MDIgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy91ZnMvaG9zdC91ZnMtbWVkaWF0ZWsuYwo+ICsrKyBiL2RyaXZlcnMvdWZzL2hv
c3QvdWZzLW1lZGlhdGVrLmMKWyAuLi4gXQo+IEBAIC0yMDAwLDE0ICsxOTc2LDYgQEAgc3RhdGlj
IHZvaWQgX3Vmc19tdGtfY2xrX3NjYWxlKHN0cnVjdCB1ZnNfaGJhICpoYmEsIGJvb2wgc2NhbGVf
dXApCj4gIAl9Cj4gIAo+ICAJaWYgKHNjYWxlX3VwKSB7Cj4gLQkJaWYgKGNsa19iaW5kX3Zjb3Jl
KSB7Cj4gLQkJCXJldCA9IHJlZ3VsYXRvcl9zZXRfdm9sdGFnZShob3N0LT5yZWdfdmNvcmUsIHZv
bHQsIElOVF9NQVgpOwo+IC0JCQlpZiAocmV0KSB7Cj4gLQkJCQlkZXZfZXJyKGhiYS0+ZGV2LCAi
RmFpbGVkIHRvIHNldCB2Y29yZSB0byAlZFxuIiwgdm9sdCk7Cj4gLQkJCQlnb3RvIG91dDsKPiAt
CQkJfQo+IC0JCX0KPiAtCj4gIAkJcmV0ID0gY2xrX3NldF9wYXJlbnQoY2xraS0+Y2xrLCBtY2xr
LT51ZnNfc2VsX21heF9jbGtpLT5jbGspOwo+ICAJCWlmIChyZXQpIHsKPiAgCQkJZGV2X2Vyciho
YmEtPmRldiwgIiVzOiBGYWlsZWQgdG8gc2V0IGNsb2NrIG11eDogJXBlXG4iLAo+ICAJCQkJX19m
dW5jX18sIEVSUl9QVFIocmV0KSk7Cj4gIAkJCWdvdG8gb3V0Owo+ICAJCX0KCltTZXZlcml0eTog
SGlnaF0KVGhpcyBpcyBhIHByZS1leGlzdGluZyBpc3N1ZSwgYnV0IEkgbm90aWNlZCB0aGF0IGlm
IGNsa19zZXRfcGFyZW50KCkgc3VjY2VlZHMKaGVyZSwgYnV0IHRoZSBzdWJzZXF1ZW50IHJlcGFy
ZW50aW5nIGZvciBmZGVfY2xraS0+Y2xrIGZhaWxzLCB0aGUgZnVuY3Rpb24KanVtcHMgdG8gdGhl
IGNsZWFudXAgYmxvY2sgd2l0aG91dCByZXZlcnRpbmcgdGhpcyBzdWNjZXNzZnVsIHBhcmVudCBz
d2l0Y2g6CgoJCWlmIChjbGtfZmRlX3NjYWxlKSB7CgkJCXJldCA9IGNsa19zZXRfcGFyZW50KGZk
ZV9jbGtpLT5jbGssIG1jbGstPnVmc19mZGVfbWF4X2Nsa2ktPmNsayk7CgkJCWlmIChyZXQpIHsK
CQkJCWRldl9lcnIoaGJhLT5kZXYsICIlczogRmFpbGVkIHRvIHNldCBmZGUgY2xvY2sgbXV4OiAl
cGVcbiIsCgkJCQkJX19mdW5jX18sIEVSUl9QVFIocmV0KSk7CgkJCQlnb3RvIG91dDsKCQkJfQoJ
CX0KCkJlY2F1c2UgX3Vmc19tdGtfY2xrX3NjYWxlKCkgcmV0dXJucyB2b2lkLCB0aGUgY2FsbGVy
IHVmc19tdGtfY2xrX3NjYWxlKCkgaGFzCm5vIHdheSB0byBrbm93IHRoYXQgdGhlIGhhcmR3YXJl
IG9wZXJhdGlvbnMgcGFydGlhbGx5IGZhaWxlZCwgYW5kIGl0CnVuY29uZGl0aW9uYWxseSB1cGRh
dGVzIHRoZSBzb2Z0d2FyZSBzdGF0ZSBhbnl3YXk6Cgpkcml2ZXJzL3Vmcy9ob3N0L3Vmcy1tZWRp
YXRlay5jOnVmc19tdGtfY2xrX3NjYWxlKCkgewogICAgLi4uCglfdWZzX210a19jbGtfc2NhbGUo
aGJhLCBzY2FsZV91cCk7CgoJaG9zdC0+Y2xrX3NjYWxlX3VwID0gc2NhbGVfdXA7CgoJLyogTXVz
dCBhbHdheXMgc2V0IGJlZm9yZSBjbGtfc2V0X3JhdGUoKSAqLwoJaWYgKHNjYWxlX3VwKQoJCWNs
a2ktPmN1cnJfZnJlcSA9IGNsa2ktPm1heF9mcmVxOwoJZWxzZQoJCWNsa2ktPmN1cnJfZnJlcSA9
IGNsa2ktPm1pbl9mcmVxOwogICAgLi4uCn0KCldpbGwgdGhpcyBwZXJtYW5lbnRseSBkZXN5bmNo
cm9uaXplIHRoZSBoYXJkd2FyZSBhbmQgc29mdHdhcmUgc3RhdGVzIGlmIGNsb2NrCnJlcGFyZW50
aW5nIGZhaWxzLCBsZWF2aW5nIHRoZSBVRlMgY29udHJvbGxlciBpbiBhIGJyb2tlbiBtaXhlZC1j
bG9jayBzdGF0ZQp3aGVyZSBmdXR1cmUgc2NhbGluZyByZXF1ZXN0cyBhcmUgaWdub3JlZD8KCi0t
IApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAy
NjA5MTQtbXQ4MTk2LXVmcy12MTItMC05Mjc5ZDdlZjgxNGRAY29sbGFib3JhLmNvbT9wYXJ0PTIz
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
