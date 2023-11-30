Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CB65C4167B
	for <linux-phy@archiver.kernel.org>; Thu, 30 Nov 2023 09:34:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cnJ3WVu5ALoCBEz0kmUZuvi5jnpG7sMB/exUw1Mo9JU=; b=brX4Niky8/dcNt
	U4ONJQ2+JIVNqxrWe8OXhkPLlDFay34daL6wrpJ3b2uhcvULhTz1ffOEgs5UdsM4TZfBUDHcCh614
	ioh4cem/d1HD4ryP9QozAyJQOTSZdHlMHe4CogecI8IyBDU+BnA/5idFEWu7pWL9XR0CcNA3ANzhX
	r5Sb6TjnjuhL+KFyBk3BMdCxQrlvIZm0nnnnaj29RPRZHXh8W1fQj/O5NXNMp/ZsqmYa+jOkvP9Ti
	I7kTJDVZYPUXWHtbmae+dEgbmj2JKJWzlPqspJJqIo1C5JMhTx3OJlFVmqoYu1e2B+xnnIA8cetra
	7GXNZa7QunNO/NLkStLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8dRS-00AL79-0x;
	Thu, 30 Nov 2023 09:34:42 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8dRP-00AL5A-0U
	for linux-phy@lists.infradead.org;
	Thu, 30 Nov 2023 09:34:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 55CFAB840A8;
	Thu, 30 Nov 2023 09:34:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB2D6C433C8;
	Thu, 30 Nov 2023 09:34:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701336874;
	bh=RqZHsXY1RzLVHWsscpg0HFTRVpHt6GF1c4U3w56N2eQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iMKiS05nO0Si1eNtzrPbl9O5VvGWL79iQx4/rFwHxcP9yFesqDnHGijIl/ft5FVks
	 l1FMYpzWO1TfmBQ6m7A6rAk7YMKGcYwFdRu6AC2z5arq28xouhlDYAZf46dQPNfwxw
	 9SnBuAlAhJxqfu+cdmkk5tGegtpBzWaeu5+51e8oXhyJoIxtQ+UexikeyvTi4A5fbC
	 XkTpVvS5yhIsDqOLMdJhTn+sEr8CoQFueNRxrcZsyjB/nIlJEhoJz2lOCK5+OQdFeM
	 i0xhNkrwkceohr83T5YHsuJrJ3jPZD3Oe+0+hyoFSlZL2pVLQm+UWk1/O5Y0zhXaO4
	 bTlt+UPqhio3Q==
Date: Thu, 30 Nov 2023 15:04:23 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Can Guo <quic_cang@quicinc.com>
Cc: Manivannan Sadhasivam <mani@kernel.org>, bvanassche@acm.org,
	adrian.hunter@intel.com, cmd4@qualcomm.com, beanhuo@micron.com,
	avri.altman@wdc.com, junwoo80.lee@samsung.com,
	martin.petersen@oracle.com, linux-scsi@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	"open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>,
	open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v6 08/10] phy: qualcomm: phy-qcom-qmp-ufs: Add High Speed
 Gear 5 support for SM8550
Message-ID: <20231130093423.GO3043@thinkpad>
References: <1701246516-11626-1-git-send-email-quic_cang@quicinc.com>
 <1701246516-11626-9-git-send-email-quic_cang@quicinc.com>
 <20231130071240.GG3043@thinkpad>
 <367744ed-a7e4-485b-b855-2cb26ef1ee16@quicinc.com>
 <20231130083827.GM3043@thinkpad>
 <c112b051-05ba-45f0-a9f3-f0da5afad4f7@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c112b051-05ba-45f0-a9f3-f0da5afad4f7@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231130_013439_453682_20A0BCEC 
X-CRM114-Status: GOOD (  30.85  )
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

T24gVGh1LCBOb3YgMzAsIDIwMjMgYXQgMDQ6NDk6MTJQTSArMDgwMCwgQ2FuIEd1byB3cm90ZToK
PiAKPiAKPiBPbiAxMS8zMC8yMDIzIDQ6MzggUE0sIE1hbml2YW5uYW4gU2FkaGFzaXZhbSB3cm90
ZToKPiA+IE9uIFRodSwgTm92IDMwLCAyMDIzIGF0IDA0OjE0OjI1UE0gKzA4MDAsIENhbiBHdW8g
d3JvdGU6CgpbLi4uXQoKPiA+ID4gPiA+ICtzdGF0aWMgaW50IHFtcF91ZnNfZ2V0X2dlYXJfb3Zl
cmxheShzdHJ1Y3QgcW1wX3VmcyAqcW1wLCBjb25zdCBzdHJ1Y3QgcW1wX3BoeV9jZmcgKmNmZykK
PiA+ID4gPiA+ICt7Cj4gPiA+ID4gPiArCXUzMiBtYXhfZ2VhciwgZmxvb3JfbWF4X2dlYXIgPSBj
ZmctPm1heF9zdXBwb3J0ZWRfZ2VhcjsKPiA+ID4gPiA+ICsJaW50IGkgPSBOVU1fT1ZFUkxBWSAt
IDE7Cj4gPiA+ID4gCj4gPiA+ID4gSnVzdCB1c2UgaSBkaXJlY3RseSBpbiB0aGUgZm9yIGxvb3Au
IEFsc28sIHBsZWFzZSByZW5hbWUgImkiIHdpdGggImlkeCIgdG8gbWFrZQo+ID4gPiA+IGl0IGNs
ZWFyLgo+ID4gPiAKPiA+ID4gT0sKPiA+ID4gCj4gPiA+ID4gCj4gPiA+ID4gPiArCWludCByZXQg
PSAtRUlOVkFMOwo+ID4gPiA+ID4gKwo+ID4gPiA+ID4gKwlmb3IgKDsgaSA+PSAwOyBpIC0tKSB7
Cj4gPiA+ID4gCj4gPiA+ID4gaS0tCj4gPiA+ID4gCj4gPiA+ID4gPiArCQltYXhfZ2VhciA9IGNm
Zy0+dGJsc19oc19vdmVybGF5W2ldLm1heF9nZWFyOwo+ID4gPiA+ID4gKwo+ID4gPiA+ID4gKwkJ
aWYgKG1heF9nZWFyID09IDApCj4gPiA+ID4gPiArCQkJY29udGludWU7Cj4gPiA+ID4gCj4gPiA+
ID4gWW91IGFyZSBzZXR0aW5nIG1heF9nZWFyIGV2ZW4gZm9yIHRhcmdldHMgd2l0aCBhIHNpbmds
ZSBvdmVybGF5LiBIb3cgY2FuIHRoaXMKPiA+ID4gPiBiZWNvbWUgMD8KPiA+ID4gCj4gPiA+IFNh
eSA4NTUwIGhhcyB0d28gb3ZlcmxheXMsIDg0NTAgaGFzIG9uZSBvdmVybGF5LiBXZSBhcmUgc3dl
ZXBpbmcgYWxsCj4gPiA+IG92ZXJsYXlzIGFzIE5VTV9PVkVSTEFZID09IDIsIHNvIGZvciA4NDUw
LCB0aGVyZSBpcyBvbmUgb3ZlcmxheSBpbml0aWFsaXplZCwKPiA+ID4gYW5vdGhlciBvbmUgbm90
IGluaXRpYWxpemVkIChtYXhfZ2VhciA9PSAwKSwgd2UgYXJlIHNraXBwaW5nIHRoZSBvbmUgd2hp
Y2gKPiA+ID4gaXMgbm90IGluaXRpYWxpemVkLgo+ID4gPiAKPiA+IAo+ID4gVGhpcyBpcyBjb25m
dXNpbmcgYXQgaXRzIGJlc3QgOikgUGxlYXNlIGNoZWNrIGZvciB0aGUgZXhpc3RlbmNlIG9mIHRo
ZSBhY3R1YWwKPiA+IHRhYmxlIGluc3RlYWQuIExpa2UsCj4gPiAKPiA+IAlmb3IgKGlkeCA9IE5V
TV9PVkVSTEFZIC0gMTsgaSA+PSAwLCBpLS0pIHsKPiA+IAo+ID4gCQkvKiBTa2lwIGlmIHRoZSB0
YWJsZSBpcyBub3QgYXZhaWxhYmxlICovCj4gPiAJCWlmICghY2ZnLT50YmxzX2hzX292ZXJsYXlb
aV0uc2VyZGVzKQo+ID4gCQkJY29udGludWU7Cj4gPiAKPiA+IAkJLi4uCj4gPiAJfQo+IAo+IFdl
IGNhbm5vdCBleHBlY3Qgb3ZlcmxheSBtdXN0IGhhcyBpdHMgb3duIHNlcmRlcywgb3IgdHgvcngv
cGNzLCBoZW5jZSBJIGFtCj4gY2hlY2tpbmcgbWF4X2dlYXIgaW50ZWFkIG9mIGFueSBzcGVjaWZp
YyBtZW1iZXIuCj4gCgpIbW0sIHRoZW4gcGxlYXNlIGFkZCB0aGUgY29tbWVudCBhcyBJIHN1Z2dl
c3RlZCBhYm92ZS4KCj4gPiAKPiA+ID4gPiAKPiA+ID4gPiA+ICsKPiA+ID4gPiA+ICsJCS8qIERp
cmVjdCBtYXRjaGluZywgYmFpbCAqLwo+ID4gPiA+ID4gKwkJaWYgKHFtcC0+c3VibW9kZSA9PSBt
YXhfZ2VhcikKPiA+ID4gPiA+ICsJCQlyZXR1cm4gaTsKPiA+ID4gPiA+ICsKPiA+ID4gPiA+ICsJ
CS8qIElmIG5vIGRpcmVjdCBtYXRjaGluZywgdGhlIGxvd2VzdCBnZWFyIGlzIHRoZSBiZXN0IG1h
dGNoaW5nICovCj4gPiA+ID4gPiArCQlpZiAobWF4X2dlYXIgPCBmbG9vcl9tYXhfZ2Vhcikgewo+
ID4gPiA+ID4gKwkJCXJldCA9IGk7Cj4gPiA+ID4gPiArCQkJZmxvb3JfbWF4X2dlYXIgPSBtYXhf
Z2VhcjsKPiA+ID4gPiA+ICsJCX0KPiA+ID4gPiA+ICsJfQo+ID4gPiA+ID4gKwo+ID4gPiA+ID4g
KwlyZXR1cm4gcmV0Owo+ID4gPiA+ID4gK30KPiA+ID4gPiA+ICsKPiA+ID4gPiA+ICAgIHN0YXRp
YyB2b2lkIHFtcF91ZnNfaW5pdF9yZWdpc3RlcnMoc3RydWN0IHFtcF91ZnMgKnFtcCwgY29uc3Qg
c3RydWN0IHFtcF9waHlfY2ZnICpjZmcpCj4gPiA+ID4gPiAgICB7Cj4gPiA+ID4gPiArCWludCBp
Owo+ID4gPiA+ID4gKwlib29sIGFwcGx5X292ZXJsYXkgPSBmYWxzZTsKPiA+ID4gPiA+ICsKPiA+
ID4gPiA+ICsJaSA9IHFtcF91ZnNfZ2V0X2dlYXJfb3ZlcmxheShxbXAsIGNmZyk7Cj4gPiA+ID4g
PiArCWlmIChpID49IDApCj4gPiA+ID4gPiArCQlhcHBseV9vdmVybGF5ID0gdHJ1ZTsKPiA+ID4g
PiAKPiA+ID4gPiBIb3cgYWJvdXQ/Cj4gPiA+ID4gCj4gPiA+ID4gYGBgCj4gPiA+ID4gCWludCBp
ZHg7Cj4gPiA+ID4gCj4gPiA+ID4gCWlkeCA9IHFtcF91ZnNfZ2V0X2dlYXJfb3ZlcmxheShxbXAs
IGNmZyk7Cj4gPiA+ID4gCj4gPiA+ID4gCXFtcF91ZnNfc2VyZGVzX2luaXQocW1wLCAmY2ZnLT50
YmxzKTsKPiA+ID4gPiAJcW1wX3Vmc19sYW5lc19pbml0KHFtcCwgJmNmZy0+dGJscyk7Cj4gPiA+
ID4gCS4uLgo+ID4gPiA+IAo+ID4gPiA+IAlpZiAoaWR4ID49IDApIHsKPiA+ID4gPiAJCXFtcF91
ZnNfc2VyZGVzX2luaXQocW1wLCAmY2ZnLT50YmxzX2hzX292ZXJsYXlbaWR4XSk7Cj4gPiA+ID4g
CQlxbXBfdWZzX2xhbmVzX2luaXQocW1wLCAmY2ZnLT50YmxzX2hzX292ZXJsYXlbaWR4XSk7Cj4g
PiA+ID4gCQkuLi4KPiA+ID4gPiAJfQo+ID4gPiA+IGBgYAo+ID4gPiA+IAo+ID4gPiA+IFNpbmNl
IHRoZSBvcmRlcmluZyBkb2Vzbid0IG1hdHRlciBmb3IgaW5pdCBzZXF1ZW5jZSwgeW91IGNhbiBw
cm9ncmFtIHRoZSBvdmVybGF5Cj4gPiA+ID4gdGFibGVzIHVuZGVyIGEgc2luZ2xlIGNvbmRpdGlv
bi4KPiA+ID4gCj4gPiA+IFdlIGNhbiBkbyB0aGF0LCBidXQgd2UgbmVlZCB0byBiZSBjYXJlZnVs
LiBXaGVuIEkgc2F5IChpbiBteSBwcmV2aW91cyByZXBseSkKPiA+ID4gdGhlIG9yZGVyaW5nIGRv
ZXMgbm90IG1hdHRlciwgdGhhdCBzYXlpbmcgaXMgZnJvbSB0aGUgVUZTIFBIWSBIUEcgZG9jLgo+
ID4gPiBIb3dldmVyLCBpbiBTVyBpbXBsZW1lbnRhdGlvbiwgdGhlICd0YmxzX2hzX2InIGlzIGFj
dHVhbGx5IG92ZXJ3cml0aW5nIG9uZQo+ID4gPiBDT01fVkNPX1RVTkVfTUFQIHJlZ2lzdGVyLCB0
aGUgc2FtZSByZWdpc3RlciBpcyBhbHNvIHByb2dyYW1tZWQgYnkgY29tbW9uCj4gPiA+IHRhYmxl
IG9yIG92ZXJsYXkgdGFibGUuIFNvIHFtcF91ZnNfc2VyZGVzX2luaXQocW1wLCAmY2ZnLT50Ymxz
X2hzX2IpIHNob3VsZAo+ID4gPiBjb21lIGFmdGVyIG92ZXJsYXlzLgo+ID4gPiAKPiA+IAo+ID4g
VGhlbiB5b3UgY2FuIHByb2dyYW0gdGJsc19oc19iIGFmdGVyIG92ZXJsYXkgdGFibGVzLiBXb3Vs
ZG4ndCB0aGF0IHdvcms/Cj4gCj4gSSBhbSBwcm9ncmFtbWluZyB0YmxzX2hzX2IgYWZ0ZXIgb3Zl
cmxheSB0YWJsZXMsIGp1c3QgYSBoZWFkcyB1cCBpbiBjYXNlIHlvdQo+IGFyZSBzdXJwcmlzZWQg
OikuCj4gCgpDb29sIQoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCu
muCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==
