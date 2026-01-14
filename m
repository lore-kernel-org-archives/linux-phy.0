Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30A8AD31A3B
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jan 2026 09:58:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=exTaJ0at/XejNTwW+twyapP/WmJ9kR6HPnQhtOUEo50=; b=05QRAPSmiqoj5w
	kgD7TKA2mIU7H7qVPGyuM13MiUDaDyxkR8Yuh72stbn6Tg04nlf/Pr1Nnkehm1r8YTeyiPN7QuEa6
	OmYi0j6QQ6pm6ePiwcGf8yNs3EYt6I7CXeGaE6w3mBhpyC43lp4u/9ZWWEQgmCBccrdBJjSAGktzf
	mOuoeyYa057/fkhQjCnj+/fqxWR/xvEm85M3YN6x8DCEwni4dZFgvs+ZowBH/fbIX3NL/21Ab2grv
	CVIKjMZSnRt4c60CoOOiqtNrHf/TQfvf6+jn2JDu65afeWM5/7VgD+DNuVX/ytgBcanIhvemJL+cf
	NbazYfBPoeSCfuRy0f+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfxeI-00000008eSI-13LL;
	Wed, 14 Jan 2026 09:58:46 +0000
Received: from mgamail.intel.com ([198.175.65.14])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfxeE-00000008eRY-3co3
	for linux-phy@lists.infradead.org;
	Wed, 14 Jan 2026 09:58:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1768384722; x=1799920722;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=e93YZ6TwonxkI9WZsWH+8V1ojZSA3/NWtCzQSa+4N/o=;
  b=WPOUU57p/yZvSsCTJvBcl62h5pK0owbRWew7i3UaGDe+3sJVLdwcJ2xJ
   npx5sh78cSLxmYL9bYjx75xrR4bio2P7dAu6goPcjcD2/Wiu4ivpaLTVY
   aZSE9UmOUB2hS9mJ2KKvB8zuDVlNTKURY9qp87CKToZjYsUrj/3iiT6+v
   7cmlSdlvWuyunTsQCjBqHYzHL9ZYqPyHg/ILmq1rXcNjot8kq/oyBfkVk
   6+J1BHxWE2bcdjOxg+ZRO5n+MVKXrgliTrcz+obA4PVk8ahRWNmugPGUT
   vlpK4Z3iPuoJtaTHoI3VbEEyJziCQgjbMnkdjooMPAku8j2Hq+bVDdPxL
   A==;
X-CSE-ConnectionGUID: D1cAAPyOSK26tAkmpOBluA==
X-CSE-MsgGUID: MKH1PSUZTmu93a7nnx2E+g==
X-IronPort-AV: E=McAfee;i="6800,10657,11670"; a="73520667"
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; 
   d="scan'208";a="73520667"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jan 2026 01:58:42 -0800
X-CSE-ConnectionGUID: nOVJgA0uQpmsgxwcmXvWiA==
X-CSE-MsgGUID: p8vbuxOXS76vXDWpL2fPxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; 
   d="scan'208";a="203777072"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.244.83])
  by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jan 2026 01:58:34 -0800
Date: Wed, 14 Jan 2026 11:58:32 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	jic23@kernel.org, dlechner@baylibre.com, nuno.sa@analog.com,
	andy@kernel.org, arnd@arndb.de, gregkh@linuxfoundation.org,
	srini@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org,
	sre@kernel.org, sboyd@kernel.org, krzk@kernel.org,
	dmitry.baryshkov@oss.qualcomm.com, quic_wcheng@quicinc.com,
	melody.olvera@oss.qualcomm.com, quic_nsekar@quicinc.com,
	ivo.ivanov.ivanov1@gmail.com, abelvesa@kernel.org,
	luca.weiss@fairphone.com, mitltlatltl@gmail.com,
	krishna.kurapati@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
	linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-pm@vger.kernel.org,
	kernel@collabora.com
Subject: Re: [PATCH v7 05/10] nvmem: qcom-spmi-sdam: Migrate to
 devm_spmi_subdevice_alloc_and_add()
Message-ID: <aWdoyCgLjjjaSbew@smile.fi.intel.com>
References: <20260114083957.9945-6-angelogioacchino.delregno@collabora.com>
 <aWdaWY2tWUMllOHH@smile.fi.intel.com>
 <8bf79979-0946-4ed9-b8d4-c442a6e54833@collabora.com>
 <aWdbPze-f_2_5EbL@smile.fi.intel.com>
 <401c5e7b-ff33-44e8-98a5-8cc6af4f2a87@collabora.com>
 <aWdcy2ouQHtkPd6q@smile.fi.intel.com>
 <647b4acc-3310-4329-ac7a-77e86bab74a3@collabora.com>
 <aWdk-RP-59cJeCBo@smile.fi.intel.com>
 <ae46b504-58d3-4042-be05-f31e9e01091b@oss.qualcomm.com>
 <aWdn_j7SOKq97vpY@smile.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aWdn_j7SOKq97vpY@smile.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_015843_342278_DCFFB4A8 
