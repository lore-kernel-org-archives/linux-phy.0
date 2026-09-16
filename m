Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFCC6C88E7F
	for <linux-phy@archiver.kernel.org>; Wed, 16 Sep 2026 18:47:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KeSduiEA2LxumY53OyOFvW2fk3znvouO20fSqmdbiAk=; b=d/Y5XZj51i781Q
	0j1NG2D331h76kIhKs82Nlj/aECMpy8BtkUUruMzQNqWyF13WEPNv6DFB2gsN46CPqIQIH3k8fUQ1
	IdGgVk9S5YcYf2t+zc/+Bmq4g/ljLuXtTLA0R2Uznqzg9X53snPIyeCon8E1463kWpOVmzQRn62TB
	ySW3fMB28UP1m+QdroOAiiv6JxpZqdl/3jbGkhTYvy3RI6OtScPbtVlL9vqWkrvnPYkyLnM18DMQH
	5IDcv46QaOjWt21GYdhasIona8D+QazKsa/rVJLeA7eYeq9tFtsRzBIvHvlPaK8N8/Zai07e/erZy
	xCV7hrUoW+91y5oMC0hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6ueu-00000009ywe-1UBi;
	Wed, 16 Sep 2026 18:47:04 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6uet-00000009ywR-1F6B
	for linux-phy@lists.infradead.org;
	Wed, 16 Sep 2026 18:47:03 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id BCADF43ECC;
	Wed, 16 Sep 2026 18:47:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D2381F00893;
	Wed, 16 Sep 2026 18:47:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789584422;
	bh=Fw3bbw2C6I5af6YuRppv3mIAN6eKYFCwExa+3Z3rhqo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=FqmJkGWL2TO/gcli2jLS451IkTvr2N+u/CV+brPZPdtX1HC/4u1JyU5RJPklj+zrG
	 6pY7aH8aygG+m9DxGnihdQ5u708zzmZZWu0N6b3jz4RX9j7SsobortMt4XxTo2TVDn
	 l+z2uMA3zAW9EHsYs3TxFvlqxgWeuCkHOm4xtdWdNn6iWxeVTRQWlGUM3XYBvYp6f0
	 0KeJ0N59u5EWAScW4+ask8DWDqtFHvbV4CuuQBAjsig47XZv7lEAkFu5FlqGVEMjAh
	 BwUmJ/xLovy6d8sNcZhLPDCwX80+3NbR5Jd9gZSDQns8gAIhSBfzOtkrfQXHLST8sq
	 mIYt9L/fdgavw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 3/3] phy: qcom: qmp-combo: Add USB3+DP PHY support
 for Nord
To: "Bartosz Golaszewski" <bartosz.golaszewski@oss.qualcomm.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org
In-Reply-To: <20260916-nord-usb-phy-v2-3-2c8461bb30e6@oss.qualcomm.com>
References: <20260916-nord-usb-phy-v2-0-2c8461bb30e6@oss.qualcomm.com>
 <20260916-nord-usb-phy-v2-3-2c8461bb30e6@oss.qualcomm.com>
