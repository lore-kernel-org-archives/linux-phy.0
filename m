Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BE45FC5926
	for <linux-phy@archiver.kernel.org>; Thu, 26 Feb 2026 10:33:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LzmKcZgamgek+vjGO5CFJpz4BkeulcCCaNg6IcY53PU=; b=de1O7v3mUKVFFP
	c1m8CTGMtmNjUAA+yKE54Yo6viNzrP/RKeABVFEQP240XUGRyIf7c+fKEuRDD841AdNCznFJQpPJU
	SdJ2Y2cFNOEmcl9kszFBdFecqstcdDF0a0itPx7S3lh5ooCNRKh3fUUAuaHoa582zjgz1soZcMJCT
	JVtaupNdwHbxJdDxhx6yqQo8oG7EKGviln9VBtih1puRjUOLLwaTejCLlICbnTCTLfXwvNUcQzB0n
	2Ya4N28nIIPACkuhEanihnOfWmWyOJP/dLOu4k5OnFyWgFV/SQsv/xnRQ98gC+HKr6+kPMRV9ja0l
	uW3bUrt8HiRAOH0MwxTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvYgZ-00000005vxE-3Fwi;
	Thu, 26 Feb 2026 10:33:35 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvYgW-00000005vwK-2aTO;
	Thu, 26 Feb 2026 10:33:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1772102009;
	bh=jdsbqMmee99OyhJwJac7k9/iwfoy7HEhr67oW7RcG5E=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=PRHn6pu+LYe1i99VPr8a907RdPH5EhiuOOyQtA7a/NK/fnXla5CncaTSQKWOpYLQR
	 yLbX7w4Xe9MowggMHpLaITfeEpI+vsE0HWZUuixZchr0IlNWYy621A3ihrW9g7yvLE
	 CnJT3vghjIDsu/lmOBoB0OPGCB6zUTciwjtb27n7mBeY/enrvY4dfDucHEFtrbW+AX
	 c11jnZBAwJk2LQgPKxdFbQoEgV4ItyB2JHLJV9tLiX8kXhxpE9C1t/c9gxnUROXJqf
	 narGfuanBg48j2NvI4RInpxAiTp4PPsU2ExWCANyvvLuSv1UNVQEHNyJMV2QQ+JKGm
	 48XTfhIxKJXcw==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id EB06017E0097;
	Thu, 26 Feb 2026 11:33:28 +0100 (CET)
Message-ID: <20e7b970-df30-455e-8067-128de2dca022@collabora.com>
Date: Thu, 26 Feb 2026 11:33:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 18/23] scsi: ufs: mediatek: Don't acquire dvfsrc-vcore
 twice
To: =?UTF-8?B?UGV0ZXIgV2FuZyAo546L5L+h5Y+LKQ==?= <peter.wang@mediatek.com>,
 "chu.stanley@gmail.com" <chu.stanley@gmail.com>,
 "robh@kernel.org" <robh@kernel.org>,
 =?UTF-8?B?Q2h1bmZlbmcgWXVuICjkupHmmKXls7Ap?= <Chunfeng.Yun@mediatek.com>,
 "kishon@kernel.org" <kishon@kernel.org>,
 "James.Bottomley@HansenPartnership.com"
 <James.Bottomley@HansenPartnership.com>,
 "bvanassche@acm.org" <bvanassche@acm.org>,
 =?UTF-8?B?Q2hhb3RpYW4gSmluZyAo5LqV5pyd5aSpKQ==?=
 <Chaotian.Jing@mediatek.com>, "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
 "nicolas.frattaroli@collabora.com" <nicolas.frattaroli@collabora.com>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>,
 "neil.armstrong@linaro.org" <neil.armstrong@linaro.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "avri.altman@wdc.com" <avri.altman@wdc.com>,
 "broonie@kernel.org" <broonie@kernel.org>,
 "martin.petersen@oracle.com" <martin.petersen@oracle.com>
Cc: "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>,
 "kernel@collabora.com" <kernel@collabora.com>
References: <20260216-mt8196-ufs-v7-0-b5f2907c6da7@collabora.com>
 <20260216-mt8196-ufs-v7-18-b5f2907c6da7@collabora.com>
 <010d77378b9cca477439b92d92c8f5bfb2d4df65.camel@mediatek.com>
 <edf07a47-77be-4acc-8825-b14a5d1838df@collabora.com>
 <c7214effa728b74e753abc0dee8d655e036ca7fb.camel@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <c7214effa728b74e753abc0dee8d655e036ca7fb.camel@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260226_023332_801077_C88530F0 
X-CRM114-Status: GOOD (  13.84  )
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

