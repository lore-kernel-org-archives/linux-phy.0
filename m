Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 422DD606A320
	for <linux-phy@archiver.kernel.org>; Fri, 20 Nov 2026 14:11:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=qmOCoGQz;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=K2eZstRp
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Vl67rQFkM0Q/88AL01B3rgr16luINGJXJzELlXcjOKw=; b=qmOCoGQz/79DaHFJbwXZsmZIDn
	eUMe19JKjjQsMLOwNnc/1SbM36lsXbjS6a6lo6ybKbE5CxXIp4D+2KndeDBRGZYAdh93IxJ3N4f4+
	01/RhuGqHHO/oHnt4v8FDpqtjcDvZj2GqLq5mzaoYUIUF5kXXX3l2H9daGpE+yjTnVT3QMSsGZGND
	W2vxEeHNvviqL0iDJZ32XL2lY4thVRVacl7m90OXBk6fTPj+WNfa5CAD1kADD15UmDRzn6rcpWd2u
	wE/jZRo+As2jFHOnp7ymLGTCtIqjvX8NQ4qOFowpuqpH2skysBPJmcgjfiG6YDLh7lscFzpdyWsXe
	pd/TmAVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUPKq-0000000FDia-2sLR;
	Fri, 20 Nov 2026 14:11:28 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUPKn-0000000FDiT-1dsZ
	for linux-phy@lists.infradead.org;
	Fri, 20 Nov 2026 14:11:27 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 2ABF444D1C;
	Fri, 20 Nov 2026 14:11:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 98F9E1F000C6;
	Fri, 20 Nov 2026 14:11:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795183885;
	bh=3gYBs56kAsjtxUacV4LsaH3IHliGuGIJRJqS+UjidRI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=K2eZstRpQxawxs3eLNh1w+9mlYgTvSwUpsF2YQuBZLRro3aOvWjQzLaYGnLb7IeNd
	 xM/K/gQIPQhDvMOLX8602W3VNuayLkTnU3rKwWYeqzgh6ortcT/Q8ZjrtgEPKQDsf+
	 gJNP8AVVONjJcSFNFnABjsBPuyipBiBfTpgAFUKRyRC1oSlQGZXEkxH1OvIogFUO4d
	 9QNsXq6e+3tLJ1l7iKZ3+kwv9dDFhL+NfmO7GLfH4Yh0lsKzLzEgpCFCbhjxfZrQuw
	 EFWoQ9EW4F+wd8zCUm+gFWME9fWtJdnsKroHalmlp8jAn2XBPkHbx5OYE6Jk++MDLv
	 7uJCGW4GyEWzA==
Message-ID: <sashiko-outbox-225334@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 2/2] phy: qcom-snps-femto-v2: Add support for SA8255P
To: "Mattijs Korpershoek" <mkorpershoek@kernel.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261120-phy-qcom-snps-femto-v2-8255-v5-2-86a9880ee5a5@kernel.org>
References: <20261120-phy-qcom-snps-femto-v2-8255-v5-0-86a9880ee5a5@kernel.org>
 <20261120-phy-qcom-snps-femto-v2-8255-v5-2-86a9880ee5a5@kernel.org>
Date: Fri, 20 Nov 2026 14:11:24 +0000
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Reply-To: sashiko-reviews@lists.linux.dev
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwKaXNzdWUgdG8gY29uc2lkZXI6Ci0gW0xvd10gcGh5OiBxY29tLXNucHMtZmVt
dG8tdjI6IHVzZSBkZXZtX3BtX2RvbWFpbl9hdHRhY2hfbGlzdCgpIGFuZAogIGNoZWNrIHJldCA9
PSAwCi0tCgpjb21taXQgNDAzMjNlZDgzZWU2ZjAzYzM2ZDI3NjdkMWU5MWNkMDhjY2ZmMzczYgpB
dXRob3I6IFNyaXJhbSBEYXNoIDxxdWljX3NyaXJhbWRAcXVpY2luYy5jb20+CgpwaHk6IHFjb20t
c25wcy1mZW10by12MjogQWRkIHN1cHBvcnQgZm9yIFNBODI1NVAKClRoaXMgY29tbWl0IGFkZHMg
c3VwcG9ydCBmb3IgdGhlIFNBODI1NVAgVVNCIEhTIFBIWSB2YXJpYW50LCB3aG9zZSBwb3dlciwK
Y2xvY2ssIGFuZCByZXNldCByZXNvdXJjZXMgYXJlIG1hbmFnZWQgYnkgU0NNSSBmaXJtd2FyZSB0
aHJvdWdoICJjb3JlIiBhbmQKInRyYW5zZmVyIiBwb3dlciBkb21haW5zLgoKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tc25wcy1mZW10by12Mi5jIGIvZHJpdmVy
cy9waHkvcXVhbGNvbW0vcGh5LXFjb20tc25wcy1mZW10by12Mi5jCj4gaW5kZXggMGRhZTgzNjk2
NzFhYi4uMGVjMzRiYzVjMjZlYyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9w
aHktcWNvbS1zbnBzLWZlbXRvLXYyLmMKPiArKysgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHkt
cWNvbS1zbnBzLWZlbXRvLXYyLmMKWyAuLi4gXQo+IEBAIC0xNjQsOCArMTY3LDgyIEBAIHN0cnVj
dCBxY29tX3NucHNfaHNwaHkgewo+ICAJYm9vbCBwaHlfaW5pdGlhbGl6ZWQ7Cj4gIAllbnVtIHBo
eV9tb2RlIG1vZGU7Cj4gIAlzdHJ1Y3QgcGh5X292ZXJyaWRlX3NlcSB1cGRhdGVfc2VxX2NmZ1tO
VU1fSFNQSFlfVFVOSU5HX1BBUkFNU107Cj4gKwo+ICsJc3RydWN0IGRldl9wbV9kb21haW5fbGlz
dCAqcGRfbGlzdDsKPiAgfTsKPiAgCj4gK3N0YXRpYyB2b2lkIHFjb21fc25wc19kb21haW5fZGV0
YWNoKHZvaWQgKmRhdGEpCj4gK3sKPiArCXN0cnVjdCBxY29tX3NucHNfaHNwaHkgKmhzcGh5ID0g
ZGF0YTsKPiArCj4gKwlkZXZfcG1fZG9tYWluX2RldGFjaF9saXN0KGhzcGh5LT5wZF9saXN0KTsK
PiArfQo+ICsKPiArc3RhdGljIGludCBxY29tX3NucHNfZG9tYWluX2F0dGFjaChzdHJ1Y3QgcWNv
bV9zbnBzX2hzcGh5ICpoc3BoeSkKPiArewo+ICsJc3RydWN0IGRldl9wbV9kb21haW5fYXR0YWNo
X2RhdGEgcGRfZGF0YSA9IHsKPiArCQkucGRfZmxhZ3MgICAgICAgPSBQRF9GTEFHX05PX0RFVl9M
SU5LLAo+ICsJCS5wZF9uYW1lcyAgICAgICA9IChjb25zdCBjaGFyKltdKSB7ICJjb3JlIiwgInRy
YW5zZmVyIiB9LAo+ICsJCS5udW1fcGRfbmFtZXMgICA9IDIsCj4gKwl9Owo+ICsJc3RydWN0IGRl
dmljZSAqZGV2ID0gaHNwaHktPmRldjsKPiArCWludCByZXQ7Cj4gKwo+ICsJcmV0ID0gZGV2X3Bt
X2RvbWFpbl9hdHRhY2hfbGlzdChkZXYsICZwZF9kYXRhLCAmaHNwaHktPnBkX2xpc3QpOwo+ICsJ
aWYgKHJldCA8IDApCj4gKwkJcmV0dXJuIGRldl9lcnJfcHJvYmUoZGV2LCByZXQsICJkb21haW4g
YXR0YWNoIGZhaWxlZFxuIik7Cj4gKwo+ICsJcmV0dXJuIDA7Cj4gK30KPiArCj4gK3N0YXRpYyBi
b29sIHFjb21fc25wc19pc19md19tYW5hZ2VkKHN0cnVjdCBxY29tX3NucHNfaHNwaHkgKmhzcGh5
KQo+ICt7Cj4gKwlyZXR1cm4gaHNwaHktPnBkX2xpc3QgIT0gTlVMTDsKPiArfQo+ICsKPiArc3Rh
dGljIGludCBxY29tX3NucHNfcGRzX2VuYWJsZV9hbGwoc3RydWN0IHFjb21fc25wc19oc3BoeSAq
aHNwaHkpCj4gK3sKPiArCWludCByZXQ7Cj4gKwo+ICsJaWYgKCFxY29tX3NucHNfaXNfZndfbWFu
YWdlZChoc3BoeSkpCj4gKwkJcmV0dXJuIDA7CgpbU2V2ZXJpdHk6IExvd10KQ2FuIHFjb21fc25w
c19kb21haW5fYXR0YWNoKCkgc3VjY2VlZCB3aXRoIGhzcGh5LT5wZF9saXN0IGxlZnQgTlVMTCB3
aGVuCmRldl9wbV9kb21haW5fYXR0YWNoX2xpc3QoKSByZXR1cm5zIDAgKGZvciBleGFtcGxlLCB3
aGVuIENPTkZJR19QTSBpcwpkaXNhYmxlZCk/CgpJZiB0aGF0IGhhcHBlbnMsIHFjb21fc25wc19w
ZHNfZW5hYmxlX2FsbCgpIHJldHVybnMgMCB3aXRob3V0IGVuYWJsaW5nIHRoZQpwb3dlciBkb21h
aW5zLCBhbmQgcWNvbV9zbnBzX2hzcGh5X2Z3X21hbmFnZWRfaW5pdCgpIHByb2NlZWRzIHRvCnFj
b21fc25wc19oc3BoeV9jb25maWd1cmUoKSBhbmQgd3JpdGVzIFBIWSByZWdpc3RlcnMgd2hpbGUg
Y2xvY2tzLCByZXNldHMsCmFuZCBwb3dlciBkb21haW5zIGFyZSBvZmYuICBBbHNvLCBxY29tX3Nu
cHNfZG9tYWluX2F0dGFjaCgpIGFuZApxY29tX3NucHNfZG9tYWluX2RldGFjaCgpIHdpdGggZGV2
bV9hZGRfYWN0aW9uX29yX3Jlc2V0KCkgaW4KcWNvbV9zbnBzX2hzcGh5X3Byb2JlKCkgZHVwbGlj
YXRlIGRldm1fcG1fZG9tYWluX2F0dGFjaF9saXN0KCk7IGNhbGxpbmcKZGV2bV9wbV9kb21haW5f
YXR0YWNoX2xpc3QoKSBkaXJlY3RseSBhbmQgcmV0dXJuaW5nIC1FTk9ERVYgd2hlbiByZXQgPT0g
MAp3b3VsZCBhdm9pZCBib3RoIGlzc3Vlcy4KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRw
czovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjExMjAtcGh5LXFjb20tc25wcy1mZW10by12
Mi04MjU1LXY1LTAtODZhOTg4MGVlNWE1QGtlcm5lbC5vcmc/cGFydD0yCgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
