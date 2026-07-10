Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 010C2C43458
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jul 2026 21:27:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RUiFiLFhb54EUNxs+frRhCwpKg3FhVoyvB5WrHO1nxo=; b=MA82166EQrWelC
	eFULkAv2NvivC3eGSEw+KBYkT+DnIVK1r5VflOc3kJ+N7GsHaQmNQNSag9LPJXDcGYf5CdCIUPLAH
	O/tS8gPCoITStXRB8yNB2u0eEV+5VgaH3wBZRKHONpPqAkT//tpPTgPnhS01jcqBetKwsd5n9bMn2
	pff7uA88hsE06alYomQTyl72UUw8bP/CP54iL6PeUO77kWMNhSkTi2O/OyeoVbwaL37jtUwVVkujE
	0RqJ2b+MGsV+7RVXdtlXZyd0ZddRS+GLARA7Y0/U7Md3QZtsG0UTUEHD9vROdztWfUh7oF8Va2KGu
	zOnKNdlp7BC51VVyZ1zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiIkm-00000005q1u-39qo;
	Fri, 10 Jul 2026 21:27:24 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiIkl-00000005q1F-09iN
	for linux-phy@lists.infradead.org;
	Fri, 10 Jul 2026 21:27:23 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 6405340ABA;
	Fri, 10 Jul 2026 21:27:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD1B11F00A3A;
	Fri, 10 Jul 2026 21:27:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783718842;
	bh=8S8Mofq9IKUBUaxon8iIKcDpSZ04bKxkifE/NwiLI5s=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=VzdgVQ198salTdIcJehYJetIxeNLa74ZvIVrFV9jGFaIgHI5s2nBxLvQWzwQH6kMG
	 eZHS/0VpHYRwIUXGr45CKfDXu3ByMs+G4gFo3jlbChn4pRk+N+yBeHsfnIfnighEWX
	 EvSeWYJbu+mhyqAHX6TwO7xBRO1+KXr6qyoIG2/5zVkDa+d0QvrFIeGng3oP64B4LM
	 tY+G/MGOC/LDk5x2TGyZqu7Gb6e1rVV0ot9MlJWT776kB+ZCFVksoBnQlmdLFRYYn6
	 9wUqurbi4A2EmErF+sjQCWW24xveF7ypB0maKwFzAgXRmN6MSjy1abimDumTwo1jvr
	 ChG8WdJdGLFdg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v12 35/36] phy: rockchip: usbdp: Re-init PHY on mux
 change
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, vkoul@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260710-rockchip-usbdp-cleanup-v12-35-8b41a9a9bef0@collabora.com>
References: <20260710-rockchip-usbdp-cleanup-v12-0-8b41a9a9bef0@collabora.com>
 <20260710-rockchip-usbdp-cleanup-v12-35-8b41a9a9bef0@collabora.com>
