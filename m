Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9DFBC433FE
	for <linux-phy@archiver.kernel.org>; Tue, 15 Nov 2022 16:19:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LlS4HDp5bFU75hISRL9e8EF0Rvqmh7MWYM2sW6h+Uqg=; b=wbpV6XYgrXa/pX
	2nWfu8IpcdxnTN2VM4Pl9Oiq8BZ+2miBc/wipy7oDFvcKZ6nuTREi4CjMZ8Q1sa8OtZ3kH/Dcz9w4
	P8iD3P9pRMlZj/KVMoa4+cAmrIuUZiJTH+inAsMndBS97ChFKjps84hUGX8qKdcNeGD/nqq+UWqL0
	4FxtRRyZGuCJ8XDpRazZpq/GoN3qu6hapNnNaQ3+i6kaU8CGXKE/C3wa/pMYNW9ROR1ASP8v20sQ7
	icbF6icMtxMkNBYCS5YvJ6bGgUIqeqQgX0WrSIk+QA5v/VtO+kdKY3Y/TGGIXdcvJzsT+wzQusX7e
	61ofBq1ph7+qc8R/E+yQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouyeu-00Cgoh-3n; Tue, 15 Nov 2022 16:19:36 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouyei-00Cgln-TD; Tue, 15 Nov 2022 16:19:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 31F6113D5;
	Tue, 15 Nov 2022 08:19:28 -0800 (PST)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0738B3F587;
	Tue, 15 Nov 2022 08:19:19 -0800 (PST)
Date: Tue, 15 Nov 2022 16:19:17 +0000
From: Andre Przywara <andre.przywara@arm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Jernej =?UTF-8?B?xaBrcmFiZWM=?=
 <jernej.skrabec@gmail.com>, Chen-Yu Tsai <wens@csie.org>, Samuel Holland
 <samuel@sholland.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Icenowy Zheng <uwu@icenowy.me>,
 soc@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v3 03/11] phy: sun4i-usb: add support for the USB PHY on
 F1C100s SoC
Message-ID: <20221115161917.328ec91a@donnerap.cambridge.arm.com>
In-Reply-To: <4516dcfb-b928-d454-18a6-bd725f39cc24@linaro.org>
References: <20221106154826.6687-1-andre.przywara@arm.com>
	<20221106154826.6687-4-andre.przywara@arm.com>
	<Y2ypy0CM8rJGu2g4@matsya>
	<4438485.LvFx2qVVIh@jernej-laptop>
	<52920a00-8e29-f7f4-0cbd-ceb638ded970@linaro.org>
	<20221115104426.20728ba5@donnerap.cambridge.arm.com>
	<4516dcfb-b928-d454-18a6-bd725f39cc24@linaro.org>
Organization: ARM
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221115_081925_056051_9D6BFB91 
X-CRM114-Status: GOOD (  31.73  )
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

