Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3817DC4167B
	for <linux-phy@archiver.kernel.org>; Tue, 28 Nov 2023 06:47:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RCZbKLwocj+bybs4W7ysF4lXARNulbsmx3ydT51wr9M=; b=gX+IgoYqKbLywg
	KydmO4nUkH9WJLMAtG458hOg6L+4Q7YqU4Qe9R1TuwxMCqthQa98qStlNZ0eXDQ1PuV789ukwXTSf
	NBHE/Utjoe8U5eMeNnM7D7QsJ0z6tQK+taLDUlY1x2X4Cje7h1v56aSab7C43vuLa0iovR8GO41n8
	u/L1CElSIo098byAeobPxS+RPnDilm8EG1vMYl3J13f6GagU6eb53H1kJnjLWnEyqiawAQzycQscU
	tIFiV7wKvOGp2PRQJOTxpmJpmcTnawJDqQIAeeq0/bKVkU3VD4tWzJue8EXp0YuNJIrQpA0PZIiAi
	+KBUHX86i23LUegQIo0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7rsl-004Hzp-2y;
	Tue, 28 Nov 2023 06:47:43 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7rsj-004Hye-0k
	for linux-phy@lists.infradead.org;
	Tue, 28 Nov 2023 06:47:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 5472ECE1932;
	Tue, 28 Nov 2023 06:47:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D0489C433C7;
	Tue, 28 Nov 2023 06:47:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701154057;
	bh=OxJgD4qf34Xbg3woKklJaOmC7kHvKBOOhlmPWeA/HYs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UcAob4de27eAJnSsYkTco2tUOVxlt6u5AaClzpVwGIEQSrsj/KI4FWlQWvN6PcwG3
	 9gClQeLhzRkLfAfBIBTJLr+DilMRg6YAXNWHsDYjMG03tyu8XKkzi79NR0U2W3kV+0
	 Krm7w+iGO86EnRwIHbF3sVUACJ7gAu4viZgX4mnclQr5sZFKGDniOyTc+DVVZjyf2Q
	 oFqBoY9XRb2JY/lTwmnO0+pY7j1yzO0OV3YxqOSW3hYmGBwbBUxvc/4YobEQOjud7r
	 i3HKJX7Mj0fq1Hjh+46Z7q8cJBq20gWs0MlqtZydntZLdy3j6ocP23cYRLgSHpCQ+M
	 FE3bj5drIgN2A==
Date: Tue, 28 Nov 2023 12:17:21 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Can Guo <quic_cang@quicinc.com>
Cc: bvanassche@acm.org, adrian.hunter@intel.com, beanhuo@micron.com,
	avri.altman@wdc.com, junwoo80.lee@samsung.com,
	martin.petersen@oracle.com, linux-scsi@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	"open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>,
	open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v5 09/10] phy: qualcomm: phy-qcom-qmp-ufs: Add High Speed
 Gear 5 support for SM8550
Message-ID: <20231128064721.GJ3088@thinkpad>
References: <1700729190-17268-1-git-send-email-quic_cang@quicinc.com>
 <1700729190-17268-10-git-send-email-quic_cang@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1700729190-17268-10-git-send-email-quic_cang@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231127_224741_733195_960BA36A 
X-CRM114-Status: GOOD (  22.45  )
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

