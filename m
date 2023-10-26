Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 455F3C25B6F
	for <linux-phy@archiver.kernel.org>; Thu, 26 Oct 2023 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bxYOBxXWp1k19rjZW4WzNWLUw0yQ47ufUhaiaPQF5PQ=; b=y3kaOzrZCRUBLd
	bw12iE8P6lIt76NJVDybz77Y0EF+ZBBGdLiX1smPhXkpLQbgv53PNlYkDoqpyXnR0NOuWz3IRO55l
	UO6xRixiiKKynZOCKIOs20ANwben1f/DTY/Z6q6IjrfQJRJ/weI2tc3gkrpba+ops5POMZmT0TSLv
	22xeNud7tLQkTPvkerURI90+75R41tN0GZBseXlwzkhsb0alnCo0XDDNAI9JdEA3xhZ++ecc2iHEK
	mz9XETs8b2n2Gs84s/E8B5gasov0AuAo0Z+QyD+UF0rL5vYMBSaLHhrEqKupvsYUWDC5JYyu66WeA
	/5X+lQmSTVWxk/en7eSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qvta0-00Dl5t-2z;
	Thu, 26 Oct 2023 06:10:52 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qvtZy-00Dl52-0a
	for linux-phy@lists.infradead.org;
	Thu, 26 Oct 2023 06:10:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 9E47FB8345A;
	Thu, 26 Oct 2023 06:10:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 95790C433C8;
	Thu, 26 Oct 2023 06:10:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698300648;
	bh=pONAWio6zJ23+IB5xTKsENcO0zHAOwL4Ssws6dVkctU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ghHdAM8Yw67mW/v49+wCyoB3v0iHYLZQt7oo4DPi4IOn1M8jHRYFzw412ERpsbPET
	 YDAI+hdjPJqAMrRujJXd061m36/S8fy3oCfbEZ1QK+qvoFcx6JtqvsVQD7KY8v7kJR
	 1q8erIOul0k8/s6sycMl3X8DWYZNv337rT7fPRWudJH4SIuE3282GFp6JccZwbn7Rj
	 /P6eiKYtVWGHcvb2PaPfa3h9Y9Pf2l+IlVCi7A/MEVbb/D1d1jHmJkMneKvFG0DPrG
	 CJG42MEzHSUmY47ykiJhzdSM78CtHIkY5WvpDvAvj2z5W3cg8teWWYFhddbpf5ct88
	 VZzKG2EE6MeTA==
Date: Thu, 26 Oct 2023 11:40:35 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Mrinmay Sarkar <quic_msarkar@quicinc.com>
Cc: Manivannan Sadhasivam <mani@kernel.org>, agross@kernel.org,
	andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, konrad.dybcio@linaro.org,
	quic_shazhuss@quicinc.com, quic_nitegupt@quicinc.com,
	quic_ramkri@quicinc.com, quic_nayiluri@quicinc.com,
	dmitry.baryshkov@linaro.org, robh@kernel.org,
	quic_krichai@quicinc.com, quic_vbadigan@quicinc.com,
	quic_parass@quicinc.com, Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, mhi@lists.linux.dev,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 2/5] PCI: qcom-ep: Add support for SA8775P SOC
Message-ID: <20231026061035.GA4915@thinkpad>
References: <1697715430-30820-1-git-send-email-quic_msarkar@quicinc.com>
 <1697715430-30820-3-git-send-email-quic_msarkar@quicinc.com>
 <20231025075317.GC3648@thinkpad>
 <adbca084-a74b-51be-67b5-a3b9e45da506@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <adbca084-a74b-51be-67b5-a3b9e45da506@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231025_231050_356072_7A9E7161 
X-CRM114-Status: GOOD (  18.99  )
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

