Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CDC87C79FB9
	for <linux-phy@archiver.kernel.org>; Thu, 10 Sep 2026 07:24:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K8Fg7L0IR7CsRzy6Vz1I8V5k757KCTWaOIvpoHpm+ao=; b=1UgUVm/T2HFHcq
	jX/BsV0ZAP3sDpyMppgjCfu0btoptma/zNwtRaFG+bBABZh5CDGIUtbHgg39AjdyGZfV+dgFDkWg2
	JBA+dy1XkMnjBz3X4KJcUUSRXNdYS9XqoZOV3AN2YSMyb6r4n62eObQYZ2sPo4gmtQp7LbJAmYpYX
	uCsAFvK3szat8lPTtNCL19n/RRmTxxOq1oujk0h1B3nwr56JkcsuR+WuVyMvZ0miEytJuu66Bd1IV
	mpXHQfl9oWx+VepenpEg1DT20jubIvWkQSyLlvziAA6WexQIA+o0efOny+KRkui3BgQ2FafqtmD5v
	z6OH7mEQpCAjXQimKc8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4Z8n-0000000DcWP-2CyJ;
	Thu, 10 Sep 2026 07:24:13 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4Z8m-0000000DcW4-1Bie
	for linux-phy@lists.infradead.org;
	Thu, 10 Sep 2026 07:24:12 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 5AAC1601F1;
	Thu, 10 Sep 2026 07:24:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F4C21F000FF;
	Thu, 10 Sep 2026 07:24:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789025051;
	bh=3K/5jxz2DpMibdRxxyvG0gZi7vwsVMxfXJLuXGz7N8c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=O2XvVlOZWSUAaeddC+u8OBIk5bQwqE+as5bwNIuFFOj/dYc6Ssjfm/8BKro1UaSqa
	 S39yfT0Jnn+dtE3l/gOprpHfY0EwXxbq8V10FLWk92EFnZmPNZGDByFJbJ6oWIHAUj
	 9UyxXgXSuuUa+pcYkRkXA2ds+Crsb++CEp5aYfDPDr/b/9IOdbj1o6KWzotVV9xYfE
	 s/+Bs/ikT9C9giPQsszyOBaJC60fKnMKuYD+WSvukX9pFUz1+yqXZ8b6PeXFfyzW/J
	 PlLARU69dyhMCpuZw8Ryah6NnGtK9B56VJCfnzf8ttaOvmgdsS8HyiqrNvsABPwlqq
	 /fu4NQYUiGUow==
Date: Thu, 10 Sep 2026 09:24:01 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Bjorn Andersson <andersson@kernel.org>, 
	Maxime Chevallier <maxime.chevallier@bootlin.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, shengchao.guo@oss.qualcomm.com, 
	Qiang Yu <qiang.yu@oss.qualcomm.com>
Subject: Re: [PATCH v3 4/5] phy: qcom: qmp: Move
 qphy_setbits/clrbits/checkbits to common header
Message-ID: <iwd7bhclrdxjdiq7bfukojef6dzx4ff3xq7svkpsbcx65asmoq@utu2papslzrw>
References: <20260909-nord-v3-0-b0a82721c547@oss.qualcomm.com>
 <20260909-nord-v3-4-b0a82721c547@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260909-nord-v3-4-b0a82721c547@oss.qualcomm.com>
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

T24gV2VkLCBTZXAgMDksIDIwMjYgYXQgMDU6MTg6MTlQTSArMDUzMCwgS3Jpc2huYSBDaGFpdGFu
eWEgQ2h1bmRydSB3cm90ZToKPiBxcGh5X3NldGJpdHMoKSwgcXBoeV9jbHJiaXRzKCkgYW5kIHFw
aHlfY2hlY2tiaXRzKCkgd2VyZSBkdXBsaWNhdGVkCj4gdmVyYmF0aW0gYWNyb3NzIHBoeS1xY29t
LXFtcC1wY2llLmMsIHBoeS1xY29tLXFtcC1wY2llLW1zbTg5OTYuYywKPiBwaHktcWNvbS1xbXAt
dWZzLmMsIHBoeS1xY29tLXFtcC11c2IuYywgcGh5LXFjb20tcW1wLXVzYmMuYyBhbmQKPiBwaHkt
cWNvbS1xbXAtY29tYm8uYy4gTW92ZSB0aGVtIHRvIHRoZSBzaGFyZWQgcGh5LXFjb20tcW1wLWNv
bW1vbi5oLAo+IHdoaWNoIGFsbCBvZiB0aGVzZSBkcml2ZXJzIGFscmVhZHkgaW5jbHVkZSwgYW5k
IGRyb3AgdGhlIGxvY2FsIGNvcGllcy4KPiAKPiBUaGlzIGFsc28gbWFrZXMgdGhlIGhlbHBlcnMg
YXZhaWxhYmxlIHRvIHBoeS1xY29tLXFtcC1wY2llLW11bHRpcGh5LmMKPiB3aXRob3V0IGludHJv
ZHVjaW5nIHlldCBhbm90aGVyIGNvcHkuCj4gCj4gU3VnZ2VzdGVkLWJ5OiBRaWFuZyBZdSA8cWlh
bmcueXVAb3NzLnF1YWxjb21tLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBLcmlzaG5hIENoYWl0YW55
YSBDaHVuZHJ1IDxrcmlzaG5hLmNodW5kcnVAb3NzLnF1YWxjb21tLmNvbT4KClJldmlld2VkLWJ5
OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBvc3MucXVhbGNv
bW0uY29tPgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCu
vuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
