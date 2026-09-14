Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36689C88E64
	for <linux-phy@archiver.kernel.org>; Mon, 14 Sep 2026 12:58:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1XI8EuA3444V+nsxblGjmA1HAGDSXr6Z8Ug7rj2hH7U=; b=HwpJYVefWhaiP7
	5MxsiAWXXqzMByjiM2ObGzg1j2kke5JWpY8q9MJkFWAmT/wUBr9SWqx9ClQCXuuAEbZ+b76V9ipLb
	Kyfdclkx7fj18Wnl2lgm/+zauIirpeHrUD+rxChMdn8p6hao/kt0kD6vP2OrbVmjs8f9oAyRQXh6W
	b13n5T++iIPwT/NA1dpEnIRXynWqcDG5lTMAavxQiLdqxQ8qByMUnkkdwp/y5NsuurQMkNV6OLVg9
	7lZgAkjJb/FamgUQ9fZBhVmr16Ryw/THcAao0tLbP3/ygyKa6bME9rTIvXbBqEnq/j2DU/JdwgVSU
	L06B7UCf/qkkJAkejJqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x66Gi-00000003g1H-32RO;
	Mon, 14 Sep 2026 12:58:44 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x66Gf-00000003g02-37D5
	for linux-phy@lists.infradead.org;
	Mon, 14 Sep 2026 12:58:41 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 3C80840B35;
	Mon, 14 Sep 2026 12:58:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 98F0D1F0089A;
	Mon, 14 Sep 2026 12:58:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789390721;
	bh=q7P/XxnfFbOpFBgH2nN6WeSNPU29sWcz6NGAJwuE7q4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=j33lRb/WtPSc1p+/G8H6Ounna1cbV/nYNSwGzjIYrUEuuJi7JHCMh/ohtpBzABqDx
	 m+oKdiYqGpPbbTUvo+oYdbkA3YQVTw8FAfp1ILnJMfz4u+dMy94URJCVXSfkB6qQvI
	 JxP+8Kk3yn2v+GvGg3WY8DnLH75C7qwyno4tFxcMgTh6jNdgDNX0gkwrAKMYs74hRl
	 VvIoc+tDPj3CEIZ9HzMyyu1b4UAAcSq+TWLIr7C/rPaL/H0pJ5MM9xDlH85YPSkwsT
	 RYDPzc5z5hcA8viiHusjwnHiThgoZBg3APVtIqpcvh6XmymhqUN/mude/ModhEFkB5
	 rs91TCdpWLXMA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v12 14/24] scsi: ufs: mediatek: Use the common PHY
 framework
To: "Louis-Alexis Eyraud" <louisalexis.eyraud@collabora.com>
Cc: devicetree@vger.kernel.org, vkoul@kernel.org, olteanv@gmail.com, linux-scsi@vger.kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260914-mt8196-ufs-v12-14-9279d7ef814d@collabora.com>
References: <20260914-mt8196-ufs-v12-0-9279d7ef814d@collabora.com>
 <20260914-mt8196-ufs-v12-14-9279d7ef814d@collabora.com>
