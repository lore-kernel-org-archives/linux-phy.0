Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B77EC55162
	for <linux-phy@archiver.kernel.org>; Thu, 30 Jul 2026 14:31:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oSS4UutifsM7vaqNi57Nhi56ckCqMInw1cbMd4jcvLc=; b=xZ3rP1q0OaqA2a
	At/XbnwLDXLMgPqJYFgHCuQZtIgGOvu9jbolaQb0mYpLzoDqcIYQcUAywUGOFnf0E9xYOh/puRs3V
	4Jf/c1qbcg0p60Tw31FZnxMiNKP3VRsA4/XsMbUJQL0r7d4rnSmpK6mSKp31zIHH1ycqIwlkDmAxb
	FI5EEInExPkw56Zyp2gF3mASn+rih4sQNCkOeqx6FyJsOOX3MZVruE7dk+ip5AbttEzP04QlZeT27
	lQ62Phdv2y7zUy8h8S1AR1IE07WwsLkzgJqErYkV1xVsFz4zGT8NsyLmFigjFg/ad/7xhBG70es5D
	OBV7V73HQPzZzOZpNMzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpRmv-0000000Akhu-3ktt;
	Thu, 30 Jul 2026 14:31:09 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpRmu-0000000AkhV-2KcU
	for linux-phy@lists.infradead.org;
	Thu, 30 Jul 2026 14:31:08 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 3973043319;
	Thu, 30 Jul 2026 14:31:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E00D1F00A3A;
	Thu, 30 Jul 2026 14:31:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785421868;
	bh=vv12/0pZczQm/r15/TPjGBt4NvcaiXlnn8L74ZUmwZE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=hKE5sBd3Mub5Nn+YYdoEdL14RJ7coV3eMiAJ1YFbzLQ/AwS06fAr9vIRWhbekb3gx
	 avn09rDv43p6zC4RTCxHGyTM90ql3y/M1138oFMSk+kXXNEJc/RnX3zcLgZrI8WutD
	 DoOdvwDG7uHeVF/arNPh6qVJnMYRsjrtxRNptqW4Z/mEHw1iRFXYw3WmZbXnn/SjSH
	 CQ2/aJjP038QLGbrI0HjH6sBoe0TQEuZgKRRp2nc7nTdp5cHUC/yNcv7El+uDnVO/k
	 jHZX0EJRoffECIflbJNHWwtiT6crcGdsP+4D2WV9d8hI3AoX+w70d1SYrwYZMBudno
	 mUd8BIHYhg/lQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 5/5] arm64: dts: qcom: hamoa: Extend QMPPHY
 description for USB4
To: "Konrad Dybcio" <konradybcio@kernel.org>
Cc: neil.armstrong@linaro.org, vkoul@kernel.org, olteanv@gmail.com, robh@kernel.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260730-topic-usb4phy-v3-5-ccf0f7ea98b5@oss.qualcomm.com>
References: <20260730-topic-usb4phy-v3-0-ccf0f7ea98b5@oss.qualcomm.com>
 <20260730-topic-usb4phy-v3-5-ccf0f7ea98b5@oss.qualcomm.com>
