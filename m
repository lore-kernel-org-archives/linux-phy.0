Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA0D3C35FFC
	for <linux-phy@archiver.kernel.org>; Wed, 19 Mar 2025 14:07:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1IoCzdCADcnTW9Nu2IHfc7wA5iWZmjjU07Mqw+egfxs=; b=rHLKsggl/5NO42
	TIBH61W6Yd7VWYxGX478b6Al0VglrUzC8w1mLfH1RDiiid0uGvioc2jj5pJ5cIo1clWyCtL+EVQ4d
	2fSRZXfAItHZkcYXzjA0fj2iZ8qNZfVjBrVJaRDEr0Loy0EpM8qf3fEW6/niQZ2ffYFxdnFMpMQXF
	Zlol90kIzKgFYdVFA0373+P3WcHrvpUjcM2ufLFO3dCd+lVpYMQojBaMKcP9lY4jacKaQH8S3SIYi
	sE+0/8VqWuzpoZzBwxPEBwuSYL7FgHS0s8i8nyYuIrLJyqnw5p2dwwUKYSrN9QAVKi4Q+ja9Ub/2E
	dHXBrIB8Sln7oi79uWxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuu4g-000000099nV-20tO;
	Wed, 19 Mar 2025 14:07:14 +0000
Received: from out-15.smtpout.orange.fr ([193.252.22.15] helo=out.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuu4a-000000099j4-0TZm
	for linux-phy@lists.infradead.org;
	Wed, 19 Mar 2025 14:07:12 +0000
Received: from [172.16.82.72] ([124.33.176.97])
	by smtp.orange.fr with ESMTPA
	id uu4JtWV2Z7cNtuu4NtYw7s; Wed, 19 Mar 2025 15:07:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
	s=t20230301; t=1742393220;
	bh=FXtT3TyOuREop0nAPbjd8Bh8NcKyfaMb6/bV7hE+Y9g=;
	h=Message-ID:Date:MIME-Version:Subject:To:From;
	b=NZZDSOziNkt+PTbhmfL9cjo9HFF5lpC4b+Sy0lwu+QyET6zBVpjMJKQiPK5CXPmCg
	 WbtehyqC9u0f4ATJaS2ibG5WlHA+DQumDUlII/LDd0zRQbn+TPIGRYtIDqvzd3/a1p
	 mdrZ9Mgrc2pfHHJ9JTD56wDtJc/hThAcCDIacKoPZ5hDc77KQNK0nmUmDfFInlAB1X
	 eU/JBGCmFzOiCsV/lPdpbCwnQVmWKxjH7bxNOq/Jh8loXekplFe4GKG5FuVk7apo4N
	 cLZP3Aa3YU0MDi53Cc8caUFd5IWl9mG+YJrH89oTAcbC+BRrd+t4e3MzkU+eXXbQWt
	 h4PnE4eqJ0tMA==
X-ME-Helo: [172.16.82.72]
X-ME-Auth: bWFpbGhvbC52aW5jZW50QHdhbmFkb28uZnI=
X-ME-Date: Wed, 19 Mar 2025 15:07:00 +0100
X-ME-IP: 124.33.176.97
Message-ID: <9875d99a-4e16-4f0e-9249-69f0acc4c890@wanadoo.fr>
Date: Wed, 19 Mar 2025 23:06:50 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: can-transceiver: Re-instate "mux-states" property
 presence check
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: linux-can@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-renesas-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh@kernel.org>, Marc Kleine-Budde <mkl@pengutronix.de>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Peter Rosin <peda@axentia.se>, Aswath Govindraju <a-govindraju@ti.com>
References: <6bcfde63b3a6b25640a56be2e24a357e41f8400f.1742390569.git.geert+renesas@glider.be>
Content-Language: en-US
From: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
Autocrypt: addr=mailhol.vincent@wanadoo.fr; keydata=
 xjMEZluomRYJKwYBBAHaRw8BAQdAf+/PnQvy9LCWNSJLbhc+AOUsR2cNVonvxhDk/KcW7FvN
 LFZpbmNlbnQgTWFpbGhvbCA8bWFpbGhvbC52aW5jZW50QHdhbmFkb28uZnI+wrIEExYKAFoC
 GwMFCQp/CJcFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AWIQTtj3AFdOZ/IOV06OKrX+uI
 bbuZwgUCZx41XhgYaGtwczovL2tleXMub3BlbnBncC5vcmcACgkQq1/riG27mcIYiwEAkgKK
 BJ+ANKwhTAAvL1XeApQ+2NNNEwFWzipVAGvTRigA+wUeyB3UQwZrwb7jsQuBXxhk3lL45HF5
 8+y4bQCUCqYGzjgEZx4y8xIKKwYBBAGXVQEFAQEHQJrbYZzu0JG5w8gxE6EtQe6LmxKMqP6E
 yR33sA+BR9pLAwEIB8J+BBgWCgAmFiEE7Y9wBXTmfyDldOjiq1/riG27mcIFAmceMvMCGwwF
 CQPCZwAACgkQq1/riG27mcJU7QEA+LmpFhfQ1aij/L8VzsZwr/S44HCzcz5+jkxnVVQ5LZ4B
 ANOCpYEY+CYrld5XZvM8h2EntNnzxHHuhjfDOQ3MAkEK
In-Reply-To: <6bcfde63b3a6b25640a56be2e24a357e41f8400f.1742390569.git.geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_070709_360409_C545CBAD 
X-CRM114-Status: GOOD (  12.79  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Rm9yIHNvbWUgcmVhc29ucywgSSByZWNlaXZlZCB5b3VyIG1lc3NhZ2UgdHdpY2UgKHdpdGggYSB0
d28gbWludXRlcwppbnRlcnZhbCBiZXR3ZWVuIGJvdGggbWVzc2FnZXMpLiBUaGVzZSBsb29rIGlk
ZW50aWNhbC4gScKgYW0gYW5zd2VyaW5nCnRoZSBtb3N0IHJlY2VudC4gOikKCk9uIDE5LzAzLzIw
MjUgYXQgMjI6MjcsIEdlZXJ0IFV5dHRlcmhvZXZlbiB3cm90ZToKPiBPbiB0aGUgUmVuZXNhcyBH
cmF5IEhhd2sgU2luZ2xlIGRldmVsb3BtZW50IGJvYXJkOgo+IAo+ICAgICBjYW4tdHJhbnNjZWl2
ZXItcGh5IGNhbi1waHkwOiAvY2FuLXBoeTA6IGZhaWxlZCB0byBnZXQgbXV4LXN0YXRlICgwKQo+
IAo+ICJtdXgtc3RhdGVzIiBpcyBhbiBvcHRpb25hbCBwcm9wZXJ0eSBmb3IgQ0FOIHRyYW5zY2Vp
dmVycy4gIEhvd2V2ZXIsCj4gbXV4X2dldCgpIGFsd2F5cyBwcmludHMgYW4gZXJyb3IgbWVzc2Fn
ZSBpbiBjYXNlIG9mIGFuIGVycm9yLCBpbmNsdWRpbmcKPiB3aGVuIHRoZSBwcm9wZXJ0eSBpcyBu
b3QgcHJlc2VudCwgY29uZnVzaW5nIHRoZSB1c2VyLgoKSG1tbSwgSSB1bmRlcnN0YW5kIHdoeSB5
b3UgYXJlIGRvaW5nIHRoaXMgcGF0Y2guIEJ1dCBvbiB0aGUgbG9uZyB0ZXJtLAp3b3VsZG4ndCBp
dCBtYWtlIG1vcmUgc2Vuc2UgdG8gaGF2ZSBhIGRldm1fbXV4X3N0YXRlX2dldF9vcHRpb25hbCgp
PyBPcgptYXliZSBhZGQgYSBwcm9wZXJ0eSBzb21ld2hlcmUgdG8gaW5mb3JtIGRldm1fbXV4X3N0
YXRlX2dldCgpIHRoYXQgdGhpcwppcyBvcHRpb25hbD8KClJlZ2FyZGxlc3MsIGp1c3Qgc2VlIHRo
aXMgYXMgYW4gb3BlbiBxdWVzdGlvbi4gSSBhbSBPSyB3aXRoIHRoZSBhcHByb2FjaApvZiB5b3Vy
IHBhdGNoLgoKPiBGaXggdGhpcyBieSByZS1pbnN0YXRpbmcgdGhlIHByb3BlcnR5IHByZXNlbmNl
IGNoZWNrLgo+IAo+IFRoaXMgaXMgYmFzY2lhbGx5IGEgcmV2ZXJ0IG9mIGNvbW1pdCBkMDJkZmQ0
Y2ViMmU5ZjM0ICgicGh5Ogo+IGNhbi10cmFuc2NlaXZlcjogRHJvcCB1bm5lY2Vzc2FyeSAibXV4
LXN0YXRlcyIgcHJvcGVydHkgcHJlc2VuY2UKPiBjaGVjayIpLCB3aXRoIHR3byBjaGFuZ2VzOgo+
ICAgMS4gVXNlIHRoZSBwcm9wZXIgQVBJIGZvciBjaGVja2luZyB3aGV0aGVyIGEgcHJvcGVydHkg
aXMgcHJlc2VudCwKPiAgIDIuIERvIG5vdCBwcmludCBhbiBlcnJvciBtZXNzYWdlLCBhcyB0aGUg
bXV4IGNvcmUgYWxyZWFkeSB0YWtlcyBjYXJlCj4gICAgICBvZiB0aGF0Lgo+IAo+IEZpeGVzOiBk
MDJkZmQ0Y2ViMmU5ZjM0ICgicGh5OiBjYW4tdHJhbnNjZWl2ZXI6IERyb3AgdW5uZWNlc3Nhcnkg
Im11eC1zdGF0ZXMiIHByb3BlcnR5IHByZXNlbmNlIGNoZWNrIik+IFNpZ25lZC1vZmYtYnk6IEdl
ZXJ0IFV5dHRlcmhvZXZlbiA8Z2VlcnQrcmVuZXNhc0BnbGlkZXIuYmU+CgpOb3R3aXRoc3RhbmRp
bmcgb2YgYWJvdmUgY29tbWVudDoKClJldmlld2VkLWJ5OiBWaW5jZW50IE1haWxob2wgPG1haWxo
b2wudmluY2VudEB3YW5hZG9vLmZyPgoKCllvdXJzIHNpbmNlcmVseSwKVmluY2VudCBNYWlsaG9s
CgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
Cg==
