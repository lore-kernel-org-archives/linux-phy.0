Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDDCAC433F5
	for <linux-phy@archiver.kernel.org>; Fri,  8 Apr 2022 08:14:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BgCJVOk8x9/9CiA4Mm33amx5E23a+JJOavWk80jg8CM=; b=Hyg72jJhD7AhPN
	PeVul8mFWDwYtrN73kZmhuvK1GPl4+/1TVObvOLfaUd9HrTp1bNz8ijWmaUu9RzFNxr4vDqQqL3ms
	4WEiTyY5F8pbx6KN2VarsLIyXNROsF4LxviUeUVBkZmbAewATqGyKg+mbuxfChPyeI/MHvmp5fACO
	MG2siSj4W617f5mYC0GpXdD0p+mVbj9mzhmya6lIj9ABWiodKozVCI5Scjf5uqIGSAGwCX1w7Ti/I
	j/RoVZOHCkdmKUv8FpCSmZ0XetRRZ3+RqWuWzIvyzu79KgSocqmEjn9/cO98yiqknURStSJyfWu6j
	Kbev5W9i+N+XWGtjKTuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncjky-00FmPn-R6; Fri, 08 Apr 2022 08:14:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncjjr-00Flss-C8
 for linux-phy@lists.infradead.org; Fri, 08 Apr 2022 08:13:04 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1ncjjg-0007iG-8O; Fri, 08 Apr 2022 10:12:52 +0200
Message-ID: <4f8f93c51fedc84d94534e962bc7c68c4a4e5616.camel@pengutronix.de>
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
Date: Fri, 08 Apr 2022 10:12:49 +0200
In-Reply-To: <AS8PR04MB86766041887E97E22B0AC8C48CE99@AS8PR04MB8676.eurprd04.prod.outlook.com>
References: <1646644054-24421-1-git-send-email-hongxing.zhu@nxp.com>
 <CAJ+vNU0McZxj_74DC0wCUyHq-NaT14URnvUP+kvudz7YLQq7fg@mail.gmail.com>
 <AS8PR04MB86766041887E97E22B0AC8C48CE99@AS8PR04MB8676.eurprd04.prod.outlook.com>
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220408_011303_474284_F0AD24E5 
X-CRM114-Status: GOOD (  22.67  )
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

