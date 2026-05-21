Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27A40CD4F3D
	for <linux-phy@archiver.kernel.org>; Thu, 21 May 2026 13:43:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GgMVhnrMeb165Ye/1q75xeIZSqOTXSNiNnwIy1dK3+M=; b=C2D0Rht8MP0zI8
	uGoFPn/zblsZgQN7AH31I0I804LfatsI2L4y2piZZEcTjgFwUIF3iLnNGOxGFHmNQLxCnfUczzTZN
	MRKHzkEAmMUdupgQHf5s/5XZURpml/3x1bJIM8sCp2UYeFZdM972zuacR6WAJD0iHbkwHI1zinEwP
	pNuJct8ItI576ucpSuITVpFXzoUvhwqnXxd19fso4av1H+UyB54jgjS+aa1NHNDUSocPMVWbvYjYb
	594KCpz+5jeLcuM50dB/no8Efptw1GUbb3ICeq3VpqKRKsICJB3Cm9F5tFiHvgMF0G/GSAukeWoIg
	qcjTUWcBROlrkC8hlV8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ3gG-00000007vfd-3pDq;
	Thu, 21 May 2026 13:43:20 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ3gD-00000007vez-322X
	for linux-phy@lists.infradead.org;
	Thu, 21 May 2026 13:43:19 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id DDF8B432E6;
	Thu, 21 May 2026 13:43:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8B9821F000E9;
	Thu, 21 May 2026 13:43:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779370996;
	bh=zhDFGbwzEpT2wZ4v12gWB0teXiBE4KiXnHSxklDbAYE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=i5BJBy6SYKiHqIpvS6Q4Z58Jsem8lwu4o2HFW+QytikSvT+aE6/q3maBtcdmvylCx
	 zpbWjoXrSw80ZStnO9RG3eEZcFLQRhRykKRZOq2D4mxr+3m7fjXBDDAWnD47Phg1Zf
	 JKsecwGDiq8ZTlBInp1mTF/nF83v2clJL3mCgs8nd6tXKhby0USeEnG6HCxa4BnT9Q
	 HE+jrRRSml+N3NCM+JUmyoCKel8z3s28/goS1ZZdwtjOspvj/inkj66AVuWnlnnpop
	 0/jEcXg4bhWIBd5z586D8yfJjbLAhx+UqJaSLKaniqPn0+zI2j1ZQaxrpYuJmrxND0
	 aqnZUcpmIoD6A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/4] PCI: qcom: Keep PERST# GPIO state as-is during
 probe
To: "Krishna Chaitanya Chundru" <krishna.chundru@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, neil.armstrong@linaro.org, linux-pci@vger.kernel.org, olteanv@gmail.com
In-Reply-To: <20260521-link_retain-v2-2-08ed448b081c@oss.qualcomm.com>
References: <20260521-link_retain-v2-2-08ed448b081c@oss.qualcomm.com>
Date: Thu, 21 May 2026 13:43:15 +0000
Message-Id: <20260521134316.8B9821F000E9@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_064317_785392_97CE44D5 
X-CRM114-Status: GOOD (  10.85  )
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFNpbGVudCBoYXJkd2Fy
ZSBjb250cm9sIGZhaWx1cmUgZHVlIHRvIGluY29ycmVjdCBHUElPIGRpcmVjdGlvbiB3aGVuIHVz
aW5nIGBHUElPRF9BU0lTYC4KLS0KCmNvbW1pdCBiNGI3OTM3MjgyZjliMmRjMmRmZjUyMjY1ZWMz
OTM2YjEwMjRhZjlkCkF1dGhvcjogS3Jpc2huYSBDaGFpdGFueWEgQ2h1bmRydSA8a3Jpc2huYS5j
aHVuZHJ1QG9zcy5xdWFsY29tbS5jb20+CgpQQ0k6IHFjb206IEtlZXAgUEVSU1QjIEdQSU8gc3Rh
dGUgYXMtaXMgZHVyaW5nIHByb2JlCgpUaGlzIGNvbW1pdCBjaGFuZ2VzIHRoZSBQRVJTVCMgR1BJ
TyByZXF1ZXN0IHRvIHVzZSBHUElPRF9BU0lTIGluc3RlYWQgb2YKR1BJT0RfT1VUX0hJR0guIFRo
aXMgcHJlc2VydmVzIHRoZSBleGlzdGluZyBHUElPIHN0YXRlIGNvbmZpZ3VyZWQgYnkgdGhlCmJv
b3Rsb2FkZXIgb3IgZmlybXdhcmUgdG8gYXZvaWQgdW5pbnRlbnRpb25hbGx5IGFzc2VydGluZyBy
ZXNldCBkdXJpbmcKcHJvYmUuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVy
L2R3Yy9wY2llLXFjb20uYyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS5j
Cj4gaW5kZXggYWY2YmY1Y2NlNjViZS4uYmZlODczY2JmNDRmNiAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLXFjb20uYwo+ICsrKyBiL2RyaXZlcnMvcGNpL2Nv
bnRyb2xsZXIvZHdjL3BjaWUtcWNvbS5jCj4gQEAgLTE3MDcsNyArMTcwNyw3IEBAIHN0YXRpYyBp
bnQgcWNvbV9wY2llX3BhcnNlX3BlcnN0KHN0cnVjdCBxY29tX3BjaWUgKnBjaWUsCj4gIAkJZ290
byBwYXJzZV9jaGlsZF9ub2RlOwo+ICAKPiAgCXJlc2V0ID0gZGV2bV9md25vZGVfZ3Bpb2RfZ2V0
KGRldiwgb2ZfZndub2RlX2hhbmRsZShucCksICJyZXNldCIsCj4gLQkJCQkgICAgICBHUElPRF9P
VVRfSElHSCwgIlBFUlNUIyIpOwo+ICsJCQkJICAgICAgR1BJT0RfQVNJUywgIlBFUlNUIyIpOwoK
W1NldmVyaXR5OiBIaWdoXQpJZiB0aGUgYm9vdGxvYWRlciBsZWF2ZXMgdGhlIFBFUlNUIyBwaW4g
ZmxvYXRpbmcgb3IgYXMgYW4gaW5wdXQsIHdpbGwKdGhpcyBjYXVzZSBncGlvZF9zZXRfdmFsdWVf
Y2Fuc2xlZXAoKSB0byBzaWxlbnRseSBmYWlsIGxhdGVyPwoKV2hlbiB1c2luZyBHUElPRF9BU0lT
LCBpZiB0aGUgcGluIHdhcyBub3QgcHJldmlvdXNseSBjb25maWd1cmVkIGFzIGFuCm91dHB1dCwg
R1BJT0RfRkxBR19JU19PVVQgd2lsbCBub3QgYmUgc2V0IGluIHRoZSBHUElPIGRlc2NyaXB0b3Iu
CgpMYXRlciBpbiBxY29tX3BjaWVfaG9zdF9pbml0KCksIHRoZSBkcml2ZXIgYXR0ZW1wdHMgdG8g
dG9nZ2xlIHRoZSByZXNldApwaW4gYnkgY2FsbGluZyBncGlvZF9zZXRfdmFsdWVfY2Fuc2xlZXAo
KSB2aWEgX19xY29tX3BjaWVfcGVyc3RfYXNzZXJ0KCkuCgpCZWNhdXNlIGdwaW9kX3NldF92YWx1
ZV9jYW5zbGVlcCgpIGVuZm9yY2VzIGRpcmVjdGlvbmFsaXR5LCBpdCB3aWxsCnJldHVybiAtRVBF
Uk0gaWYgdGhlIHBpbiBpcyBub3QgY29uZmlndXJlZCBhcyBhbiBvdXRwdXQuIFNpbmNlCl9fcWNv
bV9wY2llX3BlcnN0X2Fzc2VydCgpIGlnbm9yZXMgdGhlIHJldHVybiB2YWx1ZSBvZgpncGlvZF9z
ZXRfdmFsdWVfY2Fuc2xlZXAoKSwgdGhlIHJlc2V0IGxpbmUgbWlnaHQgbmV2ZXIgYWN0dWFsbHkg
YmUgZHJpdmVuLgoKQ291bGQgdGhpcyBicmVhayBQQ0llIGxpbmsgaW5pdGlhbGl6YXRpb24gb24g
cGxhdGZvcm1zIHdoZXJlIHRoZQpib290bG9hZGVyIGhhc24ndCBzZXQgdGhlIEdQSU8gZGlyZWN0
aW9uIHRvIG91dHB1dD8KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28u
ZGV2LyMvcGF0Y2hzZXQvMjAyNjA1MjEtbGlua19yZXRhaW4tdjItMC0wOGVkNDQ4YjA4MWNAb3Nz
LnF1YWxjb21tLmNvbT9wYXJ0PTIKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXBoeQo=
