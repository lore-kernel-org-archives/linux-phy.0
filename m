Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 046CF606D829
	for <linux-phy@archiver.kernel.org>; Fri,  6 Nov 2026 09:41:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Z1N8pUgL;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=Pl6m8RIt
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Y+D1uMBfoBpM9OkFkBP4anie/faWKnjwKIfBGlma1+g=; b=Z1N8pUgLJFFp3oaa0m76ktsreQ
	gjMHNQoeAZW3xMVNgL4iFKteqfLRuITWGvqhDth6LjwGtXt3Ei9ZfuC8GO9DoE2joj8H49+yYHjhf
	F2HkAlpBtzlD+RYKHqw+VjHSZT7+qEg6MgCmabd8cArc2uA5MFcoVZVQmRxh5rU6whtiQQ2D7zdE1
	eIMcMJ7kikiPcd24grIlXxPta82eQkV5IxtCDLO7M8fUqhfUFxbKSj7iCj7VPQiygqQ1fVzNI3rss
	3P4Zs/drN9NAaX1XJIyZ512zotpy2PmeQVLDKZphpr2UzCsu1ZQU++n24paHXk9vXS0YZPoi1TgXZ
	V/3B+zpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPGSC-0000000BmuV-2WG6;
	Fri, 06 Nov 2026 09:41:48 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPGSA-0000000Bmu8-3zyl
	for linux-phy@lists.infradead.org;
	Fri, 06 Nov 2026 09:41:46 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id AE2FE43CC7;
	Fri,  6 Nov 2026 09:41:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F63C1F008A2;
	Fri,  6 Nov 2026 09:41:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793958106;
	bh=AM1vKCc+zXXIExWJ6HBD/LmFK9wTMqFUgXGp0hz6PKM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Pl6m8RItiZEJY/Tv9Y2Ht93K8UGo7plhJsogsBMSPQhvg+ZETw4MG79qvBJMCw8Vi
	 SVuvyLWyhzES41qlhLDMPMqVGH5/0MpgyA8JGSUKpTso8OEM6nqlIVCiJ5Ix/UGvac
	 qJN1RCWnLqWkOr2zjmjmnZoF5X54v/s/qg1gLvQU4N3OwvDEBlrKy+0J8E7ZGzIC3w
	 9PTFfLb9ayJ8kugGDvSQEjYs54d5FzZOOFSllj4+eek7Tu8O7U+ufif139kC55QtmA
	 Qcw1ocbDqtl9zK84IMUhzIVvWDDV+FFHzKWoryIdzuPoudr6nyZmZ92jVI5jFaeKM/
	 K2JEdhsZk1Rnw==
Message-ID: <sashiko-outbox-201141@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 03/25] dt-bindings: reset: add Metanoia MT2824
To: =?utf-8?b?QmVub8OudCBNb25pbg==?= <benoit.monin@bootlin.com>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-usb@vger.kernel.org, linux-watchdog@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261106-mt2824-v1-3-86087eaf5af4@bootlin.com>
References: <20261106-mt2824-v1-0-86087eaf5af4@bootlin.com>
 <20261106-mt2824-v1-3-86087eaf5af4@bootlin.com>
