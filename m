Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1876FC5AD5A
	for <linux-phy@archiver.kernel.org>; Wed, 12 Aug 2026 10:25:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N7paxxFxQtKxA3rYngWTU/a6VGONs+9TlEhgRAZEViQ=; b=jHX8hKdTGTHmJX
	/jrLaQMF+nzC/V287H983Oqgwc6ZXCLfZWbGiCDCkP7SnncYP7x38aSasgMoGHlm607/vl399BtvU
	1Zd/RjVj+lvzje3mK0Y9jxdSLZ/jH3Kzn8YWqEi2ootNfyKP6mWKFl8KEL54HefcrVgzSQIXUITub
	3JReoimpRcyHhHwG7oK0ifCYURoB5P2r7LwzY05CwAmdBQCfPijkBY4GmiIe5+K2iwmlz+pvbkhg1
	/W8PKzegauPUcBQscNFUIrMeckgCT7skUHeYdUKCJL35qab4vsimTRBB+TfICikheSZiNVenZM8R5
	TFhFsyCns3mEoojVCbcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu69j-0000000FtEw-2hhC;
	Wed, 12 Aug 2026 10:25:55 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu69h-0000000FtDe-3qkC
	for linux-phy@lists.infradead.org;
	Wed, 12 Aug 2026 10:25:53 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id A6C7443B16;
	Wed, 12 Aug 2026 10:25:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 183EC1F00A3A;
	Wed, 12 Aug 2026 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786530353;
	bh=UW89FuY/3sy6Xdixcu1KYyPocU5aKP1xguy1boeomUc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=U++Iw2JKVA0NwfTwQxDr25Q1ZGyU2T6eTbzD/oSTJW9xTk5ExsTkwM7QUkUFmIzSB
	 Dnnn4YxQXJg7jmiMAjCT80VzpOhrYU+5m2420YD4ETrqXoX8r9qbr4+awKrEhwVx6o
	 YV5jX53qSkICe5WVsOgpqBV7DUG5BE3WuzY5g0ZSpiAML01gREd/eztLSbIXC6f2Rq
	 RD6Cp6SAVzsPMFTpwiuvYGjfgVxgUyFsWKQXCROytqCh+0XmliiG0cP77LgfAZbKgV
	 j5mw5tZydeaPiAI1i33UZU5cH0AxInFBeStk+kQBC4Pm061c0JjOEbWkLq+VnqYIYV
	 9cNIO7lWsorFg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 04/14] arm64: dts: qcom: ipq5332: Flatten usb
 controller node
To: "George Moussalem" <george.moussalem@outlook.com>
Cc: linux-phy@lists.infradead.org, olteanv@gmail.com, devicetree@vger.kernel.org, robh@kernel.org, vkoul@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260812-ipq5018-usb3-v2-4-8f355d7ff0ef@outlook.com>
References: <20260812-ipq5018-usb3-v2-0-8f355d7ff0ef@outlook.com>
 <20260812-ipq5018-usb3-v2-4-8f355d7ff0ef@outlook.com>
