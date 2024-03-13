Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64563C54791
	for <linux-phy@archiver.kernel.org>; Wed, 13 Mar 2024 06:51:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8b6Srh2+Gb95Wfm8wRQZag1NRQZK9BOS9iszQTODYgc=; b=CcA2/MEnRCEZqn
	QT/txB74Z8jRxDFOUIMt/vnDKjty4WThdjGjxWPB6w1/Sf7Et7PG/3yGdapJZOVs1kffk0qkaCPFk
	zJirSsaXm1wpyRlR6Cq+kjvO4UB0fEEcppgxOBOW/kQMhIByxC0CYTBXr0NhFgbRMhDmEtWas1U73
	SpxKm2c3tuzqWVr8XuXXD2vTqpdLW0crHvKIH279rSVfMCS/ffUZ54XDplmg3NdkvvmJ6J0+LxmeB
	C36XRky9sjDYAzT5Cm9EgqkwhF8BW+/WGcKLZJHpbWAtFqEcO/82hGYkgKCI+NOGg58L7VwQHtgXT
	U8qqF1Z9lxk75TIohl7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkISj-0000000969h-0CJR;
	Wed, 13 Mar 2024 06:51:41 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkISf-0000000967w-344p;
	Wed, 13 Mar 2024 06:51:39 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 42D6pBSN009136;
	Wed, 13 Mar 2024 01:51:11 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1710312671;
	bh=rzD+EzX/k7d5q06olV4JiQMj7NEc0ZLvW6rR4gLdO+Q=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=km6Clk7qp/+sN3+TgPu6pY/9+6Y4NqK55vGuGGeuzCQE07yYflykG9/SNVsFWTjyK
	 DHzTupyUxpiXmEFCei2+2g7Sg9HNbR+VcOrIuHFluhVAXESUuymUmH541bvrq171xZ
	 ZmcuNa5Rvcr0NnqaOTr/IWF6QnHGy9odQ3zclXBQ=
Received: from DFLE106.ent.ti.com (dfle106.ent.ti.com [10.64.6.27])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 42D6pBXi064923
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 13 Mar 2024 01:51:11 -0500
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 13
 Mar 2024 01:51:10 -0500
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 13 Mar 2024 01:51:10 -0500
Received: from localhost (uda0492258.dhcp.ti.com [172.24.227.9])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 42D6pAAW097772;
	Wed, 13 Mar 2024 01:51:10 -0500
Date: Wed, 13 Mar 2024 12:21:09 +0530
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: Thomas Richard <thomas.richard@bootlin.com>
CC: Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski
	<brgl@bgdev.pl>,
        Andy Shevchenko <andy@kernel.org>, Tony Lindgren
	<tony@atomide.com>,
        Haojian Zhuang <haojian.zhuang@linaro.org>,
        Vignesh R
	<vigneshr@ti.com>, Aaro Koskinen <aaro.koskinen@iki.fi>,
        Janusz Krzysztofik
	<jmkrzyszt@gmail.com>,
        Andi Shyti <andi.shyti@kernel.org>, Peter Rosin
	<peda@axentia.se>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I
	<kishon@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Lorenzo
 Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?=
	<kw@linux.com>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas
	<bhelgaas@google.com>,
        <linux-gpio@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <linux-omap@vger.kernel.org>,
        <linux-i2c@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-pci@vger.kernel.org>, <gregory.clement@bootlin.com>,
        <theo.lebrun@bootlin.com>, <thomas.petazzoni@bootlin.com>,
        <u-kumar1@ti.com>, <s-vadapalli@ti.com>
Subject: Re: [PATCH v4 18/18] PCI: j721e: Add suspend and resume support
Message-ID: <e4fc0b47-6a7f-4cc5-bb69-77655f775486@ti.com>
References: <20240102-j7200-pcie-s2r-v4-0-6f1f53390c85@bootlin.com>
 <20240102-j7200-pcie-s2r-v4-18-6f1f53390c85@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240102-j7200-pcie-s2r-v4-18-6f1f53390c85@bootlin.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240312_235137_958462_7268947C 
