Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25F8CC4452A
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jul 2026 13:53:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fi7f6LFhL07VoD5rthOEYjmPpEZZkLcoc1OTrT391/w=; b=VRZ1JZKS0OzzY/
	ioXVZgdPAkP5/lkqBPeLre7K3aN4/SU9jq7LUf0JYOO65RmTaVqACyMxQDYoolRA8WUlxw75o8Tv/
	GDj5paZtA/HLTB78X0BEPAHqv0neawOgePx6XA4tzf07k7wF5v2mE5wcDA7aDC30L+cvos81orLDG
	KSR6oAhmtUKZYAOAUqCKeR5jZuRQbgQD/kObq9hh5wH3SfYVNZfilL2EgRlo7SImvJQRYB6nQQsuD
	XpvxK8aWbzE4huGTZpM6m/x3WDYMH4f/qE/zC6RKb9AEDy0RXPm9QoIkexZ+LfnGqVLIHCGGwQ9qK
	eiZA9BhxedvAwl6FDL2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wloR8-00000006scp-3U1X;
	Mon, 20 Jul 2026 13:53:38 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wloR6-00000006sci-48ow
	for linux-phy@lists.infradead.org;
	Mon, 20 Jul 2026 13:53:37 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id B3D8842E49;
	Mon, 20 Jul 2026 13:53:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2455F1F00A3A;
	Mon, 20 Jul 2026 13:53:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784555616;
	bh=+HRLJpWdJvMqicxywTFH8ps/eLO/SOD9TEHKB7F7MuA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=l2DQueFM64nnGq8VTlzn4eaxajnfGsjtT4JxMl4jBM0QEGXjovF8rZq2PFeTy5wIO
	 uEu4BdntVm2DuutDWsKuc+k931Bp9Q+mIN0CfACo/a9k+cnU/F3rokeX0PWy5ybsFE
	 gsdtXtx8pcYf2ciPbXWsKBUQdKtqDRRbl7BmbNHEL7F2+hthtMog/SodipqV23By4J
	 T2TgI8JUASDsi/r9piCakGkkff7GUdbz2lHnCga2JL8ikNQJpCs0/1RzLqW6Zux/L2
	 YNk9XlEzxucauJGLXwRxFFke2AqxykmaskxiOUlo+glogwQl2DJozu/cG2fv/FoXXS
	 Isz16yMSyG3nQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 phy-next 4/8] soc: fsl: guts: make it easier to
 determine on which SoC we are running
To: "Vladimir Oltean" <vladimir.oltean@nxp.com>
Cc: olteanv@gmail.com, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260720133642.136324-5-vladimir.oltean@nxp.com>
References: <20260720133642.136324-1-vladimir.oltean@nxp.com>
 <20260720133642.136324-5-vladimir.oltean@nxp.com>
