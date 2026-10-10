Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7321CA9EBE
	for <linux-phy@archiver.kernel.org>; Sat, 10 Oct 2026 12:02:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v48Xv8YCNk/2p8qZ7bh8e0JHNALu1esIOegDMioCAcQ=; b=RFPAvMGYXMyoOm
	hr+UGTtXuyK2zFWtkNwKKKJXLBe+7ZFVjsfBnxDB1PzcFK4z5h0o9M60b5toX8CL+/uj4kXZh90W/
	djNkhN4A7nMwShOpkKNL2gBSKxfH+MOZ3f1dE7pwyverj7dgLUF8ws2zVu/jvbjXSrQZJ/zVDV+Ev
	D5tg1uIIn9p/ECZgXrcpOBnNreidP6sA0+w9xpAmDgmCpAJYeVAMMObHTbmi626+8NnkFkTYLhB6g
	K/rXvA8jlI++/VOY1Bfn1mr2jFmjGmbkXPZ6hmT+0+zo/SJivY7a/CgkkXo59EvdggpvIRQ6aT6dh
	nzYhRkAPptlQ1i/zeXYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFVmt-00000007zgx-2AUW;
	Sat, 10 Oct 2026 12:02:51 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFVms-00000007zgk-0W7i
	for linux-phy@lists.infradead.org;
	Sat, 10 Oct 2026 12:02:50 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 612AB40E4B;
	Sat, 10 Oct 2026 12:02:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A26D31F000FF;
	Sat, 10 Oct 2026 12:02:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791633769;
	bh=WWuAeY5/fYrpvuYh4URg2y3Lj8NDhWWudUAt32JOsos=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=cCcUlRMYHCk/Nf4MSx5xtb2aM4ZADdgWapVNcUK2pRDrC2DBhd35hp/km9su+53DB
	 a76deN13lJzYT6CqdZ5kzf/rznhOLR++Dbqml22l3pH9SKKR6LJT4Lh7KWYrs8qNLe
	 4cn5jcZFbw8rH6Ud+vtEEI4Y1jAWP0PILBW2oSs/OUdddf6mG8sNZ6KGlMXRbMbXqp
	 HzjzFYdVJrKGDLvPcBW3X4M2vtK1YQNiaVl37QPzDkcyrG1g3O0QO/+JYq740Q4ezz
	 DC7lon5R4xMYtR2IJbDmTTz5yDE1ZgOGv4YBKh7hP4MkVCtKwKfcrMrVk/atn+YxAy
	 eI1reby6dS9VA==
Message-ID: <sashiko-outbox-166483@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/7] clk: mediatek: mt8167: Map apmixedsys iomem as
 shared
To: "Luca Leonardo Scorcia" <l.scorcia@gmail.com>
Cc: robh@kernel.org, vkoul@kernel.org, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, linux-clk@vger.kernel.org, conor+dt@kernel.org, olteanv@gmail.com
In-Reply-To: <20261010115539.9237-4-l.scorcia@gmail.com>
References: <20261010115539.9237-1-l.scorcia@gmail.com>
 <20261010115539.9237-4-l.scorcia@gmail.com>
