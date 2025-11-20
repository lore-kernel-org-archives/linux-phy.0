Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A662CF887B
	for <linux-phy@archiver.kernel.org>; Thu, 20 Nov 2025 16:39:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6MXMp2iwnElyGejDXxg25zT83eX7qZ3c48Hqd7pg28c=; b=Rs5ET6E4PQwQet
	Hbx2Iz4y1IIClODibWBBswYxEeg9asuqkOOfA5WVWCffgIhvFXZnlU55LqKJ/ZY306ifxmuTM38BM
	8AOvV7yQ1G6sHukRIcNWIJicTM8e7tBdb0OKLja9ko+gV6mVv8Yj2H+Bu66yVYB742EfilBXvZFLm
	BG0YLlFSFUwApmjtYP/VTkqusf3EhJwgGow1lQGW45t8vl3ib8OIQoaMaNHLD1rm8qBHps4LgkiZ4
	U8othQ4KVeTv66Ih3Kqftl0Hlvyemzmv0n36Hl1h6USWVQwU/95Q5Q1zpBqISmzxV1S2nz+oQiTZB
	1zfaaBRQ3PguAbH6XhNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM7gj-000000071xr-3JPm;
	Thu, 20 Nov 2025 16:39:17 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM7gg-000000071wF-3UL5;
	Thu, 20 Nov 2025 16:39:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 199B540313;
	Thu, 20 Nov 2025 16:39:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F08A7C116C6;
	Thu, 20 Nov 2025 16:39:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763656754;
	bh=BnOq3z51JqZJ8uQTHJFdAkzYEzpauy5TFsDbeB3BY4s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=V2kg0Tjj5QAKnndNOFZg5UC+/n0jys+8p9t5bz8p2y04vHxqxgOE2geeBodAahomQ
	 6m3d1+OMgwqwVvJImgdEJxg6I3jVlPT88OhSxZ93cPZtdsMP+msfK+1w3cGjTUH5Nv
	 KVXDDGdIK+t3KqYt6Q2bt2kY6nQrRG1SAVr2XiYmixARbV/XEroZo9xi4/Ag7AT0SJ
	 bSMR3ZrrUBkYF+RvU0I7zZpD2Aa96Em+gKXCZFEiXjNqiLkrPQxYJAxKRG/bx0AGZn
	 SfYsbZi5aoUPmDMmRb3KWQe8ti0Kl2mPqG4nN/orjZlqLPNlTDR71a2uEHdq723P1/
	 DQlMOgkh/0V3Q==
Date: Thu, 20 Nov 2025 16:39:04 +0000
From: Lee Jones <lee@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Jakub Kicinski <kuba@kernel.org>,
	Konstantin Ryabitsev <konstantin@linuxfoundation.org>,
	patchwork-bot+netdevbpf@kernel.org,
	Sjoerd Simons <sjoerd@collabora.com>, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, matthias.bgg@gmail.com,
	ryder.lee@mediatek.com, jianjun.wang@mediatek.com,
	bhelgaas@google.com, lpieralisi@kernel.org, kwilczynski@kernel.org,
	mani@kernel.org, chunfeng.yun@mediatek.com, vkoul@kernel.org,
	kishon@kernel.org, andrew+netdev@lunn.ch, davem@davemloft.net,
	edumazet@google.com, pabeni@redhat.com, lorenzo@kernel.org,
	nbd@nbd.name, kernel@collabora.com, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org, netdev@vger.kernel.org,
	daniel@makrotopia.org, bryan@bryanhinton.com,
	conor.dooley@microchip.com
Subject: Re: [PATCH v4 00/11] arm64: dts: mediatek: Add Openwrt One AP
 functionality
Message-ID: <20251120163904.GL661940@google.com>
References: <20251115-openwrt-one-network-v4-0-48cbda2969ac@collabora.com>
 <176360700676.1051457.11874224265724256534.git-patchwork-notify@kernel.org>
 <20251120152829.GH661940@google.com>
 <20251120073639.3fd7cc7c@kernel.org>
 <20251120154012.GJ661940@google.com>
 <20251120074457.5aa06d89@kernel.org>
 <c23d5d1e-4816-41c7-9886-41d586c84cc6@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c23d5d1e-4816-41c7-9886-41d586c84cc6@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251120_083914_909640_C90918D9 
X-CRM114-Status: GOOD (  14.42  )
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

