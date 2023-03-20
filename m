Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DB3DC7618A
	for <linux-phy@archiver.kernel.org>; Mon, 20 Mar 2023 16:41:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3LuiYo96VPnsN8RhiiTmWdq+o5ZWy7BoqfUBwJYxOuo=; b=tRLBOWtzbOsPX+
	FqStyepwCdzorEP09OAX8xhbMw+VuOAU2D4T1C9h/XfkAi03zY6qzWxaBZ/f5NrhPSy2IZ/raL77i
	Upt04BaWc9DwA1QhbE2OshnuKSN2DWj5ZUDkqHKiwvTBe1wn5y8UhX8zOdzyZNiGA8RKMBGKJPwfN
	bg808vq9rjA4h4XWysXU1klVrqTirnPp9HfFAhfv5GIFktIEhHpMSj5Q+ix713BrBSHaoQdRnTRyJ
	FIwcYEfyWGFyqNoBSMg/r8ijGJ97xrEwOYyI/M1ZMh1yPUY8dYUsfsH/6itHao8DRK2qhiUwRB25p
	9APfpLCPN8mp7qo2NCzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peIZu-009qY7-0z;
	Mon, 20 Mar 2023 16:41:46 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peIZr-009qX9-34
	for linux-phy@lists.infradead.org;
	Mon, 20 Mar 2023 16:41:45 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 80267616E2;
	Mon, 20 Mar 2023 16:41:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A25C3C433EF;
	Mon, 20 Mar 2023 16:41:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679330502;
	bh=j6QNvV6H6eDt02wjxkiTvHZcQhOub+6iicJVNt8AiKc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ABDM8gSrZx5kc8OL/cA9piN5bghBYggzRStcFDbwGlZqI1jRBM+7elOaAMCnSkqlo
	 f0QGSia0zpPEELZeH+fR2d7BdDayswnu+zKSXHAKy0bZiZz+cuTjfDyZ7MbVSvSghB
	 vxtZAWN9I53zhXjXvTQT56TNpsO1xcxp9YZakJM7Q15bzF2Hv75FhefWKU1Pi5721m
	 bJCBSQ9Re1gg2gjW01D4wFXIgEEdKuHzZ4CTkCatJxMf8KjX+KJWLpzlUE3vvnhjkK
	 AQbk4krJEBDjgjC9ZWjaWLNGhBXD9XAH1O6KrKXhaNbHuV6atuYRflGNbeYQCbzvCa
	 Vdkg5y+ND7Hfw==
Date: Mon, 20 Mar 2023 16:41:36 +0000
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
Message-ID: <20230320164136.GC2673958@google.com>
References: <20230317185415.2000564-1-colin.foster@in-advantage.com>
 <20230317185415.2000564-2-colin.foster@in-advantage.com>
 <ZBgeKM50e1vt+ho1@matsya>
 <ZBgmXplfA/Q3/1dC@shell.armlinux.org.uk>
 <20230320133431.GB2673958@google.com>
 <ZBhtOw4Ftj3Sa3JU@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZBhtOw4Ftj3Sa3JU@shell.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230320_094144_062292_1CEC6B29 
