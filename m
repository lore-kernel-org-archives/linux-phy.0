Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C70FECD5BAC
	for <linux-phy@archiver.kernel.org>; Thu, 21 May 2026 14:21:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HJZZiTXkP4J2rQO44Nof2I1ncnhKZyt9yPZwRiklhsM=; b=zAKIvE4o7rW2ub
	NyUO8QRuG6WRWjsDCM5+/gFoSZ9MHvw1kFJ/MaroY4gdYqQv2oUVEYyTMIiTx5c7UwjLVa92XD/6r
	B6hndGyqrAZfSemgDClNAmg65HfNZFf0OCdhgDsiXuOkhISlY7NKUDcKKLuL2KnfrkBZfXP5SpVAp
	Wr0RsfiOUkxpR7AzzwkiB1Vyyha9vypuvQJA+70LslvT676h9IEfYkCdmtRnFaLa4BpI9kEi6x5K2
	JrL63EpEAPxB7WoRXeiv8KVmSGK/9a2g5C+MaU0iFd5LG/CH5CsclQtdFZy+Gjdn9xVgy9fR3IePt
	gfJIe2KRS3QVOW98Crgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ4HN-000000082hB-1sHY;
	Thu, 21 May 2026 14:21:42 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ4HK-000000082g6-3Dn7
	for linux-phy@lists.infradead.org;
	Thu, 21 May 2026 14:21:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 76C354009E;
	Thu, 21 May 2026 14:21:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B57351F000E9;
	Thu, 21 May 2026 14:21:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779373298;
	bh=fXNXvZeGZU6zo0w0DvYrpbPu84Phh7+Vv2XwyeB5E+k=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=EqTD+sH7PieVWqil4NR9j2NqFo84bYhpNfZEZ+sGln1yZGeXt7AW0YDlbPXRPhnW7
	 6dkt2WQOLdA0so8pkIChMaF4R9SBPm1qWj4WyAVGck2dKw06b5OeLLeffrWRxGL+Bb
	 WSL9xwJESX4Lw9nj8dQ186HiyRjJmiJbcjqB+yeMOq5A/zO7DKbvTIw0xWQkaUfFnA
	 Mq7TofFi/wfkYNO64sUkdTz46lC59hmqSp3brDTtpDBN37ue3KBpxzzlyxCxJEVpFT
	 rD7lkcVgI0Im74IQV3UG9uUp4vCCuv/PydPiz0qcl+p1GTKX83r26eCmD3mcuIRx3Y
	 u0U/QOt8mdfcA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/4] dt-bindings: phy: sc8280xp-qmp-pcie: Document Eliza
 PCIe phy
