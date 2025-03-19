Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94EFEC35FFA
	for <linux-phy@archiver.kernel.org>; Wed, 19 Mar 2025 15:48:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P4H2mYs8qIQFDxa9VyRr5Z4K8cHjvnxTKX3zXDPT0JA=; b=052a9yph2HRt0S
	fvGqAwdOOZDoJYLjPkh8KEBe6XOxXcg0LPgP79LuzNf6KWu19++nyzFUfl208f2XCUvIqSUYkPLGu
	0TZ/ahKatW8tRlDx5tlobt5CrOgJ11MIcmeB/UEmsmgCIHb0qJoaD+28SuO0iRpSiztPkkWjlpogb
	dKGSxm+npd/4xgbKo7EWbek6fLFAlgTlCRBQu3Atxl1r8Utdv/UT6F5B2INs6mMrm1jcj/MvDuplv
	ZDJOqBaE08duJzkXwx648eIKhufGdIzevQm17feo5Xc/Ia00IIMTz/q0KkjyUu3yHm5D9UZ4pVTxj
	XDGzEaoep9FTNGkkJXbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuvea-00000009S52-1UPT;
	Wed, 19 Mar 2025 15:48:24 +0000
Received: from out-18.smtpout.orange.fr ([193.252.22.18] helo=out.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuveX-00000009S4P-0VeB
	for linux-phy@lists.infradead.org;
	Wed, 19 Mar 2025 15:48:23 +0000
Received: from [172.16.82.72] ([124.33.176.97])
	by smtp.orange.fr with ESMTPA
	id uveJtyP6dQBhYuveOtlLnP; Wed, 19 Mar 2025 16:48:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
	s=t20230301; t=1742399297;
	bh=drRXaJR0UoQ5nPULEuhz5/B+tox7MBOIWrTIUebRvQg=;
	h=Message-ID:Date:MIME-Version:Subject:From:To;
	b=RTXnJnGX4JF+onW8BdM2h1yrn9bbnTWZ+u8CV4sHASwQ7dD1n9Otl1R7l5ne9HkTf
	 9f4Nbs0mls1/zZgh98YNzlK4e9Uka5uXCRGaWHx4E4ENOI4Q4lSFrf2f1niqHC+VlX
	 pt+tqg6EAX1Q6FUfEds6dcKCbUDhma2aPSQCBJjAHB50ZWie7JLbnBPZmBKpbv+ku6
	 WCaTdTkQJWMSM7L8WE6v2h9PL0gzUaRpvm2DIGzrShlabVFjwZg+77svuJEW0q20gg
	 14rFIHTfWJ3ThQJJ+tnrv6ioFLI8WAuJ0X6Ui/Ty5+OqFfcQz0eenD9MjGqydJxbG8
	 xrwaG/mJJBfBw==
X-ME-Helo: [172.16.82.72]
X-ME-Auth: bWFpbGhvbC52aW5jZW50QHdhbmFkb28uZnI=
X-ME-Date: Wed, 19 Mar 2025 16:48:17 +0100
X-ME-IP: 124.33.176.97
Message-ID: <4c221c24-05c4-4be2-ad9b-e5a58968b5b0@wanadoo.fr>
Date: Thu, 20 Mar 2025 00:48:06 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: can-transceiver: Re-instate "mux-states" property
 presence check
From: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: linux-can@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-renesas-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh@kernel.org>, Marc Kleine-Budde <mkl@pengutronix.de>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Peter Rosin <peda@axentia.se>, Aswath Govindraju <a-govindraju@ti.com>
References: <6bcfde63b3a6b25640a56be2e24a357e41f8400f.1742390569.git.geert+renesas@glider.be>
 <9875d99a-4e16-4f0e-9249-69f0acc4c890@wanadoo.fr>
Content-Language: en-US
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
In-Reply-To: <9875d99a-4e16-4f0e-9249-69f0acc4c890@wanadoo.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_084821_564885_BC4994B9 
X-CRM114-Status: GOOD (  15.64  )
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

T24gMTkvMDMvMjAyNSBhdCAyMzowNiwgVmluY2VudCBNYWlsaG9sIHdyb3RlOgo+IEZvciBzb21l
IHJlYXNvbnMsIEkgcmVjZWl2ZWQgeW91ciBtZXNzYWdlIHR3aWNlICh3aXRoIGEgdHdvIG1pbnV0
ZXMKPiBpbnRlcnZhbCBiZXR3ZWVuIGJvdGggbWVzc2FnZXMpLiBUaGVzZSBsb29rIGlkZW50aWNh
bC4gScKgYW0gYW5zd2VyaW5nCj4gdGhlIG1vc3QgcmVjZW50LiA6KQo+IAo+IE9uIDE5LzAzLzIw
MjUgYXQgMjI6MjcsIEdlZXJ0IFV5dHRlcmhvZXZlbiB3cm90ZToKPj4gT24gdGhlIFJlbmVzYXMg
R3JheSBIYXdrIFNpbmdsZSBkZXZlbG9wbWVudCBib2FyZDoKPj4KPj4gICAgIGNhbi10cmFuc2Nl
aXZlci1waHkgY2FuLXBoeTA6IC9jYW4tcGh5MDogZmFpbGVkIHRvIGdldCBtdXgtc3RhdGUgKDAp
Cj4+Cj4+ICJtdXgtc3RhdGVzIiBpcyBhbiBvcHRpb25hbCBwcm9wZXJ0eSBmb3IgQ0FOIHRyYW5z
Y2VpdmVycy4gIEhvd2V2ZXIsCj4+IG11eF9nZXQoKSBhbHdheXMgcHJpbnRzIGFuIGVycm9yIG1l
c3NhZ2UgaW4gY2FzZSBvZiBhbiBlcnJvciwgaW5jbHVkaW5nCj4+IHdoZW4gdGhlIHByb3BlcnR5
IGlzIG5vdCBwcmVzZW50LCBjb25mdXNpbmcgdGhlIHVzZXIuCj4gCj4gSG1tbSwgSSB1bmRlcnN0
YW5kIHdoeSB5b3UgYXJlIGRvaW5nIHRoaXMgcGF0Y2guIEJ1dCBvbiB0aGUgbG9uZyB0ZXJtLAo+
IHdvdWxkbid0IGl0IG1ha2UgbW9yZSBzZW5zZSB0byBoYXZlIGEgZGV2bV9tdXhfc3RhdGVfZ2V0
X29wdGlvbmFsKCk/IE9yCj4gbWF5YmUgYWRkIGEgcHJvcGVydHkgc29tZXdoZXJlIHRvIGluZm9y
bSBkZXZtX211eF9zdGF0ZV9nZXQoKSB0aGF0IHRoaXMKPiBpcyBvcHRpb25hbD8KPiAKPiBSZWdh
cmRsZXNzLCBqdXN0IHNlZSB0aGlzIGFzIGFuIG9wZW4gcXVlc3Rpb24uIEkgYW0gT0sgd2l0aCB0
aGUgYXBwcm9hY2gKPiBvZiB5b3VyIHBhdGNoLgoKQWgsIGFuZCBJIGp1c3QgcmVhbGl6ZWQgdGhh
dCB5b3UgbWVudGlvbmVkIHRoZSBleGFjdCBzYW1lIHRoaW5nIHVuZGVyCnRoZSAtLS0gY3V0dGVy
LCB3aGljaCBmb3Igc29tZSByZWFzb25zIG15IGV5ZXMgcmVmdXNlZCB0byBzZWUuCgpTb3JyeSBm
b3IgdGhlIG5vaXNlLgoKPj4gRml4IHRoaXMgYnkgcmUtaW5zdGF0aW5nIHRoZSBwcm9wZXJ0eSBw
cmVzZW5jZSBjaGVjay4KPj4KPj4gVGhpcyBpcyBiYXNjaWFsbHkgYSByZXZlcnQgb2YgY29tbWl0
IGQwMmRmZDRjZWIyZTlmMzQgKCJwaHk6Cj4+IGNhbi10cmFuc2NlaXZlcjogRHJvcCB1bm5lY2Vz
c2FyeSAibXV4LXN0YXRlcyIgcHJvcGVydHkgcHJlc2VuY2UKPj4gY2hlY2siKSwgd2l0aCB0d28g
Y2hhbmdlczoKPj4gICAxLiBVc2UgdGhlIHByb3BlciBBUEkgZm9yIGNoZWNraW5nIHdoZXRoZXIg
YSBwcm9wZXJ0eSBpcyBwcmVzZW50LAo+PiAgIDIuIERvIG5vdCBwcmludCBhbiBlcnJvciBtZXNz
YWdlLCBhcyB0aGUgbXV4IGNvcmUgYWxyZWFkeSB0YWtlcyBjYXJlCj4+ICAgICAgb2YgdGhhdC4K
Pj4KPj4gRml4ZXM6IGQwMmRmZDRjZWIyZTlmMzQgKCJwaHk6IGNhbi10cmFuc2NlaXZlcjogRHJv
cCB1bm5lY2Vzc2FyeSAibXV4LXN0YXRlcyIgcHJvcGVydHkgcHJlc2VuY2UgY2hlY2siKT4gU2ln
bmVkLW9mZi1ieTogR2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydCtyZW5lc2FzQGdsaWRlci5iZT4K
PiAKPiBOb3R3aXRoc3RhbmRpbmcgb2YgYWJvdmUgY29tbWVudDoKPiAKPiBSZXZpZXdlZC1ieTog
VmluY2VudCBNYWlsaG9sIDxtYWlsaG9sLnZpbmNlbnRAd2FuYWRvby5mcj4KCllvdXJzIHNpbmNl
cmVseSwKVmluY2VudCBNYWlsaG9sCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==
