Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12B20E77173
	for <linux-phy@archiver.kernel.org>; Fri,  6 Dec 2024 17:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1SZF7JO+bkrRUhCCJtS4Gphw7zBFMpL0wxCikPtDvxI=; b=LSd9xFs8GWEA40
	HNktx6KBqphJLrgNSf01n4v+BSpzboGArvHxYiioaMpy89hmGkmyBWDzYLNnSy18ubmoiIBGvWmIk
	PECm4NccTWXh6NCK1WEQdr4dEqZxLTnELG39AB5aLwMIBw5ER7jr8gYxP7mWnVd52o6w68X2bjRyt
	cJ014wYOhkkBfWjq96guUWTeYTV5DXozbm2ySIH72ubQ5lk62QqXtj5lnX1vAByyq3zHcMcoMZAv3
	waxDGwmhwBGyt1oKXD8LcLqhtPxCwskzW3genc3A7ZNesx8UqTXzAdz3CEptIxorzn1E7f/Oul5qI
	lxecvltyj+Fj8Sg6U58Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJcYv-00000002Osw-2F94;
	Fri, 06 Dec 2024 17:56:21 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJcXX-00000002OjG-3yWH;
	Fri, 06 Dec 2024 17:54:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1733507692;
	bh=nQDvlQxYe4jehSwcFykn5ppWSMSEf/GkFb7QmH9D0uc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=XXqaqVzj0/ntiUpR9BzunQyfF7MDb6HwPnXr+cbB6M6+XhWHl81G0cXsMe+OyMrJ5
	 YEnrK0VuK9JgrhDoYyshWF8aE6XQr/WpOye+Yl2GpuM83cyx3UE1BvJnqQybn8slyB
	 DMhqrRts1Mf6RoYNIzY/EbDqpb0VEKhSZA0Ks6kZ8+NQPmh5QIhjkyYdpA+xPBsE7z
	 SA8JP/b+yV4MWkLxRxkahg6YF4TJuQKE94URcm9DO8sl6TxS50rGuoElpvPHySptKV
	 SM/zljXYl9sox62rExqncHtUmiA7/VYcAwoUQQo5rAxO/ji+gZk778ut2K5yMJeRyZ
	 Cve9K6MapYkMw==
Received: from [192.168.1.90] (unknown [188.27.48.199])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id DE65017E37C2;
	Fri,  6 Dec 2024 18:54:51 +0100 (CET)
Message-ID: <7081d3ec-1a7f-48d9-a20d-7518445ed5bd@collabora.com>
Date: Fri, 6 Dec 2024 19:54:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] phy: phy-rockchip-samsung-hdptx: annotate regmap
 register-callback
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, vkoul@kernel.org,
 kishon@kernel.org
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 quentin.schulz@cherry.de, Heiko Stuebner <heiko.stuebner@cherry.de>
References: <20241206103401.1780416-1-heiko@sntech.de>
 <20241206103401.1780416-2-heiko@sntech.de>
 <e6172204-2f3f-4a9c-892c-be85d19ad031@collabora.com>
 <2287157.Dhsi8hcfAM@diego>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <2287157.Dhsi8hcfAM@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241206_095456_132881_BDF855D4 
X-CRM114-Status: GOOD (  11.67  )
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

T24gMTIvNi8yNCA3OjM2IFBNLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiBBbSBGcmVpdGFnLCA2
LiBEZXplbWJlciAyMDI0LCAxMjoxODo1NiBDRVQgc2NocmllYiBDcmlzdGlhbiBDaW9jYWx0ZWE6
Cj4+IE9uIDEyLzYvMjQgMTI6MzQgUE0sIEhlaWtvIFN0dWVibmVyIHdyb3RlOgo+Pj4gRnJvbTog
SGVpa28gU3R1ZWJuZXIgPGhlaWtvLnN0dWVibmVyQGNoZXJyeS5kZT4KPj4+Cj4+PiBUaGUgdmFy
aWFudCBvZiB0aGUgZHJpdmVyIGluIHRoZSB2ZW5kb3ItdHJlZSBjb250YWluZWQgdGhvc2UgaGFu
ZHkKPj4+IGNvbW1lbnRzIGluIHRoZSByZWdtYXAgcmVnaXN0ZXIgY2FsbGJhY2suIEhhdmluZyB0
aGUgZGlmZmVyZW50IHJhbmdlcwo+Pj4gZGVzY3JpYmUgd2hhdCB0aGV5IGFyZSBsb29rcyBoZWxw
ZnVsLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrby5zdHVlYm5l
ckBjaGVycnkuZGU+Cj4+PiAtLS0KPj4+ICBkcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2No
aXAtc2Ftc3VuZy1oZHB0eC5jIHwgMTQgKysrKysrKy0tLS0tLS0KPj4+ICAxIGZpbGUgY2hhbmdl
ZCwgNyBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtc2Ftc3VuZy1oZHB0eC5jIGIvZHJpdmVy
cy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXNhbXN1bmctaGRwdHguYwo+Pj4gaW5kZXggNGNl
ZDE0NzllMmRjLi5jNWM2NGMyMDllOTYgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL3BoeS9yb2Nr
Y2hpcC9waHktcm9ja2NoaXAtc2Ftc3VuZy1oZHB0eC5jCj4+PiArKysgYi9kcml2ZXJzL3BoeS9y
b2NrY2hpcC9waHktcm9ja2NoaXAtc2Ftc3VuZy1oZHB0eC5jCj4+PiBAQCAtNzY2LDEzICs3NjYs
MTMgQEAgc3RhdGljIHN0cnVjdCB0eF9kcnZfY3RybCB0eF9kcnZfY3RybF9oYnIyWzRdWzRdID0g
ewo+Pj4gIHN0YXRpYyBib29sIHJrX2hkcHR4X3BoeV9pc19yd19yZWcoc3RydWN0IGRldmljZSAq
ZGV2LCB1bnNpZ25lZCBpbnQgcmVnKQo+Pj4gIHsKPj4+ICAJc3dpdGNoIChyZWcpIHsKPj4+IC0J
Y2FzZSAweDAwMDAgLi4uIDB4MDI5YzoKPj4+IC0JY2FzZSAweDA0MDAgLi4uIDB4MDRhNDoKPj4+
IC0JY2FzZSAweDA4MDAgLi4uIDB4MDhhNDoKPj4+IC0JY2FzZSAweDBjMDAgLi4uIDB4MGNiNDoK
Pj4+IC0JY2FzZSAweDEwMDAgLi4uIDB4MTBiNDoKPj4+IC0JY2FzZSAweDE0MDAgLi4uIDB4MTRi
NDoKPj4+IC0JY2FzZSAweDE4MDAgLi4uIDB4MThiNDoKPj4+ICsJY2FzZSAweDAwMDAgLi4uIDB4
MDI5YzogLyogQ01OIFJlZ2lzdGVyICovCj4+PiArCWNhc2UgMHgwNDAwIC4uLiAweDA0YTQ6IC8q
IFNpZGViYW5kIFJlZ2lzdGVyICovCj4+PiArCWNhc2UgMHgwODAwIC4uLiAweDA4YTQ6IC8qIExh
bmUgVG9wIFJlZ2lzdGVyICovCj4+PiArCWNhc2UgMHgwYzAwIC4uLiAweDBjYjQ6IC8qIExhbmUg
MCBSZWdpc3RlciAqLwo+Pj4gKwljYXNlIDB4MTAwMCAuLi4gMHgxMGI0OiAvKiBMYW5lIDEgUmVn
aXN0ZXIgKi8KPj4+ICsJY2FzZSAweDE0MDAgLi4uIDB4MTRiNDogLyogTGFuZSAyIFJlZ2lzdGVy
ICovCj4+PiArCWNhc2UgMHgxODAwIC4uLiAweDE4YjQ6IC8qIExhbmUgMyBSZWdpc3RlciAqLwo+
Pj4gIAkJcmV0dXJuIHRydWU7Cj4+PiAgCX0KPj4+ICAKPj4KPj4gTmljZSBmaW5kaW5nISAgVGhl
IEhETUkgdmFyaWFudCBvZiB0aGUgZHJpdmVyIHdoaWNoIEkgdXNlZCBhcyBhbgo+PiBpbXBsZW1l
bnRhdGlvbiByZWZlcmVuY2UgKGkuZS4gcGh5LXJvY2tjaGlwLXNhbXN1bmctaGRwdHgtaGRtaS5j
KQo+PiBkb2Vzbid0IHByb3ZpZGUgdGhlc2UgY29tbWVudHMuCj4gCj4geWVwLCB0aG9zZSBjb21t
ZW50cyB3ZXJlIGluIHRoZSBkaXNwbGF5cG9ydCB2YXJpYW50IG9mIHRoZSBwaHktZHJpdmVyIDst
KSAuCj4gSSBkb24ndCByZWFsbHkgdW5kZXJzdGFuZCB3aHkgdGhlIHZlbmRvciB0cmVlIGNvbnRh
aW5zIDIgc2VwYXJhdGUgZHJpdmVycwoKWWVhaCwgSSBhc2tlZCBteXNlbGYgdGhlIHNhbWUgcXVl
c3Rpb24gYSB3aGlsZSBhZ28gLSBJJ2QgYXNzdW1lIHRoZQooaW5pdGlhbCkgZGV2ZWxvcG1lbnQg
aGFwcGVuZWQgaW4gcGFyYWxsZWwsIGJ1dCB0aGUgZmluYWwgc3luYy9tZXJnZSB3YXMKbmV2ZXIg
ZG9uZS4KCj4gd3JpdHRlbiBieSB0d28gZGlmZmVyZW50IHBlb3BsZSwgYnV0IGF0IGxlYXN0IGl0
IGxvb2tzIGxpa2Ugd2UncmUgZ2V0dGluZwo+IG9uZSBkcml2ZXIgaW4gbWFpbmxpbmUsIHRoYW5r
cyB0byBEYW1vbidzIHdvcmsgOi0pCgpJbmRlZWQsIHdlJ3JlIGV2ZW50dWFsbHkgZ2V0dGluZyB0
aGVyZS4uIDotKQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
