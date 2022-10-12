Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8F77C433FE
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 08:36:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j4svkU+PTZcjpjvhfgMsPNnxWv2AlarGo4pVmoaSuL4=; b=1FDmlimgzlGc7A
	dXxz3aac+jPiYmXpbz6b5CL+z2chsJC+j74/X5xWG94Sy2VRIf3/SBWIOhpGhYRpAVUVlxWkVW7XC
	D03KbAXquZ6bRmWjuopQXcj6xt8VxVKHbrw6hrCrX182wetzf5PXTETn7Ukr5ku3y9I8etvCTES+q
	MKS6K2khaJ2yNAWAD4lWmodnICdn2cvr+kksnCDAMGto4eKSjI59aeqh5CV2w73w8R9KpucqnujPa
	K5f6lY5I5W9jRZqFv0uTaaOQD4fCmFP+kj02zHHwADYRDdy9pdaALTASj0LJfQCd4MkB8gEebpfGz
	onJ9Zd0XC1d8ZxVZFkvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiXEC-007MVJ-5X; Wed, 12 Oct 2022 08:36:36 +0000
Received: from sender4-op-o18.zoho.com ([136.143.188.18])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiXDq-007MS2-7Z; Wed, 12 Oct 2022 08:36:15 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1665563766; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=iTHb5+/Ton2ywbFeAnvcpWBaQqEtiYRUXopNwM3NU4LDYmlNiBucaN/rATHdzVmGSvyf0bJQG0KNtqjPDILtYTNbpVJt/IXWEFBJnSoe4RX/FMxNXTUaGjmAfmnoKszc+ppN7rg8thlcLQHN85gDV05u7jaOWUNS6/0lYkMToYM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1665563766; h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To; 
	bh=hHLT6AQP2FgyeTao9iTLVODR/49BzpgkuGb3Oh6vHCM=; 
	b=nUdhN6G6kJv9ZQ59wyEUpB5haqsvJfulLf/tMC/lxySpqIFS2G0blW406nirPEDoTNnVQwZoAb6LuMa8i4kl3I8qGenqIPQ+FQbITFgPjsSaiDpf0SMe7YLCSzujufaJoguuhVm7R94UMQBebkcSGbHNIsVhvFM61+R5DiDDZ+c=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=icenowy.me;
	spf=pass  smtp.mailfrom=uwu@icenowy.me;
	dmarc=pass header.from=<uwu@icenowy.me>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1665563766;
	s=zmail; d=icenowy.me; i=uwu@icenowy.me;
	h=Message-ID:Subject:Subject:From:From:To:To:Cc:Cc:Date:Date:In-Reply-To:References:Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Reply-To;
	bh=hHLT6AQP2FgyeTao9iTLVODR/49BzpgkuGb3Oh6vHCM=;
	b=VGT2kSxjtpnSpo+OnFer4DKWLYk6K17O7ACmBc931GymGnKLRy8VHgmyiG7WAkXX
	StBm47gXpGjXRyCEPVT7iIy6Va9Ggt/V3elUWSlfO3qoHj6x6HR9I/HeOwc7INMFI4V
	xEsg9b/UkybWd3RpURW0vnL3B3zlBcCRCO81mAZ4=
Received: from edelgard.fodlan.icenowy.me (112.94.102.144 [112.94.102.144]) by mx.zohomail.com
	with SMTPS id 1665563765635216.59596370853365; Wed, 12 Oct 2022 01:36:05 -0700 (PDT)
Message-ID: <695a13341db63965a22799dd78698751ed95448c.camel@icenowy.me>
Subject: Re: [PATCH v2 01/10] mailmap: update Icenowy Zheng's mail address
From: Icenowy Zheng <uwu@icenowy.me>
To: Arnd Bergmann <arnd@arndb.de>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Chen-Yu Tsai
 <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland
 <samuel@sholland.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andre Przywara <andre.przywara@arm.com>
Cc: soc@kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org,  linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev,  linux-phy@lists.infradead.org,
 linux-usb@vger.kernel.org
Date: Wed, 12 Oct 2022 16:35:59 +0800
In-Reply-To: <60a2cb70-bde4-4423-9a54-7abc1ba466f8@app.fastmail.com>
References: <20221012055602.1544944-1-uwu@icenowy.me>
	 <20221012055602.1544944-2-uwu@icenowy.me>
	 <60a2cb70-bde4-4423-9a54-7abc1ba466f8@app.fastmail.com>
