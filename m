Return-Path: <SRS0=7zeO=IN=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95439C433DB
	for <linux-phy@archiver.kernel.org>; Mon, 15 Mar 2021 17:28:09 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D723F64EB3
	for <linux-phy@archiver.kernel.org>; Mon, 15 Mar 2021 17:28:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D723F64EB3
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=milecki.pl
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IhRlr7yy1YD1Sn6y5cMGI+pqjs4WIambDm1n5lpXgNQ=; b=lOV+PItgR2438V3dgjeZNRX/E
	aMMJudF0HCoPqAnsv1YOoTzhDjZzf+kBDXVQOthQc+d9tV+r3bEnRxHAxY2FOK3xUW0PHePeY0g+U
	UzEV050qz/xdhFEPreecOH/eCzcqbYqyPDQVVZajcbAc1v4k9eElcIKDDD9Kvp56Wpvj/Hu7DxnX5
	qrVrDFSuAomZSFEBhNFCYIa3iFyVOMjA06u4UaYxSqH1qS5Jy5UtVPkQzIQ8Iv6bwHCaexHhY7XzW
	+Wib8UEzrvzYiNs/hxaG48p/plz/CiEt8+8pdM/2z7uWqcytLbmWQ3eegqlcBAzxFCoteDrwi4DXq
	SwLAVX0qg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLr0g-00GVmj-Ri; Mon, 15 Mar 2021 17:28:06 +0000
Received: from 17.mo3.mail-out.ovh.net ([87.98.178.58])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLr0Z-00GVka-OO
 for linux-phy@lists.infradead.org; Mon, 15 Mar 2021 17:28:05 +0000
Received: from player771.ha.ovh.net (unknown [10.109.138.54])
 by mo3.mail-out.ovh.net (Postfix) with ESMTP id 60C512820EA
 for <linux-phy@lists.infradead.org>; Mon, 15 Mar 2021 18:27:56 +0100 (CET)
Received: from RCM-web2.webmail.mail.ovh.net (klient.box3.pl [176.114.232.43])
 (Authenticated sender: rafal@milecki.pl)
 by player771.ha.ovh.net (Postfix) with ESMTPSA id 8F4371C256371;
 Mon, 15 Mar 2021 17:27:46 +0000 (UTC)
MIME-Version: 1.0
Date: Mon, 15 Mar 2021 18:27:46 +0100
From: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
To: Vinod Koul <vkoul@kernel.org>
Cc: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>, Kishon Vijay
 Abraham I <kishon@ti.com>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Hauke Mehrtens <hauke@hauke-m.de>,
 bcm-kernel-feedback-list@broadcom.com, linux-phy@lists.infradead.org, Vivek
 Unune <npcomplete13@gmail.com>
Subject: Re: [PATCH] dt-bindings: phy: bcm-ns-usb3-phy: convert to yaml
In-Reply-To: <YE85xs+HX5UUXlXo@vkoul-mobl>
References: <20201116074650.16070-1-zajec5@gmail.com>
 <ed093ddb-da37-c3c4-cdd9-3b8e8db776bb@gmail.com>
 <YE85xs+HX5UUXlXo@vkoul-mobl>
