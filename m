Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63DB2C47DA9
	for <linux-phy@archiver.kernel.org>; Mon, 29 Jan 2024 22:16:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=Sy0UT4IpxVD05HN6gOTHpe1deuv5vhSIcWQ1VELhjDw=; b=GgQQ6Pwuc1DspU
	y/OWyErGDj3CPcIGkyV+5ngb0w/hpgHBR3lDhoxdGiqCxvcBv+xrh7kPSVRSGAKsIBH/nR/JTNWfV
	cjjMGFDWKXjI1VmWKBhSUC/xUxPavO2REhqkneNvef243ZID6MPVnZ5BfobqXu/raUlqbXoVn77L4
	TfJgFDs+OQZUEb1yUSd62RxYRBYlpfNEheFTcGcvoKFCFdMr3jVtKyIzf4NctPwfFSYf6BV3V5FL1
	8nNgO2uoJIdszL88jiviJYqBQXOPiCG1OxWmnd/XBOpcbvNGlQy0sa+wUnr3v+pIwy94zSCRbELPI
	0q6rdMAmf4wuzDt50WdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUZw0-0000000ERtF-0Foj;
	Mon, 29 Jan 2024 22:16:56 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUZvw-0000000ERrB-3eS0;
	Mon, 29 Jan 2024 22:16:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 952ABCE180B;
	Mon, 29 Jan 2024 22:16:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8A644C433F1;
	Mon, 29 Jan 2024 22:16:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706566608;
	bh=fWlUMRgvqVY95h4dXufWc8ddniO0qcwX7UwmN7CzrKY=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=MQZAohOc8Dgk2cjX6jvaB2a8InqsFsEgUpwwpZU2S7fbZRA0vBXW6WQSwHknPL5pw
	 Db8Yfblz+iPuvPB/SJoPzIfMgTJVjPMp80BU6HK9ZWiykjcov7UibFqd9OAb/hbzTo
	 02w2rI+/oZM/9FvV4tFg8DgNOGIo438LRESCHy+xdUfXgegDc4FK6gwqbOM1S1KUfk
	 93rCTIQMZz7MV4r01diHmg33R/SlkevQOAMb86W1RWwkaeO63dCQN5tCYK1C+q17z/
	 GuvYkKdEKIKG/PsskcufS7cJyHu5gt6cbRS3bxgctjjxpKbilNfvy8YnhfdMXizSJf
	 Dz3Pdr5WXM7sA==
Date: Mon, 29 Jan 2024 16:16:47 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Thomas Richard <thomas.richard@bootlin.com>
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Andy Shevchenko <andy@kernel.org>, Tony Lindgren <tony@atomide.com>,
	Haojian Zhuang <haojian.zhuang@linaro.org>,
	Vignesh R <vigneshr@ti.com>, Aaro Koskinen <aaro.koskinen@iki.fi>,
	Janusz Krzysztofik <jmkrzyszt@gmail.com>,
	Andi Shyti <andi.shyti@kernel.org>, Peter Rosin <peda@axentia.se>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Tom Joseph <tjoseph@cadence.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org,
	linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-pci@vger.kernel.org, gregory.clement@bootlin.com,
	theo.lebrun@bootlin.com, thomas.petazzoni@bootlin.com,
	u-kumar1@ti.com
Subject: Re: [PATCH v2 13/15] PCI: cadence: add resume support to
 cdns_pcie_host_setup()
Message-ID: <20240129221647.GA477676@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240126214336.GA453589@bhelgaas>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240129_141653_106857_9549F1B6 
X-CRM114-Status: GOOD (  17.33  )
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