Date: Thu, 30 Jul 2026 14:31:06 +0000
Message-Id: <20260730143107.9E00D1F00A3A@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gQSByZXNvdXJjZSBs
ZWFrIGlzIHByZXNlbnQgaW4gYHFtcF9jb21ib191c2I0X2luaXQoKWAgKGludHJvZHVjZWQgYnkg
YSBwcmV2aW91cyBwYXRjaCBpbiB0aGlzIHNlcmllcykgYW5kIGlzIGV4cG9zZWQgd2hlbiB0aGlz
IERUIHBhdGNoIHByb3ZpZGVzIHRoZSBtaXNzaW5nIGBwMnJyMnBfcGlwZWAgY2xvY2suIElmIGBj
bGtfcHJlcGFyZV9lbmFibGUocW1wLT5wMnJyMnBfcGlwZV9jbGspYCBzdWNjZWVkcywgdGhlIGZ1
bmN0aW9uIG1heSBsYXRlciBmYWlsIGR1cmluZyBgcW1wX2NvbWJvX2NvbV9pbml0KClgLCBgcW1w
X2NvbWJvX3JlY29uZmlndXJlX3BoeSgpYCwgb3IgYHFtcF9jb21ib191c2JfcG93ZXJfb24oKWAu
IE9uIHRoZXNlIGVycm9yIHBhdGhzLCB0aGUgZnVuY3Rpb24gcmV0dXJucyB3aXRob3V0IGNhbGxp
bmcgYGNsa19kaXNhYmxlX3VucHJlcGFyZShxbXAtPnAycnIycF9waXBlX2NsaylgLCBsZWFraW5n
IHRoZSBjbG9jayByZWZlcmVuY2UuCi0tCgotLS0gUGF0Y2ggWzVdOiBbUEFUQ0ggdjMgNS81XSBh
cm02NDogZHRzOiBxY29tOiBoYW1vYTogRXh0ZW5kIFFNUFBIWSBkZXNjcmlwdGlvbiBmb3IgVVNC
NCAtLS0KY29tbWl0IGY5NGZiYzY2YTc0ZDE0NTg4YjIwODRjOTU1MDU0ODQ0NmIzZjU4MjUKQXV0
aG9yOiBLb25yYWQgRHliY2lvIDxrb25yYWQuZHliY2lvQG9zcy5xdWFsY29tbS5jb20+Cgphcm02
NDogZHRzOiBxY29tOiBoYW1vYTogRXh0ZW5kIFFNUFBIWSBkZXNjcmlwdGlvbiBmb3IgVVNCNAoK
VGhpcyBjb21taXQgZXh0ZW5kcyB0aGUgUU1QUEhZIGRlc2NyaXB0aW9uIGZvciBVU0I0IGJ5IGFk
ZGluZyB0aGUgbWlzc2luZyAKR0NDX1VTQjRfWF9QSFlfUDJSUjJQX1BJUEVfQ0xLIGNsb2NrLiBU
aGlzIGFkZGl0aW9uYWwgY2xvY2sgaXMgcmVxdWlyZWQgCmZvciB0aGUgUEhZIHRvIGluaXRpYWxp
emUgc3VjY2Vzc2Z1bGx5LgoKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9xY29t
L2hhbW9hLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vaGFtb2EuZHRzaQo+IGluZGV4
IDA5NTI3ZGNmOTU3NjcuLjJlZmZjMDMxOWEwMWEgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9i
b290L2R0cy9xY29tL2hhbW9hLmR0c2kKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20v
aGFtb2EuZHRzaQo+IEBAIC0yODI1LDExICsyODI1LDEzIEBAIHVzYl8xX3NzMF9xbXBwaHk6IHBo
eUBmZDUwMDAgewo+ICAJCQljbG9ja3MgPSA8JmdjYyBHQ0NfVVNCM19QUklNX1BIWV9BVVhfQ0xL
PiwKPiAgCQkJCSA8JnJwbWhjYyBSUE1IX0NYT19DTEs+LAo+ICAJCQkJIDwmZ2NjIEdDQ19VU0Iz
X1BSSU1fUEhZX0NPTV9BVVhfQ0xLPiwKPiAtCQkJCSA8JmdjYyBHQ0NfVVNCM19QUklNX1BIWV9Q
SVBFX0NMSz47Cj4gKwkJCQkgPCZnY2MgR0NDX1VTQjNfUFJJTV9QSFlfUElQRV9DTEs+LAo+ICsJ
CQkJIDwmZ2NjIEdDQ19VU0I0XzBfUEhZX1AyUlIyUF9QSVBFX0NMSz47Cj4gIAkJCWNsb2NrLW5h
bWVzID0gImF1eCIsCj4gIAkJCQkgICAgICAicmVmIiwKPiAgCQkJCSAgICAgICJjb21fYXV4IiwK
PiAtCQkJCSAgICAgICJ1c2IzX3BpcGUiOwo+ICsJCQkJICAgICAgInVzYjNfcGlwZSIsCj4gKwkJ
CQkgICAgICAicDJycjJwX3BpcGUiOwoKW1NldmVyaXR5OiBNZWRpdW1dClRoaXMgaXNuJ3QgYSBi
dWcgaW50cm9kdWNlZCBieSB0aGlzIGRldmljZSB0cmVlIHBhdGNoIGl0c2VsZiwgYnV0IHByb3Zp
ZGluZwp0aGlzIG1pc3NpbmcgcDJycjJwX3BpcGUgY2xvY2sgZXhwb3NlcyBhIHJlc291cmNlIGxl
YWsgaW4gdGhlIGRyaXZlcidzCmVycm9yIHBhdGguCgpJZiB0aGUgY2FsbCB0byBjbGtfcHJlcGFy
ZV9lbmFibGUocW1wLT5wMnJyMnBfcGlwZV9jbGspIHN1Y2NlZWRzIGluCnFtcF9jb21ib191c2I0
X2luaXQoKToKCmRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1jb21iby5jOnFtcF9j
b21ib191c2I0X2luaXQoKSB7CiAgICAuLi4KCXJldCA9IGNsa19wcmVwYXJlX2VuYWJsZShxbXAt
PnAycnIycF9waXBlX2Nsayk7CglpZiAocmV0KSB7CgkJZGV2X2VycihxbXAtPmRldiwgInAycnIy
cF9waXBlIGVuYWJsZSBmYWlsZWQ6ICVkXG4iLCByZXQpOwoJCXJldHVybiByZXQ7Cgl9CgoJcmV0
ID0gcW1wX2NvbWJvX2NvbV9pbml0KHFtcCwgZmFsc2UpOwoJaWYgKHJldCkKCQlyZXR1cm4gcmV0
OwogICAgLi4uCglyZXQgPSBxbXBfY29tYm9fdXNiX3Bvd2VyX29uKHBoeSk7CglpZiAocmV0KSB7
CgkJcW1wX2NvbWJvX2NvbV9leGl0KHFtcCwgZmFsc2UpOwoJCXJldHVybiByZXQ7Cgl9CiAgICAu
Li4KfQoKRG9lcyB0aGlzIGNvZGUgbGVhayB0aGUgcDJycjJwX3BpcGVfY2xrIHJlZmVyZW5jZSBp
ZiBxbXBfY29tYm9fY29tX2luaXQoKSwKcW1wX2NvbWJvX3JlY29uZmlndXJlX3BoeSgpLCBvciBx
bXBfY29tYm9fdXNiX3Bvd2VyX29uKCkgZmFpbHM/IAoKU2hvdWxkIGl0IGNhbGwgY2xrX2Rpc2Fi
bGVfdW5wcmVwYXJlKHFtcC0+cDJycjJwX3BpcGVfY2xrKSBvbiB0aGVzZSBlcnJvcgpwYXRocyBi
ZWZvcmUgcmV0dXJuaW5nPwoKWyAuLi4gXQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBz
Oi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDczMC10b3BpYy11c2I0cGh5LXYzLTAtY2Nm
MGY3ZWE5OGI1QG9zcy5xdWFsY29tbS5jb20/cGFydD01CgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