Date: Mon, 20 Jul 2026 13:53:35 +0000
Message-Id: <20260720135336.2455F1F00A3A@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIERlcmVmZXJlbmNpbmcg
YSBOVUxMIHBvaW50ZXIgb24gdGhlIGBzb2NfZGV2X2F0dHJgIGFsbG9jYXRpb24gZXJyb3IgcGF0
aCBpbiBgZnNsX2d1dHNfaW5pdCgpYC4KLS0KCi0tLSBQYXRjaCBbNF06IFtQQVRDSCB2MyBwaHkt
bmV4dCA0LzhdIHNvYzogZnNsOiBndXRzOiBtYWtlIGl0IGVhc2llciB0byBkZXRlcm1pbmUgb24g
d2hpY2ggU29DIHdlIGFyZSBydW5uaW5nIC0tLQpjb21taXQgMjdmZmYzMGNkYTdjNzYzYjkyYzlm
ZDg5MDQ1MDQxNmI2YTMwNDE0MApBdXRob3I6IElvYW5hIENpb3JuZWkgPGlvYW5hLmNpb3JuZWlA
bnhwLmNvbT4KCnNvYzogZnNsOiBndXRzOiBtYWtlIGl0IGVhc2llciB0byBkZXRlcm1pbmUgb24g
d2hpY2ggU29DIHdlIGFyZSBydW5uaW5nCgpUaGUgZ3V0cyBkcml2ZXIgd2lsbCBuZWVkIHRvIGVh
c2lseSBkZXRlcm1pbmUgb24gd2hpY2ggU29DIGl0J3MgcnVubmluZwp3aGVuIGl0IHdpbGwgbmVl
ZCB0byBwZXJmb3JtIFJDVyBvdmVycmlkZSBhdCBydW50aW1lLiBUaGUgZ3V0cyBkcml2ZXIKa25v
d3MgdGhpcyBhbHJlYWR5IGJlY2F1c2UgZnNsX2d1dHNfaW5pdCgpIHJlYWRzIHRoZSBRb3JJUS9M
YXllcnNjYXBlCmFyY2hpdGVjdHVyYWwgU3lzdGVtIFZlcnNpb24gUmVnaXN0ZXIgKFNWUiksIGJ1
dCBpdCBkb2Vzbid0IHNhdmUgdGhpcwpmb3IgbGF0ZXIgbG9va3Vwcy4KCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvc29jL2ZzbC9ndXRzLmMgYi9kcml2ZXJzL3NvYy9mc2wvZ3V0cy5jCj4gaW5kZXgg
ZTFiM2EwNTRlNjgxYi4uOTIyNTYwZDk4NzgyNCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3NvYy9m
c2wvZ3V0cy5jCj4gKysrIGIvZHJpdmVycy9zb2MvZnNsL2d1dHMuYwpbIC4uLiBdCj4gQEAgLTIz
OSwxMiArMjc0LDEyIEBAIHN0YXRpYyBpbnQgX19pbml0IGZzbF9ndXRzX2luaXQodm9pZCkKPiAg
CWlmICghc29jX2Rldl9hdHRyLT5mYW1pbHkpCj4gIAkJZ290byBlcnJfbm9tZW07Cj4gIAo+IC0J
c29jX2Rldl9hdHRyLT5zb2NfaWQgPSBrYXNwcmludGYoR0ZQX0tFUk5FTCwgInN2cjoweCUwOHgi
LCBzdnIpOwo+ICsJc29jX2Rldl9hdHRyLT5zb2NfaWQgPSBrYXNwcmludGYoR0ZQX0tFUk5FTCwg
InN2cjoweCUwOHgiLCBzb2Muc3ZyKTsKPiAgCWlmICghc29jX2Rldl9hdHRyLT5zb2NfaWQpCj4g
IAkJZ290byBlcnJfbm9tZW07CgpbU2V2ZXJpdHk6IEhpZ2hdCkRvZXMganVtcGluZyB0byBlcnJf
bm9tZW0gd2hlbiBzb2NfZGV2X2F0dHIgYWxsb2NhdGlvbiBmYWlscyBjYXVzZSBhIE5VTEwKcG9p
bnRlciBkZXJlZmVyZW5jZT8KCkluIGFuIGVhcmxpZXIgY29tbWl0IGluIHRoaXMgc2VyaWVzICgi
c29jOiBmc2w6IGd1dHM6IGFkZCBhIGdsb2JhbCBzdHJ1Y3R1cmUKdG8gaG9sZCBzdGF0ZSIpLCB0
aGUgZXJyb3IgcGF0aCBpbiBmc2xfZ3V0c19pbml0KCkgd2FzIG1vZGlmaWVkIHRvIHVubWFwCnNv
Yy5kY2ZnX2Njc3IsIGJ1dCBpdCBzZWVtcyB0aGUgY2xlYW51cCBhc3N1bWVzIHNvY19kZXZfYXR0
ciBpcyB2YWxpZDoKCmZzbF9ndXRzX2luaXQoKQoJc29jX2Rldl9hdHRyID0ga3phbGxvY19vYmoo
KnNvY19kZXZfYXR0cik7CglpZiAoIXNvY19kZXZfYXR0cikKCQlnb3RvIGVycl9ub21lbTsKICAg
IC4uLgplcnJfbm9tZW06CglyZXQgPSAtRU5PTUVNOwplcnI6CglrZnJlZShzb2NfZGV2X2F0dHIt
PmZhbWlseSk7CgpJZiB0aGUgZHluYW1pYyBhbGxvY2F0aW9uIGZvciBzb2NfZGV2X2F0dHIgZmFp
bHMsIHdvdWxkbid0IHdlIGRlcmVmZXJlbmNlCnRoZSBOVUxMIHBvaW50ZXIgd2hlbiBmcmVlaW5n
IGl0cyBtZW1iZXJzIGluIHRoZSBlcnIgYmxvY2s/CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcg
aHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNzIwMTMzNjQyLjEzNjMyNC0xLXZs
YWRpbWlyLm9sdGVhbkBueHAuY29tP3BhcnQ9NAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
