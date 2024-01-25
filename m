Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98258C47258
	for <linux-phy@archiver.kernel.org>; Thu, 25 Jan 2024 09:40:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RD8o3MbwxCmNcQdo31DRqZ3OmcvZHKyh9juHTnVrpIs=; b=ZhoICLjBRo9zRu
	o5HBz4IWzkZunkQTMI8pAyitGDooyeMAvpMUBRdZSrLIhSaE3Rjw44Wd0F7AFqu7M365XeNCz5QXv
	D6C75rZ3U9bwyaMspOuBpoHX3padZ9jTmi96cWlCeJrdu4wSXAi+XsNvdNTP7tIEBEUFdRqmdwFPK
	eBa5vfo0hbWTj1KS2/yjammsZDPBFjCPVOg1m9S2i43hkoaV/j6fNCGzkBsNgCWZFCo2YTI2KyEw2
	WkcfptyoEZBsAWSd/ZBrZdLVv42buyCP6lHV5dXjHsEWtSiR4Qihj/PQTXQMZGcJj0Bk6pwoWomIG
	JBUZiD36cWxvQ2diismA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSwDQ-007ayh-0U;
	Thu, 25 Jan 2024 09:40:08 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSwDJ-007av1-2T;
	Thu, 25 Jan 2024 09:40:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1706175594;
	bh=LHVp2Aq1cKc1dUF9nEIRvfSxerS4jkPtOKuHQWo2Y4U=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=HNmTjZM+cfx0ARK433VvR4AuJnBRyXEw1t7MXW/7qvt8fNu48UCHv4cGpps2Qfcbk
	 NGgtbIaDvr/RhskarosTfvZSg14zgPUZMG7XDzzbLas/ExbbsCvwvImusFlzByYYzN
	 aVqYqvgloem1PAXShyRctp6AR5WHU81qFV2b62goE7KJX115atg9Z0jmiDGNIwQme9
	 sNNf+Hh0/LwbOSI8lHzCHV9urNkt8yCSyIQBblPKFyDOfqpdZUeeGCFuhfu60QRhCn
	 uR85MzEx4+KRNHeOJ2tV3S25GhjmP/vrJ2nmfkE29b/fBzAnO0AzTePS8J4CJvcAHS
	 q8KxPCEnHllqA==
Received: from [100.115.223.179] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 9F4D937820BC;
	Thu, 25 Jan 2024 09:39:53 +0000 (UTC)
Message-ID: <4a68ff4b-fafc-4d51-91c3-304b01562945@collabora.com>
Date: Thu, 25 Jan 2024 11:39:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] dt-bindings: phy: Add Rockchip HDMI/DP Combo PHY
 schema
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Philipp Zabel <p.zabel@pengutronix.de>, Johan Jonker <jbx6244@gmail.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Andy Yan <andy.yan@rock-chips.com>,
 Algea Cao <algea.cao@rock-chips.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20240119193806.1030214-1-cristian.ciocaltea@collabora.com>
 <20240119193806.1030214-3-cristian.ciocaltea@collabora.com>
 <18f66108-98e7-49b3-b362-880121438fc6@linaro.org>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <18f66108-98e7-49b3-b362-880121438fc6@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240125_014003_182634_9311B9A4 
X-CRM114-Status: UNSURE (   9.17  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 1/25/24 11:11, Krzysztof Kozlowski wrote:
> On 19/01/2024 20:38, Cristian Ciocaltea wrote:
>> +    soc {
>> +      #address-cells = <2>;
>> +      #size-cells = <2>;
>> +
>> +      hdptxphy_grf: syscon@fd5e0000 {
>> +        compatible = "rockchip,rk3588-hdptxphy-grf", "syscon";
>> +        reg = <0x0 0xfd5e0000 0x0 0x100>;
>> +      };
> 
> Drop node, not part of this binding.
> 
>> +
>> +      hdptxphy: phy@fed60000 {
> 
> Drop label.
> 
>> +        compatible = "rockchip,rk3588-hdptx-phy";
>> +        reg = <0x0 0xfed60000 0x0 0x2000>;
>> +        clocks = <&cru CLK_USB2PHY_HDPTXRXPHY_REF>, <&cru PCLK_HDPTX0>;
>> +        clock-names = "ref", "apb";
> 
> With these two changes:
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Will do, thanks for the review!

Regards,
Cristian

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
