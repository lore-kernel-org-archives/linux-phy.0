Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81284C021B8
	for <linux-phy@archiver.kernel.org>; Wed, 26 Feb 2025 20:56:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0cqqDwEzBUJJlUFSIr3oYIjwmS5973ig4zHQuncV4uc=; b=PN/8mWS6GzwxvR
	oMu5CAROre5L7UThJQQiZnDPmvvgRO5sG+laOa2/9Mg0CZzO59hj83hbT1EYjXmwEZbeMAxy5juYm
	daiUGbbHha9W6/21/GCfg05GOCfKABhuF89YVRPx7xhsk1TYMRCGsjO6jNY9mZEgtEUb0SWUt9WHg
	3vMFbJUwvP/f5j3uosfO/oo+96vcGevMdnGOXMtWi+Lmk70BmAiOXJeNZ4+16iOWY0ZWIW0AhlOwd
	q79XNjgiWtLfXJ879jDcpM1wzhGGavcozELVdZ+QBzPJ3HAX0is/KpdLz3d3BHrxTlzHB+vMRtkDi
	L2bsnp0/IaotqjG0dQ9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnOS6-00000005OTi-3kkU;
	Wed, 26 Feb 2025 20:56:22 +0000
Received: from mo4-p02-ob.smtp.rzone.de ([85.215.255.83])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnOS3-00000005OQr-23lG
	for linux-phy@lists.infradead.org;
	Wed, 26 Feb 2025 20:56:21 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1740603349; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=TmnStTm7F9jfKZQAE26BHIjR7RdXSkpIJRGr2DQIoGYTZQP874+pXY59Ilv2f/SpZx
    bKi5xQrYc9brfDAAzw6lnsJdPg8bk+wyGCO/YYcr1ilnubJnHJUtNTfLztmysR8ufjTu
    eKcexDupQAMrRF0UJ30v5LdVXyqbwh/Ki4HJfV5RcEqjBLBvZmU7qLYQQo/jyCaMgwSM
    v1OEt9Vk2rHO8otg1EilqmnsQBLRIemzcHraYNfqYc9tkYN9VCRPfGYFVkuL7EGge0zy
    wEeOZAomlqJ+ijRtpKbBOzbHXrK6V/ImD7oCuanhtkOpGGsyEkgj7RX0PoCsRO/Nci8U
    uDSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1740603349;
    s=strato-dkim-0002; d=strato.com;
    h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:Cc:Date:
    From:Subject:Sender;
    bh=h3kwnl84GKFzcYqD2MZXAD5G+Hc11YASNteYVcGkOjw=;
    b=DZN3SJxWWnVLVSpP76zQ5Z2uVDNJedT9sLF353DH+m1U311Z3d+VF1FeEmTC2AEG15
    tz4nyFxNd3fjcl5yjw8KFBykqmwk6ORrwIJ3RbdWP6eTxKF3VEHhMyaIHO1TcxyAZmCD
    IHQ1GdaYPeBzEQztaRKtsAxRzMighbj9hV13UwyFk38sUE7gM4CHQBDKNKVo2MMiCdzg
    v4PYvnq6PW80IbliD4U0cSO0qhFw05PL70kGE0uOyxrAhoarfW2hlb+C9KdBC1jlOp5+
    MKoWO8l11XP4/PG4U2mGezgI/yL57rGHrdxkTtznS9eHd64kDQ5mxtEaWn4N9SOs6ml5
    DPbw==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo02
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1740603349;
    s=strato-dkim-0002; d=goldelico.com;
    h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:Cc:Date:
    From:Subject:Sender;
    bh=h3kwnl84GKFzcYqD2MZXAD5G+Hc11YASNteYVcGkOjw=;
    b=Aa6QASK0lqZbPyqq+kwDc28DXnlwgUXsQGKhYAb0ihUmWJKe7xLIE4NQFMB9sF4OTI
    gyYzvN3WIf0sSfVrrJnpz0xaB8kYYdP/Y+0ZqL4UMV0HfsBgFwmaZ+DpIdFTTnJvOjNQ
    qwrShwWy1Xoa+PW/RPxzqEnkZkvUlVL/f/y6l7JnKxO33CfFZVp2r86hf4y6C/VvGCi7
    3ReQonUM1FrkwRWZ805H2m3KVIPJ7j8GI61xIHslcUG67YkejYM3TwAUaUntG1dIlXGs
    B221ApdYu0clk5BmhI41Tz77QY04X86M+MY8tB6NXdXro6CvcAi5rMwoUFHlaG8LsPio
    41Xw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1740603349;
    s=strato-dkim-0003; d=goldelico.com;
    h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:Cc:Date:
    From:Subject:Sender;
    bh=h3kwnl84GKFzcYqD2MZXAD5G+Hc11YASNteYVcGkOjw=;
    b=YpQV3ZIUiPaYJtPqOQmucq9zNX0Y0s0RCOTaRO7ceLqtebmcXUKsjUmZ7S/ze5ZKpx
    awLD6ZkE+fIoAqCzjAAA==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMhflhwDubTJ9o12DNOsPj0lFzL1yeD0Z"
