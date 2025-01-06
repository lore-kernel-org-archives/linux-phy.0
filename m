Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1F7DE77188
	for <linux-phy@archiver.kernel.org>; Mon,  6 Jan 2025 22:07:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JTv6ui78xdFR7rDBJEFeu9Vh4MaUbUcPhBDwRGNOBHw=; b=ifBa8JODK6NY3e
	3oZot7f3gEZmQYmFm29o/+9soZOc49ZY7c44mmtBxbo5OH47W43NLJZX6Vk9h50/RHjK+j3zuXI4j
	kXeV6HCNC0Mvbwyu6p2t0DDjCWguuJ59WD+KJROjGou55+f1I7z7gdip4SUt/migLtgqqPiN/x10p
	6Sx8MbRsiVzTcN4KpjkwdguPHFW5hsKLvTKcdgeADP3udFIwiAxOebFZlCu4cpEYAHBQav4fbhf3t
	2Qjqxd8Txvz2HVDi6gZlEjO8RRphVwFUlBtg2lloRSUADIB4Iq+LFWAvl//HCiu9/0mFb76dxxKcR
	KJIx8PMpQKJEXLtKy6lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUvFV-00000002pEe-398K;
	Mon, 06 Jan 2025 22:07:01 +0000
Received: from smtp-74.smtpout.orange.fr ([80.12.242.74] helo=smtp.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUvEG-00000002p0U-0V1X;
	Mon, 06 Jan 2025 22:05:45 +0000
Received: from [192.168.1.37] ([90.11.132.44])
	by smtp.orange.fr with ESMTPA
	id UvE7ty6bJwCcpUvEAtVKJD; Mon, 06 Jan 2025 23:05:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
	s=t20230301; t=1736201141;
	bh=F3HtqhqXFvoyrIC6n47ISNYPNgplPpn301HvMRip+UY=;
	h=Message-ID:Date:MIME-Version:Subject:To:From;
	b=DCvdT4N4Zwqo/GPGO50yTqMrwTvthCy0KkJhtWye/JdWSp2bomz9KkT5PBD7YNnNa
	 jNNINI0+BhYWLeDnHM5q3X0jUHT2wuVKJ6mezSOfqP1fAJhBP3mGN/mfW/wvS01jln
	 kinKSXgCwb4KWt9rdRbx0Lw/MeRd+0Ix+stZ1/4zXQC7xUBcYyeBs+LjU4dRiYSaxB
	 PcghP05LBVofudikxGv2e8U4Fzmhd99XwiVgtsbeMBVKGocM29iIE62QvR77sdm05X
	 3bGEM747Y1YmvWcXNt0hUyDj+lxH0L54c7N+2ETA1b1PgIpYSwS563f0w4GzW6mSfq
	 n+uLASIoXsxfQ==
X-ME-Helo: [192.168.1.37]
X-ME-Auth: bWFyaW9uLmphaWxsZXRAd2FuYWRvby5mcg==
X-ME-Date: Mon, 06 Jan 2025 23:05:41 +0100
X-ME-IP: 90.11.132.44
Message-ID: <24498c4e-c517-46b9-8d0c-ff1e3a308228@wanadoo.fr>
Date: Mon, 6 Jan 2025 23:05:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] phy: cadence-torrent: Add PCIe multilink + USB
 with same SSC register config for 100 MHz refclk
To: Siddharth Vadapalli <s-vadapalli@ti.com>, vkoul@kernel.org,
 kishon@kernel.org, sjakhade@cadence.com, rogerq@kernel.org,
 thomas.richard@bootlin.com, u.kleine-koenig@baylibre.com, eballetb@redhat.com
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, srk@ti.com
References: <20250106131925.263240-1-s-vadapalli@ti.com>
 <20250106131925.263240-3-s-vadapalli@ti.com>
Content-Language: en-US, fr-FR
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
In-Reply-To: <20250106131925.263240-3-s-vadapalli@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_140544_428882_1E6EE2C4 
X-CRM114-Status: GOOD (  16.46  )
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

