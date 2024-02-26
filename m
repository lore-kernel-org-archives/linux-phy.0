Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4ADDBC54E4A
	for <linux-phy@archiver.kernel.org>; Mon, 26 Feb 2024 17:05:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fbu4K2WYDiDRaxrAAYT4Lh7EUxtncGlWlQwOl2N2NpU=; b=J3vQSb4ghJ2iC7
	aGunBPtV6Omb+SWr3imUwiF0mslzz4bSeHk0roeZZq4J89NZPmfMyqPjBfI/EWzuB1YHmDoFSA90S
	dmjBpieBiZ0DtFxPErRZTWMsorgD5d+UmruJcbQjfUG0IJrH8DB0++0aLnvfbHoDrtEp2imrMuvEi
	kTk7TsqUMB2mWTLUOmGmA2JZa7DQJ0DaBt5X+wDAEXXEG/51fN2FWkVV9veyXL7yk8QjqeGfZqB72
	C7yW4jJvQBm8/Rawx1kdN5rjKLbpX7gYYt2mR7QtAOXRUzijgcYe89GBTXq75u9egosL7k5dUhnnB
	h6rhAwTICWwiocqoPrgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1reePx-00000001oxV-41ei;
	Mon, 26 Feb 2024 17:05:29 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1reePt-00000001ot1-0k5H;
	Mon, 26 Feb 2024 17:05:27 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id D88B0240004;
	Mon, 26 Feb 2024 17:05:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1708967118;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Tn9G+qXphFLUMlqaCdrIW1lI3L/sy7DuNc4RBARSO5c=;
	b=UwCcma0by2RTCLSjDCaPHB11eVl9Hv4E4WFacUMgZUZtZi0PL3lvGYEBvnQRj1nwItn3xV
	FtyUM6pIm2R5EQvStPsW9ZHAPY+m5Cs2ZqCB44BPWuB1DKrC3Z70IpsGQFOSgZs9zVzG5r
	XPasAQae0LgApFmbzOsIWRzK54Q48Qk3NySaufIAiOTAVYhtSJTWLBDRMeHY8IH4FiuTSV
	V0nzgn2/dyDNy41C8LVe5bltpaY6nseXrji9JBI3F9n7HNzSl+e9n7MuT+Cj5CxYqlJGbl
	2Z/rvRso9ouN18O8ajWRzHIZFS/DIJjpsd62nguxkjQdhlOKNsTOlnki4dxT/g==
Message-ID: <e24c77e6-5fcd-42f0-b93c-b4e6ce17e75a@bootlin.com>
Date: Mon, 26 Feb 2024 18:05:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 17/18] PCI: j721e: add reset GPIO to struct j721e_pcie
Content-Language: en-US
To: Andy Shevchenko <andy@kernel.org>
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Tony Lindgren <tony@atomide.com>,
 Haojian Zhuang <haojian.zhuang@linaro.org>, Vignesh R <vigneshr@ti.com>,
 Aaro Koskinen <aaro.koskinen@iki.fi>,
 Janusz Krzysztofik <jmkrzyszt@gmail.com>, Andi Shyti
 <andi.shyti@kernel.org>, Peter Rosin <peda@axentia.se>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org,
 linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-pci@vger.kernel.org, gregory.clement@bootlin.com,
 theo.lebrun@bootlin.com, thomas.petazzoni@bootlin.com, u-kumar1@ti.com
References: <20240102-j7200-pcie-s2r-v3-0-5c2e4a3fac1f@bootlin.com>
 <20240102-j7200-pcie-s2r-v3-17-5c2e4a3fac1f@bootlin.com>
 <Zc42HIibtoXqLyEA@smile.fi.intel.com>
From: Thomas Richard <thomas.richard@bootlin.com>
In-Reply-To: <Zc42HIibtoXqLyEA@smile.fi.intel.com>
X-GND-Sasl: thomas.richard@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240226_090525_452042_0C045C9E 
X-CRM114-Status: GOOD (  15.18  )
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

