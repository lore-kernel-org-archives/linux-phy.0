Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13DCBC624D6
	for <linux-phy@archiver.kernel.org>; Thu,  3 Sep 2026 23:11:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hENNeaoI9AQJiJTeYCXEnubKMCxcAs4p0z20pNF0aI8=; b=Fmqmk6Y/YGBJ8W
	paLpHihqUo/OmJ37fdkZlCmXIwGvdsJGdoxngkPFE2VCAjnbxm2n+Rs3mgJKryQ81mEVbH/f9nDtQ
	JRt3rlDMZMjbmVvu/bJyZ0IIC6nAqEuZ87v9gQS657lWBlM1hXujsqk5IAuDT8R498QNPFMHjl4d6
	eIVfck4n0YE3VzVD4BF4HVTAfShoIvEMtQR2UZXwh0R0h2UJjrBy3QBobjx1OQAPK99P1RxQQ89jx
	mLDjeJmoNPe069h65yCU5rQGqPxli8ohTpzLavUfyFJr16PZMISzrRFM9Ssv2f5Wh38qBB7HzBna7
	hrYMvmUT1ALnItKmxjJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2GaQ-00000000kvB-2mQO;
	Thu, 03 Sep 2026 23:11:14 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2GaP-00000000kv4-3Rea
	for linux-phy@lists.infradead.org;
	Thu, 03 Sep 2026 23:11:13 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 2460F60546;
	Thu,  3 Sep 2026 23:11:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 651021F000E9;
	Thu,  3 Sep 2026 23:11:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788477072;
	bh=VpFd+OOzZkU6T7/ca7PRvbUYtzqVMhIfAUqsUoQ6D2c=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=nLn+FdvHEd3xnsVROqtq2G7xMSwoeSTk+rVsUhmKiU4nQhMwZ5U8dKc2TzEpB5hGa
	 N1CfmNjQT3Nju5sq26xv+bGUrpkNAf0+OdA8T9IoECMTvA9IY9UascI60HEag5CgX+
	 QRrGifa9LdU6FHoQgTquWCcOdCYoAX8iYYinhhO5+2RDCW6zWTaRN3btEr3wme8YSo
	 kvyHjX6Oe3Veshrw7Rnp2J7EANHHjfKMsmQu9620TM9xdlZWir5dX2xZv+gKsLMrZC
	 520X1trYtTwlZW1/M+5owRalZ6R2rq7yq2hD+f2WORfegCHdEeBjXs0s6VZ3k56JG5
	 BK2KjtyEL9xRA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v14 2/4] phy: core: Add phy_get_by_of_node()
To: =?utf-8?b?QnJ5YW4gTydEb25vZ2h1ZQ==?= <bryan.odonoghue@linaro.org>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, media-ci@linuxtv.org, linux-clk@vger.kernel.org, neil.armstrong@linaro.org, vkoul@kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, olteanv@gmail.com
In-Reply-To: <20260903-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v14-2-01ef1eced075@linaro.org>
References: <20260903-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v14-0-01ef1eced075@linaro.org>
 <20260903-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v14-2-01ef1eced075@linaro.org>
