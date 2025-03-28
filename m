Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5AC3C28B20
	for <linux-phy@archiver.kernel.org>; Fri, 28 Mar 2025 08:22:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w/KNqBKu8TPQaj8rP6m4fAz0aV4SdKBwRxeL7Wlu9Ko=; b=SbrW9E2NKjjQwC
	wsMBk4cpb6H3cq3uo18KkPRuPlgsqTeMvr1/wvj5rKnHG0FBt0aO+SbKZrqwudodddgA/OVTycvep
	/x86NK8yiT9pLjrt6kBRkvz8DGlI8dLKUWb8Gx6PuqalhmIg5wMg3i/lyIJzF1iNvJKYmQZAJzVok
	x/4dBcgYPRUqpQqF7jrpjJeiy5DfFHETyHv2tV4ws/C2HPPNcNHcj9PkR1mRv5ITN85bBrHCqflwi
	9Yy7ArlRiurcI68VBGpbLi8FRxpXQBOhH+z9XrmzYEuF+5EAiTejqJRaWrePGnbfBnhIP7o5sZtdT
	p/61G/E01372La0SxzmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1ty4zH-0000000CuGk-20yY;
	Fri, 28 Mar 2025 08:22:47 +0000
Received: from out-72.smtpout.orange.fr ([193.252.22.72] helo=out.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1ty4zD-0000000CuDd-3hh8
	for linux-phy@lists.infradead.org;
	Fri, 28 Mar 2025 08:22:46 +0000
Received: from [172.16.82.72] ([124.33.176.97])
	by smtp.orange.fr with ESMTPA
	id y4ytt6H5o4o0iy4yxtRjTi; Fri, 28 Mar 2025 09:22:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
	s=t20230301; t=1743150154;
	bh=DTDbD/ooJMwFg/YbtZABbAe7VxGrq0KHlq70LD0SD5E=;
	h=Message-ID:Date:MIME-Version:From:Subject:To;
	b=Wsqf2ZSbPHdpjIHOgoN2/945gS2i1us5saPSWaHtY66By+j39yPEAshlAIHQ+TkGf
	 faxd2iqsEp/WH9p5lUHFiO5zzNTz+YjU2KoFQsIIiR+jZB2uCVEPSRBErgThgbcSg7
	 zsDzA2RqhqWR5/0HN/xv3W+ks4SvBv8W08FOPQOlvxBdkOgU3AlxWY7VAPsFT8+EAa
	 ey+Wvh3kbID70huZ4lIcg8rg9W5uRd619WDsJx/pqBeOsP0FuuciZgdy+JjXFeZWsb
	 8r8r7sJgNeBZn/kbU5a6M79Th4FvI3ZrRvfUCm+Vna9uK1NxZ+qUJHBhXNwGrwPd7B
	 mPiIU1dzXLK9w==
X-ME-Helo: [172.16.82.72]
X-ME-Auth: bWFpbGhvbC52aW5jZW50QHdhbmFkb28uZnI=
X-ME-Date: Fri, 28 Mar 2025 09:22:34 +0100
X-ME-IP: 124.33.176.97
Message-ID: <cd6bab58-592b-43de-a0c5-b1c01d99e1c2@wanadoo.fr>
Date: Fri, 28 Mar 2025 17:22:22 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
Subject: Re: [PATCH v2] phy: can-transceiver: Re-instate "mux-states" property
 presence check
To: Geert Uytterhoeven <geert+renesas@glider.be>,
 Rob Herring <robh@kernel.org>
Cc: linux-can@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-renesas-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Marc Kleine-Budde <mkl@pengutronix.de>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Peter Rosin <peda@axentia.se>,
 Aswath Govindraju <a-govindraju@ti.com>,
 Biju Das <biju.das.jz@bp.renesas.com>
References: <3d7e0d723908284e8cf06ad1f7950c03173178f3.1742483710.git.geert+renesas@glider.be>
 <7805e0db-7c17-438d-9985-f4feec644da6@wanadoo.fr>
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
In-Reply-To: <7805e0db-7c17-438d-9985-f4feec644da6@wanadoo.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250328_012244_326801_0F6CDF65 
X-CRM114-Status: GOOD (  10.63  )
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

T24gMjEvMDMvMjAyNSBhdCAxMzoxOCwgVmluY2VudCBNYWlsaG9sIHdyb3RlOgo+IE9uIDIxLzAz
LzIwMjUgYXQgMDA6MTUsIEdlZXJ0IFV5dHRlcmhvZXZlbiB3cm90ZToKPj4gT24gdGhlIFJlbmVz
YXMgR3JheSBIYXdrIFNpbmdsZSBkZXZlbG9wbWVudCBib2FyZDoKPj4KPj4gICAgIGNhbi10cmFu
c2NlaXZlci1waHkgY2FuLXBoeTA6IC9jYW4tcGh5MDogZmFpbGVkIHRvIGdldCBtdXgtc3RhdGUg
KDApCj4+Cj4+ICJtdXgtc3RhdGVzIiBpcyBhbiBvcHRpb25hbCBwcm9wZXJ0eSBmb3IgQ0FOIHRy
YW5zY2VpdmVycy4gIEhvd2V2ZXIsCj4+IG11eF9nZXQoKSBhbHdheXMgcHJpbnRzIGFuIGVycm9y
IG1lc3NhZ2UgaW4gY2FzZSBvZiBhbiBlcnJvciwgaW5jbHVkaW5nCj4+IHdoZW4gdGhlIHByb3Bl
cnR5IGlzIG5vdCBwcmVzZW50LCBjb25mdXNpbmcgdGhlIHVzZXIuCj4+Cj4+IEZpeCB0aGlzIGJ5
IHJlLWluc3RhdGluZyB0aGUgcHJvcGVydHkgcHJlc2VuY2UgY2hlY2sgKHRoaXMgdGltZSB1c2lu
Zwo+PiB0aGUgcHJvcGVyIEFQSSkgaW4gYSB3cmFwcGVyIGFyb3VuZCBkZXZtX211eF9zdGF0ZV9n
ZXQoKS4gIFdoZW4gdGhlCj4+IG11bHRpcGxleGVyIHN1YnN5c3RlbSBnYWlucyBzdXBwb3J0IGZv
ciBvcHRpb25hbCBtdXhlcywgdGhlIHdyYXBwZXIgY2FuCj4+IGp1c3QgYmUgcmVtb3ZlZC4KPj4K
Pj4gSW4gYWRkaXRpb24sIHByb3BhZ2F0ZSBhbGwgcmVhbCBlcnJvcnMgdXBzdHJlYW0sIGluc3Rl
YWQgb2YgaWdub3JpbmcKPj4gdGhlbS4KPiAKPiBJIHdvdWxkIGxpa2UgdG8gaGVhciBSb2IncyBv
cGluaW9uIG9uIHRoaXMuIEluIGQwMmRmZDRjZWIyZTlmMzQgUm9iCj4gcHVycG9zZWx5IGNoYW5n
ZWQgdGhlIGZ1bmN0aW9uIHRvIGlnbm9yZSBlcnJvcnMgb3RoZXIgdGhhbiBFUFJPQkVfREVGRVIu
Cj4gCj4gUmlnaHQgbm93LCBJIGRvIG5vdCBzZWUgYSByZWFzb24gbm90IHRvIHByb3BhZ2F0ZSB0
aGUgb3RoZXIgZXJyb3JzLCBzbwo+IEnCoGFtIGluIGZhdm9yIG9mIHRoaXMgcm9sbCBiYWNrLiBC
dXQgbWF5YmUgd2UgYXJlIG1pc3Npbmcgc29tZXRoaW5nPwo+IAo+IE90aGVyd2lzZSwgdGhlIHBh
dGNoIGxvb2tzIGdvb2QgdG8gbWUuIE5pY2UgaW1wcm92ZW1lbnQgb3ZlciB0aGUgdjEuIEkKPiB3
aWxsIHdhaXQgZm9yIFJvYidzIGNvbW1lbnQgdG8gZ2l2ZSBteSByZXZpZXcgdGFnLgoKT25lIHdl
ZWsgaGFzIGdvbmUsIGFuZCB3ZSBkaWQgbm90IGhlYXIgYmFjay4gU28gbGV0J3MgYXNzdW1lIGl0
IGlzIE9LLgoKPj4gRml4ZXM6IGQwMmRmZDRjZWIyZTlmMzQgKCJwaHk6IGNhbi10cmFuc2NlaXZl
cjogRHJvcCB1bm5lY2Vzc2FyeSAibXV4LXN0YXRlcyIgcHJvcGVydHkgcHJlc2VuY2UgY2hlY2si
KQo+PiBTaWduZWQtb2ZmLWJ5OiBHZWVydCBVeXR0ZXJob2V2ZW4gPGdlZXJ0K3JlbmVzYXNAZ2xp
ZGVyLmJlPgoKUmV2aWV3ZWQtYnk6IFZpbmNlbnQgTWFpbGhvbCA8bWFpbGhvbC52aW5jZW50QHdh
bmFkb28uZnI+CgooLi4uKQoKWW91cnMgc2luY2VyZWx5LApWaW5jZW50IE1haWxob2wKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
