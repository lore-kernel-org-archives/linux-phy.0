Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24C46C433EF
	for <linux-phy@archiver.kernel.org>; Wed, 13 Apr 2022 06:45:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NVroLuVMReZXUlXZ0tCPhFtCwwF+V2QD13FbSfnN5EU=; b=ueWZ5Liowt3ORy
	MpU58r8oishf9TG4KLTaJN0BivMPi7MfSdl6gknNnEoNmf6DAvbc1zFDrvd/ElfcFp2g6hlzDNjX2
	Cz4GoKR6xzYOPb++F2lAPeWn+SWGctyNHN5je9Pg8lnVSK/6+EgbS4zW/XbVLmezl5Ovs12UqQ2ie
	6HG9+SC0SXDmuaPnZ5WP2BUr4HHb23kUa9ljBN+BuU5NGg13fE6GtEegJRMH1/BfPF2hCQ3MIfGuQ
	WYNJ2Dxi2v3oBBno/ILycnu62j4mM6S+1t+YkudQaT9sE8jZm8+SD3h+3B9FPl4/5PjyEfATGecpJ
	1Zk+3Bud1m0DhPXa2H0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neWkY-00HG6w-IC; Wed, 13 Apr 2022 06:45:10 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neWkV-00HG5K-QF
 for linux-phy@lists.infradead.org; Wed, 13 Apr 2022 06:45:09 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 05AA661D20;
 Wed, 13 Apr 2022 06:45:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9A9FEC385A3;
 Wed, 13 Apr 2022 06:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1649832306;
 bh=r2vW3ZbHso9uGN1E9szsNGXBN90bOBs2BYM7Wg9/Kng=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oG2beXM740vxSU2IPV+mku2PjnBvJPvVqKyXuUXoCiEmPAYxA7EMCHKd09m1LVyz+
 2QT0QDL5NAApHR+hRBJFcIrd+++CnbdyHoZckTtM2wY6D3VWMXGkYRg3zLP337P0rO
 C9zv7j0uCmoSnwx5KDmfgpDic4HVRJZ4e8UORwsf/k1WaWHkTfh9IM+twvyW/izMwF
 Iv0H0d36WzRPZ5jsePA2vY5o5hprUGuh/jcqv5WDh+l5LcqkRhH6G2oRfI/OP3tXxZ
 ex2Qqd5i0WbRRCZL4pMg2VIXSwPfSYwYQrYCZujxkz0zrnSWpYv1xEdA2JWu/6VBpv
 jSj8pbdep6ePQ==
Date: Wed, 13 Apr 2022 12:15:01 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: wangseok.lee@samsung.com, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>, "kishon@ti.com" <kishon@ti.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "jesper.nilsson@axis.com" <jesper.nilsson@axis.com>,
 "lars.persson@axis.com" <lars.persson@axis.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "kw@linux.com" <kw@linux.com>,
 "linux-arm-kernel@axis.com" <linux-arm-kernel@axis.com>,
 "kernel@axis.com" <kernel@axis.com>,
 =?utf-8?B?7KCE66y46riw?= <moonki.jun@samsung.com>
Subject: Re: [PATCH 0/5] Add support for Axis, ARTPEC-8 PCIe driver
Message-ID: <YlZxbXI77vSbKNsY@matsya>
References: <564c7092-d6a3-7766-d83f-9762075d055f@kernel.org>
 <0716d9e4-24e1-d16c-162c-00a8664296e1@kernel.org>
 <20220328014430epcms2p7063834feb0abdf2f38a62723c96c9ff1@epcms2p7>
 <20220328090200epcms2p8637d2a2e09a3a627be776586b80c8adf@epcms2p8>
 <CGME20220328014430epcms2p7063834feb0abdf2f38a62723c96c9ff1@epcms2p4>
 <20220328112918epcms2p44bfdd6ef74c14f04bae6a475054860b6@epcms2p4>
 <fd3478ba-ebb9-c1bf-1823-dc03de80b76e@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fd3478ba-ebb9-c1bf-1823-dc03de80b76e@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220412_234507_990252_69E05480 
X-CRM114-Status: GOOD (  24.77  )
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

T24gMjgtMDMtMjIsIDEzOjQwLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+IE9uIDI4LzAz
LzIwMjIgMTM6MjksIOydtOyZleyEnSB3cm90ZToKPiA+PiAtLS0tLS0tLS0gT3JpZ2luYWwgTWVz
c2FnZSAtLS0tLS0tLS0KPiA+PiBTZW5kZXIgOiBLcnp5c3p0b2YgS296bG93c2tpwqA8a3J6a0Br
ZXJuZWwub3JnPgo+ID4+IERhdGUgOiAyMDIyLTAzLTI4IDE4OjM4IChHTVQrOSkKPiA+PiBUaXRs
ZSA6IFJlOiBbUEFUQ0ggMC81XSBBZGQgc3VwcG9ydCBmb3IgQXhpcywgQVJUUEVDLTggUENJZSBk
cml2ZXIKPiA+Pgo+ID4+IE9uwqAyOC8wMy8yMDIywqAxMTowMizCoOydtOyZleyEncKgd3JvdGU6
Cj4gPj4+PiDCoC0tLS0tLS0tLcKgT3JpZ2luYWzCoE1lc3NhZ2XCoC0tLS0tLS0tLQo+ID4+Pj4g
wqBTZW5kZXLCoDrCoEtyenlzenRvZsKgS296bG93c2tpwqA8a3J6a0BrZXJuZWwub3JnPgo+ID4+
Pj4gwqBEYXRlwqA6wqAyMDIyLTAzLTI4wqAxNjoxMsKgKEdNVCs5KQo+ID4+Pj4gwqBUaXRsZcKg
OsKgUmU6wqBbUEFUQ0jCoDAvNV3CoEFkZMKgc3VwcG9ydMKgZm9ywqBBeGlzLMKgQVJUUEVDLTjC
oFBDSWXCoGRyaXZlcgo+ID4+Pj4KPiA+Pj4+IMKgT27CoDI4LzAzLzIwMjLCoDAzOjQ0LMKg7J20
7JmV7ISdwqB3cm90ZToKPiA+Pj4+PiDCoMKgVGhpc8Kgc2VyaWVzwqBwYXRjaGVzwqBpbmNsdWRl
wqBuZXdsecKgUENJZcKgc3VwcG9ydMKgZm9ywqBBeGlzwqBBUlRQRUMtOMKgU29DLgo+ID4+Pj4+
IMKgwqBBUlRQRUMtOMKgaXPCoHRoZcKgU29DwqBwbGF0Zm9ybcKgb2bCoEF4aXPCoENvbW11bmlj
YXRpb25zLgo+ID4+Pj4+IMKgwqBQQ0llwqBjb250cm9sbGVywqBkcml2ZXLCoGFuZMKgcGh5wqBk
cml2ZXLCoGhhdmXCoGJlZW7CoG5ld2x5wqBhZGRlZC4KPiA+Pj4+PiDCoMKgVGhlcmXCoGlzwqBh
bHNvwqBhwqBuZXfCoE1BSU5UQUlORVLCoGluwqB0aGXCoGFkZGl0aW9uwqBvZsKgcGh5wqBkcml2
ZXIuCj4gPj4+Pj4gwqDCoFBDSWXCoGNvbnRyb2xsZXLCoGlzwqBkZXNpZ25lZMKgYmFzZWTCoG9u
wqBEZXNpZ24tV2FyZcKgUENJZcKgY29udHJvbGxlcsKgSVAKPiA+Pj4+PiDCoMKgYW5kwqBQQ0ll
wqBwaHnCoGlzwqBkZXNpbmdlZMKgYmFzZWTCoG9uwqBTQU1TVU5HwqBQSFnCoElQLgo+ID4+Pj4+
IMKgwqBJdMKgYWxzb8KgaW5jbHVkZXPCoG1vZGlmaWNhdGlvbnPCoHRvwqB0aGXCoERlc2lnbi1X
YXJlwqBjb250cm9sbGVywqBkcml2ZXLCoHRvwqAKPiA+Pj4+PiDCoMKgcnVuwqB0aGXCoDY0Yml0
LWJhc2VkwqBBUlRQRUMtOMKgUENJZcKgY29udHJvbGxlcsKgZHJpdmVyLgo+ID4+Pj4+IMKgwqBJ
dMKgY29uc2lzdHPCoG9mwqA2wqBwYXRjaGVzwqBpbsKgdG90YWwuCj4gPj4+Pj4gwqDCoAo+ID4+
Pj4+IMKgwqBUaGlzwqBzZXJpZXPCoGhhc8KgYmVlbsKgdGVzdGVkwqBvbsKgQVhJU8KgU1fCoGJy
aW5nLXVwwqBib2FyZMKgCj4gPj4+Pj4gwqDCoHdpdGjCoEFSVFBFQy04wqBjaGlwc2V0Lgo+ID4+
Pj4KPiA+Pj4+IMKgWW91wqBsb3N0wqBtYWlswqB0aHJlYWRpbmcuwqBUaGlzwqBtYWtlc8KgcmVh
ZGluZ8KgdGhpc8KgZGlmZmljdWx0wqBmb3LCoHVzLsKgUGx1cwo+ID4+Pj4gwqB5b3XCoHNlbnTC
oHNvbWV0aGluZ8Kgbm9uLWFwcGxpY2FibGXCoChwYXRjaMKgIzIpLMKgc2/CoHBsZWFzZcKgcmVz
ZW5kLgo+ID4+Pj4KPiA+Pj4+IMKgS25vd2luZ8KgcmVjZW50wqBTYW1zdW5nwqByZWx1Y3RhbmNl
wqB0b8KgZXh0ZW5kwqBleGlzdGluZ8KgZHJpdmVyc8KgYW5kwqBhbHdheXMKPiA+Pj4+IMKgZHVw
bGljYXRlLMKgcGxlYXNlwqBwcm92aWRlwqBkZXNjcmlwdGlvbi9hbmFseXNpc8Kgd2h5wqB0aGlz
wqBkcml2ZXLCoGNhbm5vdMKgYmUKPiA+Pj4+IMKgY29tYmluZWTCoHdpdGjCoGV4aXN0aW5nwqBk
cml2ZXIuwqBUaGXCoGFuc3dlcsKgbGlrZTrCoHdlwqBuZWVkwqBzZXZlcmFswqBzeXNjb24KPiA+
Pj4+IMKgYmVjYXVzZcKgd2XCoGRvwqBub3TCoGltcGxlbWVudMKgb3RoZXLCoGZyYW1ld29ya3PC
oChsaWtlwqBpbnRlcmNvbm5lY3QpwqBhcmXCoG5vdAo+ID4+Pj4gwqB2YWxpZC4KPiA+Pj4+Cj4g
Pj4+PiDCoEJlc3TCoHJlZ2FyZHMsCj4gPj4+PiDCoEtyenlzenRvZgo+ID4+PiDCoAo+ID4+PiDC
oEhlbGxvLMKgS3J6eXN6dG9mCj4gPj4+IMKgVGhhbmtzwqBmb3LCoHlvdXLCoHJldmlldy4KPiA+
Pj4gwqAKPiA+Pj4gwqBwYXRjaCMywqB3YXPCoHNlbnTCoHRvwqB0aGXCoHdyb25nwqBmb3JtYXTC
oHNvwqBzZW50wqBhZ2Fpbi4KPiA+Pj4gwqBTb3JyecKgZm9ywqBjYXVzaW5nwqBjb25mdXNpb24u
Cj4gPj4gwqAKPiA+PiBUaGXCoGZpcnN0wqBzZW5kaW5nwqB3YXPCoEhUTUwuwqBTZWNvbmTCoHdh
c8KgYnJva2VuwqB0ZXh0LMKgc2/CoHN0aWxswqBub3TCoHdvcmtpbmcuCj4gPj4KPiA+PiBQbGVh
c2XCoHJlc2VuZMKgZXZlcnl0aGluZ8Kgd2l0aMKgcHJvcGVywqB0aHJlYWRpbmcuCj4gPiAKPiA+
IEhlbGxvLCBLcnp5c3p0b2YKPiA+IAo+ID4gSSBzZW50IHBhdGNoIzIgdGhyZWUgdGltZXMuCj4g
PiBkdWUgdG8gdGhlIGluZmx1ZW5jZSBvZiB0aGUgZW1haWwgc3lzdGVtLAo+ID4gdGhlcmUgd2Fz
IHNvbWV0aGluZyB3cm9uZyB3aXRoIHRoZSBmaXJzdCBhbmQgc2Vjb25kIG1haWxzLgo+ID4gU29y
cnkgZm9yIGNhdXNpbmcgY29uZnVzaW9uLgo+ID4gRGlkIHlvdSByZWNlaXZlIHRoZSB0aGlyZCBw
YXRjaCBpIHNlbnQgeW91Pwo+IAo+IE1heWJlLCBJIGRvbid0IGtub3cuIEl0J3Mgbm90IHRocmVh
ZGVkIHNvIGl0J3MgZGlmZmljdWx0IHRvIGZpbmQgaXQKPiBhbW9uZyBvdGhlciAxMDAgZW1haWxz
Li4uCgpDb3JyZWN0LCB0aGlzIGlzIHNwcmVhZCBvdmVyIHdob2xlIGxpc3QsIHBsZWFzZSByZXNl
bmQgdGhlIHdob2xlIHNlcmllcwppbiBhIHNpbmdsZSBzaG90IHdpdGhvdXQgdGhyZWFkaW5nIGJl
aW5nIGJyb2tlbgoKLS0gCn5WaW5vZAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==
