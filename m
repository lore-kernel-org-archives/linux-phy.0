Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34F73C44512
	for <linux-phy@archiver.kernel.org>; Thu, 16 Jul 2026 22:26:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s7AlRyNbK6gqM1YO3A7oDIipkngqxzqvPLwBoKQVngo=; b=wm0DxRGFRWOeal
	mIQWlhJdbTL3Wkzpvyb1MBZ5xGhTD44Z8v/NBIlwpTsEjQxdo3uZMQO1b7ErAQI6ICV5Zs7/vNZGY
	eRKY7GezWsSsdoDR16Ylexb4m+91DVCD1y8/KsLIkuSRnFp1lmn3+Rs9DYTXBQMtGRTEsAJNoiDTV
	FfAymoonqKcD4yJlk6UFuaoJutw8+TxzRf5VCMhenYqlT8Ei02P40PlCUfMxCtie9PPHY/Orzu58J
	mcN0ECTT27rYysFjoHMQ66Kv7AfG5ApXNltDkA3XXdqrT3xNVF1+CdHNohc6QN2hP7xSPM9qq48Q0
	fq9GV6Ga8L2d6WjK38Fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkUX4-00000000jG7-3kW2;
	Thu, 16 Jul 2026 22:26:18 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkUX4-00000000jFj-0X3n
	for linux-phy@lists.infradead.org;
	Thu, 16 Jul 2026 22:26:18 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 49BCD60A5E;
	Thu, 16 Jul 2026 22:26:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8612B1F000E9;
	Thu, 16 Jul 2026 22:26:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784240777;
	bh=3+LM7zpoT/B9K90aIiX++aRa/GvaKYwxj0Y2NjRnwGw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ELwnmHVcKdjWEteeVd5ofcF02t6OGAAprHZ1+uxZvEcFaOsQMkK722RNCWQbpIgei
	 gzo3eoeDwoGV4wNta4/pa4qdj/IWUA5G2aw+9xEq5aUeJeddsxM19xEjnbq5MlR2LD
	 lqWfXG0KAuHuJD4lOfuo2QkWUOv02YxL1plDEEvWFeRLcAqvDGxyACvuHE30puyMJs
	 bVTIQ0nkRxLmjO6RIhqAeBsKLxCB5q5I75ZWUdbJkhXmu8AcqnNRRLcGp6A+CWTEuR
	 2PCvLIa79Qhd4azP1elztNCJ4zpOmMeO8/wNKHH9x5gQHd6DEP3e/ZXJC1TOkc/9RS
	 1twMD58qmQNtw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 06/13] clk: zte: Add Clock registration
 infrastructure
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: vkoul@kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org
In-Reply-To: <20260717-zx29clk-v7-6-408411cfcf36@gmail.com>
References: <20260717-zx29clk-v7-0-408411cfcf36@gmail.com>
 <20260717-zx29clk-v7-6-408411cfcf36@gmail.com>
Date: Thu, 16 Jul 2026 22:26:16 +0000
Message-Id: <20260716222616.8612B1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIEluIGB6eF9jbGtfY29t
bW9uX3Byb2JlKClgLCB0aGUgZXJyb3IgcGF0aCBmb3IgYGRhdGEtPmluaXQobWFwKWAgaW5jb3Jy
ZWN0bHkgcmV0dXJucyBgUFRSX0VSUihjbGspYCBpbnN0ZWFkIG9mIHByb3BhZ2F0aW5nIHRoZSBh
Y3R1YWwgZXJyb3IgY29kZSBgcmVzYC4KLS0KCi0tLSBQYXRjaCBbNl06IFtQQVRDSCB2NyAwNi8x
M10gY2xrOiB6dGU6IEFkZCBDbG9jayByZWdpc3RyYXRpb24gaW5mcmFzdHJ1Y3R1cmUgLS0tCmNv
bW1pdCAzNzdhNmFmNzc2OWI4NDBkODdhODViMzJhZjMwMDFmZDVmNDQzMWRkCkF1dGhvcjogU3Rl
ZmFuIETDtnNpbmdlciA8c3RlZmFuZG9lc2luZ2VyQGdtYWlsLmNvbT4KCmNsazogenRlOiBBZGQg
Q2xvY2sgcmVnaXN0cmF0aW9uIGluZnJhc3RydWN0dXJlCgpUaGlzIGNvbW1pdCBhZGRzIHRoZSBj
b21tb24gY2xvY2sgcmVnaXN0cmF0aW9uIGluZnJhc3RydWN0dXJlIGZvciBaVEUgU29Dcy4KSXQg
aW5jbHVkZXMgc3VwcG9ydCBmb3IgcmVnaXN0ZXJpbmcgUExMcywgbXV4ZXMsIGRpdmlkZXJzLCBh
bmQgZ2F0ZXMgdXNpbmcKcmVnbWFwLCBhbmQgaW50cm9kdWNlcyBhIGNvbW1vbiBwcm9iZSBmdW5j
dGlvbiB0byBpbml0aWFsaXplIHRoZW0uCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Nsay96dGUv
Y2xrLXp4LmMgYi9kcml2ZXJzL2Nsay96dGUvY2xrLXp4LmMKPiBuZXcgZmlsZSBtb2RlIDEwMDY0
NAo+IGluZGV4IDAwMDAwMDAwMDAwMDAuLmRiNGZhZDJiNGIwNTYKPiAtLS0gL2Rldi9udWxsCj4g
KysrIGIvZHJpdmVycy9jbGsvenRlL2Nsay16eC5jClsgLi4uIF0KPiBAQCAtMCwwICsxLDE1NSBA
QApbIC4uLiBdCj4gK2ludCB6eF9jbGtfY29tbW9uX3Byb2JlKHN0cnVjdCBkZXZpY2UgKmRldiwg
c3RydWN0IGRldmljZV9ub2RlICpvZl9ub2RlLAo+ICsJCQljb25zdCBzdHJ1Y3QgenhfY2xrX2Rh
dGEgKmRhdGEpCj4gK3sKWyAuLi4gXQo+ICsJaWYgKGRhdGEtPmluaXQpIHsKPiArCQlyZXMgPSBk
YXRhLT5pbml0KG1hcCk7Cj4gKwkJaWYgKHJlcykKPiArCQkJcmV0dXJuIGRldl9lcnJfcHJvYmUo
ZGV2LCBQVFJfRVJSKGNsayksICJDb250cm9sbGVyIGluaXQgZmFpbHVyZVxuIik7CgpbU2V2ZXJp
dHk6IEhpZ2hdCkRvZXMgdGhpcyBjb2RlIHBhc3MgdGhlIHdyb25nIGVycm9yIGNvZGUgdG8gZGV2
X2Vycl9wcm9iZSgpIGluIHRoZQp6eF9jbGtfY29tbW9uX3Byb2JlKCkgZXJyb3IgcGF0aD8KCldo
ZW4gZGF0YS0+aW5pdChtYXApIGZhaWxzLCBpdCByZXR1cm5zIGEgbm9uLXplcm8gZXJyb3IgY29k
ZSBpbnRvIHJlcy4KSG93ZXZlciwgdGhlIGVycm9yIGhhbmRsaW5nIGJsb2NrIGluY29ycmVjdGx5
IGV2YWx1YXRlcyBhbmQgcmV0dXJucwpQVFJfRVJSKGNsaykuCgpTaW5jZSBjbGsgaXMgbWVyZWx5
IGFuIGl0ZXJhdGlvbiB2YXJpYWJsZSBmcm9tIHRoZSBwcmVjZWRpbmcgbG9vcHMsIGl0IGNvdWxk
CmJlIGNvbXBsZXRlbHkgdW5pbml0aWFsaXplZCBpZiBudW1faW5wdXRzX2VuYWJsZSBhbmQgbnVt
X2lucHV0cyBhcmUgMCwgd2hpY2gKbWlnaHQgdHJpY2sgdGhlIGRyaXZlciBjb3JlIGludG8gYXNz
dW1pbmcgdGhlIHByb2JlIHN1Y2NlZWRlZCBkZXNwaXRlCmluaXRpYWxpemF0aW9uIGZhaWxpbmcu
CgpJZiB0aGUgbG9vcHMgZGlkIGV4ZWN1dGUgc3VjY2Vzc2Z1bGx5LCBjbGsgaG9sZHMgYSB2YWxp
ZCBwb2ludGVyLCBhbmQKUFRSX0VSUihjbGspIHdpbGwgcmV0dXJuIGEgcmFuZG9tIGxhcmdlIG51
bWJlciBkZXBlbmRpbmcgb24gdGhlIHBvaW50ZXIncwptZW1vcnkgYWRkcmVzcywgcmVzdWx0aW5n
IGluIGEgbWVhbmluZ2xlc3MgZXJyb3IgY29kZS4KClNob3VsZCB0aGlzIHJldHVybiByZXMgaW5z
dGVhZCBvZiBQVFJfRVJSKGNsayk/Cgo+ICsJfQo+ICsKPiArCXJlcyA9IHp4X2Nsa19yZWdpc3Rl
cl9wbGxzKGRldiwgbWFwLCBkYXRhLT5wbGxzLCBkYXRhLT5udW1fcGxscyk7Cj4gKwlpZiAocmVz
KQo+ICsJCXJldHVybiByZXM7ClsgLi4uIF0KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRw
czovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA3MTctengyOWNsay12Ny0wLTQwODQxMWNm
Y2YzNkBnbWFpbC5jb20/cGFydD02CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK
