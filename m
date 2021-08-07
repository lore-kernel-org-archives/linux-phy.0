Return-Path: <SRS0=z3Ad=M6=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1F3B1C432BE
	for <linux-phy@archiver.kernel.org>; Sat,  7 Aug 2021 03:06:30 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D321161181
	for <linux-phy@archiver.kernel.org>; Sat,  7 Aug 2021 03:06:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D321161181
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=flygoat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0c3oUenajIlWQ2KgndhRaqkp5HoVNOSkE1fnGddW1hs=; b=h7Qdpux2oh/3ujzXnacVBhuXiv
	dGcaAAdk2HGEqiwg+DNWF0Z798sZgDsGzW6TJ033f+GC7MzkW7sM4tvTCFvh6l6DnUvLHbAxq2lqv
	HNIIGDAzcb6M2nMlFksWw/9W8S9rNxDEe/heYVi/l8nwFAeAQjXeWnPJDAvHjUenFV2J23IpJ4DOB
	bNzAWtuT1Cbt/lzQqqfKhHUUsuGrmGzsictHMSyUOKNXaWCZ0Je64rtj4wK/l9kLrvMrZg7PHZWG0
	kUlrDueiaeJWq46xlf8PFmw6apotkvFe6mePKzQBATn5uUhpDqdaZo9K/oSFdReqcPU1DzQAJ+YxP
	UdI1ruAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mCCfN-00E42q-5m; Sat, 07 Aug 2021 03:06:29 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mCCfK-00E40g-4q
 for linux-phy@lists.infradead.org; Sat, 07 Aug 2021 03:06:27 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id DAFAE580BAE;
 Fri,  6 Aug 2021 23:06:20 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Fri, 06 Aug 2021 23:06:20 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flygoat.com; h=
 subject:to:cc:references:from:message-id:date:mime-version
 :in-reply-to:content-type:content-transfer-encoding; s=fm2; bh=l
 5p2iTVXgItyA1T83tXDocQvr6XRmME6ifZj532EGj0=; b=ljQo8afraSpQx/8id
 7CfoqpVwr8D62kyoo+MmGoVRUnd7/sVr39no7ZD9FxDbScJUYMDGilPpIYuoeGRE
 iViJVfbVuJKClJbc70CdAd0Pm4Q44wngl36n8hmh37pPVHmCYNkONNEEQ7ziQpTI
 Fy9yEX42caoqcnF+WaK6B0Roead9Bah5qBw/eBadsFvdbwgNjMrC7ELdaAi4FMho
 tkBEtqbhDgWIUqb6ncXXqWTVd2NkVAUxVZuX6r9u9+xpGcGAi/oLiAa9jx5d4szu
 biGrYy2p3ZizaZ8nInGLezYBQQ3Q4ISWs+MX6SGqe8fP2pYeBUykmOYXfNev2wFI
 9FHmA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:from:in-reply-to:message-id:mime-version:references
 :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm3; bh=l5p2iTVXgItyA1T83tXDocQvr6XRmME6ifZj532EG
 j0=; b=MAEjfhjWn1aASr/8ov+9UITytKgDUETYzwVTeyrVRxcghYJZVFked+5Xe
 DPdIY+uNqUnb8vc+FkoeMalFSigI56uKsJneK1USC4coefv7enUjqiOyFGhPxl7d
 apeOTAlJ5dIIQoBHXPwc1j6I6AFjJo3uNokf56XDguP7vAVP3l6JLqm90KrqWwyP
 ptmBucuPiesKznlC2iBXkZAmwzcas8JIvha/3VA2gv0quYES1Cd09DIqba+p8IGf
 GiD1Uh1nXiIbOZ+yiRaDsatg1A7Keap3+ZV0WqI3AquKY0nHZvZeFOmxuNpAq6+m
 Tp1ThMWa4YcFEc9QmEMkKo6IB55xw==