TGUgMDYvMDEvMjAyNSDDoCAxNDoxOSwgU2lkZGhhcnRoIFZhZGFwYWxsaSBhIMOpY3JpdMKgOgo+
IEZyb206IFN3YXBuaWwgSmFraGFkZSA8c2pha2hhZGVAY2FkZW5jZS5jb20+Cj4gCj4gQWRkIHJl
Z2lzdGVyIHNlcXVlbmNlcyBhbmQgc3VwcG9ydCBmb3IgUENJZSBtdWx0aWxpbmsgKyBVU0IgY29u
ZmlndXJhdGlvbgo+IGZvciAxMDBNSHogcmVmZXJlbmNlIGNsb2NrLiBUaGUgc2FtZSBTU0MgaXMg
dXNlZCBmb3IgYm90aCBQQ0llIGFuZCBVU0IuCj4gCj4gU2lnbmVkLW9mZi1ieTogU3dhcG5pbCBK
YWtoYWRlIDxzamFraGFkZUBjYWRlbmNlLmNvbT4KPiBDby1kZXZlbG9wZWQtYnk6IFNpZGRoYXJ0
aCBWYWRhcGFsbGkgPHMtdmFkYXBhbGxpQHRpLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBTaWRkaGFy
dGggVmFkYXBhbGxpIDxzLXZhZGFwYWxsaUB0aS5jb20+Cj4gLS0tCi4uLgoKPiBAQCAtMjUxMyw2
ICsyNTE3LDQ0IEBAIGludCBjZG5zX3RvcnJlbnRfcGh5X2NvbmZpZ3VyZV9tdWx0aWxpbmsoc3Ry
dWN0IGNkbnNfdG9ycmVudF9waHkgKmNkbnNfcGh5KQo+ICAgCj4gICAJCXBoeV90MSA9IGZucyhj
ZG5zX3BoeS0+cHJvdG9jb2xfYml0bWFzaywgMCk7Cj4gICAJCXBoeV90MiA9IGZucyhjZG5zX3Bo
eS0+cHJvdG9jb2xfYml0bWFzaywgMSk7Cj4gKwo+ICsJCS8qKgoKV2h5IGtlcm5lbC1kb2MgbGlr
ZSBzdGFydCBvZiBjb21tZW50PwpPbmx5IC8qID8KCj4gKwkJICogUENJZSBNdWx0aWxpbmsgY29u
ZmlndXJhdGlvbiBjYW4gYmUgc3VwcG9ydGVkIGFsb25nIHdpdGggYQo+ICsJCSAqIG5vbi1QQ0ll
IHByb3RvY29sLiBUaGUgZXhpc3RpbmcgbGltaXRhdGlvbiBhc3NvY2lhdGVkIHdpdGgKPiArCQkg
KiB0aGUgc3RhbmRhbG9uZSBQQ0llIE11bHRpbGluayBjb25maWd1cmF0aW9uIHN0aWxsIHJlbWFp
bnMsCj4gKwkJICogaW1wbHlpbmcgdGhhdCB0aGVyZSBjYW4gYmUgb25seSB0d28gbGlua3MgKHN1
Ym5vZGVzKSBvZiB0aGUKPiArCQkgKiBQSFkgdHlwZSBQQ0llIHdoaWNoIGNvbnN0aXR1dGUgdGhl
IFBDSWUgTXVsdGlsaW5rLgo+ICsJCSAqCj4gKwkJICogU3VjaCBjb25maWd1cmF0aW9ucyBhcmUg
aGFuZGxlZCBieSBpbnRyb2R1Y2luZyBhIG5ldyBwcm90b2NvbAo+ICsJCSAqIG5hbWVseSBUWVBF
X1BDSUVfTUwuIEJvdGggb2YgdGhlIFBDSWUgbGlua3Mgd2hpY2ggaGF2ZSB0aGUKPiArCQkgKiBw
cm90b2NvbCBhcyBUWVBFX1BDSUUgc2hhbGwgYmUgdHJlYXRlZCBhcyB0aG91Z2ggdGhlIHByb3Rv
Y29sCj4gKwkJICogY29ycmVzcG9uZGluZyB0byB0aGVtIGlzIFRZUEVfUENJRV9NTCBvbmx5IGZv
ciB0aGUgc2FrZSBvZgo+ICsJCSAqIGNvbmZpZ3VyaW5nIHRoZSBTRVJERVMuCj4gKwkJICoKPiAr
CQkgKiBQQ0llIE11bHRpbGluayBjb25maWd1cmF0aW9uIGNhbiBiZSBpZGVudGlmaWVkIGJ5IGNo
ZWNraW5nIGlmCj4gKwkJICogdGhlcmUgYXJlIGV4YWN0bHkgdHdvIGxpbmtzIHdpdGggcGh5X3R5
cGUgc2V0IHRvIFRZUEVfUENJRS4KPiArCQkgKiBwaHlfdDEgYW5kIHBoeV90MiBhcmUgbW9kaWZp
ZWQgaW4gc3VjaCBjYXNlcyB0byBzdXBwb3J0IHRoZQo+ICsJCSAqIFBDSWUgTXVsdGlsaW5rIGNv
bmZpZ3VyYXRpb24gd2l0aCBhIG5vbi1QQ0llIHByb3RvY29sLgo+ICsJCSAqLwouLi4KCj4gQEAg
LTMxMzQsNiArMzE4MCwzNyBAQCBzdGF0aWMgdm9pZCBjZG5zX3RvcnJlbnRfcGh5X3JlbW92ZShz
dHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAgCWNkbnNfdG9ycmVudF9jbGtfY2xlYW51
cChjZG5zX3BoeSk7Cj4gICB9Cj4gICAKPiArLyogTXVsdGlsaW5rIFBDSWUgYW5kIFVTQiBTYW1l
IFNTQyBsaW5rIGNvbmZpZ3VyYXRpb24gKi8KPiArc3RhdGljIHN0cnVjdCBjZG5zX3JlZ19wYWly
cyBtbF9wY2llX3VzYl9saW5rX2Ntbl9yZWdzW10gPSB7Cj4gKwl7MHgwMDAyLCBQSFlfUExMX0NG
R30sCj4gKwl7MHg4NjAwLCBDTU5fUERJQUdfUExMMF9DTEtfU0VMX00wfQo+ICt9OwoKTWF5YmUg
Y29uc3QgY291bGQgYmUgYWRkZWQgaGVyZSBhbmQgYmVsb3c/Cgo+ICsKPiArc3RhdGljIHN0cnVj
dCBjZG5zX3JlZ19wYWlycyBtbF9wY2llX3VzYl94Y3ZyX2RpYWdfbG5fcmVnc1tdID0gewo+ICsJ
ezB4MDEwMCwgWENWUl9ESUFHX0hTQ0xLX1NFTH0sCj4gKwl7MHgwMDEzLCBYQ1ZSX0RJQUdfSFND
TEtfRElWfSwKPiArCXsweDA4MTIsIFhDVlJfRElBR19QTExEUkNfQ1RSTH0KPiArfTsKCi4uLgoK
Q0oKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