Date: Wed, 12 Aug 2026 10:25:52 +0000
Message-Id: <20260812102553.183EC1F00A3A@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBmbGF0dGVuZWQg
VVNCIGNvbnRyb2xsZXIgbm9kZSBzcGVjaWZpZXMgYSAncmVnJyByZWdpb24gdGhhdCBpcyB0b28g
c21hbGwsIGVudGlyZWx5IGV4Y2x1ZGluZyB0aGUgUUNPTSB3cmFwcGVyIHJlZ2lzdGVyIHNwYWNl
IHRoYXQgdGhlIGRyaXZlciByZWxpZXMgb24sIHdoaWNoIGxlYWRzIHRvIHByb2JlIGZhaWx1cmVz
LgotLQoKLS0tIFBhdGNoIFs0XTogW1BBVENIIHYyIDA0LzE0XSBhcm02NDogZHRzOiBxY29tOiBp
cHE1MzMyOiBGbGF0dGVuIHVzYiBjb250cm9sbGVyIG5vZGUgLS0tCmNvbW1pdCA0YzRjZjNlNTAz
YTdjYWUxN2U2MTgxYWMzZTVmMTE5YmJmYWRjNDllCkF1dGhvcjogR2VvcmdlIE1vdXNzYWxlbSA8
Z2VvcmdlLm1vdXNzYWxlbUBvdXRsb29rLmNvbT4KCmFybTY0OiBkdHM6IHFjb206IGlwcTUzMzI6
IEZsYXR0ZW4gdXNiIGNvbnRyb2xsZXIgbm9kZQoKVGhpcyBjb21taXQgZmxhdHRlbnMgdGhlIHVz
YiBjb250cm9sbGVyIG5vZGUgZm9yIGlwcTUzMzIuIEl0IHVwZGF0ZXMgdGhlCm5vZGUgdG8gdXNl
IHRoZSBsYXRlc3QgYmluZGluZ3MgYW5kIHRoZSBmbGF0dGVuZWQgZHJpdmVyIGFwcHJvYWNoLgoK
PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL2lwcTUzMzIuZHRzaSBiL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9pcHE1MzMyLmR0c2kKPiAtLS0gYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL3Fjb20vaXBxNTMzMi5kdHNpCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29t
L2lwcTUzMzIuZHRzaQo+IEBAIC00NTYsMTYgKzQ1Niw5IEBAIHFwaWNfbmFuZDogc3BpQDc5YjAw
MDAgewo+ICAJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ICAJCX07Cj4gIAo+IC0JCXVzYjogdXNi
QDhhZjg4MDAgewo+IC0JCQljb21wYXRpYmxlID0gInFjb20saXBxNTMzMi1kd2MzIiwgInFjb20s
ZHdjMyI7Cj4gLQkJCXJlZyA9IDwweDA4YWY4ODAwIDB4NDAwPjsKPiAtCj4gLQkJCWludGVycnVw
dHMgPSA8R0lDX1NQSSA2MiBJUlFfVFlQRV9MRVZFTF9ISUdIPiwKPiAtCQkJCSAgICAgPEdJQ19T
UEkgNTMgSVJRX1RZUEVfTEVWRUxfSElHSD4sCj4gLQkJCQkgICAgIDxHSUNfU1BJIDUyIElSUV9U
WVBFX0xFVkVMX0hJR0g+Owo+IC0JCQlpbnRlcnJ1cHQtbmFtZXMgPSAicHdyX2V2ZW50IiwKPiAt
CQkJCQkgICJkcF9oc19waHlfaXJxIiwKPiAtCQkJCQkgICJkbV9oc19waHlfaXJxIjsKPiArCQl1
c2I6IHVzYkA4YTAwMDAwIHsKPiArCQkJY29tcGF0aWJsZSA9ICJxY29tLGlwcTUzMzItZHdjMyIs
ICJxY29tLHNucHMtZHdjMyI7Cj4gKwkJCXJlZyA9IDwweDA4YTAwMDAwIDB4ZTAwMD47CgpbU2V2
ZXJpdHk6IEhpZ2hdCkRvZXMgdGhpcyByZWcgc2l6ZSBuZWVkIHRvIGJlIGxhcmdlciB0byBjb3Zl
ciB0aGUgUUNPTSB3cmFwcGVyIHJlZ2lzdGVycz8KCldoZW4gdHJhbnNpdGlvbmluZyB0byB0aGUg
ZmxhdHRlbmVkIHFjb20sc25wcy1kd2MzIGJpbmRpbmcsIHRoZSByZWcgc2l6ZSBpcwpzZXQgdG8g
MHhlMDAwLCB3aGljaCBvbmx5IGNvdmVycyB0aGUgRFdDMyBjb3JlIHJlZ2lzdGVycy4KClRoZSBk
d2MzLXFjb20uYyB3cmFwcGVyIGRyaXZlciByZWxpZXMgb24gdGhlIHFzY3JhdGNoIHdyYXBwZXIg
cmVnaXN0ZXJzIHdoaWNoCnJlc2lkZSBhdCBhbiBvZmZzZXQgb2YgMHhmODgwMC4gVGhlIGRyaXZl
ciBtb2RpZmllcyB0aGUgcmVxdWVzdGVkIHJlc291cmNlIGVuZAphZGRyZXNzIHRvIGluY2x1ZGUg
dGhpcyBvZmZzZXQsIHdoaWNoIG1lYW5zIGRldm1faW9yZW1hcF9yZXNvdXJjZSgpIHdpbGwKcmVx
dWVzdCBhIHJlZ2lvbiB0aGF0IGV4Y2VlZHMgdGhlIDB4ZTAwMCBieXRlIHJlc291cmNlIHNwZWNp
ZmllZCBoZXJlLgoKQ291bGQgdGhpcyBvdmVybGFwIG1pc21hdGNoIGNhdXNlIGEgcmVzb3VyY2Ug
Y29uZmxpY3QgZHVyaW5nCl9fcmVxdWVzdF9yZWdpb24oKSBhbmQgZmFpbCB0aGUgcHJvYmUgd2l0
aCAtRUJVU1ksIHJlbmRlcmluZyBVU0IgdW51c2FibGUKb24gdGhlIFNvQz8gU2hvdWxkIHRoZSBy
ZWdpb24gYmUgZXhwYW5kZWQgdG8gY292ZXIgdGhlIHdyYXBwZXIgcmVnaXN0ZXJzPwoKLS0gClNh
c2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDgx
Mi1pcHE1MDE4LXVzYjMtdjItMC04ZjM1NWQ3ZmYwZWZAb3V0bG9vay5jb20/cGFydD00CgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
