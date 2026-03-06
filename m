Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2B97F01834
	for <linux-phy@archiver.kernel.org>; Fri,  6 Mar 2026 12:53:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JQvTw2pf/StAdOSiBWNgkcHJ1drpheFkjxajZoO+uGo=; b=26DUEdHzV5fQMH
	JwCJiEaU69sUFtasfnO9LsI/a7b1ED+k6ZAu61uwWLdk8JlQV14hQZT21kbHhQXoEmpyrh7eFhjfo
	OkG6PIebXXyrJvRDCUlOsTjQNd/zph8mzwgr1keO9PfMcfnGajoIPnqg7OkOK2A3NXt92n7Ue9GZL
	JCyQ2j7NwYOVOhy/ncFjrM66JLoKV4C5G+NEWp5NHT9Rk5GDNjEjQGQR/tT7/g9yHQLsJRRRC0Imn
	lMge2BCEP3qiuYhYc42/VEBLQuOIGZBLNy15ismtFi6PnEVM9HNHcMIf7ytgD6KOUPuEMMSoUXRV2
	6X3nqvF5D3GBtXUeqDpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyUgR-00000003h6V-1iov;
	Fri, 06 Mar 2026 12:53:35 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyUgO-00000003h5S-3DFR;
	Fri, 06 Mar 2026 12:53:34 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1772801598; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=DcCFODHq3zWZyac4tQCBbiwF6DehbbPNr6onrgenuECF8OHu1KYWfysscwEOhS1eRXl5SOLhIV9xvyZbfUllQxT4GJzoLom7jwMDeNCm/uynpBkZdcfRdmdBEaPXD+sm0D/6bIYB16L0H5BT7AYVUUSa14ljYAGGe6gdizG32Ag=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1772801598; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=uYzPfZN2qeAjLGGk50fjPqz0/2wRXSpO4Mr/vCzfoHs=; 
	b=CpSurAyn4TOOjNQH62apNi4XeaN7NV3ivWhwL1sl3hnCa4SiYl7zeo7A6ljqnN3wTemBo2Gd6idNro/SV1YIOiM87/+QKLsg1fsF9QPqw7r8ckrnHtV8KxkMbTbNlnYmnIrjwMVYN+oHI3EY4ktDshu/Ul+bsK+y+o+oC3wXFn4=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1772801598;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=uYzPfZN2qeAjLGGk50fjPqz0/2wRXSpO4Mr/vCzfoHs=;
	b=aq6bupk1sHIpctdxS3iewCaD7xxL2I9r868YhzsFM5rcG7u9fjmJdtTw52sjupZG
	mCBvRXwx3gaFndhJqLSHEuhBrhtbaRz9ycXHECbzjMcsJ0dzZXOEcaFbhsTsFHJHP7Q
	pqyHfvK0nJAEw+oIEBhL0gtwq/Jm5PrQ2PAK4GSU=
Received: by mx.zohomail.com with SMTPS id 1772801597239568.9469211924414;
	Fri, 6 Mar 2026 04:53:17 -0800 (PST)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: "chu.stanley@gmail.com" <chu.stanley@gmail.com>,
 "robh@kernel.org" <robh@kernel.org>,
 Chunfeng Yun =?UTF-8?B?KOS6keaYpeWzsCk=?= <Chunfeng.Yun@mediatek.com>,
 "kishon@kernel.org" <kishon@kernel.org>,
 "James.Bottomley@hansenpartnership.com"
 <James.Bottomley@hansenpartnership.com>,
 "bvanassche@acm.org" <bvanassche@acm.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Chaotian Jing =?UTF-8?B?KOS6leacneWkqSk=?= <Chaotian.Jing@mediatek.com>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>,
 "neil.armstrong@linaro.org" <neil.armstrong@linaro.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "avri.altman@wdc.com" <avri.altman@wdc.com>,
 "broonie@kernel.org" <broonie@kernel.org>,
 "martin.petersen@oracle.com" <martin.petersen@oracle.com>,
 Peter Wang =?UTF-8?B?KOeOi+S/oeWPiyk=?= <peter.wang@mediatek.com>
Cc: "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>,
 "kernel@collabora.com" <kernel@collabora.com>
Subject: Re: [PATCH v8 11/23] scsi: ufs: mediatek: Remove undocumented downstream
 reset cruft
Date: Fri, 06 Mar 2026 13:53:09 +0100
Message-ID: <4282403.mvXUDI8C0e@workhorse>
In-Reply-To: <2a68eb32987c21b6a48547ce044ee38d1eb01fa5.camel@mediatek.com>
References: <20260304-mt8196-ufs-v8-0-5b0eac23314f@collabora.com>
 <3472277.mvXUDI8C0e@workhorse>
 <2a68eb32987c21b6a48547ce044ee38d1eb01fa5.camel@mediatek.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260306_045332_850837_EE43BE69 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
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

T24gRnJpZGF5LCA2IE1hcmNoIDIwMjYgMDY6Mzk6MjIgQ2VudHJhbCBFdXJvcGVhbiBTdGFuZGFy
ZCBUaW1lIFBldGVyIFdhbmcgKOeOi+S/oeWPiykgd3JvdGU6Cj4gT24gVGh1LCAyMDI2LTAzLTA1
IGF0IDEwOjU3ICswMTAwLCBOaWNvbGFzIEZyYXR0YXJvbGkgd3JvdGU6Cj4gPiAKPiA+IFllcywg
dGhlc2UgYXJlIHRoZSBraW5kcyBvZiBtaXN0YWtlcyB0aGF0IGhhcHBlbiB3aGVuIHlvdSBhc2sg
c29tZW9uZQo+ID4gdG8gcGljayBhcGFydCBwYXRjaGVzIGZvciB5b3VyIGRvd25zdHJlYW0gY29u
dmVuaWVuY2UuCj4gPiAKPiA+IEknbGwgaGFuZCBkZWFsaW5nIHdpdGggYW55IGZ1cnRoZXIgZml4
dXBzIGFuZCB2YXJpYWJsZSBuYW1pbmcKPiA+IGNvbmNlcm5zCj4gPiB5b3UgaGF2ZSBvdmVyIHRv
IEFuZ2VsbywgYXMgSSBjYW4ndCBiZSBib3RoZXJlZCB0byBkZWFsIHdpdGggeW91Cj4gPiBhbnlt
b3JlLgo+ID4gCj4gCj4gSSB0aG91Z2h0IGVuc3VyaW5nIHRoYXQgZXZlcnkgcGF0Y2ggYnVpbGRz
IHN1Y2Nlc3NmdWxseQo+IHdhcyBhIGJhc2ljIHJlcXVpcmVtZW50Lgo+IAo+IAoKQW5kIEkgdGhv
dWdodCBwdXR0aW5nIGJpbmRpbmdzIHRocm91Z2ggYmluZGluZ3MgcmV2aWV3IHdhcyBhIGJhc2lj
CnJlcXVpcmVtZW50LCBidXQgYXBwYXJlbnRseSBub3QgZm9yIHlvdSB3aGVuIHlvdSBjYW4gc3Vi
dmVydCB0aGUKa2VybmVsJ3MgcmV2aWV3IHByb2Nlc3MgYW5kIHB1c2ggeW91ciBkb3duc3RyZWFt
IGNyYXAgaW50byBtYWlubGluZQp3aWxseS1uaWxseS4KCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