T24gVGh1LCBOb3YgMjMsIDIwMjMgYXQgMTI6NDY6MjlBTSAtMDgwMCwgQ2FuIEd1byB3cm90ZToK
PiBPbiBTTTg1NTAsIHR3byBzZXRzIG9mIFVGUyBQSFkgc2V0dGluZ3MgYXJlIHByb3ZpZGVkLCBv
bmUgc2V0IGlzIHRvIHN1cHBvcnQKPiBIUy1HNSwgYW5vdGhlciBzZXQgaXMgdG8gc3VwcG9ydCBI
Uy1HNCBhbmQgbG93ZXIgZ2VhcnMuIFRoZSB0d28gc2V0cyBvZiBQSFkKPiBzZXR0aW5ncyBhcmUg
cHJvZ3JhbW1pbmcgZGlmZmVyZW50IHZhbHVlcyB0byBkaWZmZXJlbnQgcmVnaXN0ZXJzLCBtaXhp
bmcKPiB0aGUgdHdvIHNldHMgYW5kL29yIG92ZXJ3cml0aW5nIG9uZSBzZXQgd2l0aCBhbm90aGVy
IHNldCBpcyBkZWZpbml0ZWx5IG5vdAo+IGJsZXNzZWQgYnkgVUZTIFBIWSBkZXNpZ25lcnMuCj4g
Cj4gVG8gYWRkIEhTLUc1IHN1cHBvcnQgZm9yIFNNODU1MCwgc3BsaXQgdGhlIHR3byBzZXRzIG9m
IFBIWSBzZXR0aW5ncyBpbnRvCj4gdGhlaXIgZGVkaWNhdGVkIG92ZXJsYXkgdGFibGVzLCBvbmx5
IHRoZSBjb21tb24gcGFydHMgb2YgdGhlIHR3byBzZXRzIG9mCj4gUEhZIHNldHRpbmdzIGFyZSBs
ZWZ0IGluIHRoZSAudGJscy4KPiAKPiBDb25zaWRlciB3ZSBhcmUgZ29pbmcgdG8gYWRkIGV2ZW4g
aGlnaGVyIGdlYXIgc3VwcG9ydCBpbiBmdXR1cmUsIHRvIGF2b2lkCj4gYWRkaW5nIG1vcmUgdGFi
bGVzIHdpdGggZGlmZmVyZW50IG5hbWVzLCByZW5hbWUgdGhlIC50YmxzX2hzX2c0IGFuZCBtYWtl
IGl0Cj4gYW4gYXJyYXksIGEgc2l6ZSBvZiAyIGlzIGVub3VnaCBhcyBvZiBub3cuCj4gCj4gSW4g
dGhpcyBjYXNlLCAudGJscyBhbG9uZSBpcyBub3QgYSBjb21wbGV0ZSBzZXQgb2YgUEhZIHNldHRp
bmdzLCBzbyBlaXRoZXIKPiB0YmxzX2hzX292ZXJsYXlbMF0gb3IgdGJsc19oc19vdmVybGF5WzFd
IG11c3QgYmUgYXBwbGllZCBvbiB0b3Agb2YgdGhlCj4gLnRibHMgdG8gYmVjb21lIGEgY29tcGxl
dGUgc2V0IG9mIFBIWSBzZXR0aW5ncy4KPiAKClRoYW5rcyBmb3IgdGhlIHVwZGF0ZSEgVGhpcyBy
ZWFsbHkgaGVscHMgaW4gbWluaW1pemluZyB0aGUgY2hhbmdlcyBmb3IgZnV0dXJlCmdlYXJzLgoK
PiBTaWduZWQtb2ZmLWJ5OiBDYW4gR3VvIDxxdWljX2NhbmdAcXVpY2luYy5jb20+Cj4gLS0tCj4g
IGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1wY3MtdWZzLXY2LmggICAgIHwgICAy
ICsKPiAgZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXFzZXJkZXMtY29tLXY2Lmgg
fCAgIDIgKwo+ICAuLi4vcXVhbGNvbW0vcGh5LXFjb20tcW1wLXFzZXJkZXMtdHhyeC11ZnMtdjYu
aCAgICB8ICAgOSArKwo+ICBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtdWZzLmMg
ICAgICAgICAgICB8IDE3NCArKysrKysrKysrKysrKysrKystLS0KPiAgNCBmaWxlcyBjaGFuZ2Vk
LCAxNjYgaW5zZXJ0aW9ucygrKSwgMjEgZGVsZXRpb25zKC0pCj4gCj4gIAoKWy4uLl0KCj4gLXN0
YXRpYyB2b2lkIHFtcF91ZnNfaW5pdF9yZWdpc3RlcnMoc3RydWN0IHFtcF91ZnMgKnFtcCwgY29u
c3Qgc3RydWN0IHFtcF9waHlfY2ZnICpjZmcpCj4gK3N0YXRpYyBib29sIHFtcF91ZnNfbWF0Y2hf
Z2Vhcl9vdmVybGF5KHN0cnVjdCBxbXBfdWZzICpxbXAsIGNvbnN0IHN0cnVjdCBxbXBfcGh5X2Nm
ZyAqY2ZnLCBpbnQgKmkpCj4gK3sKPiArCXUzMiBtYXhfZ2VhciwgZmxvb3JfbWF4X2dlYXIgPSBj
ZmctPm1heF9zdXBwb3J0ZWRfZ2VhcjsKPiArCWJvb2wgZm91bmQgPSBmYWxzZTsKPiArCWludCBq
Owo+ICsKPiArCWZvciAoaiA9IDA7IGogPCBOVU1fT1ZFUkxBWTsgaiArKykgewo+ICsJCW1heF9n
ZWFyID0gY2ZnLT50YmxzX2hzX292ZXJsYXlbal0ubWF4X2dlYXI7Cj4gKwo+ICsJCWlmIChtYXhf
Z2VhciA9PSAwKQoKSXMgdGhpcyBjb25kaXRpb24gcG9zc2libGUgZm9yIGhzX292ZXJsYXkgdGFi
bGVzPwoKPiArCQkJY29udGludWU7Cj4gKwo+ICsJCS8qIERpcmVjdCBtYXRjaGluZywgYmFpbCAq
Lwo+ICsJCWlmIChxbXAtPnN1Ym1vZGUgPT0gbWF4X2dlYXIpIHsKPiArCQkJKmkgPSBqOwo+ICsJ
CQlyZXR1cm4gdHJ1ZTsKPiArCQl9Cj4gKwo+ICsJCS8qIElmIG5vIGRpcmVjdCBtYXRjaGluZywg
dGhlIGxvd2VzdCBnZWFyIGlzIHRoZSBiZXN0IG1hdGNoaW5nICovCj4gKwkJaWYgKG1heF9nZWFy
IDwgZmxvb3JfbWF4X2dlYXIpIHsKCkNhbiB5b3Ugc3RhcnQgdGhlIGxvb3AgZnJvbSBtYXg/IElm
IGxvb2tzIG9kZCB0byBzZXQgdGhlIG1hdGNoaW5nIHBhcmFtcyBpbiB0aGUKZmlyc3QgaXRlcmF0
aW9uIGl0c2VsZiBhbmQgdGhlbiBjaGVja2luZyB0aGUgbmV4dCBvbmUuCgo+ICsJCQkqaSA9IGo7
Cj4gKwkJCWZvdW5kID0gdHJ1ZTsKPiArCQkJZmxvb3JfbWF4X2dlYXIgPSBtYXhfZ2VhcjsKPiAr
CQl9Cj4gKwl9Cj4gKwo+ICsJcmV0dXJuIGZvdW5kOwo+ICt9Cj4gKwo+ICtzdGF0aWMgaW50IHFt
cF91ZnNfaW5pdF9yZWdpc3RlcnMoc3RydWN0IHFtcF91ZnMgKnFtcCwgY29uc3Qgc3RydWN0IHFt
cF9waHlfY2ZnICpjZmcpCj4gIHsKPiArCWJvb2wgYXBwbHlfb3ZlcmxheTsKPiArCWludCBpOwo+
ICsKPiArCWlmIChxbXAtPnN1Ym1vZGUgPiBjZmctPm1heF9zdXBwb3J0ZWRfZ2VhciB8fCBxbXAt
PnN1Ym1vZGUgPT0gMCkgewo+ICsJCWRldl9lcnIocW1wLT5kZXYsICJJbnZhbGlkIFBIWSBzdWJt
b2RlICV1XG4iLCBxbXAtPnN1Ym1vZGUpOwo+ICsJCXJldHVybiAtRUlOVkFMOwo+ICsJfQoKVGhp
cyBjaGVjayBzaG91bGQgYmUgbW92ZWQgdG8gcW1wX3Vmc19zZXRfbW9kZSgpLgoKUmVzdCBMR1RN
LgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCu
v+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
