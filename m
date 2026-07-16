Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55A11C4450A
	for <linux-phy@archiver.kernel.org>; Thu, 16 Jul 2026 22:24:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=npXoY14mC8jbYRkQoSZNeyPJnv4UDLupn+5zmtkHfcw=; b=eei39xV/GVYOyu
	op6yfahDo5bWkNjhaaIzWVzTOZWccOISGlb8qYy4H21yqyDZI/rGVzp/JvLcG2IqdmJnJ2XHfQymO
	CkFBK+AargEp1EDoKH2sXj7aO7pjunYfwIz19+XLFnNn6ddq/Y544641i6bp5dOBYNOxWIcBP7fBO
	n39RrFGJROjtkayaYyWUYmgJi8d0ovXMjDMJCjgCpXVjDfX4L7qg4O1desCwDxfExNZQNJQn/SfNG
	spj7PWKIHctirvhpQz9FTHO9ULMIoK8te43aQwXgCphqx9QRQp23M11Amen9j3QXCGx+eKl/pTZtw
	EMQjtIiSoEnwwYIdVEZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkUVJ-00000000iv9-1rsf;
	Thu, 16 Jul 2026 22:24:29 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkUVH-00000000iun-49xr
	for linux-phy@lists.infradead.org;
	Thu, 16 Jul 2026 22:24:28 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 1F97960A5E;
	Thu, 16 Jul 2026 22:24:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A8101F000E9;
	Thu, 16 Jul 2026 22:24:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784240666;
	bh=/+NvX2/Fb6xwHEeCJzTwLlDgbG9mrnv9yhPtueJEDmQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=M0FDocIli63vuwRG1TOlABKtZgKDxCoj2aMwEwbXbq81dBWaRLZZbrgyf88smeMTj
	 SO/PgiyheY+r13FxxkBrQXRqno6LepBLcMeoXydyL00rNU/oz/HIH6ApQNoqOOrrQS
	 BiwXi+6k0TOQxKSqe04tJB0BgaLqsBcziGWUJRhcWFvlRHBlew+CZ95XJ8B1PmeSO7
	 UdwaSFlU+QdJgQvYiYibRCVipL6zkU9jR+BWGi/XiJywceIDILat7kRDIuV9CQ9y2o
	 2EN4QVVxO/sBFBi3W9stuSLOGUxWA04yB/rRNVCgl7MX/wvMtIS+0OhTxzdb2jZihV
	 KWgW1YBnhv73A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 05/13] mfd: zx297520v3: Add a clock and reset MFD
 driver
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: olteanv@gmail.com, neil.armstrong@linaro.org, devicetree@vger.kernel.org, robh@kernel.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, vkoul@kernel.org
In-Reply-To: <20260717-zx29clk-v7-5-408411cfcf36@gmail.com>
References: <20260717-zx29clk-v7-0-408411cfcf36@gmail.com>
 <20260717-zx29clk-v7-5-408411cfcf36@gmail.com>
