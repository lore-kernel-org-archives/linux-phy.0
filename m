Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FAA3C433FE
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 08:44:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=goMMu3yVX/iJxWqMAcRMxuFPNX7BMQcm+SRIVaoF3+Y=; b=V+6tz9WcDG0hKZ
	rxw7hpLRwYTsgsKOMq+Dr6NZqmT9j3RTvoALbfL7IaTTTu5+Ce3J3pU9Az2UdGS7dRiWjBV3uIVf/
	AZ30oxRPa5cP7IteloZY12wjRGZec6zG3McAhkSGQ9jHnNYQmn6hjgdAAPHFSM9sPL7PJsQ/4CZxZ
	KTEij72C8CqidCjg5R76vnmY+n3xGUR/MuydVoV0dLlz1r6gliX8e4I2LFtWYdAjVGU5URQICFFMe
	4biiBHe98pGDE9P7i2RB6Bf4sAJBNX5Vc1VIuKM5cTcJ0mN9kynNWXiAqaZ/cxlAy2pWa2fcXxDGT
	pJnjWrIe3oiHJgNGECcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiXMD-007OhH-UZ; Wed, 12 Oct 2022 08:44:53 +0000
Received: from wout3-smtp.messagingengine.com ([64.147.123.19])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiXLy-007OcR-Lt; Wed, 12 Oct 2022 08:44:40 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.west.internal (Postfix) with ESMTP id D346A3200B1D;
	Wed, 12 Oct 2022 04:44:36 -0400 (EDT)
Received: from imap51 ([10.202.2.101])
  by compute3.internal (MEProxy); Wed, 12 Oct 2022 04:44:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arndb.de; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1665564275; x=
	1665650675; bh=0o82D+Vbr1Qqh8x9aEShWRywyoLoGwve0G5fih60HmI=; b=Z
	XYDKeC5/DveUPpoOMVoz4/DdJeyl3m9weqgTrXfyQqwWvzYaAalORZR0wMUfauVm
	USKsoTbCslmUlBAf5XKvoSkIhrqkHUKn9gKekULLRrxID3DBS5ccxKFFDBILr1et
	dX5NHk+inqoJHJpifN0CzWqPwftdqF9THcmcBEFYYcBnl1S5cJZEO8NLlmtP1+lk
	ZeYN5va3qjZCDyPWKhr21ftBm/DHvqFaoH2X/Rd/UrgduswGAGyUKAdJ0Vc+9qs1
	kc+x2L+4b30Y/RPRDl5DlAjlLT7N0m77LIBehKY6hugHfbqONfqHtsJi2bwH47ey
	KoPOeGtLHUPVqb+GfWezg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1665564275; x=
	1665650675; bh=0o82D+Vbr1Qqh8x9aEShWRywyoLoGwve0G5fih60HmI=; b=I
	fd6FpfmZQJ/ksNwvJQyxRNn6SC59iUAGrEXcNKYMClJKz7W1Z+mxFscdTkhJjlFT
	MF0MBsvtxu2XA4kTEI1px5oZKSKueQtGs6tQ1LyRrdaGm7uxuPfJbqinecpjy8WG
	2enjQVu2xOxybglwpvpV5yIcnnUmIluzjctMSiofN1bH9pYoMfWQWYb3IcH6r6iM
	5jSErtaiKUZAO6AiH7GLRAtrK3hyExTY5v5joHPfi2kekxejuZUY2d/P/25n6Qxz
	UJwO/nNHaZRDd7o8XgWcLbmKEQ0pShU7Bz+n3Err89Sj3xMY/DRbC4ZcsyiVUAD4
	xjNGrtQum+JtiemLcFvhQ==
X-ME-Sender: <xms:cn5GYwiS-Lu3wZlU07-So25sNnbspw80O20Rpqhkwb-BUEKGjIWPhg>
    <xme:cn5GY5B5XzOgMcTZoI-5Sf7PCFtaihj6jUBBILKZBPrNUhXzeEfnI-iH3CH61ldck
    sselZSWuf-Mg303vF0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrfeejkedgtdejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepofgfggfkjghffffhvfevufgtgfesthhqredtreerjeenucfhrhhomhepfdet
    rhhnugcuuegvrhhgmhgrnhhnfdcuoegrrhhnugesrghrnhgusgdruggvqeenucggtffrrg
    htthgvrhhnpefgkeeuleegieeghfduudeltdekfeffjeeuleehleefudettddtgfevueef
    feeigeenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivg
    eptdenucfrrghrrghmpehmrghilhhfrhhomheprghrnhgusegrrhhnuggsrdguvg
X-ME-Proxy: <xmx:cn5GY4F6_o7WHad7WyUmypGGKpD_vD0KkfNIBdvEFDLW02hBxmxJJw>
    <xmx:cn5GYxR7OZYcUuleHSsy1KxWC8O2IELM0B8vwjg077WUkbEyySyKhQ>
    <xmx:cn5GY9wjwaVU9py0PKfgtkocDW9kcvxaSGy4lQKfkVEB0mreU8mmVg>
    <xmx:c35GYwrdS9nADqpBxus3AqE0rdPeKImSwUA7AKKztmYEwewsiQPD9Q>
