Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2AE8FC43458
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jun 2026 13:28:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oUYmznPWfJ7UdIha62B1plMOGfYbrDXwMXEYCo+0fds=; b=dN/xw1Mew4RGtT
	MxSOtFaQ5JWDRVFQV4ouHDVFGtlLSXiC+XlF7HGbBgXckWWSRqW8lBRvDu23xeAf8nZQHiWAurm4q
	E6sY4LnRm6x5y2Kyqo0KM9y2LTlIEUFYpD9MqZw2LCnG4nmIHL734zz5vDdPQBXQVIiku0ejiUw4j
	rdMEJO9xasoXbWgWDkV7oZEK+dpAuoamYGeV1ZoYrMO+FaPPfohjTR1Ru9WRG3DK2yGHW5CBNzFFm
	ncqoX0v02BiqQQlz2bKlDQQEseboTBL21EHXnCS9ZRWak5ZIvhtSkNMHsoxNcNlWnihTIq2HXdM5d
	Y3eNg/lOyYFdoe5eEjvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weYW3-0000000HABL-2OL5;
	Tue, 30 Jun 2026 13:28:43 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weYW3-0000000HAB7-02eL
	for linux-phy@lists.infradead.org;
	Tue, 30 Jun 2026 13:28:43 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id C16EC404DB;
	Tue, 30 Jun 2026 13:28:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39AF01F000E9;
	Tue, 30 Jun 2026 13:28:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782826122;
	bh=StRupOAA1WebvV+A5T+jqB4tjQ20irjm2lrsEBfpF8Q=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=GAO/nXJvCHd3vBWELfb6n5YGt2IfcN1m9XAOvnTtTGfJqzfUPbTTU96HBZkykgF62
	 nUmFKT4GOuaYZ9semtOlj2yo/pMpeZgYBo/kxaaA6UVkYE5t9TW7hVhp0E77EEPt+w
	 T8tEBQcgbeVs/zCU8nanMPXVzH0iiaKoDec/d8I3xojqCtEMKExkDWJeER3g9ICDqN
	 LUCdqqGX4Ikri4uOlJb0nnR1zt4x51Yw5sGSYt/PbPnbFA0VENy+2hKFmYUk3+fliv
	 trMYurfyNvlPRDjDOYofXaP9kHG5VYlDJTjNs6wU3oB9GP+6FtgrbDZ2/RK6/eJIN6
	 EBZmRYqxv9wbQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 09/13] phy: replace linux/gpio.h inclusions
To: "Arnd Bergmann" <arnd@kernel.org>
Cc: neil.armstrong@linaro.org, linux-input@vger.kernel.org, dmitry.torokhov@gmail.com, linux-sunxi@lists.linux.dev, vkoul@kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com
In-Reply-To: <20260629132633.1300009-10-arnd@kernel.org>
References: <20260629132633.1300009-1-arnd@kernel.org>
 <20260629132633.1300009-10-arnd@kernel.org>
