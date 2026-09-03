Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD203C61DD3
	for <linux-phy@archiver.kernel.org>; Thu,  3 Sep 2026 08:38:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5M6kdQG2Sou8/0MIxQ3WwxmB6nKjq6Fwd28bVVLQPUY=; b=rMwA93N1AFAjoO
	63SvOoYIrT3P4/qY7oJevy/OUtyun+Bxjr05TDL+Hm7x+Ope3W3Ut97AmNCF58nmFrXQo4f7tnv8E
	Hl2p20snQdeh+bYWMRO/kGbxgfzWRMsLurjLuqwisn6Z/MZ+z94/23Dnz11MfF2GEhWFqRbDRorqa
	Lz9G9ofqfg9bDKrVOAdJ2SZBie/ZDsOrwEqy4Ibl/zeBDli7Edj6V040/hZJ5TVPOI0ugOkOavN9Q
	ocboKq+ejoguRBdEYvYT6rXTxlNiRJfvtu4gQnv0iD7rNG5FxKbmfEwpVU4BFI2g67dtvIzo//Fi5
	/qriOE1Avu8aZXCG/q3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x22xk-0000000GoeP-2Yo7;
	Thu, 03 Sep 2026 08:38:24 +0000
Received: from mail-ej2-x09.google.com ([2a00:1450:4864:34::9])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x22xi-0000000GodP-0wV4
	for linux-phy@lists.infradead.org;
	Thu, 03 Sep 2026 08:38:23 +0000
Received: by mail-ej2-x09.google.com with SMTP id a640c23a62f3a-c252e3644eeso101729766b.1
        for <linux-phy@lists.infradead.org>; Thu, 03 Sep 2026 01:38:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1788424700; cv=none;
        d=google.com; s=arc-20260327;
        b=gaN6azGEWCbTfFJFHs2kyEYK5MQ4zlXOwySPEPZ2yfwYzYLAB7sLcF7hyQuSL/jkcK
         0ZPNLwNMoLEUtnupHK0fXqYRZ804cwNI21dvmMORaZvZ88gmSGngemcQkWaJKQLvUTBg
         WfHqq18KWqWtUh+/mYHlkjK7pYE1ehemG+IrhtDIb7ImHsVLkUUNWUkf1EqJ/qyEPNNt
         n2rdd3KZ4fE6dAvbeDejoyDAg6VpzoCGIsseC+X5tKl9hW5gg3TJ7rCkSHqGRxq5DylX
         TgH03INNJjOv94RE6roU6iC9DjT8gZsSgsiBTrRZSOcvnPT5ypYhV5yOH51YVroN75mq
         j8ZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=zLI/RWFajbdI/yeWFj7by+G0c5qK0/HsoOvw38Apr+w=;
        fh=k91XHh+7Duua7sVvoFocwGrA7jFm7Qcf5ZsTV2T8HSE=;
        b=OxixdyaWMHOKLptojC8O0ykVpNpzv8PFse6IOTIXPIeWsE9tcywlC2noVcIFagsr/v
         9kN8Hp0V3q9eSWO0PLjLxnyg8aLaG9Osz6ZkqFPxcrxzFS2CgciLu+pka2AyyF2ZONhA
         0UH8zDC4Fayg0EHFJaYp1K0DTaG9HQbobsIRPdQIN0MsHMK8uh1uY4FVLvC7JPVdrDkS
         dt5NJvefRN+kZhFbdcdkjxLZgBocne+oT74qgNasClrk4ut3BHgy/dY46U9TP2aq5ef5
         vl0WCR+1wlJeWio8GnVuVpmPTbfkYaP1MqIO9gXXXPMrkxCWdgxCn2dighwd+q3OibWR
         QsJw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788424700; x=1789029500; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=zLI/RWFajbdI/yeWFj7by+G0c5qK0/HsoOvw38Apr+w=;
        b=fk5SwY5y0Vn0ocY67YUZ9+SThUekWij89Nq6bZtfOkeV3mDcyAVIcPy4zXGJeViEoW
         YMZVkqlouP1HE71mZ7nMz9bGlfKQrOYDVZHi1CyCpZWfOrhHZl+diK2UC6FZa4bREQ0Y
         IUZ01C8O+wbMOGTWPM+zNKbh34ZAezCI7OwF57pYxhL7/zDUvorW4k11b3JtJopDF4fg
         FN+FefNXpTjR42UwBI+vR3FRW4Ur5SJwB74Fi0sg946y0sKFjM/xxHcqMsv0DDHJmu1k
         xKjZoGs1R3npdGpUBZwCghCtRrmGPNNBRKbp0pNYG/9hfGuTILA3q2/No9LFHjCdZ6Ql
         lEwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788424700; x=1789029500;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=zLI/RWFajbdI/yeWFj7by+G0c5qK0/HsoOvw38Apr+w=;
        b=UGN5iRjQiLQp+7Jy0xFZnjm3OKvnPX5fReadF9raY7lg40BjImqoUNGEA7cosQ6pcv
         Xrf7OvclWIkZc/zIlpLYBpbBH3u1UwhAmrE7lPpzvg3dt5UPsVCqiZ9strwu71sQHYzg
         WDsum/md0lGYTUbzSlLMaL5phziuIBbP/Xhq9ZAZDzCsVM/I8PsINWe/cxR12M8Ypj9+
         IhPE3lAMe2K2PB45wy3j4vmKK85fXowHhyVnuOZfjWmcwjBPxxM0S0360wVUquPnfNe7
         mmDqVUuam9inbbh6nhIggIpzF/lG1TsyGy/UpKn1z/+uSFgl3+wFwnOwPvJkFDuo4Oda
         f2Xg==
