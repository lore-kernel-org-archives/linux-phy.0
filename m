Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8171DC05027
	for <linux-phy@archiver.kernel.org>; Fri, 20 Jan 2023 08:46:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:CC:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lwAEsnn0IITf0aNdoFJgOTsQzz6DN3zmT0zT/8Da15Q=; b=BFCkLrkw0HAay9
	wONNssUTyOknvPHt+Rjw+Qg9O0xZkLEE0m2rYDcQLDNDW4auGtP/LhY2gZ8kGPMyq0BYddYCNPJxp
	AAoa98r9H+6yKn/9SmqEOKXi1df+B8TEFyUtdIJOKI7+9QVPoTkxw4ytYpueBUU+jNS7meHmHWacQ
	BrB75SrUd15ZoJ09AOIBB2HTRxAZ97sRAaHwVymMBWKJZLUtAw1cN765Th+evT7Hdrl6pO9PD/Jya
	Sjg+sNtSvei1N4CMCNElGUjytGt22EFHeAt0mGQ//wAbP5W0vMEwp0whlbWKPEeJhJuoxne2ChZ6t
	OHMd2ATlAhwDuG0jp1FQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIn2Q-0096jQ-NE; Fri, 20 Jan 2023 08:46:18 +0000
Received: from esa.microchip.iphmx.com ([68.232.154.123])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIn2N-0096hh-NA; Fri, 20 Jan 2023 08:46:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1674204375; x=1705740375;
  h=message-id:subject:from:to:cc:date:in-reply-to:
   references:content-transfer-encoding:mime-version;
  bh=tk8qj1rZrJvPEgK6EDY0l3oMB6o9yW6VyS0SSpwW99k=;
  b=eqUsd6yFlowaN0geJBIAw5DyPasdhy3I2agOunEQfZnVCj6xxqKkq22l
   Bdzoawn9lEjvmKj+Vp7Ue/80/bx23ji/1bo6Ib06cW/ZEAffMxj6FCPwo
   3PKpuPkKIGxoq3dwyG9Pl09Y3kjShtAeFOCSmyEEpibXuz5nDO30m0o34
   3RAIvxIhOtgmC70iawaf0REdm3CX2eH/Dfz7NYJXufQJLNqJo1BnsHdHn
   qqCA4MfyCTz3jfsWnog3vShc6ZJ0daNfKCEeQR7mwtaNXckF2YgtnWwi6
   5u8wDP8FI4F0mhrKz7bEYskZhVIoxF3AEnshCqCASnfFuBt9yZLg2FHgK
   g==;
X-IronPort-AV: E=Sophos;i="5.97,231,1669100400"; 
   d="scan'208";a="196667348"
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 20 Jan 2023 01:46:11 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 20 Jan 2023 01:46:10 -0700
Received: from den-dk-m31857.microchip.com (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.2507.16 via Frontend Transport; Fri, 20 Jan 2023 01:46:05 -0700
Message-ID: <08d8b47f8acc1fc51da2eee7eab3a55f0f678907.camel@microchip.com>
Subject: Re: [PATCH 3/7] net: lan966x: Convert to devm_of_phy_optional_get()
From: Steen Hegelund <steen.hegelund@microchip.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>, Madalin Bucur
	<madalin.bucur@nxp.com>, "David S . Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>, Horatiu Vultur <horatiu.vultur@microchip.com>,
	<UNGLinuxDriver@microchip.com>, Thierry Reding <thierry.reding@gmail.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof =?UTF-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Bjorn Helgaas
	<bhelgaas@google.com>, Jonathan Hunter <jonathanh@nvidia.com>, Vinod Koul
	<vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Alan Stern
	<stern@rowland.harvard.edu>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Alim Akhtar
	<alim.akhtar@samsung.com>, Siddharth Vadapalli <s-vadapalli@ti.com>, "Russell
 King" <linux@armlinux.org.uk>
CC: <netdev@vger.kernel.org>, <linux-tegra@vger.kernel.org>,
	<linux-pci@vger.kernel.org>, <linux-phy@lists.infradead.org>,
	<linux-usb@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-samsung-soc@vger.kernel.org>
Date: Fri, 20 Jan 2023 09:46:05 +0100
In-Reply-To: <a8673e0ed97d41721bb9718d3338fa6957a7f0f7.1674036164.git.geert+renesas@glider.be>
References: <cover.1674036164.git.geert+renesas@glider.be>
	 <a8673e0ed97d41721bb9718d3338fa6957a7f0f7.1674036164.git.geert+renesas@glider.be>
User-Agent: Evolution 3.46.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230120_004615_862801_F9980A87 
X-CRM114-Status: GOOD (  15.64  )
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

SGkgR2VlcnQsCgpUaGlzIGxvb2tzIGdvb2QgdG8gbWUuCgpCUgpTdGVlbgoKUmV2aWV3ZWQtYnk6
IFN0ZWVuIEhlZ2VsdW5kIDxTdGVlbi5IZWdlbHVuZEBtaWNyb2NoaXAuY29tPgoKT24gV2VkLCAy
MDIzLTAxLTE4IGF0IDExOjE1ICswMTAwLCBHZWVydCBVeXR0ZXJob2V2ZW4gd3JvdGU6Cj4gRVhU
RVJOQUwgRU1BSUw6IERvIG5vdCBjbGljayBsaW5rcyBvciBvcGVuIGF0dGFjaG1lbnRzIHVubGVz
cyB5b3Uga25vdyB0aGUKPiBjb250ZW50IGlzIHNhZmUKPiAKPiBVc2UgdGhlIG5ldyBkZXZtX29m
X3BoeV9vcHRpb25hbF9nZXQoKSBoZWxwZXIgaW5zdGVhZCBvZiBvcGVuLWNvZGluZyB0aGUKPiBz
YW1lIG9wZXJhdGlvbi4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBHZWVydCBVeXR0ZXJob2V2ZW4gPGdl
ZXJ0K3JlbmVzYXNAZ2xpZGVyLmJlPgo+IC0tLQo+IMKgZHJpdmVycy9uZXQvZXRoZXJuZXQvbWlj
cm9jaGlwL2xhbjk2NngvbGFuOTY2eF9tYWluLmMgfCA1ICsrLS0tCj4gwqAxIGZpbGUgY2hhbmdl
ZCwgMiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL25ldC9ldGhlcm5ldC9taWNyb2NoaXAvbGFuOTY2eC9sYW45NjZ4X21haW4uYwo+IGIvZHJp
dmVycy9uZXQvZXRoZXJuZXQvbWljcm9jaGlwL2xhbjk2NngvbGFuOTY2eF9tYWluLmMKPiBpbmRl
eCBjYWRkZTIwNTA1YmEwNjg5Li5kNjRhNTI1Y2RjOWVhMThiIDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvbmV0L2V0aGVybmV0L21pY3JvY2hpcC9sYW45NjZ4L2xhbjk2NnhfbWFpbi5jCj4gKysrIGIv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvbWljcm9jaGlwL2xhbjk2NngvbGFuOTY2eF9tYWluLmMKPiBA
QCAtMTE0Nyw5ICsxMTQ3LDggQEAgc3RhdGljIGludCBsYW45NjZ4X3Byb2JlKHN0cnVjdCBwbGF0
Zm9ybV9kZXZpY2UgKnBkZXYpCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGxhbjk2
NngtPnBvcnRzW3BdLT5jb25maWcucG9ydG1vZGUgPSBwaHlfbW9kZTsKPiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgbGFuOTY2eC0+cG9ydHNbcF0tPmZ3bm9kZSA9IGZ3bm9kZV9oYW5k
bGVfZ2V0KHBvcnRucCk7Cj4gCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc2VyZGVz
ID0gZGV2bV9vZl9waHlfZ2V0KGxhbjk2NngtPmRldiwgdG9fb2Zfbm9kZShwb3J0bnApLAo+IE5V
TEwpOwo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChQVFJfRVJSKHNlcmRlcykg
PT0gLUVOT0RFVikKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgc2VyZGVzID0gTlVMTDsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzZXJkZXMg
PSBkZXZtX29mX3BoeV9vcHRpb25hbF9nZXQobGFuOTY2eC0+ZGV2LAo+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdG9fb2Zfbm9kZShwb3J0bnApLCBOVUxMKTsKPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKElTX0VSUihzZXJkZXMpKSB7Cj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBlcnIgPSBQVFJfRVJS
KHNlcmRlcyk7Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBnb3RvIGNsZWFudXBfcG9ydHM7Cj4gLS0KPiAyLjM0LjEKPiAKCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
