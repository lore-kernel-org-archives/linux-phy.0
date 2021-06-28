Return-Path: <SRS0=N+1x=LW=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F233EC48BC2
	for <linux-phy@archiver.kernel.org>; Mon, 28 Jun 2021 01:06:40 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A6BFB619C6
	for <linux-phy@archiver.kernel.org>; Mon, 28 Jun 2021 01:06:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A6BFB619C6
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=flygoat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PYFssn4QVpEHdIW94swqJtCGQzuvYMiY7ohkNpGFMBU=; b=g8OAhNBuBxkk2aYhMX8aKwTYbT
	0mCZVEgMifr3EtKXqi1xEcjjO5mRb9CtNAeAQv8e4XEwccA/3CQH5MVNgNFL01N2NrPukV66Z6JbY
	EDghKCz8Pb45+m9zdBjaTv05/M86aLATds6l7n/Q//AcFp8sRJ4XS1T/XW6w90Z3NwL3zxWlm1wbN
	sTRtHpIPgLkkWNfJ+OVTAo8zHfyu+iDdPjRgaXjsnsbhHgcWL0eU9xU+nfTz2HQz+bvAAG0J/SB09
	plfaabgTM/4Le9nf9DbN5W5QLOVC9dPckMH6Tkrelv1XLbvV+m1WRx+1XaBYzvSoJSglylzPbKxHY
	k0KxQVAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxfjU-006NaI-6X; Mon, 28 Jun 2021 01:06:40 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxfjR-006NZW-AU
 for linux-phy@lists.infradead.org; Mon, 28 Jun 2021 01:06:38 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id DF2062B009B0;
 Sun, 27 Jun 2021 21:06:30 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Sun, 27 Jun 2021 21:06:31 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flygoat.com; h=
 subject:to:cc:references:from:message-id:date:mime-version
 :in-reply-to:content-type:content-transfer-encoding; s=fm2; bh=P
 RaswZ5qlI2jc+vhwIg6RbL8e19UYG11rnfWNNUN5Ww=; b=rtQqygzsVWIKTM2Wz
 nbuW2cVd4BkWO+d+ygZx1wQmuHM40AM87yZ+im/mRkIP3Qqb3Qi7ZruE1VpFzflN
 tOqNi3bkH4BaHixbYOprtxkwU3hPRxJX2S0rVlw0MiAVMKvfWWMVWEzk+xorXqln
 w+JaXqSm4A2yOTu0LWZY+kjUrM1wGmxPtlNXREp9LoXRHW9qK2MfYAoeVYkccKyf
 PoL81hG4QuWSjAk6xmx/j3MBOvMY9NRXa9dkjr4pw7hOnQ4riGsReDEMLv8NG9iX
 D31qD545RTGEK2wFlGXXQlOGpExl88oh2jOJ/ro0WiUCF5n8r2TIpMmJ7P8q4juh
 DQVsw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:from:in-reply-to:message-id:mime-version:references
 :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm3; bh=PRaswZ5qlI2jc+vhwIg6RbL8e19UYG11rnfWNNUN5
 Ww=; b=YhAaq37YXqoddC48WCc2HRI74KjeXC9Aorc+wM7n7h+r1EARlSTPsHc9q
 nRzg1HiB9ZYD7YRTwqP3Hb7j9vMGqpufBykHcZBym5vqS47w7GBYIf5EeCdNOdH9
 LWzcHtoOm+usjGvfGGD523HUU912K15h2pM3AKqp6SUextoSrGe/jC0HPAPruBD9
 YsKIfpeWTpZe9VSLbLvvHREF1lUa8rxdv398bjGDUGt9Hp06tgatYorngH3kqznQ
 28GL5FNR8QGXr4qLA24oH3CSxkN0shRYUFwXQHFXzavv5J0c1r0zZdPpEAgRmuZ2
 SZrqjSjq/jzvIDwRCrkWUfrU3Dj1Q==
X-ME-Sender: <xms:lSDZYGvriqTvXG3CrplKdvcKu2uyywvAHxb-f3Uhk91xlUL6AK1vTw>
 <xme:lSDZYLd6QvdmJW5F4Ldy5_n3_EBQTVqxSXFCyzDkuNFAEH2uH0efUahRuNbOA5eun
 zO4Ueu19nDheelbiPQ>
