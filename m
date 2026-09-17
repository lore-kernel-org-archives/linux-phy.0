Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44B4EC982D6
	for <linux-phy@archiver.kernel.org>; Thu, 17 Sep 2026 15:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zfasHQSnJLKHOXJ6g/hBxu/HzsdUH7mZeWPHKd5aM/o=; b=mywn2tpUNgUthP
	Lwv5aOuSHKm+wiFvK91al/HgjDCwBTk33M2m10TFg4pw4mjO6eKxNtRUbtYnm+np5BB645peWZ3dW
	FAtk772lqBd0OFqk5FPOYzd6HWWfN5XN6zuJuifYk5MEFICn2YFNkAkPTqUVGfj/BotKghh+/3hXA
	xWKJUIcUdybUlHW/w6zmpqZKN51fWHHDx1Pz/ulmcAm0+Rc7d3KVS1Ii1tbJzESFurU+iu/dXKd/C
	LeWOaDmu05ObXb8FQ/xdgPaEgKYcdGnvev5UZVYcM8BBHxm3nKLN57NuR7FT2hJeUQEKsfnYrT5xf
	6o/+g459AlEQLHbRvsdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7EA4-0000000Bhet-3X4L;
	Thu, 17 Sep 2026 15:36:32 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7EA3-0000000Bhef-2x4d
	for linux-phy@lists.infradead.org;
	Thu, 17 Sep 2026 15:36:31 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id D392A601EF;
	Thu, 17 Sep 2026 15:36:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 02E591F000FF;
	Thu, 17 Sep 2026 15:36:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789659390;
	bh=xTXW7uV7jJVL51Axx4zFbVYO+4vJeM7He4b78bXCOpY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=K9kefnNka4+iVFRhfxCO+tL1ejBCr31qAIrlIX/Vs1mtSNyQ9dJVzRjrKu4jEQCy4
	 xQ/rJ1isqC/6kvniZ5fGefprgwumXEAUtHuIzsum5sXTbZ+c0bREUgfDB3NwMIlV8X
	 QuzqKwID6qPF1eHg2KTgQPAEawKDfEVvP4wOsS/MAxH1IPVcenMAgkZ1/DuV/M+xxl
	 o0G3FN7EvQ/tmlR2vEkHQfYEtO0idk2FCQX2LbfKcmLHjPVym6W80d9tbNDCoBsQzC
	 Ump2ffHzUdO7pETS9oOo2c8mPGt5DLoozTgtvmDJOO6tNwpsXzCa5dUI+sqcxDsyKL
	 K/uuR9WNjVe9A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v19 2/5] phy: core: Add phy_get_by_of_node()
To: =?utf-8?b?QnJ5YW4gTydEb25vZ2h1ZQ==?= <bryan.odonoghue@linaro.org>
Cc: olteanv@gmail.com, linux-clk@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, vkoul@kernel.org, media-ci@linuxtv.org
In-Reply-To: <20260917-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v19-2-21ad8a76e941@linaro.org>
References: <20260917-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v19-0-21ad8a76e941@linaro.org>
 <20260917-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v19-2-21ad8a76e941@linaro.org>