Date: Sat, 10 Oct 2026 12:02:48 +0000
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
MyBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIGNsazogbWVkaWF0ZWs6
IElTX0VSUigpIHVzZWQgdG8gY2hlY2sgb2ZfaW9tYXAoKSByZXR1cm4gdmFsdWUgaW5zdGVhZCBv
ZiBOVUxMIGNoZWNrCi0gW0hpZ2hdIGNsazogbWVkaWF0ZWs6IG1pc3NpbmcgcGxhdGZvcm1fc2V0
X2RydmRhdGEoKSBjYXVzZXMgc2lsZW50IGZhaWx1cmUgaW4gcmVtb3ZlKCkKLSBbTWVkaXVtXSBj
bGs6IG1lZGlhdGVrOiBtaXNzaW5nIGlvdW5tYXAoKSBmb3IgZHJpdmVyIGJhc2UgbWFwcGluZyBp
biByZW1vdmUoKQotLQoKY29tbWl0IDg0N2ViNTFkNDA2YTc3Y2RhNWU3Mzg3ZjU1NzQyMTI5NzMz
ZWM3YjYKQXV0aG9yOiBMdWNhIExlb25hcmRvIFNjb3JjaWEgPGwuc2NvcmNpYUBnbWFpbC5jb20+
CgpjbGs6IG1lZGlhdGVrOiBtdDgxNjc6IE1hcCBhcG1peGVkc3lzIGlvbWVtIGFzIHNoYXJlZAoK
VGhlIGhkbWlfcGh5IGZvciBtdDgxNjcgYW5kIHRoZSBhcG1peGVkc3lzIGNsb2NrcyBzaGFyZSB0
aGUgc2FtZSBJTwptZW1vcnkgcmVnaW9uIGFuZCB0aGV5IGJvdGggbWFwIGl0IHVzaW5nIGRldm1f
cGxhdGZvcm1faW9yZW1hcF9yZXNvdXJjZSwKd2hpY2ggaW1wbGllcyBleGNsdXNpdmUgYWNjZXNz
LiBTd2l0Y2ggdGhlIGFwbWl4ZWRzeXMgZHJpdmVyIHRvIG9mX2lvbWFwLApsaWtlIGl0IGlzIGRv
bmUgaW4gdGhlIG10ODE3My1hcG1peGVkc3lzIGRyaXZlci4gQWxzbywgaW1wbGVtZW50IHRoZQpy
ZW1vdmUgZnVuY3Rpb24gd2hpbGUgd2UncmUgYXQgaXQuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2Nsay9tZWRpYXRlay9jbGstbXQ4MTY3LWFwbWl4ZWRzeXMuYyBiL2RyaXZlcnMvY2xrL21lZGlh
dGVrL2Nsay1tdDgxNjctYXBtaXhlZHN5cy5jCj4gaW5kZXggZmI2YzIxYmJlZWY4MS4uM2U4NjEx
OTkxZGU3OCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2Nsay9tZWRpYXRlay9jbGstbXQ4MTY3LWFw
bWl4ZWRzeXMuYwo+ICsrKyBiL2RyaXZlcnMvY2xrL21lZGlhdGVrL2Nsay1tdDgxNjctYXBtaXhl
ZHN5cy5jClsgLi4uIF0KPiBAQCAtOTcsMTcgKzk4LDE5IEBAIHN0YXRpYyBpbnQgY2xrX210ODE2
N19hcG1peGVkX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIAlzdHJ1Y3Qg
ZGV2aWNlICpkZXYgPSAmcGRldi0+ZGV2Owo+ICAJaW50IHJldDsKPiAgCj4gLQliYXNlID0gZGV2
bV9wbGF0Zm9ybV9pb3JlbWFwX3Jlc291cmNlKHBkZXYsIDApOwo+ICsJYmFzZSA9IG9mX2lvbWFw
KG5vZGUsIDApOwo+ICAJaWYgKElTX0VSUihiYXNlKSkKCltTZXZlcml0eTogSGlnaF0KRG9lcyB0
aGlzIGNvZGUgaGFuZGxlIHRoZSBvZl9pb21hcCgpIHJldHVybiB2YWx1ZSBjb3JyZWN0bHk/IG9m
X2lvbWFwKCkKcmV0dXJucyBOVUxMIG9uIGZhaWx1cmUsIHJhdGhlciB0aGFuIGFuIEVSUl9QVFIu
IElmIGl0IGZhaWxzLCBiYXNlIHdpbGwgYmUKTlVMTCwgd2hpY2ggYnlwYXNzZXMgdGhpcyBlcnJv
ciBjaGVjayBhbmQgcHJvcGFnYXRlcyB0byB0aGUgcmVnaXN0ZXIKZnVuY3Rpb25zLgoKPiAgCQly
ZXR1cm4gUFRSX0VSUihiYXNlKTsKPiAgCj4gIAljbGtfZGF0YSA9IG10a19kZXZtX2FsbG9jX2Ns
a19kYXRhKGRldiwgTVQ4MTY3X0NMS19BUE1JWEVEX05SX0NMSyk7Cj4gLQlpZiAoIWNsa19kYXRh
KQo+IC0JCXJldHVybiAtRU5PTUVNOwo+ICsJaWYgKElTX0VSUl9PUl9OVUxMKGNsa19kYXRhKSkg
ewoKW1NldmVyaXR5OiBIaWdoXQpEb2VzIHRoaXMgY29kZSBuZWVkIHRvIHNhdmUgY2xrX2RhdGEg
dG8gdGhlIGRldmljZSdzIGRyaXZlciBkYXRhPyBJdCBsb29rcwpsaWtlIGNsa19tdDgxNjdfYXBt
aXhlZF9wcm9iZSgpIGFsbG9jYXRlcyBjbGtfZGF0YSBidXQgbmV2ZXIgY2FsbHMKcGxhdGZvcm1f
c2V0X2RydmRhdGEoKSB0byBzdG9yZSBpdCBiZWZvcmUgcmV0dXJuaW5nLgoKPiArCQlyZXQgPSAt
RU5PTUVNOwo+ICsJCWdvdG8gdW5tYXBfaW87Cj4gKwl9ClsgLi4uIF0KPiBAQCAtMTI0LDEwICsx
MjcsMjIgQEAgc3RhdGljIGludCBjbGtfbXQ4MTY3X2FwbWl4ZWRfcHJvYmUoc3RydWN0IHBsYXRm
b3JtX2RldmljZSAqcGRldikKPiAgCW10a19jbGtfdW5yZWdpc3Rlcl9kaXZpZGVycyhhZGpfZGl2
cywgQVJSQVlfU0laRShhZGpfZGl2cyksIGNsa19kYXRhKTsKPiAgdW5yZWdpc3Rlcl9wbGxzOgo+
ICAJbXRrX2Nsa191bnJlZ2lzdGVyX3BsbHMocGxscywgQVJSQVlfU0laRShwbGxzKSwgY2xrX2Rh
dGEpOwo+ICt1bm1hcF9pbzoKPiArCWlvdW5tYXAoYmFzZSk7Cj4gIAo+ICAJcmV0dXJuIHJldDsK
PiAgfQo+ICAKPiArc3RhdGljIHZvaWQgY2xrX210ODE2N19hcG1peGVkX3JlbW92ZShzdHJ1Y3Qg
cGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICt7Cj4gKwlzdHJ1Y3QgZGV2aWNlX25vZGUgKm5vZGUg
PSBwZGV2LT5kZXYub2Zfbm9kZTsKPiArCXN0cnVjdCBjbGtfaHdfb25lY2VsbF9kYXRhICpjbGtf
ZGF0YSA9IHBsYXRmb3JtX2dldF9kcnZkYXRhKHBkZXYpOwoKW1NldmVyaXR5OiBIaWdoXQpTaW5j
ZSBwbGF0Zm9ybV9zZXRfZHJ2ZGF0YSgpIHdhcyBuZXZlciBjYWxsZWQgaW4gdGhlIHByb2JlIGZ1
bmN0aW9uLCB3b24ndApwbGF0Zm9ybV9nZXRfZHJ2ZGF0YSgpIGV2YWx1YXRlIHRvIE5VTEwgaGVy
ZT8gVGhpcyB3b3VsZCByZW5kZXIgdGhlCnN1YnNlcXVlbnQgdW5yZWdpc3RlciBjYWxscyBhcyBu
by1vcHMsIGZhaWxpbmcgdG8gdW5yZWdpc3RlciB0aGUgY2xvY2tzLgoKW1NldmVyaXR5OiBNZWRp
dW1dCkRvZXMgdGhpcyByZW1vdmUgZnVuY3Rpb24gbGVhayB0aGUgSS9PIG1lbW9yeSBtYXBwaW5n
PyBUaGUgYmFzZSBtYXBwaW5nCmNyZWF0ZWQgYnkgb2ZfaW9tYXAoKSBpbiBjbGtfbXQ4MTY3X2Fw
bWl4ZWRfcHJvYmUoKSBkb2Vzbid0IGFwcGVhciB0byBiZQp1bm1hcHBlZCB2aWEgaW91bm1hcCgp
IGhlcmUuCgpTaW5jZSBiYXNlIGlzIG9ubHkgYSBsb2NhbCB2YXJpYWJsZSBpbiB0aGUgcHJvYmUg
ZnVuY3Rpb24gYW5kIGlzbid0IHNhdmVkIHRvCmEgZGV2aWNlIGNvbnRleHQsIHRoZXJlIGlzIG5v
IHdheSBmb3IgY2xrX210ODE2N19hcG1peGVkX3JlbW92ZSgpIHRvIHJldHJpZXZlCnRoZSBwb2lu
dGVyIHRvIGNsZWFuIGl0IHVwLgoKPiArCj4gKwlvZl9jbGtfZGVsX3Byb3ZpZGVyKG5vZGUpOwo+
ICsJbXRrX2Nsa191bnJlZ2lzdGVyX2RpdmlkZXJzKGFkal9kaXZzLCBBUlJBWV9TSVpFKGFkal9k
aXZzKSwgY2xrX2RhdGEpOwo+ICsJbXRrX2Nsa191bnJlZ2lzdGVyX3BsbHMocGxscywgQVJSQVlf
U0laRShwbGxzKSwgY2xrX2RhdGEpOwo+ICt9CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0
cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYxMDEwMTE1NTM5LjkyMzctMS1sLnNjb3Jj
aWFAZ21haWwuY29tP3BhcnQ9MwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcGh5Cg==
