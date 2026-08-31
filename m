Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 346D7C61DD3
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 07:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8pNly4HSljiC7KP0aucTrmmJ+VH2KzL2XZ8Lwe0yCnw=; b=Rn7yb9zoBxN7wj
	z2xZj0VWrhYJ405mNO1OEuuCmlwZ7f+Ksz8dqceYlZhC9VVriPLUaqq8o+ne22eT/ew/mt3qgQVal
	tGxM56verE0fLDs/YE8cV0ruarEx8vjfSXZJ9raIphW80i+oZcPrP2WJTUpBVhtBFolNOTkTXar09
	sQlBS4Hy5shVETa+n67MnjOuZpJc8EHDxFemz/z/u07HwoXmeTnfe3nCIuOj7WK0OC4H1jcc3MEIt
	RsyxxnWBNsKdtLW3HJGfWt3qxOsOl2S2WPYxH5EJGifu9tdRB0ExxIrGZM32NfBMzgv2WjgoIDW9I
	IZIGC8A5tGnnvTaqokJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0wYm-00000008jtW-3ifw;
	Mon, 31 Aug 2026 07:36:04 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0wYm-00000008jt1-02ZG
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 07:36:04 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 4E44160120;
	Mon, 31 Aug 2026 07:36:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7D0A21F000E9;
	Mon, 31 Aug 2026 07:36:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788161763;
	bh=XZ1ojzXpjvALSsW1J2HhrT3FxnBEgPvR4qHa5xPNNnc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=QbHxxELHj8EIsUsNJmg1P3WAmZ97v0Wf3zyMq0yNAeqghBtxVA/LYIkhyNZj9Wp0H
	 h0tMbTz6Tfm11/74Q264Nf476ekJbZ47KHqmqlC+MX/jdOR5WXChFNlumgvT0/bA04
	 2QHXF5WKp3tRXPP1OQ8k4+KDJ6euk8IKbNMVGuu2N12VrBcmmwtHUNb8PMYQm87O2q
	 qg6/D2eNpfrT+2RAjiSMZMAhNpDE/Nz4O4oAOpvvCiOqtUtXzpMjwN152J2AQh9LCw
	 nNLCOQpwe65sqUW7Vl23erqbOi/MxDaYRJxaCDAqeUC5xPHNDfooQg8WcUteSono/A
	 YVJksbMrTtQOA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/5] dt-bindings: PCI: qcom,shikra-pcie: Document the
 Shikra PCIe Controller
To: "Sushrut Shree Trivedi" <sushrut.trivedi@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, olteanv@gmail.com, robh@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, linux-pci@vger.kernel.org, vkoul@kernel.org
In-Reply-To: <20260831-shikra-upstream-v2-2-406661d75afa@oss.qualcomm.com>
References: <20260831-shikra-upstream-v2-0-406661d75afa@oss.qualcomm.com>
 <20260831-shikra-upstream-v2-2-406661d75afa@oss.qualcomm.com>
Date: Mon, 31 Aug 2026 07:36:02 +0000
Message-Id: <20260831073602.7D0A21F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIGJpbmRpbmcg
c2NoZW1hIGZhaWxzIHRvIHN0cnVjdHVyYWxseSBlbmZvcmNlIHRoZSBtYXhpbXVtIGxpbmsgc3Bl
ZWQgbGltaXRhdGlvbiBvZiB0aGUgaGFyZHdhcmUuCi0tCgpjb21taXQgOTczNDBkYzA3ZTY1MTJi
YTNiOTI3YjRiYjNjYTQ0NTNlNzZlODBjOApBdXRob3I6IFN1c2hydXQgU2hyZWUgVHJpdmVkaSA8
c3VzaHJ1dC50cml2ZWRpQG9zcy5xdWFsY29tbS5jb20+CgpkdC1iaW5kaW5nczogUENJOiBxY29t
LHNoaWtyYS1wY2llOiBEb2N1bWVudCB0aGUgU2hpa3JhIFBDSWUgQ29udHJvbGxlcgoKQWRkIGEg
ZGVkaWNhdGVkIHNjaGVtYSBmb3IgdGhlIFBDSWUgY29udHJvbGxlciBmb3VuZCBvbiB0aGUgU2hp
a3JhIHBsYXRmb3JtLgpUaGUgY29udHJvbGxlciBzdXBwb3J0cyB1cCB0byBQQ0llIEdlbjMsIGJ1
dCB0aGUgUEhZIGlzIGxpbWl0ZWQgdG8gR2VuMiwgc28KdGhlIG1heCBsaW5rIHNwZWVkIGlzIHJl
c3RyaWN0ZWQgdG8gYXZvaWQgbGluay11cCBmYWlsdXJlcy4KCj4gZGlmZiAtLWdpdCBhL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcWNvbSxzaGlrcmEtcGNpZS55YW1sIGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9xY29tLHNoaWtyYS1wY2llLnlh
bWwKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMDAuLjczYjhlYzcy
MmYyYTAKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3BjaS9xY29tLHNoaWtyYS1wY2llLnlhbWwKWyAuLi4gXQo+ICtkZXNjcmlwdGlvbjoK
PiArICBRdWFsY29tbSBTaGlrcmEgU29DIFBDSWUgUm9vdCBDb21wbGV4IGlzIGJhc2VkIG9uCj4g
KyAgdGhlIFN5bm9wc3lzIERlc2lnbldhcmUgUENJZSBJUC4KPiArCj4gK3Byb3BlcnRpZXM6Cj4g
KyAgY29tcGF0aWJsZToKPiArICAgIGNvbnN0OiBxY29tLHNoaWtyYS1wY2llCgpbU2V2ZXJpdHk6
IE1lZGl1bV0KU2luY2UgdGhlIGNvbW1pdCBtZXNzYWdlIG5vdGVzIHRoZSBQSFkgaXMgb25seSBj
YXBhYmxlIG9mIEdlbjIgYW5kIHRoZSBtYXgKbGluayBzcGVlZCBtdXN0IGJlIGxpbWl0ZWQgdG8g
R2VuMiwgc2hvdWxkIHdlIHN0cnVjdHVyYWxseSBlbmZvcmNlIHRoaXMgbGltaXQKaW4gdGhlIHBy
b3BlcnRpZXMgYmxvY2s/CgpXaXRob3V0IHNwZWNpZnlpbmcgbWF4LWxpbmstc3BlZWQ6IG1heGlt
dW06IDIgKG9yIGVudW06IFsxLCAyXSkgaGVyZSwgdGhlCnNjaGVtYSBpbmhlcml0cyB0aGUgZGVm
YXVsdCBnZW5lcmljIGxpbWl0IChtYXhpbXVtIDUpLCBhbGxvd2luZyBpbnZhbGlkCmRldmljZSB0
cmVlcyB3aXRoIGEgbWF4LWxpbmstc3BlZWQgZ3JlYXRlciB0aGFuIDIgdG8gc2lsZW50bHkgcGFz
cwpkdF9iaW5kaW5nX2NoZWNrLgoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2Fz
aGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDgzMS1zaGlrcmEtdXBzdHJlYW0tdjItMC00MDY2NjFk
NzVhZmFAb3NzLnF1YWxjb21tLmNvbT9wYXJ0PTIKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
