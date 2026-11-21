Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29059606A320
	for <linux-phy@archiver.kernel.org>; Sat, 21 Nov 2026 08:03:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=oy9eH5P3;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=lDLKu4Wp
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ZBJ9nhgC1YTZBiZZjHq9wkOf4cU9IW1YL1n9+hfrku8=; b=oy9eH5P3e6BQHWrAmSJoRYWrlh
	d9NHG1Crzl5EA3ZTTod9RqXt7zryFo3mgPWCmpQ0gwjLQ6WJAuPaMjOhMMheNRE+agllQbOUgLteV
	tAjm9MMgSCCY237MwYZxsnqDWoks3Q9BpRGypGtZfbDlDQeRDDCu5SAk5U4TvgmxcajxdAsIC3eIn
	7dHL13Y8fHM5zh6Ak3eQ4T658uhtlYpC3FzXYFAbB3WcOZd4guWl+Z3pMTZ+mX8oh/67NPlxS0lEV
	8k2dVtGi2jfe2UfJmR8GrXLW7bThr7i5VZg7pzz2BSEK0TTbcPsUcjhSE+kgQIE9lqGu2j36Jr1yP
	SNBGeCLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUg4B-0000000GuWo-3oJw;
	Sat, 21 Nov 2026 08:03:23 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUg4A-0000000GuWg-3h0V
	for linux-phy@lists.infradead.org;
	Sat, 21 Nov 2026 08:03:22 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 2F6AF60D54;
	Sat, 21 Nov 2026 08:03:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9BE601F000C0;
	Sat, 21 Nov 2026 08:03:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795248201;
	bh=+uOtZPsqOXKYcPYuGAOs5O9EZjEyzf3mVE2+5dr005A=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=lDLKu4WpmdS6Y9gr57RcC5JfqA0KUc0974f4NIJuYcodQP39QcJhFDSpkWx2ko5p9
	 BxEYxnMl0j3twE9UVynMaF/x4l85c/ZM87L3+V+2eeBqR7nYZ5ipebt98NOkvFsSfU
	 yt8c46bFiZ8JUjpJYCcVfgNFd31/F6NEF57rZF8qdGelx72S3YHBCfeuNzxHWpEfhW
	 PMkSmnNk6ktlhnqmV+UnugEbtMSaP9k2rULGvajT7+E2wHAPuV8quUHU+D+uQEEj2v
	 n5cuiZPhjX8ZllZ0ZW7LmaBgpW6fByc+5ODr0H+kbpwreV7Ygl+qjH2eftl2ab4qRB
	 XD9LB1GH7n3pg==
Message-ID: <sashiko-outbox-226818@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] drm/phy: rockchip: fix RK3506 DSI low-power command
 handling
