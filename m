Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B85F6C4332F
	for <linux-phy@archiver.kernel.org>; Wed, 13 Apr 2022 07:22:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r6wbBbcfUh5moZI/gjMoyra8U2AvdWPGF+3bKpBR7TY=; b=lqM3gkdDKD9gNV
	n/zi9Gk5g4/S+yq46I4p9415U73DQDQdQyvJGEQJsTbhtBNnoyrbERvVtkvFRi7UY8f/fAYgGefvV
	gNbQktsD5nn9aAyEDsidsqDX3o/wN5b8qitHmM+vhf61WhMjvNRqHOUHyA3P4VgBFEW73JcMRSxnu
	vMgBwrV5iGO+WIlFY6i517yPe+/jJoogsqSTxEVTtiv6832AbEh5c/RTrc4HfhmsDBq/Ky5EC/Tp2
	+WypGURqDh5ZrH/mSu0Ka8x71AMVm4uwtf5IywwJZt73mKwBJbcMUGyWrxBISyIT8Jlqxcvy2OaCU
	uObCC8lN3JgG0IsSFfHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neXKS-00HNi9-VM; Wed, 13 Apr 2022 07:22:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neXKP-00HNfo-Bt
 for linux-phy@lists.infradead.org; Wed, 13 Apr 2022 07:22:15 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1neXK8-0002PA-B8; Wed, 13 Apr 2022 09:21:56 +0200
Message-ID: <b112c517d5ee86ef09088ed3cc00291417101a6e.camel@pengutronix.de>
Subject: Re: [PATCH v2 0/7] Add the iMX8MP PCIe support
From: Lucas Stach <l.stach@pengutronix.de>
To: Hongxing Zhu <hongxing.zhu@nxp.com>, "tharvey@gateworks.com"
 <tharvey@gateworks.com>, Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, "bhelgaas@google.com"
 <bhelgaas@google.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Rob
 Herring <robh@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Vinod Koul
 <vkoul@kernel.org>,  "linux-phy@lists.infradead.org"
 <linux-phy@lists.infradead.org>, Device Tree Mailing List
 <devicetree@vger.kernel.org>, "linux-pci@vger.kernel.org"
 <linux-pci@vger.kernel.org>, Linux ARM Mailing List
 <linux-arm-kernel@lists.infradead.org>, open list
 <linux-kernel@vger.kernel.org>,  Sascha Hauer <kernel@pengutronix.de>,
 dl-linux-imx <linux-imx@nxp.com>
Date: Wed, 13 Apr 2022 09:21:53 +0200
In-Reply-To: <AS8PR04MB867606A1E2E45A0C0A1525A48CEA9@AS8PR04MB8676.eurprd04.prod.outlook.com>
References: <1646644054-24421-1-git-send-email-hongxing.zhu@nxp.com>
 <CAJ+vNU0McZxj_74DC0wCUyHq-NaT14URnvUP+kvudz7YLQq7fg@mail.gmail.com>
 <AS8PR04MB86766041887E97E22B0AC8C48CE99@AS8PR04MB8676.eurprd04.prod.outlook.com>
 <4f8f93c51fedc84d94534e962bc7c68c4a4e5616.camel@pengutronix.de>
 <AS8PR04MB867606A1E2E45A0C0A1525A48CEA9@AS8PR04MB8676.eurprd04.prod.outlook.com>
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_002213_447966_B232087A 
X-CRM114-Status: GOOD (  39.17  )
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

