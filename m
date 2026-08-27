Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F906C61DB9
	for <linux-phy@archiver.kernel.org>; Thu, 27 Aug 2026 17:01:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5WGA2iWtWlzMCLlzRY7zQIlfAS8nHNNpaLWqYhOLiIo=; b=HhgsFP+Al36prJ
	JRamVUykCYn6UWRFah7CAvrdIDrwg+nnKgkZPaAixT8oWNWDiONVpWq/zuB2nE3Qc8p+l7p3bzk8b
	NnCoV3TgeVT1C4ZY3xbDshQNfm2o6GSH9VEqplLiNbJjXOOlh2tSUykJ0MkXTucjHjOD+J9ZxtE64
	4qmKTYiBMFifNY4lR3xhKy6Ms1w6LB0BT91nHViqUtaB/b2XXt/E1cnhMeRgPppttKzXmSI1BhGt0
	FJEBK5BTZgBrQ5Acc4crciYqmdKEpXWtVISz1sgS0O4jPrGHcjbSO8434D+1qlfICQHjino//GJEj
	D8gX6JeDUwiqV4L7/qiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzdTW-00000004Pxo-3GVr;
	Thu, 27 Aug 2026 17:01:15 +0000
Received: from mx.nabladev.com ([178.251.229.89])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzdTE-00000004PsZ-3McP;
	Thu, 27 Aug 2026 17:00:58 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id BD7BC11D05A;
	Thu, 27 Aug 2026 19:00:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nabladev.com;
	s=dkim; t=1787850050;
	h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=rPYi6o+LeNrSB5Cku6LECS3A/JbV3lwzwlsRbFujYSo=;
	b=HfsCtKtM0Odc8d0h8jjGdiLRvEKuf8sfG7yZb9lnTrzyupAFYcU1dc1Pzb/+vIDE15WqbO
	pxiXWZ6FCZpO+JMf4T5PjsZDHKu4aqcE8e9/CBg5Jtf11RnwCZzDvYK58aKyMYqOYApRpC
	sSiAqz6PtVgCgJi+wB9iavc+FIpytkWJWw7TvjwpTuE3FHMnjp6JErsDm+WHske3gNQOw8
	SQZZza2kErv4KfUUwPc2/0JO/syBicC0KHZZQcvrj0Dx4xSmhsNZz8B4BbvS2xUX+W5ZWt
	ByOsH+H1HqKDUT3jnjAMeZKVnHXN7c8L8Quacx/XM1YFys8jCgEODKYzN2QBgw==
Message-ID: <9b197208-dbb4-44dd-b0c0-b4dcaa57c403@nabladev.com>
Date: Thu, 27 Aug 2026 17:04:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 7/9] dt-bindings: arm: stm32: Switch
 st,stm32mp23/25-syscfg into simple-mfd
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-usb@vger.kernel.org, fabrice.gasnier@foss.st.com,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Christian Bruel <christian.bruel@foss.st.com>,
 Conor Dooley <conor+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Pankaj Dev <pankaj.dev@st.com>,
 Rahul Kumar <rahul.kumar05@st.com>, Rob Herring <robh@kernel.org>,
 Rosen Penev <rosenp@gmail.com>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
 Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org,
 kernel@dh-electronics.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com
References: <20260822074816.548662-1-marex@nabladev.com>
 <20260822074816.548662-8-marex@nabladev.com>
 <20260827-skilled-optimal-shellfish-c548e5@quoll>
Content-Language: en-US
From: Marek Vasut <marex@nabladev.com>
In-Reply-To: <20260827-skilled-optimal-shellfish-c548e5@quoll>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260827_100057_197727_6CE0328B 
X-CRM114-Status: GOOD (  13.57  )
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

On 8/27/26 3:07 PM, Krzysztof Kozlowski wrote:
> On Sat, Aug 22, 2026 at 09:46:40AM +0200, Marek Vasut wrote:
>> The st,stm32mp23-syscfg and st,stm32mp25-syscfg can have subnodes, which
>> represent the USB 2.0 FEMTO-PHY. Turn the syscfg into "simple-mfd" so the
>> PHYs would get populated by the OS.
> 
> Sashiko comment is partially valid - you change the ABI in incompatible
> way, by requiring a new compatible. Commit msg should briefly explain
> the impact, e.g. that there is no impact because phy was not
> implemented by Linux and was not described in the binding.
> 
> OTOH, adding simple-mfd means children have no dependency on the parent,
> so this should be considered or even explicitly mentioned in commit msg
> (parent clock is irrelevant to child, right?)
> 
> OTOH2, you have now patchset dependency which is nowwhere explained.
> Merging constraints are the most important part of cover letter so must
> be clearly stated. IMO, should be stated also here, because many
> maintainers do not read cover letters. Or just decouple dependencies
> with using 'compatibles' pattern (see Qualcomm msm/mdss display
> bindings).
I wonder, wouldn't it be better to write a driver which binds to 
st,stm32mp25-syscfg , handles the SYSCFG clock, and does some 
of_platform_populate() to bring up the PHYs (DT subnodes) ?

I think that would resolve the ABI break problem, since we wouldn't need 
the simple-mfd compatible anymore. And it would also correctly handle 
the SYSCFG clock.

What do you think ?

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