Date: Wed, 16 Sep 2026 18:47:01 +0000
Message-Id: <20260916184702.2D2381F00893@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gcGh5OiBxY29tOiBt
aXNtYXRjaCBiZXR3ZWVuIGNvbW1pdCBtZXNzYWdlIGFuZCBub3JkX3VzYjNfdHhfdGJsCi0tCgpj
b21taXQgMWI3YzIzZjQ2N2E5YTBmZmU4NWY4MGIxNWZkZWUzY2UzYWQ1Yzg5NQpBdXRob3I6IEJh
cnRvc3ogR29sYXN6ZXdza2kgPGJhcnRvc3ouZ29sYXN6ZXdza2lAb3NzLnF1YWxjb21tLmNvbT4K
CnBoeTogcWNvbTogcW1wLWNvbWJvOiBBZGQgVVNCMytEUCBQSFkgc3VwcG9ydCBmb3IgTm9yZAoK
Tm9yZCBTb0MgcHJvdmlkZXMgdHdvIFVTQjMrRFAgY29tYm8gUEhZcy4gVGhlaXIgaW5pdGlhbGlz
YXRpb24gc2VxdWVuY2VzCmFyZSBpZGVudGljYWwgdG8gc204NTUwLCBidXQgdGhlIHN1Yi1ibG9j
a3MgYXJlIG5vdCBsYWlkIG91dCB0aGUgc2FtZSB3YXkuCkEgZGVkaWNhdGVkIFVTQjNfUENTX0FP
TiByZWdpb24gYXQgb2Zmc2V0IDB4MWUwMCBpcyBhZGRlZCwgbW9kaWZ5aW5nIGhvdwp0aGUgSS9P
IGNsYW1wIGlzIGRyaXZlbi4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3Bo
eS1xY29tLXFtcC1jb21iby5jIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLWNv
bWJvLmMKPiBpbmRleCBhNGYxMzBmYzMzZTM5Li5jNGU4OGIwMzg0Y2I1IDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1jb21iby5jCj4gKysrIGIvZHJpdmVy
cy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLWNvbWJvLmMKPiBAQCAtMjM1Niw2ICsyMzU2LDIw
IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcW1wX3BoeV9pbml0X3RibCBoYXdpX3VzYjNfcGNzX3Vz
Yl90YmxbXSA9IHsKPiAgCVFNUF9QSFlfSU5JVF9DRkcoUVBIWV9WMTBfUENTX1VTQjNfUkNWUl9E
VENUX0RMWV9VM19ILCAweDAwKSwKPiAgfTsKPiAgCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgcW1w
X3BoeV9pbml0X3RibCBub3JkX3VzYjNfdHhfdGJsW10gPSB7Cj4gKwlRTVBfUEhZX0lOSVRfQ0ZH
KFFTRVJERVNfVjZfVFhfUkVTX0NPREVfTEFORV9UWCwgMHgwMCksCj4gKwlRTVBfUEhZX0lOSVRf
Q0ZHKFFTRVJERVNfVjZfVFhfUkVTX0NPREVfTEFORV9SWCwgMHgwMCksCj4gKwlRTVBfUEhZX0lO
SVRfQ0ZHKFFTRVJERVNfVjZfVFhfUkVTX0NPREVfTEFORV9PRkZTRVRfVFgsIDB4MWYpLAo+ICsJ
UU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX1Y2X1RYX1JFU19DT0RFX0xBTkVfT0ZGU0VUX1JYLCAw
eDA5KSwKPiArCVFNUF9QSFlfSU5JVF9DRkcoUVNFUkRFU19WNl9UWF9MQU5FX01PREVfMSwgMHhm
NSksCj4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFTRVJERVNfVjZfVFhfTEFORV9NT0RFXzMsIDB4M2Yp
LAo+ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX1Y2X1RYX0xBTkVfTU9ERV80LCAweDNmKSwK
PiArCVFNUF9QSFlfSU5JVF9DRkcoUVNFUkRFU19WNl9UWF9MQU5FX01PREVfNSwgMHg1ZiksCj4g
KwlRTVBfUEhZX0lOSVRfQ0ZHKFFTRVJERVNfVjZfVFhfUkNWX0RFVEVDVF9MVkxfMiwgMHgxNCks
CgpbU2V2ZXJpdHk6IE1lZGl1bV0KVGhlIGNvbW1pdCBtZXNzYWdlIGNsYWltcyB0aGF0IHRoZSBp
bml0aWFsaXphdGlvbiBzZXF1ZW5jZXMgYXJlIGlkZW50aWNhbCB0bwpzbTg1NTAuIEhvd2V2ZXIs
IHRoaXMgY29uZmlndXJlcyBRU0VSREVTX1Y2X1RYX1JDVl9ERVRFQ1RfTFZMXzIgdG8gMHgxNCwK
d2hlcmVhcyBzbTg1NTAgdXNlcyAweDEyLgoKSXMgdGhpcyBhbiBpbnRlbnRpb25hbCBoYXJkd2Fy
ZSBkaWZmZXJlbmNlIGZvciBOb3JkIHRoYXQgc2hvdWxkIGJlIG1lbnRpb25lZAppbiB0aGUgY29t
bWl0IG1lc3NhZ2UsIG9yIGlzIGl0IGFuIGFjY2lkZW50YWwgdHlwbz8KCj4gKwlRTVBfUEhZX0lO
SVRfQ0ZHX0xBTkUoUVNFUkRFU19WNl9UWF9QSV9RRUNfQ1RSTCwgMHgyMSwgMSksCj4gKwlRTVBf
UEhZX0lOSVRfQ0ZHX0xBTkUoUVNFUkRFU19WNl9UWF9QSV9RRUNfQ1RSTCwgMHgwNSwgMiksCj4g
K307CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNo
c2V0LzIwMjYwOTE2LW5vcmQtdXNiLXBoeS12Mi0wLTJjODQ2MWJiMzBlNkBvc3MucXVhbGNvbW0u
Y29tP3BhcnQ9MwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
