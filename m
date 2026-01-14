Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65B75D31A3A
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jan 2026 09:40:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eTTYfJVWnrx6ngUuldz5cToX7sOw1L6ekiShYrOpIFk=; b=JRZaeUI+DrXkew
	P+iCeiwoQVBe7Ma7H7zjLnuNUIFPRILP8rYAkfHpJS6f+n/sSaoTErK5yclHqTZaTVpFRZeBnu1+4
	YOPspe1MaQbX4y2SizUECfRNkrLk3HuDaOhac6kdj/6iEEfu0qxCW7m/6eoKjFQz+nF7v3yuNW+jH
	9D5yyd1fuwtbYih3G9o+1fRUo5R/T8FWWSxg6zKvFGWDvoaEw+284XEmXP65XmytoxCHH2IuyoFqK
	HSvX12uR/VlLDHtCOCoJ+79Ev21Bfo9oV3o/uKB5dFHU1Lfjeuop2khejFvaDr2q7JzjzpnHZgVmH
	EX5MMJsypbK+Y6/pAvKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfxMB-00000008bRr-0TwO;
	Wed, 14 Jan 2026 09:40:03 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfxM7-00000008bQa-1CpK;
	Wed, 14 Jan 2026 09:40:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 327CB4060C;
	Wed, 14 Jan 2026 09:39:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D2A4C4CEF7;
	Wed, 14 Jan 2026 09:39:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768383598;
	bh=+GXQQLnzpHEdyH8KVg6e8QZ98cpG2jl4DlcMTaQxuJQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fOL8KBixIXVgTe+D9BYckQmKoVUpnaAUZfvP1BgU+CVQ4OnxryOOZCeXNP0BbnxQG
	 PtwzHVlmYg5J2UQx40Uw7SBsmjuAcNELO2k+usPpSQxRtAyDNUU3l++ynQH3pXQh0Q
	 AabjR2o1neRVlyvRZUkFGUiMIoLHfxezprrbQOMnf8P/fKaWC+1vkN7fCnvgcCR66E
	 W1dvyV1Tfc/nz2z6btswtF/eWPM3M8740faP3Jnz0HcDypJUbh+yRIhmPO7z37NYR3
	 62LbgstAfhKeKcvkZ2wfS3YhQcSc1CEuFlfr6sTjMQdgXKI0d3B0XwdGeu6nPuhZSv
	 V9pE+8auOTNIw==
Date: Wed, 14 Jan 2026 15:09:54 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Xu Yang <xu.yang_2@nxp.com>, neil.armstrong@linaro.org,
	shawnguo@kernel.org, kernel@pengutronix.de, festevam@gmail.com,
	jun.li@nxp.com, Frank.Li@nxp.com, linux-phy@lists.infradead.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] phy: fsl-imx8mq-usb: add debugfs to access control
 register
Message-ID: <aWdkapV39bOArR-d@vaman>
References: <20260108083641.2119616-1-xu.yang_2@nxp.com>
 <c1425564-9dca-45dc-ac5e-093150a3ff01@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c1425564-9dca-45dc-ac5e-093150a3ff01@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_013959_343971_8326DAC8 
X-CRM114-Status: GOOD (  20.89  )
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

T24gMDgtMDEtMjYsIDE5OjI0LCBBbmRyZXcgTHVubiB3cm90ZToKPiBPbiBUaHUsIEphbiAwOCwg
MjAyNiBhdCAwNDozNjo0MVBNICswODAwLCBYdSBZYW5nIHdyb3RlOgo+ID4gVGhlIENSIHBvcnQg
aXMgYSBzaW1wbGUgMTYtYml0IGRhdGEvYWRkcmVzcyBwYXJhbGxlbCBwb3J0IHRoYXQgaXMKPiA+
IHByb3ZpZGVkIGZvciBvbi1jaGlwIGFjY2VzcyB0byB0aGUgY29udHJvbCByZWdpc3RlcnMgaW5z
aWRlIHRoZQo+ID4gVVNCIDMuMCBmZW10b1BIWVsxXS4gV2hpbGUgYWNjZXNzIHRvIHRoZXNlIHJl
Z2lzdGVycyBpcyBub3QgcmVxdWlyZWQKPiA+IGZvciBub3JtYWwgUEhZIG9wZXJhdGlvbiwgdGhp
cyBpbnRlcmZhY2UgZW5hYmxlcyB5b3UgdG8gYWNjZXNzCj4gPiBzb21lIG9mIHRoZSBQSFnigJlz
IGRpYWdub3N0aWMgZmVhdHVyZXMgZHVyaW5nIG5vcm1hbCBvcGVyYXRpb24gb3IKPiA+IHRvIG92
ZXJyaWRlIHNvbWUgYmFzaWMgUEhZIGNvbnRyb2wgc2lnbmFscy4KPiA+IAo+ID4gMyBkZWJ1Z2Zz
IGZpbGVzIGFyZSBjcmVhdGVkIHRvIHJlYWQgYW5kIHdyaXRlIGNvbnRyb2wgcmVnaXN0ZXJzLAo+
ID4gYWxsIHVzZSBoZXhhZGVjaW1hbCBmb3JtYXQ6Cj4gPiBjdHJsX3JlZ19iYXNlOiB0aGUgcmVn
aXN0ZXIgb2Zmc2V0IHRvIHdyaXRlLCBvciB0aGUgc3RhcnQgb2Zmc2V0Cj4gPiAgICAgICAgICAg
ICAgICB0byByZWFkLgo+ID4gY3RybF9yZWdfY291bnQ6IGhvdyBtYW55IGNvbnRpbnVvdXMgcmVn
aXN0ZXJzIHRvIGJlIHJlYWQuCj4gPiBjdHJsX3JlZ192YWx1ZTogcmVhZCB0byBzaG93IHRoZSBj
b250aW51b3VzIHJlZ2lzdGVycyB2YWx1ZSBmcm9tCj4gPiAgICAgICAgICAgICAgICAgdGhlIG9m
ZnNldCBpbiBjdHJsX3JlZ19iYXNlLCB0byBjdHJsX3JlZ19iYXNlCj4gPiAgICAgICAgICAgICAg
ICAgKyBjdHJsX3JlZ19jb3VudCAtIDEsIG9uZSBsaW5lIGZvciBvbmUgcmVnaXN0ZXIuCj4gPiAg
ICAgICAgICAgICAgICAgd2hlbiB3cml0ZSwgb3ZlcnJpZGUgdGhlIHJlZ2lzdGVyIGF0IGN0cmxf
cmVnX2Jhc2UsCj4gPiAgICAgICAgICAgICAgICAgb25lIHRpbWUgY2FuIG9ubHkgY2hhbmdlIG9u
ZSAxNmJpdHMgcmVnaXN0ZXIuCj4gPiAKPiA+IExpbmtbMV06IGh0dHBzOi8vd3d3LnN5bm9wc3lz
LmNvbS9kdy9kb2MucGhwL3BoeS91c2IzLjAvZmVtdG8vcGh5L3g2NTJfdXNiM19zczE0bHBwXzE4
X25zLzQuMDdhL2R3Y191c2IzLjBfZmVtdG9waHlfc3MxNGxwcF8wOFYxOFZfeDFfZGF0YWJvb2su
cGRmCj4gCj4gUGxlYXNlIGRvbid0IGlnbm9yZSBteSBjb21tZW50cyB0byBWMi4gVGhpbmsgYWJv
dXQgdGhlIGNvZGUgc3BsaXQKPiBiZXR3ZWVuIHRoZSBnZW5lcmljIElQIGxpY2Vuc2VkIGZyb20g
U3lub3BzeXMgYW5kIHRoZSB2ZW5kb3Igc3BlY2lmaWMKPiBjb2RlIHVzZWQgZm9yIGludGVncmF0
aW9uIGludG8gdGhlIFNvQy4gWW91IHdhbnQgdG8gYXZvaWQgbWFraW5nIGEKPiBtZXNzIHlvdSBs
YXRlciBuZWVkIHRvIGNsZWFudXAgYmVjYXVzZSBzb21lYm9keSBlbHNlIGxpY2Vuc2VkIHRoZSBz
YW1lCj4gSVAgY29yZSBmcm9tIFN5bm9wc3lzLCBhbmQgbmVlZCB0byBwdXQgdGhlaXIgb3duIHZl
bmRvciBzcGVjaWZpYwo+IGludGVncmF0aW9uIGNvZGUgYXJvdW5kIHRoZSBnZW5lcmljIGNvZGUu
CgpBZ3JlZSB3aXRoIEFuZHJldyBoZXJlLCBwbGVhc2UgZG8gbWl4LCBzcGxpdHRpbmcgd291bGQg
YmUgYmV0dGVyCgo+IAo+ICAgICBBbmRyZXcKCi0tIAp+Vmlub2QKCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
