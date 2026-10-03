Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C14CECA5FDD
	for <linux-phy@archiver.kernel.org>; Sat,  3 Oct 2026 09:19:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fAVGPbvqCKdmdZijngYkmx0NkG2DRTgmkux7fPzZZ9o=; b=dkIzMei4oXvBJu
	1zooflfgn4nvNm2CNe9gxSf1/2A7hZyx/LmlBPfvh4i3ftXmdT+5v0943CUL9GKRbyVYzvqF/hAND
	2j8QHNSyBx5or/9xIRh7ts7Bw2+cJo/6McCeB1y5ETTGyNsHzebzreExuUsfpOv+/TOlYT1Y/ZBte
	aezqucTSpls2iklD17NSsL+StAmC610sowFVDqkTyV96/0kFn8yL6JNQH/vbQ6iH9X3Th9wDrmdkb
	L7LEi5ldvJBK0lnVV4qVTOST/LomqprzF3AjqHwh8up1y+Y3BObBHPC7qcOK+gIIH5UufpSPxSJhJ
	HoBsoMXGCmn3hcroe7ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCvuI-0000000DFka-1t9J;
	Sat, 03 Oct 2026 09:19:50 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCvuH-0000000DFkJ-2DPc
	for linux-phy@lists.infradead.org;
	Sat, 03 Oct 2026 09:19:49 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 48AE543317;
	Sat,  3 Oct 2026 09:19:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AF9A01F0089B;
	Sat,  3 Oct 2026 09:19:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791019189;
	bh=ysZOVVqX9okszL2Y+UGZpDNVGZvBDm9/l6jRH3C3RHs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ERq+vjy4HXWMT8Y7k0DEI1uBOkdj3Y4iNwySMAzNfYhPMPTXLRDcgKHCPCdeEzY5O
	 OXor894XsgbtnKHAKjp2z3j5jEXyN7atW1hHt+gZiwnBiauR6YHz4ayfeEefoAqihq
	 5IyolUYxTrFZAM5egpMzzwKDTfzzooUNT7tP4jmwOWV4Na+Ay3m/zbbjjQHl6p3juE
	 O4mWncgSRHeT8w4F5CY8FLjdGFDN7luze2gQWFfEaYUSqXMmCufeXs5WSWv6nemlLe
	 yZU5DsXyEcOfMHCskISvY5L4fiSCDBgeNPUWLtlzNwQMWChHYY3bgbRtasZ2JEREGS
	 wLR0P8wuVAcTg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v18 09/11] arm64: dts: qcom: kaanapali: Add CAMSS and
 CSIPHY block definitions
To: "Hangxiang Ma" <hangxiang.ma@oss.qualcomm.com>
Cc: neil.armstrong@linaro.org, media-ci@linuxtv.org, conor+dt@kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, devicetree@vger.kernel.org, olteanv@gmail.com, vkoul@kernel.org
In-Reply-To: <20261003-kaanapali-camss-v18-9-87ba4ebe0db1@oss.qualcomm.com>
References: <20261003-kaanapali-camss-v18-0-87ba4ebe0db1@oss.qualcomm.com>
 <20261003-kaanapali-camss-v18-9-87ba4ebe0db1@oss.qualcomm.com>