Received: from smtpclient.apple
    by smtp.strato.de (RZmta 51.2.23 DYNA|AUTH)
    with ESMTPSA id Qe5b2211QKtnizH
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve X9_62_prime256v1 with 256 ECDH bits, eq. 3072 bits RSA))
	(Client did not present a certificate);
    Wed, 26 Feb 2025 21:55:49 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3776.700.51.11.1\))
Subject: Re: [PATCH RESEND] phy: ingenic: fix unbalanced regulator_disable()
 warning
From: "H. Nikolaus Schaller" <hns@goldelico.com>
In-Reply-To: <ab308c135c3ea5e050bbfb0b94a832c8d52d5380.camel@crapouillou.net>
Date: Wed, 26 Feb 2025 21:54:52 +0100
Cc: Zhou Yanjie <zhouyanjie@wanyeetech.com>,
 linux-phy@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 kernel@pyra-handheld.com,
 linux-mips@vger.kernel.org
Message-Id: <AF49A39E-0534-4ADC-8E50-606A636D167A@goldelico.com>
References: <96da5fe557f3b2501447358895bd78decc4633ef.1735482146.git.hns@goldelico.com>
 <ab308c135c3ea5e050bbfb0b94a832c8d52d5380.camel@crapouillou.net>
To: Paul Cercueil <paul@crapouillou.net>,
 Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>
