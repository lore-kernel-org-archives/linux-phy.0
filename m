Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D87D6CA1017
	for <linux-phy@archiver.kernel.org>; Sun,  7 Sep 2025 19:02:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KfIZ5rI400i3kH7KwspVVpsLTdknTr5029YpUEho8zk=; b=xdpQqDRH4XZUKX
	yj243Bp292WpCFBN4gXlklyi57s9jN7AWmSyEi1p756W19jcW5kqgY7egLWeMyQNe2xA92MHT0Qdd
	mZ0AeVOrYfVeySmLO7YGaLNQGlufdp9mFcu3hk9u8gsR3R+qcL1is3AxZMZoxrtP8nLML3AxPnZYp
	a3QXNPF1Poqcl/JglGGajCBj4n9sltfmTgBfxcce3sUseCWSg6iv+k4cLgQL+a7wJJm4GS/+BhB0/
	Q3NoD0UQfKD2VtsELdJI7lVss3pGf6KVINeidpp8GV2oizGjrYFYq8q2A5CmqjnKcMkxT9La6BayQ
	H42pjkjgqEefEctHQE5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvKf8-0000000CQYG-2Wcp;
	Sun, 07 Sep 2025 19:02:54 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvKew-0000000CQSq-2ZK8;
	Sun, 07 Sep 2025 19:02:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id A237F6020A;
	Sun,  7 Sep 2025 19:02:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 79608C4CEF5;
	Sun,  7 Sep 2025 19:02:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757271761;
	bh=oCLELgIBeep9ZVlxy13VvPQGLOoUE9donTEF1yMVwJ8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=qPghQDwEBlowBEth9fyjp4vjY5wZh04XJFkbFxS85DYfRxVSLTclt0Tm0PbzqVlNX
	 M935vCEYzcsbk4iD6E6BJkMIxuRPGwFpTQGJghxOJ5/zjCrGjecLpDofYagYrA8t56
	 bh2yzv4UA53Zaj1A5kF81C23Nll8suCUaR4U/EHhmtOKptRSeLdswBtR3iqxq9vixk
	 nkATV7LU5KAJrv4DvdjClLWYAqdXkygCO3aHjCXv4nI/fj2xamFy5LE+ghMUy0eO9r
	 zR7TaQXYAXIpjaqiQhBi6L5ilXeIuBrvZqDXOylAv2LCZ7nBkztRas9+ZO6389TevX
	 ep8IsixfMLrMw==
Message-ID: <2b950163-dc2e-4753-b411-5c694d55eafd@kernel.org>
Date: Sun, 7 Sep 2025 21:02:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 20/22] arm64: dts: apple: t8103: Add Apple Type-C PHY
 and dwc3 nodes
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Felipe Balbi <balbi@kernel.org>,
 Janne Grunau <j@jannau.net>, Alyssa Rosenzweig <alyssa@rosenzweig.io>,
 Neal Gompa <neal@gompa.dev>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Frank Li <Frank.Li@nxp.com>,
 Ran Wang <ran.wang_1@nxp.com>, Peter Chen <peter.chen@nxp.com>,
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, asahi@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 Hector Martin <marcan@marcan.st>
References: <20250906-atcphy-6-17-v2-0-52c348623ef6@kernel.org>
 <20250906-atcphy-6-17-v2-20-52c348623ef6@kernel.org>
 <20250907-zippy-auburn-koel-d6da32@kuoka>
Content-Language: en-US
From: Sven Peter <sven@kernel.org>
In-Reply-To: <20250907-zippy-auburn-koel-d6da32@kuoka>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 07.09.25 11:47, Krzysztof Kozlowski wrote:
> On Sat, Sep 06, 2025 at 03:43:33PM +0000, Sven Peter wrote:
>> Add all nodes and connections required to make USB3 work on M1-based
>> Apple machines.
>>
>> Co-developed-by: Hector Martin <marcan@marcan.st>
>> Signed-off-by: Hector Martin <marcan@marcan.st>
>> Signed-off-by: Sven Peter <sven@kernel.org>
>> ---
>>   arch/arm64/boot/dts/apple/t8103-j274.dts  |  12 +++
>>   arch/arm64/boot/dts/apple/t8103-j293.dts  |  12 +++
>>   arch/arm64/boot/dts/apple/t8103-j313.dts  |  12 +++
>>   arch/arm64/boot/dts/apple/t8103-j456.dts  |  12 +++
>>   arch/arm64/boot/dts/apple/t8103-j457.dts  |  12 +++
>>   arch/arm64/boot/dts/apple/t8103-jxxx.dtsi | 137 ++++++++++++++++++++++++++++++
>>   arch/arm64/boot/dts/apple/t8103.dtsi      | 105 +++++++++++++++++++++++
>>   7 files changed, 302 insertions(+)
> 
> Please do not combine DTS patches in patchsets for Greg (e.g. USB). Greg
> expressed that many times, that he takes all or nothing, and DTS cannot
> go via driver branches/trees.

Okay, thanks for the hint. I wasn't aware that he prefers related 
patches that go through a different tree to be split off.


Best,

Sven


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