Date: Sat, 03 Oct 2026 09:19:48 +0000
Message-Id: <20261003091948.AF9A01F0089B@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIGR0LWJpbmRpbmdzOiBw
bTogbWlzbWF0Y2ggYmV0d2VlbiBwb3dlci1kb21haW5zIGFuZCByZXF1aXJlZC1vcHBzIGluIGNz
aXBoeSBub2RlcwotIFtNZWRpdW1dIGR0LWJpbmRpbmdzOiBtZWRpYTogbWlzc2luZyBpbnRlcm5h
bCBTb0MgT0YgZ3JhcGggbGlua3MgYmV0d2VlbiBjYW1zcyBhbmQgY3NpcGh5Ci0tCgpjb21taXQg
MTRmYmNmMTUwYTIxZjNiODQwZjk5YWMwYTYxNWQ1ZjkxYTg4N2Y4NApBdXRob3I6IEhhbmd4aWFu
ZyBNYSA8aGFuZ3hpYW5nLm1hQG9zcy5xdWFsY29tbS5jb20+Cgphcm02NDogZHRzOiBxY29tOiBr
YWFuYXBhbGk6IEFkZCBDQU1TUyBhbmQgQ1NJUEhZIGJsb2NrIGRlZmluaXRpb25zCgpEZXNjcmli
ZSB0aGUgQ0FNU1MgYW5kIENTSVBIWSBibG9ja3Mgb24gS2FhbmFwYWxpIHNvIHRoYXQgY2FtZXJh
IHBpcGVsaW5lcwpjYW4gYmUgZW5hYmxlZCBieSBib2FyZCBkZXZpY2UgdHJlZXMuCgo+IGRpZmYg
LS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20va2FhbmFwYWxpLmR0c2kgYi9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3Fjb20va2FhbmFwYWxpLmR0c2kKPiBpbmRleCBlNDhhMTc5ZDA3MjIwLi43
ZTUxMDY4NjVlN2VlIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9rYWFu
YXBhbGkuZHRzaQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9rYWFuYXBhbGkuZHRz
aQpbIC4uLiBdCj4gKwkJY2Ftc3M6IGlzcEA5MjUzMDAwIHsKPiArCQkJY29tcGF0aWJsZSA9ICJx
Y29tLGthYW5hcGFsaS1jYW1zcyI7ClsgLi4uIF0KPiArCQkJcG9ydHMgewo+ICsJCQkJI2FkZHJl
c3MtY2VsbHMgPSA8MT47Cj4gKwkJCQkjc2l6ZS1jZWxscyA9IDwwPjsKPiArCj4gKwkJCQlwb3J0
QDAgewo+ICsJCQkJCXJlZyA9IDwwPjsKPiArCQkJCX07Cj4gKwo+ICsJCQkJcG9ydEAxIHsKPiAr
CQkJCQlyZWcgPSA8MT47Cj4gKwkJCQl9OwoKW1NldmVyaXR5OiBNZWRpdW1dCldpbGwgdGhlIGNh
bWVyYSBzdWJzeXN0ZW0gZGF0YSBwYXRoIGJyZWFrIHdpdGhvdXQgZW5kcG9pbnQgbm9kZXMgY29u
bmVjdGluZwp0aGVzZSBDQU1TUyBwb3J0cyB0byB0aGUgcmVzcGVjdGl2ZSBDU0lQSFkgb3V0cHV0
cz8KClRoZSBDQU1TUyBkcml2ZXIgY2hlY2tzIGZvciBlbmRwb2ludHMgdG8gZGlzY292ZXIgbm9u
LWxlZ2FjeSBQSFkgbm9kZXMsIHNvCm1pc3NpbmcgdGhlbSBoZXJlIGNvdWxkIGNhdXNlIHRoZSBD
U0lQSFlzIHRvIGZhaWwgdG8gaW5pdGlhbGl6ZSBkdXJpbmcKcHJvYmUuIFNob3VsZCBlbmRwb2lu
dHMgYmUgYWRkZWQgaGVyZSB0byBjb21wbGV0ZSB0aGUgaW50ZXJuYWwgU29DIE9GIGdyYXBoCmxp
bmtzPwoKWyAuLi4gXQo+ICsJCWNzaXBoeTA6IHBoeUA5NTIzMDAwIHsKPiArCQkJY29tcGF0aWJs
ZSA9ICJxY29tLGthYW5hcGFsaS1jc2kyLXBoeSI7Cj4gKwkJCXJlZyA9IDwweDAgMHgwOTUyMzAw
MCAweDAgMHgyMDAwPjsKPiArCj4gKwkJCWNsb2NrcyA9IDwmY2FtY2MgQ0FNX0NDX0NTSVBIWTBf
Q0xLPiwKPiArCQkJCSA8JmNhbWNjIENBTV9DQ19DU0kwUEhZVElNRVJfQ0xLPiwKPiArCQkJCSA8
JmNhbWNjIENBTV9DQ19DT1JFX0FIQl9DTEs+Owo+ICsJCQljbG9jay1uYW1lcyA9ICJjb3JlIiwK
PiArCQkJCSAgICAgICJ0aW1lciIsCj4gKwkJCQkgICAgICAiYWhiIjsKPiArCj4gKwkJCWludGVy
cnVwdHMgPSA8R0lDX1NQSSA0NzcgSVJRX1RZUEVfRURHRV9SSVNJTkc+Owo+ICsKPiArCQkJb3Bl
cmF0aW5nLXBvaW50cy12MiA9IDwmY3NpcGh5X214Y19vcHBfdGFibGU+Owo+ICsKPiArCQkJcG93
ZXItZG9tYWlucyA9IDwmY2FtY2MgQ0FNX0NDX1RJVEFOX1RPUF9HRFNDPiwKPiArCQkJCQk8JnJw
bWhwZCBSUE1IUERfTU1DWD4sCj4gKwkJCQkJPCZycG1ocGQgUlBNSFBEX01YQz47CgpbU2V2ZXJp
dHk6IEhpZ2hdClNpbmNlIHRoaXMgbm9kZSBkZWNsYXJlcyAzIHBvd2VyIGRvbWFpbnMgYnV0IHJl
bGllcyBvbiBhbiBPUFAgdGFibGUgd2l0aCBvbmx5CjIgcmVxdWlyZWQtb3BwcywgZG9lcyB0aGlz
IGJyZWFrIGluZGV4IGFsaWdubWVudD8KClRoZSBnZW5wZCBmcmFtZXdvcmsgbWFwcyByZXF1aXJl
ZC1vcHBzIHBvc2l0aW9uYWxseSB0byB0aGUgUE0gZG9tYWlucwpzcGVjaWZpZWQgaW4gcG93ZXIt
ZG9tYWlucy4gVGhpcyBtaXNtYXRjaCBtaWdodCBjYXVzZSBpbmNvcnJlY3QgcGVyZm9ybWFuY2UK
c3RhdGVzIHRvIGJlIGFwcGxpZWQgdG8gdGhlIHdyb25nIHBvd2VyIGRvbWFpbiAoZS5nLiB2b3Rp
bmcgb24gYSBHRFNDCmluc3RlYWQgb2YgTU1DWCksIGxlYWRpbmcgdG8gUE0gZnJhbWV3b3JrIGVy
cm9ycyBvciBoYXJkd2FyZSBoYW5ncy4KCkFsc28sIHNob3VsZG4ndCB0aGVyZSBiZSBhIHBvcnRz
IGRlZmluaXRpb24gaW4gdGhpcyBDU0lQSFkgbm9kZSB0byBsaW5rCmJhY2sgdG8gdGhlIENBTVNT
IGNvbnRyb2xsZXI/Cgo+ICsJCQlwb3dlci1kb21haW4tbmFtZXMgPSAidG9wIiwKPiArCQkJCQkg
ICAgICJtbWN4IiwKPiArCQkJCQkgICAgICJteCI7Cj4gKwo+ICsJCQlzdGF0dXMgPSAiZGlzYWJs
ZWQiOwo+ICsJCX07ClsgLi4uIF0KPiArCWNzaXBoeV9teGNfb3BwX3RhYmxlOiBvcHAtdGFibGUt
bXhjIHsKPiArCQljb21wYXRpYmxlID0gIm9wZXJhdGluZy1wb2ludHMtdjIiOwo+ICsKPiArCQlv
cHAtMzAwMDAwMDAwIHsKPiArCQkJb3BwLWh6ID0gL2JpdHMvIDY0IDwzMDAwMDAwMDA+Owo+ICsJ
CQlyZXF1aXJlZC1vcHBzID0gPCZycG1ocGRfb3BwX2xvd19zdnNfZDE+LAo+ICsJCQkJCTwmcnBt
aHBkX29wcF9sb3dfc3ZzX2QxPjsKCltTZXZlcml0eTogSGlnaF0KRG9lcyB0aGlzIHJlcXVpcmVk
LW9wcHMgYXJyYXkgbmVlZCB0byBiZSBwYWRkZWQgdG8gYWxpZ24gd2l0aCB0aGUgMyBwb3dlcgpk
b21haW5zIHNwZWNpZmllZCBpbiB0aGUgQ1NJUEhZIG5vZGVzIGFib3ZlPwoKVG8gY29ycmVjdGx5
IHNraXAgdGhlIEdEU0MgYXQgaW5kZXggMCwgc2hvdWxkIGl0IGJlIHBhZGRlZCBsaWtlOgo8MD4s
IDwmcnBtaHBkX29wcF9sb3dfc3ZzX2QxPiwgPCZycG1ocGRfb3BwX2xvd19zdnNfZDE+ID8KCj4g
KwkJfTsKPiArCj4gKwkJb3BwLTQwMDAwMDAwMCB7Cj4gKwkJCW9wcC1oeiA9IC9iaXRzLyA2NCA8
NDAwMDAwMDAwPjsKPiArCQkJcmVxdWlyZWQtb3BwcyA9IDwmcnBtaHBkX29wcF9sb3dfc3ZzPiwK
PiArCQkJCQk8JnJwbWhwZF9vcHBfbG93X3N2cz47Cj4gKwkJfTsKCi0tIApTYXNoaWtvIEFJIHJl
dmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjEwMDMta2FhbmFwYWxp
LWNhbXNzLXYxOC0wLTg3YmE0ZWJlMGRiMUBvc3MucXVhbGNvbW0uY29tP3BhcnQ9OQoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