X-Mailer: Apple Mail (2.3776.700.51.11.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250226_125619_803474_F9DF55EB 
X-CRM114-Status: GOOD (  15.18  )
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

SGksCgpJIGp1c3Qgd29uZGVyIGlmIGFueW9uZSBpcyBwaWNraW5nIHRoaXMgdXA/CgpUaGVyZSBz
ZWVtcyB0byBiZSBubyBNQUlOVEFJTkVSIHNwZWNpZmljIGZvciBkcml2ZXJzL3BoeS9pbmdlbmlj
LgoKQlIsCk5pa29sYXVzCgo+IEFtIDAyLjAxLjIwMjUgdW0gMTM6NTMgc2NocmllYiBQYXVsIENl
cmN1ZWlsIDxwYXVsQGNyYXBvdWlsbG91Lm5ldD46Cj4gCj4gSGkgTmlrb2xhdXMsCj4gCj4gTGUg
ZGltYW5jaGUgMjkgZMOpY2VtYnJlIDIwMjQgw6AgMTU6MjIgKzAxMDAsIEguIE5pa29sYXVzIFNj
aGFsbGVyIGEKPiDDqWNyaXQgOgo+PiBpZiBpbmdlbmljX3VzYl9waHlfZXhpdCBpcyBjYWxsZWQg
dGhlIHJlZ3VsYXRvciBpcyBhbHJlYWR5IGRpc2FibGVkCj4+IHRocm91Z2ggaW5nZW5pY191c2Jf
cGh5X3Bvd2VyX29mZigpIGxlYWRpbmcgdG8KPj4gCj4+IFsgICAgNS4zNjczMDFdIFdBUk5JTkc6
IENQVTogMCBQSUQ6IDIwIGF0Cj4+IGRyaXZlcnMvcmVndWxhdG9yL2NvcmUuYzoyOTUzIF9yZWd1
bGF0b3JfZGlzYWJsZSsweDIwMC8weDIzMAo+PiBbICAgIDUuMzY4MjA5XSB1bmJhbGFuY2VkIGRp
c2FibGVzIGZvciByZWd1bGF0b3ItZHVtbXkKPj4gWyAgICA1LjM3MDM2NF0gTW9kdWxlcyBsaW5r
ZWQgaW46IHBoeV9pbmdlbmljX3VzYgo+PiAuLi4KPj4gWyAgICA1LjM3MzQ0MV0gWzw4MDU0NjAx
Yz5dIHJlZ3VsYXRvcl9kaXNhYmxlKzB4NDAvMHg4MAo+PiBbICAgIDUuMzcyOTUyXSBbPGMwMjQ1
MGY4Pl0gaW5nZW5pY191c2JfcGh5X2V4aXQrMHg0OC8weDYwCj4+IFtwaHlfaW5nZW5pY191c2Jd
Cj4+IFsgICAgNS4zNzQyODNdIFs8ODA1MDgzOWM+XSBwaHlfZXhpdCsweGQ4LzB4MTA0Cj4+IFsg
ICAgNS4zNzMxMDRdIFs8ODA2NTdhMjQ+XSBfX2R3YzJfbG93bGV2ZWxfaHdfZGlzYWJsZSsweGUw
LzB4ZTgKPj4gWyAgICA1LjM3MzM5M10gWzw4MDY1OGFkND5dIGR3YzJfZHJpdmVyX3Byb2JlKzB4
ODE4LzB4ODM0Cj4+IC4uLgo+PiAKPj4gU2lnbmVkLW9mZi1ieTogSC4gTmlrb2xhdXMgU2NoYWxs
ZXIgPGhuc0Bnb2xkZWxpY28uY29tPgo+IAo+IExvb2tzIGdvb2QgdG8gbWUuIFRoZSByZWd1bGF0
b3IgaXMgbm90IGVuYWJsZWQgaW4KPiBpbmdlbmljX3VzYl9waHlfaW5pdCgpLCBzbyBpdCBzaG91
bGQgbm90IGJlIGRpc2FibGVkIGluCj4gaW5nZW5pY191c2JfcGh5X2V4aXQoKS4KPiAKPiBSZXZp
ZXdlZC1ieTogUGF1bCBDZXJjdWVpbCA8cGF1bEBjcmFwb3VpbGxvdS5uZXQ+Cj4gCj4gQ2hlZXJz
LAo+IC1QYXVsCj4gCj4gCj4+IC0tLQo+PiAKPj4gTm90ZXM6Cj4+ICAgICBSZXNlbnQgYmVjYXVz
ZSBsaW51eC1taXBzQHZnZXIua2VybmVsLm9yZyB3YXMgbm90IGF1dG9tYXRpY2FsbHkKPj4gYWRk
ZWQgYnkKPj4gICAgIGdldF9tYWludGFpbmVyLnBsIChkcml2ZXJzL3BoeS9pbmdlbmljIG1pc3Np
bmcgaW4gTUFJTlRBSU5FUlMKPj4gcmVjb3JkPykKPj4gCj4+ICBkcml2ZXJzL3BoeS9pbmdlbmlj
L3BoeS1pbmdlbmljLXVzYi5jIHwgMSAtCj4+ICAxIGZpbGUgY2hhbmdlZCwgMSBkZWxldGlvbigt
KQo+PiAKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L2luZ2VuaWMvcGh5LWluZ2VuaWMtdXNi
LmMKPj4gYi9kcml2ZXJzL3BoeS9pbmdlbmljL3BoeS1pbmdlbmljLXVzYi5jCj4+IGluZGV4IGVi
MjcyMWY3MmE0YzEuLjM1OTg0ZGQ4YTFiZDcgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvcGh5L2lu
Z2VuaWMvcGh5LWluZ2VuaWMtdXNiLmMKPj4gKysrIGIvZHJpdmVycy9waHkvaW5nZW5pYy9waHkt
aW5nZW5pYy11c2IuYwo+PiBAQCAtMTI0LDcgKzEyNCw2IEBAIHN0YXRpYyBpbnQgaW5nZW5pY191
c2JfcGh5X2V4aXQoc3RydWN0IHBoeSAqcGh5KQo+PiAgIHN0cnVjdCBpbmdlbmljX3VzYl9waHkg
KnByaXYgPSBwaHlfZ2V0X2RydmRhdGEocGh5KTsKPj4gIAo+PiAgIGNsa19kaXNhYmxlX3VucHJl
cGFyZShwcml2LT5jbGspOwo+PiAtIHJlZ3VsYXRvcl9kaXNhYmxlKHByaXYtPnZjY19zdXBwbHkp
Owo+PiAgCj4+ICAgcmV0dXJuIDA7Cj4+ICB9CgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
