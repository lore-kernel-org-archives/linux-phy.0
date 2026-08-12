Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9AAEC5B56A
	for <linux-phy@archiver.kernel.org>; Wed, 12 Aug 2026 09:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LIzmoAMNon16yamAXvfTGgdiymKEAb0+XTexopVIJbQ=; b=btLGX7/dUx3WNQ
	UlxJTGdBE5CbCnJbJgaxBXid+FVi7oobvc0Kq68m+fpOOTvM6uhAlnQOa1HxcuMMgXvGgLF+uPhjw
	+ftrGvX3VmAJumfibcAGLR4k/GSbUt6ETjr8K9QNH7EuxlQuYEN8KZYlTMfI2gS8IgdmtY5CcXddO
	oWOQEE/1j5L2QvdqhqHT7Hl6UlXOsFvu2jiWYUNq573c5yOy6zQHvKeDbTGafGIheGF3N/cOjTO3j
	BR2DbU7OFVZw0pRizhYkZfm5Zz9maTMEwU+v5VKSFcFBaHUSrF+ANI4THdDn3iSCinE+aOfdHz05/
	6+0CU+Xu2/dTuFnsPfCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu5iH-0000000FpQS-2AwU;
	Wed, 12 Aug 2026 09:57:33 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu5iG-0000000FpQI-1xrz
	for linux-phy@lists.infradead.org;
	Wed, 12 Aug 2026 09:57:32 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id C5C8B600E2;
	Wed, 12 Aug 2026 09:57:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E55F1F000E9;
	Wed, 12 Aug 2026 09:57:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786528651;
	bh=mCnVnYW43xYrc4Ax7r9QyaYtlrlkWSqsSs0bKqFK/kI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=bxsJquPisKa03HfETDZur6KkjhneS+joClXw7lhpbrLMtGe8sqA11OrgS3aO60KfK
	 LehJpXD/KJau7PTNjANztwCKpmee3XmMMOUlKQYSUxs4J0B229qJi/G/zIfV7Z1LWf
	 Ek1AaVDw+DW06h1S+99iUBctNHm5XS1FFBvogpftO1fTUm3vMnGIPdlUJPwjGsqM1X
	 zrFYAbykuGFNzXkc/Bzcfslloj8STzjW/8Ie0P96iHEYFgOtvWKz2QWv8iiAx9kCJh
	 vJ0pPpgl+0SN97fmztkPnQA0PBh1SCJRAyQeW8AOS4N86K+Z08MgNRiFPW5AtdHZb8
	 8tcVNYu1XgmIg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 13/14] arm64: dts: qcom: ipq5018: Enable USB
 Super-Speed PHY
To: "George Moussalem" <george.moussalem@outlook.com>
Cc: linux-phy@lists.infradead.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org, devicetree@vger.kernel.org, olteanv@gmail.com
In-Reply-To: <20260812-ipq5018-usb3-v2-13-8f355d7ff0ef@outlook.com>
References: <20260812-ipq5018-usb3-v2-0-8f355d7ff0ef@outlook.com>
 <20260812-ipq5018-usb3-v2-13-8f355d7ff0ef@outlook.com>