To: "Krishna Chaitanya Chundru" <krishna.chundru@oss.qualcomm.com>
Cc: linux-pci@vger.kernel.org, vkoul@kernel.org, conor+dt@kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com, neil.armstrong@linaro.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260521-eliza-v1-1-97cdbe88389d@oss.qualcomm.com>
References: <20260521-eliza-v1-1-97cdbe88389d@oss.qualcomm.com>
Date: Thu, 21 May 2026 14:21:37 +0000
Message-Id: <20260521142137.B57351F000E9@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_072139_258604_47C927EB 
X-CRM114-Status: UNSURE (   7.55  )
X-CRM114-Notice: Please train this message.
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBuZXcgRWxpemEg
UENJZSBQSFkgY29tcGF0aWJsZXMgYXJlIHBsYWNlZCBpbiB0aGUgd3JvbmcgY29uZGl0aW9uYWwg
YmxvY2tzLCBpbmNvcnJlY3RseSBjb25zdHJhaW5pbmcgdGhlbSB0byByZXF1aXJlIDYgY2xvY2tz
IGFuZCAyIHJlc2V0cy4KLS0KCmNvbW1pdCA4NTMyNjk2ZThmNWNmNjMzMDMzNDhjNDI1Njg4ZmUy
YzIzODNlZWQ2CkF1dGhvcjogS3Jpc2huYSBDaGFpdGFueWEgQ2h1bmRydSA8a3Jpc2huYS5jaHVu
ZHJ1QG9zcy5xdWFsY29tbS5jb20+CgpkdC1iaW5kaW5nczogcGh5OiBzYzgyODB4cC1xbXAtcGNp
ZTogRG9jdW1lbnQgRWxpemEgUENJZSBwaHkKCkFkZCBjb21wYXRpYmxlcyBmb3IgdGhlIEVsaXph
IFBDSWUgUU1QIFBIWSdzLCB3aGljaCBzdXBwb3J0cyBHZW4zeDEgYW5kCkdlbjN4MiBjb25maWd1
cmF0aW9ucy4KCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9waHkvcWNvbSxzYzgyODB4cC1xbXAtcGNpZS1waHkueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxzYzgyODB4cC1xbXAtcGNpZS1waHkueWFtbAo+IGlu
ZGV4IDNhMzUxMjBhNzdlYzAuLmJlNGJiYzMyNzk4MmYgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHNjODI4MHhwLXFtcC1wY2llLXBoeS55
YW1sCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHNj
ODI4MHhwLXFtcC1wY2llLXBoeS55YW1sCgpbIC4uLiBdCgo+IEBAIC0xODEsNiArMTgzLDggQEAg
YWxsT2Y6Cj4gICAgICAgICAgY29tcGF0aWJsZToKPiAgICAgICAgICAgIGNvbnRhaW5zOgo+ICAg
ICAgICAgICAgICBlbnVtOgo+ICsgICAgICAgICAgICAgIC0gcWNvbSxlbGl6YS1xbXAtZ2VuM3gx
LXBjaWUtcGh5Cj4gKyAgICAgICAgICAgICAgLSBxY29tLGVsaXphLXFtcC1nZW4zeDItcGNpZS1w
aHkKPiAgICAgICAgICAgICAgICAtIHFjb20sZ2x5bXVyLXFtcC1nZW40eDItcGNpZS1waHkKPiAg
ICAgICAgICAgICAgICAtIHFjb20sZ2x5bXVyLXFtcC1nZW41eDQtcGNpZS1waHkKPiAgICAgICAg
ICAgICAgICAtIHFjb20scWNzODMwMC1xbXAtZ2VuNHgyLXBjaWUtcGh5CgpbU2V2ZXJpdHk6IEhp
Z2hdCkFyZSB0aGVzZSBjb21wYXRpYmxlcyBwbGFjZWQgaW4gdGhlIGNvcnJlY3QgY29uZGl0aW9u
YWwgYmxvY2s/CgpCeSBwbGFjaW5nIHRoZSBFbGl6YSBjb21wYXRpYmxlcyBpbiB0aGlzIGdyb3Vw
LCB0aGUgc2NoZW1hIGVuZm9yY2VzIGEKbWluaW11bSBvZiA2IGNsb2NrcyBhbmQgMiByZXNldHMu
IEhvd2V2ZXIsIHRoZSBkcml2ZXIgaW1wbGVtZW50YXRpb24KaW50cm9kdWNlZCBpbiB0aGUgc2Vy
aWVzIGV4cGVjdHMgb25seSAxIHJlc2V0LiAKClRoaXMgbWlzbWF0Y2ggd2lsbCBwcmV2ZW50IHN0
cnVjdHVyYWxseSBjb3JyZWN0IGRldmljZSB0cmVlIG5vZGVzIGZyb20KcGFzc2luZyBzY2hlbWEg
dmFsaWRhdGlvbi4KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2
LyMvcGF0Y2hzZXQvMjAyNjA1MjEtZWxpemEtdjEtMC05N2NkYmU4ODM4OWRAb3NzLnF1YWxjb21t
LmNvbT9wYXJ0PTEKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
