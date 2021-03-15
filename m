Return-Path: <SRS0=7zeO=IN=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F2922C433E0
	for <linux-phy@archiver.kernel.org>; Mon, 15 Mar 2021 10:41:20 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9E8EA64E0F
	for <linux-phy@archiver.kernel.org>; Mon, 15 Mar 2021 10:41:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9E8EA64E0F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z3O5uO3JHpf+l66+CQRw7SjiCcV/Xtafby27zF27Kdo=; b=Tyhno6JuuZWLYHvG1d6pQfSfQ
	VEEVQPHX72oOmsk6Vk6vsUwJGLyG387mulUxoGL2yXIQFi3S6/tX1A+sK/KmBSiTq3qL2dRXOH7cv
	cjwVoTKp6xGjZPOMExiVclThkx34knZf8EXXgmdpD8MWBprnO0rq5gy2E5pp44gOMxMATLpiFgZGy
	V5NvRw/eS7ND7ktMpgwazXcogYP1hrT/4Nv6m2t0YGBveWbugUN5yneiP4Iv4BI9ftzrVI7+UzNWz
	Yq9j9YDpSE5HljJzR2XRpRRYNhRnXiPfkZ1dcFi6FS+88VNShBXxAjNes2WaSrIg4vyVY3uNatPcQ
	GHcjzx9Yg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLkf0-00FXj3-PC; Mon, 15 Mar 2021 10:41:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLkex-00FXi0-2K
 for linux-phy@lists.infradead.org; Mon, 15 Mar 2021 10:41:17 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id D581964E12;
 Mon, 15 Mar 2021 10:41:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1615804873;
 bh=jemw6Q+9tGFKBMg01Wj15A1Cf1dSvnBxLZLbIMDh/cs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UoKXRcRoKfKWLN+JjkIsnp2hEgi72G1v9sRFzRP5W9J8MctCTKE4a9WwTiNpw9RoL
 wsxxXyklXfn1KXqesUl5D0QH4dcAQD6I3pm6qastJ1hn6fwunjzaBl6EJ88vGLH0aZ
 rioFk7WnnW3Ayj/68ZdrqzbMUpnKVrKQF1mvlONAYORCJ58v1V+M9RlW+5u66NR4Zm
 Vzqfg32a3e1TCF1+dOE5Ja9Ju59AZftQANad/pIr/ko4uev83XTm/qgHw1D89Q/3oU
 DSoAvqRBIf4l68g6PBJkac2f7q2jDtSRaH99vurg4cnylgGkXICT7P5FQK7SlT3+OJ
 l7i/4nmoU3dPg==
Date: Mon, 15 Mar 2021 16:11:10 +0530
From: Vinod Koul <vkoul@kernel.org>
To: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Hauke Mehrtens <hauke@hauke-m.de>,
 bcm-kernel-feedback-list@broadcom.com,
 =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 linux-phy@lists.infradead.org, Vivek Unune <npcomplete13@gmail.com>
Subject: Re: [PATCH] dt-bindings: phy: bcm-ns-usb3-phy: convert to yaml
Message-ID: <YE85xs+HX5UUXlXo@vkoul-mobl>
References: <20201116074650.16070-1-zajec5@gmail.com>
 <ed093ddb-da37-c3c4-cdd9-3b8e8db776bb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ed093ddb-da37-c3c4-cdd9-3b8e8db776bb@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210315_104115_420147_617395E0 
X-CRM114-Status: GOOD (  13.84  )
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

T24gMTEtMDMtMjEsIDIxOjMxLCBSYWZhxYIgTWnFgmVja2kgd3JvdGU6Cj4gSGksCj4gCj4gT24g
MTYuMTEuMjAyMCAwODo0NiwgUmFmYcWCIE1pxYJlY2tpIHdyb3RlOgo+ID4gRnJvbTogUmFmYcWC
IE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgo+ID4gCj4gPiAxLiBDaGFuZ2Ugc3ludGF4IGZy
b20gdHh0IHRvIHlhbWwKPiA+IDIuIERyb3AgIkRyaXZlciBmb3IiIGZyb20gdGhlIHRpdGxlCj4g
PiAzLiBEcm9wICJyZWcgPSA8MHgwPjsiIGZyb20gZXhhbXBsZSAobm90aWNlZCBieSBkdF9iaW5k
aW5nX2NoZWNrKQo+ID4gNC4gU3BlY2lmeSBsaWNlbnNlCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6
IFJhZmHFgiBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4KPiA+IC0tLQo+ID4gSSB0aGluayB0
aGlzIHNob3VsZCBnbyB0aHJvdWdoIGxpbnV4LXBoeSB0cmVlLiBLaXNob24sIFZpbm9kLCBjYW4g
eW91Cj4gPiB0YWtlIHRoaXMgcGF0Y2g/Cj4gPiAKPiA+IFRoaXMgcGF0Y2ggZ2VuZXJhdGVzIGEg
ZmFsc2UgcG9zaXRpdmUgY2hlY2twYXRjaC5wbCB3YXJuaW5nIFswXS4KPiA+IFBsZWFzZSBpZ25v
cmU6Cj4gPiBXQVJOSU5HOiBEVCBiaW5kaW5nIGRvY3MgYW5kIGluY2x1ZGVzIHNob3VsZCBiZSBh
IHNlcGFyYXRlIHBhdGNoLiBTZWU6IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9z
dWJtaXR0aW5nLXBhdGNoZXMucnN0Cj4gPiAKPiA+IFswXSBodHRwczovL2xrbWwub3JnL2xrbWwv
MjAyMC8yLzE4LzEwODQKPiAKPiBLaXNob24sIFZpbm9kOiBJIHNlbnQgdGhpcyBwYXRjaCBiYWNr
IGluIERlY2VtYmVyLCBpdCB3YXMgUmV2aWV3ZWQtYnkKPiBSb2IsIGJ1dCBuZXZlciBhY2NlcHRl
ZC4KPiAKPiBDb3VsZCB5b3UgcHVzaCB0aGlzIHBhdGNoIHRvIHRoZSBsaW51eC1waHkuZ2l0PwoK
Q2FuIHlvdSBwbGVhc2UgcmViYXNlIGFuZCByZXNlbnQgbWUgdGhpcyBwYXRjaC4gSSBhbSB0cnlp
bmcgdG8Kc3RyZWFtbGluZSBwYXRjaGVzIG5vdyB1c2luZyBwaHkgbWwgYW5kIHB3IGluc3RhbmNl
IHNvIHRoYXQgd2UgZG9udCBtaXNzCmFueXRoaW5nLi4KClRoYW5rcwoKLS0gCn5WaW5vZAoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