X-Forwarded-Encrypted: i=1; AKwUvBycAX5/YTdbfRnDywxok65IXOmCAXTLnyEuxhQ+rZa6aFT0L1mT5nyfThONc3qZsQGXK0jPOPmGreg=@lists.infradead.org
X-Gm-Message-State: AFuF++lUe5Mh0gC+y0FCNPQz/++++WkV4UFeg4L2wT7yg07emVmuyWbV
	8E9/G6QPKkYGCAep+Cy7mL4nNHKTp8dtFYN8672MCXXiaE5UzsOA9IH2bmaPXHUzQGUD5u5SeAk
	yw1bJAUOGGfHdRM+NKam4N+S0jT9L8D4=
X-Gm-Gg: AYBFou1nVIGqbwD+LBSfKJ3W5za/CnX0F4+TAPFgQp62Yry2gbIyOIpCOje37GoVdGK
	k4Ni/2q+v3oX0foJntoLj94iHgfnV1iBh9pKkjhixAoEfnx+xAeokB0OQ9cCeBO/6FSB3rtgnXn
	lflJFtO6S2mZmewOG0DNp/oABmKrLxhClY3Gh4nFcgCcstWeaPtxUFEZTJFncWgoUaX08yoiy/0
	a48+pvhVJKGAjGpocyZC/qv2QfcldOHN/dUBRK7XhmNKL6nNoAifCFsnOzegEu050gdZ/DrD4cq
	3M9jesfPmgVzzFT0HtJMSdH/q2mb3r0FTaGmr42kuu9iLdK74zFtQsR3p13rjJw=
X-Received: by 2002:a17:907:c71b:b0:c20:af9d:4533 with SMTP id
 a640c23a62f3a-c25d560c603mr627292366b.19.1788424699559; Thu, 03 Sep 2026
 01:38:19 -0700 (PDT)
MIME-Version: 1.0
References: <20260901150111.141037-1-coiaprant@gmail.com> <20260901150111.141037-9-coiaprant@gmail.com>
 <f07c64b4-3018-4e9d-8aea-12454f132419@bootlin.com>