X-ME-Sender: <xms:q_gNYXcRaawms8kHh0Fhufa6Rg_lbEyhojb71ihthde-eDRrb1yzxQ>
 <xme:q_gNYdN1F2Lg1rO_Me241_I9Ht2Ng7LokAo4dw_6ll_-x7np0wvFRlSKGxrCy-kzH
 kuOtEDq-nI4bBoQkB0>
X-ME-Received: <xmr:q_gNYQgVvWe-sUDHlTZgTw9w7iWEW1ZeG-bI_ko2LxWpOO35NeOKQRRxDzVfmdSMUlDxTUSKh08L6XB7Qpw4a1HmayXH>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrjedvgdeifecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhepuffvfhfhkffffgggjggtgfesthekre
 dttdeftfenucfhrhhomheplfhirgiguhhnucgjrghnghcuoehjihgrgihunhdrhigrnhhg
 sehflhihghhorghtrdgtohhmqeenucggtffrrghtthgvrhhnpeefheefudeugfeugeejtd
 fhuedujeekvddvhfeludfhvdektdeileeikefghfetvdenucffohhmrghinheptddurdho
 rhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepjh
 hirgiguhhnrdihrghnghesfhhlhihgohgrthdrtghomh
X-ME-Proxy: <xmx:q_gNYY-QqqTmDgQMAnUiOh5h1mz-9gtQT3SStK--fIjPSwwq-Y2bOA>
 <xmx:q_gNYTvLl9zeL7EGfx2USxvw7Fxk4rr9vLeUC1e18cTYilUhcqhUZg>
 <xmx:q_gNYXEmg1J142dHKaUE_wPP8ilpddMI_uTDpVNVqWELobG5_IbvDg>
 <xmx:rPgNYRLzUGI2CGhop4vWf8WG9tid9-nQmmjW6SgEsD80URuttonnJA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 6 Aug 2021 23:06:15 -0400 (EDT)
Subject: Re: [PATCH v4 0/9] MIPS: Migrate pistachio to generic kernel
To: linux-mips@vger.kernel.org
Cc: tsbogend@alpha.franken.de, mturquette@baylibre.com,
 daniel.lezcano@linaro.org, linus.walleij@linaro.org, vkoul@kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20210723022543.4095-1-jiaxun.yang@flygoat.com>
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
Message-ID: <1bb80cdf-f7d5-f99f-a4f3-635552df916b@flygoat.com>
Date: Sat, 7 Aug 2021 11:06:12 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210723022543.4095-1-jiaxun.yang@flygoat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210806_200626_299795_68FD2187 
X-CRM114-Status: GOOD (  14.15  )
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

