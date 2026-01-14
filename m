Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F02ADD31A3C
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jan 2026 10:09:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uCrPj/34Jp2z/U7y883ps5YOO99xYPQCLLPlCSI9ELE=; b=ziB3svdbJczaiE
	AZy2oKX9jcUSDV17AKisowhr8GJLRPY51bQV+Th+uogDBuA2L4KjwWNCXGPlAXURIEjtmwltbP3O+
	knrbMKRuvDIggS+u55Bq1JIAZmRDsgaTNAHRjTQptx3WiIJdr0Nv4cOtUHLWZwfxgAGOC481NZZ5h
	gOgj9lsm+Zfdp+QmyhvZqQJ6Ck71HHMsdGCRNUas6qE3Wu45pMGKm+awUzsZwxdOzgt3hosZxuOqh
	QxaVVtNwEQz/bSUZ4m7Y0fETMFh7AbBBEdGCtG+SQEasNle68aM95/vsFV12RhbNlVOZO7ClmQfIv
	TUcAOQvuDaLS+UK1n9NQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfxoc-00000008hU7-32d6;
	Wed, 14 Jan 2026 10:09:27 +0000
Received: from mgamail.intel.com ([198.175.65.11])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfxoa-00000008hSw-0m4N
	for linux-phy@lists.infradead.org;
	Wed, 14 Jan 2026 10:09:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1768385364; x=1799921364;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=mVfiznKpM9yXiJNBoD3mVJIRyBtj3lhbh1JGsuuuN9g=;
  b=DnO5CjoR9d+yp25a+zms9j7s9lZx3NPeDx1T4jtlWV/OlYMUkskArozU
   uphAuS7qfrrOp4onyLI2KHojEJlYQ6DrBJ4qK1nriYrGNcOLq5XwQ1T/7
   o8onKYGxRvmgJqL+60IPBdEIKuTID9z+XqE+PgNTh4X0CHBhNsuBZzEsN
   wrmzyMZTr0qP0vfwbhprRRPVgjusA+q3RMigEZautLWtdNT7+xMNAJgaz
   M5mG5Vqy1Bk78nxBVV2hVgowC9dYazg5AQgUnq2aY/riQCBBhm0GwPRTu
   qWDFE3bPXtMeIMkcCGqdX0RCORH6L/R3A0kFkdUf2dt6/8TsBlyLMKmEU
   Q==;
X-CSE-ConnectionGUID: mJEb9IHTSi+z29uCWjxiAw==
X-CSE-MsgGUID: pezeKY+nRhSeJQZhZHOfvw==
X-IronPort-AV: E=McAfee;i="6800,10657,11670"; a="79977250"
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; 
   d="scan'208";a="79977250"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
  by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jan 2026 02:09:23 -0800
X-CSE-ConnectionGUID: nCgo7y7nS+SB6ivhyZ/2wA==
X-CSE-MsgGUID: 9QmYMU7TQKK9zutJt+nHog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; 
   d="scan'208";a="209484837"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.244.83])
  by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jan 2026 02:09:17 -0800
Date: Wed, 14 Jan 2026 12:09:15 +0200
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
Message-ID: <aWdrS7poHyhTzyfN@smile.fi.intel.com>
References: <aWdaWY2tWUMllOHH@smile.fi.intel.com>
 <8bf79979-0946-4ed9-b8d4-c442a6e54833@collabora.com>
 <aWdbPze-f_2_5EbL@smile.fi.intel.com>
 <401c5e7b-ff33-44e8-98a5-8cc6af4f2a87@collabora.com>
 <aWdcy2ouQHtkPd6q@smile.fi.intel.com>
 <647b4acc-3310-4329-ac7a-77e86bab74a3@collabora.com>
 <aWdk-RP-59cJeCBo@smile.fi.intel.com>
 <ae46b504-58d3-4042-be05-f31e9e01091b@oss.qualcomm.com>
 <aWdn_j7SOKq97vpY@smile.fi.intel.com>
 <dd877ea8-b634-4cc9-8280-08663f82776d@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dd877ea8-b634-4cc9-8280-08663f82776d@oss.qualcomm.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_020924_270720_1DD5BCC9 
X-CRM114-Status: GOOD (  25.83  )
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

