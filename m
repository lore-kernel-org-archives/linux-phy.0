Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7AAAC43458
	for <linux-phy@archiver.kernel.org>; Thu,  9 Jul 2026 19:23:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6f7GcYYRHcsB+lrkATKBlIpK+q7T8LOJ7gUyobdDMF4=; b=fMv5NBkYVz3NKg
	Y1Serfq2eT/+RiDMaPK8Tfup3CgWfpIb7VDkS/zNubUGDF76nUsvhJ1Z1iiTwgtbmREoRTexo+vo1
	gbLfQNtWclAfYMlgY3fUzwXsVGcibb6xLFME7IIO6K/hu81vv7gjdTyT1gh83ExqtJPD+k7iSN4Kg
	Qug5PDpxxVasZp3G272MnnN///4jkcyUK8b1FvbKVzPDgTkDEUNiPmf4g5lplISGF3ZwvNV2IMbDn
	td6HKxTbHPef9zJT//MQPBnEO44vwsPnqlEM2X8Jbbs+XhB0MDab1q+bjb2MQDKDaSiK8sZG5QYG9
	1LYDosfyWtn9d3WAEgAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whuLQ-00000003SRo-2jJf;
	Thu, 09 Jul 2026 19:23:36 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whuLP-00000003SRO-2kP5
	for linux-phy@lists.infradead.org;
	Thu, 09 Jul 2026 19:23:35 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 69503414A1;
	Thu,  9 Jul 2026 19:23:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D07301F000E9;
	Thu,  9 Jul 2026 19:23:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783625015;
	bh=ORQM2+ASiYeX/Rfjm2A9eeKNU3LG8Q6cdF2YpPHQtp8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=H2kw4e130BSP2mz0038CobXqYFHqdALVDJdHJpyycWOqNxYmCAtRgAhHXnH5KHS+n
	 NZhwYDd8cbGYtSH1TozfZxvMs0ku5DXR5AiMW87rxIB6rGtvI7EWy+YAoy/ZDsoKQR
	 tUnlYATib8Q/8YUMVNdaJOandQ6JZ8pncyzSutKJGbumasgVmnIZa1mminxtIB9VhY
	 wKXQBv/2n3Z0IyKMFOo6QDUxcqGduz5JkO4cJTAFcVWcMoPSMyCToVQHvN0bzAO90L
	 xjPdct2PK5P7ncWWZsgqoxwT6/ZcKqBKB+mSyPQoIC0jO5TFfOrhUE47gdJyz8M6bD
	 Bo6jehlQdbxRw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 17/36] phy: rockchip: usbdp: Drop DP HPD handling
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: conor+dt@kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com, vkoul@kernel.org, neil.armstrong@linaro.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260709-rockchip-usbdp-cleanup-v11-17-a149ac60f76c@collabora.com>
References: <20260709-rockchip-usbdp-cleanup-v11-0-a149ac60f76c@collabora.com>
 <20260709-rockchip-usbdp-cleanup-v11-17-a149ac60f76c@collabora.com>
