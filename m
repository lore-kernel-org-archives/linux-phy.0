Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 404CDC43458
	for <linux-phy@archiver.kernel.org>; Sat, 27 Jun 2026 10:51:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CgmmjdjPsemHEuW+ugIAkBrlDDyXQ9hP9MQHfX5q98Y=; b=uJSJKcUwV88Z5q
	Fj8jU4pJJRvutdQNvoT+OOojnVcHh0+07tUSRGkaU7N6zGyPmpcxy5fzG5RwhS5N9MwkiJspAJnPF
	jNCN6RzPnhfjIkWh6tljLULdh94eMeUoW68zz0oHGOHjMwEnzpE5Mp9+egedUVkzetZuEQvvoRMhJ
	bGDlWO4T6UId5W9xeKQ8lUauCeJlHTcwUTIYFbsUkLGOyl5/FmzYDEbVZntnoQqjvQz7pMy79Fhgs
	KU3I9RAcQM/hps+QV9UCu1sf1yzET+GwJ+0vtMbT7z/Z4SOBCrqQLapWHqPKewNxw9Rjps9PhjSDU
	Lg0JqNSfwCcXQfJEhjIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdQdQ-0000000COQq-3IlZ;
	Sat, 27 Jun 2026 10:51:40 +0000
Received: from mx3.wp.pl ([212.77.101.9])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdQdN-0000000COPE-3CRN
	for linux-phy@lists.infradead.org;
	Sat, 27 Jun 2026 10:51:39 +0000
Received: (wp-smtpd smtp.wp.pl 19563 invoked from network); 27 Jun 2026 12:51:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=20241105;
          t=1782557490; bh=DKZMjW6YgabzM0SyMqjkY5OV0gBbsU9vG+3eee9vbHE=;
          h=Subject:To:Cc:From;
          b=WFGFChRsmBaPhzkk5ferhklt2GqHM60xouIGTsomy+sa44KUjgyqnMYDHze2UN1s8
           gtlgQcl/X8nq+F6KK0ImhwbkrRf34/anAil+FH5wjHovsNWVkrY0Dqx1Txpce/wgN2
           XwYHx95BQK1S9/FQApGTSIRRB2Cn1HndpJZobCVhhK18ZcE3zldoBgaOcFCcHRqjHs
           wYNQYwk0b51YewM3Pz8cOaz99GvQA+kg9K6+4eRJtMXnrS8Cw+BGPdvfHgrmP8plbH
           Wfrtr4XNSD3zmTZ5bCa5aCzCLNr4eU58XYdnH9eeGs/iLUZeq5T+Jaki/l2FTXPWNG
           aKBJopKvdIPnA==
Received: from 83.5.235.152.ipv4.supernova.orange.pl (HELO [192.168.3.224]) (olek2@wp.pl@[83.5.235.152])
          (envelope-sender <olek2@wp.pl>)
          by smtp.wp.pl (WP-SMTPD) with TLS_AES_256_GCM_SHA384 encrypted SMTP
          for <kuba@kernel.org>; 27 Jun 2026 12:51:30 +0200
Message-ID: <f57f27be-c118-4d18-9435-fa2b0378035e@wp.pl>
Date: Sat, 27 Jun 2026 12:51:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net v4 2/2] net: phy: mdio-i2c: defer RollBall bridge
 probe to PHY discovery
To: Jakub Kicinski <kuba@kernel.org>
Cc: Petr Wozniak <petr.wozniak@gmail.com>,
 Russell King <linux@armlinux.org.uk>, Andrew Lunn <andrew@lunn.ch>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>, Bjorn Mork
 <bjorn@mork.no>, Marek Behun <kabel@kernel.org>
References: <20260624084814.20972-1-petr.wozniak@gmail.com>
 <20260624084814.20972-3-petr.wozniak@gmail.com>
 <9f813a8e-8b9a-4708-b3b6-db4972adac35@wp.pl>
 <20260625082335.3d13d875@kernel.org>
Content-Language: pl
From: Aleksander Jan Bajkowski <olek2@wp.pl>
In-Reply-To: <20260625082335.3d13d875@kernel.org>
X-WP-MailID: 556fbf69d037b530cb73c033b6de72c6
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000003 [kUD8]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260627_035138_266868_477A5BCB 
X-CRM114-Status: UNSURE (   8.59  )
X-CRM114-Notice: Please train this message.
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

