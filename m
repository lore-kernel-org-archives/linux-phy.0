Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60799C6FD1D
	for <linux-phy@archiver.kernel.org>; Tue, 21 Mar 2023 11:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ceBcj3u1vE5iEj/wFXYMQpphhgW+gJn4iY6TUsXX9IE=; b=N7nuukLr2VpI0c
	crSPNHWv88M9jZZAFvRJS9NxQdEfQmFrlhA5rL0cfPZHfMIrWM0+eZbSyd4/QxWrDGZU/qJLhrepL
	8g+Y6n83uJALf3wp/cH1Tbmwb6kGLNkED4FhjRTaUoYE2O1INtPV4n+uySvpHiIUv3LEQm29zVUmK
	z/OuCBabKzkaObX+V0wH/RehEme8gPHaIX2MWC6paWU+Jp+BaF80HHn4phRi+du48ijMIIxiRs4v0
	ZcY+An+gTTalVKkpJu3cz9bUt9kWn9x8TUTXExPrHWr/zpIXqcTXx1G1Nv58ikNkT9CwKwbkMj5ak
	O9l9JkZ479PXUDkSBSog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peZrU-00C8jS-17;
	Tue, 21 Mar 2023 11:09:04 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peZrQ-00C8gu-0H
	for linux-phy@lists.infradead.org;
	Tue, 21 Mar 2023 11:09:02 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 97ACBB8154D;
	Tue, 21 Mar 2023 11:08:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E578C4339B;
	Tue, 21 Mar 2023 11:08:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679396938;
	bh=eAh4O5TJC7P39EsTl/gsgUoov6t1KcRALqt3RF1g6Ro=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Q8iqoqHDe4CbT58GaOHoJS7wv4QqC9fPzYmHyVFvBrf8ZvNWii/fg2x05VeRflFCS
	 heShQjzgGKdnddXMJM0f3dOuniTUasMLaVpARSygoDoFLgLpOTcUU9+8enxiR6Qb77
	 s4ZsOARP1OqFUFsayzm1wUDb8DfCpDv7U94fxY0k4y4nwQg7IpsWXQ56uKXgC7SQ1v
	 ui1kWqf7HZ2mDUxy8wPj5oD1TialWuzvJlH0u1oixz1Wp7aWKfbBlLu0FEG4MgT+GT
	 qnjZNXo0BhBdc0Tnw4zexO3O69OXMpbgz+cCec9EFwCS62xevAHjnBZpZ2/9ima07Y
	 6SdX62MKLTtTg==
Date: Tue, 21 Mar 2023 11:08:51 +0000
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
Message-ID: <20230321110851.GE2673958@google.com>
References: <20230317185415.2000564-1-colin.foster@in-advantage.com>
 <20230317185415.2000564-2-colin.foster@in-advantage.com>
 <ZBgeKM50e1vt+ho1@matsya>
 <ZBgmXplfA/Q3/1dC@shell.armlinux.org.uk>
 <20230320133431.GB2673958@google.com>
 <ZBhtOw4Ftj3Sa3JU@shell.armlinux.org.uk>
 <20230320164136.GC2673958@google.com>
 <ZBiRFNAqd94tbEJ9@shell.armlinux.org.uk>
 <20230321082658.GD2673958@google.com>
 <ZBmD+7pinpTzayep@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZBmD+7pinpTzayep@shell.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230321_040900_408416_BD406227 
X-CRM114-Status: GOOD (  30.86  )
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

T24gVHVlLCAyMSBNYXIgMjAyMywgUnVzc2VsbCBLaW5nIChPcmFjbGUpIHdyb3RlOgoKPiBPbiBU
dWUsIE1hciAyMSwgMjAyMyBhdCAwODoyNjo1OEFNICswMDAwLCBMZWUgSm9uZXMgd3JvdGU6Cj4g
PiBPbiBNb24sIDIwIE1hciAyMDIzLCBSdXNzZWxsIEtpbmcgKE9yYWNsZSkgd3JvdGU6Cj4gPgo+
ID4gPiBPbiBNb24sIE1hciAyMCwgMjAyMyBhdCAwNDo0MTozNlBNICswMDAwLCBMZWUgSm9uZXMg
d3JvdGU6Cj4gPiA+ID4gT24gTW9uLCAyMCBNYXIgMjAyMywgUnVzc2VsbCBLaW5nIChPcmFjbGUp
IHdyb3RlOgo+ID4gPiA+Cj4gPiA+ID4gPiBPbiBNb24sIE1hciAyMCwgMjAyMyBhdCAwMTozNDoz
MVBNICswMDAwLCBMZWUgSm9uZXMgd3JvdGU6Cj4gPiA+ID4gPiA+IE9uY2UgYWdhaW4gbmV0ZGV2
IHNlZW1zIHRvIGhhdmUgYXBwbGllZCBwYXRjaGVzIGZyb20gb3RoZXIgc3Vic3lzdGVtcwo+ID4g
PiA+ID4gPiB3aXRob3V0IHJldmlldy9hY2suICBXaGF0IG1ha2VzIG5ldGRldiBkaWZmZXJlbnQg
dG8gYW55IG90aGVyIGtlcm5lbAo+ID4gPiA+ID4gPiBzdWJzeXN0ZW0/ICBXaGF0IHdvdWxkIGhh
cHBlbiBpZiBvdGhlciByYW5kb20gbWFpbnRhaW5lcnMgc3RhcnRlZAo+ID4gPiA+ID4gPiBhcHBs
eWluZyBuZXRkZXYgcGF0Y2hlcyB3aXRob3V0IGFwcHJvcHJpYXRlIHJldmlldz8gIEkgc3VzcGVj
dCBzb21lb25lCj4gPiA+ID4gPiA+IHdvdWxkIGJlY29tZSB1bmRlcnN0YW5kYWJseSBncnVtcHku
Cj4gPiA+ID4gPgo+ID4gPiA+ID4gV2h5IGFnYWluIGFyZSB5b3UgYWRkcmVzc2luZyB5b3VyIHdo
aW5nZSB0byBtZT8gSSdtIG5vdCBvbmUgb2YgdGhlCj4gPiA+ID4gPiBuZXRkZXYgbWFpbnRhaW5l
cnMsIGJ1dCBJJ3ZlIHBvaW50ZWQgb3V0IHdoYXQgaGFwcGVucyBpbiBuZXRkZXYKPiA+ID4gPiA+
IGxhbmQuIEhvd2V2ZXIsIHlvdSBzZWVtIHRvICpub3QqIHdhbnQgdG8gZGlzY3VzcyBpdCBkaXJl
Y3RseSB3aXRoCj4gPiA+ID4gPiBEYXZlTS9KYWt1Yi9QYW9sbyAtIGFzIGlsbHVzdHJhdGVkIGFn
YWluIHdpdGggeWV0IGFub3RoZXIgcmVzcG9uc2UKPiA+ID4gPiA+IHRvICptZSogcmF0aGVyIHRo
YW4gYWRkcmVzc2luZyB5b3VyIGNvbmNlcm5zICp0byogdGhlIHBlb3BsZSB3aG8KPiA+ID4gPiA+
IHlvdSBoYXZlIGFuIGlzc3VlIHdpdGguCj4gPiA+ID4gPgo+ID4gPiA+ID4gVGhpcyBpcyBub3Qg
Y29tbXVuaWNhdGlvbi4gRWZmZWN0aXZlbHksIHRoaXMgaXMgc25pcGluZywgYmVjYXVzZQo+ID4g
PiA+ID4gcmF0aGVyIHRoYW4gZGlzY3Vzc2luZyBpdCB3aXRoIHRoZSBpbmRpdmlkdWFscyBjb25j
ZXJuZWQsIHlvdSBhcmUKPiA+ID4gPiA+IGluc3RlYWQgcHJlZmVycmluZyB0byBkaXNjdXNzIGl0
IHdpdGggb3RoZXJzLgo+ID4gPiA+ID4KPiA+ID4gPiA+IFBsZWFzZSBzdG9wIHRoaXMuCj4gPiA+
ID4KPiA+ID4gPiBSZWFkIHRoZSBhYm92ZSBwYXJhZ3JhcGggYWdhaW4uCj4gPiA+Cj4gPiA+IFlv
dSBzZW50IHlvdXIgZW1haWwgX1RPXyBtZSwgdGhhdCBtZWFucyB5b3UgYWRkcmVzc2VkIHlvdXIg
Y29tbWVudHMKPiA+ID4gcHJpbWFyaWx5IF90b18gbWUuIFJGQzI4MjI6Cj4gPiA+Cj4gPiA+ICAg
IFRoZSAiVG86IiBmaWVsZCBjb250YWlucyB0aGUgYWRkcmVzcyhlcykgb2YgdGhlIHByaW1hcnkg
cmVjaXBpZW50KHMpCj4gPiA+ICAgIG9mIHRoZSBtZXNzYWdlLgo+ID4gPgo+ID4gPiAgICBUaGUg
IkNjOiIgZmllbGQgKHdoZXJlIHRoZSAiQ2MiIG1lYW5zICJDYXJib24gQ29weSIgaW4gdGhlIHNl
bnNlIG9mCj4gPiA+ICAgIG1ha2luZyBhIGNvcHkgb24gYSB0eXBld3JpdGVyIHVzaW5nIGNhcmJv
biBwYXBlcikgY29udGFpbnMgdGhlCj4gPiA+ICAgIGFkZHJlc3NlcyBvZiBvdGhlcnMgd2hvIGFy
ZSB0byByZWNlaXZlIHRoZSBtZXNzYWdlLCB0aG91Z2ggdGhlCj4gPiA+ICAgIGNvbnRlbnQgb2Yg
dGhlIG1lc3NhZ2UgbWF5IG5vdCBiZSBkaXJlY3RlZCBhdCB0aGVtLgo+ID4KPiA+IFlvdSdyZSBv
dmVyLXRoaW5raW5nIGl0LiAgSSByZXBsaWVkIHRvIGFsbC4KPgo+IEkndmUgYmVlbiB0aGlua2lu
ZyBhYm91dCB0aGlzIGVudGlyZSBzaXR1YXRpb24gYW5kIHRoZXJlJ3Mgc29tZXRoaW5nCj4gdGhh
dCBzdW1tYXJpc2VzIGl0LiBLZXR0bGUuIFBvdC4gQmxhY2suCj4KPiBZb3UgY29tcGxhaW4gYWJv
dXQgaG93IG5ldGRldiBpcyBydW4sIGJ1dCB5b3UgYWxzbyBjb21wbGFpbiBhYm91dCBob3cKPiBw
ZW9wbGUgaW50ZXJwcmV0IHlvdXIgZW1haWxzLgo+Cj4gU29ycnksIGJ1dCBuby4gSSB0aGluayB5
b3UgbmVlZCB0byBiZSBtb3JlIGFjY29tb2RhdGluZyB0b3dhcmRzIGhvdwo+IG90aGVycyBwZXJj
ZWl2ZSB5b3VyIGVtYWlscywgZXNwZWNpYWxseSB3aGVuIHRoZXJlIGFyZSB3aWRlc3ByZWFkCj4g
YWNjZXB0ZWQgY29udmVudGlvbnMuIFRoZSBmYWN0IHRoYXQgeW91IGFyZSBzZWVtaW5nbHkgbm90
IGV2ZW4gd2lsbGluZwo+IHRvIGVudGVydGFpbiB0aGF0IHNvbWVvbmUgX21pZ2h0XyBpbnRlcnBy
ZXQgeW91ciBlbWFpbHMgYWNjb3JkaW5nIHRvCj4gc3RhbmRhcmQgbm9ybWFscyBpcyBmcmFua2x5
IGEgcHJvYmxlbSBmb3IgeW91LgoKVGhpcyBjb252ZXJzaW9uIGhhcyBnb25lIGNvbXBsZXRlbHkg
b2ZmLXRyYWNrLgoKSWYgeW91IHdpc2ggdG8gY29udGludWUgdGFsa2luZyBhYm91dCBlbWFpbCBo
ZWFkZXJzIG9mZmxpbmUgKGluc3RlYWQgb2YKZmlsbGluZyBwZW9wbGUncyBpbmJveGVzIHdpdGgg
dW5yZWxhdGVkIHJhbWJsaW5ncyksIHlvdSBrbm93IHdoZXJlIHRvCmZpbmQgbWUuCgotLQpMZWUg
Sm9uZXMgW+adjueQvOaWr10KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
