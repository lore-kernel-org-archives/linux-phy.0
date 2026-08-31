Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC7FCC61DE4
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 03:03:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3ZTxn1kY/COVx2j2U3OGJ6UFNgBX6Qh3xhPelbY5+ts=; b=2aM1cYAL5qARPO
	pEnAu2ub4PRfLmqCn4M2redLfcReUATBi4odf5VapgU21TQt3sGmUebMDYsjuzNh5swOJojh7cPla
	BVy++oOKjmEalJQQnepflDXyz9W9THzWLIHRVD5W/7xx+cS8G/rfcaozcM4FhytmIOkUtZwdoUX6a
	hqN3VPXKvJMVy4/mhTM2Qbid/wG0NpDUaKHlnYRS25BMkQ37UCuX3hz/tdg1iaFDnd6xl4sM4HI8T
	7mSzXEoyUcVZz6rd/g398GyX37GofwYKTlbj3+qyJqXS5gDOHFc6hUxJkOMR74uICe1PneDUMMOco
	wQE49AqZTERkRLZGhRQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0sJG-00000008Nw1-2Ddx;
	Mon, 31 Aug 2026 03:03:46 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0sJF-00000008Nvi-1JFr
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 03:03:45 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 2756560120;
	Mon, 31 Aug 2026 03:03:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 918691F000E9;
	Mon, 31 Aug 2026 03:03:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788145423;
	bh=EPMfbkQE74jyHJxk+PJxxnZVU6P6jDg9j7baWuxrPU8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=BULeihtMqGa4n4weWwv7UBjnl0KuPnGJ4goPmHYtwNH7E2uSd+BGieBxEvDcSFCWS
	 tF8+VJZjTR0smh/ZP58kejC9KRpfRm0hul94fknQgD+0UdHxK8YsOG3B65e5clRiYE
	 st+qaJWVm37UHtuL7pp+s53Grp83nhy3aJVqkiikOL7nfsFoiVcz2powEUwKB7Swlv
	 z1IL20azDq3nLeE3oPgxtyql4KoxwJuIiZguSRFPbQQWxDY2gQ5KvBSRIlmirV5Oh3
	 mWxkb1wHT6a5vQKe/i17PawX2hvaPVKo7KkEruxsC+tqeYVJvV1MH5VWoPzyXWdgL5
	 ez9malj4/ZvGg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/3] phy: core: Add common helper to add phy phandle
 device link
To: "Inochi Amaoto" <inochiama@gmail.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, olteanv@gmail.com
In-Reply-To: <20260831025506.95548-1-inochiama@gmail.com>
References: <20260831025319.94886-1-inochiama@gmail.com>
 <20260831025506.95548-1-inochiama@gmail.com>