In-Reply-To: <f07c64b4-3018-4e9d-8aea-12454f132419@bootlin.com>
From: Coia Prant <coiaprant@gmail.com>
Date: Thu, 3 Sep 2026 16:38:08 +0800
X-Gm-Features: AcwNN1VhuHjbmY1CA9bSBTxLCt2mOIIUXarfDkLXAsSy1buatA_CYmYfdE_lEPs
Message-ID: <CALj3r0hxSOrtRwOmAQ4Vw=nEkTfA+x93KzpAdG9m=xWFYbOuTw@mail.gmail.com>
Subject: Re: [PATCH net-next v3 08/10] net: stmmac: dwmac-rk: add SGMII
 support for RK3568
To: Maxime Chevallier <maxime.chevallier@bootlin.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Romain Gantois <romain.gantois@bootlin.com>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Russell King <linux@armlinux.org.uk>, 
	Shawn Lin <shawn.lin@rock-chips.com>, David Heidelberg <david@ixit.cz>, netdev@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260903_013822_287902_7B8E2214 
X-CRM114-Status: GOOD (  29.17  )
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

TWF4aW1lIENoZXZhbGxpZXIgPG1heGltZS5jaGV2YWxsaWVyQGJvb3RsaW4uY29tPiDkuo4yMDI2
5bm0OeaciDPml6Xlkajlm5sgMTY6MzTlhpnpgZPvvJoKPgo+IEhpCj4KPiBPbiA5LzEvMjYgMTc6
MDEsIENvaWEgUHJhbnQgd3JvdGU6Cj4gPiBUaGUgUkszNTY4IFNvQyBpbnRlZ3JhdGVzIGEgU3lu
b3BzeXMgRGVzaWduV2FyZSBYUENTIHRoYXQgY2FuIGJlCj4gPiBjb25uZWN0ZWQgdG8gR01BQzAg
b3IgR01BQzEgaW4gU0dNSUkgbW9kZS4gIEFkZCB0aGUgbmVjZXNzYXJ5IGdsdWUKPiA+IGxvZ2lj
IHRvIHN1cHBvcnQgdGhpcyBjb25maWd1cmF0aW9uLgo+ID4KPiA+IFRoZSBjdXJyZW50IGR3bWFj
LXJrIGRyaXZlciBkb2VzIG5vdCBzdXBwb3J0IFNHTUlJIG1vZGUuICBTR01JSQo+ID4gcmVxdWly
ZXMgYSBQQ1MgdG8gaGFuZGxlIGF1dG8tbmVnb3RpYXRpb24gYW5kIGxpbmsgc3RhdGUgcmVwb3J0
aW5nLAo+ID4gYnV0IHRoZSBleGlzdGluZyBkcml2ZXIgb25seSBzdXBwb3J0cyBSR01JSSBhbmQg
Uk1JSS4KPiA+Cj4gPiBBZGQgYSBzZXRfdG9fc2dtaWkoKSBjYWxsYmFjayB0byBjb25maWd1cmUg
dGhlIEdNQUMgR1JGIHJlZ2lzdGVyIGZvcgo+ID4gU0dNSUkgbW9kZSAoYml0IDcgc2V0LCBpbnRl
cmZhY2Ugc2VsZWN0aW9uIGJpdHMgNDo2IGNsZWFyZWQpLiAgQWxzbwo+ID4gYWRkIGEgc3VwcG9y
dHNfc2dtaWkgZmxhZyB0byBpbmRpY2F0ZSBTR01JSSBjYXBhYmlsaXR5Lgo+ID4KPiA+IFByb3Zp
ZGUgcGNzX2luaXQvcGNzX2V4aXQgY2FsbGJhY2tzIHRvIGNyZWF0ZS9kZXN0cm95IHRoZSBYUENT
IHZpYQo+ID4geHBjc19ya19jcmVhdGUoKSBmcm9tIHRoZSBSb2NrY2hpcCBYUENTIHBsYXRmb3Jt
IGRyaXZlciwgYW5kIGEKPiA+IHNlbGVjdF9wY3MgY2FsbGJhY2sgdG8gcmV0dXJuIHRoZSBYUENT
IHRvIHBoeWxpbmsuCj4gPgo+ID4gV2hpbGUgYXQgaXQsIGZpeCB0aGUgY2xvY2sgZW5hYmxlIG9y
ZGVyaW5nIGluIHJrX2dtYWNfcG93ZXJ1cCgpOgo+ID4gZ21hY19jbGtfZW5hYmxlKCkgaXMgbm93
IGNhbGxlZCBiZWZvcmUgYW55IHJlZ2lzdGVyIGFjY2VzcywgaW5jbHVkaW5nCj4gPiB0aGUgU0dN
SUkgbW9kZSBzZXR1cCBwYXRoLiAgUHJldmlvdXNseSBTR01JSSBtb2RlIHdvdWxkIGJ5cGFzcyB0
aGUKPiA+IGNsb2NrIGVuYWJsZSB2aWEgYSBnb3RvLCB3aGljaCBjb3VsZCBjYXVzZSBzeW5jaHJv
bm91cyBleHRlcm5hbCBhYm9ydAo+ID4gd2hlbiBhY2Nlc3NpbmcgTUFDIHJlZ2lzdGVycyB3aXRo
IHRoZSBjbG9jayBkb21haW4gZGlzYWJsZWQuCj4gPgo+ID4gQWxzbyBjbGVhbiB1cCB0aGUgZXJy
b3IgaGFuZGxpbmcgaW4gcmtfZ21hY19wb3dlcnVwKCkgYnkgdXNpbmcgYQo+ID4gdW5pZmllZCBj
bGtfZGlzYWJsZSBsYWJlbCwgYW5kIGFkZCBlcnJvciBoYW5kbGluZyBmb3IgdGhlIGRlZmF1bHQK
PiA+ICh1bmhhbmRsZWQgaW50ZXJmYWNlKSBjYXNlLgo+ID4KPiA+IFNHTUlJIEluLWJhbmQgdnMg
T3V0LW9mLWJhbmQKPiA+ID09PT09PT09PT09PT09PT09PT09PT09PT09PT0KPiA+IE9uIFJLMzU2
OCwgdGhlIE1BQyBjbG9jayBpcyBmaXhlZCBhdCAxMjUgTUh6IGFuZCBjYW5ub3QgYmUgZHluYW1p
Y2FsbHkKPiA+IGNoYW5nZWQgYnkgdGhlIHN0bW1hYyBjb3JlJ3Mgc2V0X2Nsa190eF9yYXRlIGNh
bGxiYWNrLiAgSW4tYmFuZCBtb2RlCj4gPiB3b3JrcyBiZWNhdXNlIHRoZSBQQ1MgaGFuZGxlcyBy
YXRlIGFkYXB0YXRpb24gaW50ZXJuYWxseS4gIE91dC1vZi1iYW5kCj4gPiBtb2RlIGRvZXMgbm90
IHdvcmsgYmVjYXVzZSB0aGUgTUFDIHdvdWxkIG5lZWQgdG8gY2hhbmdlIHRoZSBjbG9jayByYXRl
Cj4gPiB0byAxMjUvMTIuNS8xLjI1IE1IeiBmb3IgMTAwMC8xMDAvMTAgTWJwcyByZXNwZWN0aXZl
bHksIGFuZCB0aGUgY2xvY2sKPiA+IGlzIGZpeGVkLgo+ID4KPiA+IEVuYWJsZSBkZWZhdWx0X2Fu
X2luYmFuZCBmb3IgU0dNSUkgYW5kIGRpc2FibGUgdGhlIGdlbmVyaWMgc3RtbWFjCj4gPiBzZXRf
Y2xrX3R4X3JhdGUgY2FsbGJhY2suICBUaGlzIGZvcmNlcyBwaHlsaW5rIHRvIHVzZSBpbi1iYW5k
IG1vZGUsCj4gPiB3aGVyZSB0aGUgUENTIGlzIHJlc3BvbnNpYmxlIGZvciBzcGVlZC9kdXBsZXgg
bmVnb3RpYXRpb24uICBXaXRob3V0Cj4gPiB0aGlzLCB0aGUgc3RtbWFjIGNvcmUgd291bGQgYXR0
ZW1wdCB0byBjaGFuZ2UgdGhlIGNsb2NrIHJhdGUgb24gc3BlZWQKPiA+IGNoYW5nZXMsIGNhdXNp
bmcgVFggdG8gd29yayBidXQgUlggdG8gZmFpbC4KPiA+Cj4gPiBMaW5rOiBodHRwczovL2RsLnJh
ZHhhLmNvbS9yb2NrMy9kb2NzL2h3L2RhdGFzaGVldC9Sb2NrY2hpcCUyMFJLMzU2OCUyMFRSTSUy
MFBhcnQxJTIwVjEuMS0yMDIxMDMwMS5wZGYgKFBhZ2UgMzg2KQo+ID4gU2lnbmVkLW9mZi1ieTog
Q29pYSBQcmFudCA8Y29pYXByYW50QGdtYWlsLmNvbT4KPgo+IFsuLi5dCj4KPiA+ICtzdGF0aWMg
aW50IHJrX3Bjc19pbml0KHN0cnVjdCBzdG1tYWNfcHJpdiAqcHJpdikKPiA+ICt7Cj4gPiArICAg
ICBzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wID0gcHJpdi0+ZGV2aWNlLT5vZl9ub2RlOwo+ID4gKyAg
ICAgc3RydWN0IGRldmljZV9ub2RlICpwY3Nfbm9kZTsKPiA+ICsgICAgIHN0cnVjdCBkd194cGNz
ICp4cGNzOwo+ID4gKwo+ID4gKyAgICAgcGNzX25vZGUgPSBvZl9wYXJzZV9waGFuZGxlKG5wLCAi
cGNzLWhhbmRsZSIsIDApOwo+ID4gKyAgICAgaWYgKCFwY3Nfbm9kZSkKPiA+ICsgICAgICAgICAg
ICAgcmV0dXJuIC1FTk9ERVY7Cj4KPiBIZXJlIGFzd2VsbCB5b3UgbWFrZSBpdCBtYW5kYXRvcnkg
dG8gaGF2ZSBhIFBDUywgYXMgdGhlIGdlbmVyaWMgcGNzIGxvZ2ljCj4gaW50cm9kdWNlZCBpbiBw
YXRjaCAxIGRvZXNuJ3QgaGFuZGxlIC1FTk9ERVYsIGl0IHRyZWF0cyBpdCBhcyBhbnkgb3RoZXIK
PiBlcnJvci4KPgo+IFNvLCBlaXRoZXIgeW91IHJldHVybiAwIHdoZW4gdGhlcmUncyBubyBQQ1Mg
KHNvIHRoYXQgd2UgZG9uJ3QgYnJlYWsgcGxhdGZvcm1zCj4gdGhhdCBkb24ndCBoYXZlIG9uZSks
IG9yIHlvdSBoYW5kbGUgLUVOT0RFViBncmFjZWZ1bGx5IGluIHBhdGNoIDEuCj4KPiBNYXhpbWUK
PgoKSGksCgpDdXJyZW50bHksIGBya19wY3NfaW5pdGAgaXMgY2FsbGVkIG9ubHkgZm9yIFNHTUlJ
LCB3aGljaCByZXF1aXJlcyBhIFBDUy4KCkFzIGl0IHN0YW5kcywgb25seSB0aGUgUkszNTY4IHN1
cHBvcnRzIFNHTUlJLCBzbyB3ZSB3b24ndCBicmVhayBhbnl0aGluZyBoZXJlLgoKQmVzdCwKQ29p
YQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
Cg==