Date: Thu, 17 Sep 2026 15:36:29 +0000
Message-Id: <20260917153630.02E591F000FF@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIHBoeTogY29yZTogbWlz
c2luZyAjcGh5LWNlbGxzIHZhbGlkYXRpb24gaW4gcGh5X2dldF9ieV9vZl9ub2RlKCkgY2F1c2Vz
IHNpbGVudCBtaXNiZWhhdmlvcgotIFtNZWRpdW1dIHBoeTogY29yZTogbWlzc2luZyB1c2Itbm9w
LXhjZWl2IGNvbXBhdGliaWxpdHkgY2hlY2sgaW4gcGh5X2dldF9ieV9vZl9ub2RlKCkKLS0KCmNv
bW1pdCBkYTJmNjJlNDVjMzZjNWJiYjVhZTIzNDBkMzNiMzJjMzQwOTNjMDk1CkF1dGhvcjogQnJ5
YW4gTydEb25vZ2h1ZSA8YnJ5YW4ub2Rvbm9naHVlQGxpbmFyby5vcmc+CgpwaHk6IGNvcmU6IEFk
ZCBwaHlfZ2V0X2J5X29mX25vZGUoKQoKQWRkIG5ldyBmdW5jdGlvbiBwaHlfZ2V0X2J5X29mX25v
ZGUoKSBhbGxvd2luZyBsb29rdXAgb2YgYSBwaHkgYnkKZGV2aWNlX25vZGUuIFNlcGFyYXRlcyBl
eGlzdGluZyBsb2dpYyBpbiBfb2ZfcGh5X2dldCgpIGludG8gYW4gaW50ZXJuYWwKaGVscGVyIG1l
dGhvZCBfb2ZfcGh5X2dldF93aXRoX2FyZ3MoKSB0byBhbGxvdyBmb3IgcmV1c2UgaW4gbmV3IG1l
dGhvZC4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3BoeS1jb3JlLmMgYi9kcml2ZXJzL3Bo
eS9waHktY29yZS5jCj4gaW5kZXggODlhZGRkNzMyYmZmMy4uNGE4ZTFkM2NkZmU3NSAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL3BoeS9waHktY29yZS5jCj4gKysrIGIvZHJpdmVycy9waHkvcGh5LWNv
cmUuYwoKWyAuLi4gXQoKPiBAQCAtMTAwMSw2ICsxMDE3LDQxIEBAIHN0cnVjdCBwaHkgKmRldm1f
b2ZfcGh5X2dldF9ieV9pbmRleChzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBkZXZpY2Vfbm9k
ZSAqbnAsCj4gIH0KPiAgRVhQT1JUX1NZTUJPTF9HUEwoZGV2bV9vZl9waHlfZ2V0X2J5X2luZGV4
KTsKPiAgCj4gKy8qKgo+ICsgKiBwaHlfZ2V0X2J5X29mX25vZGUoKSAtIGxvb2t1cCBhbmQgb2J0
YWluIGEgcmVmZXJlbmNlIHRvIGEgcGh5IGJ5IGRldmljZV9ub2RlCj4gKyAqIEBucDogbm9kZSBj
b250YWluaW5nIHRoZSBwaHkKPiArICoKPiArICogUmV0dXJucyB0aGUgcGh5IGFzc29jaWF0ZWQg
d2l0aCB0aGUgZGV2aWNlIG5vZGUgb3IgRVJSX1BUUi4KPiArICovCj4gK3N0cnVjdCBwaHkgKnBo
eV9nZXRfYnlfb2Zfbm9kZShzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wKQo+ICt7Cj4gKwlzdHJ1Y3Qg
b2ZfcGhhbmRsZV9hcmdzIGFyZ3MgPSB7IC5ucCA9IG5wLCAuYXJnc19jb3VudCA9IDAgfTsKCltT
ZXZlcml0eTogSGlnaF0KRG9lcyB0aGlzIGhhcmRjb2RlZCBhcmdzX2NvdW50ID0gMCBieXBhc3Mg
dGhlICNwaHktY2VsbHMgdmFsaWRhdGlvbiB0aGF0Cm5vcm1hbGx5IGhhcHBlbnMgaW4gb2ZfcGFy
c2VfcGhhbmRsZV93aXRoX2FyZ3MoKT8KCklmIGNhbGxlZCBvbiBhIFBIWSBwcm92aWRlciBub2Rl
IHdpdGggI3BoeS1jZWxscyA+IDAgKGUuZy4gcmVzb2x2ZWQgdmlhIGFuIE9GCmdyYXBoIGVuZHBv
aW50KSwgdGhlIHByb3ZpZGVyJ3Mgb2ZfeGxhdGUgY2FsbGJhY2sgd2lsbCByZWNlaXZlIGFyZ3Nf
Y291bnQgPSAwLgoKU2luY2UgbWFueSBjYWxsYmFja3MgZG9uJ3QgY2hlY2sgYXJnc19jb3VudCBh
bmQgZGlyZWN0bHkgYWNjZXNzIGFyZ3MtPmFyZ3NbMF0KKHdoaWNoIGlzIGluaXRpYWxpemVkIHRv
IDApLCBjb3VsZCB0aGV5IHNpbGVudGx5IHJldHVybiBQSFkgMCBpbnN0ZWFkIG9mCnJldHVybmlu
ZyBhbiBlcnJvciwgY2F1c2luZyB0aGUgY2FsbGVyIHRvIG9wZXJhdGUgb24gdGhlIHdyb25nIFBI
WSBpbnN0YW5jZT8KCj4gKwlzdHJ1Y3QgcGh5ICpwaHk7Cj4gKwo+ICsJaWYgKCFucCkKPiArCQly
ZXR1cm4gRVJSX1BUUigtRUlOVkFMKTsKPiArCj4gKwltdXRleF9sb2NrKCZwaHlfcHJvdmlkZXJf
bXV0ZXgpOwo+ICsKPiArCXBoeSA9IF9vZl9waHlfZ2V0X3dpdGhfYXJncygmYXJncyk7CgpbU2V2
ZXJpdHk6IE1lZGl1bV0KSXMgdGhpcyBtaXNzaW5nIGEgY29tcGF0aWJpbGl0eSBjaGVjayBmb3Ig
InVzYi1ub3AteGNlaXYiPwoKSW4gX29mX3BoeV9nZXQoKSwgbGVnYWN5IFVTQiBQSFlzIGFyZSBl
eHBsaWNpdGx5IGNoZWNrZWQgYW5kIHJldHVybiAtRU5PREVWCnNvIHRoZXkgY2FuIGdyYWNlZnVs
bHkgZmFsbCBiYWNrIHRvIHRoZSBvbGRlciB1c2ItcGh5IHN1YnN5c3RlbS4KCkJlY2F1c2UgcGh5
X2dldF9ieV9vZl9ub2RlKCkgZGlyZWN0bHkgY2FsbHMgX29mX3BoeV9nZXRfd2l0aF9hcmdzKCkg
d2l0aG91dAp0aGlzIGNoZWNrLCBjb3VsZCBhIGRyaXZlciB1c2luZyB0aGlzIEFQSSBvbiBhIGxl
Z2FjeSBVU0IgUEhZIG5vZGUgZmFpbCB0bwpmaW5kIGEgZ2VuZXJpYyBQSFkgcHJvdmlkZXIgYW5k
IHJlY2VpdmUgLUVQUk9CRV9ERUZFUiwgY2F1c2luZyBhbiBpbmZpbml0ZQpwcm9iZSBkZWZlcnJh
bCBsb29wPwoKPiArCj4gKwlpZiAoSVNfRVJSKHBoeSkpCj4gKwkJZ290byBvdXRfdW5sb2NrOwoK
LS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8y
MDI2MDkxNy1iNC1saW51eC1uZXh0LTI1LTAzLTEzLWR0c2kteDFlODAxMDAtY2Ftc3MtdjE5LTAt
MjFhZDhhNzZlOTQxQGxpbmFyby5vcmc/cGFydD0yCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
