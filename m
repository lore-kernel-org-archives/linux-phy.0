Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29920C61DBD
	for <linux-phy@archiver.kernel.org>; Tue, 25 Aug 2026 21:27:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Fu0c9PqUNUvvhz2ehwJaAAseYA3I53o5O79HLNHOUo=; b=ZjXxoeEMM+aLYo
	x0dmz5y24ciAdFb1KhAz4m65exl77pCd2yRGsNjQO2kSA0bL8yk42nF98EFfEOqQX5vKHdrUVgEZv
	vjf7XxgRoyrmTuVYzi+keZGfdJ+BGizFZyX9OtGmr+3oM7mDEK2uLBH7maxE9WnxDUrs5csO9uqnc
	jLJqab2KVN+TztxIWkwuOANLeosgHEprF2LK8h0p7MeEtnAGOEKjddNamp3XikEQQg4P40OW0wzte
	5DNrCJ2sUq0cC8zZu198GcQ5rY0FR6ueelS1DgucckbzrZR911a1HPtb8XtDw0UT5d/P1mCHaTbFf
	ZQCkGVaLzjDaFbv0cJcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyygJ-00000001X4j-3YpZ;
	Tue, 25 Aug 2026 21:27:43 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyygI-00000001X4Y-1Gi9
	for linux-phy@lists.infradead.org;
	Tue, 25 Aug 2026 21:27:42 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 5A4D441B00;
	Tue, 25 Aug 2026 21:27:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D06571F000E9;
	Tue, 25 Aug 2026 21:27:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787693261;
	bh=KWDnM6TtRmI2DttqW3czGUU/7rZExB12LIdMkIFrjUU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=F7LoUUn2vsMEu4FV+0q/K6lvlSUBa3lRuEENKkWa1dPedGuOivqU71FT8umodHtgO
	 RbUZrcV894ZWKWgG5uR8LrTglqF6Ybcx/w+0EJbrylERsvdbEYvB9q+UJ62xZBsLJM
	 scws4RZLGC/bpumkbklrNZ5c/sPy4gbnBZ6s5ns1ecEYf/zqB2Q1XCsh1Ue6lmrSvP
	 wFts8e533tpTddvFijV8kq/aLSa1aJF6NFOAE97LoBjAlbL+66SOQgFpOFRZx9IH7d
	 Mc58Tyy81N705+K93KuWyHx0y+xUpFVNzjPcd3+9P7snEsjF3CfoR3wPu622c8JUNS
	 iDgdVHnaS8blw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 01/12] dt-bindings: clk: zte: Add zx297520v3 top
 clock and reset controller
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: conor+dt@kernel.org, olteanv@gmail.com, linux-clk@vger.kernel.org, lee@kernel.org, linux-phy@lists.infradead.org, vkoul@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, mfd@lists.linux.dev
In-Reply-To: <20260826-zx29clk-v11-1-f8ad59c6426c@gmail.com>
References: <20260826-zx29clk-v11-0-f8ad59c6426c@gmail.com>
 <20260826-zx29clk-v11-1-f8ad59c6426c@gmail.com>
Date: Tue, 25 Aug 2026 21:27:40 +0000
Message-Id: <20260825212740.D06571F000E9@smtp.kernel.org>
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

PiBUaGVzZSBTb0NzIGhhdmUgMyBjbG9jayBhbmQgcmVzZXQgY29udHJvbGxlcnM6IFRvcCwgTWF0
cml4IGFuZCBMU1AuCj4gQ2xvY2tzIGdvIGZyb20gb3NjaWxsYXRvciAtPiB0b3AgLT4gbWF0cml4
IC0+IExTUCwgd2l0aCBhIHJlZ2lzdGVyIGluCj4gdG9wIGNvbnRyb2xsaW5nIG1vc3QgY2xvY2tz
IHRoYXQgZ2V0IHBhc3NlZCB0byBtYXRyaXggYW5kIGEgcmVnaXN0ZXIgaW4KPiBtYXRyaXggY29u
dHJvbGxpbmcgYWxsIHRoZSBjbG9ja3MgdGhhdCBnZXQgcGFzc2VkIHRvIExTUC4KPiAKPiBHZW5l
cmFsbHkgZXZlcnkgZGV2aWNlIGhhcyB0d28gY2xvY2tzIChvbmUgd29yayBjbG9jaywgYW5kIG9u
ZSB0aGF0Cj4gY29ubmVjdHMgaXQgdG8gdGhlIGJ1cywgSSBjYWxsIGl0IFBDTEspLCB0d28gcmVz
ZXQgYml0cyAoSSBkb24ndCBrbm93Cj4gd2hhdCB0aGUgZGlmZmVyZW5jZSBpcyAtIHNvbWV0aW1l
cyBhc3NlcnRpbmcgb25lIGlzIGVub3VnaCB0byByZXNldCB0aGUKPiBkZXZpY2UsIHNvbWV0aW1l
cyBib3RoIG5lZWQgdG8gYmUgYXNzZXJ0ZWQpLiBQQ0xLIGFuZCBXQ0xLIGFyZQo+IGNvbnRyb2xs
ZWQgYnkgaW5kaXZpZHVhbCBnYXRlcy4gU29tZSBkZXZpY2VzIGhhdmUgYSBtdXggYW5kL29yIGEK
PiBkaXZpZGVyIGZvciB0aGVpciB3b3JrIGNsb2NrLiBTb21lIGRldmljZXMsIGxpa2UgdGhlIEdQ
SU8gY29udHJvbGxlciwKPiBvbmx5IGhhdmUgcmVzZXQgYml0cyBhbmQgbm8gY2xvY2tzLgo+IAo+
IFRoZSB0b3AgY2xvY2sgY29udHJvbGxlciBpcyBmZWQgYnkgYSAyNiBNSHogZXh0ZXJuYWwgb3Nj
aWxsYXRvciBhbmQgaGFzIDQKPiBQTExzIHRvIGdlbmVyYXRlIG90aGVyIGNsb2NrIHJhdGVzLiBa
VEUncyBrZXJuZWwgbW9zdGx5IHJlbGllcyBvbiB0aGUKPiBbIC4uLiBdCj4gbGlrZWx5IHRoYXQg
YSBoYW5kZnVsIG1vcmUgY2xvY2tzIHdpbGwgYmUgYWRkZWQgaW4gdGhlIGZ1dHVyZSwgYnV0IG5v
dCBhCj4gbGFyZ2UgbnVtYmVyLgo+IAo+IFJldmlld2VkLWJ5OiBLcnp5c3p0b2YgS296bG93c2tp
IDxrcnp5c3p0b2Yua296bG93c2tpQG9zcy5xdWFsY29tbS5jb20+Cj4gU2lnbmVkLW9mZi1ieTog
U3RlZmFuIETDtnNpbmdlciA8c3RlZmFuZG9lc2luZ2VyQGdtYWlsLmNvbT4KClNhc2hpa28gaGFz
IHJldmlld2VkIHRoaXMgcGF0Y2ggYW5kIGZvdW5kIG5vIGlzc3Vlcy4gSXQgbG9va3MgZ3JlYXQh
CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0
LzIwMjYwODI2LXp4MjljbGstdjExLTAtZjhhZDU5YzY0MjZjQGdtYWlsLmNvbT9wYXJ0PTEKCgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