T24gVHVlLCAxNSBOb3YgMjAyMiAxNjowMDo1NCArMDEwMApLcnp5c3p0b2YgS296bG93c2tpIDxr
cnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+IHdyb3RlOgoKSGksCgo+IE9uIDE1LzExLzIw
MjIgMTE6NDQsIEFuZHJlIFByenl3YXJhIHdyb3RlOgo+ID4gT24gVHVlLCAxNSBOb3YgMjAyMiAx
MTowMzoyNCArMDEwMAo+ID4gS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3Nr
aUBsaW5hcm8ub3JnPiB3cm90ZToKPiA+IAo+ID4gSGksCj4gPiAgIAo+ID4+IE9uIDE1LzExLzIw
MjIgMDc6MDEsIEplcm5laiDFoGtyYWJlYyB3cm90ZTogIAo+ID4+PiBEbmUgxI1ldHJ0ZWssIDEw
LiBub3ZlbWJlciAyMDIyIG9iIDA4OjM1OjM5IENFVCBqZSBWaW5vZCBLb3VsIG5hcGlzYWwoYSk6
ICAgIAo+ID4+Pj4gT24gMDYtMTEtMjIsIDE1OjQ4LCBBbmRyZSBQcnp5d2FyYSB3cm90ZTogICAg
Cj4gPj4+Pj4gRnJvbTogSWNlbm93eSBaaGVuZyA8dXd1QGljZW5vd3kubWU+Cj4gPj4+Pj4KPiA+
Pj4+PiBUaGUgRjFDMTAwcyBTb0MgaGFzIG9uZSBVU0IgT1RHIHBvcnQgY29ubmVjdGVkIHRvIGEg
TVVTQiBjb250cm9sbGVyLgo+ID4+Pj4+Cj4gPj4+Pj4gQWRkIHN1cHBvcnQgZm9yIGl0cyBVU0Ig
UEhZLiAgICAKPiA+Pj4+Cj4gPj4+PiBUaGlzIGRvZXMgbm90IGFwcGx5IGZvciBtZSwgcGxlYXNl
IHJlYmFzZSBhbmQgcmVzZW5kCj4gPj4+Pgo+ID4+Pj4gQWxzbywgY29uc2lkZXIgc3BsaXR0aW5n
IHBoeSBwYXRjaGVzIGZyb20gdGhpcy4gSSBkb250IHRoaW5rIHRoZXJlIGlzCj4gPj4+PiBhbnkg
ZGVwZW5kZW5jeSAgICAKPiA+Pj4KPiA+Pj4gRFQgcGF0Y2hlcyBpbiB0aGlzIHNlcmllcyBkZXBl
bmQgb24gZnVuY3Rpb25hbGl0eSBhZGRlZCBoZXJlLgo+ID4+PiAgICAgCj4gPj4KPiA+PiBEVFMg
YWx3YXlzIGdvZXMgc2VwYXJhdGVseSBmcm9tIGRyaXZlciBjaGFuZ2VzIGJlY2F1c2UgaXQgaXMg
YSBoYXJkd2FyZQo+ID4+IGRlc2NyaXB0aW9uLiBEZXBlbmRpbmcgb24gZHJpdmVyIG1lYW5zIHlv
dSBoYXZlIHBvdGVudGlhbCBBQkkgYnJlYWssIHNvCj4gPj4gaXQgaXMgYWxyZWFkeSBhIHdhcm5p
bmcgc2lnbi4gIAo+ID4gCj4gPiBXZSB1bmRlcnN0YW5kIHRoYXQgOy0pCj4gPiBXaGF0IEplcm5l
aiBtZWFudCB3YXMgdGhhdCB0aGUgRFRTIHBhdGNoZXMgYXQgdGhlIGVuZCBkZXBlbmQgb24gcGF0
Y2gKPiA+IDAxLzEwLCB3aGljaCBhZGRzIHRvIHRoZSBQSFkgYmluZGluZyBkb2MuIEkgYW0gbm90
IHN1cmUgaWYgVmlub2Qncwo+ID4gc3VnZ2VzdGlvbiB3YXMgYWJvdXQgc3BsaXR0aW5nIG9mZiAw
MS8xMCwgMDMvMTAsIGFuZCAxMC8xMCwgb3IganVzdCB0aGUKPiA+IHR3byBsYXR0ZXIgd2hpY2gg
dG91Y2ggdGhlIGRyaXZlci4KPiA+IAo+ID4gSSBjYW4gc3BsaXQgb2ZmIDAzLzEwIGFuZCAxMC8x
MCwgcmViYXNlZCBvbiB0b3Agb2YgbGludXgtcGh5LmdpdC9uZXh0LCBhbmQKPiA+IHNlbmQgdGhh
dCB0byBWaW5vZC4KPiA+IFRoZW4gSSB3b3VsZCBrZWVwIDAxLzEwIGluIGEgcmVzcGluIG9mIHRo
aXMgc2VyaWVzIGhlcmUsIHRvIHNhdGlzZnkgdGhlCj4gPiBkZXBlbmRlbmN5IG9mIHRoZSBsYXRl
ciBEVFMgcGF0Y2hlcywgYW5kIFZpbm9kIGNhbiBwaWNrIHRoYXQgb25lIHBhdGNoIGZyb20KPiA+
IHRoZXJlPyAgCj4gCj4gVGhlcmUgaXMgbm8gaGFyZCBkZXBlbmRlbmN5IG9mIERUUyBvbiBiaW5k
aW5ncy4gWW91IGNhbiBzcGxpdCB0aGVzZSAoYW5kCj4gc29tZSBtYWludGFpbmVycyBwcmVmZXIg
dGhhdCB3YXkpIGFuZCBpbiBEVFMgcGF0Y2hlcyBqdXN0IHByb3ZpZGUgdGhlCj4gbGluayB0byB0
aGUgYmluZGluZ3MsIHNheWluZyBpdCBpcyBpbiBwcm9ncmVzcy4KCkJ1dCB0aGF0IGJyZWFrcyAi
bWFrZSBkdGJzX2NoZWNrIiwgZG9lc24ndCBpdD8KCkkgd291bGQgdGhpbmsgdGhhdCB0aGUgRFQg
Yml0cyAtIGJpbmRpbmdzIGZpcnN0LCB0aGVuIERUUyBmaWxlcyB1c2luZyBpdCAtCnNob3VsZCBi
ZSBidW5kbGVkLiBUaGlzIGlzIGhvdyBJIGltYWdpbmUgdGhlIGZ1dHVyZShUTSksIHdoZXJlIERU
cyBhbmQKYmluZGluZ3MgbGl2ZSBvdXRzaWRlIHRoZSBrZXJuZWwgcmVwby4KCj4gVGhlIGJpbmRp
bmdzIHNob3VsZCBiZSBob3dldmVyIGtlcHQgd2l0aCBkcml2ZXIgY2hhbmdlcyBhcyBpdCBnb2Vz
IHRoZQo+IHNhbWUgd2F5LgoKSSB1bmRlcnN0YW5kIHRoYXQgdGhlIGJpbmRpbmdzIGRlc2NyaWJl
IHRoZSBjb250cmFjdCB0aGUgZHJpdmVyIGFjdHMgb24sCmJ1dCBnb2luZyBmb3J3YXJkIEkgdGhp
bmsgZHJpdmVyIGNoYW5nZXMgd291bGQgbmVlZCB0byBjb21lIGxhdGVyLCB0aGVuCihzaW5jZSB0
aGV5IHdpbGwgbGl2ZSBpbiBhIHNlcGFyYXRlIHJlcG8gYXQgc29tZSBkYXkpPwpNYXliZSBwb2lu
dGluZyB0byB0aGUgYmluZGluZyBjaGFuZ2VzIGluIHByb2dyZXNzPwoKU28gd2l0aCBhIHNlcGFy
YXRlIHJlcG8gd2Ugd291bGQgYWN0dWFsbHkgbmVlZCB0byB1cHN0cmVhbSBqdXN0IHRoZQpiaW5k
aW5ncyBmaXJzdCwgdGhlbiBjb3VsZCBwdXNoIGRyaXZlciBjaGFuZ2VzIGFuZCAuZHRzIGZpbGVz
CmluZGVwZW5kZW50bHk/CgpBbmQgZm9yIG5vdyBpdCBsb29rcyBsaWtlIHdlIGFyZSBzdHVjayB3
aXRoIHB1dHRpbmcgZXZlcnl0aGluZyBpbiBvbmUKc2VyaWVzLCB0byBtYWtlIGJvdGggY2hlY2tw
YXRjaCBhbmQgZHRic19jaGVjayBoYXBweS4KCkNoZWVycywKQW5kcmUKCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
