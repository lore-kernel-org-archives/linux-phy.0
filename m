Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B67CDCD5BB0
	for <linux-phy@archiver.kernel.org>; Fri, 22 May 2026 19:10:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UGfZHgu6YjGGzuaLz8w6JJrnt4zyWT1teCCMhhcOR+k=; b=GFP/zao/jkeufL
	Uy058Spair1pzGXvR0zxUCUVPWpNM4Z3Pay2Oq142G0cQBvmf7I5wP0//Th4O9WSJ1QgQix0rHTbk
	Jxp7zwDtM9c6JoWbeuFz5AKeMQ2GBrBBMxPnnynbeAap+OIZh41ct/IYa2Z6vmXnMm9AqgBzfG567
	W+L+5RHzPt8NLEOIwZ6k71BIImB7t1izgKKsYiNKo7RCIim37pD8OEYtkGOd9owilOW2Ckgu24Zcn
	P841w1QAZ5ru1W5EDofWKLTgX2vGJFYLvYxI1VI2+6gfEq/0o2EaD2O7ylt0j9cDK/GhcsKj9fyRo
	gAHM2S0XplG/v9LAYekg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQVGC-0000000BkAP-1TEJ;
	Fri, 22 May 2026 19:10:16 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQVGA-0000000BkA9-2rr2
	for linux-phy@lists.infradead.org;
	Fri, 22 May 2026 19:10:14 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id B529860136;
	Fri, 22 May 2026 19:10:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23B0C1F000E9;
	Fri, 22 May 2026 19:10:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779477013;
	bh=mFAcp27og0cjzpa1aXmWe2jJV1nm7DfxIJJcZgl/iQs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=hRWIruuiPRUVodyQp//b7nVCnHYHtDUYW3grShxVHbfWoP9yQzbqWz7sLiUX2ZWbE
	 wPnAe5f7RUU7mRCIDarYPrzFi6p66RrwvX9hN6+bOxtHD/JICjjkdas0kS0OsPhqNg
	 E+4LJt5+ISwaheTnxLxK8DhAaA7QSmBS9zASRQ0wQmDBw7ZtWYdixeAT2wa9M96wOy
	 caWQL6HKkmLRtP/0CpGD4Hrycwbc4NmfU4VDA6XLo86HxN8vbGexBtODi6yMKXXfLs
	 a7Px1iaZHP+YvAXD2cMeDeRRoWKeo1xk+m4prS/FDGBsfHcn+uEjhw3YoQUgAo38kd
	 yXBRTquv3Ka2A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 3/5] arm64: dts: qcom: Add Shikra CQ2390M SoM
 platform
To: "Komal Bajaj" <komal.bajaj@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, conor+dt@kernel.org, olteanv@gmail.com, vkoul@kernel.org, robh@kernel.org
In-Reply-To: <20260522-shikra-dt-v3-3-80ffde8a3dc4@oss.qualcomm.com>
References: <20260522-shikra-dt-v3-3-80ffde8a3dc4@oss.qualcomm.com>
Date: Fri, 22 May 2026 19:10:12 +0000
Message-Id: <20260522191013.23B0C1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIGNvbW1pdCBt
ZXNzYWdlIGNsYWltcyB0byBhZGQgUE04MDA1IFBNSUMgcmVndWxhdG9yIGRlZmluaXRpb25zLCBi
dXQgdGhlIHBhdGNoIGV4cGxpY2l0bHkgZGlzYWJsZXMgdGhlIFBNODAwNSByZWd1bGF0b3JzIGFu
ZCBwcm92aWRlcyBubyBjb25maWd1cmF0aW9uLgotLQoKY29tbWl0IGI4MjA3Y2RmZDgwOTI0ZTI5
MWVlNTI0NDhhMTA1NzA4YWE3YjZhMDkKQXV0aG9yOiBLb21hbCBCYWphaiA8a29tYWwuYmFqYWpA
b3NzLnF1YWxjb21tLmNvbT4KCmFybTY0OiBkdHM6IHFjb206IEFkZCBTaGlrcmEgQ1EyMzkwTSBT
b00gcGxhdGZvcm0KClRoaXMgY29tbWl0IGFkZHMgdGhlIGRldmljZSB0cmVlIGluY2x1ZGUgZm9y
IHRoZSBDUTIzOTBNIHZhcmlhbnQgb2YgdGhlClNoaWtyYSBTeXN0ZW0tb24tTW9kdWxlLiBJdCBp
bnRlZ3JhdGVzIHRoZSBTaGlrcmEgU29DIGFuZCBpbmNsdWRlcyBQTUlDCnJlZ3VsYXRvciBjb25m
aWd1cmF0aW9ucyBmb3IgdGhlIHJldGFpbCBTb00uCgo+IFRoZSBEVFNJIGluY2x1ZGVzIHRoZSBj
b21tb24gc2hpa3JhLmR0c2ksIGFkZHMgUE00MTI1IGFuZCBQTTgwMDUgUE1JQwo+IHJlZ3VsYXRv
ciBkZWZpbml0aW9ucyBzcGVjaWZpYyB0byB0aGlzIHZhcmlhbnQuCgpbIC4uLiBdCgo+IGRpZmYg
LS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc2hpa3JhLWNxbS1zb20uZHRzaSBiL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zaGlrcmEtY3FtLXNvbS5kdHNpCj4gbmV3IGZpbGUgbW9k
ZSAxMDA2NDQKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29t
L3NoaWtyYS1jcW0tc29tLmR0c2kKClsgLi4uIF0KCj4gKyZwbTgwMDVfcmVndWxhdG9ycyB7Cj4g
KwlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ICt9OwoKW1NldmVyaXR5OiBNZWRpdW1dCklzIHRoZSBj
b21taXQgbWVzc2FnZSBpbmFjY3VyYXRlLCBvciBhcmUgdGhlIGRlZmluaXRpb25zIGZvciB0aGUg
UE04MDA1CnJlZ3VsYXRvcnMgbWlzc2luZyBmcm9tIHRoaXMgcGF0Y2g/CgpUaGUgY29tbWl0IG1l
c3NhZ2Ugc3RhdGVzIHRoYXQgUE04MDA1IFBNSUMgcmVndWxhdG9yIGRlZmluaXRpb25zIGFyZQph
ZGRlZCwgYnV0IHRoZSBjb2RlIGV4cGxpY2l0bHkgZGlzYWJsZXMgdGhlbSB3aXRob3V0IHByb3Zp
ZGluZyBhbnkKY29uZmlndXJhdGlvbi4gSWYgdGhlIFNvTSB2YXJpYW50IHJlcXVpcmVzIHRoZSBQ
TTgwMDUgcmVndWxhdG9ycyB0byBwb3dlcgpoYXJkd2FyZSBjb21wb25lbnRzLCB3aWxsIGxlYXZp
bmcgdGhlbSBkaXNhYmxlZCByZXN1bHQgaW4gcnVudGltZSBmYWlsdXJlcz8KCi0tIApTYXNoaWtv
IEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA1MjItc2hp
a3JhLWR0LXYzLTAtODBmZmRlOGEzZGM0QG9zcy5xdWFsY29tbS5jb20/cGFydD0zCgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
