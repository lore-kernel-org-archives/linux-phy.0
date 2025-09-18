Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F63CCAC59A
	for <linux-phy@archiver.kernel.org>; Thu, 18 Sep 2025 19:00:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z6H8RYOhTpx1LcR9OpRcifY7R6/EzNBzHuOtT+Xhfrw=; b=OK1ekfPX4XY2U2
	hFWBysNS1f/EssOAERS+/+BaACs5JvuP+IPGWPrtXwXG3Xg81LpuJ2TzbgvrowOWPNX3WUl2oB7ub
	oHNLF/OHZCMQdqXobme0xdeN+u4W3+ynydx0dOLtiuVJMf43HPfqNdaKpmr0pmBUqAACC3t5wB2Ud
	zsQycF/YEsyFTDcFDs98ebPMOYM1vgQ3Pqok0DzbKG6cuZe5PZxRaoB/5mQkwc6hB3RMKTvYmc7qO
	G7Xqm/sxWSkmJKZubIhn4GmnNgJrj/SePJZ4AEvd2GyOfsU+qjL8xksFCkfdNLymkDhcLjw1vAC4U
	EDQ3u5v8i32lNDkuXRJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzJs5-00000000x7V-2x1W;
	Thu, 18 Sep 2025 19:00:45 +0000
Received: from mgamail.intel.com ([192.198.163.18])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzJs2-00000000x51-3u88
	for linux-phy@lists.infradead.org;
	Thu, 18 Sep 2025 19:00:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1758222043; x=1789758043;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=ef0mTUC0aOMKx4QFCiLnqXP82GZHO1F+FgK59dzSrlg=;
  b=MnPRBLoxZsLVYQTAhFM5Fq9EKHadiuyIyrFDR677X9LGsYy2/tOliNbt
   oGPrIA5rB6/VHplFqdARbzKP8iDJseYyTd1FLVwwCSxAqrB9gPAGxcE1q
   TZb8Z+5NjC86eyfHgrefk13e34ayr9aWpGyiqmHlUzuhmXczXI3k47whL
   qZdnW8whq2HpwjtQrytlRY0ZxnYJquQOpuVpL5nxU5iee73g4zSjiuGV4
   vAdJ2+U/ivNb6LMSovS309PMcXU1/USJ50wHgRAIJqoMPFw6HqoaTbTYO
   7a1zBrZidMr4KrE+4i64DH5CFXdRGt9d9uQXL1upN1fLp/ChkLCUUybfV
   Q==;
X-CSE-ConnectionGUID: etfRBeR5QxSaCPz1H8qocA==
X-CSE-MsgGUID: 2xP4B6PkRLKBvsGRkfCv3w==
X-IronPort-AV: E=McAfee;i="6800,10657,11557"; a="59785097"
X-IronPort-AV: E=Sophos;i="6.18,275,1751266800"; 
   d="scan'208";a="59785097"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Sep 2025 12:00:40 -0700
X-CSE-ConnectionGUID: lsksx+3EQUqb4vrXiQW2XA==
X-CSE-MsgGUID: qfVbTbAJQF+iIHcpl+feOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,275,1751266800"; 
   d="scan'208";a="174747856"
Received: from smile.fi.intel.com ([10.237.72.51])
  by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Sep 2025 12:00:33 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98.2)
	(envelope-from <andriy.shevchenko@intel.com>)
	id 1uzJrp-00000004Ad0-3os0;
	Thu, 18 Sep 2025 22:00:29 +0300
Date: Thu, 18 Sep 2025 22:00:29 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@baylibre.com>
Cc: Andy Shevchenko <andy.shevchenko@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	sboyd@kernel.org, jic23@kernel.org, dlechner@baylibre.com,
	nuno.sa@analog.com, andy@kernel.org, arnd@arndb.de,
	gregkh@linuxfoundation.org, srini@kernel.org, vkoul@kernel.org,
	kishon@kernel.org, sre@kernel.org, krzysztof.kozlowski@linaro.org,
	linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-pm@vger.kernel.org, kernel@collabora.com, wenst@chromium.org,
	casey.connolly@linaro.org,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v4 2/7] nvmem: qcom-spmi-sdam: Migrate to
 devm_spmi_subdevice_alloc_and_add()
Message-ID: <aMxWzTxvMLsVWbDB@smile.fi.intel.com>
References: <20250916084445.96621-1-angelogioacchino.delregno@collabora.com>
 <20250916084445.96621-3-angelogioacchino.delregno@collabora.com>
 <t3uk3k4h3l53yajoe3xog2njmdn3jhkmdphv3c4wnpvcqniz4n@opgigzazycot>
 <aMlnp4x-1MUoModr@smile.fi.intel.com>
 <mknxgesog6aghc6cjzm63g63zqbqvysxf6ktmnbrbtafervveg@uoiohk3yclso>
 <CAHp75Vf7KrsN7Ec9zOvJoRuKvkbrJ5sMv7pVv6+88tPX-j_9ZA@mail.gmail.com>
 <er7dkmzutsu3ooegeihjzngi6l3hol5iaohecr3n5bolfse3tj@xeedlx2utwym>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <er7dkmzutsu3ooegeihjzngi6l3hol5iaohecr3n5bolfse3tj@xeedlx2utwym>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250918_120043_020786_A49A2F7E 
X-CRM114-Status: GOOD (  35.83  )
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

T24gV2VkLCBTZXAgMTcsIDIwMjUgYXQgMDI6NDc6MjJQTSArMDIwMCwgVXdlIEtsZWluZS1Lw7Zu
aWcgd3JvdGU6Cj4gT24gVHVlLCBTZXAgMTYsIDIwMjUgYXQgMDc6MjA6MjBQTSArMDMwMCwgQW5k
eSBTaGV2Y2hlbmtvIHdyb3RlOgo+ID4gT24gVHVlLCBTZXAgMTYsIDIwMjUgYXQgNjoxMeKAr1BN
IFV3ZSBLbGVpbmUtS8O2bmlnCj4gPiA8dS5rbGVpbmUta29lbmlnQGJheWxpYnJlLmNvbT4gd3Jv
dGU6Cj4gPiA+IE9uIFR1ZSwgU2VwIDE2LCAyMDI1IGF0IDA0OjM1OjM1UE0gKzAzMDAsIEFuZHkg
U2hldmNoZW5rbyB3cm90ZToKPiA+ID4gPiBPbiBUdWUsIFNlcCAxNiwgMjAyNSBhdCAwMzoyNDo1
NlBNICswMjAwLCBVd2UgS2xlaW5lLUvDtm5pZyB3cm90ZToKPiA+ID4gPiA+IE9uIFR1ZSwgU2Vw
IDE2LCAyMDI1IGF0IDEwOjQ0OjQwQU0gKzAyMDAsIEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJlZ25v
IHdyb3RlOgoKLi4uCgo+ID4gPiA+ID4gPiArTU9EVUxFX0lNUE9SVF9OUygiU1BNSSIpOwo+ID4g
PiA+ID4KPiA+ID4gPiA+IElmIGl0J3MgZXhhY3RseSB0aGUgZmlsZXMgdGhhdCAjaW5jbHVkZSA8
bGludXgvc3BtaS5oPiBzaG91bGQgaGF2ZSB0aGF0Cj4gPiA+ID4gPiBuYW1lc3BhY2UgaW1wb3J0
LCB5b3UgY2FuIHB1dCB0aGUgTU9EVUxFX0lNUE9SVF9OUyBpbnRvIHRoYXQgaGVhZGVyLgo+ID4g
PiA+Cj4gPiA+ID4gV2hpY2ggbWFrZXMgYW55b25lIHRvIGltcG9ydCBuYW1lc3BhY2UgZXZlbiBp
ZiB0aGV5IGp1c3Qgd2FudCB0byB1c2Ugc29tZSB0eXBlcwo+ID4gPiA+IG91dCBvZiB0aGUgaGVh
ZGVyLgo+ID4gPgo+ID4gPiBOb3RpY2UgdGhhdCBJIGNhcmVmdWxseSBmb3JtdWxhdGVkIG15IHN1
Z2dlc3Rpb24gdG8gY29wZSBmb3IgdGhpcyBjYXNlLgo+ID4gCj4gPiBBbmQgSSBjYXJlZnVsbHkg
YW5zd2VyZWQuCj4gCj4gSSB0ZW5kIHRvIGRpc2FncmVlLiBJZiB0aGF0IGFueW9uZSBvbmx5IHdh
bnRzIHNvbWUgdHlwZSBmcm9tIHRoZSBoZWFkZXIKPiBidXQgbm90IHRoZSBuYW1lc3BhY2UsIHRo
ZSBpZiBwYXJ0IG9mIG15IHN0YXRlbWVudCBpc24ndCBnaXZlbiBhbnkgbW9yZS4KPiBTdGlsbCB5
b3VyIHJlcGx5IGZlbHQgbGlrZSBvYmplY3Rpb24gd2hpbGUgbG9naWNhbGx5IGl0J3Mgbm90LgoK
WW91IGFzc3VtZWQgdGhhdCBpbiBjYXNlIHRoYXQgdGhlIGhlYWRlciB0aGF0IGlzICpjdXJyZW50
bHkqIGluY2x1ZGVkIGluIHRoZQp1c2VycywgbWF5IGJlIHRoZSBvbmUgdGhhdCB1c2VkIGJ5IHRo
ZSBzYW1lIHVzZXJzIHRoYXQgbmVlZHMgYW4gaW1wb3J0ZWQKbmFtZXNwYWNlLiBPa2F5LCAqbm93
KiAob3IgdG9kYXkpIGl0J3Mgbm90IGEgcHJvYmxlbSwgYnV0ICppbiB0aGUgZnV0dXJlKiBpdApt
aWdodCBiZSAqd2hlbiogb25lIHdhbnRzIHRvIHVzZSAqanVzdCogdHlwZXMgZnJvbSBpdC4KSSBk
b24ndCB0aGluayB0aGlzIGlzIGxpa2VseSB0byBoYXBwZW4sIGJ1dCBpbiBnZW5lcmFsIGluY2x1
ZGluZyBzb21ldGhpbmcKImJ5IGRlZmF1bHQiIGlzIG5vdCBhIGdvb2QgaWRlYS4gVGhhdCdzIHdo
YXQgSSdtIG9iamVjdGluZyB0by4KCj4gPiBZb3VyIHByb3Bvc2FsIHdvbid0IHByZXZlbnQgX290
aGVyXyBmaWxlcyB0bwo+ID4gdXNlIHRoZSBzYW1lIGhlYWRlciBpbiB0aGUgZnV0dXJlIHdpdGhv
dXQgbmVlZGluZyBhIG5hbWVzcGFjZSB0byBiZQo+ID4gaW1wb3J0ZWQuCj4gCj4gT2ggeWVzLiBC
dXQgdGhhdCdzIHRydWUgZm9yIGV2ZXJ5IGNoYW5nZTogSWYgeW91IGNoYW5nZSBpdCBmdXJ0aGVy
IHlvdQo+IGhhdmUgdG8gY29wZSBmb3Igd2hhdCBpcyBhbHJlYWR5IHRoZXJlLgo+IAo+ID4gPiA+
IFRoaXMgaXMgbm90IGdvb2Qgc29sdXRpb24gZ2VuZXJhbGx5IHNwZWFraW5nLiBBbHNvIHRoaXMg
d2lsbAo+ID4gPiA+IGRpbWluaXNoIG9uZSBvZiB0aGUgcHVycG9zZXMgb2YgX05TIHZhcmlhbnRz
IG9mIE1PRFVMRSovRVhQT1JUKiwgaS5lLiBtYWtlIGl0Cj4gPiA+ID4gaW52aXNpYmxlIHRoYXQg
c29tZSBvZiB0aGUgY29kZSBtYXkgYmVjb21lIGFuIGFidXNlciBvZiB0aGUgQVBJIGp1c3QgYnkg
c29tZW9uZQo+ID4gPiA+IGluY2x1ZGUgdGhlIGhlYWRlciAoZm9yIGEgcmVhc29uIG9yIGJ5IGEg
bWlzdGFrZSkuCj4gPiA+Cj4gPiA+IFllYWgsIG9waW5pb25zIGRpZmZlci4gSW4gbXkgZXllcyBp
dCdzIHF1aXRlIGVsZWdhbnQuCj4gPiAKPiA+IEl0J3Mgbm90IGEgcHVyZSBvcGluaW9uLAo+IAo+
IFRoYXQncyB5b3VyIG9waW5pb24gOi0pCgpBbGwgd2Ugc2FpZCBpcyBqdXN0IHNldCBvZiBvcGlu
aW9ucy4gRmFjdHMgYXJlIHByb3ZpZGVkIGJ5IHNjaWVudGlmaWMKZXhwZXJpbWVudHMuCgo+ID4g
aXQgaGFzIGEgdGVjaG5pY2FsIGJhY2tncm91bmQgdGhhdCBJCj4gPiBleHBsYWluZWQuIFRoZSBl
eHBsaWNpdCB1c2FnZSBvZiBNT0RVTEVfSU1QT1JUX05TKCkgaXMgYmV0dGVyIHRoYW4KPiA+IHNv
bWUgaGVhZGVyIHNvbWV3aGVyZSB0aGF0IG1pZ2h0IGV2ZW4gYmUgaW5jbHVkZWQgYnkgYW5vdGhl
ciBhbmQgYmUKPiA+IHByb3hpZWQgdG8gdGhlIGNvZGUgdGhhdCBkb2Vzbid0IG5lZWQgLyB3YW50
IHRvIGhhdmUgdGhpcyBuYW1lc3BhY2UgdG8KPiA+IGJlIHByZXNlbnQuIFB1dGluZyBNT0RVTEVf
SU1QT1JUX05TKCkgaW50byBhIF9oZWFkZXJfIGlzIGEgbWluZWZpZWxkCj4gPiBmb3IgdGhlIGZ1
dHVyZS4KPiAKPiBXZWxsLCBmb3IgYSBkZWxpYmVyYXRlIGFidXNlciB0aGUgaHVyZGxlIHRvIGhh
dmUgdG8gYWRkIHRoZSBleHBsaWNpdAo+IE1PRFVMRV9JTVBPUlRfTlMoKSBpc24ndCB0aGF0IGJp
Zy4gQW5kIGEgbWlzdGFrZW4gYWJ1c2VyIHdvbid0IGV4cGxvZGUsCj4ganVzdCBnZW5lcmF0ZSBh
IGZldyBieXRlcyBvdmVyaGVhZCB0aGF0IGNhbiBiZSBmaXhlZCB3aGVuIG5vdGljZWQuCj4gCj4g
SW4gbXkgb3BpbmlvbiB0aGF0IGlzIGFuIG9rIGNvc3QgZm9yIHRoZSBhZGRlZCBlbGVnYW5jZS4K
CkkgdGVuZCB0byBkaXNhZ3JlZS4gVGhlIHByYWN0aWNlIHRvIGluY2x1ZGUgKGJlIGxhenkpIHNv
bWV0aGluZyBqdXN0IGluIGNhc2UgaXMKYSBiYWQgcHJhY3RpY2UuIERldmVsb3BlciBoYXMgdG8g
a25vdyB3aGF0IHRoZXkgYXJlIGRvaW5nLiBXZSBoYXZlIGFscmVhZHkgdG9vCm11Y2ggYmFkIGNv
ZGUgaW4gdGhlIGtlcm5lbCBhbmQgb3BlbmluZyBuZXcgd2F5cyBmb3IgbW9yZSAidmliZTppc2gi
IGNvZGluZyBpcwphIHJvYWQgdG8gYWNjdW11bGF0ZWQgaXNzdWVzIGluIHRoZSBmdXR1cmUuCgpJ
LG8udy4gSSBwcmluY2lwYWxseSBkaXNhZ3JlZSBvbiBwdXR0aW5nIE1PRFVMRV9JTVBPUlRfTlMo
KSBpbnRvIHRoZSBoZWFkZXIKZmlsZS4KCi0tIApXaXRoIEJlc3QgUmVnYXJkcywKQW5keSBTaGV2
Y2hlbmtvCgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXBoeQo=