X-ME-Received: <xmr:lSDZYBwCo8uePpYDkaG2R4OzF_sDQwA6eHFYi5hPAq9qgQD-gabLvwBrA1PKoHoG0qwpQ8j2QoZ2C4h_g-da_A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrfeehfedggedtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepuffvfhfhkffffgggjggtgfesthekredttdefjeenucfhrhhomheplfhirgig
 uhhnucgjrghnghcuoehjihgrgihunhdrhigrnhhgsehflhihghhorghtrdgtohhmqeenuc
 ggtffrrghtthgvrhhnpeeihffghfeikedugeejvefgffevgeevgeehfffhudeiieffffev
 ffeugeevfefgfeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
 hrohhmpehjihgrgihunhdrhigrnhhgsehflhihghhorghtrdgtohhm
X-ME-Proxy: <xmx:lSDZYBN6AKcIptkpjKqi-N-KsPj7ml_X6Oq02BikkZH0AgSRo1OcTg>
 <xmx:lSDZYG_QqMifRz3vMX8KD5A5ROHC4C3j_kypzwmU6cSX-W3JuvWy9w>
 <xmx:lSDZYJUVXwTZBVtyASTpLZw5BseZlJyHUWbb8A8Y3WgtYhl0oRC8ow>
 <xmx:liDZYH1cMOcmwy2L0U6wPT_c8VAsjp0DaKUTxZ9DaAlz5S7MBiZPZSpdaDg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 27 Jun 2021 21:06:25 -0400 (EDT)
Subject: Re: [PATCH 3/9] clk: pistachio: Make it selectable for generic MIPS
 kernel
To: Stephen Boyd <sboyd@kernel.org>, linux-mips@vger.kernel.org
Cc: tsbogend@alpha.franken.de, mturquette@baylibre.com,
 daniel.lezcano@linaro.org, linus.walleij@linaro.org, vkoul@kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20210627045631.2882-1-jiaxun.yang@flygoat.com>
 <20210627045631.2882-4-jiaxun.yang@flygoat.com>
 <162483712923.3259633.15640278024587375157@swboyd.mtv.corp.google.com>
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
Message-ID: <45a330c0-7b4d-d569-51eb-3eac8f53512a@flygoat.com>
Date: Mon, 28 Jun 2021 09:06:23 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <162483712923.3259633.15640278024587375157@swboyd.mtv.corp.google.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210627_180637_426112_2A646729 
X-CRM114-Status: GOOD (  11.86  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

CuWcqCAyMDIxLzYvMjgg5LiK5Y2INzozOCwgU3RlcGhlbiBCb3lkIOWGmemBkzoKPiBRdW90aW5n
IEppYXh1biBZYW5nICgyMDIxLTA2LTI2IDIxOjU2OjI1KQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9jbGsvcGlzdGFjaGlvL0tjb25maWcgYi9kcml2ZXJzL2Nsay9waXN0YWNoaW8vS2NvbmZpZwo+
PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+PiBpbmRleCAwMDAwMDAwMDAwMDAuLmVmYjdhN2Y0NTI1
OQo+PiAtLS0gL2Rldi9udWxsCj4+ICsrKyBiL2RyaXZlcnMvY2xrL3Bpc3RhY2hpby9LY29uZmln
Cj4+IEBAIC0wLDAgKzEsOCBAQAo+PiArIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIu
MAo+PiArCj4+ICtjb25maWcgQ09NTU9OX0NMS19QSVNUQUNISU8KPj4gKyAgICAgICBib29sICJT
dXBwb3J0IGZvciBJTUcgUGlzdGFjaGlvIFNvQyBjbG9jayBjb250cm9sbGVycyIKPj4gKyAgICAg
ICBkZXBlbmRzIG9uIE1JUFMKPiBJcyBhbnl0aGluZyBNSVBTIHNwZWNpZmljPyBPciBjYW4gdGhp
cyBiZQo+Cj4gCWRlcGVuZHMgb24gTUlQUyB8fCBDT01QSUxFX1RFU1QKCk5vIHRoZXJlIGFyZSBu
b3RoaW5nIE1JUFMgc3BlY2lmaWMuCgpXaWxsIGZpeCBpbiBuZXh0IHJldmlzaW9uLgoKVGhhbmtz
LgoKLSBKaWF4dW4KCj4KPgo+PiArICAgICAgIGhlbHAKPj4gKyAgICAgICAgIFN1cHBvcnQgZm9y
IHRoZSBJTUcgUGlzdGFjaGlvIFNvQyBjbG9jayBjb250cm9sbGVyLgo+PiArICAgICAgICAgU2F5
IFkgaWYgeW91IHdhbnQgdG8gaW5jbHVkZSBjbG9jayBzdXBwb3J0Lgo+PiBcIE5vIG5ld2xpbmUg
YXQgZW5kIG9mIGZpbGUKPj4gLS0gCj4+IDIuMzIuMAo+PgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