Date: Mon, 31 Aug 2026 03:03:43 +0000
Message-Id: <20260831030343.918691F000E9@smtp.kernel.org>
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
IFtIaWdoXSBUaGUgYG9mX3BoeV9zaW1wbGVfeGxhdGVgIGZ1bmN0aW9uIGRyb3BzIHRoZSBkZXZp
Y2UgcmVmZXJlbmNlIGJlZm9yZSByZXR1cm5pbmcgaXQsIGxlYWRpbmcgdG8gYSBVc2UtQWZ0ZXIt
RnJlZSBpZiB0aGUgUEhZIGRldmljZSBpcyBjb25jdXJyZW50bHkgdW5yZWdpc3RlcmVkLgotLQoK
Y29tbWl0IGNkMjFkMGIzNzg2YWRhMTRkOWUxOGU5NGZmYzM4ODdmOWVhOGI3NDcKQXV0aG9yOiBJ
bm9jaGkgQW1hb3RvIDxpbm9jaGlhbWFAZ21haWwuY29tPgoKcGh5OiBjb3JlOiBBZGQgY29tbW9u
IGhlbHBlciB0byBhZGQgcGh5IHBoYW5kbGUgZGV2aWNlIGxpbmsKICAgIApJdCBpcyB2ZXJ5IGNv
bW1vbiBmb3IgYWRkaW5nIGEgZGV2aWNlIGxpbmsgZm9yIHBoeSBwaGFuZGxlCmZvciBkZXZpY2Ug
bWFuYWdlZCBwaHkgaGVscGVyIGZ1bmN0aW9ucy4gU28gYWRkIGEgY29tbW9uCmhlbHBlciBmb3Ig
ZnV0dXJlIHJldXNlLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcGh5LWNvcmUuYyBiL2Ry
aXZlcnMvcGh5L3BoeS1jb3JlLmMKPiBpbmRleCAyMWFhZjJmNzZlNTNlLi40NTFmOGYwNjQ0YzEz
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3BoeS1jb3JlLmMKPiArKysgYi9kcml2ZXJzL3Bo
eS9waHktY29yZS5jCgpbIC4uLiBdCgo+IEBAIC03ODQsNyArODA0LDYgQEAgc3RydWN0IHBoeSAq
cGh5X2dldChzdHJ1Y3QgZGV2aWNlICpkZXYsIGNvbnN0IGNoYXIgKnN0cmluZykKPiAgewo+ICAJ
aW50IGluZGV4ID0gMDsKPiAgCXN0cnVjdCBwaHkgKnBoeTsKPiAtCXN0cnVjdCBkZXZpY2VfbGlu
ayAqbGluazsKCltTZXZlcml0eTogSGlnaF0KVGhpcyBpc24ndCBhIGJ1ZyBpbnRyb2R1Y2VkIGJ5
IHRoaXMgcGF0Y2gsIGJ1dCBjb3VsZCB0aGlzIGNvZGUgY2F1c2UgbWVtb3J5CmNvcnJ1cHRpb24/
Cgpkcml2ZXJzL3BoeS9waHktY29yZS5jOm9mX3BoeV9zaW1wbGVfeGxhdGUoKSB7CgkuLi4KCXRh
cmdldF9kZXYgPSBjbGFzc19maW5kX2RldmljZV9ieV9vZl9ub2RlKCZwaHlfY2xhc3MsIGFyZ3Mt
Pm5wKTsKCWlmICghdGFyZ2V0X2RldikKCQlyZXR1cm4gRVJSX1BUUigtRU5PREVWKTsKCglwdXRf
ZGV2aWNlKHRhcmdldF9kZXYpOwoJcmV0dXJuIHRvX3BoeSh0YXJnZXRfZGV2KTsKfQoKVGhlIG9m
X3BoeV9zaW1wbGVfeGxhdGUoKSBmdW5jdGlvbiBsb2NhdGVzIHRoZSBQSFkgZGV2aWNlIHVzaW5n
CmNsYXNzX2ZpbmRfZGV2aWNlX2J5X29mX25vZGUoKSwgd2hpY2ggcmV0dXJucyBpdCB3aXRoIGFu
IGluY3JlbWVudGVkCnJlZmVyZW5jZSBjb3VudC4gSG93ZXZlciwgaXQgaW1tZWRpYXRlbHkgY2Fs
bHMgcHV0X2RldmljZSgpIHRvIGRyb3AgdGhlCnJlZmVyZW5jZSBiZWZvcmUgcmV0dXJuaW5nIHRo
ZSBwb2ludGVyLiAKCklmIGEgY29uY3VycmVudCB0aHJlYWQgdW5yZWdpc3RlcnMgdGhlIFBIWSBk
ZXZpY2UgKGUuZy4sIHZpYSBtb2R1bGUKcmVtb3ZhbCBvciBkcml2ZXIgdW5iaW5kKSwgdGhpcyBw
dXRfZGV2aWNlKCkgbWlnaHQgZHJvcCB0aGUgZmluYWwKcmVmZXJlbmNlLCBmcmVlaW5nIHRoZSBt
ZW1vcnkuIFRoZSBjYWxsZXIgY291bGQgdGhlbiBhY2Nlc3MgdGhlIGZyZWVkCnBvaW50ZXIuIENv
dWxkIHRoaXMgbGVhZCB0byBhIHVzZS1hZnRlci1mcmVlIHJhY2UgY29uZGl0aW9uPwoKLS0gClNh
c2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDgz
MTAyNTUwNi45NTU0OC0xLWlub2NoaWFtYUBnbWFpbC5jb20/cGFydD0xCgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