User-Agent: Roundcube Webmail/1.4.10
Message-ID: <97981a899fe74c534d29d11485a2dbd2@milecki.pl>
X-Sender: rafal@milecki.pl
X-Originating-IP: 176.114.232.43
X-Webmail-UserID: rafal@milecki.pl
X-Ovh-Tracer-Id: 11032411713050807880
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduledruddvledguddtvdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeggfffhvffujghffgfkgihitgfgsehtkehjtddtreejnecuhfhrohhmpeftrghfrghlpgfoihhlvggtkhhiuceorhgrfhgrlhesmhhilhgvtghkihdrphhlqeenucggtffrrghtthgvrhhnpeejffeludekhfeiieetkeejhfegheegffetleehuedtueehteetudegheefteekteenucffohhmrghinheplhhkmhhlrdhorhhgpdhoiihlrggsshdrohhrghenucfkpheptddrtddrtddrtddpudejiedruddugedrvdefvddrgeefnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeejuddrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehrrghfrghlsehmihhlvggtkhhirdhplhdprhgtphhtthhopehlihhnuhigqdhphhihsehlihhsthhsrdhinhhfrhgruggvrggurdhorhhg
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210315_172801_232128_87936978 
X-CRM114-Status: GOOD (  14.09  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMjAyMS0wMy0xNSAxMTo0MSwgVmlub2QgS291bCB3cm90ZToKPiBPbiAxMS0wMy0yMSwgMjE6
MzEsIFJhZmHFgiBNacWCZWNraSB3cm90ZToKPj4gSGksCj4+IAo+PiBPbiAxNi4xMS4yMDIwIDA4
OjQ2LCBSYWZhxYIgTWnFgmVja2kgd3JvdGU6Cj4+ID4gRnJvbTogUmFmYcWCIE1pxYJlY2tpIDxy
YWZhbEBtaWxlY2tpLnBsPgo+PiA+Cj4+ID4gMS4gQ2hhbmdlIHN5bnRheCBmcm9tIHR4dCB0byB5
YW1sCj4+ID4gMi4gRHJvcCAiRHJpdmVyIGZvciIgZnJvbSB0aGUgdGl0bGUKPj4gPiAzLiBEcm9w
ICJyZWcgPSA8MHgwPjsiIGZyb20gZXhhbXBsZSAobm90aWNlZCBieSBkdF9iaW5kaW5nX2NoZWNr
KQo+PiA+IDQuIFNwZWNpZnkgbGljZW5zZQo+PiA+Cj4+ID4gU2lnbmVkLW9mZi1ieTogUmFmYcWC
IE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgo+PiA+IC0tLQo+PiA+IEkgdGhpbmsgdGhpcyBz
aG91bGQgZ28gdGhyb3VnaCBsaW51eC1waHkgdHJlZS4gS2lzaG9uLCBWaW5vZCwgY2FuIHlvdQo+
PiA+IHRha2UgdGhpcyBwYXRjaD8KPj4gPgo+PiA+IFRoaXMgcGF0Y2ggZ2VuZXJhdGVzIGEgZmFs
c2UgcG9zaXRpdmUgY2hlY2twYXRjaC5wbCB3YXJuaW5nIFswXS4KPj4gPiBQbGVhc2UgaWdub3Jl
Ogo+PiA+IFdBUk5JTkc6IERUIGJpbmRpbmcgZG9jcyBhbmQgaW5jbHVkZXMgc2hvdWxkIGJlIGEg
c2VwYXJhdGUgcGF0Y2guIFNlZTogRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3N1
Ym1pdHRpbmctcGF0Y2hlcy5yc3QKPj4gPgo+PiA+IFswXSBodHRwczovL2xrbWwub3JnL2xrbWwv
MjAyMC8yLzE4LzEwODQKPj4gCj4+IEtpc2hvbiwgVmlub2Q6IEkgc2VudCB0aGlzIHBhdGNoIGJh
Y2sgaW4gRGVjZW1iZXIsIGl0IHdhcyBSZXZpZXdlZC1ieQo+PiBSb2IsIGJ1dCBuZXZlciBhY2Nl
cHRlZC4KPj4gCj4+IENvdWxkIHlvdSBwdXNoIHRoaXMgcGF0Y2ggdG8gdGhlIGxpbnV4LXBoeS5n
aXQ/Cj4gCj4gQ2FuIHlvdSBwbGVhc2UgcmViYXNlIGFuZCByZXNlbnQgbWUgdGhpcyBwYXRjaC4g
SSBhbSB0cnlpbmcgdG8KPiBzdHJlYW1saW5lIHBhdGNoZXMgbm93IHVzaW5nIHBoeSBtbCBhbmQg
cHcgaW5zdGFuY2Ugc28gdGhhdCB3ZSBkb250IAo+IG1pc3MKPiBhbnl0aGluZy4uCgpCb3RoIHBh
dGNoZXMgYXBwbHkgY2xlYW5seS4gTWF5YmUgeW91ciBtYWlsIGNsaWVudCBtYWxmb3JtZWQgdGhl
bSBmb3IgCnlvdT8KClRoZXkgYXJlIGFjY2Vzc2libGUgaW4gdGhlIGRldmljZXRyZWUtYmluZGlu
Z3MgcGF0Y2h3b3JrOgpodHRwczovL3BhdGNod29yay5vemxhYnMub3JnL3Byb2plY3QvZGV2aWNl
dHJlZS1iaW5kaW5ncy9wYXRjaC8yMDIwMTExNjA3NDY1MC4xNjA3MC0xLXphamVjNUBnbWFpbC5j
b20vCmh0dHBzOi8vcGF0Y2h3b3JrLm96bGFicy5vcmcvcHJvamVjdC9kZXZpY2V0cmVlLWJpbmRp
bmdzL3BhdGNoLzIwMjAxMTE2MDc0NjUwLjE2MDcwLTItemFqZWM1QGdtYWlsLmNvbS8KCllvdSBj
YW4gYXBwbHkgYm90aCBwYXRjaGVzIGRvaW5nIGUuZy46CmN1cmwgCmh0dHBzOi8vcGF0Y2h3b3Jr
Lm96bGFicy5vcmcvcHJvamVjdC9kZXZpY2V0cmVlLWJpbmRpbmdzL3BhdGNoLzIwMjAxMTE2MDc0
NjUwLjE2MDcwLTEtemFqZWM1QGdtYWlsLmNvbS9tYm94LyAKfCBnaXQgYW0KY3VybCAKaHR0cHM6
Ly9wYXRjaHdvcmsub3psYWJzLm9yZy9wcm9qZWN0L2RldmljZXRyZWUtYmluZGluZ3MvcGF0Y2gv
MjAyMDExMTYwNzQ2NTAuMTYwNzAtMi16YWplYzVAZ21haWwuY29tL21ib3gvIAp8IGdpdCBhbQoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
