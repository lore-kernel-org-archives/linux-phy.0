Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89601CF6A88
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jan 2026 09:15:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lHtrNmo5Lm9TQ15fz9AQAwt/sAJJ/p4fNtqPEyNqBCI=; b=CdDJTp38tIcaLf
	gwTIWwC8sXlj3M6gZrsqt/DreMmbEoG/hU7LPIvmqwBq0xGWkz2D3bnMZhhnSnHbImP732agGKAs/
	ZH2C/mGZzaoZjXaGBYKiTtvkfzArOfZbo+C22yQIEdC/Ez8i20usRPOH05+vkd+2b6RC0AjodOt0L
	274FF0LCN/u2GwsarV2lzOYJJc37ssyUDQLJtnsGxfKvLUqJOz1dnwh/rQqlH6rsKLVPtV6E1MI2P
	VNNJJL7ubCQdj01g2w/mcmtHmkTmAKjkkFAZ9Ibn2gwzSzzOMfBOkoqqgXrBKwdsWKC24LmXrOFfK
	zUsFF5gA6y1696jZ9kng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdm6r-0000000GPNx-0P8r;
	Thu, 08 Jan 2026 09:15:13 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdm6n-0000000GPMu-1ZNe;
	Thu, 08 Jan 2026 09:15:10 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1767863695; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=MmE5DKfbNllkayfuVfwm9GThSMFT+PX+Q2qcU+TqNiyd2ZutQKHKl2xQoLqUG3zsymi4xcpv2W0Cu9tMDT5XksV3frCCiyx15Nl4+t2Hkxfs5hbWrkeNSx7VctY6ioYBvzrNSkdw0NzytZvIYUK3mrk4XkTPnZ2epVMByddAHis=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1767863695; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=5nTYfSaDPv2GdlELTogMY93wplFSokquqpOtJ7cePW8=; 
	b=F3KXU6Fwpvtrnw4tK2M8uHd68QIlsZU0jzBBulY/5zbSLW8Qrf28FYA0wd2yxBcYgoOaMEeK18uCW7KdWet9I74deKSEifIWq+EUU30svBPjFGIkJVBbfw2DNZE/6NGA16Sp0jSGt9YeaJCJeBmx8TtXclw63wW0XBnRRcP+srY=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1767863695;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=5nTYfSaDPv2GdlELTogMY93wplFSokquqpOtJ7cePW8=;
	b=kTicqGgqsOzHMkeRBWfRNWGcx2mI153gK3zN0TKiLHNcsKpEIms6Z+TsAIQUolqD
	ebLrshz40+ShAYSAlksHuN9vSpcazstbafyIfkzQAxFs9HaETySG1jl0PzLvVIvWvRP
	btNeqbhgsP0TcoF6ytmZY/IIEnltagUCO5ehZxLs=
Received: by mx.zohomail.com with SMTPS id 1767863693938487.4499614851069;
	Thu, 8 Jan 2026 01:14:53 -0800 (PST)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: "chu.stanley@gmail.com" <chu.stanley@gmail.com>,
 "robh@kernel.org" <robh@kernel.org>,
 Chunfeng Yun =?UTF-8?B?KOS6keaYpeWzsCk=?= <Chunfeng.Yun@mediatek.com>,
 "kishon@kernel.org" <kishon@kernel.org>,
 "James.Bottomley@HansenPartnership.com"
 <James.Bottomley@hansenpartnership.com>,
 "bvanassche@acm.org" <bvanassche@acm.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 "neil.armstrong@linaro.org" <neil.armstrong@linaro.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 Chaotian Jing =?UTF-8?B?KOS6leacneWkqSk=?= <Chaotian.Jing@mediatek.com>,
 "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "avri.altman@wdc.com" <avri.altman@wdc.com>,
 "martin.petersen@oracle.com" <martin.petersen@oracle.com>,
 "broonie@kernel.org" <broonie@kernel.org>,
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
Subject: Re: [PATCH v4 11/25] scsi: ufs: mediatek: Rework probe function
Date: Thu, 08 Jan 2026 10:14:44 +0100
Message-ID: <5992593.DvuYhMxLoT@workhorse>
In-Reply-To: <213d3077835fc86d15579c0a0a91f64fd84b1059.camel@mediatek.com>
References: <20251218-mt8196-ufs-v4-0-ddec7a369dd2@collabora.com>
 <20251218-mt8196-ufs-v4-11-ddec7a369dd2@collabora.com>
 <213d3077835fc86d15579c0a0a91f64fd84b1059.camel@mediatek.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_011509_472082_A60DF8FB 
X-CRM114-Status: GOOD (  11.77  )
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

T24gVHVlc2RheSwgNiBKYW51YXJ5IDIwMjYgMTQ6MjM6NTggQ2VudHJhbCBFdXJvcGVhbiBTdGFu
ZGFyZCBUaW1lIFBldGVyIFdhbmcgKOeOi+S/oeWPiykgd3JvdGU6Cj4gT24gVGh1LCAyMDI1LTEy
LTE4IGF0IDEzOjU1ICswMTAwLCBOaWNvbGFzIEZyYXR0YXJvbGkgd3JvdGU6Cj4gPiAKPiA+IFJl
bW92ZSB0aGUgdGksc3lzY29uLXJlc2V0IGNydWZ0Lgo+ID4gCj4gCj4gSGkgTmljb2xhcywKPiAK
PiBXaHkgZG8gd2UgbmVlZCB0byByZW1vdmUgdGhlIHJlc2V0IG5vZGU/IElmIGFuIGVycm9yIG9j
Y3VycyBhbmQgdGhlCj4gaG9zdCAKPiBkb2VzIG5vdCBwZXJmb3JtIGEgcmVzZXQsIGl0IGNvdWxk
IGxlYWQgdG8gZXJyb3IgcmVjb3ZlcnkgZmFpbHVyZS4KCkJlY2F1c2UgaXQncyBub3QgZGVzY3Jp
YmVkIGJ5IHRoZSBiaW5kaW5nLCBhbmQgYXBwZWFycyB0byBiZSBhCmRvd25zdHJlYW0gaGFjayB0
byB3b3JrIGFyb3VuZCBub3QgaGF2aW5nIHRoZSByZXNldCBjb250cm9sbGVyCnByb3Blcmx5IGRl
c2NyaWJlZCBhbmQgcmVmZXJyZWQgdG8gd2l0aCBhIGByZXNldHNgIHByb3BlcnR5LgoKRXZlbiBp
ZiB5b3Ugd2VyZSB0byB1c2UgYHRpLHN5c2Nvbi1yZXNldGAgdG8gZGVzY3JpYmUgYSByZXNldApj
b250cm9sbGVyLCB0aGUgVUZTIGNvbnRyb2xsZXIgZHJpdmVyIHNob3VsZCBub3QgYmUgc2VhcmNo
aW5nCmZvciB0aGlzIGNvbXBhdGlibGUuIEl0IHNob3VsZCBhY2Nlc3MgdGhlIHJlc2V0IHRocm91
Z2ggdGhlCnJlc2V0IEFQSS4gVGhlIGNvbW1vbiByZXNldCBjb2RlIGNhbiB0aGVuIHRha2UgY2Fy
ZSBvZiBwcm9iZQpvcmRlcmluZyB3aXRob3V0IGV2ZXJ5IGRyaXZlciByZWludmVudGluZyBpdC4K
Cj4gCj4gVGhhbmtzLgo+IFBldGVyCj4gCgoKCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
