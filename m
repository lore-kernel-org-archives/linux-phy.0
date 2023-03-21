Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E431C6FD1D
	for <linux-phy@archiver.kernel.org>; Tue, 21 Mar 2023 08:27:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p8U0WkiC92/WZYP1yFqA72dlIH9Ka9+zrTE4kijNSWc=; b=F61WvxOU1+A6QZ
	3ugTHbzzCz42L8BsdXoHffobbeHZIfsbTMHJwNIPa12DlMA3NEUsS8mSIk277Cv9aWkmwer7qf3y4
	QLJRFhyefJl0SdC0l/kOouKlPBBDjkQVDaj0qfofWShnsO7aK4BvfykNr6jCZdMFqbirBWxdidDv0
	SYDK0Wn+ehhP+0kYVgyFBOSr5hXxb0/jtw/aPYnIq5WqtnsoCsPFD4dj8HseJuKXEVavtYAwkT5Hs
	0F7/IVk4F6GF+iJ0REjnuAcafZuhpCr8b8/RbBG84/jP0/WWYBKE2VjHuM8nJbrzAf/z2ZK8NPdcx
	SUQCDBmIBYx6Ylz6X1mQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peXKo-00Bfp7-0F;
	Tue, 21 Mar 2023 08:27:10 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peXKk-00BfoE-2J
	for linux-phy@lists.infradead.org;
	Tue, 21 Mar 2023 08:27:08 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9511661A1D;
	Tue, 21 Mar 2023 08:27:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D1B79C433EF;
	Tue, 21 Mar 2023 08:27:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679387225;
	bh=G8XymTXPHbxOnstyG63Kd2jgHhH5dsTlu9HPkRT19pw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tefxz2aFJsJSJAT9m2sxqO7z2PEBl56vSqPhmfiqxPVQQPuSX3hM9bwVWsUfBUbUV
	 SN6w+Tb/vnoTpcHujhSOStnaApNS4VpEmgCNZ3oR72owoz5kYDnnFe/tydRB0rUNEX
	 qamTvhKJA+FpyKbFOSzTV6ffMagjaw4JjCbDRMqPpGaM80RGOoNsRaXqvad0fjGnel
	 kqLiqpg3nmO8RwbGwSGC6gDf6HcIuMdJpLxFuxwImT/ePCfGrMf3iPXyHfdPJHEskq
	 GwBn7US73vVmOCe+1hL+JHJhm61brMjUu4/7bhOrOYUq+gMYjRx2f7OEOe5pK0JEI4
	 C+O56sU2uY5IA==
Date: Tue, 21 Mar 2023 08:26:58 +0000
From: Lee Jones <lee@kernel.org>
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: Vinod Koul <vkoul@kernel.org>,
	Colin Foster <colin.foster@in-advantage.com>,
	linux-phy@lists.infradead.org, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>, Jakub Kicinski <kuba@kernel.org>,
	Eric Dumazet <edumazet@google.com>,
	"David S. Miller" <davem@davemloft.net>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Andrew Lunn <andrew@lunn.ch>, UNGLinuxDriver@microchip.com,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Manoil <claudiu.manoil@nxp.com>,
	Vladimir Oltean <vladimir.oltean@nxp.com>
Subject: Re: [PATCH v2 net-next 1/9] phy: phy-ocelot-serdes: add ability to
 be used in a non-syscon configuration
Message-ID: <20230321082658.GD2673958@google.com>
References: <20230317185415.2000564-1-colin.foster@in-advantage.com>
 <20230317185415.2000564-2-colin.foster@in-advantage.com>
 <ZBgeKM50e1vt+ho1@matsya>
 <ZBgmXplfA/Q3/1dC@shell.armlinux.org.uk>
 <20230320133431.GB2673958@google.com>
 <ZBhtOw4Ftj3Sa3JU@shell.armlinux.org.uk>
 <20230320164136.GC2673958@google.com>
 <ZBiRFNAqd94tbEJ9@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZBiRFNAqd94tbEJ9@shell.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230321_012706_829989_05BFCB76 
X-CRM114-Status: GOOD (  24.02  )
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