T24gMi8xNS8yNCAxNzowNCwgQW5keSBTaGV2Y2hlbmtvIHdyb3RlOgo+IE9uIFRodSwgRmViIDE1
LCAyMDI0IGF0IDA0OjE4OjAyUE0gKzAxMDAsIFRob21hcyBSaWNoYXJkIHdyb3RlOgo+PiBGcm9t
OiBUaMOpbyBMZWJydW4gPHRoZW8ubGVicnVuQGJvb3RsaW4uY29tPgo+Pgo+PiBBZGQgcmVzZXQg
R1BJTyB0byBzdHJ1Y3QgajcyMWVfcGNpZSwgc28gaXQgY2FuIGJlIHVzZWQgYXQgc3VzcGVuZCBh
bmQKPj4gcmVzdW1lIHN0YWdlcy4KPiAKPiAuLi4KPiAKPj4gIAljYXNlIFBDSV9NT0RFX1JDOgo+
PiAtCQlncGlvZCA9IGRldm1fZ3Bpb2RfZ2V0X29wdGlvbmFsKGRldiwgInJlc2V0IiwgR1BJT0Rf
T1VUX0xPVyk7Cj4+IC0JCWlmIChJU19FUlIoZ3Bpb2QpKSB7Cj4+IC0JCQlyZXQgPSBQVFJfRVJS
KGdwaW9kKTsKPj4gKwkJcGNpZS0+cmVzZXRfZ3BpbyA9IGRldm1fZ3Bpb2RfZ2V0X29wdGlvbmFs
KGRldiwgInJlc2V0IiwgR1BJT0RfT1VUX0xPVyk7Cj4+ICsJCWlmIChJU19FUlIocGNpZS0+cmVz
ZXRfZ3BpbykpIHsKPj4gKwkJCXJldCA9IFBUUl9FUlIocGNpZS0+cmVzZXRfZ3Bpbyk7Cj4+ICAJ
CQlpZiAocmV0ICE9IC1FUFJPQkVfREVGRVIpCj4+ICAJCQkJZGV2X2VycihkZXYsICJGYWlsZWQg
dG8gZ2V0IHJlc2V0IEdQSU9cbiIpOwo+PiAgCQkJZ290byBlcnJfZ2V0X3N5bmM7Cj4+IEBAIC01
MDQsOSArNTA0LDkgQEAgc3RhdGljIGludCBqNzIxZV9wY2llX3Byb2JlKHN0cnVjdCBwbGF0Zm9y
bV9kZXZpY2UgKnBkZXYpCj4+ICAJCSAqIG1vZGUgaXMgc2VsZWN0ZWQgd2hpbGUgZW5hYmxpbmcg
dGhlIFBIWS4gU28gZGVhc3NlcnQgUEVSU1QjCj4+ICAJCSAqIGFmdGVyIDEwMCB1cy4KPj4gIAkJ
ICovCj4+IC0JCWlmIChncGlvZCkgewo+PiArCQlpZiAocGNpZS0+cmVzZXRfZ3Bpbykgewo+PiAg
CQkJdXNsZWVwX3JhbmdlKDEwMCwgMjAwKTsKPj4gLQkJCWdwaW9kX3NldF92YWx1ZV9jYW5zbGVl
cChncGlvZCwgMSk7Cj4+ICsJCQlncGlvZF9zZXRfdmFsdWVfY2Fuc2xlZXAocGNpZS0+cmVzZXRf
Z3BpbywgMSk7Cj4+ICAJCX0KPiAKPiBJbnN0ZWFkIG9mIGFsbCB0aGlzLCBqdXN0IGFkZCBvbmUg
bGluZSBhc3NpZ25tZW50LiBNb3Jlb3ZlciwgYmVmb3JlIG9yIGFmdGVyCj4gdGhpcyBwYXRjaCBy
ZWZhY3RvciB0aGUgY29kZSB0byB1c2UgcmV0ID0gZGV2X2Vycl9wcm9iZSguLi4pOyBwYXR0ZXJu
IHRoYXQKPiBlbGltaW5hdGVzIHRob3NlIGRlZmVycmFsIHByb2JlIGNoZWNrcy4KCkhpIEFuZHks
CgpJJ20gbm90IHN1cmUgd2hhdCB5b3UgZXhhY3RseSB3YW50IHdoZW4geW91IHdyaXRlICJqdXN0
IGFkZCBvbmUgbGluZQphc3NpZ25tZW50Ii4KRm9yIHRoZSBkZXZfZXJyX3Byb2JlKCkgaXQncyBv
a2F5LCBpdCB3aWxsIGJlIGZpeGVkIGluIHRoZSBuZXh0IGl0ZXJhdGlvbi4KClJlZ2FyZHMsCgot
LSAKVGhvbWFzIFJpY2hhcmQsIEJvb3RsaW4KRW1iZWRkZWQgTGludXggYW5kIEtlcm5lbCBlbmdp
bmVlcmluZwpodHRwczovL2Jvb3RsaW4uY29tCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
