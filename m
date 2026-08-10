Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 395BFC5AD55
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 11:40:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=611xF6mcVQ3ilBFk19WlBanw1mF06boloxfLU+Evq5E=; b=pehHWnmfgGHgBx
	0hvYC1eIYSMpGF4SQWHXvlc26etREzkTfsMlavLym0WM203tyyw/QZ61+AefZUrgUK3D1ones8/8M
	TLhKdduk9QLHoFBrfiRGNk2duVSCJWSpTVTullcukwilv2i3YaESBt378Cp0L3JqMc4ly3o0GNhal
	cRxnRAd9Z8SSmqE+vLp+kxfGxzZ4zww5OfhD0R4fD/sbFKwLfeKBZ2qehYPvRai+NoXGKcM6jDyOw
	7gpzKyk6jjgpkThJE7CjfzWeDLBdq3GZhszfk/f+X/Yz83wpr+Go7tv3tnMN0FvNV/YqLXydminYy
	lQqqzv6A2Ms9j/DVtcSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtOMw-0000000BeBM-3vUL;
	Mon, 10 Aug 2026 11:40:38 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtOMw-0000000BeBG-1tIH
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 11:40:38 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 2432143885;
	Mon, 10 Aug 2026 11:40:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C8B11F00A3A;
	Mon, 10 Aug 2026 11:40:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786362038;
	bh=+O3Mz64NYdCGkGFTEDaghfMSjZ1KuizAfk7MoRWHfhk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=oio/pavwKsHxNJSgv6wbNpaA9jLvQY4KMBLKu9JQ/PuI0V9Y5iSdPx+fihKj/BeLc
	 LDaLKNfOTeqvxJS0pzZzs/bjTrdrjDhLwlOljiihYVuKCbNOdQ8z+guVPy3wQk0voj
	 lC1Ce4p7ub2vA2aHWeSq0t4yR9H42LhsRe2BOdSbCabdwPCsvoFuWQ9FVxUN/B9tIU
	 /3Ho8MoUhuKN7GNVh3KJ/FJp8eS4+Et3JeMw7gjjFt43/ZOrmEaqpiCGiU7PzFsgdN
	 HlFpB7H1324yx7kxGR8ycWw2vfaNY1OYlgdXFo/GyfQOdMQSfJ4NDVMI2xoceNSM4T
	 Svj03/ADwzYlQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v1 3/4] arm64: dts: qcom: qcs8300: Add qref and refgen
 supply for PCIe PHYs
To: "Ziyue Zhang" <ziyue.zhang@oss.qualcomm.com>
Cc: conor+dt@kernel.org, neil.armstrong@linaro.org, vkoul@kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, olteanv@gmail.com
In-Reply-To: <20260810112735.1326807-4-ziyue.zhang@oss.qualcomm.com>
References: <20260810112735.1326807-1-ziyue.zhang@oss.qualcomm.com>
 <20260810112735.1326807-4-ziyue.zhang@oss.qualcomm.com>