SGkgSmFrdWIsCgpPbiAyNS8wNi8yMDI2IDE3OjIzLCBKYWt1YiBLaWNpbnNraSB3cm90ZToKPiBP
biBXZWQsIDI0IEp1biAyMDI2IDIzOjQ0OjE5ICswMjAwIEFsZWtzYW5kZXIgSmFuIEJhamtvd3Nr
aSB3cm90ZToKPj4+IEZvciBnZW51aW5lIFJvbGxCYWxsIG1vZHVsZXMgKGUuZy4gRkxZUFJPIFNG
UC0xMEdULUNTLTMwTSB3aXRoIEFxdWFudGlhCj4+PiBBUVIxMTNDKSB0aGUgcHJvYmUgbm93IHJ1
bnMgYWZ0ZXIgaW5pdGlhbGl6YXRpb24gaXMgY29tcGxldGUgYW5kCj4+PiBjb3JyZWN0bHkgcmV0
dXJucyAwLCBzbyBQSFkgZGV0ZWN0aW9uIHByb2NlZWRzIG5vcm1hbGx5Lgo+PiBUaGUgRkxQUk8g
U0ZQIG1vZHVsZSBzdGlsbCBmYWlscyB0byBkZXRlY3QgdGhlIFBIWS4gSXQgaXMgbmVjZXNzYXJ5
IHRvCj4+IGluY3JlYXNlIGBtb2R1bGVfdF93YWl0YCB0byAyMCBzZWNvbmRzLiBNb3N0IGxpa2Vs
eSwgZHVyaW5nIHRoaXMgdGltZQo+PiB0aGUgbW9kdWxlIGxvYWRzIHRoZSBQSFkgZmlybXdhcmUg
ZnJvbSBTUEkgbWVtb3J5IG9yIGZyb20gdGhlCj4+IG1pY3JvY29udHJvbGxlciAocm9sbGJhbGwg
YnJpZGdlKSB2aWEgTURJTy4gU2FtZSBwcm9iYWJseSBhcHBsaWVzIHRvCj4+IG1vc3QgU0ZQIG1v
ZHVsZXMgd2l0aCBhIFBIWSB0aGF0IGxvYWQgZmlybXdhcmUgYXQgc3RhcnQtdXAgKEFRUjExMywK
Pj4gUlRMODI2MUMgZXRjLikuCj4gSnVzdCB0byBjbGFyaWZ5IGlzIEZMUFJPIGEgdHlwbyBvciBh
IGtub2NrIG9mZiA/ClR5cG8gb24gbXkgY29tbWVudCBGTFBSTy0+RkxZUFJPIDopCj4gRG8geW91
IHdhbnQgc29tZXRoaW5nIHRvIGJlIGNoYW5nZWQgaGVyZSBvciB5b3UncmUganVzdCBmbGFnZ2lu
ZyB0aGF0Cj4gbW9yZSBmb2xsb3cgdXBzIGFyZSBuZWVkZWQgaWYgd2Ugd2FudCB0byBjb3ZlciBt
b3JlIG1vZHVsZXM/CkkgZG9u4oCZdCBrbm93IGhvdyB0aGlzIHNob3VsZCBiZSBmaXhlZC4gSeKA
mW0ganVzdCBzaGFyaW5nIGluZm9ybWF0aW9uLgpFdmVuIHdpdGggdGhpcyBwYXRjaCwgbW9zdCBS
b2xsYmFsbCBtb2R1bGVzIHN0aWxsIGRvbuKAmXQgd29yay4gVGhpcwpwYXRjaCBhdCBsZWFzdCBm
aXhlcyBvbmUgYnVnLiBBY2NvcmRpbmcgdG8gU0ZGLTg0NzJbMV0sIHdlIHNob3VsZG7igJl0CmNv
bW11bmljYXRlIHdpdGggdGhlIFNGUCBtb2R1bGUgdW50aWwgMzAwbXMgaGF2ZSBlbGFwc2VkIHNp
bmNlIHRoZQptb2R1bGUgd2FzIGluc2VydGVkLiBUaGUgc2Vjb25kIHByb2JsZW0gc3RpbGwgcmVt
YWlucy4gMzAwbXMgaXMgc3RpbGwKbm90IGVub3VnaCBmb3IgbW9zdCBSb2xsYmFsbCBtb2R1bGVz
LiBVbmZvcnR1bmF0ZWx5LCB3ZeKAmWQgbmVlZCB0byB0ZXN0CmEgcXVpcmsgZm9yIGVhY2ggbW9k
dWxlIHRvIGZpbmQgb3V0IHdoYXQgZGVsYXkgaXMgcmVxdWlyZWQuIFdlIG5lZWQgYQpxdWlyayBz
aW1pbGFyIHRvIHNmcF9maXh1cF9yb2xsYmFsbF93YWl0NHMuIEJ1dCB3aXRoIGEgbG9uZ2VyIGRl
bGF5LgpTaG91bGQgdGhlIGZpeCBiZcKgaW5jbHVkZWQgaW4gdGhpcyBzZXJpZXMgb3IgZm9sbG93
IHVwPwoKMS4gU0ZGLTg0NzIgUmV2IDEyLjVhLiBUYWJsZSA4LTcKCkJlc3QgcmVnYXJkcywKQWxl
a3NhbmRlcgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXBoeQo=
