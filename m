Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4072BC9830E
	for <linux-phy@archiver.kernel.org>; Thu, 24 Sep 2026 13:22:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7svCMtCzfSsaXMAETlIWrR2rIQE8+S16RH2yT1q4PhE=; b=swrs2jQu3BeUvF
	tfAXm28ZsoCJRHhbmqpEwvmnfkpBxE5fK3/0pTb+Y0wbHYRbx5RsZTxgeKlSk+U1/+uvbwt02v3jc
	nT/mWnZn6XsdVoUcuyi8f7XLgcL9H3R7NooWdJaPvBXdvsXkQwIHYKrX9O1HtXQdE6plNwsXUgu7c
	9Ld07b2Cq8sxGtrmSqRZfGxgHXeYN1L4v4tsw7Zyit41X15RqX1QWPiWr7+5Vo64eN4GdpASsIRGG
	hmenYnU6Il05b9yvpIvkzbU4bkMKYt5xbs1DDYrV1Zk3PwuIO3VUceVG5VZrHuUFpRSWA+LEY6f3z
	vo+SNimPYutspK6ACxuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9jPO-0000000B4ZT-3P5D;
	Thu, 24 Sep 2026 13:22:42 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9jPB-0000000B4Vb-2ldX
	for linux-phy@lists.infradead.org;
	Thu, 24 Sep 2026 13:22:29 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 429D441293;
	Thu, 24 Sep 2026 13:22:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 58CF41F00893;
	Thu, 24 Sep 2026 13:22:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790256149;
	bh=u1v1eJ1dTnpQo/8U1PoAH4WTm7EYUCskGS2V3g6xaF8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=FDnHmgUmffigrIAX0NkzkOQjU6RD4poOU2tsQl9zry0+fc4+h+Ul/WmyS4ocuCMuh
	 HYrZmcnzTDDWyu77b4TFUqib5cDSOuarF+gECTDZnUSgQVciUNumTtDkcqTrHDZOC7
	 mTqWNBEUvIqR17EBmBrpBuasK/vJIbEu+BN9e46EDwePFAl0O1mt2tIjniafYqu3m/
	 3ULeisknIZ8G7TFOdOOaIU4nTPAERNOniUdzAVluDn+9ub5Xyk1dIbT9lFE/vvlEXW
	 t5FbVgsh8ncQLIqRv38DIrxtz+olOmqZ2UA8g5H4SGtlciXUlGqNv7tX+xnywOtJaJ
	 IMlMIK0tr6shg==
Date: Thu, 24 Sep 2026 15:22:25 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Bjorn Andersson <andersson@kernel.org>, Maxime Chevallier <maxime.chevallier@bootlin.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, shengchao.guo@oss.qualcomm.com, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org
Subject: Re: [PATCH v4 1/6] dt-bindings: phy: qcom: add Nord QMP PCIe PHY
 binding
Message-ID: <20260924-lumpy-robust-fulmar-1bfbe0@quoll>
References: <20260921-nord-v4-0-ed05c6e09240@oss.qualcomm.com>
 <20260921-nord-v4-1-ed05c6e09240@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260921-nord-v4-1-ed05c6e09240@oss.qualcomm.com>
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

T24gTW9uLCBTZXAgMjEsIDIwMjYgYXQgMTE6MDc6MDlBTSArMDUzMCwgS3Jpc2huYSBDaGFpdGFu
eWEgQ2h1bmRydSB3cm90ZToKPiArCj4gKyAgdmRkYS1wbGwtZC1zdXBwbHk6IHRydWUKPiArCj4g
KyAgcWNvbSxsaW5rLW1vZGU6Cj4gKyAgICBkZXNjcmlwdGlvbjoKPiArICAgICAgUmVmZXJlbmNl
IHRvIHRoZSBUQ1NSIHN5c2NvbiByZWdpc3RlciBjb250YWluaW5nIHRoZSBQQ0llIGxpbmsgbW9k
ZQo+ICsgICAgICBzZWxlY3RlZCBieSBmaXJtd2FyZS4gVGhlIHByb3BlcnR5IGNvbnNpc3RzIG9m
IHRoZSBUQ1NSIHN5c2Nvbgo+ICsgICAgICBwaGFuZGxlIGZvbGxvd2VkIGJ5IHRoZSBvZmZzZXQg
b2YgdGhlIFRDU1JfUENJRV9MSU5LX0NPTkZJR19NT0RFCj4gKyAgICAgIHJlZ2lzdGVyLgo+ICsg
ICAgICBUaGUgcmVnaXN0ZXIgdmFsdWUgc2VsZWN0cyBvbmUgb2YgdGhlc2UgdG9wb2xvZ2llcy4K
PiArICAgICAgICAwIChRTVBfUENJRV9OT1JEX01PREVfWDE2KSAgICAgICAgIOKAlCBhbGwgcG9y
dHMgY29tYmluZWQgYXMgb25lIHgxNiBQSFkKPiArICAgICAgICAxIChRTVBfUENJRV9OT1JEX01P
REVfWDhfWDgpICAgICAgIOKAlCBwb3J0IEEgYXMgeDggYW5kIHBvcnRzIEIrQytEIGFzIHg4Cj4g
KyAgICAgICAgMiAoUU1QX1BDSUVfTk9SRF9NT0RFX1g4X1g0X1g0KSAgICDigJQgcG9ydCBBIGFz
IHg4LCBwb3J0IEIgYXMgeDQsIGFuZCBwb3J0cyBDK0QgYXMgeDQKPiArICAgICAgICAzIChRTVBf
UENJRV9OT1JEX01PREVfWDhfWDRfWDJfWDIpIOKAlCBwb3J0IEEgYXMgeDgsIHBvcnQgQiBhcyB4
NCwgYW5kIHBvcnRzIEMgYW5kIEQgYXMgeDIKClNhbWUgcXVlc3Rpb24gYXMgbGFzdCB0aW1lLiBw
aHktY2VsbHMgdGVsbHMgd2hpY2ggbW9kZSB5b3UgYXJlIGhlcmUuClRoaXMgaXMgZHVwbGljYXRp
bmcgaXQgYW5kIHRoZSByZWdpc3RlciB2YWx1ZSBDQU5OT1QgY2hvb3NlIHRoZQp0b3BvbG9neS4g
SWYgaXQgZG9lcywgdGhlbiBwaHktY2VsbHMgc2hvdWxkIGJlIDAgYXMgdG9wb2xvZ3kgaXMgZGVm
aW5lZApieSBoYXJkd2FyZSBhbHJlYWR5LCBubz8KCj4gKyAgICAkcmVmOiAvc2NoZW1hcy90eXBl
cy55YW1sIy9kZWZpbml0aW9ucy9waGFuZGxlLWFycmF5Cj4gKyAgICBpdGVtczoKPiArICAgICAg
LSBpdGVtczoKPiArICAgICAgICAgIC0gZGVzY3JpcHRpb246IFBoYW5kbGUgb2YgdGhlIFRDU1Ig
c3lzY29uCj4gKyAgICAgICAgICAtIGRlc2NyaXB0aW9uOiBPZmZzZXQgb2YgVENTUl9QQ0lFX0xJ
TktfQ09ORklHX01PREUgcmVnaXN0ZXIKCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9mCgoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
