Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B4A0606A326
	for <linux-phy@archiver.kernel.org>; Thu, 22 Oct 2026 16:13:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ZrVhq6w5;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=atKhmJaJ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=jWKkHn6g0J5tohyFQTl1HAQQLM6ipT5HkHLAyU45nE4=; b=ZrVhq6w55fL6Lsd/aXl3P/tgEq
	O4QTpRtsOeVy4hOV+XMmXqCtmL9X+b9bfWrCaOJgC+MFyT39cFmPWXZzH0Cun2LJOjkA9SYvZQqBv
	flLnKgWs1xMxw6fr+CQde6ivVntQ7xaX6J0kgpH5t4FG1p6XmGVf5haZ8ufRXBNURjDkO6L5+JtlC
	OepNLdDUnMP0K2bVAlscRQrGa9rL+wvtCl0JXu5N3GuTtjmNxI30EkZKyHSjGc9xmIzeLZYk6Np9A
	6n5GieGoW/jRj9NsnOjbP+YLSb/BSR0+/z5eT/IiUYvc45z1nTuK08E4sfz9Nphw/ulF/vwD7DsTU
	TFH/8SIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJvPm-0000000ET6y-3pqs;
	Thu, 22 Oct 2026 16:13:14 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJvPl-0000000ET6p-30Jv
	for linux-phy@lists.infradead.org;
	Thu, 22 Oct 2026 16:13:13 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 7A58543ECA;
	Thu, 22 Oct 2026 16:13:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 802DB1F01829;
	Thu, 22 Oct 2026 16:13:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792685593;
	bh=XDz/lwya9jMSrhLocsFPNFuLuLQjmn2ktvow5ko6z6U=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=atKhmJaJ+qyln1K9yWxChooXgOD/sgxzLCNn5O0n1f3qUkuA3tZaNa4WtNeVV3W0W
	 Xyp/QsGPxkv6SI0oBPBabOpAYfNJdIxdq4/t9gizrOmBVjJFuEBqlr3VsPIZp7aGuf
	 ZmKhvkSbtACgxqqltjjX6vb0h+6ol+kpTcZcrxC+L8TZxfKVk4UH/Sm8UiZNekba7t
	 pov9KL/nD+hGTbafBYnuF6ePMIWKTDZHzFR/PnAPRkzGYcP/EnJyvqxuQ2AmBFXLy8
	 fyvKbT6W7gC+kCMYqjJFPBqEomBfRrome7BjbkBdft1u6P20rfA68XxnZ+fzdinzFP
	 /YNjibrTG3G8A==
Message-ID: <sashiko-outbox-181778@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 14/27] dt-bindings: net: rockchip-dwmac: Add RK3572
To: "Cunhao Lu" <1579567540@qq.com>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org, mfd@lists.linux.dev, linux-gpio@vger.kernel.org, linux-serial@vger.kernel.org, linux-phy@lists.infradead.org, linux-usb@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, lee@kernel.org
In-Reply-To: <20261022-add-board-ok3572-c-v1-14-0b0fd85a31ee@qq.com>
References: <20261022-add-board-ok3572-c-v1-0-0b0fd85a31ee@qq.com>
 <20261022-add-board-ok3572-c-v1-14-0b0fd85a31ee@qq.com>