T24gTW9uLCAyMCBNYXIgMjAyMywgUnVzc2VsbCBLaW5nIChPcmFjbGUpIHdyb3RlOgoKPiBPbiBN
b24sIE1hciAyMCwgMjAyMyBhdCAwNDo0MTozNlBNICswMDAwLCBMZWUgSm9uZXMgd3JvdGU6Cj4g
PiBPbiBNb24sIDIwIE1hciAyMDIzLCBSdXNzZWxsIEtpbmcgKE9yYWNsZSkgd3JvdGU6Cj4gPgo+
ID4gPiBPbiBNb24sIE1hciAyMCwgMjAyMyBhdCAwMTozNDozMVBNICswMDAwLCBMZWUgSm9uZXMg
d3JvdGU6Cj4gPiA+ID4gT25jZSBhZ2FpbiBuZXRkZXYgc2VlbXMgdG8gaGF2ZSBhcHBsaWVkIHBh
dGNoZXMgZnJvbSBvdGhlciBzdWJzeXN0ZW1zCj4gPiA+ID4gd2l0aG91dCByZXZpZXcvYWNrLiAg
V2hhdCBtYWtlcyBuZXRkZXYgZGlmZmVyZW50IHRvIGFueSBvdGhlciBrZXJuZWwKPiA+ID4gPiBz
dWJzeXN0ZW0/ICBXaGF0IHdvdWxkIGhhcHBlbiBpZiBvdGhlciByYW5kb20gbWFpbnRhaW5lcnMg
c3RhcnRlZAo+ID4gPiA+IGFwcGx5aW5nIG5ldGRldiBwYXRjaGVzIHdpdGhvdXQgYXBwcm9wcmlh
dGUgcmV2aWV3PyAgSSBzdXNwZWN0IHNvbWVvbmUKPiA+ID4gPiB3b3VsZCBiZWNvbWUgdW5kZXJz
dGFuZGFibHkgZ3J1bXB5Lgo+ID4gPgo+ID4gPiBXaHkgYWdhaW4gYXJlIHlvdSBhZGRyZXNzaW5n
IHlvdXIgd2hpbmdlIHRvIG1lPyBJJ20gbm90IG9uZSBvZiB0aGUKPiA+ID4gbmV0ZGV2IG1haW50
YWluZXJzLCBidXQgSSd2ZSBwb2ludGVkIG91dCB3aGF0IGhhcHBlbnMgaW4gbmV0ZGV2Cj4gPiA+
IGxhbmQuIEhvd2V2ZXIsIHlvdSBzZWVtIHRvICpub3QqIHdhbnQgdG8gZGlzY3VzcyBpdCBkaXJl
Y3RseSB3aXRoCj4gPiA+IERhdmVNL0pha3ViL1Bhb2xvIC0gYXMgaWxsdXN0cmF0ZWQgYWdhaW4g
d2l0aCB5ZXQgYW5vdGhlciByZXNwb25zZQo+ID4gPiB0byAqbWUqIHJhdGhlciB0aGFuIGFkZHJl
c3NpbmcgeW91ciBjb25jZXJucyAqdG8qIHRoZSBwZW9wbGUgd2hvCj4gPiA+IHlvdSBoYXZlIGFu
IGlzc3VlIHdpdGguCj4gPiA+Cj4gPiA+IFRoaXMgaXMgbm90IGNvbW11bmljYXRpb24uIEVmZmVj
dGl2ZWx5LCB0aGlzIGlzIHNuaXBpbmcsIGJlY2F1c2UKPiA+ID4gcmF0aGVyIHRoYW4gZGlzY3Vz
c2luZyBpdCB3aXRoIHRoZSBpbmRpdmlkdWFscyBjb25jZXJuZWQsIHlvdSBhcmUKPiA+ID4gaW5z
dGVhZCBwcmVmZXJyaW5nIHRvIGRpc2N1c3MgaXQgd2l0aCBvdGhlcnMuCj4gPiA+Cj4gPiA+IFBs
ZWFzZSBzdG9wIHRoaXMuCj4gPgo+ID4gUmVhZCB0aGUgYWJvdmUgcGFyYWdyYXBoIGFnYWluLgo+
Cj4gWW91IHNlbnQgeW91ciBlbWFpbCBfVE9fIG1lLCB0aGF0IG1lYW5zIHlvdSBhZGRyZXNzZWQg
eW91ciBjb21tZW50cwo+IHByaW1hcmlseSBfdG9fIG1lLiBSRkMyODIyOgo+Cj4gICAgVGhlICJU
bzoiIGZpZWxkIGNvbnRhaW5zIHRoZSBhZGRyZXNzKGVzKSBvZiB0aGUgcHJpbWFyeSByZWNpcGll
bnQocykKPiAgICBvZiB0aGUgbWVzc2FnZS4KPgo+ICAgIFRoZSAiQ2M6IiBmaWVsZCAod2hlcmUg
dGhlICJDYyIgbWVhbnMgIkNhcmJvbiBDb3B5IiBpbiB0aGUgc2Vuc2Ugb2YKPiAgICBtYWtpbmcg
YSBjb3B5IG9uIGEgdHlwZXdyaXRlciB1c2luZyBjYXJib24gcGFwZXIpIGNvbnRhaW5zIHRoZQo+
ICAgIGFkZHJlc3NlcyBvZiBvdGhlcnMgd2hvIGFyZSB0byByZWNlaXZlIHRoZSBtZXNzYWdlLCB0
aG91Z2ggdGhlCj4gICAgY29udGVudCBvZiB0aGUgbWVzc2FnZSBtYXkgbm90IGJlIGRpcmVjdGVk
IGF0IHRoZW0uCgpZb3UncmUgb3Zlci10aGlua2luZyBpdC4gIEkgcmVwbGllZCB0byBhbGwuCgot
LQpMZWUgSm9uZXMgW+adjueQvOaWr10KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