SGkgUmljaGFyZCwKCkFtIE1vbnRhZywgZGVtIDExLjA0LjIwMjIgdW0gMDM6MzIgKzAwMDAgc2No
cmllYiBIb25neGluZyBaaHU6Cj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID4gRnJv
bTogTHVjYXMgU3RhY2ggPGwuc3RhY2hAcGVuZ3V0cm9uaXguZGU+Cj4gPiBTZW50OiAyMDIy5bm0
NOaciDjml6UgMTY6MTMKPiA+IFRvOiBIb25neGluZyBaaHUgPGhvbmd4aW5nLnpodUBueHAuY29t
PjsgdGhhcnZleUBnYXRld29ya3MuY29tOwo+ID4gQWxleGFuZGVyIFN0ZWluIDxhbGV4YW5kZXIu
c3RlaW5AZXcudHEtZ3JvdXAuY29tPgo+ID4gQ2M6IFBoaWxpcHAgWmFiZWwgPHAuemFiZWxAcGVu
Z3V0cm9uaXguZGU+OyBiaGVsZ2Fhc0Bnb29nbGUuY29tOwo+ID4gTG9yZW56bwo+ID4gUGllcmFs
aXNpIDxsb3JlbnpvLnBpZXJhbGlzaUBhcm0uY29tPjsgUm9iIEhlcnJpbmcKPiA+IDxyb2JoQGtl
cm5lbC5vcmc+OyBTaGF3bgo+ID4gR3VvIDxzaGF3bmd1b0BrZXJuZWwub3JnPjsgVmlub2QgS291
bCA8dmtvdWxAa2VybmVsLm9yZz47Cj4gPiBsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZzsg
RGV2aWNlIFRyZWUgTWFpbGluZyBMaXN0Cj4gPiA8ZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc+
OyBsaW51eC1wY2lAdmdlci5rZXJuZWwub3JnOyBMaW51eCBBUk0KPiA+IE1haWxpbmcKPiA+IExp
c3QgPGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZz47IG9wZW4gbGlzdAo+ID4g
PGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc+OyBTYXNjaGEgSGF1ZXIKPiA+IDxrZXJuZWxA
cGVuZ3V0cm9uaXguZGU+Owo+ID4gZGwtbGludXgtaW14IDxsaW51eC1pbXhAbnhwLmNvbT4KPiA+
IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjIgMC83XSBBZGQgdGhlIGlNWDhNUCBQQ0llIHN1cHBvcnQK
PiA+IAo+ID4gQW0gRnJlaXRhZywgZGVtIDA4LjA0LjIwMjIgdW0gMDM6MTQgKzAwMDAgc2Nocmll
YiBIb25neGluZyBaaHU6Cj4gPiA+ID4gCj4gPiBbLi4uXQo+ID4gPiA+IFJpY2hhcmQsCj4gPiA+
ID4gCj4gPiA+ID4gVGhhbmtzIGZvciB3b3JraW5nIG9uIHRoaXMhCj4gPiA+ID4gCj4gPiA+ID4g
RG8geW91IHBsYW4gb24gc3VibWl0dGluZyBhbm90aGVyIHZlcnNpb24gc29vbj8gSSd2ZSB0cmll
ZCB0bwo+ID4gPiA+IHRlc3QKPiA+ID4gPiB0aGlzIHdpdGggYW4gaW14OG1wIGJvYXJkIEknbSBi
cmluZ2luZyB1cCBhbmQgd2hpbGUgdGhlIGhvc3QKPiA+ID4gPiBjb250cm9sbGVyIGVudW1lcmF0
ZXMgSSBmYWlsIHRvIGdldCBhIGxpbmsgdG8gYSBkZXZpY2UuIEl0J3MKPiA+ID4gPiB2ZXJ5Cj4g
PiA+ID4gbGlrZWx5IEkgYW0gbWlzc2luZyBzb21ldGhpbmcgYXMgdGhpcyBzZXJpZXMgZGVwZW5k
cyBvbiB0aGUKPiA+ID4gPiBJTVg4TVAgYmxrLWN0cmwKPiA+IGFuZCBncGMgc2VyaWVzIHdoaWNo
IEkgYWxzbyBjYW4ndCBjbGVhbmx5IGFwcGx5Lgo+ID4gPiA+IEx1Y2FzIGp1c3Qgc3VibWl0dGVk
IGEgJ2NvbnNvbGlkYXRlZCBpLk1YOE1QIEhTSU8vTUVESUEvSERNSQo+ID4gPiA+IGJsay1jdHJs
IHNlcmllcycgWzFdIHlldCBJIGNhbid0IGZpbmQgYSByZXBvL2JyYW5jaCB0aGF0Cj4gPiA+ID4g
YXBwbGllcyB0byBlaXRoZXIuCj4gPiA+ID4gCj4gPiA+ID4gUGVyaGFwcyB5b3UgaGF2ZSBhIGdp
dCByZXBvIHNvbWV3aGVyZSBJIGNhbiBsb29rIGF0IHdoaWxlIHdlCj4gPiA+ID4gd2FpdAo+ID4g
PiA+IGZvciBpbXg4bXAgYmxrLWN0bC9ncGMgdG8gc2V0dGxlIGFuZCB5b3UgdG8gc3VibWl0IGEg
djM/Cj4gPiA+IEhpIFRpbToKPiA+ID4gVGhhbmtzIGZvciB5b3VyIGtpbmRseSBoZWxwIHRvIGRv
IHRoZSB0ZXN0cy4KPiA+ID4gSSBoYWQgbGlzdGVkIHRoZSBkZXBlbmRlbmNpZXMgaW4gdGhlIGNv
dmVyLWxldHRlciBsb2cuCj4gPiA+IEFsZXhhbmRlciBhbmQgSSB1c2VkIHRvIHRlc3QgdGhpcyBz
ZXJpZXMgY29tbWl0cyBiYXNlZCBvbiB0aGUKPiA+ID4gVjUuMTcga2VybmVsLgo+ID4gPiAKPiA+
ID4gTHVjYXMgaGFkIHByb3ZpZGVkIHNvbWUgcmV2aWV3IGNvbW1lbnRzIGFuZCBzdWdnZXN0aW9u
cyBhYm91dCB0aGUKPiA+ID4gUExMCj4gPiA+IGJpdHMKPiA+ID4gwqBtYW5pcHVsYXRpb25zIG9m
IEhTSU9NSVggaW4gaS5NWDhNUCBQQ0llIFBIWSBkcml2ZXIgIzMgb2YgdGhpcwo+ID4gPiBzZXJp
ZXMuCj4gPiA+IEFuZCBoZSBzdWdnZXN0ZWQgdG8gbGV0IHRoZSBIU0lPTUlYIGJsay1jdHJsIG1h
a2UgdGhpcyBQTEwgYXMgYQo+ID4gPiByZWFsCj4gPiA+IGNsb2NrLAo+ID4gPiDCoGFuZCB1c2Vk
IGJ5IGkuTVg4TVAgUENJZSBQSFkgZHJpdmVyIGxhdGVyLgo+ID4gPiAKPiA+ID4gQWx0aG91Z2gg
SSBoYXZlIHNvbWUgY29uZnVzaW9ucywgaXQncyBiZXR0ZXIgbGV0J3Mgd2F0aW5nIGZvciB0aGUK
PiA+ID4gYmxrLWN0cmwgc2V0dGxlIGRvd24gYW5kIGdldCBjbGVhciBkaXNjdXNzaW9uIHdpdGgg
THVjYXMgbGF0ZXIuCj4gPiA+IEhvdyBkbyB5b3UgdGhpbmsgYWJvdXQgdGhhdD8KPiA+IAo+ID4g
SnVzdCB0byBsZXQgeW91IGtub3cgbXkgcGxhbnM6IEkgd2FzIHF1aXRlIGJ1c3kgd2l0aCBnZXR0
aW5nIHRoZQo+ID4gaS5NWDhNUAo+ID4gSERNSSBwYXJ0IHRvIHdvcmsuIE5vdyB0aGF0IHRoaXMg
aXMgYXQgbGVhc3QgaW4gYSBzdGF0ZSB3aGVyZSBpdAo+ID4gY2FuIGNvbGxlY3QKPiA+IHNvbWUg
ZmVlZGJhY2sgZnJvbSB1cHN0cmVhbSBJIGhhdmUgc29tZSB0aW1lIHRvIGNpcmNsZSBiYWNrIHRv
IHRoaXMKPiA+IHRvcGljLiBJCj4gPiBjYW4ndCBjb21taXQgdG8gZG8gaXQgaW1tZWRpYXRlbHks
IGJ1dCBJJ2xsIGdldCBhcm91bmQgdG8gbG9va2luZwo+ID4gYXQgdGhlIFBDSWUKPiA+IHNlcmll
cyBhIGJpdCBtb3JlIGluLWRlcHRoIGFuZCBhcHBseSBteSBIU0lPIFBMTCBzdWdnZXN0aW9uIHRv
IHRoZQo+ID4gYmxrLWN0cmwKPiA+IGRyaXZlciBkdXJpbmcgdGhlIG5leHQgd2Vlay4KPiAKPiBI
aSBMdWNhczoKPiBUaGFua3MgZm9yIHlvdXIgaGVscGZ1bCByZXBseS4KPiBJIGtub3cgdGhhdCB5
b3UncmUgYnVzeSB3aXRoIHRoZSBibGstY3RybCBzZXR0bGUgZG93biBub3csIGFuZCBoYWQKPiBl
eHBsYWluZWQgdG8KPiBUaW0uCgpZZXN0ZXJkYXkgSSB0cmllZCB0byBnZXQgdGhpcyBzZXJpZXMg
d29ya2luZyBvbiBteSA4TVAtRVZLIGJvYXJkLCBidXQKd2FzIHVuc3VjY2Vzc2Z1bCBmb3Igbm93
LiBUaGUgUENJZSBsaW5rIGRvZXMgbm90IGNvbWUgdXAuIFBDSWUgUkVGX0NMSwppcyBwcmVzZW50
IGFuZCBQRVJTVCBkZS1hc3NlcnRlZC4gSSdtIG5vdCBzdXJlIGlmIHRoaXMgaXMgZHVlIHRvIGEK
ZmF1bHR5IEVQIGRldmljZSAoSSBkb24ndCBoYXZlIGFub3RoZXIgTS4yIEtleUUgZGV2aWNlIGFy
b3VuZCB0byBjaGVjaykKb3IgaWYgdGhpcyBtYXkgYmUgZHVlIHRvIHRoZSBvbGQgcmV2aXNpb24g
b2YgbXkgOE1QLUVWSywgYXMgSSdtIHN0aWxsCndvcmtpbmcgd2l0aCBhIFJldkEgYm9hcmQuIFRo
ZSBzY2hlbWF0aWMgcmV2aXNpb24gbG9nIGRvZXNuJ3Qgc2hvdwphbnl0aGluZyB0aGF0IHdvdWxk
IG9idmlvdXNseSBpbmZsdWVuY2UgUENJZSBvcGVyYXRpb24sIGJ1dCBJIGhhdmUgYWxzbwpub3Qg
Zm91bmQgYW55IHNjaGVtYXRpY3MgZm9yIFJldkEuCgpEbyB5b3Uga25vdyBpZiB0aGVyZSBoYXZl
IGJlZW4gYW55IFBDSWUgcmVsYXRlZCBjaGFuZ2VzL2ZpeGVzIGluIHRoZQpsYXRlciBFVksgYm9h
cmQgcmV2aXNpb25zPwoKRm9yIG5vdyBJJ2xsIHRyeSB0byBnZXQgdGhpcyB3b3JraW5nIG9uIGEg
Y3VzdG9tIGkuTVg4TVAgYm9hcmQsIHdoZXJlIEkKY2FuIHVzZSBhIGRpZmZlcmVudCBFUCBkZXZp
Y2UuIE1heWJlIEknbGwgaGF2ZSBhIGJpdCBtb3JlIGx1Y2sgdGhlcmUuCgpSZWdhcmRzLApMdWNh
cwoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
