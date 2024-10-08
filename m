Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30C1DCEF144
	for <linux-phy@archiver.kernel.org>; Tue,  8 Oct 2024 09:28:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:
	In-Reply-To:References:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jWkhKQHMc9t77YYpyxhhOH0KodGmGINqG1Ikh3RBk3s=; b=ZYCwmtYq55EllS
	Wl0EhX5qo2buxNnVeDTOO+UsT0C8IbQPbgR8nVsfjisQCluQqWwcUGJ2TeOo2/69iYc9T9WMbTGXv
	Dz+/ZDTEol7JclxSRnObfb/g4BC/snpdqozEEeCPfAXvcMhA9aM7GPDZRtVQCthGC91UYHEqrqgB3
	Eumdq43JB/9YYeCVhBsRuKEc8A/656Oki6al1xnS9VW3716yZPQRahSvzzm8ycHRulqapZ7okNq+O
	y/JL4BVkRNzQBpBhwWQsaxZQDtEC/pyEdFVEdk+If0vkkQlazeOPlpwEKzncMn9s0tEembYuQRqRT
	rs1INYy7+DY8Zf6r+/dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sy6Vm-00000005Iui-3fJD;
	Tue, 08 Oct 2024 09:28:10 +0000
Received: from mout.gmx.net ([212.227.15.15])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sy6VJ-00000005Imk-1n2p
	for linux-phy@lists.infradead.org;
	Tue, 08 Oct 2024 09:27:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1728379637; x=1728984437;
	i=markus.stockhausen@gmx.de;
	bh=RTylzWO0f7AgsLiIL3tJvlvA49O22v3qoJcAFWtddDY=;
	h=X-UI-Sender-Class:From:To:References:In-Reply-To:Subject:Date:
	 Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=pyJfvswLMQGvrSmtLfPFJXwq7k7RyHD+RwpJ/gBqttKBiOc3b4kJkCqBLSsokKWJ
	 Fca25Eeei54747oxe6F/lpaxBW9rP9172r5kFPI6BSKhOC41tGhdDkVd2CifkWcKq
	 4Sk9bgKx6wluAWyaSHPZ+JyK1m462Y0I/MHzI/g/H88+8xryZXAneuXoAJKNVhRQ/
	 DU1Tgw8OmjjCsoRDUb19rZcBTZolhLb6Oi9SjZOMAhOXgMKsk4xzPxRSem6yyUgsr
	 6yhwX4WFa/6WgQGAqpf6Hj2AUYcNLVF5NxGvsP9jbbBG/yjbkhlrUNfrG53SaFgpD
	 WHXd3ARrFr5FG9HYNw==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from colnote55 ([94.31.70.45]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1M4JmN-1syNc42IaH-005Pnb; Tue, 08
 Oct 2024 11:27:17 +0200
From: <markus.stockhausen@gmx.de>
To: "'Krzysztof Kozlowski'" <krzk@kernel.org>,
	<linux-phy@lists.infradead.org>,
	<chris.packham@alliedtelesis.co.nz>,
	<devicetree@vger.kernel.org>
References: <20241007163623.3274510-1-markus.stockhausen@gmx.de> <20241007163623.3274510-2-markus.stockhausen@gmx.de> <e0355f2b-9d77-4792-9405-14b0bf79ac32@kernel.org> <000b01db1944$5bd444b0$137cce10$@gmx.de> <d23ba989-2ada-4033-a890-928bf4e746b3@kernel.org> <000f01db194f$2d140880$873c1980$@gmx.de> <30a71840-75ee-44d6-af6e-fca27af88750@kernel.org>
In-Reply-To: <30a71840-75ee-44d6-af6e-fca27af88750@kernel.org>
Subject: AW: AW: AW: [PATCH v2 1/3] dt-bindings: phy: add realtek,otto-serdes PHY binding
Date: Tue, 8 Oct 2024 11:27:15 +0200
Message-ID: <001401db1964$44f0b010$ced21030$@gmx.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Content-Language: de
Thread-Index: AQFmt424TDky7oOEBHAYnHfWLjuWPwFdE8X8Ac4j3w8Bo7K4gQFrn2WmAl9/+/kBd/naN7MUxdeA
X-Provags-ID: V03:K1:h1SdJmszbde4k0pq6JyhtbLWcCW4JuJAycn0DV04BZLHn8IeO1x
 j/4KQ4oKv8cv8Aj1WGcA3mU6oD4ZgYF9MAbQnJKzr7E88CIdrro8rvc9led1nuAcPpFGorB
 GlY+JKGKf8Obw4M4SZKPjLodzMpiPwtCxGs0ZwsdPToGXSb/1u3WDFyx13sSrZbjGvIGMsf
 SOW60MZBLDajuYlj/y9zw==
UI-OutboundReport: notjunk:1;M01:P0:l8O+JBtHtTw=;AHVyiKdiIHq+ISkc20K52rWeN1y
 4kv4xhSdcM2aVr43Jvl/fmYEe5aYteYdRP6m9Tj5aGuq8Cz5aHri1g404CjI6cq2perJElDEa
 opWQWTUDPei3297+0BdMWgt5ptunZBrzQIn0gqY+VAyuMxyGJC2kW78CUzabri7lCctdWnuaq
 wuxs8LQELYAMt/wDVfORTPDMz2wgnPMvN5HfFnA7udds/xQT0mxRI/jIfbrQ8U7YeT2oESHWH
 jqzuVejnnBEqgWog6Y9VMxPoJ7fVSHJU5A1gXpOJozmFBeUmnZmbgxWbmL9LVRREf+HkeOpOu
 Kj1gOj9GwEoczDrTWcp/2wCZLEmxkASessvPHhkb2HZ/suyN1gwf96gESct7AEUTgX4BVboY5
 jv/g6yRwDZHanvcdvjxw/gERcPoXF90RUz4FMA3TxBRGsxqgWyeI/P7JRaS6Mkva219Y7xdOR
 hOYo4p/aV5JoxZhuEfvK4kasgPTg80BPZFx+jY5gAW28eMDydU0pmHXkStQPVKkP/8AgnoPbY
 sh21SUqI3192Unr2OowJpiu12ppeauQE5EPmXxnsiHWpJRZ+Ux9oPIQdnkeJO52nxN6Qq7Qo/
 Lnj3skTt6lRI8zTMW+Ee/Dvsimt1tS7eRvpNzWU8kmDJALX8XfuGmbCSkcmLukHaC5Bh0EEpY
 fBdhw5e9wikHDukmOtbPcua9u5mHs/cg5GH+Fh/2U0ywvPiCUdCTKAw0E0XZmlTW3BXK/fNZF
 9Q2hEiKutY1eq9Lx5X4Slc6IsLGiMqYJ7JBTfCx1jzQM/8t5PnbcvLXDWfV1dAK+aXvUvQ3QI
 IjBMrHZ57BGEEIjVKKzIcp2g==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_022741_775856_A32B6D03 
X-CRM114-Status: GOOD (  15.73  )
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

PiAtLS0tLVVyc3Byw7xuZ2xpY2hlIE5hY2hyaWNodC0tLS0tCj4gVm9uOiBLcnp5c3p0b2YgS296
bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+IAo+IEdlc2VuZGV0OiBEaWVuc3RhZywgOC4gT2t0b2Jl
ciAyMDI0IDEwOjMyCj4gQW46IG1hcmt1cy5zdG9ja2hhdXNlbkBnbXguZGU7IGxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnOyBjaHJpcy5wYWNraGFtQGFsbGllZHRlbGVzaXMuY28ubno7IGRl
dmljZXRyZWVAdmdlci5rZXJuZWwub3JnCj4gQmV0cmVmZjogUmU6IEFXOiBBVzogW1BBVENIIHYy
IDEvM10gZHQtYmluZGluZ3M6IHBoeTogYWRkIHJlYWx0ZWssb3R0by1zZXJkZXMgUEhZIGJpbmRp
bmcKPgo+IE9uIDA4LzEwLzIwMjQgMDg6NTYsIG1hcmt1cy5zdG9ja2hhdXNlbkBnbXguZGUgd3Jv
dGU6Cj4gPj4KPiA+Pj4gRS5nLiBzdCxpbnZlcnQtZXh0LiBTb21ldGhpbmcgbGlrZSB0aGlzIHdp
bGwgYmUgbmVlZGVkIGluIHRoZSBmdXR1cmUgCj4gPj4+IGJlY2F1c2UgdGhlIFNlckRlcyBhbGxv
dyB0byBzd2FwIHBvbGFyaXR5IHdoaWNoIG11c3QgYmUgY2hhbmdlZCAKPiA+Pj4gZGVwZW5kaW5n
IG9uIHRoZSBzd2l0Y2ggZGVzaWduLiBIb3cgdG8gZG8gdGhpcz8KPiA+Pgo+ID4+IEkgZG8gbm90
IHVuZGVyc3RhbmQgdGhlIGhhcmR3YXJlIGFzcGVjdCBkaXNjdXNzZWQgaW4gdGhlIHByb3BlcnR5
IGRlc2NyaXB0aW9uLi4uIHByb2JhYmx5IGJlY2F1c2UgdGhlcmUgaXMgbm8gaGFyZHdhcmUgZGVz
Y3JpcHRpb24gYXQgYWxsLCBidXQgaW5zdGVhZCB5b3Ugc3BlYWsgYWJvdXQgZHJpdmVyLgo+ID4+
Cj4gPj4gSSBkbyBub3QgdW5kZXJzdGFuZCBob3cgcG9sYXJpdHkgaGFzIGFueXRoaW5nIHRvIGRv
IHdpdGggVS1Cb290IGNvbmZpZ3VyaW5nIHNlcmRlcy4KPiA+IAo+ID4gTWF5YmUgbXkgbGFjayBv
ZiBrbm93bGVkZ2UgaW4gcGxhdGZvcm0gZHJpdmVyIHByb2dyYW1taW5nIG9yIHRoZSAKPiA+IG5h
bWluZyBjb252ZW50aW9ucyBsZWFkcyB0byBjb25mdXNpb24uIEknbSBzZWFyY2hpbmcgZm9yIGtu
b2JzIHRvIAo+ID4gY29udHJvbCB0aGUgYmVoYXZpb3VyIG9mIHRoZSBTZXJEZXMgZGVwZW5kaW5n
IG9uIHRoZSBoYXJkd2FyZS4gVHdvIGV4YW1wbGVzIGFyZSAobW9yZSBtYXkgY29tZSk6Cj4gPiAK
PiA+IC0gImlnbm9yZSBTZXJEZXMgWCI6IGJlY2F1c2UgdGhlIHByb3ZpZGVkIHBhdGNoIHNlcXVl
bmNlIGNvbmZ1c2VzIHRoZSAKPiA+IFNlckRlcyBhbmQgb3ZlcndyaXRlcyByZWdpc3RlcnMgd2l0
aCB3cm9uZyB2YWx1ZXMgdGhhdCB2ZW5kb3IgcGF0Y2hlZCAKPiA+IFUtQm9vdCBoYXMgc2V0dXAg
Y29ycmVjdGx5IGJlZm9yZS4KPgo+IEFuZCBpZiBzb21lb25lIHVwZGF0ZXMgdGhlIGJvb3Rsb2Fk
ZXIgdG8gYSBiaXQgZGlmZmVyZW50IG9uZSwgdGhlIERUUyAKPiBiZWNvbWVzIHdyb25nPyBIb3cg
ZG8geW91IGhhbmRsZSB0aGVuIHNhbWUgYm9hcmQgd2l0aCB0d28gZGlmZmVyZW50IAo+IGJvb3Rs
b2FkZXJzIHJlcXVpcmluZyB0d28gZGlmZmVyZW50IERUUz8gRFRTIGlzIHNvZnR3YXJlLWluZGVw
ZW5kZW50Cj4gZGVzY3JpcHRpb24gb2YgdGhlIGhhcmR3YXJlLCBzbyB0aGlzIGRvZXMgbm90IGxv
b2sgbGlrZSBEVFMgcHJvcGVydHkuCgpHb29kIHBvaW50LiBTbyB0aGUgaW5pdGlhbCBpZGVhIHRv
IHByb3ZpZGUgZHluYW1pYyBwYXRjaCBzZXF1ZW5jZXMgd2FzCnRoZSByaWdodCBkaXJlY3Rpb24g
YnV0IHN0b3JpbmcgaW4gZGV2aWNldHJlZSBpcyB3cm9uZy4gTGlrZSBDaHJpcyBtZW50aW9uZWQK
SSB3b3VsZCBjaGFuZ2UgdGhlIGNvZGUgdG8gbWFrZSB1c2Ugb2YgYSBkeW5hbWljYWxseSBsb2Fk
ZWQgZmlybXdhcmUgZmlsZS4KCi0gaWYgZXhpc3Q6IHJ1biBzZXF1ZW5jZXMgZnJvbSB0aGVyZQot
IGlmIG5vdCBleGlzdDoga2VlcCByZWdpc3RlcnMgYXMgaXMuCgpSZWFzb25hYmxlIGlkZWE/CgpC
ZXN0IHJlZ2FyZHMuCgpNYXJrdXMKCgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