Date: Wed, 12 Aug 2026 09:57:29 +0000
Message-Id: <20260812095730.9E55F1F000E9@smtp.kernel.org>
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
MyBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFBvd2VyIE1hbmFnZW1l
bnQgUmVncmVzc2lvbjogTWlzc2luZyBgdmRkLXN1cHBseWAgb24gYHVzYnBoeTBgIGNhdXNlcyBV
U0IgMi4wIHRvIGxvc2UgcG93ZXIgd2hlbiBgdXNicGh5MWAgaXMgc3VzcGVuZGVkLgotIFtNZWRp
dW1dIE1pc3NpbmcgUGluIENvbnRyb2wgQ29uZmlndXJhdGlvbiBmb3IgdGhlIDUuMFYgUmVndWxh
dG9yIEdQSU8uCi0gW0xvd10gTWlzbGVhZGluZyBEZXZpY2V0cmVlIE5vZGUgTmFtZSBmb3IgNS4w
ViBSZWd1bGF0b3IuCi0tCgotLS0gUGF0Y2ggWzEzXTogW1BBVENIIHYyIDEzLzE0XSBhcm02NDog
ZHRzOiBxY29tOiBpcHE1MDE4OiBFbmFibGUgVVNCIFN1cGVyLVNwZWVkIFBIWSAtLS0KY29tbWl0
IDBlMzRjNDk4Yjg3NGE4OGZkZDZhZDBiNjEyNjg0NzZiNWQxMGY0ODIKQXV0aG9yOiBHZW9yZ2Ug
TW91c3NhbGVtIDxnZW9yZ2UubW91c3NhbGVtQG91dGxvb2suY29tPgoKYXJtNjQ6IGR0czogcWNv
bTogaXBxNTAxODogRW5hYmxlIFVTQiBTdXBlci1TcGVlZCBQSFkKICAgIApBZGQgdGhlIDVWIHN1
cHBseSByZWd1bGF0b3IgYW5kIGVuYWJsZSBVU0IgU3VwZXItU3BlZWQgUEhZIHN1cHBvcnQuCgo+
IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vaXBxNTAxOC1yZHA0MzItYzIu
ZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL2lwcTUwMTgtcmRwNDMyLWMyLmR0cwo+IGlu
ZGV4IGZjZDVhMDc4YTJiMDguLjBiMTQ3Yzk1MjkxNDkgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02
NC9ib290L2R0cy9xY29tL2lwcTUwMTgtcmRwNDMyLWMyLmR0cwo+ICsrKyBiL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcWNvbS9pcHE1MDE4LXJkcDQzMi1jMi5kdHMKPiBAQCAtMjIsNiArMjIsMTQgQEAg
YWxpYXNlcyB7Cj4gIAljaG9zZW4gewo+ICAJCXN0ZG91dC1wYXRoID0gInNlcmlhbDA6MTE1MjAw
bjgiOwo+ICAJfTsKPiArCj4gKwlyZWd1bGF0b3JfZml4ZWRfNXAwOiByZWd1bGF0b3ItczA1MDAg
ewoKW1NldmVyaXR5OiBMb3ddClRoaXMgaXNuJ3QgYSBidWcsIGJ1dCB0aGUgbm9kZSBuYW1lIHJl
Z3VsYXRvci1zMDUwMCBpbXBsaWVzIGEgNTAwbVYgc3VwcGx5LgoKU2luY2UgdGhlIHJlZ3VsYXRv
ciBpcyBleHBsaWNpdGx5IGNvbmZpZ3VyZWQgZm9yIDUwMDAwMDAgbWljcm92b2x0cywgY291bGQg
CnRoaXMgY2F1c2UgY29uZnVzaW9uPyBUaGUgZml4ZWQtcmVndWxhdG9yIGRldmljZSB0cmVlIGJp
bmRpbmcgc2NoZW1hIHR5cGljYWxseSAKcHJlZmVycyByZWd1bGF0b3ItNXYwIGZvciBhIDUuMFYg
cmVndWxhdG9yLgoKPiArCQljb21wYXRpYmxlID0gInJlZ3VsYXRvci1maXhlZCI7Cj4gKwkJcmVn
dWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8NTAwMDAwMD47Cj4gKwkJcmVndWxhdG9yLW1heC1taWNy
b3ZvbHQgPSA8NTAwMDAwMD47Cj4gKwkJcmVndWxhdG9yLW5hbWUgPSAiZml4ZWRfNXAwIjsKPiAr
CQlncGlvcyA9IDwmdGxtbSAyNCBHUElPX0FDVElWRV9MT1c+OwoKW1NldmVyaXR5OiBNZWRpdW1d
CkRvZXMgdGhpcyByZWx5IG9uIHRoZSBib290bG9hZGVyIHRvIGxlYXZlIHRoZSBwaW4gbXVsdGlw
bGV4ZWQgYXMgYSBHUElPPwoKVGhlcmUgYXJlIG5vIGNvcnJlc3BvbmRpbmcgcGluY3RybC0wIHN0
YXRlcyBkZWZpbmVkIG9yIGFzc2lnbmVkIGhlcmUgdG8KZ3VhcmFudGVlIHRoYXQgZ3BpbzI0IGlz
IG11bHRpcGxleGVkIGFzIGEgZ2VuZXJhbC1wdXJwb3NlIEdQSU8gcmF0aGVyIHRoYW4KYW4gYWx0
ZXJuYXRlIGZ1bmN0aW9uLgoKSWYgdGhlIGJvb3Rsb2FkZXIgbGVhdmVzIGl0IGluIHRoZSB3cm9u
ZyBlbGVjdHJpY2FsIHN0YXRlLCBjb3VsZCBVU0IgcG93ZXIgCmluaXRpYWxpemF0aW9uIHNpbGVu
dGx5IGZhaWw/Cgo+ICsJfTsKPiAgfTsKClsgLi4uIF0KCj4gQEAgLTExNyw2ICsxMjUsMTIgQEAg
JnVzYnBoeTAgewo+ICAJc3RhdHVzID0gIm9rYXkiOwo+ICB9Owo+ICAKPiArJnVzYnBoeTEgewo+
ICsJdmRkLXN1cHBseSA9IDwmcmVndWxhdG9yX2ZpeGVkXzVwMD47CgpbU2V2ZXJpdHk6IEhpZ2hd
CldpbGwgdGhpcyBjYXVzZSBVU0IgMi4wIGRldmljZXMgdG8gbG9zZSBwb3dlciB3aGVuIHVzYnBo
eTEgaXMgc3VzcGVuZGVkPwoKVGhlIHNpbmdsZSA1ViBHUElPIHJlZ3VsYXRvciBwcm92aWRlcyBw
b3dlciBmb3IgdGhlIHBvcnQgdXNlZCBieSBib3RoCnVzYnBoeTAgKFVTQiAyLjApIGFuZCB1c2Jw
aHkxIChVU0IgMy4wIFNTKS4gCgpJZiB1c2JwaHkxIGlzIHN1c3BlbmRlZCBieSBydW50aW1lIFBN
IChvciBpbmFjdGl2ZSB3aGVuIG9ubHkgYSBVU0IgMi4wIApkZXZpY2UgaXMgY29ubmVjdGVkKSwg
dGhlIHJlZ3VsYXRvciBjb3JlIHdpbGwgZGlzYWJsZSByZWd1bGF0b3JfZml4ZWRfNXAwIApiZWNh
dXNlIGl0cyBvbmx5IGtub3duIGNvbnN1bWVyIG5vIGxvbmdlciByZXF1aXJlcyBpdC4gCgpTaG91
bGQgdXNicGh5MCBhbHNvIGV4cGxpY2l0bHkgZGVjbGFyZSB2ZGQtc3VwcGx5ID0gPCZyZWd1bGF0
b3JfZml4ZWRfNXAwPgpzbyB0aGUgcmVndWxhdG9yIGNvcmUga2VlcHMgdGhlIHBvd2VyIG9uIGZv
ciBVU0IgMi4wIGRldmljZXM/Cgo+ICsKPiArCXN0YXR1cyA9ICJva2F5IjsKPiArfTsKPiArCj4g
ICZ4b19ib2FyZF9jbGsgewo+ICAJY2xvY2stZGl2ID0gPDQ+Owo+ICAJY2xvY2stbXVsdCA9IDwx
PjsKCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hz
ZXQvMjAyNjA4MTItaXBxNTAxOC11c2IzLXYyLTAtOGYzNTVkN2ZmMGVmQG91dGxvb2suY29tP3Bh
cnQ9MTMKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=
