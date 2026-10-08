Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECF8FCA600A
	for <linux-phy@archiver.kernel.org>; Thu,  8 Oct 2026 07:29:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9zwe3gHeDZpy1uzH872vIdHYVfQTMT3fZZVo4hJgNEU=; b=KpH114LW+GgLYu
	x5LHEiuVML3y3Mvj0V5F8O/jlvWmSBe85+9bzjdX5V94qzsVo8677hATClLMPP5pmNhokGs5DEynC
	nI3No1l0xpqvsiIWF2Mm62Recewipv05H+2P397rwnTGoQLAWmqEG5EkNT0TS85swKMbeEWwwLxm1
	X2+i7y4VfkYeUCBD5vOzfBBlEkilO1PHGWb8bf2pSXYFQ8SCk+2EoZZldsVtcGKE0549uuDE+Vghq
	6uowURkkWaiVnzoFckep/sQiK3JS9wVUrxLJlr9gDGFzTWcQ7SXzoYw7C7hXBAmHqSq6Q6pG+H65g
	TbGUSHb4NmFcIXl7Ht5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEiZ7-00000003kJu-2kOB;
	Thu, 08 Oct 2026 07:29:21 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEiZ7-00000003kJc-03Tf
	for linux-phy@lists.infradead.org;
	Thu, 08 Oct 2026 07:29:21 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 600F3429D0;
	Thu,  8 Oct 2026 07:29:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD1E31F000FF;
	Thu,  8 Oct 2026 07:29:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791444560;
	bh=LoqUM2YEELUiIvwftTXbSKEJZLI4BN3PEcn0ofvkAG8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=M/im5R9ziNMj+RNBML0MPGJUVLachc5d9EYt4aICKMKF3/1QrohcKViX2fddWQdUo
	 /R5OVw1RiL7SLptGYe2F9Siz9CJr9ZkWVXTOKT7IztrihDEM3aUc+KFhs2s3BlrbNd
	 7c98pLk2dlXzHyCZdwbAi1DU8ZbzwFEtF9kDsmdRkzNtRnH/+67LjiTNn8/CZp7yNE
	 FkNEOUtiKuXT/WR1Q24RO+BUE4d+dIdcH6V+Qg+okjRsUoOwf60RHIogjkI41UCsSk
	 IjGB6Ov3H0CjZZJdK2q/2UWZ6VLaQ/tggmWhxK9QKnubTl3S3mpq6q/vZhHJna+4W0
	 id0bbLE+Chwdw==
Message-ID: <sashiko-outbox-163759@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v19 05/12] media: qcom: camss: Add Kaanapali compatible
To: "Hangxiang Ma" <hangxiang.ma@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, media-ci@linuxtv.org, neil.armstrong@linaro.org, vkoul@kernel.org, olteanv@gmail.com, robh@kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20261008-kaanapali-camss-v19-5-b2c583ef50e0@oss.qualcomm.com>
References: <20261008-kaanapali-camss-v19-0-b2c583ef50e0@oss.qualcomm.com>
 <20261008-kaanapali-camss-v19-5-b2c583ef50e0@oss.qualcomm.com>
Date: Thu, 08 Oct 2026 07:29:19 +0000
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIG1lZGlhOiBxY29tOiBj
YW1zczogbWlzc2luZyBEVCBwb3J0IGJvdW5kcyBjaGVjayBpbiBjYW1zc19wYXJzZV9lbmRwb2lu
dF9ub2RlKCkKLS0KCmNvbW1pdCA3ODFkN2NjMWQxYmUyYTBiNjRlZjA0OTgyYzM4YmQ4MmZjNmMx
YTVkCkF1dGhvcjogSGFuZ3hpYW5nIE1hIDxoYW5neGlhbmcubWFAb3NzLnF1YWxjb21tLmNvbT4K
CiAgICBtZWRpYTogcWNvbTogY2Ftc3M6IEFkZCBLYWFuYXBhbGkgY29tcGF0aWJsZQogICAgCiAg
ICBBZGQgQ0FNU1NfS0FBTkFQQUxJIGVudW0sIEthYW5hcGFsaSBjb21wYXRpYmxlIGFuZCBLYWFu
YXBhbGkgQ0FNU1MgZHJpdmVyCiAgICBwcml2YXRlIGRhdGEuIFRoZSBwcml2YXRlIGRhdGEgY3Vy
cmVudGx5IGluY2x1ZGVzIG9ubHkgYmFzaWMgaW5mb3JtYXRpb24uCiAgICBMYXRlciBjaGFuZ2Vz
IHdpbGwgYWRkIENTSVBIWSwgVFBHLCBDU0lEIGFuZCBWRkUgcmVzb3VyY2VzLgoKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLmMgYi9kcml2ZXJz
L21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MuYwo+IGluZGV4IGM1NDE4NWM5M2E4YTku
LmZjYTNkZTIxNGE5MjIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29t
L2NhbXNzL2NhbXNzLmMKPiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3Mv
Y2Ftc3MuYwoKWyAuLi4gXQoKPiBAQCAtNTU3Niw2ICs1NTkwLDEzIEBAIHN0YXRpYyB2b2lkIGNh
bXNzX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAJY2Ftc3NfZ2VucGRf
Y2xlYW51cChjYW1zcyk7Cj4gIH0KPiAgCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgY2Ftc3NfcmVz
b3VyY2VzIGthYW5hcGFsaV9yZXNvdXJjZXMgPSB7Cj4gKwkudmVyc2lvbiA9IENBTVNTX0tBQU5B
UEFMSSwKPiArCS5wZF9uYW1lID0gInRvcCIsCj4gKwkuaWNjX3JlcyA9IGljY19yZXNfa2FhbmFw
YWxpLAo+ICsJLmljY19wYXRoX251bSA9IEFSUkFZX1NJWkUoaWNjX3Jlc19rYWFuYXBhbGkpLAo+
ICt9Owo+ICsKCltTZXZlcml0eTogSGlnaF0KRG9lcyB0aGlzIGNvZGUgYWxsb3cgYW4gb3V0LW9m
LWJvdW5kcyBhcnJheSBhY2Nlc3MgaWYgYSBtYWxmb3JtZWQgZGV2aWNlIHRyZWUKcHJvdmlkZXMg
YW4gZXhjZXNzaXZlbHkgbGFyZ2UgcG9ydCBudW1iZXI/CgpUaGUgZHJpdmVyIHBhcnNlcyB0aGUg
cG9ydCBlbmRwb2ludCBmcm9tIHRoZSBkZXZpY2UgdHJlZSBpbgpjYW1zc19wYXJzZV9lbmRwb2lu
dF9ub2RlKCkgYW5kIHN0b3JlcyBpdCB3aXRob3V0IGJvdW5kcyBjaGVja2luZzoKCmRyaXZlcnMv
bWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy5jOmNhbXNzX3BhcnNlX2VuZHBvaW50X25v
ZGUoKSB7CgkuLi4KCWNzZC0+aW50ZXJmYWNlLmNzaXBoeV9pZCA9IHZlcC5iYXNlLnBvcnQ7Cgku
Li4KfQoKVGhlbiBpbiBjYW1zc19zdWJkZXZfbm90aWZpZXJfYm91bmQoKSwgdGhpcyB1bnZhbGlk
YXRlZCBpZCBpcyB1c2VkIHRvIGluZGV4CmludG8gdGhlIGR5bmFtaWNhbGx5IGFsbG9jYXRlZCBj
YW1zcy0+Y3NpcGh5IGFycmF5OgoKZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2Nh
bXNzLmM6Y2Ftc3Nfc3ViZGV2X25vdGlmaWVyX2JvdW5kKCkgewoJLi4uCgl1OCBpZCA9IGNzZC0+
aW50ZXJmYWNlLmNzaXBoeV9pZDsKCXN0cnVjdCBjc2lwaHlfZGV2aWNlICpjc2lwaHkgPSAmY2Ft
c3MtPmNzaXBoeVtpZF07CgkuLi4KfQoKQ291bGQgdGhpcyBsZWFkIHRvIG1lbW9yeSBjb3JydXB0
aW9uIG9yIGEga2VybmVsIHBhbmljIGlmIHRoZSBwb3J0IG51bWJlcgpleGNlZWRzIGNhbXNzLT5y
ZXMtPmNzaXBoeV9udW0/CgpXaGlsZSB0aGUgc3BlY2lmaWMgemVyby1zaXplIHBvaW50ZXIgaXNz
dWUgZm9yIEthYW5hcGFsaSBpcyByZXNvbHZlZCBieQpmb2xsb3ctdXAgcGF0Y2hlcyBzZXR0aW5n
IGNzaXBoeV9udW0sIHRoZSBtaXNzaW5nIGJvdW5kcyB2YWxpZGF0aW9uIGFwcGVhcnMgdG8KcmVt
YWluIGEgdnVsbmVyYWJpbGl0eSBmb3IgYW55IGludmFsaWQgZGV2aWNlIHRyZWUuCgotLSAKU2Fz
aGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYxMDA4
LWthYW5hcGFsaS1jYW1zcy12MTktMC1iMmM1ODNlZjUwZTBAb3NzLnF1YWxjb21tLmNvbT9wYXJ0
PTUKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