Date: Mon, 14 Sep 2026 12:58:40 +0000
Message-Id: <20260914125840.98F0D1F0089A@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpOZXcgaXNzdWVzOgotIFtIaWdoXSBS
ZXR1cm5pbmcgYW4gZXJyb3IgaW4gYHVmc19tdGtfcnVudGltZV9zdXNwZW5kYCB3aXRob3V0IHJv
bGxpbmcgYmFjayB0aGUgaGFyZHdhcmUgc3RhdGUgY2F1c2VzIGEgZmF0YWwgUE0gc3RhdGUgZGVz
eW5jLgoKUHJlLWV4aXN0aW5nIGlzc3VlczoKLSBbSGlnaF0gYHVmc19tdGtfbXBoeV9wb3dlcl9v
bmAgZmFpbHMgdG8gdXBkYXRlIGBtcGh5X3Bvd2VyZWRfb25gIHdoZW4gcmV0dXJuaW5nIGFuIGVy
cm9yLCBwZXJtYW5lbnRseSBkZXN5bmNocm9uaXppbmcgdGhlIFBIWSBzdGF0ZS4KLS0KCmNvbW1p
dCAwOTBkMGUxY2M5MWVmNDQ4ZjAzNDY5MjllNDdlZTQ1NDg0MzY1ZmQxCkF1dGhvcjogTmljb2xh
cyBGcmF0dGFyb2xpIDxuaWNvbGFzLmZyYXR0YXJvbGlAY29sbGFib3JhLmNvbT4KCnNjc2k6IHVm
czogbWVkaWF0ZWs6IFVzZSB0aGUgY29tbW9uIFBIWSBmcmFtZXdvcmsKClRoaXMgY29tbWl0IGNo
YW5nZXMgdGhlIGRyaXZlciB0byB1c2UgdGhlIGNvbW1vbiBQSFkgZnJhbWV3b3JrIHRvIGFjcXVp
cmUgdGhlCmRldmljZSdzIFBIWSBkdXJpbmcgaW5pdGlhbGl6YXRpb24uIFRoaXMgc2ltcGxpZmll
cyB0aGUgZHJpdmVyIGJ5IHJlbW92aW5nCnJlaW52ZW50ZWQgUEhZIGZyYW1ld29yayBjb2RlIGFu
ZCBPRiBwYXJzaW5nLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy91ZnMvaG9zdC91ZnMtbWVkaWF0
ZWsuYyBiL2RyaXZlcnMvdWZzL2hvc3QvdWZzLW1lZGlhdGVrLmMKPiBpbmRleCAzYzEwYTlmZDA5
ZGZjLi41MzgwMDllM2IxZjE3IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvdWZzL2hvc3QvdWZzLW1l
ZGlhdGVrLmMKPiArKysgYi9kcml2ZXJzL3Vmcy9ob3N0L3Vmcy1tZWRpYXRlay5jClsgLi4uIF0K
PiBAQCAtMjQ5Nyw5ICsyNDQyLDggQEAgc3RhdGljIGludCB1ZnNfbXRrX3N5c3RlbV9yZXN1bWUo
c3RydWN0IGRldmljZSAqZGV2KQo+ICBzdGF0aWMgaW50IHVmc19tdGtfcnVudGltZV9zdXNwZW5k
KHN0cnVjdCBkZXZpY2UgKmRldikKPiAgewo+ICAJc3RydWN0IHVmc19oYmEgKmhiYSA9IGRldl9n
ZXRfZHJ2ZGF0YShkZXYpOwo+IC0Jc3RydWN0IHVmc19tdGtfaG9zdCAqaG9zdCA9IHVmc2hjZF9n
ZXRfdmFyaWFudChoYmEpOwo+ICAJc3RydWN0IGFybV9zbWNjY19yZXMgcmVzOwo+IC0JaW50IHJl
dCA9IDA7Cj4gKwlpbnQgcmV0Owo+ICAKPiAgCXJldCA9IHVmc2hjZF9ydW50aW1lX3N1c3BlbmQo
ZGV2KTsKPiAgCWlmIChyZXQpCj4gQEAgLTI1MTAsOCArMjQ1NCwxMSBAQCBzdGF0aWMgaW50IHVm
c19tdGtfcnVudGltZV9zdXNwZW5kKHN0cnVjdCBkZXZpY2UgKmRldikKPiAgCWlmICh1ZnNfbXRr
X2lzX3J0ZmZfbXRjbW9zKGhiYSkpCj4gIAkJdWZzX210a19tdGNtb3NfY3RybChmYWxzZSwgcmVz
KTsKPiAgCj4gLQlpZiAoaG9zdC0+cGh5X2RldikKPiAtCQlwbV9ydW50aW1lX3B1dF9zeW5jKGhv
c3QtPnBoeV9kZXYpOwo+ICsJcmV0ID0gdWZzX210a19tcGh5X3Bvd2VyX29uKGhiYSwgZmFsc2Up
OwoKW1NldmVyaXR5OiBIaWdoXQpUaGlzIGlzIGEgcHJlLWV4aXN0aW5nIGlzc3VlLCBidXQgdWZz
X210a19tcGh5X3Bvd2VyX29uKCkgZmFpbHMgdG8gdXBkYXRlCm1waHlfcG93ZXJlZF9vbiB3aGVu
IHJldHVybmluZyBhbiBlcnJvciwgd2hpY2ggY2FuIHBlcm1hbmVudGx5IGRlc3luY2hyb25pemUK
dGhlIFBIWSBzdGF0ZS4KCkxvb2tpbmcgYXQgdWZzX210a19tcGh5X3Bvd2VyX29uKCk6Cgpkcml2
ZXJzL3Vmcy9ob3N0L3Vmcy1tZWRpYXRlay5jOnVmc19tdGtfbXBoeV9wb3dlcl9vbigpIHsKICAg
IC4uLgoJfSBlbHNlIHsKCQlwaHlfcG93ZXJfb2ZmKG1waHkpOwoJCXJldCA9IHVmc19tdGtfMDl2
X29mZihob3N0KTsKCQlpZiAocmV0KQoJCQlyZXR1cm4gcmV0OwoJfQoKCWhvc3QtPm1waHlfcG93
ZXJlZF9vbiA9IG9uOwoKCXJldHVybiAwOwp9CgpJZiB1ZnNfbXRrXzA5dl9vZmYoKSBmYWlscyBk
dXJpbmcgcG93ZXIgb2ZmLCBpdCByZXR1cm5zIHRoZSBlcnJvciBpbW1lZGlhdGVseSwKbGVhdmlu
ZyBob3N0LT5tcGh5X3Bvd2VyZWRfb24gYXMgdHJ1ZS4KCk9uIHRoZSBuZXh0IHJlc3VtZSwgdWZz
X210a19tcGh5X3Bvd2VyX29uKGhiYSwgdHJ1ZSkgd2lsbCByZXR1cm4gZWFybHkgYmVjYXVzZQpv
biA9PSBob3N0LT5tcGh5X3Bvd2VyZWRfb24sIHNraXBwaW5nIHBoeV9wb3dlcl9vbihtcGh5KS4K
CkNhbiB0aGlzIHBlcm1hbmVudGx5IGxlYXZlIHRoZSBQSFkgcG93ZXJlZCBvZmYgYW5kIG1ha2Ug
dGhlIHN0b3JhZ2UKaW5hY2Nlc3NpYmxlPwoKPiArCWlmIChyZXQpIHsKPiArCQlkZXZfZXJyKGRl
diwgIkZhaWxlZCB0byBwb3dlciBvZmYgUEhZOiAlcGVcbiIsIEVSUl9QVFIocmV0KSk7Cj4gKwkJ
cmV0dXJuIHJldDsKCltTZXZlcml0eTogSGlnaF0KSWYgdWZzX210a19tcGh5X3Bvd2VyX29uKCkg
ZmFpbHMsIHRoaXMgcmV0dXJucyBhbiBlcnJvciBpbW1lZGlhdGVseSB3aXRob3V0CnJvbGxpbmcg
YmFjayB0aGUgZWFybGllciBzdXNwZW5kIG9wZXJhdGlvbnMuCgpTaW5jZSB0aGUgVUZTIGhhcmR3
YXJlIGlzIGFscmVhZHkgbGVmdCBwaHlzaWNhbGx5IHN1c3BlbmRlZCAoY2xvY2tzIGdhdGVkLApW
UkVHcyBhbmQgTVRDTU9TIHBvd2VyZWQgZG93biB2aWEgdWZzaGNkX3J1bnRpbWVfc3VzcGVuZCBh
bmQgCnVmc19tdGtfZGV2X3ZyZWdfc2V0X2xwbSksIHJldHVybmluZyBhbiBlcnJvciBjYXVzZXMg
dGhlIFBNIGNvcmUgdG8gbWlzbWF0Y2gKdGhlIHBoeXNpY2FsIGhhcmR3YXJlIHN0YXRlIGFuZCBj
b25zaWRlciB0aGUgZGV2aWNlIGFjdGl2ZS4KCkNhbiB0aGlzIGNhdXNlIGEgZmF0YWwgUE0gc3Rh
dGUgZGVzeW5jLCB3aGVyZSBzdWJzZXF1ZW50IEkvTyByZXF1ZXN0cyBjcmFzaCBvcgpoYW5nIHRo
ZSBidXMgYmVjYXVzZSB0aGUgUE0gY29yZSB3aWxsIHNraXAgY2FsbGluZyBydW50aW1lX3Jlc3Vt
ZT8KCj4gKwl9Cj4gIAo+ICAJcmV0dXJuIDA7Cj4gIH0KCi0tIApTYXNoaWtvIEFJIHJldmlldyDC
tyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA5MTQtbXQ4MTk2LXVmcy12MTIt
MC05Mjc5ZDdlZjgxNGRAY29sbGFib3JhLmNvbT9wYXJ0PTE0CgotLSAKbGludXgtcGh5IG1haWxp
bmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