Date: Thu, 09 Jul 2026 19:23:34 +0000
Message-Id: <20260709192334.D07301F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBUaGUgdHlwZWNfbXV4X3NldCBjYWxsYmFjayBleHBsaWNpdGx5IGlnbm9yZXMgYmFz
ZSBUeXBlLUMgc3RhdGVzIChUWVBFQ19TVEFURV9TQUZFIGFuZCBUWVBFQ19TVEFURV9VU0IpLCBw
cmV2ZW50aW5nIHRoZSBQSFkgZnJvbSByZXZlcnRpbmcgdG8gc3RhbmRhcmQgVVNCIG1vZGUgd2hl
biBleGl0aW5nIERQIEFsdE1vZGUuCi0tCgotLS0gUGF0Y2ggWzE3XTogW1BBVENIIHYxMSAxNy8z
Nl0gcGh5OiByb2NrY2hpcDogdXNiZHA6IERyb3AgRFAgSFBEIGhhbmRsaW5nIC0tLQpjb21taXQg
NGRkMzM1M2U3ZmE4ZTEyN2I3MDI4MWRhOGMyZTg1NjQ1YmZiZWY2NQpBdXRob3I6IFNlYmFzdGlh
biBSZWljaGVsIDxzZWJhc3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPgoKcGh5OiByb2NrY2hp
cDogdXNiZHA6IERyb3AgRFAgSFBEIGhhbmRsaW5nCgpUaGlzIGNvbW1pdCByZW1vdmVzIHRoZSBI
UEQgKEhvdCBQbHVnIERldGVjdCkgaGFuZGxpbmcgbG9naWMgZnJvbSB0aGUKVVNCRFAgUEhZIGRy
aXZlciwgZGVsZWdhdGluZyBpdCB0byB0aGUgZGlzcGxheXBvcnQgY29udHJvbGxlci4gSXQgYWxz
bwpzaW1wbGlmaWVzIHRoZSB0eXBlY19tdXhfc2V0IGNhbGxiYWNrIGJ5IGRyb3BwaW5nIEFsdE1v
ZGUgc3BlY2lmaWMgZXZlbnQKaGFuZGxpbmcgYW5kIGFkZGluZyBhbiBlYXJseSByZXR1cm4gZm9y
IG5vbi1EUCBldmVudHMuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHkt
cm9ja2NoaXAtdXNiZHAuYyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2Jk
cC5jCj4gaW5kZXggOGFjNmE4M2IwYjJhOS4uMjQxMDg4MTZlM2I5NSAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYwo+ICsrKyBiL2RyaXZlcnMv
cGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jCgpbIC4uLiBdCgo+IEBAIC0xMzA5LDYg
KzEyNjcsMTQgQEAgc3RhdGljIGludCBya191ZHBoeV90eXBlY19tdXhfc2V0KHN0cnVjdCB0eXBl
Y19tdXhfZGV2ICptdXgsCj4gIAlzdHJ1Y3QgcmtfdWRwaHkgKnVkcGh5ID0gdHlwZWNfbXV4X2dl
dF9kcnZkYXRhKG11eCk7Cj4gIAl1OCBtb2RlOwo+ICAKPiArCS8qCj4gKwkgKiBJZ25vcmUgbXV4
IGV2ZW50cyBub3QgaW52b2x2aW5nIERQIEFsdE1vZGUsIGJlY2F1c2UKPiArCSAqIHRoZSBtb2Rl
IGZpZWxkIGlzIGJlaW5nIHJldXNlZCwgZS5nLiBzdGF0ZS0+bW9kZSA9PSA0Cj4gKwkgKiBjb3Vs
ZCBiZSBlaXRoZXIgVFlQRUNfTU9ERV9VU0I0IG9yIFRZUEVDX0RQX1NUQVRFX0MuCj4gKwkgKi8K
PiArCWlmICghc3RhdGUtPmFsdCB8fCBzdGF0ZS0+YWx0LT5zdmlkICE9IFVTQl9UWVBFQ19EUF9T
SUQpCj4gKwkJcmV0dXJuIDA7CgpbU2V2ZXJpdHk6IEhpZ2hdClRoaXMgaXNuJ3QgYSBidWcgaW50
cm9kdWNlZCBieSB0aGlzIHBhdGNoLCBidXQgZG9lcyB0aGlzIGVhcmx5IHJldHVybgpwcmV2ZW50
IHRoZSBQSFkgZnJvbSByZXZlcnRpbmcgdG8gc3RhbmRhcmQgVVNCIG1vZGUgd2hlbiBleGl0aW5n
IERQIEFsdE1vZGU/CgpXaGVuIGEgdXNlciBkeW5hbWljYWxseSBkaXNhYmxlcyBEUCBBbHRNb2Rl
IG9yIHRoZSBEUCBzaW5rIGRpc2Nvbm5lY3RzLAp0aGUgVHlwZS1DIGNvcmUgaW52b2tlcyB0eXBl
Y19tdXhfc2V0IHdpdGggc3RhdGUtPm1vZGUgPSBUWVBFQ19TVEFURV9TQUZFCmFuZCBzdGF0ZS0+
YWx0ID0gTlVMTC4KCklmIHRoaXMgcmV0dXJucyAwIGltbWVkaWF0ZWx5IGJlY2F1c2Ugc3RhdGUt
PmFsdCBpcyBOVUxMLCB1ZHBoeS0+bW9kZQpyZW1haW5zIHN0dWNrIGF0IFVEUEhZX01PREVfRFAu
IExhdGVyLCBya191ZHBoeV91c2IzX3BoeV9pbml0KCkgd2lsbCBzZWUKdGhhdCB0aGUgVVNCIG1v
ZGUgaXMgbm90IHNldCAoISh1ZHBoeS0+bW9kZSAmIFVEUEhZX01PREVfVVNCKSkgYW5kCndpbGwg
YWN0aXZlbHkgZGlzYWJsZSB0aGUgVVNCMyBwb3J0LgoKU2hvdWxkIHRoaXMgY29uZGl0aW9uIGJl
IGFkanVzdGVkIHRvIG9ubHkgZmlsdGVyIG1vZGFsIHN0YXRlcywgcGVyaGFwcyBieQpjaGVja2lu
ZyBpZiBzdGF0ZS0+bW9kZSA+PSBUWVBFQ19TVEFURV9NT0RBTCBiZWZvcmUgZmlsdGVyaW5nIGJh
c2VkIG9uCnRoZSBBbHRNb2RlIFNWSUQ/Cgo+ICsKPiAgCW11dGV4X2xvY2soJnVkcGh5LT5tdXRl
eCk7CgpbIC4uLiBdCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRl
di8jL3BhdGNoc2V0LzIwMjYwNzA5LXJvY2tjaGlwLXVzYmRwLWNsZWFudXAtdjExLTAtYTE0OWFj
NjBmNzZjQGNvbGxhYm9yYS5jb20/cGFydD0xNwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
