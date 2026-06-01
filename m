Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82740CD6E55
	for <linux-phy@archiver.kernel.org>; Mon,  1 Jun 2026 17:38:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ahM9bq+MLOeZIcxKfAP+OGwNYvihEKQHIwmS06OLN8s=; b=RQps3nKRq9DmM+
	nPbjuHB6thsDjZxw/PXI0aEvlnmQE4TuENYsfGF80ZmVtWkVw/BEf+IsGVtdOduMGf2jQ9QrNDGYC
	a0RLeT0ln7bKOgoP6iVyz/brYiSvLh51617mEuHvjkPVXMQ0pFf5wRjuCRUhkpGw7tWJofB1AXqy3
	uKDFYpPxNhvoEDdg5ja0AGhW8wpfSAYvM3goT7i9viZWZxhfDs0qMnHUZiRtRBlSPjJNgkyduqZwV
	hk39shPhTGYJNKdEFmuBLvkt44/hqIVRE2KxM+BzcMcc4OvYjbN6lp+Up5qA2pvQ/s8hCKrcCPted
	uVnbAcotPrJiNutiNa3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU6af-0000000Bb0V-1BT9;
	Mon, 01 Jun 2026 17:38:17 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU6ad-0000000Bazu-1XCs
	for linux-phy@lists.infradead.org;
	Mon, 01 Jun 2026 17:38:15 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 769A9600AA;
	Mon,  1 Jun 2026 17:38:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BEE691F00893;
	Mon,  1 Jun 2026 17:38:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780335494;
	bh=hEqYqLf3qTtAVk+r+1pqv1nASrzWTTWGxu96dEN13tw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Yz8YFjVj8g5acgJ94wYNdvk3yF2ynbPugVX3Mf0pta1PW6KMF/JqrzIuz8mtOnEEA
	 ZFQyJZRZFmhmmUDjKzX4QFJyp92UCnrAC06hvCEH7rKnmLb6RA58db2YXdm2EGwJfD
	 YUcDHHSG8Ylys4XcENz/TYVDem+dF7SDwSz+EQVIUsN+9qgUdfYad4pAeeg9Uue2jr
	 Qp9P2AzTIwtrkrTtHaQ2lKqNKIksNrccvccYz2Twn7WfspFMtI1wvnPjTfGQPZ3yS2
	 41G9G3sgdsgk8MB6+twZRG58NV009OTTTmtxBNPf6t9qqLpsPe91mFxZrKQWwA7TZ8
	 c5F4knmjy1X1g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/3] dt-bindings: PCI: qcom,pcie-sm8550: Add Eliza
 compatible
To: "Krishna Chaitanya Chundru" <krishna.chundru@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, robh@kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org, olteanv@gmail.com
In-Reply-To: <20260601-eliza-v2-2-6b44c9c23d5e@oss.qualcomm.com>
References: <20260601-eliza-v2-2-6b44c9c23d5e@oss.qualcomm.com>
Date: Mon, 01 Jun 2026 17:38:13 +0000
Message-Id: <20260601173813.BEE691F00893@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVGhlIGNvbW1pdCBtZXNz
YWdlIGluY29ycmVjdGx5IHN0YXRlcyB0aGUgYmFja3dhcmRzIGNvbXBhdGliaWxpdHkgdGFyZ2V0
LCBtYWtpbmcgaXQgbG9naWNhbGx5IGNvbmZ1c2luZy4KLS0KCmNvbW1pdCA0NzAwYzdjYzA2NmYz
YTA4ZTA5MDgxNzE5NGUxNmY1NWU4Mzc4NzYyCkF1dGhvcjogS3Jpc2huYSBDaGFpdGFueWEgQ2h1
bmRydSA8a3Jpc2huYS5jaHVuZHJ1QG9zcy5xdWFsY29tbS5jb20+CgpkdC1iaW5kaW5nczogUENJ
OiBxY29tLHBjaWUtc204NTUwOiBBZGQgRWxpemEgY29tcGF0aWJsZQoKVGhpcyBjb21taXQgYWRk
cyB0aGUgcWNvbSxlbGl6YS1wY2llIGNvbXBhdGlibGUgc3RyaW5nIHRvIHRoZSBTTTg1NTAgUENJ
ZQpkZXZpY2UgdHJlZSBiaW5kaW5nIHNjaGVtYS4KCj4gUENJZSBjb250cm9sbGVyIHByZXNlbnQg
aW4gRWxpemEgU29DIGlzIGJhY2t3YXJkcyBjb21wYXRpYmxlIHdpdGggdGhlCj4gY29udHJvbGxl
ciBwcmVzZW50IGluIEVsaXphIFNvQy4gSGVuY2UsIGFkZCB0aGUgY29tcGF0aWJsZSB3aXRoIFNN
ODU1MAo+IGZhbGxiYWNrLgoKW1NldmVyaXR5OiBMb3ddClRoaXMgaXNuJ3QgYSBidWcsIGJ1dCB0
aGVyZSBpcyBhIHR5cG8gaW4gdGhlIGNvbW1pdCBtZXNzYWdlLiBJdCBzdGF0ZXMKdGhhdCB0aGUg
RWxpemEgU29DIGNvbnRyb2xsZXIgaXMgYmFja3dhcmRzIGNvbXBhdGlibGUgd2l0aCB0aGUgRWxp
emEgU29DLgpTaG91bGQgdGhpcyBzYXkgaXQgaXMgYmFja3dhcmRzIGNvbXBhdGlibGUgd2l0aCB0
aGUgU004NTUwIFNvQz8KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28u
ZGV2LyMvcGF0Y2hzZXQvMjAyNjA2MDEtZWxpemEtdjItMC02YjQ0YzljMjNkNWVAb3NzLnF1YWxj
b21tLmNvbT9wYXJ0PTIKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXBoeQo=
