Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B08AAC9832A
	for <linux-phy@archiver.kernel.org>; Tue, 29 Sep 2026 06:07:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z7TCFKxM1raSzxJEKNBKlkYiqnD32XQ99JGsUhqlPBs=; b=XJL3vgFlQpEmkN
	Jy7keIETzs11FKkhWa3Xyigtf6ryF/g4gbLTGmcXQZTWYnXbzJFTzFRr5H75Gkeb5ufh5jXdZwIeF
	hh6jfChcd1WS2rQCIolAkUxYokwC8LYhQoGDknEDjxTNyNvEINu+GCEVq032I0JtwVqcV7tx/qx20
	v26+W06s4jb0oMqVM9/FZIJweYvKIf0WkSjsusHstZO0eoyBCmG4QNV6Yf2YX6/r5JfKSV164DSY3
	N5ORMSW8wlnmtv1eD+BLSyQDhICTAtQqsDrHqBg9uU2r6bDMe79gOx0aALgL/+clxpOmRsrvWf25K
	TITO7Z9DULUhfaRnA6Wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBR0E-00000002PLM-116a;
	Tue, 29 Sep 2026 06:07:46 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBR0D-00000002PLG-01pe
	for linux-phy@lists.infradead.org;
	Tue, 29 Sep 2026 06:07:45 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 1926760210;
	Tue, 29 Sep 2026 06:07:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 537E11F000FF;
	Tue, 29 Sep 2026 06:07:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790662063;
	bh=tJc6rGaF8C+h+XcHtTUlb3HiNkxP28eR9dM9i8BSSVM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=O2OyrNjfcGeE2Lo1J5CCK0u4/BL05QpkwGWpyQKbkfAafPlFVRKtUVwiMscXgLg12
	 13eveUIQg/n+LFeObXMMZ0YDhh/NzUul4rN1A5sJzdEI4WkJ64NyQ1hl6N1bJIonEQ
	 Bkyvyw+E+PWG6RFEygkNPfsauM+VwUtEX72SmWTdCcilcO2pGZnmsSymuqevGCnTpM
	 x58EzqOjfrwxJfsPGC+jTf/1hnTUNicWojUhdMn5+dVj5t/c2l1R2KXY0wv6FNVZoS
	 VTs42bHCx36On5v1CVGhooqulQetUdmdjy4PRupWYbMmeeTiGrSVq5ix+FpWpOro+o
	 1fw/NGct11C9Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v17 11/11] arm64: dts: qcom: kaanapali: Add camera MCLK
 pinctrl
To: "Hangxiang Ma" <hangxiang.ma@oss.qualcomm.com>
Cc: media-ci@linuxtv.org, robh@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com, neil.armstrong@linaro.org, conor+dt@kernel.org
In-Reply-To: <20260928-kaanapali-camss-v17-11-dcf3fd37f76c@oss.qualcomm.com>
References: <20260928-kaanapali-camss-v17-0-dcf3fd37f76c@oss.qualcomm.com>
 <20260928-kaanapali-camss-v17-11-dcf3fd37f76c@oss.qualcomm.com>