X-CRM114-Status: GOOD (  24.16  )
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

T24gV2VkLCBKYW4gMTQsIDIwMjYgYXQgMTE6NTU6MThBTSArMDIwMCwgQW5keSBTaGV2Y2hlbmtv
IHdyb3RlOgo+IE9uIFdlZCwgSmFuIDE0LCAyMDI2IGF0IDEwOjQ3OjIwQU0gKzAxMDAsIEtvbnJh
ZCBEeWJjaW8gd3JvdGU6Cj4gPiBPbiAxLzE0LzI2IDEwOjQyIEFNLCBBbmR5IFNoZXZjaGVua28g
d3JvdGU6Cj4gPiA+IE9uIFdlZCwgSmFuIDE0LCAyMDI2IGF0IDEwOjA5OjQ1QU0gKzAxMDAsIEFu
Z2Vsb0dpb2FjY2hpbm8gRGVsIFJlZ25vIHdyb3RlOgo+ID4gPj4gSWwgMTQvMDEvMjYgMTA6MDcs
IEFuZHkgU2hldmNoZW5rbyBoYSBzY3JpdHRvOgo+ID4gPj4+IE9uIFdlZCwgSmFuIDE0LCAyMDI2
IGF0IDEwOjAzOjU3QU0gKzAxMDAsIEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJlZ25vIHdyb3RlOgo+
ID4gPj4+PiBJbCAxNC8wMS8yNiAxMDowMCwgQW5keSBTaGV2Y2hlbmtvIGhhIHNjcml0dG86Cj4g
PiA+Pj4+PiBPbiBXZWQsIEphbiAxNCwgMjAyNiBhdCAwOTo1OTo0MEFNICswMTAwLCBBbmdlbG9H
aW9hY2NoaW5vIERlbCBSZWdubyB3cm90ZToKPiA+ID4+Pj4+PiBJbCAxNC8wMS8yNiAwOTo1Niwg
QW5keSBTaGV2Y2hlbmtvIGhhIHNjcml0dG86Cj4gPiA+Pj4+Pj4+IE9uIFdlZCwgSmFuIDE0LCAy
MDI2IGF0IDA5OjM5OjUyQU0gKzAxMDAsIEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJlZ25vIHdyb3Rl
OgoKLi4uCgo+ID4gPj4+Pj4+Pj4gKwlzdHJ1Y3QgcmVnbWFwX2NvbmZpZyBzZGFtX3JlZ21hcF9j
b25maWcgPSB7Cj4gPiA+Pj4+Pj4+PiArCQkucmVnX2JpdHMgPSAxNiwKPiA+ID4+Pj4+Pj4+ICsJ
CS52YWxfYml0cyA9IDgsCj4gPiA+Pj4+Pj4+Cj4gPiA+Pj4+Pj4+PiArCQkubWF4X3JlZ2lzdGVy
ID0gMHgxMDAsCj4gPiA+Pj4+Pj4+Cj4gPiA+Pj4+Pj4+IEFyZSB5b3Ugc3VyZT8gVGhpcyBtaWdo
dCBiZSBhIGJhZCBuYW1pbmcsIGJ1dCBoZXJlIG1heCA9PSB0aGUgbGFzdCBhY2Nlc3NpYmxlLgo+
ID4gPj4+Pj4+PiBJIGJldCBpdCBoYXMgdG8gYmUgMHhmZiAoYnV0IHNpbmNlIHRoZSBhZGRyZXNz
IGlzIDE2LWJpdCBpdCBtaWdodCBiZSBhY3R1YWxseQo+ID4gPj4+Pj4+PiAyNTcgcmVnaXN0ZXJz
LCBidXQgc291bmRzIHZlcnkgd2VpcmQpLgo+ID4gPj4+Pj4+Cj4gPiA+Pj4+Pj4gWWVzLCBJJ20g
c3VyZS4KPiA+ID4+Pj4+Cj4gPiA+Pj4+PiBTbywgd2hhdCBpcyByZXNpZGVkIG9uIGFkZHJlc3Mg
MHgxMDAgPwo+ID4gPj4+Pgo+ID4gPj4+PiBJIGRvbid0IHJlbWVtYmVyLCB0aGlzIGlzIHJlc2Vh
cmNoIGZyb20gYXJvdW5kIDUgbW9udGhzIGFnbywgd2hlbiBJJ3ZlIHNlbnQKPiA+ID4+Pj4gdGhl
IHYxIG9mIHRoaXMuCj4gPiA+Pj4+Cj4gPiA+Pj4+IElmIHlvdSByZWFsbHkgd2FudCB0aG91Z2gs
IEkgY2FuIGluY29ycmVjdGx5IHNldCBtYXhfcmVnaXN0ZXIgdG8gMHhmZi4KPiA+ID4+Pgo+ID4g
Pj4+IFdoeSBpbmNvcnJlY3RseT8gQ2FuIHlvdSBkaWcgaW50byB0aGUgZGF0YXNoZWV0IGFuZCBj
aGVjaywgcGxlYXNlPyBXZSBkb24ndAo+ID4gPj4+IGtub3cgd2hhdCBpcyB0aGUgMHgxMDAgYWRk
cmVzcyBtZWFucy4KPiA+ID4+Cj4gPiA+PiBJIGRvbid0IGhhdmUgYW55IGRhdGFzaGVldHMgZm9y
IFF1YWxjb21tIElQcy4KPiA+ID4gCj4gPiA+IEhtbS4uLiBDYW4gd2UgaGF2ZSBzb21lYm9keSBm
cm9tIFFDIHRvIGNoZWNrIG9uIHRoaXM/Cj4gPiA+IFBlcmhhcHMgRG1pdHJ5Pwo+ID4gCj4gPiAw
eGU2IGlzIHRoZSBsYXN0IHVzYWJsZSByZWdpc3RlciB0b2RheQo+IAo+IFRoYW5rcyBmb3IgY2hl
Y2tpbmchCj4gCj4gPiBCdXQgSSB3b3VsZG4ndCBtaW5kIGVpdGhlciAweGZmIG9yIDB4MTAwIGJl
Y2F1c2UgSSBkb24ndCB3YW50Cj4gPiBhbnlvbmUgdG8gcHVsbCB0aGVpciBoYWlyIG91dCBpZiBh
IHJlZ21hcCBhY2Nlc3MgaXMgZHJvcHBlZCBzb21lIGRheS4uCj4gCj4gVGhlcmUgaXMgYWN0dWFs
bHkgYWJvdXQgdGhlIGV4YWN0IHdpbmRvdyBzaXplIHdoZXJlIHJlZ2lzdGVycyBhcmUgYmVsb25n
IHRvIHRoZQo+IHNhbWUgZW50aXR5IChzdWJkZXZpY2UpLiBBcyBpbiB0aGUgSFcgd29ybGQgbW9z
dCBvZiB0aGUgdGhpbmdzIGFyZSBzdHVjayB3aXRoCj4gcG93ZXItb2YtdHdvIG51bWJlcnMsIGFu
ZCB0YWtpbmcgaW50byBhY2NvdW50IHRoZSBuYW1pbmcgb2YgdGhlIGZpZWxkLCBJIGRvIG5vdAo+
IGJlbGlldmUgb25lIHByb3ZpZGVzIGEgMjU3ICgyNTYgKyAxID0gMuKBuCArIDEpIHJlZ2lzdGVy
IF93aW5kb3dzXyAoInMiIGlzIGFsc28KPiBpbXBvcnRhbnQgaGVyZSwgYXMgaXQgcG9pbnRzIG91
dCB0byB0aGUgcGF0dGVybikgZm9yIHRoZSBzdWJkZXZpY2VzLiBJIGJldCB0aGUKPiAweGZmLCBp
LmUuIDI1NiwgaXMgdGhlICpjb3JyZWN0KiB3aW5kb3cgZnJvbSB0aGUgSFcgcGVyc3BlY3RpdmUu
CgpFdmVuIG1vcmUsIHNpbmNlIHRoZXNlIGRldmljZXMgYXJlIGRlc2NyaWJlZCBpbiBEVCwgdGhl
IHByZXNlbmNlIG9mIGFueSB0d28Kc2VxdWVudGlhbCB3aW5kb3dzIHdpbGwgc3VwcG9ydCBteSB2
ZXJzaW9uIGZvciAxMDAlIGNvcnJlY3RuZXNzLCBhcyBvdGhlcndpc2UKaXQgd2lsbCBtZWFuIG92
ZXJsYXBwaW5nIGluIHRoZSBhZGRyZXNzZXMgZm9yIHR3byBkZXZpY2VzLCBpLmUuIDB4MTAwIGlu
IG9uZQppcyBhY3R1YWxseSAweDAwIGluIHRoZSBvdGhlci4KCi0tIApXaXRoIEJlc3QgUmVnYXJk
cywKQW5keSBTaGV2Y2hlbmtvCgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXBoeQo=
