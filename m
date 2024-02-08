Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1533C4828F
	for <linux-phy@archiver.kernel.org>; Thu,  8 Feb 2024 16:19:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AHufhtzw0QdZTuPQs1BueD4+EXz3+iwIsWlhJdxraD8=; b=tM+DebB9x01Tn/
	5lApwg/DkODQ5vTTIqjiwpGUyoTb3s0QfCWZsHXkDZkRW90ae648EvJAoRU4R2qDAfcdZl1xBjMjF
	pZ96yEJZB6vygSGzqCsyEoBNsHN4zSoce9+lbF1PWVYqxokdIvH7e01D5cHfaQWybruP6eRiYvGOE
	mxVWx/2E5PRvgtMohXg2Fy9Lj4Y6vtqjUKu1Np3JgRRIn8jCpAviN0ugxxt00lUxFElk56SodBlTV
	llYEwjojRtNcLNo9ZvWYANx9Eat503mamYkjxe9i74pHjcU2aiXCMVN/t7BLVcX6L8sQKV6KiXSxQ
	PQR1b8WTNxvbDaIDhbRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rY77g-0000000EHrO-2ID2;
	Thu, 08 Feb 2024 16:19:36 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rY77c-0000000EHqZ-0ggu;
	Thu, 08 Feb 2024 16:19:33 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 1ECA340004;
	Thu,  8 Feb 2024 16:19:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1707409168;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=U2TLPkr/TOdJMNowIWx3rjtlSXIwzGhq1RSaqhd7JXE=;
	b=QNqfu+SyJHYhyGlvwAZsb9NUhHgTVxE3ArJ09CQwC/vdWPX0zKeI6EiZWzY9kjfvj8COxc
	RbVvS+FPBwH6mVflj/a+xeG6nBzagrBVOnxsuU1P4ftNAozaKHz6E94P7KM+5I5Xt+irc2
	wVoDH5jtXIVQgw7ZR3xpEG3vNPmPUv+EgoX/4Oq0rFASzSzplEiqpIioYDlta0lHCcr6DQ
	WXWQ8BNt0m5cWKAP8ne7CScpygoxdJgtMpDfKE6ZJMiuRBWU55NuCOj/AtC3kEzTZ/ZJRq
	Ie5Ym+Lj8MKHGPDFZBwc5YwnluGyQkVPvx03Mn35D4XW7GHaAPo7708x1Ks4VQ==
Message-ID: <95032042-787e-494a-bad9-81b62653de52@bootlin.com>
Date: Thu, 8 Feb 2024 17:19:25 +0100
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
From: Thomas Richard <thomas.richard@bootlin.com>
In-Reply-To: <CACRpkdYUVbFoDq91uLbUy8twtG_AiD+CY2+nqzCyHV7ZyBC3sA@mail.gmail.com>
X-GND-Sasl: thomas.richard@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240208_081932_361340_6C07649B 
X-CRM114-Status: GOOD (  12.81  )
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

T24gMS8yOC8yNCAwMToxMiwgTGludXMgV2FsbGVpaiB3cm90ZToKPiBPbiBGcmksIEphbiAxOSwg
MjAyNCBhdCA2OjAx4oCvUE0gVGhvbWFzIFJpY2hhcmQKPiA8dGhvbWFzLnJpY2hhcmRAYm9vdGxp
bi5jb20+IHdyb3RlOgo+PiBPbiAxLzE2LzI0IDA4OjQzLCBUb255IExpbmRncmVuIHdyb3RlOgo+
Pj4gKiBUaG9tYXMgUmljaGFyZCA8dGhvbWFzLnJpY2hhcmRAYm9vdGxpbi5jb20+IFsyNDAxMTUg
MTY6MTZdOgo+Pj4+IFNvbWUgSU9zIGNhbiBiZSBuZWVkZWQgZHVyaW5nIHN1c3BlbmRfbm9pcnEv
cmVzdW1lX25vaXJxLgo+Pj4+IFNvIG1vdmUgc3VzcGVuZC9yZXN1bWUgY2FsbGJhY2tzIHRvIG5v
aXJxLgo+Pj4KPj4+IFNvIGhhdmUgeW91IGNoZWNrZWQgdGhhdCB0aGUgcGNhOTUzeF9zYXZlX2Nv
bnRleHQoKSBhbmQgcmVzdG9yZSB3b3Jrcwo+Pj4gdGhpcyB3YXk/IFRoZXJlJ3MgaTJjIHRyYWZm
aWMgYW5kIHJlZ3VsYXRvcnMgbWF5IHNsZWVwLi4gSSB3b25kZXIgaWYKPj4+IHlvdSBpbnN0ZWFk
IGp1c3QgbmVlZCB0byBsZWF2ZSBncGlvLXBjYTk1M3ggZW5hYmxlZCBpbiBzb21lIGNhc2VzCj4+
PiBpbnN0ZWFkPwo+Pj4KPj4KPj4gWWVzIEkgdGVzdGVkIGl0LCBhbmQgaXQgd29ya3MgKHdpdGgg
bXkgc2V0dXApLgo+PiBCdXQgdGhpcyBwYXRjaCBtYXkgaGF2ZSBhbiBpbXBhY3QgZm9yIG90aGVy
IHBlb3BsZS4KPj4gSG93IGNvdWxkIEkgbGVhdmUgaXQgZW5hYmxlZCBpbiBzb21lIGNhc2VzID8K
PiAKPiBJIGd1ZXNzIHlvdSBjb3VsZCBkZWZpbmUgYm90aCBwY2E5NTN4X3N1c3BlbmQoKSBhbmQK
PiBwY2E5NTN4X3N1c3BlbmRfbm9pcnEoKSBhbmQgc2VsZWN0aXZlbHkgYmFpbCBvdXQgb24gb25l
Cj4gcGF0aCBvbiBzb21lIHN5c3RlbXM/CgpZZXMuCgpXaGF0IGRvIHlvdSB0aGluayBpZiBJIHVz
ZSBhIHByb3BlcnR5IGxpa2UgZm9yIGV4YW1wbGUgInRpLHBtLW5vaXJxIiB0bwpzZWxlY3QgdGhl
IHJpZ2h0IHBhdGggPwpJcyBhIHByb3BlcnR5IHJlbGV2YW50IGZvciB0aGlzIHVzZSBjYXNlID8K
ClJlZ2FyZHMsCgo+IAo+IFdvcnN0IGNhc2UgdXNpbmcgaWYgKG9mX21hY2hpbmVfaXNfY29tcGF0
aWJsZSgibXksbWFjaGluZSIpKS4uLgo+IAo+IFlvdXJzLAo+IExpbnVzIFdhbGxlaWoKLS0gClRo
b21hcyBSaWNoYXJkLCBCb290bGluCkVtYmVkZGVkIExpbnV4IGFuZCBLZXJuZWwgZW5naW5lZXJp
bmcKaHR0cHM6Ly9ib290bGluLmNvbQoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
