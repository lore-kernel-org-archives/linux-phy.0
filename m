Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C784FC5DF97
	for <linux-phy@archiver.kernel.org>; Wed, 26 Aug 2026 17:10:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NrX50JEeMeZLgpicke4kpkW5ystHb05pUHHTwI1Z0Pc=; b=v5zsCD5J/DfYhs
	wyCrsrK4qefjCz7NXdXDxURBiwCLIe4MolS+jMPT3S9kz9MG7PRXM4nh28gJMQj3xr+jKwWyuz/bx
	Cs9qB2vmsjh6HRyxbqEcoIboDSMAUuo64mEKf8PGVTQJ7Nx39oEEqhozOGKYgJ8OHQV9WiFnQ48rE
	QuUxbZNaMK1KGQld8z4qdbrKWx+DitFcEx7YFRs98E/VZNYYIHqS91U8dwysqG/syiwynxExzldRz
	3CYljZEpWJiyqw4NQiRaLy5T7Zh6EqwNAEO4LxGDV5ySnT8WI71fCFQhpTgsjhNPqNf6dioPp6h7i
	lUKjPB04FI5KZmPRmcSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzH8g-00000002nL3-0n7A;
	Wed, 26 Aug 2026 17:10:14 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzH8e-00000002nKx-229X
	for linux-phy@lists.infradead.org;
	Wed, 26 Aug 2026 17:10:12 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 5A92760A85;
	Wed, 26 Aug 2026 17:10:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 916911F000E9;
	Wed, 26 Aug 2026 17:10:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787764210;
	bh=OublWpsv4rC00qwkJd0KhdNQJBQqjntGx2xhBnEskEQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=aVOzt68jtIACyoKPiH4DTiXYqmVdqcg2HsRC3QFlpewSTnWR4lJ5lUzhJcAuzRiCD
	 zqeUEAxjrbsxVYcTyaft1+abMMS6LC0sH1Rg2AwXGO2hVELGNbv9I5OCs4QT+vHov5
	 3KWIqVhsg4Olhg4qqMNutpy7pWZweXY2YnJX6NDkU6DCJdxKJzAMaaZVtWtOcjjMVv
	 9eMqXalhQMpVAstqUqC7syVOW0TIGVHFUit9TME8kglCFRR+VWdRTdeo31iNaoJvIw
	 ieik6gCE+qt/9gk+U2QbEClxRrw2O6PlERG4FuMqrj3O+mHgbZ0k3wJ1lRT/d8oSlI
	 DFm71QXH9fHuA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 4/5] phy: qcom: m31-eusb2: Set phy type to EUSB2
To: "Krishna Kurapati" <krishna.kurapati@oss.qualcomm.com>
Cc: neil.armstrong@linaro.org, robh@kernel.org, conor+dt@kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com, vkoul@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260826-eusb2-interrupt-v6-v6-4-ae2601cfa80c@oss.qualcomm.com>
References: <20260826-eusb2-interrupt-v6-v6-0-ae2601cfa80c@oss.qualcomm.com>
 <20260826-eusb2-interrupt-v6-v6-4-ae2601cfa80c@oss.qualcomm.com>
