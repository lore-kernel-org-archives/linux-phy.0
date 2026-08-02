Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD777C55175
	for <linux-phy@archiver.kernel.org>; Sun,  2 Aug 2026 14:25:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1lavWz3z3aaTydn/+Z1VxPG7QGl7laeI5EnbBB1xQBs=; b=dmkzJVTv1ceggm
	HOnEaX6tG5XOMdE5S8gYhJjCUdFGuo88LXcsk7ahNtN8gpFT1a99E2mZBe40TfeLZu1wRlNCli501
	FggIGyAiehp8FIkuh/Rbue2kzotogGsKcs12Bz2afuwlKET9IMUmZ9zIQzXXYoBE5xHglQRgQY/2z
	7Bwi6aebE1u3dURaDTRo2mc1x1F+BBHhhS5VTkNYjf987djHlL7cbDilP8TXoUkoMgyBDcYrp2nYN
	YynbSPQSfhh+c7c/bGdclZ2OlQRxbGNPmeCeW6ww3yZTIWPMjMWtKD8vgbeEeB8bojRTq//bukTdO
	MgZ/dv3OcwQOiKDzalDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqX8N-0000000FiDl-1Pfx;
	Sun, 02 Aug 2026 14:25:47 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqX8L-0000000FiD7-2h0r
	for linux-phy@lists.infradead.org;
	Sun, 02 Aug 2026 14:25:45 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 1BE6360DD8;
	Sun,  2 Aug 2026 14:25:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B61F1F000E9;
	Sun,  2 Aug 2026 14:25:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785680744;
	bh=cl53CQ7ODMQtZ2fnkPnRVoAG6vvhuGOqM5Qi0fvSgec=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=DJnwVJF+4yIVAChXeWaic97jZAF/u7hjs7GhlTFROgdPwMqQVYzMyjtD/HXUZfUJk
	 estbUiJZ0XzLUOg1rW/Ak4UMzxqBcuRBd7XM+92CRlT8FvD5BQD0OE/DcCO19k4JYJ
	 uoB9iOv0EN+9OuLWK8Zyyc6qyalBtCgkMS3ndAIkKi7/gpOiceURLBTaV10TYxStfg
	 44/djKEfT89b19tFDinTn/cTNkLfu/u7/eEr2yxE44zvpiA2Ce04Z3b+tEwOdLAAo2
	 lzClh/kQFxa/3SSFMhV51nHikLXMDTZPpxWB38XIzsrbRNEGJL35/WeL7UQykZ4+ua
	 VIoPPorU+yDxA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 09/10] arm64: dts: rockchip: rk3568-photonicat:
 enable SGMII LAN port
To: "Coia Prant" <coiaprant@gmail.com>
Cc: neil.armstrong@linaro.org, devicetree@vger.kernel.org, conor+dt@kernel.org, wsa+renesas@sang-engineering.com, olteanv@gmail.com, linux-phy@lists.infradead.org, robh@kernel.org, vkoul@kernel.org
In-Reply-To: <20260801142244.679437-11-coiaprant@gmail.com>
References: <20260801142244.679437-2-coiaprant@gmail.com>
 <20260801142244.679437-11-coiaprant@gmail.com>
Date: Sun, 02 Aug 2026 14:25:43 +0000
Message-Id: <20260802142544.1B61F1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVGhlIFlUODUyMVNDIFBI
WSBub2RlIHNwZWNpZmllcyAxMEcgRW5lcmd5IEVmZmljaWVudCBFdGhlcm5ldCAoRUVFKSBlcnJh
dGEgcHJvcGVydGllcyAoYGVlZS1icm9rZW4tMTBndGAsIGBlZWUtYnJva2VuLTEwZ2t4NGAsIGBl
ZWUtYnJva2VuLTEwZ2tyYCkgZGVzcGl0ZSBiZWluZyBhIEdpZ2FiaXQgUEhZLgotLQoKLS0tIFBh
dGNoIFs5XTogW1BBVENIIHYyIDA5LzEwXSBhcm02NDogZHRzOiByb2NrY2hpcDogcmszNTY4LXBo
b3RvbmljYXQ6IGVuYWJsZSBTR01JSSBMQU4gcG9ydCAtLS0KY29tbWl0IDA4ZWU0YmY4N2Y2MmFh
YTU5M2I2MmZmYjBhMzdmOGY4NjE4YTZhMmEKQXV0aG9yOiBDb2lhIFByYW50IDxjb2lhcHJhbnRA
Z21haWwuY29tPgoKYXJtNjQ6IGR0czogcm9ja2NoaXA6IHJrMzU2OC1waG90b25pY2F0OiBlbmFi
bGUgU0dNSUkgTEFOIHBvcnQKClRoaXMgY29tbWl0IGVuYWJsZXMgdGhlIFNHTUlJIExBTiBwb3J0
IG9uIHRoZSBBcmlhYm9hcmQgUGhvdG9uaWNhdCwKYWRkaW5nIHRoZSBuZWNlc3NhcnkgWFBDUywg
R01BQzAsIGFuZCBNRElPMCBub2RlcyB0byBtYWtlIHRoZSBNb3RvcmNvbW0KWVQ4NTIxU0MgR2ln
YWJpdCBFdGhlcm5ldCBQSFkgZnVuY3Rpb25hbC4KCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXBob3RvbmljYXQuZHRzIGIvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazM1NjgtcGhvdG9uaWNhdC5kdHMKPiAtLS0gYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1waG90b25pY2F0LmR0cwo+ICsrKyBiL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXBob3RvbmljYXQuZHRzClsgLi4uIF0KPiBAQCAtMzQx
LDYgKzM1MiwzOSBAQCAmaTJzMF84Y2ggewo+ICAJc3RhdHVzID0gIm9rYXkiOwo+ICB9Owo+ICAK
PiArJm1kaW8wIHsKPiArCXNnbWlpX3BoeTogZXRoZXJuZXQtcGh5QDMgewo+ICsJCWNvbXBhdGli
bGUgPSAiZXRoZXJuZXQtcGh5LWlkMDAwMC4wMTFhIjsKPiArCQlyZWcgPSA8MHgzPjsKPiArCQlt
YXgtc3BlZWQgPSA8MTAwMD47Cj4gKwkJZWVlLWJyb2tlbi0xMGd0Owo+ICsJCWVlZS1icm9rZW4t
MTBna3g0Owo+ICsJCWVlZS1icm9rZW4tMTBna3I7CgpbU2V2ZXJpdHk6IExvd10KQXJlIHRoZXNl
IDEwRyBFbmVyZ3kgRWZmaWNpZW50IEV0aGVybmV0IChFRUUpIGVycmF0YSBwcm9wZXJ0aWVzIGlu
dGVuZGVkIGZvcgp0aGlzIEdpZ2FiaXQgUEhZPyBTaW5jZSBtYXgtc3BlZWQgaXMgbGltaXRlZCB0
byAxMDAwLCB0aGVzZSAxMEctc3BlY2lmaWMKcHJvcGVydGllcyBhcHBlYXIgdG8gYmUgaW5hcHBs
aWNhYmxlIHRvIHRoaXMgZGV2aWNlLgoKPiArCQlyZXNldC1hc3NlcnQtdXMgPSA8MjAwMDA+Owo+
ICsJCXJlc2V0LWRlYXNzZXJ0LXVzID0gPDEwMDAwMD47CgotLSAKU2FzaGlrbyBBSSByZXZpZXcg
wrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwODAxMTQyMjQ0LjY3OTQzNy0y
LWNvaWFwcmFudEBnbWFpbC5jb20/cGFydD05CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdAps
aW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