Date: Thu, 03 Sep 2026 23:11:12 +0000
Message-Id: <20260903231112.651021F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIG5ld2x5IGlu
dHJvZHVjZWQgYHBoeV9nZXRfYnlfb2Zfbm9kZSgpYCBBUEkgbWlzc2VzIHRoZSBgdXNiLW5vcC14
Y2VpdmAgY29tcGF0aWJpbGl0eSBjaGVjaywgY2F1c2luZyBpbmZpbml0ZSBwcm9iZSBkZWZlcnJh
bHMgaW5zdGVhZCBvZiByZXR1cm5pbmcgYC1FTk9ERVZgIHdoZW4gY2FsbGVkIG9uIGEgbGVnYWN5
IFVTQiBQSFkgbm9kZS4KLS0KCmNvbW1pdCAyMzY5Yjk4YzdjMGQwYTcwNGEwMmZmOGYzM2EwMzNj
OWMyMzJlYThlCkF1dGhvcjogQnJ5YW4gTydEb25vZ2h1ZSA8YnJ5YW4ub2Rvbm9naHVlQGxpbmFy
by5vcmc+CgpwaHk6IGNvcmU6IEFkZCBwaHlfZ2V0X2J5X29mX25vZGUoKQogICAgCkFkZCBuZXcg
ZnVuY3Rpb24gcGh5X2dldF9ieV9vZl9ub2RlKCkgYWxsb3dpbmcgbG9va3VwIG9mIGEgcGh5IGJ5
CmRldmljZV9ub2RlLiBTZXBhcmF0ZXMgZXhpc3RpbmcgbG9naWMgaW4gX29mX3BoeV9nZXQoKSBp
bnRvIGFuIGludGVybmFsCmhlbHBlciBtZXRob2QgX29mX3BoeV9nZXRfd2l0aF9hcmdzKCkgdG8g
YWxsb3cgZm9yIHJldXNlIGluIG5ldyBtZXRob2QuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3Bo
eS9waHktY29yZS5jIGIvZHJpdmVycy9waHkvcGh5LWNvcmUuYwo+IGluZGV4IGNkOWFjZTEyNTU2
N2EuLjFkMDYwYmMyMmQwMmMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvcGh5LWNvcmUuYwo+
ICsrKyBiL2RyaXZlcnMvcGh5L3BoeS1jb3JlLmMKPiBAQCAtNjA0LDIyICs2MDQsNDkgQEAgaW50
IHBoeV92YWxpZGF0ZShzdHJ1Y3QgcGh5ICpwaHksIGVudW0gcGh5X21vZGUgbW9kZSwgaW50IHN1
Ym1vZGUsCj4gIH0KPiAgRVhQT1JUX1NZTUJPTF9HUEwocGh5X3ZhbGlkYXRlKTsKPiAgCj4gKy8q
Kgo+ICsgKiBfb2ZfcGh5X2dldF93aXRoX2FyZ3MoKSAtIGxvb2t1cCBhbmQgb2J0YWluIGEgcmVm
ZXJlbmNlIHRvIGEgcGh5IGJ5IG9mX3BoYW5kbGVfYXJncwo+ICsgKiBAYXJnczogb2ZfcGhhbmRs
ZV9hcmdzIHRvIHRoZSBwaHkKPiArICoKPiArICogUmV0dXJucyB0aGUgcGh5IGZyb20gdGhlIHBy
b3ZpZGVyJ3Mgb2ZfeGxhdGUsIC1FTk9ERVYgaWYgZGlzYWJsZWQsCj4gKyAqIC1FUFJPQkVfREVG
RVIgaWYgdGhlIHByb3ZpZGVyIGlzIG5vdCB5ZXQgcmVnaXN0ZXJlZC4KPiArICovCj4gK3N0YXRp
YyBzdHJ1Y3QgcGh5ICpfb2ZfcGh5X2dldF93aXRoX2FyZ3Moc3RydWN0IG9mX3BoYW5kbGVfYXJn
cyAqYXJncykKPiArewo+ICsJc3RydWN0IHBoeSAqcGh5Owo+ICsJc3RydWN0IHBoeV9wcm92aWRl
ciAqcGh5X3Byb3ZpZGVyOwo+ICsKPiArCXBoeV9wcm92aWRlciA9IG9mX3BoeV9wcm92aWRlcl9s
b29rdXAoYXJncy0+bnApOwo+ICsJaWYgKElTX0VSUihwaHlfcHJvdmlkZXIpIHx8ICF0cnlfbW9k
dWxlX2dldChwaHlfcHJvdmlkZXItPm93bmVyKSkKPiArCQlyZXR1cm4gRVJSX1BUUigtRVBST0JF
X0RFRkVSKTsKCltTZXZlcml0eTogTWVkaXVtXQpXaWxsIHRoaXMgbG9va3VwIGFsd2F5cyBmYWls
IGZvciB1c2Itbm9wLXhjZWl2IFBIWXMsIGluY29ycmVjdGx5IHRyaWdnZXJpbmcKdGhlIC1FUFJP
QkVfREVGRVIgcmV0dXJuPwoKWyAuLi4gXQoKPiBAQCAtOTk3LDYgKzEwMDksNDEgQEAgc3RydWN0
IHBoeSAqZGV2bV9vZl9waHlfZ2V0X2J5X2luZGV4KHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0
IGRldmljZV9ub2RlICpucCwKPiAgfQo+ICBFWFBPUlRfU1lNQk9MX0dQTChkZXZtX29mX3BoeV9n
ZXRfYnlfaW5kZXgpOwo+ICAKPiArLyoqCj4gKyAqIHBoeV9nZXRfYnlfb2Zfbm9kZSgpIC0gbG9v
a3VwIGFuZCBvYnRhaW4gYSByZWZlcmVuY2UgdG8gYSBwaHkgYnkgZGV2aWNlX25vZGUKPiArICog
QG5wOiBub2RlIGNvbnRhaW5pbmcgdGhlIHBoeQo+ICsgKgo+ICsgKiBSZXR1cm5zIHRoZSBwaHkg
YXNzb2NpYXRlZCB3aXRoIHRoZSBkZXZpY2Ugbm9kZSBvciBFUlJfUFRSLgo+ICsgKi8KPiArc3Ry
dWN0IHBoeSAqcGh5X2dldF9ieV9vZl9ub2RlKHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnApCj4gK3sK
PiArCXN0cnVjdCBvZl9waGFuZGxlX2FyZ3MgYXJncyA9IHsgLm5wID0gbnAsIC5hcmdzX2NvdW50
ID0gMCB9Owo+ICsJc3RydWN0IHBoeSAqcGh5Owo+ICsKPiArCWlmICghbnApCj4gKwkJcmV0dXJu
IEVSUl9QVFIoLUVJTlZBTCk7Cj4gKwo+ICsJbXV0ZXhfbG9jaygmcGh5X3Byb3ZpZGVyX211dGV4
KTsKPiArCj4gKwlwaHkgPSBfb2ZfcGh5X2dldF93aXRoX2FyZ3MoJmFyZ3MpOwoKW1NldmVyaXR5
OiBNZWRpdW1dCkRvZXMgdGhpcyBjYWxsIHRoZSBoZWxwZXIgd2l0aG91dCB2YWxpZGF0aW5nIGlm
IHRoZSBub2RlIHJlcHJlc2VudHMgYSBsZWdhY3kKdXNiLW5vcC14Y2VpdiBQSFk/CgpJbiBfb2Zf
cGh5X2dldCgpLCB0aGVyZSBpcyBhIGNvbXBhdGliaWxpdHkgY2hlY2sgZm9yIHVzYi1ub3AteGNl
aXYgdGhhdApyZXR1cm5zIC1FTk9ERVYgYmVmb3JlIGNhbGxpbmcgdGhlIGxvb2t1cCBsb2dpYy4g
QmVjYXVzZSB0aGF0IGNoZWNrIHdhcwpsZWZ0IGluIF9vZl9waHlfZ2V0KCkgcmF0aGVyIHRoYW4g
YmVpbmcgbW92ZWQgdG8gdGhlIHNoYXJlZApfb2ZfcGh5X2dldF93aXRoX2FyZ3MoKSBoZWxwZXIs
IGNhbGxpbmcgdGhpcyBuZXcgZ2VuZXJpYyBBUEkgb24gYSBsZWdhY3kKVVNCIFBIWSBub2RlIHdp
bGwgcmVzdWx0IGluIC1FUFJPQkVfREVGRVIgaW5zdGVhZCBvZiAtRU5PREVWLgoKVGhpcyBtaWdo
dCBwcmV2ZW50IGRyaXZlcnMgZnJvbSBmYWxsaW5nIGJhY2sgdG8gdGhlIGxlZ2FjeSBVU0IgUEhZ
IHN1YnN5c3RlbSwKcG90ZW50aWFsbHkgY2F1c2luZyBpbmZpbml0ZSBwcm9iZSBkZWZlcnJhbHMu
Cgo+ICsKPiArCWlmIChJU19FUlIocGh5KSkKPiArCQlnb3RvIG91dF91bmxvY2s7CgotLSAKU2Fz
aGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwOTAz
LWI0LWxpbnV4LW5leHQtMjUtMDMtMTMtZHRzaS14MWU4MDEwMC1jYW1zcy12MTQtMC0wMWVmMWVj
ZWQwNzVAbGluYXJvLm9yZz9wYXJ0PTIKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
