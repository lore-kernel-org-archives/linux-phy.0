Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F949CD4F3C
	for <linux-phy@archiver.kernel.org>; Mon, 18 May 2026 12:04:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nqd38rXXgXYzqoWuvtFvB2tQjz0a1QFJ5N6yz6Hw86E=; b=s6yePjjlKWkcXh
	2fZplBOnSp6eJVUkUNpNp3jasUZhk65rEL/V9+Y8Zyv7HeRX+8vmxfd+xeVSq64TkYlH5zbg+R++T
	0jMQ8j5+lyvkb7BI90YKqf01RrNUCyLg/1vJTghbY8o3yPPvhFIRiTm9lRCYFnVUQl0LM+MJ/4tEv
	4y8746trKxJuKGCfLXqxEtRLsAYqXoOEQNZ98eIrMgfSnMAXMBeLmzd2niN7WKFZ2F5PjiJo0/6l0
	ll1aXGkKf+yzNDw/S/5ZbApiU9tmV9FYy0CMN8qds24mbSRXTJ/dK+nI/kS5EXOE0Q+OtbWAMxvOA
	EhxcOsfP/0IZ4s9KIMtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOwhr-0000000FYZg-2S5V;
	Mon, 18 May 2026 12:04:23 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOwhq-0000000FYZM-0f1o
	for linux-phy@lists.infradead.org;
	Mon, 18 May 2026 12:04:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 2DF59601E7;
	Mon, 18 May 2026 12:04:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55071C2BCB8;
	Mon, 18 May 2026 12:04:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779105860;
	bh=BJ+dVmdctWlNDf4FxLrax2LS0TPJidUPUoHpRQQ+xy4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Qu7vYbNayaB/gjw1ZJNz4Q6wmI52LwzKCkT/zJTCuslmWmMAxgdblGEKHFxupOr+A
	 ipJu+6BzEQcnqa3ooXWG0XbQ27XoL7iGQH+/EiVegk1UM82ndnNREOG1oRXlUrQw3B
	 OQi4wfpOnPMLDbUGomcyScTZK4kLL45JLu5w1ORZbf0vswluOLtAEfEfqNTF5wy0NS
	 UPQuu+fl4ztIypraKncQNiEm4eYJ1trSH9HG1o7OjIgWFqtbAmpvvcfQHMMQfDYCpZ
	 doNii1C6E+z8hA1wYHgOw77s3KtSErMhNtCHKT8wsNGOWHalVepTi4Sc5iAjFbs5Nt
	 bF2BVNTL/vjhQ==
Date: Mon, 18 May 2026 14:04:18 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Thierry Reding <thierry.reding@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Peter Chen <peter.chen@kernel.org>, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-tegra@vger.kernel.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v1 3/6] dt-bindings: net: Document Infineon/Intel XMM6260
 modem
Message-ID: <20260518-loutish-colorful-earwig-12dbc9@quoll>
References: <20260511135703.62470-1-clamor95@gmail.com>
 <20260511135703.62470-4-clamor95@gmail.com>
 <20260515-precious-ginger-lori-d1fde7@quoll>
 <CAPVz0n3mvBLracMWGNuJ8kKUvAVZ+JRTJVkZGyq5MkuSobd8NQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPVz0n3mvBLracMWGNuJ8kKUvAVZ+JRTJVkZGyq5MkuSobd8NQ@mail.gmail.com>
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

T24gRnJpLCBNYXkgMTUsIDIwMjYgYXQgMTE6Mzk6NDlBTSArMDMwMCwgU3Z5YXRvc2xhdiBSeWhl
bCB3cm90ZToKPiDQv9GCLCAxNSDRgtGA0LDQsi4gMjAyNuKAr9GALiDQviAxMToxOCBLcnp5c3p0
b2YgS296bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+INC/0LjRiNC1Ogo+ID4KPiA+IE9uIE1vbiwg
TWF5IDExLCAyMDI2IGF0IDA0OjU2OjU4UE0gKzAzMDAsIFN2eWF0b3NsYXYgUnloZWwgd3JvdGU6
Cj4gPiA+ICsgIGFwLXdha2UtZ3Bpb3M6Cj4gPiA+ICsgICAgZGVzY3JpcHRpb246IEdQSU8gY29u
bmVjdGVkIHRvIHRoZSBFSU5UMyBwaW4KPiA+ID4gKyAgICBtYXhJdGVtczogMQo+ID4gPiArCj4g
PiA+ICsgIGNwLXdha2UtZ3Bpb3M6Cj4gPiA+ICsgICAgZGVzY3JpcHRpb246IEdQSU8gY29ubmVj
dGVkIHRvIHRoZSBFSU5UMiBwaW4KPiA+ID4gKyAgICBtYXhJdGVtczogMQo+ID4gPiArCj4gPiA+
ICsgIHBoeXM6Cj4gPiA+ICsgICAgbWF4SXRlbXM6IDEKPiA+ID4gKwo+ID4gPiArICB2YmF0LXN1
cHBseToKPiA+ID4gKyAgICBkZXNjcmlwdGlvbjogU3VwcGx5IGNvbm5lY3RlZCB0byB0aGUgVkJB
VCBsaW5lcy4KPiA+Cj4gPiBUaGlzIHNob3VsZCBiZSByYXRoZXIgbmFtZSBvZiB0aGUgcGluIG9u
IHRoaXMgZGV2aWNlLCBub3QgdGhlIHByb3ZpZGVyCj4gPiBuYW1lLiBWQkFUIHN1Z2dlc3RzIHRo
ZSBsYXR0ZXIuIFBsZWFzZSBkb3VibGUgY2hlY2suCj4gPgo+IAo+IFRoZXJlIGlzIG5vIGRvY3Vt
ZW50YXRpb24gb24gdGhpcyBkZXZpY2UgZnJvbSBJbmZpbmVvbiwgSSBoYXZlIHVzZWQKPiBzY2hl
bWF0aWNzIG9mIHRoZSBQODk1IHdoZXJlIHRoaXMgbW9kZW0gaXMgdXNlZC4gQWNjb3JkaW5nIHRv
IGl0IHBvd2VyCj4gc3VwcGx5IGlzIGNvbm5lY3RlZCB0byBwaW4gd2l0aCBuYW1lIFZCQVQgKGFu
ZCB5ZXMsIEkgYW0gbm90IG1peGluZyBpdAo+IHVwIHNpbmNlIHN1cHBsaWVzIGhhdmUgZGlmZmVy
ZW50IG5hbWVzKQoKYWNrCgpCZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