SWwgMjYvMDIvMjYgMDQ6NDUsIFBldGVyIFdhbmcgKOeOi+S/oeWPiykgaGEgc2NyaXR0bzoKPiBP
biBXZWQsIDIwMjYtMDItMjUgYXQgMTM6MzcgKzAxMDAsIEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJl
Z25vIHdyb3RlOgo+PiBXZSBuZWVkIHRvIGNoZWNrIGJvdGggYmVjYXVzZSBVRlNfTVRLX0NBUF9C
T09TVF9DUllQVF9FTkdJTkUgZGVwZW5kcwo+PiBvbjoKPj4gIMKgIDEuIHJlZ192Y29yZQo+PiAg
wqAgMi4gY2xvY2tzIChjcnlwdF9tdXgsIGNyeXB0X2xwLCBjcnlwdF9wZXJmKS4KPj4KPj4gRmFp
bGluZyB0byBjaGVjayBmb3IgYm90aCB1ZnNfbXRrX2lzX2Jvb3N0X2NyeXB0X2VuYWJsZWQoKSBh
bmQKPj4gcmVnX3Zjb3JlIGhlcmUKPj4gd2lsbCBpbnRyb2R1Y2UgYSBidWcgdGhhdCBtYXkgcmVz
dWx0IGluIHN0b3JhZ2UgY29ycnVwdGlvbi4KPj4KPj4gU28geWVzLCBOaWNvbGFzIGlzIGNoZWNr
aW5nIGJvdGggYmVjYXVzZSBpdCBpcyAqcmVxdWlyZWQqIHRvIGNoZWNrCj4+IGJvdGguCj4+Cj4+
IFJlZ2FyZHMsCj4+IEFuZ2Vsbwo+IAo+IEhpIEFuZ2Vsb0dpb2FjY2hpbm8sCj4gCj4gVG8gY2xh
cmlmeSwgQkNFIHN0YW5kcyBmb3IgVUZTX01US19DQVBfQk9PU1RfQ1JZUFRfRU5HSU5FLgo+IAo+
IEJDRSAgICAgcmVnX3Zjb3JlICAgQWN0aW9uCj4gdHJ1ZQl0cnVlCSAgICBJZiBjaGVjayBpcyBm
YWxzZSwgY29udGludWUKPiB0cnVlCWZhbHNlCSAgICBUaGlzIGNhc2UgY2Fubm90IGhhcHBlbiAo
WCkKPiBmYWxzZQl0cnVlCSAgICBJZiBjaGVjayBpcyB0cnVlLCByZXR1cm4KPiBmYWxzZQlmYWxz
ZQkgICAgSWYgY2hlY2sgaXMgdHJ1ZSwgcmV0dXJuCj4gVGhlcmVmb3JlLCB3ZSBvbmx5IG5lZWQg
dG8gY2hlY2sgd2hldGhlciBCQ0UgaXMKPiB0cnVlICh0byBjb250aW51ZSkgb3IgZmFsc2UgKHRv
IHJldHVybikuCj4gCgpUaGFua3MgZm9yIHRoZSBpbmZvcm1hdGlvbi4KCk5vdyBJIGFncmVlLiBU
aGVyZSdzIG5vIG5lZWQgdG8gY2hlY2sgZm9yIHRoYXQgdHdpY2UsIGFzIHRoZSBjYXAgaXMgc2V0
Cm9ubHkgd2hlbiBhbGwgY2xvY2tzIGFuZCB3aGVuIHJlZ192Y29yZSBpcyBub3QgTlVMTCAtIEkg
bWlzc2VkIHRoZSBmaXJzdApsaW5lcyBvZiB0aGUgdWZzX210a19pbml0X2Jvb3N0X2NyeXB0X2Z1
bmN0aW9uKCkgZnJvbSB0aGlzIHBhdGNoLCB3aGVyZQpOaWNvbGFzIGlzIGFkZGluZyBhIGNoZWNr
IGZvciB0aGF0IGF0IHRoZSB2ZXJ5IGJlZ2lubmluZyBvZiB0aGlzIGZ1bmN0aW9uLgoKVGhpcyBt
ZWFucyB0aGF0IHRoZSBVRlNfTVRLX0NBUF9CT09TVF9DUllQVF9FTkdJTkUgZmxhZyBpcyBiZWlu
ZyBzZXQgb25seQp3aGVuIGFsbCBvZiB0aGUgcHJlcmVxdWlzaXRlcyAocmVnX3Zjb3JlIGFuZCBj
bG9ja3MpIGFyZSBzYXRpc2ZpZWQuCgpJIGFncmVlIHdpdGggeW91LCBQZXRlciwgdGhlcmUncyBu
byBuZWVkIHRvIGNoZWNrIGZvciBib3RoIHRoZSB2cmVnIGFuZApjYXBzLCBhcyB0aGUgY2FwIGNh
biBvbmx5IGJlIHNldCBpZiB0aGUgdnJlZytjbG9ja3MgYXJlIHByZXNlbnQuCgpOaWNvbGFzLCBj
YW4geW91IHBsZWFzZSBmaXggdGhhdCBhbmQgc2VuZCBhIHY4IEFTQVA/CgpUaGFua3MsCkFuZ2Vs
bwoKPiBUaGFua3MKPiBQZXRlcgoKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK
