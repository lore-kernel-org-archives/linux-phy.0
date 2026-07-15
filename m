Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA601C44508
	for <linux-phy@archiver.kernel.org>; Wed, 15 Jul 2026 19:14:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pvvVNjQB4tXqBfluqGcHPLZIffvzi7vUtWZjPSdDO1w=; b=wDobXbyLBYdmeZ
	y//47mrGaZyKjL5SiAtjXX0xkuIePlqaP1wQuOEY2llq6tEkmXzllhDgJ7fHzVJaMrxoSJielZkgW
	lTy/RROQQoBJZs9BEKub0KFZ8hO2Uwhjjuw67K4Z/heJICwtwkLNz/hq9xFXisOWAOU/zfDt9Giw+
	47lnpHy04mbUqq/u5XXyTys1WXv7kZW/DYLq5ZZLFra/U5hMILFr8qUgvXNd/sHW13s99bbOzjokG
	d7DKhdNZSpAaDZ215Ft5/8DBRub2/2YzxrEoPfqsrWNmlvraBrMExWYOZ16kiErH2r80rxnzpcyKK
	Eld1gNi9kw8VQ9B/xcvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk54I-0000000Flx9-2jVs;
	Wed, 15 Jul 2026 19:14:54 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk54H-0000000FlwP-1gJB
	for linux-phy@lists.infradead.org;
	Wed, 15 Jul 2026 19:14:53 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id D95F240080;
	Wed, 15 Jul 2026 19:14:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A4821F00A3F;
	Wed, 15 Jul 2026 19:14:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784142892;
	bh=amNxNsxiYD+UwtXtFy7mITJnpHsCeZnOsPz7hH07J1c=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=cT/ZWzWZll5TSuMVtPS0/WWMwmU6AZeAWjX8sYp3qGg1by485NnMCYPhhT9yHO44N
	 9sJbfXWiRBvGWw1ZsP2vKmj1wKsa9Sxuo2NgHsxzYnQA22tF0KXVLXJ3n1I5UJCub7
	 z9GU7UzdqiURi3/Wla6R/uJqz/gnoXviib1qMh2fL3rKOtC3FXv1z4uSggVO9ydzXO
	 M/F8JHD8Lo/+PYwBucuqlVhdRsWzw+udWg8msgNL0EbHq8GJoaSY3f4jhrEECf/fh9
	 mEfg2f1htC/7c/PZ3Cngmw3s3Y/CqKFjQgf9beaEZMY03n0QHp41evXKJwqJQBDyFV
	 bbKay+RVlGQwA==
From: sashiko-bot@kernel.org
Subject: Re: [RFC PATCH 05/10] arm64: dts: rockchip: rk3568: add XPCS and
 fixed-clock nodes
To: "Coia Prant" <coiaprant@gmail.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, vkoul@kernel.org, olteanv@gmail.com, conor+dt@kernel.org
In-Reply-To: <20260714191341.690906-6-coiaprant@gmail.com>
References: <20260714191341.690906-1-coiaprant@gmail.com>
 <20260714191341.690906-6-coiaprant@gmail.com>
Date: Wed, 15 Jul 2026 19:14:51 +0000
Message-Id: <20260715191452.4A4821F00A3F@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gRGV2aWNldHJlZSBhbnRp
LXBhdHRlcm46IGR1bW15IGZpeGVkLWNsb2NrIG5vZGVzIHVzZWQgZm9yIGludGVybmFsIFNvQyBj
bG9ja3MgYW5kIGxlZnQgdW5hc3NpZ25lZC4KLSBbTG93XSBTdGF0ZSBtaXNtYXRjaDogZml4ZWQt
Y2xvY2sgbm9kZXMgYXJlIGVuYWJsZWQgYnkgZGVmYXVsdCBkZXNwaXRlIGNvbW1pdCBtZXNzYWdl
IGNsYWltcy4KLS0KCi0tLSBQYXRjaCBbNV06IFtSRkMgUEFUQ0ggMDUvMTBdIGFybTY0OiBkdHM6
IHJvY2tjaGlwOiByazM1Njg6IGFkZCBYUENTIGFuZCBmaXhlZC1jbG9jayBub2RlcyAtLS0KY29t
bWl0IGI0N2UxZmNlYmQ0MzM3NGQ2NDMxZmMyMGZmYTY0YTAzOTc1MTNkNjgKQXV0aG9yOiBDb2lh
IFByYW50IDxjb2lhcHJhbnRAZ21haWwuY29tPgoKYXJtNjQ6IGR0czogcm9ja2NoaXA6IHJrMzU2
ODogYWRkIFhQQ1MgYW5kIGZpeGVkLWNsb2NrIG5vZGVzCgpUaGUgUkszNTY4IFNvQyBpbnRlZ3Jh
dGVzIGEgU3lub3BzeXMgRGVzaWduV2FyZSBYUENTIHRoYXQgcHJvdmlkZXMKdGhlIFBoeXNpY2Fs
IENvZGluZyBTdWJsYXllciBmb3IgMTAwMEJBU0UtWCwgU0dNSUksIGFuZCBRU0dNSUkKaW50ZXJm
YWNlcyB2aWEgaXRzIGZvdXIgTUlJIHBvcnRzLiBBZGQgdGhlIFhQQ1MgZGV2aWNlIG5vZGUgYW5k
Cml0cyBwY3MtbWlpIHN1Yi1ub2RlcyB0byB0aGUgU29DIGRldmljZSB0cmVlLgoKPiBBbHNvIGFk
ZCB0d28gZml4ZWQtY2xvY2sgbm9kZXMgKHhwY3NfZ21hYzBfY2xrIGFuZCB4cGNzX2dtYWMxX2Ns
aykKPiBwcm92aWRpbmcgdGhlIDEyNSBNSHogcmVmZXJlbmNlIGNsb2NrIGZvciB0aGUgR01BQ3Mg
d2hlbiBvcGVyYXRpbmcKPiB3aXRoIFhQQ1MuICBUaGVzZSBjbG9ja3MgYXJlIHVzZWQgYXMgdGhl
IGFzc2lnbmVkLWNsb2NrLXBhcmVudHMKPiBmb3IgdGhlIHJlc3BlY3RpdmUgR01BQyBub2Rlcy4K
CltTZXZlcml0eTogTG93XQpUaGUgY29tbWl0IG1lc3NhZ2Ugc3RhdGVzIHRoZXNlIGNsb2NrcyBh
cmUgdXNlZCBhcyBhc3NpZ25lZC1jbG9jay1wYXJlbnRzCmZvciB0aGUgcmVzcGVjdGl2ZSBHTUFD
IG5vZGVzLCBidXQgdGhlIHBhdGNoIGRvZXNuJ3QgYXBwZWFyIHRvIGFkZCB0aGUKYXNzaWduZWQt
Y2xvY2stcGFyZW50cyBwcm9wZXJ0aWVzIHRvIHRoZSBnbWFjMCBvciBnbWFjMSBub2Rlcy4gQXJl
IHRoZXNlCmFzc2lnbm1lbnRzIG1pc3Npbmc/Cgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzU2OC5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazM1NjguZHRzaQo+IGluZGV4IDNiYzY1M2YwMjdmMWYuLjk4OWUxNjRjMGViMzkgMTAwNjQ0
Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjguZHRzaQo+ICsrKyBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LmR0c2kKClsgLi4uIF0KCj4gKwl4
cGNzX2dtYWMwX2NsazogeHBjcy1nbWFjMC1jbG9jayB7Cj4gKwkJY29tcGF0aWJsZSA9ICJmaXhl
ZC1jbG9jayI7Cj4gKwkJY2xvY2stZnJlcXVlbmN5ID0gPDEyNTAwMDAwMD47Cj4gKwkJY2xvY2st
b3V0cHV0LW5hbWVzID0gImNsa19nbWFjMF94cGNzX21paSI7Cj4gKwkJI2Nsb2NrLWNlbGxzID0g
PDA+Owo+ICsJfTsKCltTZXZlcml0eTogTG93XQpTaG91bGQgdGhpcyBpbnRlcm5hbCBTb0MgY2xv
Y2sgYmUgbW9kZWxlZCBhcyBhIGNsb2NrIHByb3ZpZGVyIGZyb20gdGhlCmdlbmVyYXRpbmcgWFBD
UyBJUCBub2RlIHVzaW5nICNjbG9jay1jZWxscywgcmF0aGVyIHRoYW4gdXNpbmcgYSBkdW1teQpm
aXhlZC1jbG9jaz8KCkFkZGl0aW9uYWxseSwgdGhlIGNvbW1pdCBtZXNzYWdlIHN0YXRlcyAiQWxs
IG5vZGVzIGFyZSBsZWZ0IGRpc2FibGVkIGJ5CmRlZmF1bHQiLCBidXQgdGhpcyBub2RlIGlzIG1p
c3NpbmcgdGhlIHN0YXR1cyA9ICJkaXNhYmxlZCIgcHJvcGVydHkuIFdpbGwKdGhpcyBsZWF2ZSB0
aGUgY2xvY2sgdW5jb25kaXRpb25hbGx5IGVuYWJsZWQ/Cgo+ICsKPiArCXhwY3NfZ21hYzFfY2xr
OiB4cGNzLWdtYWMxLWNsb2NrIHsKPiArCQljb21wYXRpYmxlID0gImZpeGVkLWNsb2NrIjsKPiAr
CQljbG9jay1mcmVxdWVuY3kgPSA8MTI1MDAwMDAwPjsKPiArCQljbG9jay1vdXRwdXQtbmFtZXMg
PSAiY2xrX2dtYWMxX3hwY3NfbWlpIjsKPiArCQkjY2xvY2stY2VsbHMgPSA8MD47Cj4gKwl9OwoK
W1NldmVyaXR5OiBMb3ddClNpbWlsYXJseSwgZG9lcyB0aGlzIG5vZGUgYWxzbyBuZWVkIGEgc3Rh
dHVzID0gImRpc2FibGVkIiBwcm9wZXJ0eSB0byBhbGlnbgp3aXRoIHRoZSBiZWhhdmlvciBkZXNj
cmliZWQgaW4gdGhlIGNvbW1pdCBtZXNzYWdlPwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0
dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDcxNDE5MTM0MS42OTA5MDYtMS1jb2lh
cHJhbnRAZ21haWwuY29tP3BhcnQ9NQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==