Date: Tue, 29 Sep 2026 06:07:42 +0000
Message-Id: <20260929060743.537E11F000FF@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gZHRzOiBkZXZpY2V0cmVl
IG5vZGUgbmFtZXMgaW5jb3JyZWN0bHkgdXNlIHVuZGVyc2NvcmVzCi0tCgpjb21taXQgMTg1YTZj
Zjk1OGZiZWE5OTM2MmE5ZTJjOWYzOTg5ZGFkNDM2MmQzYwpBdXRob3I6IEhhbmd4aWFuZyBNYSA8
aGFuZ3hpYW5nLm1hQG9zcy5xdWFsY29tbS5jb20+Cgphcm02NDogZHRzOiBxY29tOiBrYWFuYXBh
bGk6IEFkZCBjYW1lcmEgTUNMSyBwaW5jdHJsCgpUaGlzIGNvbW1pdCBhZGRzIFRMTU0gcGluY3Ry
bCBzdGF0ZXMgZm9yIHRoZSBjYW1lcmEgbWFzdGVyIGNsb2NrIEdQSU9zIG9uCkthYW5hcGFsaSBz
byBjYW1lcmEgc2Vuc29yIG5vZGVzIGNhbiBzZWxlY3QgdGhlIHByb3BlciBNQ0xLIHBpbiBmdW5j
dGlvbnMKd2hlbiBlbmFibGVkLgoKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9x
Y29tL2thYW5hcGFsaS5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL2thYW5hcGFsaS5k
dHNpCj4gaW5kZXggYzE5OTQ1YmM0MzhlYi4uYmJjZDVhNjIyZjBiMiAxMDA2NDQKPiAtLS0gYS9h
cmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20va2FhbmFwYWxpLmR0c2kKPiArKysgYi9hcmNoL2FybTY0
L2Jvb3QvZHRzL3Fjb20va2FhbmFwYWxpLmR0c2kKWyAuLi4gXQo+ICsJCQljYW1fbWNsazJfZGVm
YXVsdDogY2FtLW1jbGsyLWRlZmF1bHQtc3RhdGUgewo+ICsJCQkJcGlucyA9ICJncGlvOTEiOwo+
ICsJCQkJZnVuY3Rpb24gPSAiY2FtX2FzY19tY2xrMiI7Cj4gKwkJCQlkcml2ZS1zdHJlbmd0aCA9
IDwyPjsKPiArCQkJCWJpYXMtZGlzYWJsZTsKPiArCQkJfTsKPiArCj4gKwkJCWNhbV9tY2xrM19k
ZWZhdWx0OiBjYW1fbWNsazMtZGVmYXVsdC1zdGF0ZSB7CgpbU2V2ZXJpdHk6IExvd10KRG9lcyB0
aGlzIG5vZGUgbmFtZSBpbmNvcnJlY3RseSB1c2UgYW4gdW5kZXJzY29yZSBpbnN0ZWFkIG9mIGEg
aHlwaGVuPwoKRGV2aWNldHJlZSBub2RlIG5hbWVzIGNvbnZlbnRpb25hbGx5IHVzZSBoeXBoZW5z
IHJhdGhlciB0aGFuIHVuZGVyc2NvcmVzLgpUaGUgcHJldmlvdXMgbm9kZXMgbGlrZSBjYW0tbWNs
azAtZGVmYXVsdC1zdGF0ZSB1c2UgdGhlIGNvcnJlY3QgaHlwaGVuYXRlZApwYXR0ZXJuLgoKVXNp
bmcgYW4gdW5kZXJzY29yZSBoZXJlIGFuZCBpbiB0aGUgc3Vic2VxdWVudCBjYW1fbWNsazQgdGhy
b3VnaCBjYW1fbWNsazcKbm9kZXMgd2lsbCB0cmlnZ2VyIGR0YyBzdHlsZSB3YXJuaW5ncyAobm9k
ZV9uYW1lX2NoYXJzX3N0cmljdCkgYW5kIGZhaWwKc3RhbmRhcmQgZGV2aWNldHJlZSBzdHlsZSBj
aGVja3MuCgo+ICsJCQkJcGlucyA9ICJncGlvOTIiOwo+ICsJCQkJZnVuY3Rpb24gPSAiY2FtX21j
bGsiOwo+ICsJCQkJZHJpdmUtc3RyZW5ndGggPSA8Mj47Cj4gKwkJCQliaWFzLWRpc2FibGU7Cj4g
KwkJCX07ClsgLi4uIF0KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28u
ZGV2LyMvcGF0Y2hzZXQvMjAyNjA5Mjgta2FhbmFwYWxpLWNhbXNzLXYxNy0wLWRjZjNmZDM3Zjc2
Y0Bvc3MucXVhbGNvbW0uY29tP3BhcnQ9MTEKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0Cmxp
bnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