X-CRM114-Status: GOOD (  30.49  )
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
b24sIE1hciAyMCwgMjAyMyBhdCAwMTozNDozMVBNICswMDAwLCBMZWUgSm9uZXMgd3JvdGU6Cj4g
PiBPbiBNb24sIDIwIE1hciAyMDIzLCBSdXNzZWxsIEtpbmcgKE9yYWNsZSkgd3JvdGU6Cj4gPgo+
ID4gPiBPbiBNb24sIE1hciAyMCwgMjAyMyBhdCAwMjoxOTo0NFBNICswNTMwLCBWaW5vZCBLb3Vs
IHdyb3RlOgo+ID4gPiA+IE9uIDE3LTAzLTIzLCAxMTo1NCwgQ29saW4gRm9zdGVyIHdyb3RlOgo+
ID4gPiA+ID4gVGhlIHBoeS1vY2Vsb3Qtc2VyZGVzIG1vZHVsZSBoYXMgZXhjbHVzaXZlbHkgYmVl
biB1c2VkIGluIGEgc3lzY29uIHNldHVwLAo+ID4gPiA+ID4gZnJvbSBhbiBpbnRlcm5hbCBDUFUu
IFRoZSBhZGRpdGlvbiBvZiBleHRlcm5hbCBjb250cm9sIG9mIG9jZWxvdCBzd2l0Y2hlcwo+ID4g
PiA+ID4gdmlhIGFuIGV4aXN0aW5nIE1GRCBpbXBsZW1lbnRhdGlvbiBtZWFucyB0aGF0IHN5c2Nv
biBpcyBubyBsb25nZXIgdGhlIG9ubHkKPiA+ID4gPiA+IGludGVyZmFjZSB0aGF0IHBoeS1vY2Vs
b3Qtc2VyZGVzIHdpbGwgc2VlLgo+ID4gPiA+ID4KPiA+ID4gPiA+IEluIHRoZSBNRkQgY29uZmln
dXJhdGlvbiwgYW4gSU9SRVNPVVJDRV9SRUcgcmVzb3VyY2Ugd2lsbCBleGlzdCBmb3IgdGhlCj4g
PiA+ID4gPiBkZXZpY2UuIFV0aWxpemUgdGhpcyByZXNvdXJjZSB0byBiZSBhYmxlIHRvIGZ1bmN0
aW9uIGluIGJvdGggc3lzY29uIGFuZAo+ID4gPiA+ID4gbm9uLXN5c2NvbiBjb25maWd1cmF0aW9u
cy4KPiA+ID4gPgo+ID4gPiA+IEFwcGxpZWQgdG8gcGh5L25leHQsIHRoYW5rcwo+ID4gPgo+ID4g
PiBQbGVhc2UgcmVhZCB0aGUgbmV0ZGV2IEZBUS4gUGF0Y2hlcyBzZW50IHRvIG5ldGRldiBjb250
YWluIHRoZSB0cmVlIHRoYXQKPiA+ID4gdGhlIHN1Ym1pdHRlciB3aXNoZXMgdGhlIHBhdGNoZXMg
dG8gYmUgYXBwbGllZCB0by4KPiA+ID4KPiA+ID4gQXMgYSByZXN1bHQsIEkgc2VlIGRhdmVtIGhh
cyBqdXN0IHBpY2tlZCB1cCB0aGUgKmVudGlyZSogc2VyaWVzIHdoaWNoCj4gPiA+IG1lYW5zIHRo
YXQgYWxsIHBhdGNoZXMgYXJlIGluIG5ldC1uZXh0IG5vdy4gbmV0LW5leHQgaXMgaW1tdXRhYmxl
Lgo+ID4gPgo+ID4gPiBJbiBhbnkgY2FzZSwgSU1ITyBpZiB0aGlzIGtpbmQgb2YgZmx5LWJ5IGNo
ZXJyeS1waWNraW5nIGZyb20gcGF0Y2gKPiA+ID4gc2VyaWVzIGlzIGludGVuZGVkLCBpdCBzaG91
bGQgYmUgbWVudGlvbmVkIGR1cmluZyByZXZpZXcgdG8gZ2l2ZSBhCj4gPiA+IGNoYW5jZSBmb3Ig
b3RoZXIgbWFpbnRhaW5lcnMgdG8gcmVzcG9uZCBhbmQgZ2l2ZSBmZWVkYmFjay4gTm90IGFsbAo+
ID4gPiBzdWJtaXR0ZXJzIHdpbGwga25vdyBob3cgaW5kaXZpZHVhbCBtYWludGFpbmVycyB3b3Jr
LiBOb3QgYWxsCj4gPiA+IG1haW50YWluZXJzIGtub3cgaG93IG90aGVyIG1haW50YWluZXJzIHdv
cmsuCj4gPgo+ID4gT25jZSBhZ2FpbiBuZXRkZXYgc2VlbXMgdG8gaGF2ZSBhcHBsaWVkIHBhdGNo
ZXMgZnJvbSBvdGhlciBzdWJzeXN0ZW1zCj4gPiB3aXRob3V0IHJldmlldy9hY2suICBXaGF0IG1h
a2VzIG5ldGRldiBkaWZmZXJlbnQgdG8gYW55IG90aGVyIGtlcm5lbAo+ID4gc3Vic3lzdGVtPyAg
V2hhdCB3b3VsZCBoYXBwZW4gaWYgb3RoZXIgcmFuZG9tIG1haW50YWluZXJzIHN0YXJ0ZWQKPiA+
IGFwcGx5aW5nIG5ldGRldiBwYXRjaGVzIHdpdGhvdXQgYXBwcm9wcmlhdGUgcmV2aWV3PyAgSSBz
dXNwZWN0IHNvbWVvbmUKPiA+IHdvdWxkIGJlY29tZSB1bmRlcnN0YW5kYWJseSBncnVtcHkuCj4K
PiBXaHkgYWdhaW4gYXJlIHlvdSBhZGRyZXNzaW5nIHlvdXIgd2hpbmdlIHRvIG1lPyBJJ20gbm90
IG9uZSBvZiB0aGUKPiBuZXRkZXYgbWFpbnRhaW5lcnMsIGJ1dCBJJ3ZlIHBvaW50ZWQgb3V0IHdo
YXQgaGFwcGVucyBpbiBuZXRkZXYKPiBsYW5kLiBIb3dldmVyLCB5b3Ugc2VlbSB0byAqbm90KiB3
YW50IHRvIGRpc2N1c3MgaXQgZGlyZWN0bHkgd2l0aAo+IERhdmVNL0pha3ViL1Bhb2xvIC0gYXMg
aWxsdXN0cmF0ZWQgYWdhaW4gd2l0aCB5ZXQgYW5vdGhlciByZXNwb25zZQo+IHRvICptZSogcmF0
aGVyIHRoYW4gYWRkcmVzc2luZyB5b3VyIGNvbmNlcm5zICp0byogdGhlIHBlb3BsZSB3aG8KPiB5
b3UgaGF2ZSBhbiBpc3N1ZSB3aXRoLgo+Cj4gVGhpcyBpcyBub3QgY29tbXVuaWNhdGlvbi4gRWZm
ZWN0aXZlbHksIHRoaXMgaXMgc25pcGluZywgYmVjYXVzZQo+IHJhdGhlciB0aGFuIGRpc2N1c3Np
bmcgaXQgd2l0aCB0aGUgaW5kaXZpZHVhbHMgY29uY2VybmVkLCB5b3UgYXJlCj4gaW5zdGVhZCBw
cmVmZXJyaW5nIHRvIGRpc2N1c3MgaXQgd2l0aCBvdGhlcnMuCj4KPiBQbGVhc2Ugc3RvcCB0aGlz
LgoKUmVhZCB0aGUgYWJvdmUgcGFyYWdyYXBoIGFnYWluLgoKSXQgd2FzIGFuIG9wZW4gcXVlc3Rp
b24sICppbnRlbnRpb25hbGx5KiBub3QgZGlyZWN0ZWQgKmF0KiBhbnlvbmUuCgpZb3UganVzdCBo
YXBwZW4gdG8gYmUgdGhlIG9uZSBkZXNjcmliaW5nIHlldCBhbm90aGVyIHVuZm9ydHVuYXRlCnNp
dHVhdGlvbi4gIENvbnNpZGVyIHlvdXJzZWxmIGEgdmljdGltIG9mIGNpcmN1bXN0YW5jZSBhbmQg
dHJ5IG5vdCB0bwp0YWtlIGFueSBvZiBpdCBwZXJzb25hbGx5LgoKSXQncyB0aGUgd29ya2Zsb3cg
YW5kIHRoZSBhc3N1bXB0aW9ucyB0aGF0IEknbSB1bmhhcHB5IGFib3V0IGFuZCB0aGF0IEkKdGhp
bmsgc2hvdWxkIGJlIGltcHJvdmVkIHVwb24uICBUaGUgZ3JpcGUgaXMgbm90IGFnYWluc3QgYW55
IG9uZQppbmRpdmlkdWFsIG9yIGluZGl2aWR1YWxzLgoKLS0KTGVlIEpvbmVzIFvmnY7nkLzmlq9d
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