T24gV2VkLCBKYW4gMTQsIDIwMjYgYXQgMTE6MDQ6MzBBTSArMDEwMCwgS29ucmFkIER5YmNpbyB3
cm90ZToKPiBPbiAxLzE0LzI2IDEwOjU1IEFNLCBBbmR5IFNoZXZjaGVua28gd3JvdGU6Cj4gPiBP
biBXZWQsIEphbiAxNCwgMjAyNiBhdCAxMDo0NzoyMEFNICswMTAwLCBLb25yYWQgRHliY2lvIHdy
b3RlOgo+ID4+IE9uIDEvMTQvMjYgMTA6NDIgQU0sIEFuZHkgU2hldmNoZW5rbyB3cm90ZToKPiA+
Pj4gT24gV2VkLCBKYW4gMTQsIDIwMjYgYXQgMTA6MDk6NDVBTSArMDEwMCwgQW5nZWxvR2lvYWNj
aGlubyBEZWwgUmVnbm8gd3JvdGU6Cj4gPj4+PiBJbCAxNC8wMS8yNiAxMDowNywgQW5keSBTaGV2
Y2hlbmtvIGhhIHNjcml0dG86Cj4gPj4+Pj4gT24gV2VkLCBKYW4gMTQsIDIwMjYgYXQgMTA6MDM6
NTdBTSArMDEwMCwgQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8gd3JvdGU6Cj4gPj4+Pj4+IEls
IDE0LzAxLzI2IDEwOjAwLCBBbmR5IFNoZXZjaGVua28gaGEgc2NyaXR0bzoKPiA+Pj4+Pj4+IE9u
IFdlZCwgSmFuIDE0LCAyMDI2IGF0IDA5OjU5OjQwQU0gKzAxMDAsIEFuZ2Vsb0dpb2FjY2hpbm8g
RGVsIFJlZ25vIHdyb3RlOgo+ID4+Pj4+Pj4+IElsIDE0LzAxLzI2IDA5OjU2LCBBbmR5IFNoZXZj
aGVua28gaGEgc2NyaXR0bzoKPiA+Pj4+Pj4+Pj4gT24gV2VkLCBKYW4gMTQsIDIwMjYgYXQgMDk6
Mzk6NTJBTSArMDEwMCwgQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8gd3JvdGU6CgouLi4KCj4g
Pj4+Pj4+Pj4+PiArCXN0cnVjdCByZWdtYXBfY29uZmlnIHNkYW1fcmVnbWFwX2NvbmZpZyA9IHsK
PiA+Pj4+Pj4+Pj4+ICsJCS5yZWdfYml0cyA9IDE2LAo+ID4+Pj4+Pj4+Pj4gKwkJLnZhbF9iaXRz
ID0gOCwKPiA+Pj4+Pj4+Pj4KPiA+Pj4+Pj4+Pj4+ICsJCS5tYXhfcmVnaXN0ZXIgPSAweDEwMCwK
PiA+Pj4+Pj4+Pj4KPiA+Pj4+Pj4+Pj4gQXJlIHlvdSBzdXJlPyBUaGlzIG1pZ2h0IGJlIGEgYmFk
IG5hbWluZywgYnV0IGhlcmUgbWF4ID09IHRoZSBsYXN0IGFjY2Vzc2libGUuCj4gPj4+Pj4+Pj4+
IEkgYmV0IGl0IGhhcyB0byBiZSAweGZmIChidXQgc2luY2UgdGhlIGFkZHJlc3MgaXMgMTYtYml0
IGl0IG1pZ2h0IGJlIGFjdHVhbGx5Cj4gPj4+Pj4+Pj4+IDI1NyByZWdpc3RlcnMsIGJ1dCBzb3Vu
ZHMgdmVyeSB3ZWlyZCkuCj4gPj4+Pj4+Pj4KPiA+Pj4+Pj4+PiBZZXMsIEknbSBzdXJlLgo+ID4+
Pj4+Pj4KPiA+Pj4+Pj4+IFNvLCB3aGF0IGlzIHJlc2lkZWQgb24gYWRkcmVzcyAweDEwMCA/Cj4g
Pj4+Pj4+Cj4gPj4+Pj4+IEkgZG9uJ3QgcmVtZW1iZXIsIHRoaXMgaXMgcmVzZWFyY2ggZnJvbSBh
cm91bmQgNSBtb250aHMgYWdvLCB3aGVuIEkndmUgc2VudAo+ID4+Pj4+PiB0aGUgdjEgb2YgdGhp
cy4KPiA+Pj4+Pj4KPiA+Pj4+Pj4gSWYgeW91IHJlYWxseSB3YW50IHRob3VnaCwgSSBjYW4gaW5j
b3JyZWN0bHkgc2V0IG1heF9yZWdpc3RlciB0byAweGZmLgo+ID4+Pj4+Cj4gPj4+Pj4gV2h5IGlu
Y29ycmVjdGx5PyBDYW4geW91IGRpZyBpbnRvIHRoZSBkYXRhc2hlZXQgYW5kIGNoZWNrLCBwbGVh
c2U/IFdlIGRvbid0Cj4gPj4+Pj4ga25vdyB3aGF0IGlzIHRoZSAweDEwMCBhZGRyZXNzIG1lYW5z
Lgo+ID4+Pj4KPiA+Pj4+IEkgZG9uJ3QgaGF2ZSBhbnkgZGF0YXNoZWV0cyBmb3IgUXVhbGNvbW0g
SVBzLgo+ID4+Pgo+ID4+PiBIbW0uLi4gQ2FuIHdlIGhhdmUgc29tZWJvZHkgZnJvbSBRQyB0byBj
aGVjayBvbiB0aGlzPwo+ID4+PiBQZXJoYXBzIERtaXRyeT8KPiA+Pgo+ID4+IDB4ZTYgaXMgdGhl
IGxhc3QgdXNhYmxlIHJlZ2lzdGVyIHRvZGF5Cj4gPiAKPiA+IFRoYW5rcyBmb3IgY2hlY2tpbmch
Cj4gPiAKPiA+PiBCdXQgSSB3b3VsZG4ndCBtaW5kIGVpdGhlciAweGZmIG9yIDB4MTAwIGJlY2F1
c2UgSSBkb24ndCB3YW50Cj4gPj4gYW55b25lIHRvIHB1bGwgdGhlaXIgaGFpciBvdXQgaWYgYSBy
ZWdtYXAgYWNjZXNzIGlzIGRyb3BwZWQgc29tZSBkYXkuLgo+ID4gCj4gPiBUaGVyZSBpcyBhY3R1
YWxseSBhYm91dCB0aGUgZXhhY3Qgd2luZG93IHNpemUgd2hlcmUgcmVnaXN0ZXJzIGFyZSBiZWxv
bmcgdG8gdGhlCj4gPiBzYW1lIGVudGl0eSAoc3ViZGV2aWNlKS4gQXMgaW4gdGhlIEhXIHdvcmxk
IG1vc3Qgb2YgdGhlIHRoaW5ncyBhcmUgc3R1Y2sgd2l0aAo+ID4gcG93ZXItb2YtdHdvIG51bWJl
cnMsIGFuZCB0YWtpbmcgaW50byBhY2NvdW50IHRoZSBuYW1pbmcgb2YgdGhlIGZpZWxkLCBJIGRv
IG5vdAo+ID4gYmVsaWV2ZSBvbmUgcHJvdmlkZXMgYSAyNTcgKDI1NiArIDEgPSAy4oG4ICsgMSkg
cmVnaXN0ZXIgX3dpbmRvd3NfICgicyIgaXMgYWxzbwo+ID4gaW1wb3J0YW50IGhlcmUsIGFzIGl0
IHBvaW50cyBvdXQgdG8gdGhlIHBhdHRlcm4pIGZvciB0aGUgc3ViZGV2aWNlcy4gSSBiZXQgdGhl
Cj4gPiAweGZmLCBpLmUuIDI1NiwgaXMgdGhlICpjb3JyZWN0KiB3aW5kb3cgZnJvbSB0aGUgSFcg
cGVyc3BlY3RpdmUuCj4gCj4gUmlnaHQsIFsweDEwMG4sIDB4MTAwbiArIDB4ZmZdIGluY2x1c2l2
ZSBpcyB0aGUgcmVzZXJ2ZWQgcmVnaXN0ZXIgd2luZG93Cj4gZm9yIGFsbCBRdWFsY29tbSBQTUlD
IHBlcmlwaGVyYWxzLCBzbyBJIGd1ZXNzIDB4ZmYgaXMgdGhlIGNvcnJlY3QgY2hvaWNlCj4gaGVy
ZQoKVGhhbmtzIGZvciB0aGUgY2xhcmlmaWNhdGlvbiwgdjggYWRkcmVzc2VzIHRoYXQsIHNvIHNl
ZW1zIHRvIG1lIGdvb2QgdG8gZ28uCgo+IElmIGEgcGVyaXBoZXJhbCBpcyBtb3JlIGNvbXBsZXgs
IGl0J3Mgc3BsaXQgaW50byBhIGNvdXBsZSBvZiB0aGVzZQo+IHNhbWUtc2l6ZWQgYmxvY2tzCgpS
aWdodC4KCi0tIApXaXRoIEJlc3QgUmVnYXJkcywKQW5keSBTaGV2Y2hlbmtvCgoKCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