CgrU2iAyMDIxLzcvMjMgyc/O5zEwOjI1LCBKaWF4dW4gWWFuZyDQtLXAOgo+IEknbSBsdWNreSBl
bm91Z2ggdG8gZ2V0IGEgQ3JlYXRvciBDSTQwIGJvYXJkIGZyb20gZHVzdHMuCj4gVGhpcyBwYXRj
aHNldCBtb3ZlIGl0IHRvIGdlcm5laWMga2VybmVsIHRvIHJlZHVjZSBtYWludGVuYW5jZSBidXJk
ZW4uCj4gSXQgaGF2ZSBiZWVuIHRlc3RlZCB3aXRoIFNEIENhcmQgYm9vdC4KCkhpIFRob21hcywK
CkZvciB0aGUgc2VyaWVzLCB0aGUgcGluY3RybCBvbmUgaGF2ZSBiZWVuIGFwcGxpZWQgYnkgc3Vi
c3lzdGVtIAptYWludGFpbmVyIGFuZApyZXN0cyBoYXZlIGJlZW4gYWNrZWQgYnkgc3Vic3lzdGVt
IG1haW50YWluZXJzLCBjb3VsZCB5b3UgcGxlYXNlIGFwcGx5IHRoZW0KdG8gTUlQUyB0cmVlPwoK
VGhhbmtzLgoKLSBKaWF4dW4KCj4KPiAtLQo+IHYyOiBNaW5vciBmaXhlcwo+IHYzOiBUeXBvIGZp
eGVzIGFuZCAwZGF5IHRlc3Rib3Qgd2FybmluZyBmaXggKFRoYW5rcyB0byBTZXJnZWkhKQo+IHY0
OiAwMS5vcmcgd2FybmluZyBmaXgKPgo+IEppYXh1biBZYW5nICg5KToKPiAgICBNSVBTOiBnZW5l
cmljOiBBbGxvdyBnZW5lcmF0aW5nIEZJVCBpbWFnZSBmb3IgTWFyZHVrIGJvYXJkCj4gICAgTUlQ
UzogRFRTOiBQaXN0YWNoaW8gYWRkIG1pc3NpbmcgY3BjIGFuZCBjZG1tCj4gICAgY2xrOiBwaXN0
YWNoaW86IE1ha2UgaXQgc2VsZWN0YWJsZSBmb3IgZ2VuZXJpYyBNSVBTIGtlcm5lbAo+ICAgIGNs
b2Nrc291cmNlL2RyaXZlcnMvcGlzdGFjaGlvOiBNYWtlIGl0IHNlbGVjdGFibGUgZm9yIE1JUFMK
PiAgICBwaHk6IHBpc3RhY2hpby11c2I6IERlcGVuZCBvbiBNSVBTIHx8IENPTVBJTEVfVEVTVAo+
ICAgIHBpbmN0cmw6IHBpc3RhY2hpbzogTWFrZSBpdCBhcyBhbiBvcHRpb24KPiAgICBNSVBTOiBj
b25maWc6IGdlbmVyaWM6IEFkZCBjb25maWcgZm9yIE1hcmR1ayBib2FyZAo+ICAgIE1JUFM6IFJl
dGlyZSBNQUNIX1BJU1RBQ0hJTwo+ICAgIE1JUFM6IE1ha2UgYSBhbGlhcyBmb3IgcGlzdGFjaGlv
X2RlZmNvbmZpZwo+Cj4gICBhcmNoL21pcHMvS2J1aWxkLnBsYXRmb3JtcyAgICAgICAgICAgICAg
ICAgICAgfCAgIDEgLQo+ICAgYXJjaC9taXBzL0tjb25maWcgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHwgIDMwIC0tCj4gICBhcmNoL21pcHMvTWFrZWZpbGUgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgfCAgIDMgKwo+ICAgYXJjaC9taXBzL2Jvb3QvZHRzL01ha2VmaWxlICAgICAgICAg
ICAgICAgICAgIHwgICAyICstCj4gICBhcmNoL21pcHMvYm9vdC9kdHMvaW1nL01ha2VmaWxlICAg
ICAgICAgICAgICAgfCAgIDMgKy0KPiAgIGFyY2gvbWlwcy9ib290L2R0cy9pbWcvcGlzdGFjaGlv
LmR0c2kgICAgICAgICB8ICAxMCArCj4gICBhcmNoL21pcHMvY29uZmlncy9nZW5lcmljL2JvYXJk
LW1hcmR1ay5jb25maWcgfCAgNTMgKysrCj4gICBhcmNoL21pcHMvY29uZmlncy9waXN0YWNoaW9f
ZGVmY29uZmlnICAgICAgICAgfCAzMTYgLS0tLS0tLS0tLS0tLS0tLS0tCj4gICBhcmNoL21pcHMv
Z2VuZXJpYy9LY29uZmlnICAgICAgICAgICAgICAgICAgICAgfCAgIDYgKwo+ICAgYXJjaC9taXBz
L2dlbmVyaWMvUGxhdGZvcm0gICAgICAgICAgICAgICAgICAgIHwgICAxICsKPiAgIGFyY2gvbWlw
cy9nZW5lcmljL2JvYXJkLW1hcmR1ay5pdHMuUyAgICAgICAgICB8ICAyMiArKwo+ICAgYXJjaC9t
aXBzL3Bpc3RhY2hpby9LY29uZmlnICAgICAgICAgICAgICAgICAgIHwgIDE0IC0KPiAgIGFyY2gv
bWlwcy9waXN0YWNoaW8vTWFrZWZpbGUgICAgICAgICAgICAgICAgICB8ICAgMiAtCj4gICBhcmNo
L21pcHMvcGlzdGFjaGlvL1BsYXRmb3JtICAgICAgICAgICAgICAgICAgfCAgIDYgLQo+ICAgYXJj
aC9taXBzL3Bpc3RhY2hpby9pbml0LmMgICAgICAgICAgICAgICAgICAgIHwgMTI1IC0tLS0tLS0K
PiAgIGFyY2gvbWlwcy9waXN0YWNoaW8vaXJxLmMgICAgICAgICAgICAgICAgICAgICB8ICAyNCAt
LQo+ICAgYXJjaC9taXBzL3Bpc3RhY2hpby90aW1lLmMgICAgICAgICAgICAgICAgICAgIHwgIDU1
IC0tLQo+ICAgZHJpdmVycy9jbGsvS2NvbmZpZyAgICAgICAgICAgICAgICAgICAgICAgICAgIHwg
ICAxICsKPiAgIGRyaXZlcnMvY2xrL01ha2VmaWxlICAgICAgICAgICAgICAgICAgICAgICAgICB8
ICAgMiArLQo+ICAgZHJpdmVycy9jbGsvcGlzdGFjaGlvL0tjb25maWcgICAgICAgICAgICAgICAg
IHwgICA4ICsKPiAgIGRyaXZlcnMvY2xvY2tzb3VyY2UvS2NvbmZpZyAgICAgICAgICAgICAgICAg
ICB8ICAgMyArLQo+ICAgZHJpdmVycy9waHkvS2NvbmZpZyAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHwgICAyICstCj4gICBkcml2ZXJzL3BpbmN0cmwvS2NvbmZpZyAgICAgICAgICAgICAgICAg
ICAgICAgfCAgIDUgKy0KPiAgIDIzIGZpbGVzIGNoYW5nZWQsIDExNCBpbnNlcnRpb25zKCspLCA1
ODAgZGVsZXRpb25zKC0pCj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9taXBzL2NvbmZpZ3Mv
Z2VuZXJpYy9ib2FyZC1tYXJkdWsuY29uZmlnCj4gICBkZWxldGUgbW9kZSAxMDA2NDQgYXJjaC9t
aXBzL2NvbmZpZ3MvcGlzdGFjaGlvX2RlZmNvbmZpZwo+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGFy
Y2gvbWlwcy9nZW5lcmljL2JvYXJkLW1hcmR1ay5pdHMuUwo+ICAgZGVsZXRlIG1vZGUgMTAwNjQ0
IGFyY2gvbWlwcy9waXN0YWNoaW8vS2NvbmZpZwo+ICAgZGVsZXRlIG1vZGUgMTAwNjQ0IGFyY2gv
bWlwcy9waXN0YWNoaW8vTWFrZWZpbGUKPiAgIGRlbGV0ZSBtb2RlIDEwMDY0NCBhcmNoL21pcHMv
cGlzdGFjaGlvL1BsYXRmb3JtCj4gICBkZWxldGUgbW9kZSAxMDA2NDQgYXJjaC9taXBzL3Bpc3Rh
Y2hpby9pbml0LmMKPiAgIGRlbGV0ZSBtb2RlIDEwMDY0NCBhcmNoL21pcHMvcGlzdGFjaGlvL2ly
cS5jCj4gICBkZWxldGUgbW9kZSAxMDA2NDQgYXJjaC9taXBzL3Bpc3RhY2hpby90aW1lLmMKPiAg
IGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2Nsay9waXN0YWNoaW8vS2NvbmZpZwo+CgoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