T24gRnJpLCBKYW4gMjYsIDIwMjQgYXQgMDM6NDM6MzlQTSAtMDYwMCwgQmpvcm4gSGVsZ2FhcyB3
cm90ZToKPiBJbiBzdWJqZWN0LCBjYXBpdGFsaXplICJBZGQgLi4uIiB0byBmb2xsb3cgaGlzdG9y
aWNhbCBjb252ZW50aW9uLgo+IEFsc28gdGhlIG90aGVyIGRyaXZlci9wY2kvIHBhdGNoZXMuCj4g
Cj4gT24gRnJpLCBKYW4gMjYsIDIwMjQgYXQgMDM6MzY6NTVQTSArMDEwMCwgVGhvbWFzIFJpY2hh
cmQgd3JvdGU6Cj4gPiBGcm9tOiBUaMOpbyBMZWJydW4gPHRoZW8ubGVicnVuQGJvb3RsaW4uY29t
Pgo+ID4gCj4gPiBUaGF0IGZ1bmN0aW9uIG1peGVzIHByb2JlIHN0cnVjdHVyZSBpbml0IGFuZCBo
YXJkd2FyZSBjb25maWcuCj4gPiBUaGUgd2hvbGUgaGFyZHdhcmUgY29uZmlnIHBhcnQgbXVzdCBi
ZSBkb25lIGF0IHJlc3VtZSBhZnRlciBhIHN1c3BlbmQgdG8KPiA+IHJhbS4KPiA+IFdlIHRoZXJl
Zm9yZSBwYXNzIGl0IGEgYm9vbGVhbiBmbGFnIGRldGVybWluaW5nIGlmIHdlIGFyZSBhdCBwcm9i
ZSBvciBhdAo+ID4gcmVzdW1lLgo+IC4uLgoKPiBUaGlzIGlzIHByZXR0eSBzaW1pbGFyIGJ1dCBz
bGlnaHRseSBkaWZmZXJlbnQgZnJvbSB0aGUgRFdDIHBhdHRlcm46Cj4gCj4gICBpbXg2X3BjaWVf
cHJvYmUKPiAgICAgLi4uIGRvIHN0cnVjdHVyZSBpbml0IC4uLgo+ICAgICBpZiAoUkMpCj4gICAg
ICAgZHdfcGNpZV9ob3N0X2luaXQKPiAJcHAtPm9wcy0+aW5pdAo+IAkgIGlteDZfcGNpZV9ob3N0
X2luaXQKPiAKPiAgIGlteDZfcGNpZV9yZXN1bWVfbm9pcnEKPiAgICAgaW14Nl9wY2llX2hvc3Rf
aW5pdAo+IAo+ICAgajcyMWVfcGNpZV9wcm9iZQo+ICAgICBqNzIxZV9wY2llX2N0cmxfaW5pdAo+
ICAgICBpZiAoUkMpCj4gICAgICAgY2Ruc19wY2llX2hvc3Rfc2V0dXAodHJ1ZSkKPiAKPiAgIGo3
MjFlX3BjaWVfcmVzdW1lX25vaXJxCj4gICAgIGo3MjFlX3BjaWVfY3RybF9pbml0Cj4gICAgIGlm
IChSQykKPiAgICAgICBjZG5zX3BjaWVfaG9zdF9zZXR1cChmYWxzZSkKPiAKPiBJdCdkIGJlIHN1
cGVyIG5pY2UgdG8gaGF2ZSB0aGVtIHRoZSBzYW1lLiAgUGFzc2luZyBpbiBhICJwcm9iZSIgZmxh
Zwo+IHdvcmtzIGJ1dCBzZWVtcyBhIGxpdHRsZSBoYXJkZXIgdG8gcmVhZCBpbiBjZG5zX3BjaWVf
aG9zdF9zZXR1cCgpIGFuZAo+IHlvdSBoYXZlIHRvIGtlZXAgdHJhY2sgb2Ygd2hhdCBpdCBtZWFu
cyBpbiB0aGUgY2FsbGVycy4KCk1heWJlIGEgYmV0dGVyIHdheSB0byBzYXkgdGhpcyBpcyB0aGF0
IHRoaXMgcGF0Y2ggdXNlcyB0aGUgInByb2JlIgpmbGFnIHRvIHNlbGVjdCB0aGUgYmVoYXZpb3Ig
b2YgY2Ruc19wY2llX2hvc3Rfc2V0dXAoKSwgYW5kIEkgdGhpbmsgaXQKd291bGQgYmUgbmljZXIg
dG8gc3BsaXQgdGhvc2UgdHdvIGJlaGF2aW9ycyBpbnRvIHNlcGFyYXRlIGZ1bmN0aW9ucy4KCkJq
b3JuCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK
