Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D58FDC61DD6
	for <linux-phy@archiver.kernel.org>; Fri,  4 Sep 2026 13:49:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=raWjo0PmE/H7KLpdP1XoRkXT0pHfdCSauLVNHhgWtrs=; b=TyKSagBukuqsln
	WAtJ1TJJYBBT6fLP9LzmRs7nf1mprLbZzjowxLGDE7qMVFwdpsMN7ckaRXgHYNOB071cHEak252Ue
	Gh368mLwyz9KDoHp3se6JfbABhuO5IqAw52Ily2zAdHPeXzOAku67228RSqFMZJtYO1toBCqwx6Gh
	Vlp0GpEqShVreamnueC56Nltl4USp7ZimuGU3Z1Xk50IdXP3NbD5f5lKMtYeS+arSWiejoQ0sB9/1
	XPK7LeODevHXLOuUGlAXf2hwjFaO0wxj2NyxY5Zg2PT7yO3wijAcHr8iYwagsZaC/89avFDazX7VK
	d1mfPENx6IbSNwiniQxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2UI9-00000002HPJ-2LHf;
	Fri, 04 Sep 2026 13:49:17 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2UI8-00000002HPA-1aYe
	for linux-phy@lists.infradead.org;
	Fri, 04 Sep 2026 13:49:16 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 25DF341A0C;
	Fri,  4 Sep 2026 13:49:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5944F1F00A3D;
	Fri,  4 Sep 2026 13:49:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788529756;
	bh=Kc0jjiNx6Kq8ngc29fQqe8dP+shw+RZ+vD1GVe3R4AQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=hsuPaBNlbrjz5g+9i85O5q/yR8Q6LkFhDoPvRU2JHxuTyXryLdg+Wd6WG4I6CLlXI
	 7VA07bBwh/q46u5NBjqN6Mz/SLBdKbrp3UdPvNA1afKyUF9jWSA0bgOkO9/9Le1OJ4
	 YIFLGnm/0HliUrpBrOWGoqxj00AV5lDTAfPKTLA783scNa0kCstiF6YGUVah6ufWj/
	 zwxY5XeE+DByIQctFnwEp5Jf6xCbEwXFpn/ZbpLSDtglDEj39lg0NIYD8XL0Ie0iub
	 9YbIzkmAfe5vXKlZEWvnCedeVAIgKgnCCpTkBQQ9Al6rG2uG7/nLmaU+UYL9VGNUW6
	 sG2PyVdzFU1Uw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 09/19] drm/bridge: inno-hdmi: Add .disable platform
 operation
To: "Michal Wilczynski" <m.wilczynski@samsung.com>
Cc: vkoul@kernel.org, dri-devel@lists.freedesktop.org, neil.armstrong@linaro.org, olteanv@gmail.com, lee@kernel.org, linux-clk@vger.kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, mfd@lists.linux.dev, linux-phy@lists.infradead.org, robh@kernel.org
In-Reply-To: <20260904-jh7110-clean-send-v3-9-484f9ae72715@samsung.com>
References: <20260904-jh7110-clean-send-v3-0-484f9ae72715@samsung.com>
 <CGME20260904132725eucas1p19c8f66b7844108641dec1d2c39989dd5@eucas1p1.samsung.com>
 <20260904-jh7110-clean-send-v3-9-484f9ae72715@samsung.com>
Date: Fri, 04 Sep 2026 13:49:14 +0000
Message-Id: <20260904134915.5944F1F00A3D@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIEhhcmR3YXJlIFRlYXJk
b3duIE9yZGVyIEludmVyc2lvbiBSaXNraW5nIE1NSU8gQWJvcnRzCi0tCgpjb21taXQgM2VkYjhi
M2Q4N2U5MWZlZGVjNzU4OWNlMDdiYzM1MTk2NWIyMTc2NQpBdXRob3I6IE1pY2hhbCBXaWxjenlu
c2tpIDxtLndpbGN6eW5za2lAc2Ftc3VuZy5jb20+Cgpkcm0vYnJpZGdlOiBpbm5vLWhkbWk6IEFk
ZCAuZGlzYWJsZSBwbGF0Zm9ybSBvcGVyYXRpb24KClRoaXMgY29tbWl0IGFkZHMgYSBuZXcgLmRp
c2FibGUgcGxhdGZvcm0gb3BlcmF0aW9uIHRvIHRoZSBJbm5vc2lsaWNvbiBIRE1JCmRyaXZlciB0
byBzdXBwb3J0IHBsYXRmb3JtLXNwZWNpZmljIHBvd2VyIGRvd24gc2VxdWVuY2VzLiBUaGUgbmV3
IGNhbGxiYWNrCmlzIGV4ZWN1dGVkIGR1cmluZyB0aGUgYnJpZGdlJ3MgYXRvbWljIGRpc2FibGUg
cGhhc2UuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2lubm8taGRtaS5j
IGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9pbm5vLWhkbWkuYwo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9icmlkZ2UvaW5uby1oZG1pLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2lu
bm8taGRtaS5jClsgLi4uIF0KPiBAQCAtODg2LDYgKzg4NiwxMCBAQCBzdGF0aWMgdm9pZCBpbm5v
X2hkbWlfYnJpZGdlX2F0b21pY19kaXNhYmxlKHN0cnVjdCBkcm1fYnJpZGdlICpicmlkZ2UsCj4g
IAkJCQkJICAgIHN0cnVjdCBkcm1fYXRvbWljX2NvbW1pdCAqc3RhdGUpCj4gIHsKPiAgCXN0cnVj
dCBpbm5vX2hkbWkgKmhkbWkgPSBicmlkZ2VfdG9faW5ub19oZG1pKGJyaWRnZSk7Cj4gKwljb25z
dCBzdHJ1Y3QgaW5ub19oZG1pX3BsYXRfb3BzICpwbGF0X29wcyA9IGhkbWktPnBsYXRfZGF0YS0+
b3BzOwo+ICsKPiArCWlmIChwbGF0X29wcyAmJiBwbGF0X29wcy0+ZGlzYWJsZSkKPiArCQlwbGF0
X29wcy0+ZGlzYWJsZShoZG1pLT5kZXYpOwo+ICAKPiAgCWlubm9faGRtaV9zdGFuZGJ5KGhkbWkp
OwoKW1NldmVyaXR5OiBIaWdoXQpEb2VzIGNhbGxpbmcgdGhlIHBsYXRmb3JtIGRpc2FibGUgY2Fs
bGJhY2sgYmVmb3JlIGlubm9faGRtaV9zdGFuZGJ5KCkgcmlzawpNTUlPIGFib3J0cz8KClRoZSBw
bGF0Zm9ybSBkaXNhYmxlIGhvb2sgKHN1Y2ggYXMgdGhlIEpINzExMCBpbXBsZW1lbnRhdGlvbiBt
ZW50aW9uZWQgaW4gdGhlCmNvbW1pdCBtZXNzYWdlKSB0eXBpY2FsbHkgcG93ZXJzIG9mZiB0aGUg
UEhZIGFuZCBkaXNhYmxlcyBjbG9ja3MuIEhvd2V2ZXIsCmlubm9faGRtaV9zdGFuZGJ5KCkgYXR0
ZW1wdHMgdG8gcGVyZm9ybSBNTUlPIHdyaXRlcyB0byBQSFkgcmVnaXN0ZXJzIGxpa2UKSERNSV9Q
SFlfRFJJVkVSIGFuZCBIRE1JX1BIWV9QUkVfRU1QSEFTSVMuCgpBY2Nlc3NpbmcgaGFyZHdhcmUg
cmVnaXN0ZXJzIGFmdGVyIHRoZSBQSFkgaGFzIGJlZW4gcG93ZXJlZCBvZmYgYW5kIGNsb2Nrcwpk
aXNhYmxlZCBjYW4gY2F1c2UgYSBzeW5jaHJvbm91cyBleHRlcm5hbCBhYm9ydCAoYnVzIGhhbmcp
IG9yIHNpbGVudApmYWlsdXJlcyBvbiBtYW55IFNvQyBhcmNoaXRlY3R1cmVzLgoKU2luY2UgcGxh
dF9vcHMtPmVuYWJsZSgpIGlzIGNhbGxlZCBwcmlvciB0byBjb25maWd1cmluZyB0aGUgUEhZIHJl
Z2lzdGVycwpkdXJpbmcgc2V0dXAsIHNob3VsZCB0aGUgdGVhcmRvd24gZm9sbG93IGEgc3RyaWN0
IExJRk8gb3JkZXIgd2hlcmUKaW5ub19oZG1pX3N0YW5kYnkoKSBpcyBjYWxsZWQgYmVmb3JlIHBs
YXRfb3BzLT5kaXNhYmxlKCk/Cgo+ICB9CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6
Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwOTA0LWpoNzExMC1jbGVhbi1zZW5kLXYzLTAt
NDg0ZjlhZTcyNzE1QHNhbXN1bmcuY29tP3BhcnQ9OQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
