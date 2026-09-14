Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69B21C88E64
	for <linux-phy@archiver.kernel.org>; Mon, 14 Sep 2026 12:52:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HRlkk1r/VjC4IjNQfdtLVqdPi3m8VwMDoqzIxkzUS8c=; b=QG40jV3Lsgccet
	fonT7EGJESFilevkoKvpIG11re/3XB0ZQYXMk8qR6bIs2fhYf8PEQenoSBFCN+/MHH1qkwhJHSCFg
	Z861uP0wwy01rnmu766VwA0oajGicu1F49XQnxcOJkuqdfoeEvUg8dy4QszyLLLMARGoxjpJJcuXM
	W167nXtfOKN0oE3adawgdAE+2/S9bO3oJGRjDx9jNISShM9h5UEpOzV5WwXcMJyjNqwsUHin99rlb
	S5WfE5+2SZ2XpagHiO5ma6m8mj0v7hW8IT3ZNqPzwbwSJVXr3akzcLVHr4by0TKJ9xOm/dq3K3kmL
	4bqm+2UdE84OIyHsIqiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x66AO-00000003f5E-0Vmr;
	Mon, 14 Sep 2026 12:52:12 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x66AN-00000003f57-3imF
	for linux-phy@lists.infradead.org;
	Mon, 14 Sep 2026 12:52:11 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 5731860120;
	Mon, 14 Sep 2026 12:52:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 917E81F000FF;
	Mon, 14 Sep 2026 12:52:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789390331;
	bh=6HFKDlCakjHm8v3rWQyTg1AphVxGEW3ItLsq5ZzzrGo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=BLQ+ZkRwJDar2F2Ldm1ri34iGMBsH5cr6Bh2SY8SGw07OnTMDuSxIckkBD2t9/A5y
	 KspiUTsIxecBQY8OlT2Qnk+CvPNA0OxLvnR9lNu35QM4foI/i1frHyUAXttD3no+Nh
	 jOLVTImXzjxfx8na4gnabjgm/Kv91hOrOmH3OSdKGglW/JKAvfJ+NxgwD/9pYDwVqK
	 NlIH3doDIIgjIrzlkm7TPcA0Xw+48NKoZZ9Eke7xaQXnkNwwWs17BlEpNDgWy60V+N
	 DP3S2O4mRWPyXOtasszxOzT4J5iIZjjIF/qjEtrQERFn3Sdio0RkydpkfrDfQhB/YA
	 nLmfXUIPatprQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v12 15/24] scsi: ufs: mediatek: Remove
 mediatek,ufs-broken-rtc property
To: "Louis-Alexis Eyraud" <louisalexis.eyraud@collabora.com>
Cc: robh@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, vkoul@kernel.org, linux-scsi@vger.kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260914-mt8196-ufs-v12-15-9279d7ef814d@collabora.com>
References: <20260914-mt8196-ufs-v12-0-9279d7ef814d@collabora.com>
 <20260914-mt8196-ufs-v12-15-9279d7ef814d@collabora.com>
Date: Mon, 14 Sep 2026 12:52:10 +0000
Message-Id: <20260914125210.917E81F000FF@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVGhlIHBhdGNoIHJlbW92
ZXMgdGhlIG9ubHkgc2V0dGVyIG9mIHRoZSBVRlNIQ0RfUVVJUktfTUNRX0JST0tFTl9SVEMgcXVp
cmssIGxlYXZpbmcgZGVhZCBjb2RlIGluIHRoZSBVRlMgY29yZS4KLS0KCmNvbW1pdCA4MmEwNGFk
NGJjNGFhN2YxNzlkZDVjNDM1MDAwMWMxZGNlZmY2YTU2CkF1dGhvcjogTmljb2xhcyBGcmF0dGFy
b2xpIDxuaWNvbGFzLmZyYXR0YXJvbGlAY29sbGFib3JhLmNvbT4KCnNjc2k6IHVmczogbWVkaWF0
ZWs6IFJlbW92ZSBtZWRpYXRlayx1ZnMtYnJva2VuLXJ0YyBwcm9wZXJ0eQoKVGhpcyBjb21taXQg
cmVtb3ZlcyB0aGUgdW5kb2N1bWVudGVkIG1lZGlhdGVrLHVmcy1icm9rZW4tcnRjIHByb3BlcnR5
IGFuZAppdHMgY2FwYWJpbGl0eSB3cmFwcGVyLiBJZiB0aGUgcXVpcmsgaXMgbmVlZGVkIGZvciBz
cGVjaWZpYyBNZWRpYVRlayBTb0NzLCBpdAppcyBleHBlY3RlZCB0byBiZSBoYW5kbGVkIHBlci1j
b21wYXRpYmxlIGluc3RlYWQuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3Vmcy9ob3N0L3Vmcy1t
ZWRpYXRlay5jIGIvZHJpdmVycy91ZnMvaG9zdC91ZnMtbWVkaWF0ZWsuYwo+IGluZGV4IDUzODAw
OWUzYjFmMTcuLjhlMmFlYjg3N2RlODMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy91ZnMvaG9zdC91
ZnMtbWVkaWF0ZWsuYwo+ICsrKyBiL2RyaXZlcnMvdWZzL2hvc3QvdWZzLW1lZGlhdGVrLmMKWyAu
Li4gXQo+IEBAIC0xMjM0LDggKzEyMzEsNiBAQCBzdGF0aWMgaW50IHVmc19tdGtfaW5pdChzdHJ1
Y3QgdWZzX2hiYSAqaGJhKQo+ICAJaGJhLT5xdWlya3MgfD0gVUZTSENJX1FVSVJLX1NLSVBfTUFO
VUFMX1dCX0ZMVVNIX0NUUkw7Cj4gIAo+ICAJaGJhLT5xdWlya3MgfD0gVUZTSENEX1FVSVJLX01D
UV9CUk9LRU5fSU5UUjsKPiAtCWlmIChob3N0LT5jYXBzICYgVUZTX01US19DQVBfTUNRX0JST0tF
Tl9SVEMpCj4gLQkJaGJhLT5xdWlya3MgfD0gVUZTSENEX1FVSVJLX01DUV9CUk9LRU5fUlRDOwoK
W1NldmVyaXR5OiBMb3ddCkRvZXMgdGhpcyByZW1vdmFsIGxlYXZlIFVGU0hDRF9RVUlSS19NQ1Ff
QlJPS0VOX1JUQyBhcyBkZWFkIGNvZGUgaW4gdGhlIFVGUwpjb3JlPwoKU2luY2Ugbm8gb3RoZXIg
aG9zdCBkcml2ZXIgYXBwZWFycyB0byBzZXQgdGhpcyBxdWlyaywgdGhlIGNoZWNrcyBpbgpkcml2
ZXJzL3Vmcy9jb3JlL3Vmcy1tY3EuYyAoc3VjaCBhcyBpbiB1ZnNoY2RfbWNxX3NxX3N0b3ApIGFu
ZCBpdHMgZGVmaW5pdGlvbgppbiBpbmNsdWRlL3Vmcy91ZnNoY2QuaCBtaWdodCBub3cgYmUgdW5y
ZWFjaGFibGU6Cgpkcml2ZXJzL3Vmcy9jb3JlL3Vmcy1tY3EuYzp1ZnNoY2RfbWNxX3NxX3N0b3Ao
KSB7CiAgICAuLi4KCWlmIChoYmEtPnF1aXJrcyAmIFVGU0hDRF9RVUlSS19NQ1FfQlJPS0VOX1JU
QykKCQlyZXR1cm4gLUVUSU1FRE9VVDsKICAgIC4uLgp9CgpTaG91bGQgdGhlIFVGU0hDRF9RVUlS
S19NQ1FfQlJPS0VOX1JUQyBkZWZpbml0aW9uIGFuZCBpdHMgcmVsYXRlZCBjaGVja3MgYWxzbwpi
ZSBjbGVhbmVkIHVwIGZyb20gdGhlIGNvcmU/Cgo+ICAKPiAgCWhiYS0+dnBzLT53Yl9mbHVzaF90
aHJlc2hvbGQgPSBVRlNfV0JfQlVGX1JFTUFJTl9QRVJDRU5UKDgwKTsKPgoKLS0gClNhc2hpa28g
QUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDkxNC1tdDgx
OTYtdWZzLXYxMi0wLTkyNzlkN2VmODE0ZEBjb2xsYWJvcmEuY29tP3BhcnQ9MTUKCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
