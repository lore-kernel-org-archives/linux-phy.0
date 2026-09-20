Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3B50C982E1
	for <linux-phy@archiver.kernel.org>; Sun, 20 Sep 2026 12:53:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Xzx74SzNr3XDhqczjKGQFYS6VqkZsFCD30j9+V9yxs=; b=yzx+y7hCXW/ZJ5
	lCHi6nU3f+fVnmlUtrxMUoOwFhh1pj+8CQR3uY6cKdBdweiubxzfgGUZan8sNABgIChKP6B5ZjQaM
	MVOjbv11+OctPdx7kahXZzyjyuvjWI+RM3yU06MUKWrRR/PJEvh4qJOk/Rp1S5xKByfS5Rqp6gosV
	SsJFkwaCqluWJqCBmPpdj8BOzW6alLOQBHw5iXxdDc+7Cwm9my4FpDNdlhjmq4F3noShEk/DvUy3n
	Wq2Z0EEq3tUQVu61Qn0gorIxt06nrHzBJQhW4W5V9Vel+bxzRF1y8ZwIVJNzebBIJ+In+pelhKEGG
	aBGFEzuimqlY0y6t7vTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8H2n-0000000HTC8-04vC;
	Sun, 20 Sep 2026 12:53:21 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8H2m-0000000HTBx-2Ato
	for linux-phy@lists.infradead.org;
	Sun, 20 Sep 2026 12:53:20 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 73A3660209;
	Sun, 20 Sep 2026 12:53:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E5A31F000FF;
	Sun, 20 Sep 2026 12:53:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789908799;
	bh=SKBPvnCf0OrqkCEig86J9amZCxAny2+66nIYZiBwcRU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Z7AFOpYfDl18uLmg37eRWXBNETtHO64gLkt7XG3mO5Qpfkcjum4YYJSGCDGJrhAfL
	 Ix/3ksXSTSKWdUxF7+lroyi6u2atLcVAnhLQUfw4QqjSWKtrtfKFqnbh7nU1lzSYFC
	 n582MSgLw8kPafE0pUBdjZx99TKNyj9nC6qE17hIiYxBr04SF2Ec3zbAfvblqMcOFJ
	 Mm9Q5LLRsv4HZKqIo8agLFDDdZl/0FVlTrnG3L+rou6+Xyju3OWHtkU3z88zxuCYZf
	 4+I50uNogKdwW+Vbi7lk5lVf4mdV3+cXuS8J8eHd7LW5GsNP7HxNCQN6D/Z4l7Qf5A
	 FMuX5mofhXEHg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v8 05/11] arm64: dts: rockchip: rk3568: add
 XPCS and fixed-clock nodes
To: "Coia Prant" <coiaprant@gmail.com>
Cc: neil.armstrong@linaro.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, vkoul@kernel.org, robh@kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org, wsa+renesas@sang-engineering.com
In-Reply-To: <20260919125119.2107089-6-coiaprant@gmail.com>
References: <20260919125119.2107089-1-coiaprant@gmail.com>
 <20260919125119.2107089-6-coiaprant@gmail.com>
Date: Sun, 20 Sep 2026 12:53:18 +0000
Message-Id: <20260920125318.9E5A31F000FF@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gZGV2aWNldHJlZTogZml4
ZWQtY2xvY2sgYW50aS1wYXR0ZXJuIGZvciBpbnRlcm5hbCBYUENTIGNsb2NrcwotIFtMb3ddIGRl
dmljZXRyZWU6IG1pc3NpbmcgcmVxdWlyZWQgcGh5cyBwcm9wZXJ0eSBpbiB4cGNzIG5vZGUKLS0K
CmNvbW1pdCA3NTI5NTkwMTNlOTYzZjMxYTFmZmMyYjU5YThhNTU2YmM0ODFhN2MzCkF1dGhvcjog
Q29pYSBQcmFudCA8Y29pYXByYW50QGdtYWlsLmNvbT4KYXJtNjQ6IGR0czogcm9ja2NoaXA6IHJr
MzU2ODogYWRkIFhQQ1MgYW5kIGZpeGVkLWNsb2NrIG5vZGVzCgpUaGlzIGNvbW1pdCBhZGRzIHRo
ZSBYUENTIGRldmljZSBub2RlIGFuZCBhc3NvY2lhdGVkIGZpeGVkLWNsb2NrIG5vZGVzIHRvCnRo
ZSBSSzM1NjggU29DIGRldmljZSB0cmVlIHRvIHN1cHBvcnQgMTAwMEJBU0UtWCwgU0dNSUksIGFu
ZCBRU0dNSUkKaW50ZXJmYWNlcy4gVGhlIFhQQ1Mgbm9kZSByZXF1aXJlcyBib2FyZC1sZXZlbCBh
Y3RpdmF0aW9uIGFuZCBQSFkKYXNzaWdubWVudHMsIHdoaWxlIHRoZSBmaXhlZC1jbG9jayBub2Rl
cyBhcmUgaW50cm9kdWNlZCB0byBwcm92aWRlIGEKc3RhdGljIDEyNSBNSHogcmVmZXJlbmNlLgoK
PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjguZHRzaSBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LmR0c2kKPiAtLS0gYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC5kdHNpCj4gKysrIGIvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazM1NjguZHRzaQo+IEBAIC0xMTAsNiArMTEwLDUxIEBAIHNhdGEwOiBz
YXRhQGZjMDAwMDAwIHsKPiAgCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ICAJfTsKPiAgCj4gKwl4
cGNzOiBldGhlcm5ldC1wY3NAZmRhMDAwMDAgewo+ICsJCWNvbXBhdGlibGUgPSAicm9ja2NoaXAs
cmszNTY4LXhwY3MiOwo+ICsJCSNhZGRyZXNzLWNlbGxzID0gPDE+Owo+ICsJCSNzaXplLWNlbGxz
ID0gPDA+Owo+ICsJCXJlZyA9IDwweDAgMHhmZGEwMDAwMCAweDAgMHgyMDAwMDA+Owo+ICsJCWNs
b2NrcyA9IDwmY3J1IFBDTEtfWFBDUz4sIDwmY3J1IENMS19YUENTX0VFRT47Cj4gKwkJY2xvY2st
bmFtZXMgPSAiY3NyIiwgImVlZSI7Cj4gKwkJcG93ZXItZG9tYWlucyA9IDwmcG93ZXIgUkszNTY4
X1BEX1BJUEU+Owo+ICsJCXN0YXR1cyA9ICJkaXNhYmxlZCI7CgpbU2V2ZXJpdHk6IExvd10KVGhl
IGNvbW1pdCBtZXNzYWdlIHN0YXRlcyB0aGF0ICJkdGJzX2NoZWNrIG9ubHkgdmFsaWRhdGVzIHJl
cXVpcmVkIHByb3BlcnRpZXMKZm9yIGVuYWJsZWQgbm9kZXMsIHNvIHRoZSBTb0MgZHRzaSBkb2Vz
IG5vdCBwcm92aWRlIHBoeXMvcGh5LW5hbWVzIi4gSXMgdGhpcwphc3N1bXB0aW9uIGFjY3VyYXRl
PwoKZHQtc2NoZW1hIGV2YWx1YXRlcyBhbGwgbm9kZXMgYWdhaW5zdCB0aGUgcmVxdWlyZWQgbGlz
dCByZWdhcmRsZXNzIG9mIHRoZQpzdGF0dXMgcHJvcGVydHksIHVubGVzcyB0aGUgc2NoZW1hIGV4
cGxpY2l0bHkgY29uZGl0aW9ucyB0aGUgcmVxdWlyZW1lbnQuIFdpbGwKdGhpcyBvbWlzc2lvbiBj
YXVzZSBtYWtlIGR0YnNfY2hlY2sgdG8gdGhyb3cgdmFsaWRhdGlvbiBlcnJvcnMgZm9yIGFsbCBS
SzM1NjgKYm9hcmRzIHRoYXQgbGVhdmUgdGhlIFhQQ1Mgbm9kZSBkaXNhYmxlZD8KClsgLi4uIF0K
Cj4gKwljbGtfZ21hYzBfeHBjc19taWk6IGNsb2NrLXhwY3MtZ21hYzAgewo+ICsJCWNvbXBhdGli
bGUgPSAiZml4ZWQtY2xvY2siOwo+ICsJCWNsb2NrLWZyZXF1ZW5jeSA9IDwxMjUwMDAwMDA+Owo+
ICsJCWNsb2NrLW91dHB1dC1uYW1lcyA9ICJjbGtfZ21hYzBfeHBjc19taWkiOwo+ICsJCSNjbG9j
ay1jZWxscyA9IDwwPjsKPiArCX07CgpbU2V2ZXJpdHk6IExvd10KRG9lcyB1c2luZyBhIGZpeGVk
LWNsb2NrIGhlcmUgYWNjdXJhdGVseSBtb2RlbCB0aGUgaGFyZHdhcmU/CgpTaW5jZSB0aGUgMTI1
IE1IeiByZWZlcmVuY2UgY2xvY2sgaXMgZ2VuZXJhdGVkIGludGVybmFsbHkgYnkgdGhlIFhQQ1Mg
b3IKQ29tYm8gUEhZLCByZXByZXNlbnRpbmcgaXQgYXMgYSBmaXhlZCByb290IG9zY2lsbGF0b3Ig
YXBwZWFycyB0byB2aW9sYXRlCmRldmljZXRyZWUgaGFyZHdhcmUgbW9kZWxpbmcgcHJpbmNpcGxl
cy4KClNob3VsZCB0aGUgSVAgYmxvY2sgdGhhdCBhY3R1YWxseSBnZW5lcmF0ZXMgdGhpcyBjbG9j
ayBhY3QgYXMgdGhlIGNsb2NrCnByb3ZpZGVyLCBpbnN0ZWFkIG9mIGluamVjdGluZyBhIGR1bW15
IGZpeGVkLWNsb2NrIG5vZGUgaW50byB0aGUgZGV2aWNlIHRyZWU/CgotLSAKU2FzaGlrbyBBSSBy
ZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwOTE5MTI1MTE5LjIx
MDcwODktMS1jb2lhcHJhbnRAZ21haWwuY29tP3BhcnQ9NQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
