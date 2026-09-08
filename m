Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28385C79F82
	for <linux-phy@archiver.kernel.org>; Tue,  8 Sep 2026 15:40:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q9st4e5j4qkjP3RDf+5/9MBtCTtQkeRAFb1Q0IHGmms=; b=xyR4xF9UydDnZ0
	Qf7D63k7LmMNDe2UyJp148lrxEbsNrp/c7CZtSGoKFLvZTp1N+yQ7NLeitasEBJzogWDTBu5xvjgy
	iPsWRqqWoMEIbcnNbWGgJ/+KPz5Iu4ANpDuFjyv0EVY8PlxzMx6tBDQscO1duJcPdoYrNTYKMSlT9
	fCYZFWt5bsmrQw+get1VdLptw//urn/I6epu799O+U4AHZtclWnKaArJ2+ZSdV+rtPaJBqz/ccPHA
	N9IxvMZwFCNXKvoc0u+QaZ0VQqvFLHZs+ieLaQTY38ITym0FQSHfjU80SZI74wp1PnBEy309kR794
	PXu0ijvLV+3rKjhUFacw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3xvw-00000009WHn-3ERM;
	Tue, 08 Sep 2026 15:40:28 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3xvv-00000009WHV-27rP
	for linux-phy@lists.infradead.org;
	Tue, 08 Sep 2026 15:40:27 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 9B5E0601F6;
	Tue,  8 Sep 2026 15:40:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0711D1F00A3A;
	Tue,  8 Sep 2026 15:40:25 +0000 (UTC)
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v4 05/10] arm64: dts: rockchip: rk3568: add
 XPCS and fixed-clock nodes
To: "Coia Prant" <coiaprant@gmail.com>
Cc: robh@kernel.org, wsa+renesas@sang-engineering.com, vkoul@kernel.org, conor+dt@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, devicetree@vger.kernel.org
In-Reply-To: <20260907153713.2572547-7-coiaprant@gmail.com>
References: <20260907153713.2572547-2-coiaprant@gmail.com>
 <20260907153713.2572547-7-coiaprant@gmail.com>
Date: Tue, 08 Sep 2026 15:39:55 +0000
Message-Id: <20260908154026.0711D1F00A3A@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gTWlzc2luZyAncGh5LW5h
bWVzJyBhbmQgJ3BoeXMnIHByb3BlcnRpZXMgaW4gdGhlIFhQQ1Mgbm9kZSBjYXVzZXMgZHRic19j
aGVjayBmYWlsdXJlcy4KLSBbTG93XSBUaGUgZml4ZWQtY2xvY2sgbm9kZXMgdXNlIGEgZGVwcmVj
YXRlZCBuYW1pbmcgY29udmVudGlvbi4KLS0KCmNvbW1pdCA0NGJjZWNjM2FiMzZkYWFhZmJjYWEw
YjA1YzQxZTE5NGI5ZGE0YzA2CkF1dGhvcjogQ29pYSBQcmFudCA8Y29pYXByYW50QGdtYWlsLmNv
bT4KCmFybTY0OiBkdHM6IHJvY2tjaGlwOiByazM1Njg6IGFkZCBYUENTIGFuZCBmaXhlZC1jbG9j
ayBub2RlcwoKVGhpcyBjb21taXQgYWRkcyB0aGUgWFBDUyBkZXZpY2Ugbm9kZSBhbmQgaXRzIHBj
cy1taWkgc3ViLW5vZGVzIHRvIHRoZSBSSzM1NjgKU29DIGRldmljZSB0cmVlLCBhbG9uZyB3aXRo
IHR3byBmaXhlZC1jbG9jayBub2RlcyBmb3IgdGhlIEdNQUMgcmVmZXJlbmNlCmNsb2Nrcy4gVGhl
IFhQQ1Mgbm9kZSBpcyBkaXNhYmxlZCBieSBkZWZhdWx0IGFuZCBtZWFudCB0byBiZSBlbmFibGVk
IGF0IHRoZQpib2FyZCBsZXZlbC4KCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTY4LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2
OC5kdHNpCj4gaW5kZXggM2JjNjUzZjAyN2YxZi4uOTg5ZTE2NGMwZWIzOSAxMDA2NDQKPiAtLS0g
YS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC5kdHNpCj4gKysrIGIvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjguZHRzaQo+IEBAIC0xMTAsNiArMTEwLDUxIEBA
IHNhdGEwOiBzYXRhQGZjMDAwMDAwIHsKPiAgCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ICAJfTsK
PiAgCj4gKwl4cGNzOiBwY3NAZmRhMDAwMDAgewo+ICsJCWNvbXBhdGlibGUgPSAicm9ja2NoaXAs
cmszNTY4LXhwY3MiOwo+ICsJCSNhZGRyZXNzLWNlbGxzID0gPDE+Owo+ICsJCSNzaXplLWNlbGxz
ID0gPDA+Owo+ICsJCXJlZyA9IDwweDAgMHhmZGEwMDAwMCAweDAgMHgyMDAwMDA+Owo+ICsJCWNs
b2NrcyA9IDwmY3J1IFBDTEtfWFBDUz4sIDwmY3J1IENMS19YUENTX0VFRT47Cj4gKwkJY2xvY2st
bmFtZXMgPSAiY3NyIiwgImVlZSI7Cj4gKwkJcG93ZXItZG9tYWlucyA9IDwmcG93ZXIgUkszNTY4
X1BEX1BJUEU+Owo+ICsJCXN0YXR1cyA9ICJkaXNhYmxlZCI7CgpbU2V2ZXJpdHk6IExvd10KV2ls
bCB0aGlzIGNhdXNlIG1ha2UgZHRic19jaGVjayBmYWlsdXJlcyBkdXJpbmcga2VybmVsIGJ1aWxk
cz8gVGhlIGR0LXNjaGVtYQp0b29sIHVuY29uZGl0aW9uYWxseSB2YWxpZGF0ZXMgYWxsIG5vZGVz
IGFnYWluc3Qgcm9ja2NoaXAtZHd4cGNzLnlhbWwsCmluY2x1ZGluZyB0aG9zZSB3aXRoIHN0YXR1
cyA9ICJkaXNhYmxlZCIuCgpCZWNhdXNlIHBoeXMgYW5kIHBoeS1uYW1lcyBhcmUgc3RyaWN0bHkg
cmVxdWlyZWQgYnkgdGhlIGJpbmRpbmcsIG9taXR0aW5nCnRoZW0gaGVyZSBpbiByazM1NjguZHRz
aSBicmVha3MgRFQgdmFsaWRhdGlvbiBmb3IgYWxsIFJLMzU2OCBib2FyZHMgdGhhdAppbmNsdWRl
IHRoaXMgZmlsZSB3aXRob3V0IGV4cGxpY2l0bHkgcHJvdmlkaW5nIHRoZXNlIHByb3BlcnRpZXMu
CgpbIC4uLiBdCgo+ICsJeHBjc19nbWFjMF9jbGs6IHhwY3MtZ21hYzAtY2xvY2sgewo+ICsJCWNv
bXBhdGlibGUgPSAiZml4ZWQtY2xvY2siOwoKW1NldmVyaXR5OiBMb3ddCkNvdWxkIHRoaXMgbm9k
ZSBuYW1lIHRyaWdnZXIgZGVwcmVjYXRpb24gd2FybmluZ3MgZHVyaW5nIG1ha2UgZHRic19jaGVj
az8KClRoZSBmaXhlZC1jbG9jay55YW1sIHNjaGVtYSByZXN0cmljdHMgdmFsaWQgbm9kZSBuYW1l
cyB0byB0aGUgcGF0dGVybgpeY2xvY2stKFswLTldK3xbYS16MC05LV0rKSQuIE5hbWVzIG91dHNp
ZGUgdGhpcyBwYXR0ZXJuLCBsaWtlCnhwY3MtZ21hYzAtY2xvY2ssIGZhbGwgdW5kZXIgYSBsZWdh
Y3kgZGVmaW5pdGlvbiB0YWdnZWQgYXMgZGVwcmVjYXRlZC4KCj4gKwkJY2xvY2stZnJlcXVlbmN5
ID0gPDEyNTAwMDAwMD47Cj4gKwkJY2xvY2stb3V0cHV0LW5hbWVzID0gImNsa19nbWFjMF94cGNz
X21paSI7Cj4gKwkJI2Nsb2NrLWNlbGxzID0gPDA+Owo+ICsJfTsKPiArCj4gKwl4cGNzX2dtYWMx
X2NsazogeHBjcy1nbWFjMS1jbG9jayB7Cj4gKwkJY29tcGF0aWJsZSA9ICJmaXhlZC1jbG9jayI7
CgpbU2V2ZXJpdHk6IExvd10KRG9lcyB0aGlzIG5vZGUgbmFtZSBhbHNvIHRyaWdnZXIgYSBkZXBy
ZWNhdGlvbiB3YXJuaW5nIGZvciB0aGUgc2FtZSByZWFzb24/Cgo+ICsJCWNsb2NrLWZyZXF1ZW5j
eSA9IDwxMjUwMDAwMDA+Owo+ICsJCWNsb2NrLW91dHB1dC1uYW1lcyA9ICJjbGtfZ21hYzFfeHBj
c19taWkiOwo+ICsJCSNjbG9jay1jZWxscyA9IDwwPjsKPiArCX07CgotLSAKU2FzaGlrbyBBSSBy
ZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwOTA3MTUzNzEzLjI1
NzI1NDctMi1jb2lhcHJhbnRAZ21haWwuY29tP3BhcnQ9NQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
