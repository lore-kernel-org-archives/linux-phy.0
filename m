Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA94DC48297
	for <linux-phy@archiver.kernel.org>; Fri,  9 Feb 2024 07:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dr/HJH1pqqn0gXbqubMAXZMfgOcTdZ15+Rnb4oBzu/M=; b=O/FOEf3pl597xx
	SfdZWJhAx1X1onCjziSxP779OcOJ3hhZH8M88S37eedamygpUr624F5nyOQg2JEFM2wd8NdxjD7Gz
	UaWIZsB8j8S82PLRauHEAJzlhTt6UWjo2emnZpOr91hdFYB3OEhH+Uzykqve46mzYWYveypReLW8Q
	ZJFQtFokCNAqeeKETr90fHbcB9Vpe+hzgAKcrn+z3HUl6Vih4GNuMTQEwc1t21OufWeHbTwn/jtm3
	tWmyu+Vvsr/lnEJllgGa6YizReXbanZIeaLgd9usdctwRA2KOpIqgsHDTPWUz3OlcWsGxNPtqZHWv
	7WZ/bKJAoMCqK2AJ1ADg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYLZ7-0000000GMzD-1Pua;
	Fri, 09 Feb 2024 07:44:53 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYLZ3-0000000GMxT-0grD;
	Fri, 09 Feb 2024 07:44:51 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 7E24360005;
	Fri,  9 Feb 2024 07:44:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1707464684;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=G/yGVB4S9XN8g+AahJ4UZsgKIptGOzEicK0dEzXmeqk=;
	b=HL/3DDgqSUW2klhjMqzXqFo7d0LD8T34GKYdq81YEKyfDizBqYpkX52LFNRh01hZJS8Fsf
	lR8gcJtio9GhiFtcV/qaUaiK3gTh7xmD0LzKhHKE/kt58Qj7GXSD5YUzVwkOIGNBT7QfLH
	MipYb28nCPctAC/gwP31mBynW2l4eSaIJz1xOhAeEzQN2H0wP9h4BbnGs0vvVFgbAnNkjQ
	5wEBdtxtaKZ1DDo7jr8AuQ9ogx7G1jLcMQCHkbTi+rRT7cYsoghyxBaUeaOx+R6YL4oUto
	/8h9N1v0LXUuYd2cUb1TCZeJ0iVAFiXXqCNVau0M5jAJm1QI/geiGugZ6mnnoA==
Message-ID: <68d4a1bb-5b40-47fe-a117-647d77009b43@bootlin.com>
Date: Fri, 9 Feb 2024 08:44:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/14] gpio: pca953x: move suspend/resume to
 suspend_noirq/resume_noirq
Content-Language: en-US
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Tony Lindgren <tony@atomide.com>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Andy Shevchenko <andy@kernel.org>, Haojian Zhuang
 <haojian.zhuang@linaro.org>, Vignesh R <vigneshr@ti.com>,
 Aaro Koskinen <aaro.koskinen@iki.fi>,
 Janusz Krzysztofik <jmkrzyszt@gmail.com>, Andi Shyti
 <andi.shyti@kernel.org>, Peter Rosin <peda@axentia.se>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Tom Joseph <tjoseph@cadence.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org,
 linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-pci@vger.kernel.org, gregory.clement@bootlin.com,
 theo.lebrun@bootlin.com, thomas.petazzoni@bootlin.com, u-kumar1@ti.com
References: <20240102-j7200-pcie-s2r-v1-0-84e55da52400@bootlin.com>
 <20240102-j7200-pcie-s2r-v1-1-84e55da52400@bootlin.com>
 <20240116074333.GO5185@atomide.com>
 <31c42f08-7d5e-4b91-87e9-bfc7e2cfdefe@bootlin.com>
 <CACRpkdYUVbFoDq91uLbUy8twtG_AiD+CY2+nqzCyHV7ZyBC3sA@mail.gmail.com>
 <95032042-787e-494a-bad9-81b62653de52@bootlin.com>
 <CACRpkdY2wiw1zH8FsEv7S1FW044PBSXpLPqanF5yyH1R4oteEA@mail.gmail.com>
From: Thomas Richard <thomas.richard@bootlin.com>
In-Reply-To: <CACRpkdY2wiw1zH8FsEv7S1FW044PBSXpLPqanF5yyH1R4oteEA@mail.gmail.com>
X-GND-Sasl: thomas.richard@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240208_234449_493104_F51273C8 
X-CRM114-Status: GOOD (  13.68  )
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

