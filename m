Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20A32EC873D
	for <linux-phy@archiver.kernel.org>; Thu,  7 Sep 2023 16:26:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i50qmAmUOfJKlVpyjo8FSp8WAZR9VQkaBKHE6XvXA+4=; b=esAU7Sjucdn1n8
	wIe7PMXherMThhOLXdR4S0XDrFPsJWy1RFsvEc461XjoLDigGeiDCiYJQnHYYyRp+d8BsBFQU+Luv
	k5sgOMWY1nXNI6taUdOV+yQtMPI0LCJaQfYbuJ68G16GzxMADzgFae80Wg3jQFNaoNWoDSmzqll/l
	HINBe/hkjWngFEmtccCq0VOe3iETdW/XyD/Hg+cog0+4Wqck6VgnKTcuKw7qjtstpgz6bnUllIRBI
	7A3m8ZB4D2XlqodEkiKAeFtFnAu9u3y6fdm7T9j7udXBK4LjIjnOv1u8e7sTygNdG4F5Hf0pVajY7
	m1VQSn0irEQndUSpXS9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qeHpj-00COPB-2g;
	Thu, 07 Sep 2023 16:26:19 +0000
Received: from msg-2.mailo.com ([213.182.54.12])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qeHpg-00COOa-1B
	for linux-phy@lists.infradead.org;
	Thu, 07 Sep 2023 16:26:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1694103821; bh=rN2Zq4b3EuC0uY7j+MUE8qKAQBrPT6xyGhddo62KEEA=;
	h=X-EA-Auth:Message-ID:Subject:From:To:Cc:Date:In-Reply-To:
	 References:Content-Type:Content-Transfer-Encoding:MIME-Version;
	b=U8nwCIGig0tFL29XqULcbHPY4ooKqeSPkI+lIeibUV5M9MkXVLUs8zhQp3bsmZIiD
	 sPzN8ruDFqKxS85OwFBO8AeY05YbilPu7Ozridg4Y4giUJBHteGdgXLqsWYHic44Hp
	 vp/QExeK3biUoT3QzWJufG6nwmLzDxjURArdF3ek=
Received: by b221-1.in.mailobj.net [192.168.90.21] with ESMTP
	via ip-20.mailobj.net [213.182.54.20]
	Thu,  7 Sep 2023 18:23:41 +0200 (CEST)
X-EA-Auth: RBUbaykLBe8Q96TuxMBWA4Zfhb0paO1yYYk+67AjwHkKsuWotcI7btTwTtSCbKtPh+t2rZgnLFqDvQUZiNf3MholC1zv/S8Q
Message-ID: <053077e761ecaeb44b76f5865e100d588101461b.camel@mailo.com>
Subject: Re: [PATCH] phy: qcom-m31: Fix error code in probe()
From: Deepak R Varma <drv@mailo.com>
To: Dan Carpenter <dan.carpenter@linaro.org>, Varadarajan Narayanan
	 <quic_varada@quicinc.com>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, kernel-janitors@vger.kernel.org
Date: Thu, 07 Sep 2023 21:53:36 +0530
In-Reply-To: <7926c8e6-630e-4d7a-b0b2-d29b3c8b2c09@moroto.mountain>
References: <7926c8e6-630e-4d7a-b0b2-d29b3c8b2c09@moroto.mountain>
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230907_092616_837475_BB9227E0 
X-CRM114-Status: GOOD (  14.37  )
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

T24gVGh1LCAyMDIzLTA5LTA3IGF0IDEyOjU0ICswMzAwLCBEYW4gQ2FycGVudGVyIHdyb3RlOgo+
IFRoaXMgYWNjaWRlbnRhbGx5IHJldHVybnMgdGhlIHdyb25nIHZhcmlhYmxlLsKgIEl0IHNob3Vs
ZCBiZSAicXBoeS0KPiA+dnJlZyIKPiBpbnN0ZWFkIG9mICJxcGh5LT5waHkiLgoKSGkgRGFuLApK
dXN0IGN1cmlvdXM6IEhvdyBkaWQgeW91IGZpbmQgdGhpcz8gVmlzdWFsIGNhdGNoIG9yIFN0YXRp
YyBBbmFseXplcj8KClRoYW5rcywKLi9kcnYKCj4gCj4gRml4ZXM6IDA4ZTQ5YWY1MDcwMSAoInBo
eTogcWNvbTogSW50cm9kdWNlIE0zMSBVU0IgUEhZIGRyaXZlciIpCj4gU2lnbmVkLW9mZi1ieTog
RGFuIENhcnBlbnRlciA8ZGFuLmNhcnBlbnRlckBsaW5hcm8ub3JnPgo+IC0tLQo+IFdoZW4gd2Un
cmUgYWRkaW5nIG5ldyBkcml2ZXJzIHRoZW4gd2Ugc2hvdWxkIHVzZSB0aGUgbmV3IGRyaXZlcgo+
IHByZWZpeCBpbnN0ZWFkIG9mIHRoZSBzdWJzeXN0ZW0gcHJlZml4LsKgIEZvciBleGFtcGxlOgo+
IAo+IMKgQmFkOiBbUEFUQ0hdIHBoeTogcWNvbTogSW50cm9kdWNlIE0zMSBVU0IgUEhZIGRyaXZl
cgo+IEdvb2Q6IFtQQVRDSF0gcGh5OiBxY29tLW0zMTogSW50cm9kdWNlIE0zMSBVU0IgUEhZIGRy
aXZlcgo+IAo+IFRoYXQgd2F5IGl0J3Mgb2J2aW91cyB0byB0aGUgZmlyc3QgcGVyc29uIHdobyBz
ZW5kcyBhIGJ1Z2ZpeAo+IHdoYXQgdGhlIGRyaXZlciBwcmVmaXggaXMuCj4gCj4gwqBkcml2ZXJz
L3BoeS9xdWFsY29tbS9waHktcWNvbS1tMzEuYyB8IDIgKy0KPiDCoDEgZmlsZSBjaGFuZ2VkLCAx
IGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3Bo
eS9xdWFsY29tbS9waHktcWNvbS1tMzEuYwo+IGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFj
b20tbTMxLmMKPiBpbmRleCBlZDA4MDcyY2EwMzIuLjk5ZDU3MGY0MTQyYSAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1tMzEuYwo+ICsrKyBiL2RyaXZlcnMvcGh5
L3F1YWxjb21tL3BoeS1xY29tLW0zMS5jCj4gQEAgLTI1Niw3ICsyNTYsNyBAQCBzdGF0aWMgaW50
IG0zMXVzYl9waHlfcHJvYmUoc3RydWN0Cj4gcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+IMKgCj4g
wqDCoMKgwqDCoMKgwqDCoHFwaHktPnZyZWcgPSBkZXZtX3JlZ3VsYXRvcl9nZXQoZGV2LCAidmRk
YS1waHkiKTsKPiDCoMKgwqDCoMKgwqDCoMKgaWYgKElTX0VSUihxcGh5LT52cmVnKSkKPiAtwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIGRldl9lcnJfcHJvYmUoZGV2LCBQVFJf
RVJSKHFwaHktPnBoeSksCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiBk
ZXZfZXJyX3Byb2JlKGRldiwgUFRSX0VSUihxcGh5LT52cmVnKSwKPiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAiZmFpbGVkIHRvIGdldAo+IHZyZWdcbiIpOwo+IMKgCj4g
wqDCoMKgwqDCoMKgwqDCoHBoeV9zZXRfZHJ2ZGF0YShxcGh5LT5waHksIHFwaHkpOwoKCgoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
