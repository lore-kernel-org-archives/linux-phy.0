Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80EA3CA5FA1
	for <linux-phy@archiver.kernel.org>; Tue, 29 Sep 2026 08:59:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JZyN+ec5J3J6sp3/dKKaR9R4rpogadC1qzjByyCGAGw=; b=BV0zKVFCrI278B
	TIt+fNJKeffFxaUaaBibt+qdl81x5qkOOSEd7G10Swabo36V6dQXwvL86M+Tq0gBRwk8FhJAKvb8q
	/uiewR6ugq5QOaQS00tUReoIwUxJrsjoLWJn6VZZnYqDHZIlX7eKPDTlPFqSvUbRRemSkpF7KAKYM
	8DbwGUYhixKhFAhbCiYcCWpV8Hqg5/5IMcOWEdxgWJ5wyzIHINbyHS++7X+ubVci5AncdbE/iz/jK
	NJ2peq5mpbvUuvbNW8VA4ak/TVMHx5z55su4Ol4Pe1IEwP4TZHw/Y5Y73oQxts7xORn313979/4AM
	5PzriSYOIKIqoar7K9KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBTgj-00000002uCp-0JW9;
	Tue, 29 Sep 2026 08:59:49 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBTgi-00000002uCZ-052F
	for linux-phy@lists.infradead.org;
	Tue, 29 Sep 2026 08:59:48 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 49AC660A59;
	Tue, 29 Sep 2026 08:59:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B13671F000FF;
	Tue, 29 Sep 2026 08:59:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790672387;
	bh=wBr6XxYTcII/X36mZ6G/AhygaSjIRBQWXdcsVnHU6gk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=FJY2kfetyferBRImHFXqWt9f8tLiQwOeT36KncleCqCwMEmUCgg5Qgu/9pbA4jAL+
	 Q3oeLF838MNwEhPfm++aQEH87xD2UoDeO72t29Td/O/Rfn7kDqbEboH8n31viM7Bom
	 cPsWJDcYROXpzM7xA7JcAI+UjDCGyK/8BorRmIdNgoSa5LK//YczQBq9lmaM6Z762p
	 0ZabGVgLpKKY1mdZ2SanCyQRx25ukF6tidHp5OBgiVqbR6UjTzkcYxZjBOCXgLWDpT
	 bkyJn8Zzzrr+vsPY3VX/398uw3QP1gg3gx69QM/GkvWgn+EbvLphwsLNAzUv6OasPB
	 D/Q7xImKRggjA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 5/5] doc: phy: Document some bulk helper functions
To: "Inochi Amaoto" <inochiama@gmail.com>
Cc: vkoul@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, neil.armstrong@linaro.org
In-Reply-To: <20260929085235.469515-6-inochiama@gmail.com>
References: <20260929085235.469515-1-inochiama@gmail.com>
 <20260929085235.469515-6-inochiama@gmail.com>
Date: Tue, 29 Sep 2026 08:59:46 +0000
Message-Id: <20260929085946.B13671F000FF@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gZG9jOiBvdXQtb2YtdHJl
ZSBwYXRjaCBsaW5rIGluIHBlcm1hbmVudCBkb2N1bWVudGF0aW9uCi0tCgpjb21taXQgMmIzODZk
NTBlMGEzYTUxODMzNzFlNDdkMGI0ZDRiM2MxZjVkMDllOApBdXRob3I6IElub2NoaSBBbWFvdG8g
PGlub2NoaWFtYUBnbWFpbC5jb20+Cgpkb2M6IHBoeTogRG9jdW1lbnQgc29tZSBidWxrIGhlbHBl
ciBmdW5jdGlvbnMKCkRvY3VtZW50IG5ld2x5IGFkZGVkIGJ1bGsgaGVscGVyIGZ1bmN0aW9ucyB0
aGF0IGNhbiBiZSB1c2VkIHRvIG1hbmFnZQphIHNldCBvZiBQSFlzIGF1dG9tYXRpY2FsbHkuIFRo
aXMgc2ltcGxpZmllcyB0aGUgbWFuYWdlbWVudCBvZiBtdWx0aXBsZQpQSFlzIGZvciBkcml2ZXJz
LgoKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kcml2ZXItYXBpL3BoeS9waHkucnN0IGIv
RG9jdW1lbnRhdGlvbi9kcml2ZXItYXBpL3BoeS9waHkucnN0Cj4gaW5kZXggMDg2NWMyZTk0ZWVj
ZS4uOWQyMzhiYTAyOTZkMyAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RyaXZlci1hcGkv
cGh5L3BoeS5yc3QKPiArKysgYi9Eb2N1bWVudGF0aW9uL2RyaXZlci1hcGkvcGh5L3BoeS5yc3QK
WyAuLi4gXQo+IEBAIC0yMjEsMyArMjQ1LDggQEAgRGV2aWNlVHJlZSBCaW5kaW5nCj4gIAo+ICBU
aGUgZG9jdW1lbnRhdGlvbiBmb3IgUEhZIGR0IGJpbmRpbmcgY2FuIGJlIGZvdW5kIEAKPiAgRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9waHktYmluZGluZ3MudHh0Cj4gKwo+
ICtNaXNzaW5nIEJ1bGsgSGVscGVycwo+ICs9PT09PT09PT09PT09PT09PT09PQo+ICtDdXJyZW50
bHksIG9ubHkgYSBmZXcgYnVsayBoZWxwZXIgZnVuY3Rpb25zIGFyZSBhZGRlZCBhcyB0aGV5IGhh
dmUgdXNlcnMuCj4gK0Z1bmN0aW9uIG5vdCB1cHN0cmVhbWVkIGNhbiBiZSBmb3VuZCBhdCBodHRw
czovL2xvcmUua2VybmVsLm9yZy9saW51eC1waHkvMjAyNjA5MDQwODM3MDkuNDI1ODkzLTEtaW5v
Y2hpYW1hQGdtYWlsLmNvbS8KCltTZXZlcml0eTogTG93XQpJcyBpdCBhcHByb3ByaWF0ZSB0byBp
bmNsdWRlIGxpbmtzIHRvIG91dC1vZi10cmVlIHBhdGNoZXMgaW4gdGhlIHBlcm1hbmVudAprZXJu
ZWwgZG9jdW1lbnRhdGlvbj8KClRoaXMgdHlwZSBvZiBoaXN0b3JpY2FsIGNvbnRleHQgYW5kIHJl
ZmVyZW5jZSB0byB1bm1lcmdlZCBjb2RlIGdlbmVyYWxseQpiZWxvbmdzIGluIHRoZSBwYXRjaCBj
b21taXQgbWVzc2FnZSBvciBjb3ZlciBsZXR0ZXIsIHJhdGhlciB0aGFuIHRoZQpvZmZpY2lhbCBB
UEkgZG9jdW1lbnRhdGlvbi4KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hp
a28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA5MjkwODUyMzUuNDY5NTE1LTEtaW5vY2hpYW1hQGdtYWls
LmNvbT9wYXJ0PTUKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
