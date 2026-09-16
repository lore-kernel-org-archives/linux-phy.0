Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B0A8C88E5C
	for <linux-phy@archiver.kernel.org>; Wed, 16 Sep 2026 06:14:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0NsZqOQ0ybX4tHHdDIfc6jbkoBfgHo/3QSEFO9QVaUY=; b=dowyWAFAMNd/Bf
	u1gN2WaT81OikR7zcTLCYcihXjCKxUC8pyRCjXUf5mDFl663Y0h3T0uq/YQQ8NgVB0qZftZ5GmeZM
	eZFw1mzmP2XlaDdQh5igFH58iEq2SBj9QYIEPB5ayNbKYlRX5UhWVb4p5sOeYV1Ftrn8O07XQAD2s
	QDwAP0RkIhQZanglldBt6ajcPZJXPBKhxCKIfc4qOSfIIoOW1jRaN7W832t2GdtKU0J9xa1JDjmyi
	iJq05rPQ7nZ1f/i3NaSdT33NW1zKtD5CinD7JPMsCFoO78ekJTIubRu1oiew35jPgwM7br/P4QF//
	HcZodL6yFLq+ZXJeU/ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6iuH-00000008SqY-2qNP;
	Wed, 16 Sep 2026 06:14:09 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6iuF-00000008SqE-01AC
	for linux-phy@lists.infradead.org;
	Wed, 16 Sep 2026 06:14:07 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 75B8E60210;
	Wed, 16 Sep 2026 06:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DCF5F1F000FF;
	Wed, 16 Sep 2026 06:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789539246;
	bh=N7iHGxJ3EDpCz2+2PoSdrKev3wTjp+MNYuW0fV77Y8k=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=e+pnYP5gxO6wK/7QYJNdByQ5pvWu1/F+TGyJjZUxn1IZIUt2bWouPlMurc/aB6+7Q
	 XJG/qdjPMgbUMzVsTp53Te7ek7J2lkLLBmX96MKn/46owuSwOqNzvtYoGk+AXAz84Y
	 fQRHyzSssrpE7riaJf4Cl3LREVSCLfbyeQRHtahZd9wfLIQwXfXXqo+W8s0XAMEEMr
	 PuamwqcC9aVaY39doEMA9VWBFt5tyQjdbXKOqSdX3cJPpUhZMBItCYvLG5lB36YhyL
	 T3xaUa3gCtHZU9t5pwF2O3UkV0k1A+HuFsdkJnFOdHqNaIlYSZuzrgRtmZUr5exZOX
	 wpQJjqKIoko3g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/4] PCI: qcom-ep: Move PHY init and drive PHY reset to
 align with HPG
To: "Qiang Yu" <qiang.yu@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, linux-pci@vger.kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, vkoul@kernel.org
In-Reply-To: <20260915-align_pcie_init_sequence_0916-v1-2-0b2195836f30@oss.qualcomm.com>
References: <20260915-align_pcie_init_sequence_0916-v1-0-0b2195836f30@oss.qualcomm.com>
 <20260915-align_pcie_init_sequence_0916-v1-2-0b2195836f30@oss.qualcomm.com>
Date: Wed, 16 Sep 2026 06:14:05 +0000
Message-Id: <20260916061405.DCF5F1F000FF@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gcGNpOiBxY29tLWVw
OiBtaXNzaW5nIFBBUkZfREVWSUNFX1RZUEUgcmVsb2NhdGlvbgotLQoKY29tbWl0IDViNTZiZjU4
ZjlkNDc1ZDcwNGJjNDFkNDE2MTgxODcwM2NhYzU4MmQKQXV0aG9yOiBRaWFuZyBZdSA8cWlhbmcu
eXVAb3NzLnF1YWxjb21tLmNvbT4KClBDSTogcWNvbS1lcDogTW92ZSBQSFkgaW5pdCBhbmQgZHJp
dmUgUEhZIHJlc2V0IHRvIGFsaWduIHdpdGggSFBHCgpUaGlzIHBhdGNoIHJlYXJyYW5nZXMgdGhl
IFBIWSBpbml0aWFsaXphdGlvbiBhbmQgcmVzZXQgc2VxdWVuY2VzIHRvCmFsaWduIHdpdGggdGhl
IGhhcmR3YXJlIHByb2dyYW1taW5nIGd1aWRlIChIUEcpLiBJdCBtb3ZlcyBwaHlfaW5pdCgpCmJl
Zm9yZSB0aGUgY29udHJvbGxlciBjbG9jayBlbmFibGUgYW5kIGZvbGRzIHBoeV9yZXNldCgpIGlu
dG8gdGhlCmNvcmUgcmVzZXQgYXNzZXJ0L2RlYXNzZXJ0IHNlcXVlbmNlLgoKPiBQQ0k6IHFjb20t
ZXA6IE1vdmUgUEhZIGluaXQgYW5kIGRyaXZlIFBIWSByZXNldCB0byBhbGlnbiB3aXRoIEhQRwo+
IAo+IEhQRyByZXF1aXJlcyB0aGUgR0RTQyB0byBiZSBwb3dlcmVkIHVwIGFuZCBhbGwgUEhZL2Nv
bnRyb2xsZXIgY2xvY2tzCj4gZW5hYmxlZCBiZWZvcmUgdGhlIGNvbnRyb2xsZXIncyBjb3JlIHJl
c2V0IGFuZCB0aGUgUEhZJ3MgcmVzZXQgYXJlIHRvZ2dsZWQKPiB0b2dldGhlciBhcyBvbmUgYXRv
bWljIGdyb3VwLCB3aXRoIFBBUkZfREVWSUNFX1RZUEUgc2V0IHJpZ2h0IGFmdGVyIHRoYXQKPiBy
ZXNldCBncm91cCwgc2FtZSBhcyB0aGUgUkMtbW9kZSBjaGFuZ2UuCj4gCj4gTW92ZSBwaHlfaW5p
dCgpIGFoZWFkIG9mIHRoZSBjb250cm9sbGVyJ3Mgb3duIGNsb2NrIGVuYWJsZSwgYW5kIGZvbGQK
PiBwaHlfcmVzZXQoKSBpbnRvIHRoZSBjb3JlIHJlc2V0IGFzc2VydC9kZWFzc2VydC4gcGh5X3Bv
d2VyX29uKCkga2VlcHMKPiBydW5uaW5nIGFmdGVyd2FyZHMuIEFsc28gbW92ZSB0aGUgUEFSRl9E
RVZJQ0VfVFlQRSB3cml0ZSBvdXQgb2YKPiBxY29tX3BjaWVfcGVyc3RfZGVhc3NlcnQoKSB0byBy
aWdodCBhZnRlciB0aGUgcmVzZXQgZ3JvdXAsIGluCj4gcWNvbV9wY2llX2VuYWJsZV9yZXNvdXJj
ZXMoKS4KCltTZXZlcml0eTogTWVkaXVtXQpUaGUgY29tbWl0IG1lc3NhZ2UgZXhwbGljaXRseSBz
dGF0ZXMgdGhlIFBBUkZfREVWSUNFX1RZUEUgd3JpdGUgaXMgYmVpbmcKbW92ZWQgb3V0IG9mIHFj
b21fcGNpZV9wZXJzdF9kZWFzc2VydCgpIHRvIHJpZ2h0IGFmdGVyIHRoZSByZXNldCBncm91cCBp
bgpxY29tX3BjaWVfZW5hYmxlX3Jlc291cmNlcygpLiBIb3dldmVyLCB0aGUgZGlmZiBkb2VzIG5v
dCBzZWVtIHRvIGluY2x1ZGUgdGhpcwpjaGFuZ2UuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3Bj
aS9jb250cm9sbGVyL2R3Yy9wY2llLXFjb20tZXAuYyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIv
ZHdjL3BjaWUtcWNvbS1lcC5jCj4gaW5kZXggODM2NDY5NmExYjk4MC4uY2Q3NzI1ZDI3N2M1ZCAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLXFjb20tZXAuYwo+
ICsrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS1lcC5jCgpbIC4uLiBd
Cgo+IEBAIC0zMzIsMjUgKzMzOCwyNSBAQCBzdGF0aWMgaW50IHFjb21fcGNpZV9lbmFibGVfcmVz
b3VyY2VzKHN0cnVjdCBxY29tX3BjaWVfZXAgKnBjaWVfZXApCj4gIAlzdHJ1Y3QgZHdfcGNpZSAq
cGNpID0gJnBjaWVfZXAtPnBjaTsKPiAgCWludCByZXQ7Cj4gIAo+IC0JcmV0ID0gY2xrX2J1bGtf
cHJlcGFyZV9lbmFibGUocGNpZV9lcC0+bnVtX2Nsa3MsIHBjaWVfZXAtPmNsa3MpOwo+ICsJcmV0
ID0gcGh5X2luaXQocGNpZV9lcC0+cGh5KTsKPiAgCWlmIChyZXQpCj4gIAkJcmV0dXJuIHJldDsK
PiAgCj4gLQlyZXQgPSBxY29tX3BjaWVfZXBfY29yZV9yZXNldChwY2llX2VwKTsKPiArCXJldCA9
IGNsa19idWxrX3ByZXBhcmVfZW5hYmxlKHBjaWVfZXAtPm51bV9jbGtzLCBwY2llX2VwLT5jbGtz
KTsKPiAgCWlmIChyZXQpCj4gLQkJZ290byBlcnJfZGlzYWJsZV9jbGs7Cj4gKwkJZ290byBlcnJf
cGh5X2V4aXQ7Cj4gIAo+IC0JcmV0ID0gcGh5X2luaXQocGNpZV9lcC0+cGh5KTsKPiArCXJldCA9
IHFjb21fcGNpZV9lcF9waHlfY29yZV9yZXNldChwY2llX2VwKTsKPiAgCWlmIChyZXQpCj4gIAkJ
Z290byBlcnJfZGlzYWJsZV9jbGs7Cj4gIAo+ICAJcmV0ID0gcGh5X3NldF9tb2RlX2V4dChwY2ll
X2VwLT5waHksIFBIWV9NT0RFX1BDSUUsIFBIWV9NT0RFX1BDSUVfRVApOwoKW1NldmVyaXR5OiBN
ZWRpdW1dCldhcyB0aGUgd3JpdGUgdG8gUEFSRl9ERVZJQ0VfVFlQRSBhY2NpZGVudGFsbHkgb21p
dHRlZCBmcm9tIHRoaXMgcGF0Y2g/CgpCYXNlZCBvbiB0aGUgY29tbWl0IG1lc3NhZ2UgYW5kIEhQ
RyByZXF1aXJlbWVudHMsIGl0IGxvb2tzIGxpa2UgYSB3cml0ZSB0bwpQQVJGX0RFVklDRV9UWVBF
IHdhcyBpbnRlbmRlZCB0byBiZSBpbnNlcnRlZCByaWdodCBoZXJlIGluCnFjb21fcGNpZV9lbmFi
bGVfcmVzb3VyY2VzKCkuCgpMb29raW5nIGF0IHRoZSBjb2RlIGluIHFjb21fcGNpZV9wZXJzdF9k
ZWFzc2VydCgpLCB0aGUgd3JpdGUgcmVtYWlucwp1bnRvdWNoZWQ6Cgpkcml2ZXJzL3BjaS9jb250
cm9sbGVyL2R3Yy9wY2llLXFjb20tZXAuYzpxY29tX3BjaWVfcGVyc3RfZGVhc3NlcnQoKSB7Cgku
Li4KCS8qIENvbmZpZ3VyZSBQQ0llIHRvIGVuZHBvaW50IG1vZGUgKi8KCXdyaXRlbF9yZWxheGVk
KFBBUkZfREVWSUNFX1RZUEVfRVAsIHBjaWVfZXAtPnBhcmYgKyBQQVJGX0RFVklDRV9UWVBFKTsK
CS4uLgp9CgpDb3VsZCB0aGlzIG1pc21hdGNoIGJldHdlZW4gdGhlIEhQRyBzZXF1ZW5jZSBhbmQg
dGhlIGFjdHVhbCBpbXBsZW1lbnRlZCBjb2RlCmNhdXNlIGVuZHBvaW50IGluaXRpYWxpemF0aW9u
IGZhaWx1cmVzIHdoZW4gdGhlIGhhcmR3YXJlIHJlcXVpcmVzIHRoZSBkZXZpY2UKdHlwZSB0byBi
ZSBzZXQgaW1tZWRpYXRlbHkgYWZ0ZXIgcmVzZXQ/CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcg
aHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwOTE1LWFsaWduX3BjaWVfaW5pdF9z
ZXF1ZW5jZV8wOTE2LXYxLTAtMGIyMTk1ODM2ZjMwQG9zcy5xdWFsY29tbS5jb20/cGFydD0yCgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
