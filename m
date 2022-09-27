Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 836D4C54EE9
	for <linux-phy@archiver.kernel.org>; Tue, 27 Sep 2022 10:41:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aspMrtz6y19Hg1fqQ0wBntUUxZC0uIPgl1iC4DvV+ZE=; b=JpGcwa3Gj1yphL
	sJL2mBBS0hrb1Nk8kv6b//EwLoYkiW3R7Gqlh+a+GxvPdqKq+lgOQE9dkqXidgF5qJta1YqASO5bc
	OK8CYi7ThR0kQ5gsPDYUtxlfoALDRH0wRb2VbCENci8ux1fmd0gp7ZkpYrx1yP/8zR6EDuziU5tbg
	3NAA5Ud6/IhVMec+Ugfjtox+SZPCdHBOcly5ndL6dx0pfaEt7hC4VlWqQK0+L04amtwrZgumQTHVu
	yt7KFu2trEI8sI4M4HryxPO/CxmHVR9NeLaGvLl7tw2T3Y0SBipOMTrLtoHDMkl02NASqPBJfIJ9L
	bYeBcXS1QoXeRn9Qp2Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od81z-009v35-QI; Tue, 27 Sep 2022 10:41:39 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od818-009uP5-Rf; Tue, 27 Sep 2022 10:40:48 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 38328617AE;
	Tue, 27 Sep 2022 10:40:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 00533C433C1;
	Tue, 27 Sep 2022 10:40:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664275245;
	bh=DA4fSOa6GRctG/cz6WPvoD1hPM15TyILiZ0edmgdXBE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GH2U78y/mpeStLQelepkQSPwkIumC5OU4regHqfZ0qggtQDJAFEFIU5kWazfBL4Wj
	 BmYTA/xGPCvK62LHkFMajL4fk9ZN9dmySTCfhW+pZ3OiHSv4Q29Rsc7ClSgd5iLd6e
	 xmvij6CMrrntkVH/xYuOs0xdgMQzRXigFIECJgDIOReu/iZGGZI1ji/HI9Lcw01tpF
	 yCWQN4lwK5pKQu9mzJwPYvou/FMO4U8MiEniXYO16qNALBOs2/ubMjZaDJWjUO6+9V
	 Oc9lQt4HUSaBWjOxYSweRitzkozSZMKswkg5aYzqnhSiAQBNZU1cTCOLImt0HZcAEn
	 0DgbQ27azZrcw==
Date: Tue, 27 Sep 2022 12:40:38 +0200
From: Lorenzo Pieralisi <lpieralisi@kernel.org>
To: Hongxing Zhu <hongxing.zhu@nxp.com>
Cc: Bjorn Helgaas <helgaas@kernel.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>,
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
Message-ID: <YzLTJqzvv6BgraiL@lpieralisi>
References: <AS8PR04MB86763A2187AED57CFD55625E8C799@AS8PR04MB8676.eurprd04.prod.outlook.com>
 <20220830150534.GA97821@bhelgaas>
 <AS8PR04MB867644D39C15DDEF5CE88E008C789@AS8PR04MB8676.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AS8PR04MB867644D39C15DDEF5CE88E008C789@AS8PR04MB8676.eurprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_034047_007271_D7EE88EE 
X-CRM114-Status: GOOD (  38.56  )
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

T24gV2VkLCBBdWcgMzEsIDIwMjIgYXQgMDE6Mzc6MDJBTSArMDAwMCwgSG9uZ3hpbmcgWmh1IHdy
b3RlOgo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPiA+IEZyb206IEJqb3JuIEhlbGdh
YXMgPGhlbGdhYXNAa2VybmVsLm9yZz4KPiA+IFNlbnQ6IDIwMjLlubQ45pyIMzDml6UgMjM6MDYK
PiA+IFRvOiBIb25neGluZyBaaHUgPGhvbmd4aW5nLnpodUBueHAuY29tPgo+ID4gQ2M6IEFobWFk
IEZhdG91bSA8YS5mYXRvdW1AcGVuZ3V0cm9uaXguZGU+OyBsLnN0YWNoQHBlbmd1dHJvbml4LmRl
Owo+ID4gYmhlbGdhYXNAZ29vZ2xlLmNvbTsgbG9yZW56by5waWVyYWxpc2lAYXJtLmNvbTsgdmtv
dWxAa2VybmVsLm9yZzsgTWFyY2VsCj4gPiBaaXN3aWxlciA8bWFyY2VsLnppc3dpbGVyQHRvcmFk
ZXguY29tPjsga2lzaG9uQHRpLmNvbTsKPiA+IGxpbnV4LXBjaUB2Z2VyLmtlcm5lbC5vcmc7IGxp
bnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IGRsLWxpbnV4LWlteAo+ID4gPGxpbnV4LWlteEBu
eHAuY29tPjsga2VybmVsQHBlbmd1dHJvbml4LmRlOyBsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZzsKPiA+IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+ID4gU3ViamVj
dDogUmU6IFtQQVRDSCB2MSAwLzJdIEZpeCB0aGUgd3Jvbmcgb3JkZXIgb2YgcGh5IGNhbGxiYWNr
cwo+ID4gCj4gPiBPbiBUdWUsIEF1ZyAzMCwgMjAyMiBhdCAwNzo1MDo1NUFNICswMDAwLCBIb25n
eGluZyBaaHUgd3JvdGU6Cj4gPiA+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPiA+ID4g
PiBGcm9tOiBBaG1hZCBGYXRvdW0gPGEuZmF0b3VtQHBlbmd1dHJvbml4LmRlPgo+ID4gPiA+IFNl
bnQ6IDIwMjLlubQ45pyIMzDml6UgMTU6MTYKPiA+ID4gPiBUbzogSG9uZ3hpbmcgWmh1IDxob25n
eGluZy56aHVAbnhwLmNvbT47IGwuc3RhY2hAcGVuZ3V0cm9uaXguZGU7Cj4gPiA+ID4gYmhlbGdh
YXNAZ29vZ2xlLmNvbTsgbG9yZW56by5waWVyYWxpc2lAYXJtLmNvbTsgdmtvdWxAa2VybmVsLm9y
ZzsKPiA+ID4gPiBNYXJjZWwgWmlzd2lsZXIgPG1hcmNlbC56aXN3aWxlckB0b3JhZGV4LmNvbT47
IGtpc2hvbkB0aS5jb20KPiA+ID4gPiBDYzogbGludXgtcGNpQHZnZXIua2VybmVsLm9yZzsgbGlu
dXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsKPiA+ID4gPiBkbC1saW51eC1pbXggPGxpbnV4LWlt
eEBueHAuY29tPjsga2VybmVsQHBlbmd1dHJvbml4LmRlOwo+ID4gPiA+IGxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnOyBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPiA+
ID4gPiBTdWJqZWN0OiBSZTogW1BBVENIIHYxIDAvMl0gRml4IHRoZSB3cm9uZyBvcmRlciBvZiBw
aHkgY2FsbGJhY2tzCj4gPiAKPiA+IFRoZSBhYm92ZSBxdW90aW5nIHN0eWxlIG1ha2VzIGl0IGhh
cmRlciB0aGFuIG5lY2Vzc2FyeSB0byBmb2xsb3cgY29udmVyc2F0aW9uLgo+ID4gU2VlIGhpbnRz
IGF0Ogo+ID4gCj4gPiAKPiA+IGh0dHBzOi8vZXVyMDEuc2FmZWxpbmtzLnByb3RlY3Rpb24ub3V0
bG9vay5jb20vP3VybD1odHRwcyUzQSUyRiUyRmVuLndpa2kKPiA+IHBlZGlhLm9yZyUyRndpa2kl
MkZQb3N0aW5nX3N0eWxlJTIzSW50ZXJsZWF2ZWRfc3R5bGUmYW1wO2RhdGE9MDUlN0MwMQo+ID4g
JTdDaG9uZ3hpbmcuemh1JTQwbnhwLmNvbSU3QzcwZjM4MjE0YzhmOTRjNTkzMmI0MDhkYThhOTkx
OTk2JTdDCj4gPiA2ODZlYTFkM2JjMmI0YzZmYTkyY2Q5OWM1YzMwMTYzNSU3QzAlN0MwJTdDNjM3
OTc0Njg3NDMzNTg5MjA5Cj4gPiAlN0NVbmtub3duJTdDVFdGcGJHWnNiM2Q4ZXlKV0lqb2lNQzR3
TGpBd01EQWlMQ0pRSWpvaVYybHVNeklpTEMKPiA+IEpCVGlJNklrMWhhV3dpTENKWFZDSTZNbjAl
M0QlN0MzMDAwJTdDJTdDJTdDJmFtcDtzZGF0YT1jZVptRGQKPiA+IHNOZUM5blU2cW10MnFYUjAz
ZlFuMzN2WSUyRnF2QklZemVXVzdtayUzRCZhbXA7cmVzZXJ2ZWQ9MAo+ID4gCj4gPiBodHRwczov
L2V1cjAxLnNhZmVsaW5rcy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz91cmw9aHR0cHMlM0ElMkYl
MkZwZW9wbGUuCj4gPiBrZXJuZWwub3JnJTJGdGdseCUyRm5vdGVzLWFib3V0LW5ldGlxdWV0dGUm
YW1wO2RhdGE9MDUlN0MwMSU3Q2hvbmd4aQo+ID4gbmcuemh1JTQwbnhwLmNvbSU3QzcwZjM4MjE0
YzhmOTRjNTkzMmI0MDhkYThhOTkxOTk2JTdDNjg2ZWExZDNiCj4gPiBjMmI0YzZmYTkyY2Q5OWM1
YzMwMTYzNSU3QzAlN0MwJTdDNjM3OTc0Njg3NDMzNTg5MjA5JTdDVW5rbm8KPiA+IHduJTdDVFdG
cGJHWnNiM2Q4ZXlKV0lqb2lNQzR3TGpBd01EQWlMQ0pRSWpvaVYybHVNeklpTENKQlRpSTZJazFo
YQo+ID4gV3dpTENKWFZDSTZNbjAlM0QlN0MzMDAwJTdDJTdDJTdDJmFtcDtzZGF0YT1Qa2hwR0dm
N0ZjdnNRVGpjMAo+ID4gaFVNcHI5UTRKVktlRm9MUjRmb0E2enQ2amclM0QmYW1wO3Jlc2VydmVk
PTAKPiA+IAo+ID4gVGhlIGlkZWFsIHRoaW5nIHdvdWxkIGJlIHNvbWV0aGluZyBsaWtlIHRoaXMs
IHdoZXJlIHRoZXJlJ3MgYSBzaW5nbGUgbGluZSBmb3IKPiA+IGVhY2ggc2VuZGVyOgo+ID4gCj4g
PiBPbiBUdWUsIEF1ZyAzMCwgMjAyMiBhdCAwNzo1MDo1NUFNICswMDAwLCBIb25neGluZyBaaHUg
d3JvdGU6Cj4gPiA+IE9uIFR1ZSwgQXVnIDMwLCAyMDIyLCBhdCAwMzoxNlBNLCBBaG1hZCBGYXRv
dW0gd3JvdGU6Cj4gPiA+ID4gT24gMzAuMDguMjIgMDU6NDcsIEhvbmd4aW5nIFpodSB3cm90ZToK
PiA+ID4gPiA+IERvIHlvdSBtZWFuIHRvIHNxdWFzaCB0aGlzIGZpeCB0byB0aGUgcHJldmlldyBz
ZXJpZXM/Cj4gPiA+ID4gPiBJJ20gYWZyYWlkIHRoYXQgaXQncyBub3QgZWFzeSB0byBkbyB0aGF0
Lgo+ID4gPiA+ID4gQmVjYXVzZSB0aGVyZSBhcmUgYSBsb3Qgb2YgcGNpLWlteDYgY29kZSBjaGFu
Z2VzIGFmdGVyCj4gPiA+ID4gPiBjb21taXQ6IDFhYTk3YjAwMjI1OCAoInBoeTogZnJlZXNjYWxl
OiBwY2llOiBJbml0aWFsaXplIHRoZSBpbXg4Cj4gPiA+ID4gPiBwY2llIHN0YW5kYWxvbmUgcGh5
IGRyaXZlciIpLgo+ID4gPiA+Cj4gPiA+ID4gVGhlIHdheSBJIHVuZGVyc3RhbmQgaXQsIGlmIGEg
YmlzZWN0IGVuZHMgdXAgYmV0d2VlbiB5b3VyIHR3bwo+ID4gPiA+IHBhdGNoZXMsIGkuTVg4TSBQ
Q0llIHdpbGwgYmUgYnJva2VuLCB3aGVyZWFzIGl0IHdvcmtlZCBiZWZvcmUuIEkKPiA+ID4gPiB0
aHVzIHdvbmRlciBpZiB3ZSBzaG91bGRuJ3QgaW5zdGVhZCBzcXVhc2ggdGhpcyBzZXJpZXMgaGVy
ZSBpbnRvIGEKPiA+ID4gPiBzaW5nbGUgcGF0Y2guCj4gPiA+Cj4gPiA+IFllcywgaXQncyBhIHBv
c3NpYmxlIGNhc2Ugd2hlbiBkbyB0aGUgYmlzZWN0Lgo+ID4gPiBTaW5jZSB0aGVzZSBjaGFuZ2Vz
IGFyZSBiZWxvbmcgdG8gZGlmZmVyZW50IGdpdCByZXBvLgo+ID4gCj4gPiBJIGRvbid0IHVuZGVy
c3RhbmQgdGhlIHBvaW50IGFib3V0IGRpZmZlcmVudCBnaXQgcmVwb3MuICBQYXRjaCAxLzIgdG91
Y2hlcwo+ID4gZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpLWlteDYuYywgcGF0Y2ggMi8y
IHRvdWNoZXMKPiA+IGRyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLWlteDhtLXBjaWUuYy4g
IFRoZXkncmUgaW4gZGlmZmVyZW50IGRpcmVjdG9yaWVzLAo+ID4gb2YgY291cnNlLCBidXQgYXJl
IGluIHRoZSBzYW1lIExpbnV4IGtlcm5lbCBzb3VyY2UgcmVwby4KPiA+IAo+ID4gVGhleSdyZSBt
YWludGFpbmVkIGJ5IGRpZmZlcmVudCBwZW9wbGUsIGJ1dCB3ZSBjYW4gZWFzaWx5IGRlYWwgd2l0
aCB0aGF0IGJ5Cj4gPiBnZXR0aW5nIGFuIGFjayBmcm9tIG9uZSBhbmQgbWVyZ2luZyB2aWEgdGhl
IG90aGVyLgo+ID4gCj4gPiA+IEl0IHdpbGwgYnJpbmcgbWFpbnRhaW4gZGlmZmljdWx0aWVzIGlm
IHRoZXNlIHR3byBwYXRjaGVzIGFyZSBzcXVhc2hlZAo+ID4gPiBpbnRvIGEgIHNpbmdsZSBvbmUu
Cj4gPiA+IEl0J3MgZGlmZmljdWx0IHRvIG1ha2UgYSBjaG9pY2UuCj4gPiAKPiA+IFdoYXQgbWFp
bnRlbmFuY2UgZGlmZmljdWx0eSBkbyB5b3Ugc2VlIGhlcmU/ICBJIHRoaW5rIGl0IGxvb2tzCj4g
PiAqZWFzaWVyKiBpZiB0aGVzZSBhcmUgc3F1YXNoZWQgLS0gdGhhdCB3b3VsZCBhdm9pZCB0aGUg
cG9zc2liaWxpdHkgb2YgYmFja3BvcnRpbmcKPiA+IG9uZSB3aXRob3V0IHRoZSBvdGhlciwgd2hp
Y2ggd291bGQgY2VydGFpbmx5IGJlIGEgcHJvYmxlbS4KPiA+IAo+ID4gSWYgYSBiaXNlY3QgbGFu
ZHMgYWZ0ZXIgcGF0Y2ggMS8yIGJ1dCBiZWZvcmUgMi8yLCBpdCBsb29rcyBsaWtlIGkuTVg4TSB3
aWxsIGJyZWFrCj4gPiB1bm5lY2Vzc2FyaWx5Lgo+ID4gCj4gPiBJIHRoaW5rIEFobWFkIGlzIHJp
Z2h0IHRoYXQgcGF0Y2hlcyAxLzIgYW5kIDIvMiBzaG91bGQgYmUgc3F1YXNoZWQgaW50byBhCj4g
PiBzaW5nbGUgcGF0Y2ggdG8gYXZvaWQgdGhpcyBiaXNlY3Rpb24gaG9sZS4KPiBIaSBCam9ybjoK
PiBUaGFua3MgZm9yIHlvdXIgY29tbWVudHMuCj4gTXkgZGVzY3JpcHRpb25zIGFyZSBub3QgYWNj
dXJhdGUgZW5vdWdoLiBUaGVzZSB0d28gZmlsZXMgYXJlIG1haW50YWluZWQgYnkKPiAgZGlmZmVy
ZW50IHBlb3BsZSwgSSdtIGFmcmFpZCB0byBicmluZyB0cm91YmxlcyB0byB0aGUgbWFpbnRhaW5l
cnMgaWYKPiBJIHNxdWFzaCB0aGVzZSB0d28gcGF0Y2ggaW50byBhIHNpbmdsZSBvbmUgYmVmb3Jl
Lgo+IE5vdywgSSB1bmRlcnN0b29kIHRoZSBzaXR1YXRpb24uCj4gSSdtIGdsYWQgdG8gc3F1YXNo
IHRoZW0gdG8gYXZvaWQgdGhlIGJpc2V0aW9uIGhvbGUuCgpBcmUgeW91IHNlbmRpbmcgYW4gdXBk
YXRlZCBwYXRjaCA/CgpUaGFua3MsCkxvcmVuem8KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
