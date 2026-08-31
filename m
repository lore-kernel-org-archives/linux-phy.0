Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD78CC61DFD
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 23:32:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aGEE2+yxFeluS1ZIqemCz78TVHkyziqOOsfJceuzo1Q=; b=OF2iTCZFYC+wpV
	rbRrPre7x4vd2kxzeEeJbvDGjpBdRq+Rto5B5rA6bJJR54WzhOlJpzyVOzOTK+YA4C+9TREQnlsbr
	HRVji+m3jigeXnt3OJ1llMW+vXUeZuxx4lE2HTZ6AznUJPL0kMrZLf2HBabtSHx9MJPi50MBQv3fI
	0e7NYDT5euFrTH0fljiK37S2k2no6SRY+I4Q0p48SCC3m9c28BNSS95NuWD7KEkiwaqEnQGOwK+V0
	cOVrLZkZiNopKV+i/0jUfKsAXeU5BdodOTlC91Px9OGyuwEoCf1sMYkx07+yGXw6o99JF8BfykJg3
	WnH/FIWxB0aSJhplLhiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1BUB-0000000AfBY-17rM;
	Mon, 31 Aug 2026 23:32:19 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1BU8-0000000AfBS-43hG
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 23:32:17 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 7527840493;
	Mon, 31 Aug 2026 23:32:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E43E41F000E9;
	Mon, 31 Aug 2026 23:32:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788219136;
	bh=j/VcSlVg/OvNiOWLEeg70xYa2uunFQ7jKdvNXkHVm2A=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=WC4S8XCwQDNLmJG2k4N6zfzyi2QPrmfXIh4HUJseFovinEbTF0Hs2axnITwP+60OI
	 aJ3Yh9i2+0ecExvF7j8uuUCCjN0QAV3PJfNUmu2lNsNhOqTbUPTo+FWPvMbNzK0anB
	 42i4mwrIJ/2zj5gZVH21irJ7Hbr0OpPiK3qoHUME515P5okuk8GBR+y5hDXVw61Llx
	 RUq7INwFXWurNwCVXNgyN0cOEJFKQrIpMrtM+BdR6DRKo7fXB0oXzfG7M6aNdgk00v
	 umCPEgZY4Djsv/JQTGyWCcgYwIEPIOt/S+5IHtvPsSjyWa5etu+lT7vKFgTs7591zs
	 DvSPOS6ftCDIA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 4/6] dt-bindings: usb: ti,am335x-usb-ctrl-module:
 Convert to DT schema
To: "Bhargav Joshi" <j.bhargav.u@gmail.com>
Cc: conor+dt@kernel.org, robh@kernel.org, vkoul@kernel.org, dmaengine@vger.kernel.org, neil.armstrong@linaro.org, Frank.Li@kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com, devicetree@vger.kernel.org
In-Reply-To: <20260901-ti-am33-usb-v3-4-5e15c617d2e9@gmail.com>
References: <20260901-ti-am33-usb-v3-0-5e15c617d2e9@gmail.com>
 <20260901-ti-am33-usb-v3-4-5e15c617d2e9@gmail.com>
Date: Mon, 31 Aug 2026 23:32:15 +0000
Message-Id: <20260831233215.E43E41F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gRG9jdW1lbnRhdGlvbiBs
b3NzIGZvciBgcmVnYCBwcm9wZXJ0eSBlbnRyaWVzIGR1cmluZyBkdC1zY2hlbWEgY29udmVyc2lv
bi4KLS0KCmNvbW1pdCBjMWExMDYxYWJiNjU0ZmJmZmRlYjM3ZjVhOGFlOWQ4YzVjNTU5NmYwCkF1
dGhvcjogQmhhcmdhdiBKb3NoaSA8ai5iaGFyZ2F2LnVAZ21haWwuY29tPgoKZHQtYmluZGluZ3M6
IHVzYjogdGksYW0zMzV4LXVzYi1jdHJsLW1vZHVsZTogQ29udmVydCB0byBEVCBzY2hlbWEKCkNv
bnZlcnQgdGhlIFRJIEFNMzM1eCBVU0IgQ29udHJvbCBNb2R1bGUgdGV4dCBiaW5kaW5ncyB0byBE
VCBzY2hlbWEuIE5vCmZ1bmN0aW9uYWwgY2hhbmdlcy4KCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91c2IvYW0zM3h4LXVzYi50eHQgYi9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdXNiL2FtMzN4eC11c2IudHh0Cj4gaW5kZXggNTk3M2Y4
OGJjYzY1ZC4uOTQzMTJhZDhlYzhjZCAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvdXNiL2FtMzN4eC11c2IudHh0Cj4gKysrIGIvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi9hbTMzeHgtdXNiLnR4dAo+IEBAIC04LDE1ICs4LDYgQEAg
VGhlIGdsdWUgbGF5ZXIgY29udGFpbnMgbXVsdGlwbGUgY2hpbGQgbm9kZXMuIEl0IGlzIHJlcXVp
cmVkIHRvIGhhdmUKPiAgYXQgbGVhc3QgYSBjb250cm9sIG1vZHVsZSBub2RlLCBVU0Igbm9kZSBh
bmQgYSBQSFkgbm9kZS4gVGhlIHNlY29uZCBVU0IKPiAgbm9kZSBhbmQgaXRzIFBIWSBub2RlIGFy
ZSBvcHRpb25hbC4gVGhlIERNQSBub2RlIGlzIGFsc28gb3B0aW9uYWwuCj4gIAo+IC1SZXNldCBt
b2R1bGUKPiAtfn5+fn5+fn5+fn5+Cj4gLS0gY29tcGF0aWJsZTogdGksYW0zMzV4LXVzYi1jdHJs
LW1vZHVsZQo+IC0tIHJlZzogb2Zmc2V0IGFuZCBsZW5ndGggb2YgdGhlICJVU0IgY29udHJvbCBy
ZWdpc3RlcnMiIGluIHRoZSAiQ29udHJvbAo+IC0gIE1vZHVsZSIgYmxvY2suIEEgc2Vjb25kIG9m
ZnNldCBhbmQgbGVuZ3RoIGZvciB0aGUgVVNCIHdha2UgdXAgY29udHJvbAo+IC0gIGluIHRoZSBz
YW1lIG1lbW9yeSBibG9jay4KPiAtLSByZWctbmFtZXM6ICJwaHlfY3RybCIgZm9yIHRoZSAiVVNC
IGNvbnRyb2wgcmVnaXN0ZXJzIiBhbmQgIndha2V1cCIgZm9yCj4gLSAgdGhlIFVTQiB3YWtlIHVw
IGNvbnRyb2wgcmVnaXN0ZXIuCj4gLQoKWyAuLi4gXQoKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi90aSxhbTMzNXgtdXNiLWN0cmwtbW9kdWxlLnlh
bWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdXNiL3RpLGFtMzM1eC11c2It
Y3RybC1tb2R1bGUueWFtbAo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAw
MDAwMC4uZjhhYzBhZjc0NWM2Ywo+IC0tLSAvZGV2L251bGwKPiArKysgYi9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvdXNiL3RpLGFtMzM1eC11c2ItY3RybC1tb2R1bGUueWFtbAo+
IEBAIC0wLDAgKzEsMzggQEAKClsgLi4uIF0KCj4gK3Byb3BlcnRpZXM6Cj4gKyAgY29tcGF0aWJs
ZToKPiArICAgIGNvbnN0OiB0aSxhbTMzNXgtdXNiLWN0cmwtbW9kdWxlCj4gKwo+ICsgIHJlZzoK
PiArICAgIG1heEl0ZW1zOiAyCgpbU2V2ZXJpdHk6IExvd10KRG9lcyB0aGlzIFlBTUwgY29udmVy
c2lvbiBsb3NlIHNvbWUgb2YgdGhlIGRvY3VtZW50YXRpb24gZGV0YWlscyBmcm9tIHRoZQpvcmln
aW5hbCB0ZXh0IGJpbmRpbmc/CgpUaGUgcHJldmlvdXMgdGV4dCBiaW5kaW5nIGluY2x1ZGVkIGV4
cGxpY2l0IGRlc2NyaXB0aW9ucyBmb3IgdGhlIHR3byByZWcKZW50cmllcyAoIlVTQiBjb250cm9s
IHJlZ2lzdGVycyIgYW5kICJVU0Igd2FrZSB1cCBjb250cm9sIikuIFdoaWxlIHJlZy1uYW1lcwph
cmUgcHJvdmlkZWQgYmVsb3csIHNob3VsZCBhbiBpdGVtcyBsaXN0IHVuZGVyIHJlZyBiZSBpbmNs
dWRlZCB0byBwcmVzZXJ2ZQp0aGVzZSBleHBsaWNpdCBkZXNjcmlwdGlvbnM/Cgo+ICsKPiArICBy
ZWctbmFtZXM6Cj4gKyAgICBpdGVtczoKPiArICAgICAgLSBjb25zdDogcGh5X2N0cmwKPiArICAg
ICAgLSBjb25zdDogd2FrZXVwCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNo
aWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwOTAxLXRpLWFtMzMtdXNiLXYzLTAtNWUxNWM2MTdkMmU5
QGdtYWlsLmNvbT9wYXJ0PTQKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