Date: Thu, 22 Oct 2026 16:13:12 +0000
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gZHQtYmluZGluZ3M6IG5l
dDogcm9ja2NoaXAscmszNTcyLWdtYWMgbWlzc2luZyBmcm9tIHNucHMsZHdtYWMueWFtbAotLQoK
Y29tbWl0IGQ0OWUxMTZlZWJmOGE4ODBiMjkwNWI3NjkzNmU3MGQ1N2M3NGQ2OGUKQXV0aG9yOiBD
dW5oYW8gTHUgPDE1Nzk1Njc1NDBAcXEuY29tPgoKZHQtYmluZGluZ3M6IG5ldDogcm9ja2NoaXAt
ZHdtYWM6IEFkZCBSSzM1NzIKClRoaXMgY29tbWl0IGFkZHMgdGhlIHJvY2tjaGlwLHJrMzU3Mi1n
bWFjIGNvbXBhdGlibGUgc3RyaW5nIHdpdGggdGhlCnNucHMsZHdtYWMtNC4yMGEgZmFsbGJhY2sg
dG8gdGhlIFJvY2tjaGlwIGR3bWFjIGRldmljZSB0cmVlIGJpbmRpbmcKc2NoZW1hLgoKPiBkaWZm
IC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9yb2NrY2hpcC1k
d21hYy55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9yb2NrY2hp
cC1kd21hYy55YW1sCj4gaW5kZXggODBjMjUyODQ1MzQ5Yy4uODNiMGE4MWI0ZjNiNyAxMDA2NDQK
PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L3JvY2tjaGlwLWR3
bWFjLnlhbWwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L3Jv
Y2tjaGlwLWR3bWFjLnlhbWwKClsgLi4uIF0KCj4gQEAgLTU0LDYgKzU1LDcgQEAgcHJvcGVydGll
czoKPiAgICAgICAgICAgICAgICAtIHJvY2tjaGlwLHJrMzUwNi1nbWFjCj4gICAgICAgICAgICAg
ICAgLSByb2NrY2hpcCxyazM1MjgtZ21hYwo+ICAgICAgICAgICAgICAgIC0gcm9ja2NoaXAscmsz
NTY4LWdtYWMKPiArICAgICAgICAgICAgICAtIHJvY2tjaGlwLHJrMzU3Mi1nbWFjCj4gICAgICAg
ICAgICAgICAgLSByb2NrY2hpcCxyazM1NzYtZ21hYwo+ICAgICAgICAgICAgICAgIC0gcm9ja2No
aXAscmszNTg4LWdtYWMKPiAgICAgICAgICAgICAgICAtIHJvY2tjaGlwLHJ2MTEyNi1nbWFjCgpb
U2V2ZXJpdHk6IExvd10KU2hvdWxkIHJvY2tjaGlwLHJrMzU3Mi1nbWFjIGFsc28gYmUgYWRkZWQg
dG8gcHJvcGVydGllczpjb21wYXRpYmxlIGluCkRvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9uZXQvc25wcyxkd21hYy55YW1sPwoKRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL25ldC9yb2NrY2hpcC1kd21hYy55YW1sIHJlZmVyZW5jZXMKc25wcyxkd21hYy55YW1sIyB1
bmRlciBhbGxPZjoKCiAgYWxsT2Y6CiAgICAtICRyZWY6IHNucHMsZHdtYWMueWFtbCMKCkluIERv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvc25wcyxkd21hYy55YW1sLApwcm9w
ZXJ0aWVzOmNvbXBhdGlibGUgbGlzdHMgYWxsIFJvY2tjaGlwIGdtYWMgY29tcGF0aWJsZXMgZnJv
bQpyb2NrY2hpcC1kd21hYy55YW1sIHNvIHRoYXQgc2NoZW1hcyBpbmNsdWRpbmcgaXQgY2FuIHZh
bGlkYXRlIHByb3Blcmx5OgoKICBwcm9wZXJ0aWVzOgoKICAgICMgV2UgbmVlZCB0byBpbmNsdWRl
IGFsbCB0aGUgY29tcGF0aWJsZXMgZnJvbSBzY2hlbWFzIHRoYXQgd2lsbAogICAgIyBpbmNsdWRl
IHRoYXQgc2NoZW1hcywgb3RoZXJ3aXNlIGNvbXBhdGlibGUgd29uJ3QgdmFsaWRhdGUgZm9yCiAg
ICAjIHRob3NlLgogICAgY29tcGF0aWJsZToKICAgICAgY29udGFpbnM6CiAgICAgICAgZW51bToK
ICAgICAgICAgIC4uLgogICAgICAgICAgLSByb2NrY2hpcCxyazM1MDYtZ21hYwogICAgICAgICAg
LSByb2NrY2hpcCxyazM1MjgtZ21hYwogICAgICAgICAgLSByb2NrY2hpcCxyazM1NjgtZ21hYwog
ICAgICAgICAgLSByb2NrY2hpcCxyazM1NzYtZ21hYwogICAgICAgICAgLSByb2NrY2hpcCxyazM1
ODgtZ21hYwogICAgICAgICAgLSByb2NrY2hpcCxydjExMDgtZ21hYwogICAgICAgICAgLSByb2Nr
Y2hpcCxydjExMjYtZ21hYwoKUHJpb3IgY29tbWl0cyBhZGRpbmcgb3Igc3luY2luZyBSb2NrY2hp
cCBnbWFjIGNvbXBhdGlibGVzIChzdWNoIGFzIGNvbW1pdAo0YTY2N2JlYzc0YjMgZm9yIHJrMzUw
NiwgY29tbWl0IDI5OWUyYWVmYjE1OSBmb3IgcmszNTc2LCBhbmQgY29tbWl0CmU3NzRjOTFkY2E0
NSkgdXBkYXRlZCBzbnBzLGR3bWFjLnlhbWwgYWxvbmdzaWRlIHJvY2tjaGlwLWR3bWFjLnlhbWws
CndoZXJlYXMgb21pdHRpbmcgcm9ja2NoaXAscmszNTcyLWdtYWMgbGVhdmVzIHRoZSB0d28gc2No
ZW1hcyBvdXQgb2Ygc3luYy4KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hp
a28uZGV2LyMvcGF0Y2hzZXQvMjAyNjEwMjItYWRkLWJvYXJkLW9rMzU3Mi1jLXYxLTAtMGIwZmQ4
NWEzMWVlQHFxLmNvbT9wYXJ0PTE0CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK
