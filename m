Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 629C9C79FB9
	for <linux-phy@archiver.kernel.org>; Thu, 10 Sep 2026 10:03:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OrYcFUAoV/sSvAHieOh+x7HCNXKsHfKs/aqXz24zRh4=; b=fx7NM3HrHPBCF+
	mgUxQXkrOwNv4equGunU4ITnM0wbZzTUD2s6g1x72wmV6nP6DtBs7sHNptWEcmLt8lphZJUNEmyos
	olTeuXoEa+IfIcSLPTnmenZr2YM4v/qqqIQ5V8fapPyqodZTrF0KTAUGy6609SRZx+LOWNRGeCgET
	ulk4GdfCIfwOEljIQIV3rOGIarvBIOd5bTC/8/V8uijO3bNGh/+4cOfO9g1Pxa6Po6uHe+g5hqETp
	c06GYnO10n2eSXTuzBb63/w2EciszSBGh3mp6zjVw1l9/+vLoPa4MwTRPRt8VFZVEXWZtvwUmdrqf
	un5+OZEXnbtHzSuDOsTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4bcj-0000000Dxqz-3hIQ;
	Thu, 10 Sep 2026 10:03:17 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4bcj-0000000Dxqg-0wSR
	for linux-phy@lists.infradead.org;
	Thu, 10 Sep 2026 10:03:17 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id B682243BF2;
	Thu, 10 Sep 2026 10:03:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6A42A1F000FF;
	Thu, 10 Sep 2026 10:03:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789034596;
	bh=ukewkJzWg3+pptkPINmJqZ5vy6B6QPl0Un6jQ2Exu9w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Te9y/vpJuyFO9ZT7+Qf8JijMx8Z0O37WT+grjs6GBWCnI7+bpw7P197jBHIy0vEAy
	 fg7VGC2jEW37Akx9JnJYfCSBLtH3jbzABvBAj1GwYR3iudohUOMi7XOPYAaz86rwV3
	 afz2/1dw8RnO7nItIwC7Re6XOYQUMUfyi/gg5SWHlUvWyZoP5j8rM7wbUjyAx0yB+5
	 PM6iWXXEmSxTpLedhqKVvfHIYj96TEaeSHfwl8rSv5E4E98X2Ity4WKediL+p/2DQc
	 xnYtRZj8ibD02ye93XcNNhONUb6fVwRpR1VCPA7b1poYLS09MqtmtmizWQ6BxDtjZA
	 GmUizaAdygi4Q==
Date: Thu, 10 Sep 2026 12:03:12 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Bjorn Andersson <andersson@kernel.org>, Maxime Chevallier <maxime.chevallier@bootlin.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, 
	shengchao.guo@oss.qualcomm.com
Subject: Re: [PATCH v3 1/5] dt-bindings: phy: qcom: add Nord QMP PCIe PHY
 binding
Message-ID: <20260910-neat-goat-of-prosperity-eeecaf@quoll>
References: <20260909-nord-v3-0-b0a82721c547@oss.qualcomm.com>
 <20260909-nord-v3-1-b0a82721c547@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260909-nord-v3-1-b0a82721c547@oss.qualcomm.com>
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

T24gV2VkLCBTZXAgMDksIDIwMjYgYXQgMDU6MTg6MTZQTSArMDUzMCwgS3Jpc2huYSBDaGFpdGFu
eWEgQ2h1bmRydSB3cm90ZToKPiArICB2ZGRhLXBoeS1hLXN1cHBseTogdHJ1ZQo+ICsKPiArICB2
ZGRhLXBoeS1iLXN1cHBseTogdHJ1ZQo+ICsKPiArICB2ZGRhLXBoeS1jLXN1cHBseTogdHJ1ZQo+
ICsKPiArICB2ZGRhLXBoeS1kLXN1cHBseTogdHJ1ZQo+ICsKPiArICB2ZGRhLXBsbC1hLXN1cHBs
eTogdHJ1ZQo+ICsKPiArICB2ZGRhLXBsbC1iLXN1cHBseTogdHJ1ZQo+ICsKPiArICB2ZGRhLXBs
bC1jLXN1cHBseTogdHJ1ZQo+ICsKPiArICB2ZGRhLXBsbC1kLXN1cHBseTogdHJ1ZQo+ICsKPiAr
ICBxY29tLGxpbmstbW9kZToKPiArICAgIGRlc2NyaXB0aW9uOiB8Cj4gKyAgICAgIFJlZmVyZW5j
ZSB0byB0aGUgVENTUiBzeXNjb24gYW5kIHRoZSBvZmZzZXQgb2YgdGhlCj4gKyAgICAgIFRDU1Jf
UENJRV9MSU5LX0NPTkZJR19NT0RFIHJlZ2lzdGVyLgo+ICsgICAgICAgIDAgKFFNUF9QQ0lFX05P
UkRfTU9ERV9YMTYpICAgICAgICDigJQgYWxsIHBvcnRzIGdhbmdlZCBhcyB4MTYKPiArICAgICAg
ICAxIChRTVBfUENJRV9OT1JEX01PREVfWDhfWDgpICAgICAg4oCUIHg4IChwb3J0IEEpICsgeDgg
KHBvcnQgQitDK0QpCj4gKyAgICAgICAgMiAoUU1QX1BDSUVfTk9SRF9NT0RFX1g4X1g0X1g0KSAg
IOKAlCB4OCAoQSkgKyB4NCAoQikgKyB4NCAoQytEKQo+ICsgICAgICAgIDMgKFFNUF9QQ0lFX05P
UkRfTU9ERV9YOF9YNF9YMl9YMinigJQgeDggKEEpICsgeDQgKEIpICsgeDIgKEMpICsgeDIgKEQp
CgpXaGF0IGRvZXMgdGhpcyBtZWFuPyBUaGUgcGh5IHdvcmtpbmcgbW9kZSBpcyBkZWZpbmVkIGJ5
IHBoeS1jZWxscwphcmd1bWVudCwgc28gd2hhdCBhcmUgdGhlc2UgbnVtYmVycyBhYm92ZT8KCkJl
c3QgcmVnYXJkcywKS3J6eXN6dG9mCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==
