Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95B81CA0FE8
	for <linux-phy@archiver.kernel.org>; Fri, 22 Aug 2025 15:34:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r9Ok7shJGpbSSqkqp+TZ+eGFWij2BVDGs4hLgdm023Q=; b=4C0FDbs0qnaIT/
	uRVQ8+AvFCe34zkE229qF9yxZEHxamdKsfhrcOZ9ufZrk1yxHfBEVTo8Mdd2KSNL9nxnGitm0JSOG
	H0Vc+yckp56m3ofSOycdajVPjRCtfz3EBF/0CDnKThb+v7+8+kmWZFfPQu3sd8ACRFpsp7tznssl0
	XaDcuWJNFXYTyv56fB/mgT+gHotruLvR9l/DF73PSijw9QpWYzhuH7qiLFbjiCzmGiDMXRyrB0ksE
	uqnsvJB4T3T3RRvx+fj4XvLZEfO/6KsoTzC+IdAe0NriYyeFgzTq915NJgaRJktnCDwXYPXHOoapq
	UDo3cbzosjsY0sJpG13w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upTn1-000000032so-0gKO;
	Fri, 22 Aug 2025 15:34:51 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upNXF-00000001zYS-2zsi
	for linux-phy@lists.infradead.org;
	Fri, 22 Aug 2025 08:54:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 0644FA588BD;
	Fri, 22 Aug 2025 08:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B7F7BC4CEF1;
	Fri, 22 Aug 2025 08:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755852848;
	bh=1Kedd5nrOXuqAb/MAHK84Atl2vdOv9kO06NAwi1B5WQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=F240bS+X1iIQcVx+R2bCIVfkVa0pseohmnJkOicqQVt8EvB8jijjBLohl33+Ke0A9
	 9lg7HeMnud+kWU8NoZPSu0ZExjDq5D9SHMQkP4GZrTEVWQw9iwLSEG/7XrR2cQHR9a
	 P/b7mWA9rti9ZbUJ/PxxEZ3ZZFpNpbyDH6cU9K79qj4PopluUFQ5F72RerZMh7Sck0
	 9GdPif3rw5fpLR9J46CuyVom+rcs4ULm/Zu8qQhYBvSPs6w8/ZrMcrnBNkW3wa0h5m
	 gtVh2lrD7JpO+RbveFr07IadQo8eC+JAvL0qTCIrQ8RIg4vQmVttURCVWFAHYUbxj1
	 g7v+/KWLZkurg==
Date: Fri, 22 Aug 2025 14:23:57 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Nitin Rawat <quic_nitirawa@quicinc.com>, vkoul@kernel.org, 
	kishon@kernel.org, andersson@kernel.org, konradybcio@kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH V3 2/2] phy: qcom-qmp-ufs: Add regulator loads for SM8650
 and SM8750
Message-ID: <xir3u3hlmcvfu6uasijz6g2oialoasmuu4bno6ctxpscqcebz6@6kw6xpm5bxbd>
References: <20250819222832.8471-1-quic_nitirawa@quicinc.com>
 <20250819222832.8471-3-quic_nitirawa@quicinc.com>
 <ger4kizeltjwalfuwu4dpfjiskrv2okgo5c7d6n3pb24yaxgfo@nkcndblyx3il>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ger4kizeltjwalfuwu4dpfjiskrv2okgo5c7d6n3pb24yaxgfo@nkcndblyx3il>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250822_015409_897408_D59EB45B 
X-CRM114-Status: GOOD (  22.57  )
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

T24gV2VkLCBBdWcgMjAsIDIwMjUgYXQgMDM6NDk6MzFBTSBHTVQsIERtaXRyeSBCYXJ5c2hrb3Yg
d3JvdGU6Cj4gT24gV2VkLCBBdWcgMjAsIDIwMjUgYXQgMDM6NTg6MjZBTSArMDUzMCwgTml0aW4g
UmF3YXQgd3JvdGU6Cj4gPiBBZGQgcmVndWxhdG9yIGxvYWQgdm90aW5nIHN1cHBvcnQgZm9yIFNN
ODY1MCBhbmQgU004NzUwIHBsYXRmb3JtcyBieQo+ID4gaW50cm9kdWNpbmcgZGVkaWNhdGVkIHJl
Z3VsYXRvciBidWxrIGRhdGEgYXJyYXlzIHdpdGggdGhlaXIgbG9hZAo+ID4gdmFsdWVzLgo+ID4g
Cj4gPiBUaGUgbG9hZCByZXF1aXJlbWVudHMgYXJlOgo+ID4gLSBTTTg2NTA6IHZkZGEtcGh5ICgy
MDVtQSksIHZkZGEtcGxsICgxNy41bUEpCj4gPiAtIFNNODc1MDogdmRkYS1waHkgKDIxM21BKSwg
dmRkYS1wbGwgKDE4LjNtQSkKPiA+IAo+ID4gVGhpcyBlbnN1cmVzIHN0YWJsZSBvcGVyYXRpb24g
YW5kIHByb3BlciBwb3dlciBtYW5hZ2VtZW50IGZvciB0aGVzZQo+ID4gcGxhdGZvcm1zIHdoZXJl
IHJlZ3VsYXRvcnMgYXJlIHNoYXJlZCBiZXR3ZWVuIHRoZSBRTVAgVVNCIFBIWSBhbmQKPiA+IG90
aGVyIElQIGJsb2NrcyBieSBzZXR0aW5nIGFwcHJvcHJpYXRlIHJlZ3VsYXRvciBsb2FkIGN1cnJl
bnRzIGR1cmluZyBQSFkKPiA+IG9wZXJhdGlvbnMuCj4gPiAKPiA+IENvbmZpZ3VyYXRpb25zIHdp
dGhvdXQgc3BlY2lmaWMgbG9hZCByZXF1aXJlbWVudHMgd2lsbCBjb250aW51ZSB0byB3b3JrCj4g
PiB1bmNoYW5nZWQsIGFzIGluaXRfbG9hZF91QSByZW1haW5zIHplcm8taW5pdGlhbGl6ZWQgd2hl
biAuaW5pdF9sb2FkX3VBCj4gPiBpcyBub3QgcHJvdmlkZWQuCj4gCj4gQ2FuIHdlIHBsZWFzZSBn
ZXQgY29uZmlndXJhdGlvbiBmb3IgdGhlIHJlc3Qgb2YgdGhlIHBsYXRmb3Jtcz8KPiAKCk9ubHkg
aWYgdGhlIHJlc3Qgb2YgdGhlIHBsYXRmb3JtcyByZXF1aXJlIHNldHRpbmcgdGhlIGxvYWQuLi4g
SXQgaXMgbm90IHZlcnkKY2xlYXIgaWYgdGhlIG9sZGVyIHBsYXRmb3JtcyBzaGFyZSB0aGUgcmVn
dWxhdG9ycyB3aXRoIG90aGVyIElQcyBvciBub3QuCgotIE1hbmkKCj4gPiAKPiA+IFNpZ25lZC1v
ZmYtYnk6IE5pdGluIFJhd2F0IDxxdWljX25pdGlyYXdhQHF1aWNpbmMuY29tPgo+ID4gLS0tCj4g
PiAgZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVmcy5jIHwgMTkgKysrKysrKysr
KysrKysrLS0tLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspLCA0IGRlbGV0
aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFj
b20tcW1wLXVmcy5jIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVmcy5jCj4g
PiBpbmRleCBhYWE4OGNhMGVmMDcuLjFjM2NlMGZhNmFkZiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZl
cnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC11ZnMuYwo+ID4gKysrIGIvZHJpdmVycy9waHkv
cXVhbGNvbW0vcGh5LXFjb20tcW1wLXVmcy5jCj4gPiBAQCAtMTE3MCw2ICsxMTcwLDE3IEBAIHN0
YXRpYyBjb25zdCBzdHJ1Y3QgcmVndWxhdG9yX2J1bGtfZGF0YSBxbXBfcGh5X3ZyZWdfbFtdID0g
ewo+ID4gIAl7IC5zdXBwbHkgPSAidmRkYS1wbGwiIH0sCj4gPiAgfTsKPiA+IAo+ID4gKy8qIFJl
Z3VsYXRvciBidWxrIGRhdGEgd2l0aCBsb2FkIHZhbHVlcyBmb3Igc3BlY2lmaWMgY29uZmlndXJh
dGlvbnMgKi8KPiA+ICtzdGF0aWMgY29uc3Qgc3RydWN0IHJlZ3VsYXRvcl9idWxrX2RhdGEgc204
NjUwX3Vmc3BoeV92cmVnX2xbXSA9IHsKPiA+ICsJeyAuc3VwcGx5ID0gInZkZGEtcGh5IiwgLmlu
aXRfbG9hZF91QSA9IDIwNTAwMCB9LAo+ID4gKwl7IC5zdXBwbHkgPSAidmRkYS1wbGwiLCAuaW5p
dF9sb2FkX3VBID0gMTc1MDAgfSwKPiA+ICt9Owo+ID4gKwo+ID4gK3N0YXRpYyBjb25zdCBzdHJ1
Y3QgcmVndWxhdG9yX2J1bGtfZGF0YSBzbTg3NTBfdWZzcGh5X3ZyZWdfbFtdID0gewo+ID4gKwl7
IC5zdXBwbHkgPSAidmRkYS1waHkiLCAuaW5pdF9sb2FkX3VBID0gMjEzMDAwIH0sCj4gPiArCXsg
LnN1cHBseSA9ICJ2ZGRhLXBsbCIsIC5pbml0X2xvYWRfdUEgPSAxODMwMCB9LAo+ID4gK307Cj4g
PiArCj4gPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBxbXBfdWZzX29mZnNldHMgcW1wX3Vmc19vZmZz
ZXRzID0gewo+ID4gIAkuc2VyZGVzCQk9IDAsCj4gPiAgCS5wY3MJCT0gMHhjMDAsCj4gPiBAQCAt
MTYzOCw4ICsxNjQ5LDggQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBxbXBfcGh5X2NmZyBzbTg2NTBf
dWZzcGh5X2NmZyA9IHsKPiA+ICAJCS5tYXhfZ2Vhcgk9IFVGU19IU19HNSwKPiA+ICAJfSwKPiA+
IAo+ID4gLQkudnJlZ19saXN0CQk9IHFtcF9waHlfdnJlZ19sLAo+ID4gLQkubnVtX3ZyZWdzCQk9
IEFSUkFZX1NJWkUocW1wX3BoeV92cmVnX2wpLAo+ID4gKwkudnJlZ19saXN0CQk9IHNtODY1MF91
ZnNwaHlfdnJlZ19sLAo+ID4gKwkubnVtX3ZyZWdzCQk9IEFSUkFZX1NJWkUoc204NjUwX3Vmc3Bo
eV92cmVnX2wpLAo+ID4gIAkucmVncwkJCT0gdWZzcGh5X3Y2X3JlZ3NfbGF5b3V0LAo+ID4gIH07
Cj4gPiAKPiA+IEBAIC0xNjc2LDggKzE2ODcsOCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHFtcF9w
aHlfY2ZnIHNtODc1MF91ZnNwaHlfY2ZnID0gewo+ID4gIAkJLm1heF9nZWFyCT0gVUZTX0hTX0c1
LAo+ID4gIAl9LAo+ID4gCj4gPiAtCS52cmVnX2xpc3QJCT0gcW1wX3BoeV92cmVnX2wsCj4gPiAt
CS5udW1fdnJlZ3MJCT0gQVJSQVlfU0laRShxbXBfcGh5X3ZyZWdfbCksCj4gPiArCS52cmVnX2xp
c3QJCT0gc204NzUwX3Vmc3BoeV92cmVnX2wsCj4gPiArCS5udW1fdnJlZ3MJCT0gQVJSQVlfU0la
RShzbTg3NTBfdWZzcGh5X3ZyZWdfbCksCj4gPiAgCS5yZWdzCQkJPSB1ZnNwaHlfdjZfcmVnc19s
YXlvdXQsCj4gPiAKPiA+ICB9Owo+ID4gLS0KPiA+IDIuNDguMQo+ID4gCj4gCj4gLS0gCj4gV2l0
aCBiZXN0IHdpc2hlcwo+IERtaXRyeQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDg
rprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