QW0gRnJlaXRhZywgZGVtIDA4LjA0LjIwMjIgdW0gMDM6MTQgKzAwMDAgc2NocmllYiBIb25neGlu
ZyBaaHU6Cj4gPiAKWy4uLl0KPiA+IFJpY2hhcmQsCj4gPiAKPiA+IFRoYW5rcyBmb3Igd29ya2lu
ZyBvbiB0aGlzIQo+ID4gCj4gPiBEbyB5b3UgcGxhbiBvbiBzdWJtaXR0aW5nIGFub3RoZXIgdmVy
c2lvbiBzb29uPyBJJ3ZlIHRyaWVkIHRvIHRlc3QgdGhpcyB3aXRoIGFuCj4gPiBpbXg4bXAgYm9h
cmQgSSdtIGJyaW5naW5nIHVwIGFuZCB3aGlsZSB0aGUgaG9zdCBjb250cm9sbGVyIGVudW1lcmF0
ZXMgSSBmYWlsCj4gPiB0byBnZXQgYSBsaW5rIHRvIGEgZGV2aWNlLiBJdCdzIHZlcnkgbGlrZWx5
IEkgYW0gbWlzc2luZyBzb21ldGhpbmcgYXMgdGhpcyBzZXJpZXMKPiA+IGRlcGVuZHMgb24gdGhl
IElNWDhNUCBibGstY3RybCBhbmQgZ3BjIHNlcmllcyB3aGljaCBJIGFsc28gY2FuJ3QgY2xlYW5s
eSBhcHBseS4KPiA+IEx1Y2FzIGp1c3Qgc3VibWl0dGVkIGEgJ2NvbnNvbGlkYXRlZCBpLk1YOE1Q
IEhTSU8vTUVESUEvSERNSSBibGstY3RybAo+ID4gc2VyaWVzJyBbMV0geWV0IEkgY2FuJ3QgZmlu
ZCBhIHJlcG8vYnJhbmNoIHRoYXQgYXBwbGllcyB0byBlaXRoZXIuCj4gPiAKPiA+IFBlcmhhcHMg
eW91IGhhdmUgYSBnaXQgcmVwbyBzb21ld2hlcmUgSSBjYW4gbG9vayBhdCB3aGlsZSB3ZSB3YWl0
IGZvcgo+ID4gaW14OG1wIGJsay1jdGwvZ3BjIHRvIHNldHRsZSBhbmQgeW91IHRvIHN1Ym1pdCBh
IHYzPwo+IEhpIFRpbToKPiBUaGFua3MgZm9yIHlvdXIga2luZGx5IGhlbHAgdG8gZG8gdGhlIHRl
c3RzLgo+IEkgaGFkIGxpc3RlZCB0aGUgZGVwZW5kZW5jaWVzIGluIHRoZSBjb3Zlci1sZXR0ZXIg
bG9nLgo+IEFsZXhhbmRlciBhbmQgSSB1c2VkIHRvIHRlc3QgdGhpcyBzZXJpZXMgY29tbWl0cyBi
YXNlZCBvbiB0aGUgVjUuMTcga2VybmVsLgo+IAo+IEx1Y2FzIGhhZCBwcm92aWRlZCBzb21lIHJl
dmlldyBjb21tZW50cyBhbmQgc3VnZ2VzdGlvbnMgYWJvdXQgdGhlIFBMTCBiaXRzCj4gwqBtYW5p
cHVsYXRpb25zIG9mIEhTSU9NSVggaW4gaS5NWDhNUCBQQ0llIFBIWSBkcml2ZXIgIzMgb2YgdGhp
cyBzZXJpZXMuCj4gQW5kIGhlIHN1Z2dlc3RlZCB0byBsZXQgdGhlIEhTSU9NSVggYmxrLWN0cmwg
bWFrZSB0aGlzIFBMTCBhcyBhIHJlYWwgY2xvY2ssCj4gwqBhbmQgdXNlZCBieSBpLk1YOE1QIFBD
SWUgUEhZIGRyaXZlciBsYXRlci4KPiAKPiBBbHRob3VnaCBJIGhhdmUgc29tZSBjb25mdXNpb25z
LCBpdCdzIGJldHRlciBsZXQncyB3YXRpbmcgZm9yIHRoZSBibGstY3RybAo+IHNldHRsZSBkb3du
IGFuZCBnZXQgY2xlYXIgZGlzY3Vzc2lvbiB3aXRoIEx1Y2FzIGxhdGVyLgo+IEhvdyBkbyB5b3Ug
dGhpbmsgYWJvdXQgdGhhdD8KCkp1c3QgdG8gbGV0IHlvdSBrbm93IG15IHBsYW5zOiBJIHdhcyBx
dWl0ZSBidXN5IHdpdGggZ2V0dGluZyB0aGUKaS5NWDhNUCBIRE1JIHBhcnQgdG8gd29yay4gTm93
IHRoYXQgdGhpcyBpcyBhdCBsZWFzdCBpbiBhIHN0YXRlIHdoZXJlCml0IGNhbiBjb2xsZWN0IHNv
bWUgZmVlZGJhY2sgZnJvbSB1cHN0cmVhbSBJIGhhdmUgc29tZSB0aW1lIHRvIGNpcmNsZQpiYWNr
IHRvIHRoaXMgdG9waWMuIEkgY2FuJ3QgY29tbWl0IHRvIGRvIGl0IGltbWVkaWF0ZWx5LCBidXQg
SSdsbCBnZXQKYXJvdW5kIHRvIGxvb2tpbmcgYXQgdGhlIFBDSWUgc2VyaWVzIGEgYml0IG1vcmUg
aW4tZGVwdGggYW5kIGFwcGx5IG15CkhTSU8gUExMIHN1Z2dlc3Rpb24gdG8gdGhlIGJsay1jdHJs
IGRyaXZlciBkdXJpbmcgdGhlIG5leHQgd2Vlay4KClJlZ2FyZHMsCkx1Y2FzCgoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
