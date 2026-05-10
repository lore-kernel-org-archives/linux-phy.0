Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 390CBCD3427
	for <linux-phy@archiver.kernel.org>; Sun, 10 May 2026 12:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3cem8Pox8XrUvI1OHG9712dl+Ny+/94uw7+BE3D874c=; b=4DOCtFVnX4AICM
	ib94WVT3auhgs+TbQfbqtabOrZIM34mUVRl4e+DE9PPLwbX74bfOIwcoJQHmd+GvchVZJHp6KoI/6
	1SF/eNOhq/E5dSYZYFgOgHi6LV5DnnWp6GY0TDX4FbHDdexjamUmhnHV5D2qp2YetNnXoyEIarVwp
	exP2f4lplPE+0e8bkgb/fMtTTuqk1YegvTutCjN3V3CEWvwH75Wug56FGd48m5Y6kxKwS2AWTg00k
	eaPIR5wLXmhLWmsP7W3PeDdbnsLw5bNLpFq9VepJKfi2QAjN/5vJAq2mXJPFru32xFHaH9KZ7CBca
	0TLfZbCeNP5D8gtnqEGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM3KX-0000000Aida-3pHd;
	Sun, 10 May 2026 12:32:21 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM3KW-0000000AidC-0eXP
	for linux-phy@lists.infradead.org;
	Sun, 10 May 2026 12:32:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id CC91A44432;
	Sun, 10 May 2026 12:32:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 27DB5C2BCB8;
	Sun, 10 May 2026 12:32:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778416339;
	bh=SDOEyFstRhWIMkhPcOaluZFaKKmrzRYi3jr799ZJPh0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=tdp3Vr9q+OVvwpFFWJqQriDFLOKGu+QmfmIBFNtDn26XkwAaK7xxm7avYWX+6q5tB
	 peag60VoWYpfzsNQQCjCMlq7YNzjbVzb0mXTmZbOUVYXnrKNqkyKR+B0No7F/EhXEA
	 D3PbhW837u9DGMV9ZS1t9fQqkXbkndnJhLUz/pSr9K7kS0X8nK/yFGOr6f2b6hJwWC
	 cfzPZF9zdDJuT17QMbK4fefPAYZOoP3Xr6xDbqRYde2ZC1U9pIKskxwi16LFRMSgsd
	 b1knbnJh18qx0miIlJtnOXPhsGRMBCZQDfbt1dGk4/auvbPglMZ9FFdFlCgIiYOYiH
	 S9oRVa0hMmuKQ==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-mips@vger.kernel.org, 
 Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
 Gregory CLEMENT <gregory.clement@bootlin.com>, 
 =?utf-8?q?Beno=C3=AEt_Monin?= <benoit.monin@bootlin.com>, 
 Tawfik Bayouk <tawfik.bayouk@mobileye.com>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>
In-Reply-To: <20260309-macb-phy-v9-0-5afd87d9db43@bootlin.com>
References: <20260309-macb-phy-v9-0-5afd87d9db43@bootlin.com>
Subject: Re: [PATCH v9] phy: Add generic PHY driver used by MACB/GEM on
 EyeQ5
Message-Id: <177841633575.434434.2649556490244169751.b4-ty@kernel.org>
Date: Sun, 10 May 2026 18:02:15 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260510_053220_230103_2D2A28BC 
X-CRM114-Status: UNSURE (   5.61  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Ck9uIE1vbiwgMDkgTWFyIDIwMjYgMTU6Mzc6MzMgKzAxMDAsIFRow6lvIExlYnJ1biB3cm90ZToK
PiBFeWVRNSBTb0NzIGludGVncmF0ZSB0d28gR0VNIGluc3RhbmNlcy4gQSBzeXN0ZW0tY29udHJv
bGxlciByZWdpc3Rlcgo+IHJlZ2lvbiBuYW1lZCAiT0xCIiBoYXMgc29tZSBjb250cm9sIG92ZXIg
dGhlIEV0aGVybmV0IFBIWSBpbnRlZ3JhdGlvbi4KPiAKPiBFeHRlbmQgdGhlIGN1cnJlbnQgT0xC
IGVjb3N5c3RlbSB3aXRoIGEgbmV3IGdlbmVyaWMgUEhZIGRyaXZlci4KPiAgLSBPTEIgaXMgY2Fy
cmllZCBieSBvbmUgbWFpbiBwbGF0Zm9ybSBkcml2ZXI6IGNsay1leWVxLgo+ICAtIEl0IGluc3Rh
bnRpYXRlcyBhdXhpbGlhcnkgZGV2aWNlczogcmVzZXQtZXllcSAmIHBpbmN0cmwtZXllcTUuCj4g
IC0gV2UgYWRkIGEgbmV3IG9uZTogcGh5LWV5ZXE1LWV0aC4KPiAKPiBbLi4uXQoKQXBwbGllZCwg
dGhhbmtzIQoKWzEvMV0gcGh5OiBBZGQgZHJpdmVyIGZvciBFeWVRNSBFdGhlcm5ldCBQSFkgd3Jh
cHBlcgogICAgICBjb21taXQ6IGI2ZTMzNDQzODc2ZDBjYTdlOTNjZjk0OTQ1NWUzYzFhMWEwYWFl
MjQKCkJlc3QgcmVnYXJkcywKLS0gCn5WaW5vZAoKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
