Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5028BD3CC92
	for <linux-phy@archiver.kernel.org>; Thu, 15 Jan 2026 00:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c/2Zmp1h4cOtrOeeqZWA86a9ZnvsNGljrvaLvlzSlH0=; b=c/kED6/gzQTYpF
	fDo0ghjvr3qRhJzndSNUQzMJm1064f6m2BLs/S0v02Tj2UHwOVFdsSKtZkcFGUtVfOqO2cdWK5+gA
	gehV3Lu5nngRlcHC8/kEy9cFZlldHCHYezNF5e66q/fj2c3i9JdqwuZkMKXvAUvJpsyDuh502sim5
	UCWwygA4p8tZmZIWTrOSyR0439iOQeiJ4JlgSqtyB8uyepZlgi/iO7yOSkJc/nQZXX4JzZL9J1KIg
	eL5HCg9pK9hyd+hwPVBSB+WZjWOr3R4f/7YmftbFdfYui96USMniXbQNBLFFHRmE3Y+H6/mQbbCBE
	dIcodz8yrUJKswIVgdzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgBQS-0000000BGOu-3rh4;
	Thu, 15 Jan 2026 00:41:24 +0000
Received: from mail-m8389.xmail.ntesmail.com ([156.224.83.89])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgBQQ-0000000BGNd-01Zk;
	Thu, 15 Jan 2026 00:41:24 +0000
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 30b0570b3;
	Thu, 15 Jan 2026 08:41:17 +0800 (GMT+08:00)
Message-ID: <354e3edb-ac42-4610-89ec-227fe07d4cf6@rock-chips.com>
Date: Thu, 15 Jan 2026 08:41:14 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Manivannan Sadhasivam <mani@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>,
 linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-phy@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH 0/5] Add calibration for Synopsys PCIe PHY and Controller
To: Niklas Cassel <cassel@kernel.org>
References: <1766560210-100883-1-git-send-email-shawn.lin@rock-chips.com>
 <aWe5s5mqFt26lRGL@ryzen>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <aWe5s5mqFt26lRGL@ryzen>