Date: Fri, 06 Nov 2026 09:41:45 +0000
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
MiBwb3RlbnRpYWwKaXNzdWVzIHRvIGNvbnNpZGVyOgotIFtMb3ddIGR0LWJpbmRpbmdzOiByZXNl
dDogdW51c2VkIGxhYmVsIGFuZCBub24tc3RhbmRhcmQgbm9kZSBuYW1lIGluCiAgZXhhbXBsZQot
IFtMb3ddIGR0LWJpbmRpbmdzOiByZXNldDogc2NoZW1hIGZpbGVuYW1lIGRvZXMgbm90IG1hdGNo
IGNvbXBhdGlibGUKICBzdHJpbmcKLS0KCmNvbW1pdCAzYmIxYWM2ZDg2YmU3ZmE2OTA4MDgzYzBm
NDNlZDljMzkwNzg4YmFhCkF1dGhvcjogQmVub8OudCBNb25pbiA8YmVub2l0Lm1vbmluQGJvb3Rs
aW4uY29tPgoKZHQtYmluZGluZ3M6IHJlc2V0OiBhZGQgTWV0YW5vaWEgTVQyODI0CgpUaGlzIGNv
bW1pdCBhZGRzIHRoZSBEZXZpY2V0cmVlIGJpbmRpbmcgc2NoZW1hIGZvciB0aGUgTWV0YW5vaWEg
TVQyODI0CnJlc2V0IGNvbnRyb2xsZXIuCgo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvcmVzZXQvbWV0YW5vaWEscmVzZXQueWFtbCBiL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9yZXNldC9tZXRhbm9pYSxyZXNldC55YW1sCj4gbmV3IGZp
bGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAwLi5mMTY5ZDFmYTkxOWNjCj4gLS0t
IC9kZXYvbnVsbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9yZXNl
dC9tZXRhbm9pYSxyZXNldC55YW1sCj4gQEAgLTAsMCArMSw0MCBAQAo+ICsjIFNQRFgtTGljZW5z
ZS1JZGVudGlmaWVyOiAoR1BMLTIuMC1vbmx5IE9SIEJTRC0yLUNsYXVzZSkKPiArJVlBTUwgMS4y
Cj4gKy0tLQo+ICskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL3Jlc2V0L21ldGFu
b2lhLHJlc2V0LnlhbWwjCj4gKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNj
aGVtYXMvY29yZS55YW1sIwo+ICsKPiArdGl0bGU6IE1ldGFub2lhIFJlc2V0IENvbnRyb2xsZXIK
PiArCj4gK21haW50YWluZXJzOgo+ICsgIC0gSnVuIENoYW5nIDxqdW4uY2hhbmdAbWV0YW5vaWEt
Y29tbS5jb20+Cj4gKwo+ICtkZXNjcmlwdGlvbjoKPiArICBNZXRhbm9pYSByZXNldCBjb250cm9s
bGVycyBwcm92aWRlIHdhcm0tcmVzZXQgYW5kIHN5c3RlbSByZXNldCBjb250cm9scwo+ICsgIHZp
YSBtZW1vcnktbWFwcGVkIHJlZ2lzdGVycy4KPiArCj4gK3Byb3BlcnRpZXM6Cj4gKyAgY29tcGF0
aWJsZToKPiArICAgIGVudW06Cj4gKyAgICAgIC0gbWV0YW5vaWEsbXQyODI0LXJlc2V0CgpbU2V2
ZXJpdHk6IExvd10KU2hvdWxkIHRoaXMgc2NoZW1hIGZpbGUgYW5kIGl0cyAkaWQgYmUgbmFtZWQg
bWV0YW5vaWEsbXQyODI0LXJlc2V0LnlhbWwgdG8KbWF0Y2ggdGhlIGNvbXBhdGlibGUgc3RyaW5n
LCBhcyByZXF1aXJlZCBieQpEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvd3JpdGlu
Zy1iaW5kaW5ncy5yc3Q/ICBXaXRoIGEgc2luZ2xlCmNvbXBhdGlibGUgc3RyaW5nLCBjb21wYXRp
YmxlIGNhbiBhbHNvIHVzZSBjb25zdCByYXRoZXIgdGhhbiBlbnVtLgoKWyAuLi4gXQoKPiArZXhh
bXBsZXM6Cj4gKyAgLSB8Cj4gKyAgICByc3Q6IHJzdC1jb250cm9sbGVyQDEwMDAwMDBjIHsKPiAr
ICAgICAgICBjb21wYXRpYmxlID0gIm1ldGFub2lhLG10MjgyNC1yZXNldCI7Cj4gKyAgICAgICAg
cmVnID0gPDB4MTAwMDAwMGMgMHg0PjsKPiArICAgICAgICAjcmVzZXQtY2VsbHMgPSA8MT47Cj4g
KyAgICB9OwoKW1NldmVyaXR5OiBMb3ddClNob3VsZCB0aGUgdW5yZWZlcmVuY2VkIHJzdCBsYWJl
bCBiZSBkcm9wcGVkIGFuZCB0aGUgbm9kZSByZW5hbWVkIHRvCnJlc2V0LWNvbnRyb2xsZXJAMTAw
MDAwMGM/ICBUaGUgdW51c2VkIHJzdCBsYWJlbCBjYXVzZXMKc2NyaXB0cy9kdGMvZHQtY2hlY2st
c3R5bGUgLS1tb2RlPXN0cmljdCB0byBmYWlsIHdpdGggYW4gdW51c2VkLWxhYmVscwplcnJvciwg
YW5kIHJlc2V0LWNvbnRyb2xsZXIgaXMgdGhlIHN0YW5kYXJkIGdlbmVyaWMgbm9kZSBuYW1lIGZv
ciByZXNldApjb250cm9sbGVycy4KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nh
c2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjExMDYtbXQyODI0LXYxLTAtODYwODdlYWY1YWY0QGJv
b3RsaW4uY29tP3BhcnQ9MwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