To: ZhuXiangyu <1194781887@qq.com>
Cc: linux-phy@lists.infradead.org, dri-devel@lists.freedesktop.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <tencent_6F7C9E04169BCBAE4E162DAA3DCD5395B209@qq.com>
References: <tencent_6F7C9E04169BCBAE4E162DAA3DCD5395B209@qq.com>
Date: Sat, 21 Nov 2026 08:03:21 +0000
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
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwKaXNzdWUgdG8gY29uc2lkZXI6Ci0gW0xvd10gZHJtL3BoeTogcm9ja2NoaXA6
IG1pc3NpbmcgRml4ZXM6IHRyYWlsZXJzIGZvciBSSzM1MDYgRFNJIGFuZAogIERQSFkgZml4ZXMK
LS0KCmNvbW1pdCBkOWZjMDM3Y2QxOGQ5NzVkMTg5YzQ2YzhhMWQwODNiMDhjNDE3YTkyCkF1dGhv
cjogWmh1WGlhbmd5dSA8MTE5NDc4MTg4N0BxcS5jb20+Cgo+IGRybS9waHk6IHJvY2tjaGlwOiBm
aXggUkszNTA2IERTSSBsb3ctcG93ZXIgY29tbWFuZCBoYW5kbGluZwo+Cj4gVHdvIGJ1Z3Mga2Vl
cCB0aGUgUkszNTA2IE1JUEktRFNJIGxpbmsgZnJvbSBpbml0aWFsaXNpbmcgYSBwYW5lbDogdGhl
Cj4gRFBIWSBwcm9ncmFtcyB0aGUgd3JvbmcgaGlnaC1zcGVlZCB0aW1pbmcgZW50cnksIGFuZCB0
aGUgUEhZIGRhdGEgbGFuZXMKPiBhcmUgbmV2ZXIgZW5hYmxlZCBpbiB0aGUgR1JGLgo+Cj4gMS4g
cGh5LXJvY2tjaGlwLWlubm8tZHNpZHBoeSBwaWNrcyB0aGUgd3JvbmcgSFMgdGltaW5nIGVudHJ5
Cj4KPiAgICBUaGUgMS41IEdIeiBpbm5vIERTSSBQSFkgdGltaW5nIHRhYmxlIHN0b3JlcyBpdHMg
cmF0ZXMgaW4gTWJwcyB3aGlsZQo+ICAgIHRoZSBvdGhlciB0YWJsZXMgYW5kIHRoZSBsb29rdXAg
dXNlIEh6LiBUaGUgbW9kZSBlbmFibGUgY29kZSBjb21wYXJlcwo+ICAgIGlubm8tPnBsbC5yYXRl
IGluIEh6IChlLmcuIDM3MjAwMDAwMCkgYWdhaW5zdCB0aW1pbmdzW10ucmF0ZSBpbiBNYnBzCj4g
ICAgKGUuZy4gNDAwKSwgc28gdGhlIGNvbXBhcmlzb24gbmV2ZXIgbWF0Y2hlcy4gVGhlIGxvb3Ag
cnVucyB0byB0aGUgZW5kCj4gICAgYW5kIHRoZSBsYXN0LCBmYXN0ZXN0IGVudHJ5IGlzIHVzZWQs
IHdoaWNoIHByb2dyYW1zIGEgVExQWC9MUFgKPiAgICBjb3VudGVyIHRoYXQgaXMgZmFyIHRvbyBs
YXJnZS4gVGhlIHBhbmVsIHRoZW4gY2Fubm90IGRlY29kZSB0aGUKPiAgICBsb3ctcG93ZXIgRENT
IGNvbW1hbmRzIGFuZCBzdGF5cyBpbiBzbGVlcCBtb2RlLCBzbyB0aGUgZGlzcGxheSBzdGF5cwo+
ICAgIGJsYWNrIGV2ZW4gdGhvdWdoIHRoZSBMUCBwYWNrZXRzIGFyZSB2aXNpYmxlIG9uIHRoZSBk
YXRhIGxhbmUuCj4KPiAgICBDb252ZXJ0IHRoZSAxLjUgR0h6IHRpbWluZyB0YWJsZSByYXRlcyB0
byBIeiBzbyB0aGF0IHRoZSBsb29rdXAKPiAgICBzZWxlY3RzIHRoZSBjb3JyZWN0IGVudHJ5Lgo+
Cj4gMi4gVGhlIFJLMzUwNiBEU0kgR1JGIGxhbmUgZW5hYmxlIGJpdHMgYXJlIG5ldmVyIHdyaXR0
ZW4KPgo+ICAgIHJrMzUwNl9jaGlwX2RhdGEgb25seSBjbGVhcnMgdGhlIHR1cm5hcm91bmQgLyBm
b3JjZS1zdG9wIGZpZWxkcywgc28KPiAgICB0aGUgUEhZIGRhdGEgbGFuZXMgc3RheSBkaXNhYmxl
ZCB1bmxlc3MgdGhlIGJvb3QgbG9hZGVyIGhhcHBlbnMgdG8KPiAgICBlbmFibGUgdGhlbS4gUHJv
Z3JhbSBSSzM1MDZfRFNJX1BIWV9FTkFCTEVfTEFORTAvMSBhcyB3ZWxsLgo+Cj4gVGVzdGVkIG9u
IHRoZSBSSzM1MDZCIEplcnJ5VGVjaCBib2FyZDogdGhlIHBhbmVsIG5vdyByZWNlaXZlcyB0aGUg
aW5pdAo+IHNlcXVlbmNlIG92ZXIgTFAgYW5kIHRoZSBmcmFtZWJ1ZmZlciBjb25zb2xlIGlzIHZp
c2libGUuCj4KPiBTaWduZWQtb2ZmLWJ5OiBaaHVYaWFuZ3l1IDwxMTk0NzgxODg3QHFxLmNvbT4K
CltTZXZlcml0eTogTG93XQpUaGlzIGZpeGVzIGJ1Z3MgaW4gdGhlIFJLMzUwNiBEUEhZIGFuZCBE
U0kgc3VwcG9ydC4gIFNob3VsZCB0aGUgY29tbWl0Cm1lc3NhZ2UgaW5jbHVkZToKCiAgRml4ZXM6
IDc4NWE5ZDViYjE0NSAoInBoeTogcm9ja2NoaXA6IGlubm8tZHNpZHBoeTogQWRkIHN1cHBvcnQg
Zm9yIHJrMzUwNiIpCiAgRml4ZXM6IGNhYmVhY2M3ZWFkYyAoImRybS9yb2NrY2hpcDogZHNpOiBB
ZGQgc3VwcG9ydCBmb3IgcmszNTA2IikKCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczov
L3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvdGVuY2VudF82RjdDOUUwNDE2OUJDQkFFNEUxNjJEQUEz
RENENTM5NUIyMDlAcXEuY29tP3BhcnQ9MQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