X-HM-Tid: 0a9bbf197d9f09cckunma8104af25048b4
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0wYTVZKTRlJHU5LHkgYTh5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=kK8nOhBfeBjm+qLybyuZBQDiWagiaYZERdgLtmd90l44dyWCGokOOtCVYGIsPO+IHRKsrwF+0nAFU9DDogPC/0uYvWLySUA59MsK9/ZsVQ8iXPABWeLJiQvMA/k/BqqXLrc5GvEVmUg8C25q+RcUB0FqDH0NTysnBNRpTYZNa9I=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=RHktkXwIGR8cU+9o2qWN73LkcikteCMvtYc9osiW8ZM=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_164123_097278_CFA0AB39 
X-CRM114-Status: GOOD (  20.02  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

CuWcqCAyMDI2LzAxLzE0IOaYn+acn+S4iSAyMzo0MywgTmlrbGFzIENhc3NlbCDlhpnpgZM6Cj4g
T24gV2VkLCBEZWMgMjQsIDIwMjUgYXQgMDM6MTA6MDVQTSArMDgwMCwgU2hhd24gTGluIHdyb3Rl
Ogo+Pgo+PiBDdXJyZW50bHksIHdoZW4gcGNpZS1kdy1yb2NrY2hpcCB1c2VzIHRoZSBTeW5vcHN5
cyBQSFksIGl0IHJlbGllcyBvbgo+PiB0aGUgcGh5X2luaXQoKSBjYWxsYmFjayBvZiB0aGUgcGh5
LXJvY2tjaGlwLXNucHMtcGNpZTMgZHJpdmVyIHRvCj4+IHBlcmZvcm0gY2FsaWJyYXRpb24uIFRo
aXMgaXMgaW5jb3JyZWN0IGJlY2F1c2UgdGhlIGNvbnRyb2xsZXIgaXMKPj4gc3RpbGwgaGVsZCBp
biByZXNldCBhdCB0aGF0IHRpbWUsIHByZXZlbnRpbmcgdGhlIFBIWSBmcm9tIGFjY3VyYXRlbHkK
Pj4gcmVmbGVjdGluZyB0aGUgYWN0dWFsIFBMTCBsb2NrIGFuZCBjYWxpYnJhdGlvbiBzdGF0dXMu
Cj4gCj4gSGVsbG8gU2hhd24sCj4gCj4gSSBjYW4gc2VlIHRoYXQgeW91IG1vdmUgdGhlIGNhbGli
cmF0aW9uIGNvZGUgZnJvbSAucGh5X2luaXQoKSB0bwo+IC5waHlfY2FsaWJyYXRlKCkuCj4gCj4g
QW5kIEkgdW5kZXJzdGFuZHRoYXQgdGhlIGNvbnRyb2xsZXIgaXMgc3RpbGwgaGVsZCBpbiByZXNl
dC4KPiAKPiBJIHVuZGVyc3RhbmQgdGhhdCB0aGUgdGhlIFBIWSBjYWxpYnJhdGlvbiBpcyBzdXBw
b3NlZCB0byBiZSBkb25lCj4gd2hlbiB0aGUgY29udHJvbGxlciBpcyBub3QgaGVsZCBpbiByZXNl
dCwgYW5kIHRoYXQgYWxvbmUgaXMKPiBlbm91Z2ggdG8gd2FycmFudCBhIGZpeC4KClN1cmUuCgo+
IAo+IFRoZSBTeW5vcHN5cyBHZW4zIFBIWSBpcyB1c2VkIGluIGUuZy4gUm9jazViLCBhbmQgbGlu
ayB0cmFpbmluZwo+IGN1cnJlbnRseSB3b3JrcyBmaW5lIHdpdGggdGhpcyBQSFksIHNvIHdoYXQg
aXMgdGhlIGFjdHVhbAoKSXQganVzdCBoYXBwZW5kZWQgdG8gd29yayBhcyBpbiBtb3N0IGNhc2Vz
LCB0aGUgY2FsaWJyYXRpb24gZmluaXNoZWQKdmVyeSBxdWlja2x5IGFmdGVyIGNvbnRyb2xsZXIg
aXMgbm90IGhlbGQgaW4gcmVzZXQuCgo+IGltcGxpY2F0aW9ucyBvZiBwZXJmb3JtaW5nIHRoZSBQ
SFkgY2FsaWJyYXRpb24gd2hlbiB0aGUgY29udHJvbGxlcgo+IGlzIGhlbGQgaW4gcmVzZXQ/Cj4g
Cj4gV2lsbCBpdCBzb21laG93IGl0IGltcHJvdmUgc2lnbmFsIGludGVncml0eT8KPiAKClBlcmZv
cm1pbmcgdGhlIFBIWSBjYWxpYnJhdGlvbiB3aGVuIHRoZSBjb250cm9sbGVyIGlzIGhlbGQKaW4g
cmVzZXQgaXMgdGhlIHdyb25nIHdheS4gSWYgdGhlIHJlZmNsayBvciBQSFkgcG93ZXIgc3VwcGx5
IGlzbid0CnJlYWR5LCB0aGUgYm9ndXMgY2FsaWJyYXRpb24gc3RpbGwgcGFzc2VzLCB0aGVuIHRo
ZSBzeXN0ZW0gd2lsbCBnZXQKc3R1Y2sgd2hlbiBhY2Nlc3NpbmcgREJJLiBTbyBwZXJmb3JtaW5n
IHRoZSBQSFkgY2FsaWJyYXRpb24gbXVzdCBiZSBkb25lCmFmdGVyIGNvbnRyb2xsZXIgcXVpdCB0
aGUgcmVzZXQgc3RhdGUuCgo+IAo+IEtpbmQgcmVnYXJkcywKPiBOaWtsYXMKPiAKPj4KPj4gVG8g
Zml4IHRoaXMsIHRoaXMgc2VyaWVzOgo+PiAxLiBDYWxscyBwaHlfY2FsaWJyYXRlKCkgaW4gdGhl
IHBjaWUtZHctcm9ja2NoaXAgZHJpdmVyIChpZiBzdXBwb3J0ZWQpCj4+ICAgICBhZnRlciB0aGUg
Y29udHJvbGxlciBpcyBvdXQgb2YgcmVzZXQsIGVuc3VyaW5nIHRoZSBQSFkgY2FuCj4+ICAgICBw
cm9wZXJseSBzeW5jaHJvbml6ZSB3aXRoIHRoZSBjb250cm9sbGVyIHN0YXRlLgo+PiAyLiBBZGRz
IHRoZSBuZWNlc3NhcnkgY2FsaWJyYXRpb24gc3VwcG9ydCBpbiB0aGUgU3lub3BzeXMgUEhZIGRy
aXZlcgo+PiAgICAgdG8gaW1wbGVtZW50IHRoaXMgY2FsbGJhY2suCj4gCgoKLS0gCmxpbnV4LXBo
eSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