Date: Fri, 10 Jul 2026 21:27:21 +0000
Message-Id: <20260710212721.CD1B11F00A3A@smtp.kernel.org>
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
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFVuY29vcmRpbmF0ZWQg
UEhZIHJlc2V0IGR1cmluZyBUeXBlLUMgbW9kZSBjaGFuZ2UgcHVsbHMgdGhlIHJ1ZyBvdXQgZnJv
bSB1bmRlciB0aGUgYWN0aXZlIERpc3BsYXlQb3J0IGNvbnRyb2xsZXIsIGxlYWRpbmcgdG8gbG9z
dCBEUCBjb25maWd1cmF0aW9uLCByYWNlIGNvbmRpdGlvbnMgd2l0aCBEUk0sIGFuZCBwb3RlbnRp
YWwgaGFyZHdhcmUgU0Vycm9ycy4KLS0KCi0tLSBQYXRjaCBbMzVdOiBbUEFUQ0ggdjEyIDM1LzM2
XSBwaHk6IHJvY2tjaGlwOiB1c2JkcDogUmUtaW5pdCBQSFkgb24gbXV4IGNoYW5nZSAtLS0KY29t
bWl0IDk0ZGI5MDJmMzllM2NiNDM5MjE0MDA4MjRjM2JiNTgzM2U2YjdiZjIKQXV0aG9yOiBTZWJh
c3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4KCnBoeTogcm9j
a2NoaXA6IHVzYmRwOiBSZS1pbml0IFBIWSBvbiBtdXggY2hhbmdlCgpFbnN1cmUgdGhhdCB0aGUg
cmlnaHQgcGFydCBvZiB0aGUgUEhZIGFyZSBwb3dlcmVkIHVwIHdoZW4gdGhlCm1vZGUgY2hhbmdl
cy4gVGhpcyBlbnN1cmVzIHRoZSBQSFkgaXMgcmUtaW5pdGlhbGl6ZWQgaW4gdGhlCmZvbGxvd2lu
ZyB0d28gc2NlbmFyaW9zLCB3aGljaCBhcmUgY3VycmVudGx5IGJyb2tlbjoKY2FibGUgb3JpZW50
YXRpb24gY2hhbmdlcyB3aXRob3V0IERQIGJlaW5nIGludm9sdmVkIGFuZApzd2l0Y2hpbmcgZnJv
bSBEUC1vbmx5IGludG8gYSBtb2RlIHdpdGggVVNCIHN1cHBvcnQuCgo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYyBiL2RyaXZlcnMvcGh5L3Jv
Y2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jCj4gaW5kZXggYzVhZDMwMDYyMGE2NS4uZWNmMGVk
MDEzOWY2OSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAt
dXNiZHAuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5j
Cj4gQEAgLTEzODMsNyArMTM4Myw3IEBAIHN0YXRpYyBpbnQgcmtfdWRwaHlfdHlwZWNfbXV4X3Nl
dChzdHJ1Y3QgdHlwZWNfbXV4X2RldiAqbXV4LAo+ICAKPiAgCXJrX3VkcGh5X3NldF90eXBlY19z
dGF0ZSh1ZHBoeSwgc3RhdGUtPm1vZGUpOwo+ICAKPiAtCXJldHVybiAwOwo+ICsJcmV0dXJuIHJr
X3VkcGh5X3VwZGF0ZV9wb3dlcl9zdGF0ZSh1ZHBoeSk7CgpbU2V2ZXJpdHk6IEhpZ2hdCldpbGwg
dGhpcyBjYXVzZSBhbiB1bmNvb3JkaW5hdGVkIFBIWSByZXNldCB0aGF0IGJyZWFrcyB0aGUgYWN0
aXZlIERpc3BsYXlQb3J0CmNvbnRyb2xsZXI/CgpXaGVuIHJrX3VkcGh5X3VwZGF0ZV9wb3dlcl9z
dGF0ZSgpIGRldGVjdHMgYSBtb2RlIGNoYW5nZSwgaXQgY2FsbHMKcmtfdWRwaHlfaW5pdCgpLCB3
aGljaCBmb3JjZWZ1bGx5IHJlc2V0cyB0aGUgUEhZIGFuZCBkaXNhYmxlcyB0aGUgRFAgbGFuZXM6
Cgpkcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYzpya191ZHBoeV9pbml0
KCkgewogICAgLi4uCgkvKiBTdGVwIDM6IGNvbmZpZ3VyZSBsYW5lIG11eCAqLwoJcmVnbWFwX3Vw
ZGF0ZV9iaXRzKHVkcGh5LT5wbWFfcmVnbWFwLCBDTU5fTEFORV9NVVhfQU5EX0VOX09GRlNFVCwK
CQkJICAgQ01OX0RQX0xBTkVfTVVYX0FMTCB8IENNTl9EUF9MQU5FX0VOX0FMTCwKCQkJICAgRklF
TERfUFJFUChDTU5fRFBfTEFORV9NVVhfTigzKSwgdWRwaHktPmxhbmVfbXV4X3NlbFszXSkgfAog
ICAgICAgICAgICAgICAuLi4KCQkJICAgRklFTERfUFJFUChDTU5fRFBfTEFORV9FTl9BTEwsIDAp
KTsKICAgIC4uLgp9CgpJZiBUQ1BNIHN5bmNocm9ub3VzbHkgY2FsbHMgcmtfdWRwaHlfdHlwZWNf
bXV4X3NldCgpIGR1cmluZyBhbiBhbHRtb2RlCnJlbmVnb3RpYXRpb24gKHN1Y2ggYXMgc3dpdGNo
aW5nIGZyb20gRFAtb25seSB0byBEUCtVU0IpLCB0aGUgRFAgY29udHJvbGxlcgptaWdodCBzdGls
bCBiZSBhY3RpdmUgYmVjYXVzZSBEUk0gaGFuZGxlcyB0aGUgYXNzb2NpYXRlZCBIUEQgZGlzY29u
bmVjdAphc3luY2hyb25vdXNseSBvbiBhIGRpZmZlcmVudCB3b3JrcXVldWUuCgpDb3VsZCByZXNl
dHRpbmcgdGhlIFBIWSB3aGlsZSB0aGUgRFAgY29udHJvbGxlciBpcyBzdGlsbCBhY3RpdmUgYW5k
IGl0cyBjbG9jawppcyBzdG9wcGVkIHRyaWdnZXIgYW4gU0Vycm9yIG9yIGxlYXZlIHRoZSBkaXNw
bGF5IGxpbmsgcGVybWFuZW50bHkgYnJva2VuPwoKPiAgfQo+ICAKPiAgc3RhdGljIHZvaWQgcmtf
dWRwaHlfdHlwZWNfbXV4X3VucmVnaXN0ZXIodm9pZCAqZGF0YSkKCi0tIApTYXNoaWtvIEFJIHJl
dmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA3MTAtcm9ja2NoaXAt
dXNiZHAtY2xlYW51cC12MTItMC04YjQxYTlhOWJlZjBAY29sbGFib3JhLmNvbT9wYXJ0PTM1Cgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
