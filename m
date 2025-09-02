Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0DCCCA1005
	for <linux-phy@archiver.kernel.org>; Tue,  2 Sep 2025 12:31:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AO/xbRoM9GL3/bMTAWt2Kj/lg4rem+DPh3kLZ0m/Jw0=; b=RH8+dNH2f15NWT
	b5vl6uC87iUjf1NLAbXo+2uHmIIXYSwX841YB7cQx+oJ7+BotLm0ba6KeB0W0fL9jbosx5KT6kp2n
	8Bw60eU+EXM+Ez2bY9k+Kp3syULBAwzR2PeQih+QiT5UoYCoDksoqAcaXD/kH8mzgKBnMmM3x229h
	AOLkUrbgLbtumbXetQnXztgbl+gjQSGnbZPo6ee3j+58BXOgb+aa9XKdlANOC36EGao9GxA26rqa0
	iiqSYeGTcreEQNd47S1p32KIE0GIZFYCDoxnUbAcFJIgGv5mGMlttvWCnGWvv+EVopUKNprYsUeX4
	tesj1gMRymQOnoHNhcZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utQAj-0000000HJ1h-3K2m;
	Tue, 02 Sep 2025 12:31:37 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utO2a-0000000GcHc-09z3;
	Tue, 02 Sep 2025 10:15:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1756808101;
	bh=7r0uYfWtBElvzR2QYMpdph3AQUnSm2BAWZWbcWhwkgI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=HsTeJJPy8nskxOEnWjhWT23hBDAhRZZC8BBmLa9+pYVZHN/1ephldEEputMinatHc
	 8rhjPY/35EFw8KdZww8/CmeWOnDrqoELM4vGKhw0n2+fOwRZnteOQS9b86OEYVSKPh
	 M78G/SargYwFcz8nzA9RJ8OY9FN4DF2bRez1O5t4QsM9/lCXuiyQNUXgu5gGJA8PC0
	 7REujSKJS1o6pu7ugGg32yi3a6MqTYaNf8CnhVgAJYOwjeTA1hJjm9g1QcFYbw8c4Y
	 Hi4xdn2xFl1kfA2MWOPOacriYYoMb/TPJyDY2rOU3zFnGRvXVQFP0fgfGUibMhk5nD
	 gNO1gS409ySuA==
Received: from [IPV6:2a05:1141:1fb:db00:ba27:6983:e3a5:2a47] (unknown [IPv6:2a05:1141:1fb:db00:ba27:6983:e3a5:2a47])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: mriesch)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 251BD17E0456;
	Tue,  2 Sep 2025 12:15:00 +0200 (CEST)
Message-ID: <b0cad1e8-8b02-4039-b1d2-b9056fd51318@collabora.com>
Date: Tue, 2 Sep 2025 12:14:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/7] dt-bindings: phy: rockchip-inno-csi-dphy: add
 rk3588 variant
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Kever Yang <kever.yang@rock-chips.com>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Diederik de Haas <didi.debian@cknow.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Collabora Kernel Team <kernel@collabora.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
References: <20250616-rk3588-csi-dphy-v3-0-a5ccd5f1f438@collabora.com>
 <20250616-rk3588-csi-dphy-v3-3-a5ccd5f1f438@collabora.com>
 <20250902-piquant-secret-moose-06c4b6@kuoka>
Content-Language: en-US
From: Michael Riesch <michael.riesch@collabora.com>
In-Reply-To: <20250902-piquant-secret-moose-06c4b6@kuoka>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_031504_249771_0DFB2DEA 
X-CRM114-Status: GOOD (  20.79  )
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

Hi Krzysztof,

Thanks for your comments.

On 9/2/25 09:55, Krzysztof Kozlowski wrote:
> On Mon, Sep 01, 2025 at 10:47:44PM +0200, Michael Riesch wrote:
>> The Rockchip RK3588 variant of the CSI-2 DPHY features two reset lines.
>> Add the variant and allow for the additional reset.
>>
>> Signed-off-by: Michael Riesch <michael.riesch@collabora.com>
>> ---
>>  .../bindings/phy/rockchip-inno-csi-dphy.yaml       | 50 +++++++++++++++++++++-
>>  1 file changed, 49 insertions(+), 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml b/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml
>> index 9ad72518e6da..e37c9fd74788 100644
>> --- a/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml
>> +++ b/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml
>> @@ -21,6 +21,7 @@ properties:
>>        - rockchip,rk3326-csi-dphy
>>        - rockchip,rk3368-csi-dphy
>>        - rockchip,rk3568-csi-dphy
>> +      - rockchip,rk3588-csi-dphy
>>  
>>    reg:
>>      maxItems: 1
>> @@ -40,11 +41,15 @@ properties:
>>  
>>    resets:
>>      items:
>> -      - description: exclusive PHY reset line
>> +      - description: APB reset line
>> +      - description: PHY reset line
> 
> That's changing the order, before first was the phy....

See reset-names below...

> 
>> +    minItems: 1
>>  
>>    reset-names:
>>      items:
>>        - const: apb
>> +      - const: phy
> 
> Although here first was apb? Quite confusing.

Confusing indeed. IMHO the description "exclusive PHY reset line" is
misleading. In the existing device trees there are hints that this is an
APB related reset. These are only hints, of course, but they are the
best info we have.

I can add a remark that we are fixing the misleading description while
at it.

> 
> Anyway "phy" reset for "phy" is pretty non-informative, please give some
> useful name.

As far as the additional reset is concerned, I do not have any info at
all what it is related to. Therefore, it is hard to give a useful name.
Also, to be frank, I have no intention to haggle around with Rockchip
support to find out a more meaningful name (I tried to do that in the
past, only to find that the time spent on that is almost definitely wasted).

Similar PHY blocks are using "phy" or "pipe" or simply "reset" as names,
so I went for that.

Any suggestions are warmly welcome. "aux"? "reset2"? ...?

Best regards,
Michael

> 
>> +    minItems: 1
> 
> Best regards,
> Krzysztof
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
