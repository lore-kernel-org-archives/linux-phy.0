Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE9BDD31A3A
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jan 2026 09:55:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dtTqtL9PMBHpz5oVhe5IXCLGWR2Gw7JOdCZNa6fWjzc=; b=XtHI7RFZv2THRD
	QlKe4cmONjIWVCBuOawNb6VLS3wkkpDe5SFtP2X1LsEs0Os7mYq+Z+K2vDWKSivsK96sCoZEn0L+y
	6pqXwD4w9dk44P9n6o1dl2uIfTo92QAjPU+k5CcFAomxp2snJIXYP5lin4GikNs99Wl8ehw3BWC+r
	P8cABTRbrhDyBZYfiMx8Vkw6+m4+XEiq+cNeuYbQQLl70ewe04n1JkpBEtFuni9ixT6kOQKHH2NW2
	beBxjvPRvrj249fwFrwXLQS4K/yeTUWKLDaF0Hrw6KSJ03/SwYU3LM80s+MlR+gIRgpcvEyb6j9E0
	O/OMTjLj9sDLGNp9q7PA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfxaz-00000008dtT-2foK;
	Wed, 14 Jan 2026 09:55:21 +0000
Received: from mgamail.intel.com ([192.198.163.18])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfxax-00000008dt6-1TlG
	for linux-phy@lists.infradead.org;
	Wed, 14 Jan 2026 09:55:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1768384519; x=1799920519;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=j1XcnslA3MmTMPnCgBkjQFe0gIruJbeqNyM3JJqammU=;
  b=Ay9pnqSD7vpVAD9CBq6zGz0B/YWwisuNOlNGqFLVkiARloBRwMjUQo61
   2UhsypNzJu0sfKkLgmmI4zuuPf4lJWbDDuDHjCY2KEPEa7vIeo+6lctlb
   zs0nPOp4P2aYejBUkPMaplMvSbiV8359WMOSSnA8eDEN+M7Gejp16pLQz
   NTn34Dn+A0l/j4F5CR4erDeaajvARWGkc3cNmB+nTbDJY/lRp+mcVtQTq
   0lef2lZGicAEF4LS9Bii/97Dw3URxsvN/ypx8pCk2acPgWEPJHpRLR3XW
   nutggk3lMgkX6GepWZU2Kldx8kf7OU+i9QvgSugfsLue8S/f0balEim37
   A==;
X-CSE-ConnectionGUID: IPpMwFMESUCLncKSnRJhdA==
X-CSE-MsgGUID: qJ7dDfErTgyBaFJpMiwGYA==
X-IronPort-AV: E=McAfee;i="6800,10657,11670"; a="68887294"
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; 
   d="scan'208";a="68887294"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
  by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jan 2026 01:55:18 -0800
X-CSE-ConnectionGUID: epqCc/UIRPC/tRMI6XYhsA==
X-CSE-MsgGUID: GEAk1xrtRTuH3pbsAc6PgQ==
X-ExtLoop1: 1
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.244.83])
  by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jan 2026 01:55:12 -0800
Date: Wed, 14 Jan 2026 11:55:10 +0200
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
Message-ID: <aWdn_j7SOKq97vpY@smile.fi.intel.com>
References: <20260114083957.9945-1-angelogioacchino.delregno@collabora.com>
 <20260114083957.9945-6-angelogioacchino.delregno@collabora.com>
 <aWdaWY2tWUMllOHH@smile.fi.intel.com>
 <8bf79979-0946-4ed9-b8d4-c442a6e54833@collabora.com>
 <aWdbPze-f_2_5EbL@smile.fi.intel.com>
 <401c5e7b-ff33-44e8-98a5-8cc6af4f2a87@collabora.com>
 <aWdcy2ouQHtkPd6q@smile.fi.intel.com>
 <647b4acc-3310-4329-ac7a-77e86bab74a3@collabora.com>
 <aWdk-RP-59cJeCBo@smile.fi.intel.com>
 <ae46b504-58d3-4042-be05-f31e9e01091b@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ae46b504-58d3-4042-be05-f31e9e01091b@oss.qualcomm.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_015519_605929_BF7F17BE 
X-CRM114-Status: GOOD (  19.36  )
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

T24gV2VkLCBKYW4gMTQsIDIwMjYgYXQgMTA6NDc6MjBBTSArMDEwMCwgS29ucmFkIER5YmNpbyB3
cm90ZToKPiBPbiAxLzE0LzI2IDEwOjQyIEFNLCBBbmR5IFNoZXZjaGVua28gd3JvdGU6Cj4gPiBP
biBXZWQsIEphbiAxNCwgMjAyNiBhdCAxMDowOTo0NUFNICswMTAwLCBBbmdlbG9HaW9hY2NoaW5v
IERlbCBSZWdubyB3cm90ZToKPiA+PiBJbCAxNC8wMS8yNiAxMDowNywgQW5keSBTaGV2Y2hlbmtv
IGhhIHNjcml0dG86Cj4gPj4+IE9uIFdlZCwgSmFuIDE0LCAyMDI2IGF0IDEwOjAzOjU3QU0gKzAx
MDAsIEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJlZ25vIHdyb3RlOgo+ID4+Pj4gSWwgMTQvMDEvMjYg
MTA6MDAsIEFuZHkgU2hldmNoZW5rbyBoYSBzY3JpdHRvOgo+ID4+Pj4+IE9uIFdlZCwgSmFuIDE0
LCAyMDI2IGF0IDA5OjU5OjQwQU0gKzAxMDAsIEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJlZ25vIHdy
b3RlOgo+ID4+Pj4+PiBJbCAxNC8wMS8yNiAwOTo1NiwgQW5keSBTaGV2Y2hlbmtvIGhhIHNjcml0
dG86Cj4gPj4+Pj4+PiBPbiBXZWQsIEphbiAxNCwgMjAyNiBhdCAwOTozOTo1MkFNICswMTAwLCBB
bmdlbG9HaW9hY2NoaW5vIERlbCBSZWdubyB3cm90ZToKCi4uLgoKPiA+Pj4+Pj4+PiArCXN0cnVj
dCByZWdtYXBfY29uZmlnIHNkYW1fcmVnbWFwX2NvbmZpZyA9IHsKPiA+Pj4+Pj4+PiArCQkucmVn
X2JpdHMgPSAxNiwKPiA+Pj4+Pj4+PiArCQkudmFsX2JpdHMgPSA4LAo+ID4+Pj4+Pj4KPiA+Pj4+
Pj4+PiArCQkubWF4X3JlZ2lzdGVyID0gMHgxMDAsCj4gPj4+Pj4+Pgo+ID4+Pj4+Pj4gQXJlIHlv
dSBzdXJlPyBUaGlzIG1pZ2h0IGJlIGEgYmFkIG5hbWluZywgYnV0IGhlcmUgbWF4ID09IHRoZSBs
YXN0IGFjY2Vzc2libGUuCj4gPj4+Pj4+PiBJIGJldCBpdCBoYXMgdG8gYmUgMHhmZiAoYnV0IHNp
bmNlIHRoZSBhZGRyZXNzIGlzIDE2LWJpdCBpdCBtaWdodCBiZSBhY3R1YWxseQo+ID4+Pj4+Pj4g
MjU3IHJlZ2lzdGVycywgYnV0IHNvdW5kcyB2ZXJ5IHdlaXJkKS4KPiA+Pj4+Pj4KPiA+Pj4+Pj4g
WWVzLCBJJ20gc3VyZS4KPiA+Pj4+Pgo+ID4+Pj4+IFNvLCB3aGF0IGlzIHJlc2lkZWQgb24gYWRk
cmVzcyAweDEwMCA/Cj4gPj4+Pgo+ID4+Pj4gSSBkb24ndCByZW1lbWJlciwgdGhpcyBpcyByZXNl
YXJjaCBmcm9tIGFyb3VuZCA1IG1vbnRocyBhZ28sIHdoZW4gSSd2ZSBzZW50Cj4gPj4+PiB0aGUg
djEgb2YgdGhpcy4KPiA+Pj4+Cj4gPj4+PiBJZiB5b3UgcmVhbGx5IHdhbnQgdGhvdWdoLCBJIGNh
biBpbmNvcnJlY3RseSBzZXQgbWF4X3JlZ2lzdGVyIHRvIDB4ZmYuCj4gPj4+Cj4gPj4+IFdoeSBp
bmNvcnJlY3RseT8gQ2FuIHlvdSBkaWcgaW50byB0aGUgZGF0YXNoZWV0IGFuZCBjaGVjaywgcGxl
YXNlPyBXZSBkb24ndAo+ID4+PiBrbm93IHdoYXQgaXMgdGhlIDB4MTAwIGFkZHJlc3MgbWVhbnMu
Cj4gPj4KPiA+PiBJIGRvbid0IGhhdmUgYW55IGRhdGFzaGVldHMgZm9yIFF1YWxjb21tIElQcy4K
PiA+IAo+ID4gSG1tLi4uIENhbiB3ZSBoYXZlIHNvbWVib2R5IGZyb20gUUMgdG8gY2hlY2sgb24g
dGhpcz8KPiA+IFBlcmhhcHMgRG1pdHJ5Pwo+IAo+IDB4ZTYgaXMgdGhlIGxhc3QgdXNhYmxlIHJl
Z2lzdGVyIHRvZGF5CgpUaGFua3MgZm9yIGNoZWNraW5nIQoKPiBCdXQgSSB3b3VsZG4ndCBtaW5k
IGVpdGhlciAweGZmIG9yIDB4MTAwIGJlY2F1c2UgSSBkb24ndCB3YW50Cj4gYW55b25lIHRvIHB1
bGwgdGhlaXIgaGFpciBvdXQgaWYgYSByZWdtYXAgYWNjZXNzIGlzIGRyb3BwZWQgc29tZSBkYXku
LgoKVGhlcmUgaXMgYWN0dWFsbHkgYWJvdXQgdGhlIGV4YWN0IHdpbmRvdyBzaXplIHdoZXJlIHJl
Z2lzdGVycyBhcmUgYmVsb25nIHRvIHRoZQpzYW1lIGVudGl0eSAoc3ViZGV2aWNlKS4gQXMgaW4g
dGhlIEhXIHdvcmxkIG1vc3Qgb2YgdGhlIHRoaW5ncyBhcmUgc3R1Y2sgd2l0aApwb3dlci1vZi10
d28gbnVtYmVycywgYW5kIHRha2luZyBpbnRvIGFjY291bnQgdGhlIG5hbWluZyBvZiB0aGUgZmll
bGQsIEkgZG8gbm90CmJlbGlldmUgb25lIHByb3ZpZGVzIGEgMjU3ICgyNTYgKyAxID0gMuKBuCAr
IDEpIHJlZ2lzdGVyIF93aW5kb3dzXyAoInMiIGlzIGFsc28KaW1wb3J0YW50IGhlcmUsIGFzIGl0
IHBvaW50cyBvdXQgdG8gdGhlIHBhdHRlcm4pIGZvciB0aGUgc3ViZGV2aWNlcy4gSSBiZXQgdGhl
CjB4ZmYsIGkuZS4gMjU2LCBpcyB0aGUgKmNvcnJlY3QqIHdpbmRvdyBmcm9tIHRoZSBIVyBwZXJz
cGVjdGl2ZS4KCi0tIApXaXRoIEJlc3QgUmVnYXJkcywKQW5keSBTaGV2Y2hlbmtvCgoKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
