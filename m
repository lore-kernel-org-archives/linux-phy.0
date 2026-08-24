Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDBA1C61DB4
	for <linux-phy@archiver.kernel.org>; Tue, 25 Aug 2026 09:47:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CDDBo1kgqavZmkwCDyAossISNz8nWD72lO8KIf0ZS10=; b=VIQo7RuYD/uVsy
	8GhEFeDOM30qtEzkVOL8NSLm/3XEYN4lXLo1vo3Bcm0rWjGEw3NB9X04ZrNM6b9v3LAlxfpatewmq
	IIc52TFTEKBGpogL+y5HjeCZem0KVFubASwAx8iHI2nxLMTspg3yVHN59Lwf2WbhlVlrwJd8sOyYu
	iKOhVogHZFeeY4lbdqB+p6FLRSKo/aNEbeE0woxyvge+LG0n/Sv+x1t9JK8OAh2ol/8Prl7bAZuzs
	RmlmmEvNq4i2DKCXFYokOxqZeg/nyHQpotvmlS1/0goiFCBy3wX9E6V/PY0K0SJzLPNnR5FJc1h/n
	oFIEnmONFhi6WIz0zm5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wynl5-00000000WUW-21yR;
	Tue, 25 Aug 2026 09:47:55 +0000
Received: from mx.nabladev.com ([2a00:f820:417:0:178:251:229:89])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wynl2-00000000WTA-42MN;
	Tue, 25 Aug 2026 09:47:54 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 879F911CBA7;
	Tue, 25 Aug 2026 11:47:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nabladev.com;
	s=dkim; t=1787651259;
	h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=qWzWWNS42exc7ZHN0500c9MV5vEAEMaWiWpVREU3tJ0=;
	b=KA41FsLojocrPYcAPQ5ThUy7TmZo41kwn3HTeEpM3yq9L9aybF5GosZV+tHWUWNxBGFKzw
	TpJ0BPMsvZ+3AO62YXUCEXwEZipbVfJXnFIvwuexTFpsNpU8VgyLRhSt8idP/V2ySY9FLG
	xldTKRU2LSnYLrqKot9/CtG2GkQED4xj3mETtSFq920LoQztVtUA/tym0aWimuSS7UJeSh
	MPK29nwryWqkv14eupeLr4h8ORuKk7v4lZ9kXGCrb3Ip/sgd7DF4OUY3tswdTLNVgffWmw
	3d7qxqAVB++fBBBu8lrxpqjL19gYcl7irm1t8nuyMZpe/g7uio7CQlBO2HBozw==
Message-ID: <ec43c68d-7f68-4ad0-9bfc-2b6dc0c5ec14@nabladev.com>
Date: Mon, 24 Aug 2026 16:39:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 8/9] arm64: dts: st: Add USB nodes on stm32mp231
To: Fabrice Gasnier <fabrice.gasnier@foss.st.com>, linux-usb@vger.kernel.org
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Francois Choleau <francois.choleau@st.com>,
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
 <20260822074816.548662-9-marex@nabladev.com>
 <a77b459f-5b08-453a-a247-c320617beee6@foss.st.com>
Content-Language: en-US
From: Marek Vasut <marex@nabladev.com>
In-Reply-To: <a77b459f-5b08-453a-a247-c320617beee6@foss.st.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260825_024753_222925_C04C8DE2 
X-CRM114-Status: UNSURE (   7.15  )
X-CRM114-Notice: Please train this message.
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

On 8/24/26 3:18 PM, Fabrice Gasnier wrote:

[...]

>>   		syscfg: syscon@44230000 {
>> -			compatible = "st,stm32mp23-syscfg", "syscon";
>> +			compatible = "st,stm32mp23-syscfg", "syscon", "simple-mfd";
>>   			reg = <0x44230000 0x10000>;
>>   			#clock-cells = <0>;
>> +			#address-cells = <1>;
>> +			#size-cells = <1>;
>> +
>> +			usb2_phy1: phy@2400 {
>> +				compatible = "st,stm32mp25-usb2phy1";
>> +				reg = <0x2400 0x24>;
> 
> Hello Marek,

Hello Fabrice,

> The size 0x24, covers the PHY control, trimming and vbus control logic
> for PHY1 (USBH). So this allows to later extend the driver for that, right ?

Correct.

>> +				#phy-cells = <0>;
>> +				#clock-cells = <1>;
>> +				clocks = <&rcc CK_KER_USB2PHY1>;
>> +				resets = <&rcc USB2PHY1_R>;
>> +				status = "disabled";
>> +			};
>> +
>> +			usb2_phy2: phy@2800 {
>> +				compatible = "st,stm32mp25-usb2phy2";
>> +				reg = <0x2800 0xc>;
> 
> Then here, I guess the size should cover also trimming regs ? e.g. 0x10 ?
> 				reg = <0x2800 0x10>;
Uh, yes, fixed in V4, thanks !

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