Organization: Anthon Open-Source Community
User-Agent: Evolution 3.44.4 
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_013614_348997_AA5FD790 
X-CRM114-Status: GOOD (  16.88  )
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

5ZyoIDIwMjItMTAtMTLmmJ/mnJ/kuInnmoQgMTA6MzEgKzAyMDDvvIxBcm5kIEJlcmdtYW5u5YaZ
6YGT77yaCj4gT24gV2VkLCBPY3QgMTIsIDIwMjIsIGF0IDc6NTUgQU0sIEljZW5vd3kgWmhlbmcg
d3JvdGU6Cj4gPiBEdWUgdG8gdGhlIFNNVFAgcHJvdmlkZXIgYWRvcHRlZCBieSBBT1NDIGFwcGxp
ZWQgc29tZSBtb3JlCj4gPiByZXN0cmljdGVkCj4gPiByYXRlIGxpbWl0IHRoYXQgaXMgbm90IHN1
aXRhYmxlIGZvciBzZW5kaW5nIGtlcm5lbCBwYXRjaGVzLCBJCj4gPiBzd2l0Y2hlZAo+ID4gdG8g
YSBtYWlsYm94IGhvc3RlZCBvbiBteSBvd24gZG9tYWluIG5hbWUgbm93LiBJbiBhZGRpdGlvbiwg
dGhlcmUncwo+ID4gYQo+ID4gc2luZ2xlIGNvbW1pdCB0aGF0IGlzIHB1c2hlZCB0byB0aGUgbWFp
bmxpbmUga2VybmVsIHRyZWUgZHVyaW5nIG15Cj4gPiBpbnRlcm5zaGlwIGF0IFNpcGVlZCB0aGUg
bGFzdCB5ZWFyLgo+ID4gCj4gPiBNYXAgdHdvIEFPU0MgbWFpbCBhZGRyZXNzZXMgKGJvdGggYW9z
Yy5pbyBhbmQgYW9zYy54eXogZG9tYWluCj4gPiBuYW1lcykgYW5kCj4gPiBhIGRlZnVuY3QgU2lw
ZWVkIG1haWwgYWRkcmVzcyB0byB0aGUgbmV3IG1haWwgYWRkcmVzcy4KPiA+IAo+ID4gU2lnbmVk
LW9mZi1ieTogSWNlbm93eSBaaGVuZyA8dXd1QGljZW5vd3kubWU+Cj4gCj4gSSBkb24ndCBzZWUg
YSBwYXRjaCBmb3IgdXBkYXRpbmcgdGhlIE1BSU5UQUlORVJTIGZpbGUgaGVyZSwgaWYgeW91Cj4g
aGF2ZW4ndCBhbHJlYWR5IHNlbnQgdGhhdCBhbm90aGVyIHdheSwgeW91IHNob3VsZCBwcm9iYWJs
eSBjaGFuZ2UKPiBib3RoIGF0IHRoZSBzYW1lIHRpbWUuCgpHb29kIHBvaW50LiBJZiB0aGlzIHBh
dGNoc2V0IGlzIGdvaW5nIHRvIGhhdmUgYSB2MywgSSB3aWxsIGNvbnRhaW4gaXQKdGhlcmU7IG90
aGVyd2lzZSBJIHdpbGwgaW5kZXBlbmRlbnRseSBzZW5kIGl0LgoKPiAKPiBBcyBhIGRyaXZlciBt
YWludGFpbmVyLCB5b3UgY2FuIGFsc28gYXBwbHkgZm9yIGEga2VybmVsLm9yZyBhY2NvdW50Cj4g
W2h0dHBzOi8va29yZy5kb2NzLmtlcm5lbC5vcmcvYWNjb3VudHMuaHRtbF0gYW5kIHVzZSB0aGF0
IGZvcgo+IHNlbmRpbmcgcGF0Y2hlcyBhbmQgZm9yd2FyZGluZyB0byBhbm90aGVyIGFkZHJlc3Mu
CgpXZWxsIEkgYW0gaW4gQ2hpbmEgbm93IGFuZCBub3Qgc28gZWFzeSB0byBnZXQgbXkgUEdQIGtl
eSBzaWduZWQuLi4KCj4gCj4gwqDCoMKgwqAgQXJuZAoKCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
