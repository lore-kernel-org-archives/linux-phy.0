Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0DB7ECAAA1
	for <linux-phy@archiver.kernel.org>; Tue, 30 Aug 2022 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=5+MR9NB4OxtEQQ5fAMu+Px2cvIS92qsBc1SXdqRS8h4=; b=dHBMQturmG0Iwf
	J/H/+sJSBkYoAGmdeIq/dAh6S9nI2C8+qAfzg5/FKVkM4iHGR8oCvujr+8OFqFghs/Xt9W+7u0bom
	XAKrRruYq0cMSilalHKknCwnUyQ3cFhUDzWoqxjkGpNJKewlgk0IvczzJwclfuzcujUP4QvwOXAuM
	hAJvQv1NGnAFtwmMDFJt9bdoSjgCq/Buedli74P8RAiH+TJWdfDInaztDpBqqD0IheeBPq6DLqI4M
	rGZE6ffjICBSjx4a0K0rNK3ZYrBs4CoK9T1FOqiO3usq/+KnmAKV+aReEqz/Dxu1KAxdfG2uf8rfN
	H7XHvvOG8wtunivdYlbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oT2oL-000Ayw-3S; Tue, 30 Aug 2022 15:05:53 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oT2o6-000AtC-9G; Tue, 30 Aug 2022 15:05:41 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id F352B615A7;
	Tue, 30 Aug 2022 15:05:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A785C433D6;
	Tue, 30 Aug 2022 15:05:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661871936;
	bh=yMaVy0x6QqxmuF5Wk/jBZfLlTnvPKV2GkJFqUxfyPTQ=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=oj29NzCyRA3Onq0evlTicdnxULUjjD0s/EeZsq/WWy45JIzUgYar//6rwD9lalFDN
	 yqUVcMYXdW26CF2dFOn/yQ4wPRz5ZrNOlktJCFs3Lr6ydX73ALmZSpwXx8fsNaGZGh
	 /sBoIH7B4kHFt0LpNGHSQOMQookU2FuPV0d6vwwUZZD4G26yplQDE9a38YnuGXLI0B
	 fMnEGxGO1dHDHdU5FWrMhhUt/2JCtNFt8+m8iBm+TDit5PDnVOmfFjLuTBvVLcw/JF
	 RNh5AYyCvP+THZn32FqOeLD1XH4UD72CUOLydtnPkY3F7B51bom6aslz87wG+Ty+vb
	 BFOKuhKJg0zRw==
Date: Tue, 30 Aug 2022 10:05:34 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Hongxing Zhu <hongxing.zhu@nxp.com>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"l.stach@pengutronix.de" <l.stach@pengutronix.de>,
	"bhelgaas@google.com" <bhelgaas@google.com>,
	"lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
	"vkoul@kernel.org" <vkoul@kernel.org>,
	Marcel Ziswiler <marcel.ziswiler@toradex.com>,
	"kishon@ti.com" <kishon@ti.com>,
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	dl-linux-imx <linux-imx@nxp.com>,
	"kernel@pengutronix.de" <kernel@pengutronix.de>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v1 0/2] Fix the wrong order of phy callbacks
Message-ID: <20220830150534.GA97821@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AS8PR04MB86763A2187AED57CFD55625E8C799@AS8PR04MB8676.eurprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_080538_445142_19E023D3 
X-CRM114-Status: GOOD (  26.67  )
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

T24gVHVlLCBBdWcgMzAsIDIwMjIgYXQgMDc6NTA6NTVBTSArMDAwMCwgSG9uZ3hpbmcgWmh1IHdy
b3RlOgo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPiA+IEZyb206IEFobWFkIEZhdG91
bSA8YS5mYXRvdW1AcGVuZ3V0cm9uaXguZGU+Cj4gPiBTZW50OiAyMDIy5bm0OOaciDMw5pelIDE1
OjE2Cj4gPiBUbzogSG9uZ3hpbmcgWmh1IDxob25neGluZy56aHVAbnhwLmNvbT47IGwuc3RhY2hA
cGVuZ3V0cm9uaXguZGU7Cj4gPiBiaGVsZ2Fhc0Bnb29nbGUuY29tOyBsb3JlbnpvLnBpZXJhbGlz
aUBhcm0uY29tOyB2a291bEBrZXJuZWwub3JnOyBNYXJjZWwKPiA+IFppc3dpbGVyIDxtYXJjZWwu
emlzd2lsZXJAdG9yYWRleC5jb20+OyBraXNob25AdGkuY29tCj4gPiBDYzogbGludXgtcGNpQHZn
ZXIua2VybmVsLm9yZzsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsgZGwtbGludXgtaW14
Cj4gPiA8bGludXgtaW14QG54cC5jb20+OyBrZXJuZWxAcGVuZ3V0cm9uaXguZGU7IGxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnOwo+ID4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCj4gPiBTdWJqZWN0OiBSZTogW1BBVENIIHYxIDAvMl0gRml4IHRoZSB3cm9uZyBvcmRl
ciBvZiBwaHkgY2FsbGJhY2tzCgpUaGUgYWJvdmUgcXVvdGluZyBzdHlsZSBtYWtlcyBpdCBoYXJk
ZXIgdGhhbiBuZWNlc3NhcnkgdG8gZm9sbG93CmNvbnZlcnNhdGlvbi4gIFNlZSBoaW50cyBhdDoK
CiAgaHR0cHM6Ly9lbi53aWtpcGVkaWEub3JnL3dpa2kvUG9zdGluZ19zdHlsZSNJbnRlcmxlYXZl
ZF9zdHlsZQogIGh0dHBzOi8vcGVvcGxlLmtlcm5lbC5vcmcvdGdseC9ub3Rlcy1hYm91dC1uZXRp
cXVldHRlCgpUaGUgaWRlYWwgdGhpbmcgd291bGQgYmUgc29tZXRoaW5nIGxpa2UgdGhpcywgd2hl
cmUgdGhlcmUncyBhIHNpbmdsZQpsaW5lIGZvciBlYWNoIHNlbmRlcjoKCk9uIFR1ZSwgQXVnIDMw
LCAyMDIyIGF0IDA3OjUwOjU1QU0gKzAwMDAsIEhvbmd4aW5nIFpodSB3cm90ZToKPiBPbiBUdWUs
IEF1ZyAzMCwgMjAyMiwgYXQgMDM6MTZQTSwgQWhtYWQgRmF0b3VtIHdyb3RlOgo+ID4gT24gMzAu
MDguMjIgMDU6NDcsIEhvbmd4aW5nIFpodSB3cm90ZToKPiA+ID4gRG8geW91IG1lYW4gdG8gc3F1
YXNoIHRoaXMgZml4IHRvIHRoZSBwcmV2aWV3IHNlcmllcz8KPiA+ID4gSSdtIGFmcmFpZCB0aGF0
IGl0J3Mgbm90IGVhc3kgdG8gZG8gdGhhdC4KPiA+ID4gQmVjYXVzZSB0aGVyZSBhcmUgYSBsb3Qg
b2YgcGNpLWlteDYgY29kZSBjaGFuZ2VzIGFmdGVyCj4gPiA+IGNvbW1pdDogMWFhOTdiMDAyMjU4
ICgicGh5OiBmcmVlc2NhbGU6IHBjaWU6IEluaXRpYWxpemUgdGhlIGlteDggcGNpZQo+ID4gPiBz
dGFuZGFsb25lIHBoeSBkcml2ZXIiKS4KPiA+Cj4gPiBUaGUgd2F5IEkgdW5kZXJzdGFuZCBpdCwg
aWYgYSBiaXNlY3QgZW5kcyB1cCBiZXR3ZWVuIHlvdXIgdHdvCj4gPiBwYXRjaGVzLCBpLk1YOE0g
UENJZSB3aWxsIGJlIGJyb2tlbiwgd2hlcmVhcyBpdCB3b3JrZWQgYmVmb3JlLiBJCj4gPiB0aHVz
IHdvbmRlciBpZiB3ZSBzaG91bGRuJ3QgaW5zdGVhZCBzcXVhc2ggdGhpcyBzZXJpZXMgaGVyZSBp
bnRvIGEKPiA+IHNpbmdsZSBwYXRjaC4KPgo+IFllcywgaXQncyBhIHBvc3NpYmxlIGNhc2Ugd2hl
biBkbyB0aGUgYmlzZWN0Lgo+IFNpbmNlIHRoZXNlIGNoYW5nZXMgYXJlIGJlbG9uZyB0byBkaWZm
ZXJlbnQgZ2l0IHJlcG8uCgpJIGRvbid0IHVuZGVyc3RhbmQgdGhlIHBvaW50IGFib3V0IGRpZmZl
cmVudCBnaXQgcmVwb3MuICBQYXRjaCAxLzIKdG91Y2hlcyBkcml2ZXJzL3BjaS9jb250cm9sbGVy
L2R3Yy9wY2ktaW14Ni5jLCBwYXRjaCAyLzIgdG91Y2hlcwpkcml2ZXJzL3BoeS9mcmVlc2NhbGUv
cGh5LWZzbC1pbXg4bS1wY2llLmMuICBUaGV5J3JlIGluIGRpZmZlcmVudApkaXJlY3Rvcmllcywg
b2YgY291cnNlLCBidXQgYXJlIGluIHRoZSBzYW1lIExpbnV4IGtlcm5lbCBzb3VyY2UgcmVwby4K
ClRoZXkncmUgbWFpbnRhaW5lZCBieSBkaWZmZXJlbnQgcGVvcGxlLCBidXQgd2UgY2FuIGVhc2ls
eSBkZWFsIHdpdGgKdGhhdCBieSBnZXR0aW5nIGFuIGFjayBmcm9tIG9uZSBhbmQgbWVyZ2luZyB2
aWEgdGhlIG90aGVyLgoKPiBJdCB3aWxsIGJyaW5nIG1haW50YWluIGRpZmZpY3VsdGllcyBpZiB0
aGVzZSB0d28gcGF0Y2hlcyBhcmUgc3F1YXNoZWQgaW50byBhCj4gIHNpbmdsZSBvbmUuCj4gSXQn
cyBkaWZmaWN1bHQgdG8gbWFrZSBhIGNob2ljZS4KCldoYXQgbWFpbnRlbmFuY2UgZGlmZmljdWx0
eSBkbyB5b3Ugc2VlIGhlcmU/ICBJIHRoaW5rIGl0IGxvb2tzCiplYXNpZXIqIGlmIHRoZXNlIGFy
ZSBzcXVhc2hlZCAtLSB0aGF0IHdvdWxkIGF2b2lkIHRoZSBwb3NzaWJpbGl0eSBvZgpiYWNrcG9y
dGluZyBvbmUgd2l0aG91dCB0aGUgb3RoZXIsIHdoaWNoIHdvdWxkIGNlcnRhaW5seSBiZSBhIHBy
b2JsZW0uCgpJZiBhIGJpc2VjdCBsYW5kcyBhZnRlciBwYXRjaCAxLzIgYnV0IGJlZm9yZSAyLzIs
IGl0IGxvb2tzIGxpa2UgaS5NWDhNCndpbGwgYnJlYWsgdW5uZWNlc3NhcmlseS4KCkkgdGhpbmsg
QWhtYWQgaXMgcmlnaHQgdGhhdCBwYXRjaGVzIDEvMiBhbmQgMi8yIHNob3VsZCBiZSBzcXVhc2hl
ZAppbnRvIGEgc2luZ2xlIHBhdGNoIHRvIGF2b2lkIHRoaXMgYmlzZWN0aW9uIGhvbGUuCgpCam9y
bgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
Cg==
