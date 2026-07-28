Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9AE8EC53219
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jul 2026 10:25:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dIHtcyJMm3Rzays2OuEVCt0dvfLPXGmkn/g109f7FoA=; b=2tZCrHs0HXTnb5
	I3STLfDy2pYdXrbKenTT1rZPaSygb16WQtU/AXvqzdCbsG+ucV8/P1z+yx9lL2ROr8CLdiuYp3A6f
	805f3Ap21TJMZA2f0TQoWFBp+8INjHMOgLVD9Oy8HEv7Ki20vDAMwkZGUtxWNTGRN+SmVkZlcTAn6
	Hm75/Pb/NnVt6KnGf64yuqDyyfghJmS9F81KkngJ2k/sON39OqyM88J8ySB05kLzTXOPxY385cHz9
	EFipvxnmqbjkW/b61W7OKm7ZPvKUFBPREwTRLKh7XZj/wswrMK+0KTL7oXhoD+a9OlxBdafbEYFz3
	cNZvYxL/b/2jY6XdpVpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woezq-00000004xJZ-1N8L;
	Tue, 28 Jul 2026 10:25:14 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woezp-00000004xJC-2BPL
	for linux-phy@lists.infradead.org;
	Tue, 28 Jul 2026 10:25:13 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 49BF7400F9;
	Tue, 28 Jul 2026 10:25:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4679B1F000E9;
	Tue, 28 Jul 2026 10:25:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785234313;
	bh=Vy/L0F1ELlnN4fLe5bDsIxy6Y3LPjCz+B5u6Xqpr3vo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Z0l+R8asxqLDPU9ZDfx1XGeGhM7q++N+kshw/bo1gjMAVcSbrzksLtMkLLSBKlfpO
	 TgTsLwp8qHmAn+zM96AC9tGBBlkgBZu6I5OA59WNas+v51PUzqRM09yhzh74S2iTKE
	 1N+3Yg4CbNRXET6IZvAigzBVbvFyRxoQ1vN7GDjsY9LNDozqd5OWuy094TACx+Pozq
	 maGfe4quYs/RoTbn2t++3plHuAX9tN5tdluTPzKoWfBSTuiOnuYBjF32b86l0p2mRA
	 8GrD3A+LeWqL4HpFznGwS1ZT+AsX6+xtBV4N7CUgZA+Rm4aeodUZ/5ZLr4l8azd1cX
	 RW0DCkBjsTxkw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 5/5] arm64: dts: qcom: hamoa: Extend QMPPHY
 description for USB4
To: "Konrad Dybcio" <konradybcio@kernel.org>
Cc: vkoul@kernel.org, olteanv@gmail.com, conor+dt@kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, neil.armstrong@linaro.org, devicetree@vger.kernel.org
In-Reply-To: <20260728-topic-usb4phy-v2-5-5d9dd5149ec7@oss.qualcomm.com>
References: <20260728-topic-usb4phy-v2-0-5d9dd5149ec7@oss.qualcomm.com>
 <20260728-topic-usb4phy-v2-5-5d9dd5149ec7@oss.qualcomm.com>
Date: Tue, 28 Jul 2026 10:25:11 +0000
Message-Id: <20260728102512.4679B1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gTWlzc2luZyBjbGVh
bnVwIG9uIGVycm9yIHBhdGhzIGluIHFtcF9jb21ib191c2I0X2luaXQoKSBsZWFkcyB0byBhIGxl
YWtlZCBjbG9jayBhbmQgdW5iYWxhbmNlZCBQSFkgc3RhdGUuCi0tCgotLS0gUGF0Y2ggWzVdOiBb
UEFUQ0ggdjIgNS81XSBhcm02NDogZHRzOiBxY29tOiBoYW1vYTogRXh0ZW5kIFFNUFBIWSBkZXNj
cmlwdGlvbiBmb3IgVVNCNCAtLS0KY29tbWl0IGM4NDk2NWYwODQyYmFkNjUwYWZlYWNmZjg0MDc3
NWMxYzVmOWM2YWUKQXV0aG9yOiBLb25yYWQgRHliY2lvIDxrb25yYWQuZHliY2lvQG9zcy5xdWFs
Y29tbS5jb20+Cgphcm02NDogZHRzOiBxY29tOiBoYW1vYTogRXh0ZW5kIFFNUFBIWSBkZXNjcmlw
dGlvbiBmb3IgVVNCNAoKVGhlIFVTQjQgcGFydCBvZiB0aGUgUU1QUEhZIHJlcXVpcmVzIHRoYXQg
b25lIG1vcmUgR0NDIGNsb2NrIChQMlJSMlAgLQpQSFktdG8tUm91dGVyLCBSb3V0ZXItdG8tUEhZ
KSBpcyBlbmFibGVkIGZvciB0aGUgUEhZIHRvIGluaXRpYWxpemUKc3VjY2Vzc2Z1bGx5LiBUaGlz
IHBhdGNoIHVwZGF0ZXMgdGhlIGRldmljZSB0cmVlIHRvIGRlc2NyaWJlIHRoaXMgY2xvY2sKZm9y
IHRoZSBQSFkgbm9kZXMuCgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20v
aGFtb2EuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9oYW1vYS5kdHNpCj4gLS0tIGEv
YXJjaC9hcm02NC9ib290L2R0cy9xY29tL2hhbW9hLmR0c2kKPiArKysgYi9hcmNoL2FybTY0L2Jv
b3QvZHRzL3Fjb20vaGFtb2EuZHRzaQo+IEBAIC0yODI1LDExICsyODI1LDEzIEBAIHVzYl8xX3Nz
MF9xbXBwaHk6IHBoeUBmZDUwMDAgewo+ICAJCQljbG9ja3MgPSA8JmdjYyBHQ0NfVVNCM19QUklN
X1BIWV9BVVhfQ0xLPiwKPiAgCQkJCSA8JnJwbWhjYyBSUE1IX0NYT19DTEs+LAo+ICAJCQkJIDwm
Z2NjIEdDQ19VU0IzX1BSSU1fUEhZX0NPTV9BVVhfQ0xLPiwKPiAtCQkJCSA8JmdjYyBHQ0NfVVNC
M19QUklNX1BIWV9QSVBFX0NMSz47Cj4gKwkJCQkgPCZnY2MgR0NDX1VTQjNfUFJJTV9QSFlfUElQ
RV9DTEs+LAo+ICsJCQkJIDwmZ2NjIEdDQ19VU0I0XzBfUEhZX1AyUlIyUF9QSVBFX0NMSz47Cj4g
IAkJCWNsb2NrLW5hbWVzID0gImF1eCIsCj4gIAkJCQkgICAgICAicmVmIiwKPiAgCQkJCSAgICAg
ICJjb21fYXV4IiwKPiAtCQkJCSAgICAgICJ1c2IzX3BpcGUiOwo+ICsJCQkJICAgICAgInVzYjNf
cGlwZSIsCj4gKwkJCQkgICAgICAicDJycjJwX3BpcGUiOwoKW1NldmVyaXR5OiBNZWRpdW1dCkRv
ZXMgYWRkaW5nIHRoaXMgY2xvY2sgbGVhZCB0byBhIHJlc291cmNlIGxlYWsgaW4gdGhlIGRyaXZl
ciBvbiBlcnJvciBwYXRocz8KCkluIGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1j
b21iby5jOnFtcF9jb21ib191c2I0X2luaXQoKSwgaWYgYW4gZXJyb3IKb2NjdXJzIGFmdGVyIGVu
YWJsaW5nIHRoZSBwMnJyMnBfcGlwZSBjbG9jaywgdGhlIGNsZWFudXAgcGF0aHMgZG9uJ3Qgc2Vl
bSB0bwpkaXNhYmxlIGl0OgoKCXJldCA9IHFtcF9jb21ib19jb21faW5pdChxbXAsIGZhbHNlKTsK
CWlmIChyZXQpCgkJcmV0dXJuIHJldDsKCkhlcmUgdGhlIGZ1bmN0aW9uIHJldHVybnMgZGlyZWN0
bHksIGZhaWxpbmcgdG8gZGlzYWJsZSB0aGUgcHJldmlvdXNseQplbmFibGVkIGNsb2NrLgoKTGF0
ZXIgaW4gdGhlIHNhbWUgZnVuY3Rpb246CgoJcmV0ID0gcW1wX2NvbWJvX3JlY29uZmlndXJlX3Bo
eShxbXAsIFFNUFBIWV9NT0RFX1VTQjQpOwoJaWYgKHJldCkKCQlyZXR1cm4gcmV0OwoKSWYgdGhp
cyBmYWlscywgaXQgbWlzc2VzIGJvdGggdGhlIGNsb2NrIGRpc2FibGUgYW5kIHFtcF9jb21ib19j
b21fZXhpdCgpLgoKQW5kIGZpbmFsbHk6CgoJcmV0ID0gcW1wX2NvbWJvX3VzYl9wb3dlcl9vbihw
aHkpOwoJaWYgKHJldCkgewoJCXFtcF9jb21ib19jb21fZXhpdChxbXAsIGZhbHNlKTsKCQlyZXR1
cm4gcmV0OwoJfQoKVGhpcyBoYW5kbGVzIHRoZSBjb21fZXhpdCBidXQgc3RpbGwgbWlzc2VzIGRp
c2FibGluZyB0aGUgcGlwZSBjbG9jay4KCkNvdWxkIHRoaXMgY2F1c2UgdGhlIGNsb2NrIHJlZmVy
ZW5jZSB0byBiZSBsZWFrZWQgb24gaGFyZHdhcmUgaW5pdGlhbGl6YXRpb24Kb3IgcmVzdW1wdGlv
biBlcnJvciBwYXRocywgcHJldmVudGluZyB0aGUgYXNzb2NpYXRlZCBjbG9jayBhbmQgcG93ZXIg
ZG9tYWlucwpmcm9tIGJlaW5nIGRpc2FibGVkPwoKWyAuLi4gXQoKLS0gClNhc2hpa28gQUkgcmV2
aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDcyOC10b3BpYy11c2I0
cGh5LXYyLTAtNWQ5ZGQ1MTQ5ZWM3QG9zcy5xdWFsY29tbS5jb20/cGFydD01CgotLSAKbGludXgt
cGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
