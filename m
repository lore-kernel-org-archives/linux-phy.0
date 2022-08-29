Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8920ECAAD2
	for <linux-phy@archiver.kernel.org>; Mon, 29 Aug 2022 08:10:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K0bfraUTf7hSUuVAebnDZtZxqZBRBqJ1Vikd0QmaD+E=; b=XAGg3T3XFDEg+F
	kS3eUL+YBD+0WXbfoBp/OvEqHc/xFEzDodiO/aDIvF9m5+6vLAxzoyRMhanLtFIsGMAOSt1W9jpPv
	54C1qGtHX90usajwWYo565XF93piyUWIT+nVtSIHknTnDfC/wQY0Eg13ABsUka8YLmNJRlxNAnd9C
	TBLG3jO9HtC8oP6hU+anDc/IG5tgwfWbGyvDD7SWUfevX8WgqF89YrgQDjcszy3QfzpQV9w3XLOUH
	ar3GcpuygOjGLzSxbV030CE5YF1fTD2sYM0ECO7gp4yxFYkufAtwe0+dwrDFaC85OgXIS7M9kfK5D
	CF2RNX3k9V2BH+gMq9rA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSZqp-0061bf-7t; Mon, 29 Aug 2022 08:10:31 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSZqY-0061UE-5n; Mon, 29 Aug 2022 08:10:16 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 9C7ADB80A4A;
	Mon, 29 Aug 2022 08:10:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 450C1C433C1;
	Mon, 29 Aug 2022 08:10:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661760611;
	bh=ghn7+0lbp5TnGMDV+RA4jLLC7eiUFlyQ9hTLHez9pJw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rbO9/u5UUBaOsqvim3f+1Aqomcquo6sV4EGA/3by6gGygz0l0JAvicMAr5e54PM7+
	 bBxFeP4uesJ+ZsvUG6ZCbSgEbrIJRxUYEXcItUh0Ur7EHotBO/yrb4zqn0cWt+Mxd0
	 3qAPqk1NEXIyjYCTa6hknc6R2G1PeEOvNFnSuBU/B73VIlatVXzZh4zIg7qOc+xKh7
	 45ME4vlZAbbU97XIHvxtNh89gSmM/Ezk+f+hiXNZnCg2GFL+T2iZoCuadDnTyWFCPr
	 UUQISYJasVOKFUKF97pJLaF4Bk+W1X44/o1uaJQMtiQT1Es7pd/431eOQ1XaQB8rEr
	 LPArsZwfLkN3w==
Date: Mon, 29 Aug 2022 10:10:02 +0200
From: Lorenzo Pieralisi <lpieralisi@kernel.org>
To: Hongxing Zhu <hongxing.zhu@nxp.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	"l.stach@pengutronix.de" <l.stach@pengutronix.de>,
	"bhelgaas@google.com" <bhelgaas@google.com>,
	"lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
	"robh@kernel.org" <robh@kernel.org>,
	"shawnguo@kernel.org" <shawnguo@kernel.org>,
	"vkoul@kernel.org" <vkoul@kernel.org>,
	"alexander.stein@ew.tq-group.com" <alexander.stein@ew.tq-group.com>,
	"marex@denx.de" <marex@denx.de>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"kernel@pengutronix.de" <kernel@pengutronix.de>,
	dl-linux-imx <linux-imx@nxp.com>
Subject: Re: [PATCH v3 1/6] reset: imx7: Add the iMX8MP PCIe PHY PERST support
Message-ID: <Ywx0WorLvPrXGVt9@lpieralisi>
References: <1660806153-29001-1-git-send-email-hongxing.zhu@nxp.com>
 <1660806153-29001-2-git-send-email-hongxing.zhu@nxp.com>
 <ddbcd90419e9bb4ce7c5b7b3055ee3227c179321.camel@pengutronix.de>
 <AS8PR04MB867626BC5C32AA75466BB9E78C6D9@AS8PR04MB8676.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AS8PR04MB867626BC5C32AA75466BB9E78C6D9@AS8PR04MB8676.eurprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220829_011014_530555_AB6D2A08 
X-CRM114-Status: GOOD (  23.62  )
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