X-CRM114-Status: GOOD (  26.81  )
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

T24gTW9uLCBNYXIgMDQsIDIwMjQgYXQgMDQ6MzY6MDFQTSArMDEwMCwgVGhvbWFzIFJpY2hhcmQg
d3JvdGU6Cj4gRnJvbTogVGjDqW8gTGVicnVuIDx0aGVvLmxlYnJ1bkBib290bGluLmNvbT4KPiAK
PiBBZGQgc3VzcGVuZCBhbmQgcmVzdW1lIHN1cHBvcnQuIE9ubHkgdGhlIHJjIG1vZGUgaXMgc3Vw
cG9ydGVkLgo+IAo+IER1cmluZyB0aGUgc3VzcGVuZCBzdGFnZSBQRVJTVCMgaXMgYXNzZXJ0ZWQs
IHRoZW4gZGVhc3NlcnRlZCBkdXJpbmcgdGhlCj4gcmVzdW1lIHN0YWdlLgo+IAo+IFNpZ25lZC1v
ZmYtYnk6IFRow6lvIExlYnJ1biA8dGhlby5sZWJydW5AYm9vdGxpbi5jb20+Cj4gU2lnbmVkLW9m
Zi1ieTogVGhvbWFzIFJpY2hhcmQgPHRob21hcy5yaWNoYXJkQGJvb3RsaW4uY29tPgoKUmV2aWV3
ZWQtYnk6IFNpZGRoYXJ0aCBWYWRhcGFsbGkgPHMtdmFkYXBhbGxpQHRpLmNvbT4KClJlZ2FyZHMs
ClNpZGRoYXJ0aC4KCj4gLS0tCj4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvY2FkZW5jZS9wY2kt
ajcyMWUuYyB8IDg2ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hh
bmdlZCwgODYgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250
cm9sbGVyL2NhZGVuY2UvcGNpLWo3MjFlLmMgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2NhZGVu
Y2UvcGNpLWo3MjFlLmMKPiBpbmRleCA5YWY0ZmQ2NGMxZjkuLmExZjEyMzJlOGVlNSAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2NhZGVuY2UvcGNpLWo3MjFlLmMKPiArKysg
Yi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2NhZGVuY2UvcGNpLWo3MjFlLmMKPiBAQCAtNyw2ICs3
LDggQEAKPiAgICovCj4gIAo+ICAjaW5jbHVkZSA8bGludXgvY2xrLmg+Cj4gKyNpbmNsdWRlIDxs
aW51eC9jbGstcHJvdmlkZXIuaD4KPiArI2luY2x1ZGUgPGxpbnV4L2NvbnRhaW5lcl9vZi5oPgo+
ICAjaW5jbHVkZSA8bGludXgvZGVsYXkuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L2dwaW8vY29uc3Vt
ZXIuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L2lvLmg+Cj4gQEAgLTIyLDYgKzI0LDggQEAKPiAgI2lu
Y2x1ZGUgIi4uLy4uL3BjaS5oIgo+ICAjaW5jbHVkZSAicGNpZS1jYWRlbmNlLmgiCj4gIAo+ICsj
ZGVmaW5lIGNkbnNfcGNpZV90b19yYyhwKSBjb250YWluZXJfb2YocCwgc3RydWN0IGNkbnNfcGNp
ZV9yYywgcGNpZSkKPiArCj4gICNkZWZpbmUgRU5BQkxFX1JFR19TWVNfMgkweDEwOAo+ICAjZGVm
aW5lIFNUQVRVU19SRUdfU1lTXzIJMHg1MDgKPiAgI2RlZmluZSBTVEFUVVNfQ0xSX1JFR19TWVNf
MgkweDcwOAo+IEBAIC01ODgsNiArNTkyLDg3IEBAIHN0YXRpYyB2b2lkIGo3MjFlX3BjaWVfcmVt
b3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIAlwbV9ydW50aW1lX2Rpc2FibGUo
ZGV2KTsKPiAgfQo+ICAKPiArc3RhdGljIGludCBqNzIxZV9wY2llX3N1c3BlbmRfbm9pcnEoc3Ry
dWN0IGRldmljZSAqZGV2KQo+ICt7Cj4gKwlzdHJ1Y3QgajcyMWVfcGNpZSAqcGNpZSA9IGRldl9n
ZXRfZHJ2ZGF0YShkZXYpOwo+ICsKPiArCWlmIChwY2llLT5tb2RlID09IFBDSV9NT0RFX1JDKSB7
Cj4gKwkJZ3Bpb2Rfc2V0X3ZhbHVlX2NhbnNsZWVwKHBjaWUtPnJlc2V0X2dwaW8sIDApOwo+ICsJ
CWNsa19kaXNhYmxlX3VucHJlcGFyZShwY2llLT5yZWZjbGspOwo+ICsJfQo+ICsKPiArCWNkbnNf
cGNpZV9kaXNhYmxlX3BoeShwY2llLT5jZG5zX3BjaWUpOwo+ICsKPiArCXJldHVybiAwOwo+ICt9
Cj4gKwo+ICtzdGF0aWMgaW50IGo3MjFlX3BjaWVfcmVzdW1lX25vaXJxKHN0cnVjdCBkZXZpY2Ug
KmRldikKPiArewo+ICsJc3RydWN0IGo3MjFlX3BjaWUgKnBjaWUgPSBkZXZfZ2V0X2RydmRhdGEo
ZGV2KTsKPiArCXN0cnVjdCBjZG5zX3BjaWUgKmNkbnNfcGNpZSA9IHBjaWUtPmNkbnNfcGNpZTsK
PiArCWludCByZXQ7Cj4gKwo+ICsJcmV0ID0gajcyMWVfcGNpZV9jdHJsX2luaXQocGNpZSk7Cj4g
KwlpZiAocmV0IDwgMCkKPiArCQlyZXR1cm4gcmV0Owo+ICsKPiArCWo3MjFlX3BjaWVfY29uZmln
X2xpbmtfaXJxKHBjaWUpOwo+ICsKPiArCS8qCj4gKwkgKiBUaGlzIGlzIG5vdCBjYWxsZWQgZXhw
bGljaXRseSBpbiB0aGUgcHJvYmUsIGl0IGlzIGNhbGxlZCBieQo+ICsJICogY2Ruc19wY2llX2lu
aXRfcGh5KCkuCj4gKwkgKi8KPiArCXJldCA9IGNkbnNfcGNpZV9lbmFibGVfcGh5KHBjaWUtPmNk
bnNfcGNpZSk7Cj4gKwlpZiAocmV0IDwgMCkKPiArCQlyZXR1cm4gcmV0Owo+ICsKPiArCWlmIChw
Y2llLT5tb2RlID09IFBDSV9NT0RFX1JDKSB7Cj4gKwkJc3RydWN0IGNkbnNfcGNpZV9yYyAqcmMg
PSBjZG5zX3BjaWVfdG9fcmMoY2Ruc19wY2llKTsKPiArCj4gKwkJcmV0ID0gY2xrX3ByZXBhcmVf
ZW5hYmxlKHBjaWUtPnJlZmNsayk7Cj4gKwkJaWYgKHJldCA8IDApCj4gKwkJCXJldHVybiByZXQ7
Cj4gKwo+ICsJCS8qCj4gKwkJICogIlBvd2VyIFNlcXVlbmNpbmcgYW5kIFJlc2V0IFNpZ25hbCBU
aW1pbmdzIiB0YWJsZSBpbgo+ICsJCSAqIFBDSSBFWFBSRVNTIENBUkQgRUxFQ1RST01FQ0hBTklD
QUwgU1BFQ0lGSUNBVElPTiwgUkVWLiAzLjAKPiArCQkgKiBpbmRpY2F0ZXMgUEVSU1QjIHNob3Vs
ZCBiZSBkZWFzc2VydGVkIGFmdGVyIG1pbmltdW0gb2YgMTAwdXMKPiArCQkgKiBvbmNlIFJFRkNM
SyBpcyBzdGFibGUuIFRoZSBSRUZDTEsgdG8gdGhlIGNvbm5lY3RvciBpbiBSQwo+ICsJCSAqIG1v
ZGUgaXMgc2VsZWN0ZWQgd2hpbGUgZW5hYmxpbmcgdGhlIFBIWS4gU28gZGVhc3NlcnQgUEVSU1Qj
Cj4gKwkJICogYWZ0ZXIgMTAwIHVzLgo+ICsJCSAqLwo+ICsJCWlmIChwY2llLT5yZXNldF9ncGlv
KSB7Cj4gKwkJCWZzbGVlcCgxMDApOwo+ICsJCQlncGlvZF9zZXRfdmFsdWVfY2Fuc2xlZXAocGNp
ZS0+cmVzZXRfZ3BpbywgMSk7Cj4gKwkJfQo+ICsKPiArCQlyZXQgPSBjZG5zX3BjaWVfaG9zdF9s
aW5rX3NldHVwKHJjKTsKPiArCQlpZiAocmV0IDwgMCkgewo+ICsJCQljbGtfZGlzYWJsZV91bnBy
ZXBhcmUocGNpZS0+cmVmY2xrKTsKPiArCQkJcmV0dXJuIHJldDsKPiArCQl9Cj4gKwo+ICsJCS8q
Cj4gKwkJICogUmVzZXQgaW50ZXJuYWwgc3RhdHVzIG9mIEJBUnMgdG8gZm9yY2UgcmVpbml0aWFs
aXphdGlvbiBpbgo+ICsJCSAqIGNkbnNfcGNpZV9ob3N0X2luaXQoKS4KPiArCQkgKi8KPiArCQlm
b3IgKGVudW0gY2Ruc19wY2llX3JwX2JhciBiYXIgPSBSUF9CQVIwOyBiYXIgPD0gUlBfTk9fQkFS
OyBiYXIrKykKPiArCQkJcmMtPmF2YWlsX2liX2JhcltiYXJdID0gdHJ1ZTsKPiArCj4gKwkJcmV0
ID0gY2Ruc19wY2llX2hvc3RfaW5pdChyYyk7Cj4gKwkJaWYgKHJldCkgewo+ICsJCQljbGtfZGlz
YWJsZV91bnByZXBhcmUocGNpZS0+cmVmY2xrKTsKPiArCQkJcmV0dXJuIHJldDsKPiArCQl9Cj4g
Kwl9Cj4gKwo+ICsJcmV0dXJuIDA7Cj4gK30KPiArCj4gK3N0YXRpYyBERUZJTkVfTk9JUlFfREVW
X1BNX09QUyhqNzIxZV9wY2llX3BtX29wcywKPiArCQkJICAgICAgIGo3MjFlX3BjaWVfc3VzcGVu
ZF9ub2lycSwKPiArCQkJICAgICAgIGo3MjFlX3BjaWVfcmVzdW1lX25vaXJxKTsKPiArCj4gIHN0
YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJpdmVyIGo3MjFlX3BjaWVfZHJpdmVyID0gewo+ICAJLnBy
b2JlICA9IGo3MjFlX3BjaWVfcHJvYmUsCj4gIAkucmVtb3ZlX25ldyA9IGo3MjFlX3BjaWVfcmVt
b3ZlLAo+IEBAIC01OTUsNiArNjgwLDcgQEAgc3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIg
ajcyMWVfcGNpZV9kcml2ZXIgPSB7Cj4gIAkJLm5hbWUJPSAiajcyMWUtcGNpZSIsCj4gIAkJLm9m
X21hdGNoX3RhYmxlID0gb2ZfajcyMWVfcGNpZV9tYXRjaCwKPiAgCQkuc3VwcHJlc3NfYmluZF9h
dHRycyA9IHRydWUsCj4gKwkJLnBtCT0gcG1fc2xlZXBfcHRyKCZqNzIxZV9wY2llX3BtX29wcyks
Cj4gIAl9LAo+ICB9Owo+ICBidWlsdGluX3BsYXRmb3JtX2RyaXZlcihqNzIxZV9wY2llX2RyaXZl
cik7Cj4gCj4gLS0gCj4gMi4zOS4yCj4gCj4gCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdAps
aW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