T24gVGh1LCAyMCBOb3YgMjAyNSwgQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8gd3JvdGU6Cgo+
IElsIDIwLzExLzI1IDE2OjQ0LCBKYWt1YiBLaWNpbnNraSBoYSBzY3JpdHRvOgo+ID4gT24gVGh1
LCAyMCBOb3YgMjAyNSAxNTo0MDoxMiArMDAwMCBMZWUgSm9uZXMgd3JvdGU6Cj4gPiA+ID4gPiA+
ICAgIC0gW3Y0LDAyLzExXSBkdC1iaW5kaW5nczogUENJOiBtZWRpYXRlay1nZW4zOiBBZGQgTVQ3
OTgxIFBDSWUgY29tcGF0aWJsZQo+ID4gPiA+ID4gPiAgICAgIChubyBtYXRjaGluZyBjb21taXQp
Cj4gPiA+ID4gPiA+ICAgIC0gW3Y0LDAzLzExXSBkdC1iaW5kaW5nczogcGh5OiBtZWRpYXRlayx0
cGh5OiBBZGQgc3VwcG9ydCBmb3IgTVQ3OTgxCj4gPiA+ID4gPiA+ICAgICAgKG5vIG1hdGNoaW5n
IGNvbW1pdCkKPiA+ID4gPiA+ID4gICAgLSBbdjQsMDQvMTFdIGFybTY0OiBkdHM6IG1lZGlhdGVr
OiBtdDc5ODFiOiBBZGQgUENJZSBhbmQgVVNCIHN1cHBvcnQKPiA+ID4gPiA+ID4gICAgICAobm8g
bWF0Y2hpbmcgY29tbWl0KQo+ID4gPiA+ID4gPiAgICAtIFt2NCwwNS8xMV0gYXJtNjQ6IGR0czog
bWVkaWF0ZWs6IG10Nzk4MWItb3BlbndydC1vbmU6IEVuYWJsZSBQQ0llIGFuZCBVU0IKPiA+ID4g
PiA+ID4gICAgICAobm8gbWF0Y2hpbmcgY29tbWl0KQo+ID4gPiA+ID4gPiAgICAtIFt2NCwwNi8x
MV0gZHQtYmluZGluZ3M6IG5ldDogbWVkaWF0ZWssbmV0OiBDb3JyZWN0IGJpbmRpbmdzIGZvciBN
VDc5ODEKPiA+ID4gPiA+ID4gICAgICBodHRwczovL2dpdC5rZXJuZWwub3JnL25ldGRldi9uZXQt
bmV4dC9jL2JjNDFmYmJmNmZhYQo+ID4gPiA+ID4gPiAgICAtIFt2NCwwNy8xMV0gYXJtNjQ6IGR0
czogbWVkaWF0ZWs6IG10Nzk4MWI6IEFkZCBFdGhlcm5ldCBhbmQgV2lGaSBvZmZsb2FkIHN1cHBv
cnQKPiA+ID4gPiA+ID4gICAgICAobm8gbWF0Y2hpbmcgY29tbWl0KQo+ID4gPiA+ID4gPiAgICAt
IFt2NCwwOC8xMV0gYXJtNjQ6IGR0czogbWVkaWF0ZWs6IG10Nzk4MWItb3BlbndydC1vbmU6IEVu
YWJsZSBFdGhlcm5ldAo+ID4gPiA+ID4gPiAgICAgIChubyBtYXRjaGluZyBjb21taXQpCj4gPiA+
ID4gPiA+ICAgIC0gW3Y0LDA5LzExXSBhcm02NDogZHRzOiBtZWRpYXRlazogbXQ3OTgxYjogRGlz
YWJsZSB3aWZpIGJ5IGRlZmF1bHQKPiA+ID4gPiA+ID4gICAgICAobm8gbWF0Y2hpbmcgY29tbWl0
KQo+ID4gPiA+ID4gPiAgICAtIFt2NCwxMC8xMV0gYXJtNjQ6IGR0czogbWVkaWF0ZWs6IG10Nzk4
MWI6IEFkZCB3aWZpIG1lbW9yeSByZWdpb24KPiA+ID4gPiA+ID4gICAgICAobm8gbWF0Y2hpbmcg
Y29tbWl0KQo+ID4gPiA+ID4gPiAgICAtIFt2NCwxMS8xMV0gYXJtNjQ6IGR0czogbWVkaWF0ZWs6
IG10Nzk4MWItb3BlbndydC1vbmU6IEVuYWJsZSB3aWZpCj4gPiA+ID4gPiA+ICAgICAgKG5vIG1h
dGNoaW5nIGNvbW1pdCkKPiA+ID4gCj4gPiA+IFRoaXMgaXMgYSB2ZXJ5IG9kZCB3YXkgb2YgcHJl
c2VudGluZyB0aGF0IG9uZSBwYXRjaCBmcm9tIHRoZSBzZXQgd2FzIG1lcmdlZC4KPiA+ID4gCj4g
PiA+IE5vdCBzdXJlIEkndmUgc2VlbiB0aGlzIGJlZm9yZS4gIElzIGl0IG5ldz8KPiA+ID4gCj4g
PiA+IEl0J3MgdmVyeSBjb25mdXNpbmcuICBJcyBpdCBhIGNvcmUgUFcgdGhpbmcgYW5kIC8gb3Ig
Y2FuIGl0IGJlIGNvbmZpZ3VyZWQ/Cj4gPiAKPiA+IEl0J3Mgay5vcmcgaW5mcmEgYm90LiBLb25z
dGFudGluLCB3b3VsZCBpdCBiZSBwb3NzaWJsZSB0byBoaWdobGlnaHQKPiA+IG1vcmUgdGhhdCBh
IHNlcmllcyBpcyBwYXJ0aWFsbHkgYXBwbGllZD8KPiAKPiBJIGd1ZXNzIHRoYXQgYWRkaW5nICIo
c3Vic2V0KSIgbGlrZSBiNCBkb2VzIHdvdWxkIGltcHJvdmUgdGhvc2UgbWVzc2FnZXMgcXVpdGUK
PiBhIGxvdCA7LSkKClJpZ2h0LiAgT3IgYmV0dGVyIHN0aWxsLCBqdXN0IG9taXQgdGhlIG9uZXMg
dGhhdCB3ZXJlbid0IHRvdWNoZWQuCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dCgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