T24gVGh1LCBBdWcgMTgsIDIwMjIgYXQgMTA6NTM6MjRBTSArMDAwMCwgSG9uZ3hpbmcgWmh1IHdy
b3RlOgo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPiA+IEZyb206IFBoaWxpcHAgWmFi
ZWwgPHAuemFiZWxAcGVuZ3V0cm9uaXguZGU+Cj4gPiBTZW50OiAyMDIy5bm0OOaciDE45pelIDE2
OjUxCj4gPiBUbzogSG9uZ3hpbmcgWmh1IDxob25neGluZy56aHVAbnhwLmNvbT47IGwuc3RhY2hA
cGVuZ3V0cm9uaXguZGU7Cj4gPiBiaGVsZ2Fhc0Bnb29nbGUuY29tOyBsb3JlbnpvLnBpZXJhbGlz
aUBhcm0uY29tOyByb2JoQGtlcm5lbC5vcmc7Cj4gPiBzaGF3bmd1b0BrZXJuZWwub3JnOyB2a291
bEBrZXJuZWwub3JnOyBhbGV4YW5kZXIuc3RlaW5AZXcudHEtZ3JvdXAuY29tOwo+ID4gbWFyZXhA
ZGVueC5kZQo+ID4gQ2M6IGxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnOyBkZXZpY2V0cmVl
QHZnZXIua2VybmVsLm9yZzsKPiA+IGxpbnV4LXBjaUB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsKPiA+IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5l
bC5vcmc7IGtlcm5lbEBwZW5ndXRyb25peC5kZTsgZGwtbGludXgtaW14Cj4gPiA8bGludXgtaW14
QG54cC5jb20+Cj4gPiBTdWJqZWN0OiBSZTogW1BBVENIIHYzIDEvNl0gcmVzZXQ6IGlteDc6IEFk
ZCB0aGUgaU1YOE1QIFBDSWUgUEhZIFBFUlNUCj4gPiBzdXBwb3J0Cj4gPiAKPiA+IEhpIFJpY2hh
cmQsCj4gPiAKPiA+IE9uIERvLCAyMDIyLTA4LTE4IGF0IDE1OjAyICswODAwLCBSaWNoYXJkIFpo
dSB3cm90ZToKPiA+ID4gT24gaS5NWDcvaU1YOE1NL2lNWDhNUSwgdGhlIGluaXRpYWxpemVkIGRl
ZmF1bHQgdmFsdWUgb2YgUEVSU1QKPiA+ID4gYml0KEJJVDMpIG9mIFNSQ19QQ0lFUEhZX1JDUiBp
cyAxYicxLgo+ID4gPiBCdXQgaS5NWDhNUCBoYXMgb25lIGludmVyc2VkIGRlZmF1bHQgdmFsdWUg
MWInMCBvZiBQRVJTVCBiaXQuCj4gPiA+Cj4gPiA+IEFuZCB0aGUgUEVSU1QgYml0IHNob3VsZCBi
ZSBrZXB0IDFiJzEgYWZ0ZXIgcG93ZXIgYW5kIGNsb2NrcyBhcmUgc3RhYmxlLgo+ID4gPiBTbyBh
ZGQgdGhlIGkuTVg4TVAgUENJZSBQSFkgUEVSU1Qgc3VwcG9ydCBoZXJlLgo+ID4gCj4gPiB0aGUg
ZGVzY3JpcHRpb24gaXMgZ29vZCBub3cuIEl0IHdvdWxkIGJlIG5pY2UgaWYgdGhpcyBjb3VsZCBh
bHNvIGJlIG1lbnRpb25lZCBpbgo+ID4gdGhlIFJlZmVyZW5jZSBNYW51YWwuCj4gPiAKPiA+IFBs
ZWFzZSByZXBsYWNlICJhZGQiIHdpdGggImZpeCIgaW4gdGhlIHN1YmplY3QsIGFzIEkgcmVxdWVz
dGVkIGVhcmxpZXI6Cj4gPiAicmVzZXQ6IGlteDc6IEZpeCBpLk1YOE1QIFBDSWUgUEhZIFBFUlNU
IHN1cHBvcnQiLgo+ID4gCj4gPiBBbmQgYWRkIGEgZml4ZXMgbGluZToKPiA+IAo+ID4gRml4ZXM6
IGUwODY3MmMwMzk4MSAoInJlc2V0OiBpbXg3OiBBZGQgc3VwcG9ydCBmb3IgaS5NWDhNUCBTb0Mi
KQo+ID4gCj4gPiBXaXRoIHRob3NlIHR3byBjaGFuZ2VzLAo+ID4gUmV2aWV3ZWQtYnk6IFBoaWxp
cHAgWmFiZWwgPHAuemFiZWxAcGVuZ3V0cm9uaXguZGU+Cj4gPiAKPiBIaSBQaGlsaXBwOgo+IE9r
YXksIHdvdWxkIGJlIGNoYW5nZWQgaW4gbmV4dCB2ZXJzaW9uLgoKQUZBSUNTIHRoZXJlIGlzIHN0
aWxsIGEgcGVuZGluZyBjb21tZW50IG9uIHBhdGNoICgyKSBidXQgSSB3aWxsCm1hcmsgdGhpcyBh
cyAiQ2hhbmdlcyByZXF1ZXN0ZWQiIGFuZCB3YWl0IGZvciB0aGUgbmV4dCB2ZXJzaW9uLgoKTG9y
ZW56bwoKPiBUaGFua3MgZm9yIHlvdXIgcmV2aWV3Lgo+IAo+IEJlc3QgUmVnYXJkcwo+IFJpY2hh
cmQgWmh1Cj4gCj4gPiByZWdhcmRzCj4gPiBQaGlsaXBwCj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiBsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dAo+IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