Date: Mon, 10 Aug 2026 11:40:36 +0000
Message-Id: <20260810114037.5C8B11F00A3A@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBuZXdseSBhZGRl
ZCBEVFMgcmVndWxhdG9yIHByb3BlcnRpZXMgZm9yIFFDUzgzMDAgYXJlIHNpbGVudGx5IGlnbm9y
ZWQgYnkgdGhlIFBDSWUgUEhZIGRyaXZlciwgd2hpbGUgdGhlIFNNODQ1MCBkcml2ZXIgbm93IGVy
cm9uZW91c2x5IHJlcXVpcmVzIHRoZW0sIGNhdXNpbmcgYSBzZXZlcmUgcHJvYmUgcmVncmVzc2lv
bi4KLS0KCi0tLSBQYXRjaCBbM106IFtQQVRDSCB2MSAzLzRdIGFybTY0OiBkdHM6IHFjb206IHFj
czgzMDA6IEFkZCBxcmVmIGFuZCByZWZnZW4gc3VwcGx5IGZvciBQQ0llIFBIWXMgLS0tCmNvbW1p
dCA2NDkwOTFkOGMyYzIwMDJiN2Y1MTE4M2Q3NDAwN2E1MGY3NTViOGRiCkF1dGhvcjogWml5dWUg
WmhhbmcgPHppeXVlLnpoYW5nQG9zcy5xdWFsY29tbS5jb20+Cgphcm02NDogZHRzOiBxY29tOiBx
Y3M4MzAwOiBBZGQgcXJlZiBhbmQgcmVmZ2VuIHN1cHBseSBmb3IgUENJZSBQSFlzCiAgICAKVGhp
cyBjb21taXQgYWRkcyB2ZGRhLXFyZWYtc3VwcGx5LCB2ZGRhLXJlZmdlbi1zdXBwbHksIGFuZCBy
ZWZnZW4tc3VwcGx5IHRvCnZhcmlvdXMgUUNTODMwMCBib2FyZCBhbmQgU29DIGRldmljZSB0cmVl
cy4gVGhlc2UgZGVkaWNhdGVkIHZvbHRhZ2Ugc3VwcGxpZXMKYXJlIHJlcXVpcmVkIGJ5IHRoZSBR
TVAgUENJZSBQSFlzIHRvIHByZXZlbnQgb2NjYXNpb25hbCBzeXN0ZW0gY3Jhc2hlcy4KCj4gZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9tb25hY28tZXZrLmR0cyBiL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcWNvbS9tb25hY28tZXZrLmR0cwo+IGluZGV4IDlkMTdlZjdkMmNhZjEu
LmMxZjYzYTRlZTI0MzggMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL21v
bmFjby1ldmsuZHRzCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL21vbmFjby1ldmsu
ZHRzCj4gQEAgLTYyMyw2ICs2MjMsOCBAQCAmcGNpZTAgewo+ICAmcGNpZTBfcGh5IHsKPiAgCXZk
ZGEtcGh5LXN1cHBseSA9IDwmdnJlZ19sNmE+Owo+ICAJdmRkYS1wbGwtc3VwcGx5ID0gPCZ2cmVn
X2w1YT47Cj4gKwl2ZGRhLXFyZWYtc3VwcGx5ID0gPCZ2cmVnX2w0YT47Cj4gKwl2ZGRhLXJlZmdl
bi1zdXBwbHkgPSA8JnZyZWdfbDdhPjsKCltTZXZlcml0eTogSGlnaF0KV2lsbCB0aGVzZSBuZXcg
c3VwcGxpZXMgYWN0dWFsbHkgYmUgY29uc3VtZWQgYnkgdGhlIFFDUzgzMDAgUEhZIGRyaXZlcj8K
Ckxvb2tpbmcgYXQgdGhlIGRyaXZlciBjaGFuZ2VzIHByZXN1bWFibHkgZWFybGllciBpbiB0aGlz
IHNlcmllcywgaXQgYXBwZWFycwp0aGUgdXBkYXRlZCByZWd1bGF0b3IgbGlzdCB3YXMgbWlzdGFr
ZW5seSBhcHBsaWVkIHRvIHRoZSBzbTg0NTAgY29uZmlndXJhdGlvbgppbnN0ZWFkIG9mIHRoZSBx
Y3M4MzAwIGNvbmZpZ3VyYXRpb246Cgpkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAt
cGNpZS5jOnFjczgzMDBfcW1wX2dlbjR4Ml9wY2llcGh5X2NmZygpIHsKICAgIC4uLgogICAgLnZy
ZWdfbGlzdCAgICAgID0gcW1wX3BoeV92cmVnX2wsCiAgICAubnVtX3ZyZWdzICAgICAgPSBBUlJB
WV9TSVpFKHFtcF9waHlfdnJlZ19sKSwKfQoKZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20t
cW1wLXBjaWUuYzpzbTg0NTBfcW1wX2dlbjR4Ml9wY2llcGh5X2NmZygpIHsKICAgIC4uLgogICAg
LnZyZWdfbGlzdCAgICAgID0gc2E4Nzc1cF9xbXBfcGh5X3ZyZWdfbCwKICAgIC5udW1fdnJlZ3Mg
ICAgICA9IEFSUkFZX1NJWkUoc2E4Nzc1cF9xbXBfcGh5X3ZyZWdfbCksCn0KCkRvZXMgdGhpcyBt
ZWFuIHRoZSBkcml2ZXIgd2lsbCBzdGlsbCBpZ25vcmUgdGhlc2UgbmV3bHkgYWRkZWQgcHJvcGVy
dGllcyBvbgpRQ1M4MzAwLCB3aGlsZSBjYXVzaW5nIGEgcHJvYmUgcmVncmVzc2lvbiBvbiBTTTg0
NTAgcGxhdGZvcm1zIGR1ZSB0byB0aGUKbWlzc2luZyByZWd1bGF0b3JzPwoKWyAuLi4gXQoKLS0g
ClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2
MDgxMDExMjczNS4xMzI2ODA3LTEteml5dWUuemhhbmdAb3NzLnF1YWxjb21tLmNvbT9wYXJ0PTMK
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