T24gVGh1LCBPY3QgMjYsIDIwMjMgYXQgMTE6MDg6MDNBTSArMDUzMCwgTXJpbm1heSBTYXJrYXIg
d3JvdGU6Cj4gCj4gT24gMTAvMjUvMjAyMyAxOjIzIFBNLCBNYW5pdmFubmFuIFNhZGhhc2l2YW0g
d3JvdGU6Cj4gPiBPbiBUaHUsIE9jdCAxOSwgMjAyMyBhdCAwNTowNzowN1BNICswNTMwLCBNcmlu
bWF5IFNhcmthciB3cm90ZToKPiA+ID4gQWRkIHN1cHBvcnQgZm9yIFNBODc3NVAgU29DIHRvIHRo
ZSBRdWFsY29tbSBQQ0llIEVuZHBvaW50IENvbnRyb2xsZXIKPiA+ID4gZHJpdmVyLiBUaGVyZSB3
aWxsIGJlIHNvbWUgY2hhbmdlIHNwZWNpZmljIHRvIFNBODc3NVAgc28gYWRkaW5nIG5ldwo+ID4g
PiBjb21wYXRpYmxlIHN0cmluZy4KPiA+ID4gCj4gPiBXaGF0IGFyZSB0aG9zZSBzcGVjaWZpYyBj
aGFuZ2VzPwo+ID4gCj4gPiAtIE1hbmkKPiAKPiBOZWVkIHRvIGVuYWJsZSBjYWNoZSBzbm9vcGlu
ZyBsb2dpYyBmb3IgU0E4Nzc1UCBvbmx5Lgo+IAoKVGhlbiB5b3UgY2FuIGFkZCB0aGUgY29tcGF0
aWJsZSB0byB0aGUgZHJpdmVyIGF0IHRoYXQgdGltZSBhbmQgdXNlIHRoZSBmYWxsYmFjawp0aWxs
IHRoZW4gaS5lLiwganVzdCBkb2N1bWVudCB0aGUgU0E4Nzc1UCBjb21wYXRpYmxlIGluIGJpbmRp
bmdzIGFuZCB1c2UgYm90aApTQTg3NzVQIGFuZCBTTTg0NTAgY29tcGF0aWJsZXMgaW4gdGhlIGR0
cyB3aGVyZSB0aGUgbGF0dGVyIHdpbGwgYWN0IGFzIGEKZmFsbGJhY2suCgotIE1hbmkKCj4gLS1N
cmlubWF5Cj4gCj4gPiA+IFNpZ25lZC1vZmYtYnk6IE1yaW5tYXkgU2Fya2FyIDxxdWljX21zYXJr
YXJAcXVpY2luYy5jb20+Cj4gPiA+IC0tLQo+ID4gPiAgIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIv
ZHdjL3BjaWUtcWNvbS1lcC5jIHwgMSArCj4gPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspCj4gPiA+IAo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9k
d2MvcGNpZS1xY29tLWVwLmMgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLXFjb20t
ZXAuYwo+ID4gPiBpbmRleCAzMmM4ZDllLi40YzAxYzM0IDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2
ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLXFjb20tZXAuYwo+ID4gPiArKysgYi9kcml2ZXJz
L3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLXFjb20tZXAuYwo+ID4gPiBAQCAtODU4LDYgKzg1OCw3
IEBAIHN0YXRpYyB2b2lkIHFjb21fcGNpZV9lcF9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2Rldmlj
ZSAqcGRldikKPiA+ID4gICB9Cj4gPiA+ICAgc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2Vf
aWQgcWNvbV9wY2llX2VwX21hdGNoW10gPSB7Cj4gPiA+ICsJeyAuY29tcGF0aWJsZSA9ICJxY29t
LHNhODc3NXAtcGNpZS1lcCIsIH0sCj4gPiA+ICAgCXsgLmNvbXBhdGlibGUgPSAicWNvbSxzZHg1
NS1wY2llLWVwIiwgfSwKPiA+ID4gICAJeyAuY29tcGF0aWJsZSA9ICJxY29tLHNtODQ1MC1wY2ll
LWVwIiwgfSwKPiA+ID4gICAJeyB9Cj4gPiA+IC0tIAo+ID4gPiAyLjcuNAo+ID4gPiAKCi0tIArg
rq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
