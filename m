Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 684D1C83F1D
	for <linux-phy@archiver.kernel.org>; Tue, 15 Jul 2025 10:36:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eVOjJLdZ3dxZm8wtx/ABLWHKa/srdSyGrGlJQXWNS7Y=; b=p9Bo2B4Ba9xefc
	0lCw0gAaozAuv6/n2PYIuEGpS/SKpcDnQCn4tijD4nW0HRMt/QzPSVDD2A+QH4ODbdt2EhyiQxtPr
	XSEwuqhIWnKB05EJ6XzN08gyBVG7GISA88PefgObZIg4QY3ONtWUbn9r4UfO6aLpPYSVNgXLulcOF
	3Q9D0TzEfiyd2De9S+rWMF7nb1XoaSpUPDuIzOhoq8B5hQQxnsNknLtGfUS9b5wR8e0giRHaj+MyS
	f8YhlCyOo0g7EvC2hEGTTGMquJbuCAsfiKdVvZZT4ilV5lWwUU38dsLFhd70DEcmHBPQjUDYw6qcd
	9adVa3Ee8GY7OU2dq9VQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubd12-00000004qtH-04jF;
	Tue, 15 Jul 2025 10:36:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubd0y-00000004qsj-0YUs;
	Tue, 15 Jul 2025 10:36:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=cIPn1JdmQUBAudYGWKwQBBR2ZjhtmhuYOGeF5hB/XP8=; b=14TGwTJ8i2Mh5u5WG7VtC3VE23
	YFqP6TUaqtH3GFuLFFL7UrSspk3fVBByN4gsW70nMbjqCUovWeMbDyltzB83dS1IFVG0m5945ngjZ
	BuVB1Rp76b99J3JpEGR0olUIaAY5UQ30wjwa/ZzUKuYS1mVSnc+Iq3NRN8l5YhXceZxAC8UjvwM0v
	TTy+p+lGttVM88UHbqHNGYjTSjirYsOWteKkcFBBVVMcy3Vq1hqz8zd+5bwb87Dw8Id9bHxyOwHkI
	7xdQg6RmqEDmq93oMFMXrbUZBMUNl1n/Iv9Dcpbc9o39WGUCsEXeE12Tw588LxpqE5vN0oqN7tQLs
	2L81kG0A==;
Received: from [194.95.143.137] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ubd0o-00009u-Be; Tue, 15 Jul 2025 12:35:50 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
 John Keeping <jkeeping@inmusicbrands.com>
Cc: John Keeping <jkeeping@inmusicbrands.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, linux-usb@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [RFC/PATCH 2/2] phy: rockchip: usbdp: implement .set_mode
Date: Tue, 15 Jul 2025 12:35:47 +0200
Message-ID: <3981131.iZASKD2KPV@phil>
In-Reply-To: <20250710152252.2532020-3-jkeeping@inmusicbrands.com>
References: <20250710152252.2532020-1-jkeeping@inmusicbrands.com>
 <20250710152252.2532020-3-jkeeping@inmusicbrands.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250715_033600_377078_BD99B157 
X-CRM114-Status: GOOD (  21.30  )
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

SGkgSm9obiwKCkFtIERvbm5lcnN0YWcsIDEwLiBKdWxpIDIwMjUsIDE3OjIyOjUwIE1pdHRlbGV1
cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgSm9obiBLZWVwaW5nOgo+IFdoZW4gdGhlIG9y
aWVudGF0aW9uIG9mIGEgdHlwZSBDIGNhYmxlIGNoYW5nZXMsIHVzYmRwIHNldCB0aGUgbmV3Cj4g
Y29uZmlndXJhdGlvbiBpbiBpdHMgaW50ZXJuYWwgc3RhdGUgYnV0IGRvZXMgbm90IHdyaXRlIHRo
aXMgdG8gdGhlCj4gaGFyZHdhcmUuCj4gCj4gTWFrZSB1c2Ugb2YgcGh5X29wczo6c2V0X21vZGUg
dG8gd3JpdGUgdGhpcyBuZXcgc3RhdGUuICBUaGlzIHNob3VsZCBiZQo+IGNhbGxlZCBieSB0aGUg
VVNCIGNvbnRyb2xsZXIgd2hlbiBpdCBpcyBub3RpZmllZCBvZiBhIHJvbGUgY2hhbmdlCj4gKGFz
c3VtaW5nIGl0IGlzIGFjdGluZyBhcyB0aGUgcm9sZSBzd2l0Y2gpIGFuZCB3aWxsIGJlIGNhbGxl
ZCBhdCBhIHBvaW50Cj4gd2hlbiB0aGUgY29udHJvbGxlciBkb2VzIG5vdCBleHBlY3QgdGhlIHBo
eSB0byBiZSBvcGVyYXRpbmcgbm9ybWFsbHkuCj4gCj4gU2lnbmVkLW9mZi1ieTogSm9obiBLZWVw
aW5nIDxqa2VlcGluZ0Bpbm11c2ljYnJhbmRzLmNvbT4KCndpdGggdGhlIGNvbW1lbnRzIGZyb20g
T25kcmVqIGluIFswXSB0aGUgd2hvbGUgdGhpbmcgc2VlbXMgdG8gYmUKc2xpZ2h0bHkgbW9yZSBj
b21wbGV4CgoKWzBdIGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9saW51eC1h
cm0ta2VybmVsL3BhdGNoLzIwMjUwMjI1MTg0NTE5LjM1ODY5MjYtMy1oZWlrb0BzbnRlY2guZGUv
Cgo+IC0tLQo+ICBkcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYyB8IDE0
ICsrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspCj4gCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jIGIv
ZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMKPiBpbmRleCBjMDY2Y2Mw
YTdiNGYxLi4wMDM2OGZiMDkzMDdhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3JvY2tjaGlw
L3BoeS1yb2NrY2hpcC11c2JkcC5jCj4gKysrIGIvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJv
Y2tjaGlwLXVzYmRwLmMKPiBAQCAtMTMzNSw5ICsxMzM1LDIzIEBAIHN0YXRpYyBpbnQgcmtfdWRw
aHlfdXNiM19waHlfZXhpdChzdHJ1Y3QgcGh5ICpwaHkpCj4gIAlyZXR1cm4gMDsKPiAgfQo+ICAK
PiArc3RhdGljIGludCBya191ZHBoeV91c2IzX3BoeV9zZXRfbW9kZShzdHJ1Y3QgcGh5ICpwaHks
IGVudW0gcGh5X21vZGUgbW9kZSwgaW50IHN1Ym1vZGUpCj4gK3sKPiArCXN0cnVjdCBya191ZHBo
eSAqdWRwaHkgPSBwaHlfZ2V0X2RydmRhdGEocGh5KTsKPiArCWludCByZXQgPSAwOwo+ICsKPiAr
CW11dGV4X2xvY2soJnVkcGh5LT5tdXRleCk7Cj4gKwlpZiAodWRwaHktPm1vZGUgIT0gVURQSFlf
TU9ERV9OT05FKQo+ICsJCXJldCA9IHJrX3VkcGh5X2luaXQodWRwaHkpOwo+ICsJbXV0ZXhfdW5s
b2NrKCZ1ZHBoeS0+bXV0ZXgpOwo+ICsKPiArCXJldHVybiByZXQ7Cj4gK30KPiArCj4gIHN0YXRp
YyBjb25zdCBzdHJ1Y3QgcGh5X29wcyBya191ZHBoeV91c2IzX3BoeV9vcHMgPSB7Cj4gIAkuaW5p
dAkJPSBya191ZHBoeV91c2IzX3BoeV9pbml0LAo+ICAJLmV4aXQJCT0gcmtfdWRwaHlfdXNiM19w
aHlfZXhpdCwKPiArCS5zZXRfbW9kZQk9IHJrX3VkcGh5X3VzYjNfcGh5X3NldF9tb2RlLAo+ICAJ
Lm93bmVyCQk9IFRISVNfTU9EVUxFLAo+ICB9Owo+ICAKPiAKCgoKCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