Date: Thu, 16 Jul 2026 22:24:25 +0000
Message-Id: <20260716222426.5A8101F000E9@smtp.kernel.org>
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
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MyBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIENvbXBsZXggcGxhdGZv
cm0gZGF0YSBzdHJ1Y3R1cmVzIChgbWZkX2NlbGxgIGFycmF5cykgYXJlIHBhc3NlZCBkaXJlY3Rs
eSB0aHJvdWdoIHRoZSBgLmRhdGFgIGZpZWxkIG9mIHRoZSBgb2ZfZGV2aWNlX2lkYCBtYXRjaCB0
YWJsZS4KLSBbTWVkaXVtXSBUaGUgTUZEIGNvcmUgZHJpdmVyIGlzIGluY29ycmVjdGx5IGxvY2F0
ZWQgaW4gYGRyaXZlcnMvc29jL3p0ZS9gIGluc3RlYWQgb2YgYGRyaXZlcnMvbWZkL2AuCi0gW01l
ZGl1bV0gVGhlIGRyaXZlciB1c2VzIGBQTEFURk9STV9ERVZJRF9OT05FYCBpbnN0ZWFkIG9mIGBQ
TEFURk9STV9ERVZJRF9BVVRPYCBmb3Igc3ViZGV2aWNlIGluZGV4aW5nLgotLQoKLS0tIFBhdGNo
IFs1XTogW1BBVENIIHY3IDA1LzEzXSBtZmQ6IHp4Mjk3NTIwdjM6IEFkZCBhIGNsb2NrIGFuZCBy
ZXNldCBNRkQgZHJpdmVyIC0tLQpjb21taXQgMDQwYzQzZDE4Zjg5NDI2OWI3N2Q4NzA5MWY4NGNk
NWFkNmI5NzU1ZApBdXRob3I6IFN0ZWZhbiBEw7ZzaW5nZXIgPHN0ZWZhbmRvZXNpbmdlckBnbWFp
bC5jb20+CgptZmQ6IHp4Mjk3NTIwdjM6IEFkZCBhIGNsb2NrIGFuZCByZXNldCBNRkQgZHJpdmVy
CgpUaGlzIGRyaXZlciByZWdpc3RlcnMgY2hpbGQgZGV2aWNlcyBmb3IgdGhlIHp4Mjk3NTIwdjMg
Y2xvY2sgYW5kIHJlc2V0CmNvbnRyb2xsZXJzLiBUaGUgY2xrLXp4Mjk3NTIwdjMgYW5kIHJlc2V0
LXp0ZS16eDI5NzUyMHYzIHN1Ym1pdHRlZCBpbgp0aGUgbmV4dCBwYXRjaGVzIHdpbGwgZHJpdmUg
dGhlIHJlc3BlY3RpdmUgZnVuY3Rpb25hbGl0aWVzLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9z
b2MvenRlL01ha2VmaWxlIGIvZHJpdmVycy9zb2MvenRlL01ha2VmaWxlCj4gbmV3IGZpbGUgbW9k
ZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAwLi4wOTBiYThhYTA2YzFlCj4gLS0tIC9kZXYv
bnVsbAo+ICsrKyBiL2RyaXZlcnMvc29jL3p0ZS9NYWtlZmlsZQo+IEBAIC0wLDAgKzEsMyBAQAo+
ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkKPiArCj4gK29iai0kKENP
TkZJR19aVEVfWlgyOTc1MjBWM19DUk0pICs9IHp4Mjk3NTIwdjMtY3JtLm8KCltTZXZlcml0eTog
TWVkaXVtXQpTaW5jZSB0aGlzIGRyaXZlciB1dGlsaXplcyB0aGUgZGV2bV9tZmRfYWRkX2Rldmlj
ZXMoKSBBUEkgYW5kIHJlZ2lzdGVycwptdWx0aXBsZSBjaGlsZCBkZXZpY2VzLCBzaG91bGQgaXQg
YmUgbG9jYXRlZCBpbiBkcml2ZXJzL21mZC8gaW5zdGVhZCBvZgpkcml2ZXJzL3NvYy96dGUvPwoK
VGhlIE1GRCBndWlkZWxpbmVzIHN0YXRlIHRoYXQgcGxhY2luZyBNRkQgY29yZSBkcml2ZXJzIG91
dHNpZGUgb2YgZHJpdmVycy9tZmQvCnZpb2xhdGVzIHN1YnN5c3RlbSBsYXllcmluZyBhbmQgYnlw
YXNzZXMgcHJvcGVyIHN1YnN5c3RlbSBtYWludGFpbmVyIHJldmlldy4KClsgLi4uIF0KCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvc29jL3p0ZS96eDI5NzUyMHYzLWNybS5jIGIvZHJpdmVycy9zb2Mv
enRlL3p4Mjk3NTIwdjMtY3JtLmMKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAw
MDAwMDAwMDAuLjhiODJjY2JhNGU5MGQKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvZHJpdmVycy9z
b2MvenRlL3p4Mjk3NTIwdjMtY3JtLmMKClsgLi4uIF0KCj4gK3N0YXRpYyBpbnQgengyOTc1MjB2
M19jcm1fcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiArewo+ICsJY29uc3Qg
c3RydWN0IHp4Mjk3NTIwdjNfY3JtX2RhdGEgKmRhdGE7Cj4gKwo+ICsJZGF0YSA9IG9mX2Rldmlj
ZV9nZXRfbWF0Y2hfZGF0YSgmcGRldi0+ZGV2KTsKPiArCWlmICghZGF0YSkKPiArCQlyZXR1cm4g
LUVOT0RFVjsKPiArCj4gKwlyZXR1cm4gZGV2bV9tZmRfYWRkX2RldmljZXMoJnBkZXYtPmRldiwg
UExBVEZPUk1fREVWSURfTk9ORSwgZGF0YS0+Y2VsbHMsCgpbU2V2ZXJpdHk6IE1lZGl1bV0KSXMg
aXQgaW50ZW50aW9uYWwgdG8gdXNlIFBMQVRGT1JNX0RFVklEX05PTkUgaGVyZT8KClRoZSBNRkQg
c3Vic3lzdGVtIGd1aWRlbGluZXMgcHJlZmVyIHVzaW5nIFBMQVRGT1JNX0RFVklEX0FVVE8gZm9y
IHN1YmRldmljZQppbmRleGluZyB0byBhdm9pZCBzeXNmcyBkZXZpY2UgbmFtaW5nIGNvbGxpc2lv
bnMgYW5kIGRyaXZlciBsb2FkIGZhaWx1cmVzLgoKPiArCQkJCSAgICBkYXRhLT5udW1fY2VsbHMs
IE5VTEwsIDAsIE5VTEwpOwo+ICt9Cj4gKwo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2Rldmlj
ZV9pZCBvZl9tYXRjaF96eDI5NzUyMHYzX2NybVtdID0gewo+ICsJeyAuY29tcGF0aWJsZSA9ICJ6
dGUsengyOTc1MjB2My10b3Bjcm0iLCAuZGF0YSA9ICZ6eDI5NzUyMHYzX3RvcGNybV9kYXRhIH0s
CgpbU2V2ZXJpdHk6IEhpZ2hdCkRvZXMgcGFzc2luZyBjb21wbGV4IHBsYXRmb3JtIGRhdGEgc3Ry
dWN0dXJlcyAobGlrZSB0aGUgbWZkX2NlbGwgYXJyYXkgaW5zaWRlCnp4Mjk3NTIwdjNfdG9wY3Jt
X2RhdGEpIGRpcmVjdGx5IHRocm91Z2ggdGhlIC5kYXRhIGZpZWxkIG9mIHRoZSBvZl9kZXZpY2Vf
aWQKbWF0Y2ggdGFibGUgcG9zZSBhIG1lbW9yeSBzYWZldHkgaGF6YXJkIGFuZCBsZWFkIHRvIGlu
aXRpYWxpemF0aW9uIG9yZGVyaW5nCnJhY2VzPwoKVGhlIE1GRCBndWlkZWxpbmVzIHN1Z2dlc3Qg
c3RvcmluZyBhbiBpbnRlZ2VyIElEIG9yIGVudW0gaW4gdGhlIG1hdGNoIHRhYmxlJ3MKLmRhdGEg
ZmllbGQsIGFuZCB1c2luZyBhIHN3aXRjaCBzdGF0ZW1lbnQgaW4gengyOTc1MjB2M19jcm1fcHJv
YmUoKSB0byBzZWxlY3QKdGhlIGNvcnJlY3Qgc3RhdGljIGNvbnN0IG1mZF9jZWxsIGFycmF5LgoK
PiArCXsgLmNvbXBhdGlibGUgPSAienRlLHp4Mjk3NTIwdjMtbWF0cml4Y3JtIiwgLmRhdGEgPSAm
engyOTc1MjB2M19tYXRyaXhjcm1fZGF0YSB9LAo+ICsJeyAuY29tcGF0aWJsZSA9ICJ6dGUsengy
OTc1MjB2My1sc3Bjcm0iLCAuZGF0YSA9ICZ6eDI5NzUyMHYzX2xzcGNybV9kYXRhIH0sCj4gKwl7
IH0KPiArfTsKCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMv
cGF0Y2hzZXQvMjAyNjA3MTctengyOWNsay12Ny0wLTQwODQxMWNmY2YzNkBnbWFpbC5jb20/cGFy
dD01CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK
