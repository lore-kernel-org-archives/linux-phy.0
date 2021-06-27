Return-Path: <SRS0=Q81u=LV=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2FB9CC48BC2
	for <linux-phy@archiver.kernel.org>; Sun, 27 Jun 2021 05:18:09 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BE8BF61421
	for <linux-phy@archiver.kernel.org>; Sun, 27 Jun 2021 05:18:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BE8BF61421
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=flygoat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=axqOhafeOi2kTQYaG3WrrCNxzceTRQsY7DlBCvj38TE=; b=c+JDrs1OUdQ7+Vaxc0wDKrDfBA
	jqz6G7XVCk4oJjgt92yOFvTKP91w45RwMxEhY3e+JIQHTlMI7RwaLMBVKY5L/1oOPLGnr2H4S5RQs
	vb+6ENPt7O6xd812yC45+0+B+wJ/cFoCrNR/3I08cjsxflblL8FZqDfaH9cC8mCDUO4uOBZY4Mk3c
	9xn4LggigazUcJHlO6t8Xj4QwBM+JcBIrLqARVkKG2PRtOspp5vDftIvcMoymhMpAse/nWCTfD9AD
	cbIKBvRlu2g9ASmg1aYrNY1ZcE8SnTXVADvgHoNhbEQRCP+ukhyS1/FA/YshXgNq2MpRC22eAB9j1
	YWwQsuhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxNBI-0058pe-5Z; Sun, 27 Jun 2021 05:18:08 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxNBF-0058pJ-KP
 for linux-phy@lists.infradead.org; Sun, 27 Jun 2021 05:18:06 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailnew.nyi.internal (Postfix) with ESMTP id A133D58079F;
 Sun, 27 Jun 2021 01:18:04 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute1.internal (MEProxy); Sun, 27 Jun 2021 01:18:04 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flygoat.com; h=
 subject:to:cc:references:from:message-id:date:mime-version
 :in-reply-to:content-type:content-transfer-encoding; s=fm2; bh=G
 wO9YFcvq0p05jwynGkzc5BMfPPFWUI5rALwMlauuEw=; b=Yw7RWUYJ3xyfUlXsN
 1LD6kZWfY09nctzLxkZ+FL9DfnpOfquMcw8pfphWog+v3MqssQw8panEhZa+Vxi7
 AUr1VLfoYJThEKCya1a7n0daxYRQPQR73lMqv00LSHh07t/xfrXImA5Hjuo27HvX
 qpqQOv3WiSU62mnH8trLtrvQ2ri/9xb7ZBTUnQqQzyG7irU1tvQIQh1f19ePi+iG
 /lp11NhTnC9wca5C3wuZ58tre/xCREcd7p6NhXoAjnBRbTnuEF4LX9fb7gSio+XT
 2BQhPJ30T03b/LRpKaQLTSkRH8b453A0b9M+l3l7ShTElafFo5ixOWL8EXHexhKx
 432SA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:from:in-reply-to:message-id:mime-version:references
 :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm3; bh=GwO9YFcvq0p05jwynGkzc5BMfPPFWUI5rALwMlauu
 Ew=; b=YLbIOUbXLZc8AqFxAto8j2nVl2G2XqPzrYdxSxjejwDkfP5i1xpEBhkpq
 pF/2RlVS6Mf5GvSdAfU5MSnfai+iYRGtXSNT3hISzkDNbrPQaxHQ5236aC6kpyT6
 /uxNziQMhUC2H2lru/k3Z/4BOIsK0iFmvOIDntfej5kocRJm9afLvvze0XRWoxtq
 /eq4jerAC4AfkHhYQrJan7IRemJC90h0D0Y/6IkxLy58lfLwcwx81wcNT4pMuSCs
 EK4zqH5KRQRXd/YAKX4/rVkteaWiG5A8PEegB8lrAW7hv63QKVppdCbKxSdKaGma
 KMOzmFqMJ7KLi4PBpPJxGmOu1DAOA==
X-ME-Sender: <xms:CwrYYDMOT2sTktKm0aC02IhcXzXeN3Iy9ssRWkmTPRFXLVskaouyVA>
 <xme:CwrYYN_5ZFAgGOWh39fTTi-P94zdLACrqxI7BAFEp68HsGoXU_QR2P7KeZLj9nmiI
 yGbX7E2mJ4kB_hwyzQ>
X-ME-Received: <xmr:CwrYYCQWcaabpvPHMnqg5Jv8bn4gmfm_REPH9u5nYjDgCZy5beAtcn56qTvUdDlDnaEOLA_EQhHwzdIVIrCT3w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrfeehuddgjeelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefuvfhfhffkffgfgggjtgfgsehtke
 ertddtfeftnecuhfhrohhmpeflihgrgihunhcujggrnhhguceojhhirgiguhhnrdihrghn
 ghesfhhlhihgohgrthdrtghomheqnecuggftrfgrthhtvghrnhepfeeludeitddvkeffge
 fgueekjeegfeefteelgffhkeffueetieejgeehhfeuffdvnecuvehluhhsthgvrhfuihii
 vgeptdenucfrrghrrghmpehmrghilhhfrhhomhepjhhirgiguhhnrdihrghnghesfhhlhi
 hgohgrthdrtghomh
X-ME-Proxy: <xmx:CwrYYHsxHl7xZJ4Ynn3UMgxpmKQ2bSFGC2E2-8KzSQmGot9T8ZT8Og>
 <xmx:CwrYYLdX97Zxjxt_Dw7abTEpnrpI9wnPDebZh83jdhfr8rUgalReYQ>
 <xmx:CwrYYD1fuS8X7tTSjfrUqmIgNFpI5GRh2paFbQOZh0Lca8DdSJVYLg>
 <xmx:DArYYP6m3sr-N0PUK88ENcRstBYAnVcmV8fnnJVS1eqLdx_EfHBxrg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 27 Jun 2021 01:17:59 -0400 (EDT)
Subject: Re: [PATCH 9/9] MIPS: Make a alias for pistachio_defconfig
To: linux-mips@vger.kernel.org
Cc: tsbogend@alpha.franken.de, mturquette@baylibre.com,
 daniel.lezcano@linaro.org, linus.walleij@linaro.org, vkoul@kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20210627045631.2882-1-jiaxun.yang@flygoat.com>
 <20210627045631.2882-10-jiaxun.yang@flygoat.com>
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
Message-ID: <1db3e2dd-5874-e1b2-d9b1-da08844edaeb@flygoat.com>
Date: Sun, 27 Jun 2021 13:17:57 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210627045631.2882-10-jiaxun.yang@flygoat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210626_221805_786614_152F67A3 
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="gbk"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

CtTaIDIwMjEvNi8yNyDPws7nMTI6NTYsIEppYXh1biBZYW5nINC0tcA6Cj4gRm9yIHRob3NlIHdo
byBtaXNzIHRoZSBvbGQgZGVmY29uZmlnLCBtYWtlIGEgYWxpYXMgdG8gZ2VuZXJpYwo+IGtlcm5l
bC4KPgo+IFNpZ25lZC1vZmYtYnk6IEppYXh1biBZYW5nIDxqaWF4dW4ueWFuZ0BmbHlnb2F0LmNv
bT4KPiAtLS0KPiAgIGFyY2gvbWlwcy9NYWtlZmlsZSB8IDMgKysrCj4gICAxIGZpbGUgY2hhbmdl
ZCwgMyBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvYXJjaC9taXBzL01ha2VmaWxlIGIv
YXJjaC9taXBzL01ha2VmaWxlCj4gaW5kZXggMjU4MjM0YzM1YTA5Li45NzEzZjhkMmZjOTkgMTAw
NjQ0Cj4gLS0tIGEvYXJjaC9taXBzL01ha2VmaWxlCj4gKysrIGIvYXJjaC9taXBzL01ha2VmaWxl
Cj4gQEAgLTU2Myw2ICs1NjMsOSBAQCBzZWFkM21pY3JvX2RlZmNvbmZpZy15CQk6PSBtaWNybzMy
cjJlbF9kZWZjb25maWcgQk9BUkRTPXNlYWQtMwo+ICAgbGVnYWN5X2RlZmNvbmZpZ3MJCSs9IHhp
bGZwZ2FfZGVmY29uZmlnCj4gICB4aWxmcGdhX2RlZmNvbmZpZy15CQk6PSAzMnIyZWxfZGVmY29u
ZmlnIEJPQVJEUz14aWxmcGdhCj4gICAKPiArbGVnYWN5X2RlZmNvbmZpZ3MJCSs9IHBpc3RhY2hp
b19kZWZjb25maWcKPiAreGlsZnBnYV9kZWZjb25maWcteQkJOj0gMzJyMmVsX2RlZmNvbmZpZyBC
T0FSRFM9bWFyZHVrCgpvb3BzLi4uIFR5cG8uLi4KCldpbGwgZml4IGluIG5leHQgcmV2ZXJzaW9u
LgoKVGhhbmtzLgoKCi0gSmlheHVuCgo+ICsKPiAgIC5QSE9OWTogJChsZWdhY3lfZGVmY29uZmln
cykKPiAgICQobGVnYWN5X2RlZmNvbmZpZ3MpOgo+ICAgCSQoUSkkKE1BS0UpIC1mICQoc3JjdHJl
ZSkvTWFrZWZpbGUgJCgkQC15KQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcGh5Cg==