Feedback-ID: i56a14606:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id E64ADB60086; Wed, 12 Oct 2022 04:44:34 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.7.0-alpha0-1047-g9e4af4ada4-fm-20221005.001-g9e4af4ad
Mime-Version: 1.0
Message-Id: <970b59a5-9fcb-494c-a07e-1443bdd5072c@app.fastmail.com>
In-Reply-To: <695a13341db63965a22799dd78698751ed95448c.camel@icenowy.me>
References: <20221012055602.1544944-1-uwu@icenowy.me>
 <20221012055602.1544944-2-uwu@icenowy.me>
 <60a2cb70-bde4-4423-9a54-7abc1ba466f8@app.fastmail.com>
 <695a13341db63965a22799dd78698751ed95448c.camel@icenowy.me>
Date: Wed, 12 Oct 2022 10:44:14 +0200
From: "Arnd Bergmann" <arnd@arndb.de>
To: "Icenowy Zheng" <uwu@icenowy.me>, "Rob Herring" <robh+dt@kernel.org>,
 "Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
 "Chen-Yu Tsai" <wens@csie.org>, "Jernej Skrabec" <jernej.skrabec@gmail.com>,
 "Samuel Holland" <samuel@sholland.org>,
 "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>,
 "Andre Przywara" <andre.przywara@arm.com>
Cc: soc@kernel.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v2 01/10] mailmap: update Icenowy Zheng's mail address
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_014438_757895_AFD7F687 
X-CRM114-Status: GOOD (  16.83  )
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

T24gV2VkLCBPY3QgMTIsIDIwMjIsIGF0IDEwOjM1IEFNLCBJY2Vub3d5IFpoZW5nIHdyb3RlOgo+
IOWcqCAyMDIyLTEwLTEy5pif5pyf5LiJ55qEIDEwOjMxICswMjAw77yMQXJuZCBCZXJnbWFubuWG
memBk++8mgo+PiBPbiBXZWQsIE9jdCAxMiwgMjAyMiwgYXQgNzo1NSBBTSwgSWNlbm93eSBaaGVu
ZyB3cm90ZToKPj4gCj4+IEkgZG9uJ3Qgc2VlIGEgcGF0Y2ggZm9yIHVwZGF0aW5nIHRoZSBNQUlO
VEFJTkVSUyBmaWxlIGhlcmUsIGlmIHlvdQo+PiBoYXZlbid0IGFscmVhZHkgc2VudCB0aGF0IGFu
b3RoZXIgd2F5LCB5b3Ugc2hvdWxkIHByb2JhYmx5IGNoYW5nZQo+PiBib3RoIGF0IHRoZSBzYW1l
IHRpbWUuCj4KPiBHb29kIHBvaW50LiBJZiB0aGlzIHBhdGNoc2V0IGlzIGdvaW5nIHRvIGhhdmUg
YSB2MywgSSB3aWxsIGNvbnRhaW4gaXQKPiB0aGVyZTsgb3RoZXJ3aXNlIEkgd2lsbCBpbmRlcGVu
ZGVudGx5IHNlbmQgaXQuCgpPay4gSWYgeW91IG1ha2UgYSBzZXBhcmF0ZSBwYXRjaCBmb3IgdGhl
IG1haW50YWluZXJzIGZpbGUsIGZlZWwKZnJlZSB0byBzZW5kIHRoaXMgdG8gbWUgYXQgc29jQGtl
cm5lbC5vcmcsIEkgY2FuIHRoZW4gcHV0IGl0IGludG8KdGhlIGZpeGVzIGJyYW5jaCBzbyBpdCBt
YWtlcyBpdCBpbnRvIDYuMSwgb3RoZXJ3aXNlIEkgYXNzdW1lIHRoaXMKZ2V0cyBwaWNrZWQgdXAg
dGhyb3VnaCB0aGUgbm9ybWFsIHBhdGggYWxvbmcgd2l0aCB0aGUgcmVzdCBvZiB0aGUKc2VyaWVz
LgoKPj4gQXMgYSBkcml2ZXIgbWFpbnRhaW5lciwgeW91IGNhbiBhbHNvIGFwcGx5IGZvciBhIGtl
cm5lbC5vcmcgYWNjb3VudAo+PiBbaHR0cHM6Ly9rb3JnLmRvY3Mua2VybmVsLm9yZy9hY2NvdW50
cy5odG1sXSBhbmQgdXNlIHRoYXQgZm9yCj4+IHNlbmRpbmcgcGF0Y2hlcyBhbmQgZm9yd2FyZGlu
ZyB0byBhbm90aGVyIGFkZHJlc3MuCj4KPiBXZWxsIEkgYW0gaW4gQ2hpbmEgbm93IGFuZCBub3Qg
c28gZWFzeSB0byBnZXQgbXkgUEdQIGtleSBzaWduZWQuLi4KClJpZ2h0LCB0aGF0IGNhbiBiZSBh
IHByb2JsZW0uIEluIGFuIHVyZ2VudCBjYXNlLCB5b3UgY291bGQgcHJvYmFibHkKZG8gYSB2aWRl
byBtZWV0aW5nIHdpdGggc29tZW9uZSB5b3UndmUgcHJldmlvdXNseSBtZXQgdGhhdCBpcyBhbHJl
YWR5Cm9uIHRoZSBrZXJuZWwga2V5cmluZywgYnV0IHRoYXQgaXMgcGVyaGFwcyBub3Qgd29ydGgg
dGhlIGhhc3NsZQppZiB5b3VyIGN1cnJlbnQgc2V0dXAgb3RoZXJ3aXNlIHdvcmtzIGZpbmUuCgog
ICAgIEFybmQKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXBoeQo=
