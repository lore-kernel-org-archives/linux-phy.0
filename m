Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A97F5C88E45
	for <linux-phy@archiver.kernel.org>; Fri, 11 Sep 2026 15:48:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FzKD18mW6awXtSbXgifHsaI4U6YehS30wC5ae76Mxoc=; b=BgBHqMiU3pXweO
	NSJSvR+ZoSFKM2SJrlIwsiVtW3830AC72Wdd1MlRkaYpsmnQFcFBCA5PrRytXNonqCsyNdu8Ue6nI
	IC9UPE/5dqctwfjFidRWFVOPJeMYr7V4Z2BX6mgWnLcZ/ICYYNjTXFefL2ICYgEQJO6AOmGaICEgs
	BssWmQ5bAOjyqbA+aetEV/AB5hp8pNbkn20Ttuw6F+R1PqUSri9+F4fmpc+HQuvq9K7jwuI3mh3VJ
	wLMNFU23ul+YstcPFlt7gC0/BReTpLH22vrjb6OYyHdBJDGObWH54hSjAHvprdgIl5zGCUVHifMEq
	t/sie9M+7vFsqWg5rdUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53Tw-0000000H869-1eVT;
	Fri, 11 Sep 2026 15:48:04 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53Tv-0000000H85f-0JGG
	for linux-phy@lists.infradead.org;
	Fri, 11 Sep 2026 15:48:03 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 7537960202;
	Fri, 11 Sep 2026 15:48:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7D5BC1F000FF;
	Fri, 11 Sep 2026 15:48:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789141682;
	bh=29OprxAPqi5wkQdmCwOPfHZCMWnAwiooD7Yj6cqzeLg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=kuL64PzyQOhfjeyezsUmcH6IbvRMFPwATuvG3P31zI/l3c0nPO4f59yuJ/2NwvU/W
	 OnwJY1mu/xY3ohQeoN/KHbQKe7Z+08uxQwmPB1icFTlyaS1VKJeTzalXlZ5XVnulDa
	 kUbe0utMqcVxlg2gUEzBsl0OINE5QFfbyP2793r/hGcCa1/5HzeQxoMKnAQTwwcOSZ
	 7xYaw2NmTlOo3xJNWgf/fOtd/oQpjIlv2sl7YalwpvMoVUu7e8Rq+i7paYSMsgmMc/
	 /ieOdOVDS5gnDZULosHgqAFC4VA7m18Hei41pZHDH0nt1r6gtNDKmycLN0ByMxBuZL
	 KOo0bXsrRCnxw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 01/17] dt-bindings: phy: qcom,edp-phy: Document Nord eDP
 PHY
To: "Nabige Aala" <nabige.aala@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, vkoul@kernel.org, dri-devel@lists.freedesktop.org, olteanv@gmail.com, linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260911-nord-drv-dt-v1-1-e25c073cf1b6@oss.qualcomm.com>
References: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
 <20260911-nord-drv-dt-v1-1-e25c073cf1b6@oss.qualcomm.com>
