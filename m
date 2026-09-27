Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58E96C98338
	for <linux-phy@archiver.kernel.org>; Sun, 27 Sep 2026 20:54:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r4jVodZGF9+7AOHdnvwP+SpvlkI+VEEDroWxuwQN1Mw=; b=FnM0uf8wG+PqfY
	WppYS7TjTmak0cgJfRiNpeImsuAR+5yARY94QZLErVL+kneHRoXz9JKD8lNy4caO8DcqOYoKW6RjQ
	d9ocO3eZzxHQbftm4f3aDiCjuX4SP9sW27Fi78iIrKd7vIz5cnXmmMBO6Ob57H3bDaTjGWZgJsXyz
	tc0CG5QxEa0BEStVKTESauTRNo6YEknMxqSrWUfVm9cBcbBzhOCrBhhHt3mEc8J2i8X9+auKz4H92
	LujXXXcLB08dcVaKBiqkrBHKJbpuHyeTH6ZtCT3fQ6OHxMxJTTUXyp/M6w4NOINQyXQFM2CQuyU9j
	1a60eYWFEfu1IELs5VNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAvtU-0000000Gr47-0IOE;
	Sun, 27 Sep 2026 20:54:44 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAvtS-0000000Gr3v-2fyJ
	for linux-phy@lists.infradead.org;
	Sun, 27 Sep 2026 20:54:42 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 469906022A;
	Sun, 27 Sep 2026 20:54:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67E731F00893;
	Sun, 27 Sep 2026 20:54:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790542481;
	bh=C+4HJb8NDZ14of/5eeUCzIHQUJvbKQuPYwVhUOTbZZg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=lFcMovovPJvoV+oeu/ukGOhutBNItjCL3o9iPbZ+GoZ2YTPh4lfHXJV2zNb821COS
	 2RJyuvuXSepNq3KaGchP32ec87SWMknHDBi0RDjmpZRTA+JzU9zaFK+FtEMnJMSzph
	 gxK5KWHOTvPdliyDuBgH7SRFL1tGEN8RMuUxBTsy1uMGGLzwYj6dS2bdPzuk7e+Qze
	 qBJSgWqrzWidAeU0Xg1/mdzCKZJdFHMgXG6OZ9MwSsO1brQY9fukgFil90zWm10DRW
	 +M2O7tGpsBewFS1DfZXXfMgqt90/vsnNRcEsbzQZ406fWtEDPQy+GJdOOEHFdk/K+J
	 036zVcQZpNEmw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v13 01/13] dt-bindings: clk: zte: Add zx297520v3 top
 clock and reset controller
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: robh@kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org, linux-clk@vger.kernel.org, mfd@lists.linux.dev, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, vkoul@kernel.org, lee@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260927-zx29clk-v13-1-70d8f673386c@gmail.com>
References: <20260927-zx29clk-v13-0-70d8f673386c@gmail.com>
 <20260927-zx29clk-v13-1-70d8f673386c@gmail.com>
Date: Sun, 27 Sep 2026 20:54:39 +0000
Message-Id: <20260927205440.67E731F00893@smtp.kernel.org>
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
LzIwMjYwOTI3LXp4MjljbGstdjEzLTAtNzBkOGY2NzMzODZjQGdtYWlsLmNvbT9wYXJ0PTEKCgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