T24gMi84LzI0IDIyOjI5LCBMaW51cyBXYWxsZWlqIHdyb3RlOgo+IE9uIFRodSwgRmViIDgsIDIw
MjQgYXQgNToxOeKAr1BNIFRob21hcyBSaWNoYXJkCj4gPHRob21hcy5yaWNoYXJkQGJvb3RsaW4u
Y29tPiB3cm90ZToKPj4gT24gMS8yOC8yNCAwMToxMiwgTGludXMgV2FsbGVpaiB3cm90ZToKPiAK
Pj4+IEkgZ3Vlc3MgeW91IGNvdWxkIGRlZmluZSBib3RoIHBjYTk1M3hfc3VzcGVuZCgpIGFuZAo+
Pj4gcGNhOTUzeF9zdXNwZW5kX25vaXJxKCkgYW5kIHNlbGVjdGl2ZWx5IGJhaWwgb3V0IG9uIG9u
ZQo+Pj4gcGF0aCBvbiBzb21lIHN5c3RlbXM/Cj4+Cj4+IFllcy4KPj4KPj4gV2hhdCBkbyB5b3Ug
dGhpbmsgaWYgSSB1c2UgYSBwcm9wZXJ0eSBsaWtlIGZvciBleGFtcGxlICJ0aSxwbS1ub2lycSIg
dG8KPj4gc2VsZWN0IHRoZSByaWdodCBwYXRoID8KPj4gSXMgYSBwcm9wZXJ0eSByZWxldmFudCBm
b3IgdGhpcyB1c2UgY2FzZSA/Cj4gCj4gVGhhdCdzIGEgTGludXgtc3BlY2lmaWMgcHJvcGVydHkg
YW5kIHRoYXQncyB1c2VsZXNzIGZvciBvdGhlciBvcGVyYXRpbmcKPiBzeXN0ZW1zIGFuZCBub3Qg
bm9ybWFsbHkgYWxsb3dlZC4gUE0gbm9pcnEgaXMganVzdCBzb21lIExpbnV4IHRoaW5nLgo+IAo+
ICpGSVJTVCogd2Ugc2hvdWxkIGNoZWNrIGlmIHB1dHRpbmcgdGhlIGNhbGxiYWNrcyB0byBub2ly
cSBpcyBmaW5lIHdpdGgKPiBvdGhlciBzeXN0ZW1zIHRvbywgYW5kIEkgZG9uJ3Qgc2VlIHdoeSBu
b3QuIFBlcmhhcHMgd2UgbmVlZCB0byBldmVuCj4gbWVyZ2UgaXQgaWYgd2UgZG9uJ3QgZ2V0IGFu
eSB0ZXN0IHJlc3VsdHMuCj4gCj4gSWYgaXQgZG9lc24ndCB3b3JrIHdlIGNhbiB0aGluayBvZiBv
dGhlciBvcHRpb25zLgoKSSB0aGluayBhbGwgc3lzdGVtcyB1c2luZyBhIGkyYyBjb250cm9sbGVy
IHdoaWNoIHVzZXMgYXV0b3N1c3BlbmQgc2hvdWxkCmJlIGltcGFjdGVkLgpJIGd1ZXNzIGEgcGF0
Y2ggKGxpa2UgSSBkaWQgaW4gdGhpcyBzZXJpZXMgZm9yIGkyYy1vbWFwIFsxXSkgc2hvdWxkIGJl
CmFwcGxpZWQgZm9yIGFsbCBpMmMgY29udHJvbGxlciB3aGljaCB1c2UgYXV0b3N1c3BlbmQuCgpb
MV0KaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsL2hxbnh5ZmZkc2lxejV0NDNiZXhjcXJ3bXlu
cGp1YnhiempjaGphYWd4ZWNzbzc1ZGM3QHk3bHpub3Z4ZzNnby8KClJlZ2FyZHMsCgotLSAKVGhv
bWFzIFJpY2hhcmQsIEJvb3RsaW4KRW1iZWRkZWQgTGludXggYW5kIEtlcm5lbCBlbmdpbmVlcmlu
ZwpodHRwczovL2Jvb3RsaW4uY29tCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==