Date: Fri, 11 Sep 2026 15:48:01 +0000
Message-Id: <20260911154801.7D5BC1F000FF@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIG5ldyBjb21w
YXRpYmxlIHN0cmluZyAncWNvbSxub3JkLWRwLXBoeScgaXMgb21pdHRlZCBmcm9tIHRoZSAnYWxs
T2YnIGNvbmRpdGlvbmFsIGJsb2NrIHRoYXQgZW5mb3JjZXMgdGhlIDMtY2xvY2sgY29uc3RyYWlu
dCwgY2F1c2luZyBpdCB0byBmYWxsIGJhY2sgdG8gdGhlIGluY29ycmVjdCAyLWNsb2NrIGNvbnN0
cmFpbnQuCi0tCgpjb21taXQgMzI1YzIxMGNhODI3NjVjODgwN2I4ZGMxMGQ5Y2E2YzRmOTg2YjA2
YgpBdXRob3I6IE1haGFkZXZhbiBQIDxtYWhhZGV2YW4ucEBvc3MucXVhbGNvbW0uY29tPgoKZHQt
YmluZGluZ3M6IHBoeTogcWNvbSxlZHAtcGh5OiBEb2N1bWVudCBOb3JkIGVEUCBQSFkKClRoaXMg
Y29tbWl0IGFkZHMgdGhlIGNvbXBhdGlibGUgc3RyaW5nIGZvciB0aGUgZURQIFBIWSBmb3VuZCBv
biB0aGUKUXVhbGNvbW0gTm9yZCBTb0MuCgo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20sZWRwLXBoeS55YW1sIGIvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLGVkcC1waHkueWFtbAo+IGluZGV4IDBiZjhiZjRm
NjZhY2YuLjkxZDdhNWM4ZTE5YWYgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL3BoeS9xY29tLGVkcC1waHkueWFtbAo+ICsrKyBiL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxlZHAtcGh5LnlhbWwKPiBAQCAtMTksNiArMTks
NyBAQCBwcm9wZXJ0aWVzOgo+ICAgICAgb25lT2Y6Cj4gICAgICAgIC0gZW51bToKPiAgICAgICAg
ICAgIC0gcWNvbSxnbHltdXItZHAtcGh5Cj4gKyAgICAgICAgICAtIHFjb20sbm9yZC1kcC1waHkK
CltTZXZlcml0eTogTWVkaXVtXQpXaWxsIHRoaXMgY29tcGF0aWJsZSBzdHJpbmcgaW5jb3JyZWN0
bHkgZmFsbCBiYWNrIHRvIHRoZSAyLWNsb2NrIGNvbnN0cmFpbnQ/CgpMb29raW5nIGF0IHRoZSBh
bGxPZiBibG9jayBsYXRlciBpbiB0aGlzIGZpbGUsIHJlY2VudCBoYXJkd2FyZSBnZW5lcmF0aW9u
cwpyZXF1aXJpbmcgMyBjbG9ja3MgYXJlIGV4cGxpY2l0bHkgZW51bWVyYXRlZDoKCmFsbE9mOgog
IC0gaWY6CiAgICAgIHByb3BlcnRpZXM6CiAgICAgICAgY29tcGF0aWJsZToKICAgICAgICAgIGVu
dW06CiAgICAgICAgICAgIC0gcWNvbSxnbHltdXItZHAtcGh5CiAgICAgICAgICAgIC0gcWNvbSxz
YTg3NzVwLWVkcC1waHkKICAgICAgICAgICAgLSBxY29tLHgxZTgwMTAwLWRwLXBoeQogICAgdGhl
bjoKICAgICAgcHJvcGVydGllczoKICAgICAgICBjbG9ja3M6CiAgICAgICAgICBtaW5JdGVtczog
MwogICAgICAgICAgbWF4SXRlbXM6IDMKICAgIGVsc2U6CiAgICAgIHByb3BlcnRpZXM6CiAgICAg
ICAgY2xvY2tzOgogICAgICAgICAgbWluSXRlbXM6IDIKICAgICAgICAgIG1heEl0ZW1zOiAyCgpT
aW5jZSB0aGUgTm9yZCBQSFkgdXRpbGl6ZXMgYSAzOC40IE1IeiBDWE8gcmVmZXJlbmNlIGNsb2Nr
LCBzaG91bGQKcWNvbSxub3JkLWRwLXBoeSBiZSBhZGRlZCB0byB0aGUgZW51bSBpbiB0aGUgYWxs
T2YgY29uZGl0aW9uYWwgYmxvY2s/CgpXaXRob3V0IGl0LCBkZXZpY2UgdHJlZXMgcHJvdmlkaW5n
IHRoZSBuZWNlc3NhcnkgMyBjbG9ja3MgKGF1eCwgY2ZnX2FoYiwgcmVmKQptaWdodCBmYWlsIHNj
aGVtYSB2YWxpZGF0aW9uLCB3aGlsZSBpbmNvbXBsZXRlIG9uZXMgcHJvdmlkaW5nIG9ubHkgMiBj
bG9ja3MKY291bGQgc2lsZW50bHkgcGFzcyB2aWEgdGhlIGVsc2UgZmFsbGJhY2suCgo+ICAgICAg
ICAgICAgLSBxY29tLHNhODc3NXAtZWRwLXBoeQo+ICAgICAgICAgICAgLSBxY29tLHNjNzI4MC1l
ZHAtcGh5Cj4gICAgICAgICAgICAtIHFjb20sc2M4MTgweC1lZHAtcGh5CgotLSAKU2FzaGlrbyBB
SSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwOTExLW5vcmQt
ZHJ2LWR0LXYxLTAtZTI1YzA3M2NmMWI2QG9zcy5xdWFsY29tbS5jb20/cGFydD0xCgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