Date: Tue, 30 Jun 2026 13:28:41 +0000
Message-Id: <20260630132842.39AF01F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gUmVwbGFjaW5nIGAjaW5j
bHVkZSA8bGludXgvZ3Bpby5oPmAgd2l0aCBgI2luY2x1ZGUgPGxpbnV4L2dwaW8vY29uc3VtZXIu
aD5gIHJlc3VsdHMgaW4gZHVwbGljYXRlIGluY2x1ZGUgZGlyZWN0aXZlcy4KLS0KCmNvbW1pdCAx
NzJlNjcwZTA4YzA2YzFiNzA0ZjlmNWQ4MDE4N2E2NmJhOWJiMjBjCkF1dGhvcjogQXJuZCBCZXJn
bWFubiA8YXJuZEBhcm5kYi5kZT4KCnBoeTogcmVwbGFjZSBsaW51eC9ncGlvLmggaW5jbHVzaW9u
cwogICAgCmxpbnV4L2dwaW8uaCBzaG91bGQgbm8gbG9uZ2VyIGJlIHVzZWQsIGNvbnZlcnQgdGhl
c2UgaW5zdGVhZCB0bwplaXRoZXIgbGludXgvZ3Bpby9jb25zdW1lci5oIG9yIGxpbnV4L2dwaW8v
bGVnYWN5LmggYXMgbmVlZGVkLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvYnJvYWRjb20v
cGh5LWJjbS1uczItdXNiZHJkLmMgYi9kcml2ZXJzL3BoeS9icm9hZGNvbS9waHktYmNtLW5zMi11
c2JkcmQuYwo+IGluZGV4IDg0NzNmYTU3NDUyOTYuLmQ5YzA2MTI5ZWQyM2UgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9waHkvYnJvYWRjb20vcGh5LWJjbS1uczItdXNiZHJkLmMKPiArKysgYi9kcml2
ZXJzL3BoeS9icm9hZGNvbS9waHktYmNtLW5zMi11c2JkcmQuYwo+IEBAIC0zLDcgKzMsNyBAQAo+
ICAKPiAgI2luY2x1ZGUgPGxpbnV4L2RlbGF5Lmg+Cj4gICNpbmNsdWRlIDxsaW51eC9leHRjb24t
cHJvdmlkZXIuaD4KPiAtI2luY2x1ZGUgPGxpbnV4L2dwaW8uaD4KPiArI2luY2x1ZGUgPGxpbnV4
L2dwaW8vY29uc3VtZXIuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L2dwaW8vY29uc3VtZXIuaD4KCltT
ZXZlcml0eTogTG93XQpUaGlzIGlzbid0IGEgYnVnLCBidXQgdGhlIHJlcGxhY2VtZW50IGxlYXZl
cyB1cyB3aXRoIGNvbnNlY3V0aXZlIGR1cGxpY2F0ZQpsaW51eC9ncGlvL2NvbnN1bWVyLmggaW5j
bHVzaW9ucy4gQ291bGQgdGhlIHJlZHVuZGFudCBpbmNsdWRlIGJlIHJlbW92ZWQ/CgpbIC4uLiBd
Cgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS90aS9waHktajcyMWUtd2l6LmMgYi9kcml2ZXJz
L3BoeS90aS9waHktajcyMWUtd2l6LmMKPiBpbmRleCA3NTMxYThhMDQ5MTIzLi4yMjMzYmFiYzAw
NzgxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3RpL3BoeS1qNzIxZS13aXouYwo+ICsrKyBi
L2RyaXZlcnMvcGh5L3RpL3BoeS1qNzIxZS13aXouYwo+IEBAIC0xMSw3ICsxMSw3IEBACj4gICNp
bmNsdWRlIDxsaW51eC9zbGFiLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9jbGsuaD4KPiAgI2luY2x1
ZGUgPGxpbnV4L2Nsay1wcm92aWRlci5oPgo+IC0jaW5jbHVkZSA8bGludXgvZ3Bpby5oPgo+ICsj
aW5jbHVkZSA8bGludXgvZ3Bpby9jb25zdW1lci5oPgo+ICAjaW5jbHVkZSA8bGludXgvZ3Bpby9j
b25zdW1lci5oPgoKW1NldmVyaXR5OiBMb3ddClRoaXMgaXNuJ3QgYSBidWcsIGJ1dCBzaW1pbGFy
IHRvIHRoZSBicm9hZGNvbSBwaHkgZHJpdmVyLCB0aGlzIGNyZWF0ZXMKZHVwbGljYXRlIGxpbnV4
L2dwaW8vY29uc3VtZXIuaCBpbmNsdXNpb25zIGhlcmUgYXMgd2VsbC4gU2hvdWxkIHRoZSBzZWNv
bmQKb25lIGJlIGRyb3BwZWQ/CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNo
aWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNjI5MTMyNjMzLjEzMDAwMDktMS1hcm5kQGtlcm5lbC5v
cmc/cGFydD05CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