Date: Wed, 26 Aug 2026 17:10:09 +0000
Message-Id: <20260826171009.916911F000E9@smtp.kernel.org>
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
IFtIaWdoXSBtMzFldXNiMl9waHlfaW5pdCBmYWlscyB0byBwcm9wYWdhdGUgZXJyb3IgY29kZXMg
YW5kIGFsd2F5cyByZXR1cm5zIDAuCi0tCgpjb21taXQgYTU5MTQ4Y2YzOWRjMGFmYzFmODUyZWIw
N2JlNTgxYjkzYWExNTdmMQpBdXRob3I6IEtyaXNobmEgS3VyYXBhdGkgPGtyaXNobmEua3VyYXBh
dGlAb3NzLnF1YWxjb21tLmNvbT4KCnBoeTogcWNvbTogbTMxLWV1c2IyOiBTZXQgcGh5IHR5cGUg
dG8gRVVTQjIKClVTQiBjb250cm9sbGVycyBsaWtlIERXQzMgYXJlIGFnbm9zdGljIG9mIHRoZSBr
aW5kIG9mIHBoeSAoVVNCMi9lVVNCMikKY29ubmVjdGVkIHRvIGl0LiBTZXQgdGhlIHBoeSB0eXBl
IHRvIEVVU0IyIHRvIGxldCB0aGUgY29udHJvbGxlciBrbm93CnRoZSBwaHkgdHlwZSB3aGVuIHF1
ZXJpZWQgZHVyaW5nIGl0cyBwcm9iZS4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3F1YWxj
b21tL3BoeS1xY29tLW0zMS1ldXNiMi5jIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20t
bTMxLWV1c2IyLmMKPiBpbmRleCAwYmVjODY1NzE0OWM5Li43ZTZiMTZiNjk1MmI1IDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLW0zMS1ldXNiMi5jCj4gKysrIGIv
ZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tbTMxLWV1c2IyLmMKClsgLi4uIF0KCltTZXZl
cml0eTogSGlnaF0KVGhpcyBpc24ndCBhIGJ1ZyBpbnRyb2R1Y2VkIGJ5IHRoaXMgcGF0Y2gsIGJ1
dCBtMzFldXNiMl9waHlfaW5pdCgpIGZhaWxzIHRvCnByb3BhZ2F0ZSBlcnJvciBjb2RlcyBhbmQg
YWx3YXlzIHJldHVybnMgMC4KCklmIGNsa19wcmVwYXJlX2VuYWJsZSgpIG9yIHBoeV9pbml0KHBo
eS0+cmVwZWF0ZXIpIGZhaWxzLCB0aGUgY29kZSBqdW1wcwp0byB0aGUgZGlzYWJsZV9yZXBlYXRl
ciBvciBkaXNhYmxlX3ZyZWcgbGFiZWxzOgoKZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20t
bTMxLWV1c2IyLmM6bTMxZXVzYjJfcGh5X2luaXQoKSB7CiAgICAuLi4KZGlzYWJsZV9yZXBlYXRl
cjoKCXBoeV9leGl0KHBoeS0+cmVwZWF0ZXIpOwpkaXNhYmxlX3ZyZWc6CglyZWd1bGF0b3JfYnVs
a19kaXNhYmxlKE0zMV9FVVNCX05VTV9WUkVHUywgcGh5LT52cmVncyk7CgoJcmV0dXJuIDA7Cn0K
ClNob3VsZCB0aGlzIHJldHVybiB0aGUgdHJhcHBlZCBlcnJvciBjb2RlIHJldCBpbnN0ZWFkIG9m
IDA/CgpJZiBhIGNvbnN1bWVyIGRyaXZlciBsaWtlIERXQzMgcmVjZWl2ZXMgYSBzdWNjZXNzIHN0
YXR1cyBidXQgdGhlIFBIWQppbml0aWFsaXphdGlvbiBhY3R1YWxseSBmYWlsZWQsIGNvdWxkIGl0
IGF0dGVtcHQgdG8gYWNjZXNzIGFuIHVucG93ZXJlZCBvcgp1bmNsb2NrZWQgUEhZPwoKQWRkaXRp
b25hbGx5LCBmYWlsdXJlIGNvZGVzIGZyb20gaGFyZHdhcmUgaW5pdGlhbGl6YXRpb24gZnVuY3Rp
b25zIGxpa2UKbTMxZXVzYjJfcGh5X3dyaXRlX3NlcXVlbmNlKCkgYXJlIGlnbm9yZWQ6Cgpkcml2
ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1tMzEtZXVzYjIuYzptMzFldXNiMl9waHlfaW5pdCgp
IHsKICAgIC4uLgoJcmVzZXRfY29udHJvbF9kZWFzc2VydChwaHktPnJlc2V0KTsKCgltMzFldXNi
Ml9waHlfd3JpdGVfc2VxdWVuY2UocGh5LCBkYXRhLT5zZXR1cF9zZXEsIGRhdGEtPnNldHVwX3Nl
cV9ucmVncyk7CiAgICAuLi4KfQoKU2hvdWxkIHRoZSByZXR1cm4gdmFsdWUgb2YgbTMxZXVzYjJf
cGh5X3dyaXRlX3NlcXVlbmNlKCkgYmUgY2hlY2tlZCBhbmQKcHJvcGFnYXRlZCBhcyB3ZWxsPwoK
LS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8y
MDI2MDgyNi1ldXNiMi1pbnRlcnJ1cHQtdjYtdjYtMC1hZTI2MDFjZmE4MGNAb3NzLnF1YWxjb21t
LmNvbT9wYXJ0PTQKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
