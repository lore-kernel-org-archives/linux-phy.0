Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E76D8C43458
	for <linux-phy@archiver.kernel.org>; Wed,  1 Jul 2026 22:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fr5FvEhexKOaB/9v3qHblJToM28t1GOjDjdxVtQ6RTE=; b=f3ZoIZfJcsB19I
	RovgKW8b2u2FcZ85XDUUnV/1Qu88FwfQT8UybgcoO1ySzfjT20mZ21uL2hi8CAD9RseVmnf0p+uYe
	A2Um7ehqrB9TI/W7KPax000YCfTs3Twso87mDEAOK3srhRtjITQzYG0nDGVK5LzyHqyovb6c/yE2A
	PsVjFyjSqPLdvgAbXmk+so+cyN40dsCkO9JaHLK+nqHsK6UjSLSb02y9RG+6SrWdIc9AhfyroRORW
	tvVHycoFB2BBddId1VZBGrq+y4NkI3rqwvMhEloTPpJa8BWPZhSLouJT1s78Cluztc85p0gN7VOOV
	Mqz1rKBYRMbqG/qpXdSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wf3pa-00000003803-1HPc;
	Wed, 01 Jul 2026 22:54:58 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wf3pY-000000037zq-1C46
	for linux-phy@lists.infradead.org;
	Wed, 01 Jul 2026 22:54:56 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 6C0986001D;
	Wed,  1 Jul 2026 22:54:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 969221F000E9;
	Wed,  1 Jul 2026 22:54:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782946495;
	bh=MVGGFAevLvBp9L77WVpeD2HDmtuvw1sCo9+wekarTRc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=LUg5l2oPGoHK0R5ooHKHBGPlb3cgWORlAtAZAdsZEDVVYH5aj4rxRJkLCAgqVsxK/
	 1XBEz0D3RzZZQ/xbEouvFnc+mml0c8f7ca1ZcZDCHiksc+cY/hjwUaGQYiShAG5aTF
	 oOVflm3gwYbA1uSxxihGlqwh/UUuihrW3sELSjBLyAWTMsG9/Ll4pW+pzmzAJXNWpc
	 VEAdWhnY8AUZFtUiBAJQGDzuP7Dhn6O53yaNnPPRoF84XrBretBu/HAL4guOP/oM//
	 yG2nfa2nSN3osttnHgQjQo2kKw/T7JUoGpSzRbGq5AY1KdSFD/yLkFvpcgGZBQbjqg
	 /OsQ0hvHbtv7Q==
Message-ID: <7c564df8-5c5a-4b43-806e-5e017e5c51db@kernel.org>
Date: Wed, 1 Jul 2026 23:54:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260523-x1e-csi2-phy-v8-0-a85668459521@linaro.org>
 <20260523-x1e-csi2-phy-v8-1-a85668459521@linaro.org>
 <rpnNMsR9GY8gbynzeBO8Zm61JAOq3ubt6sp0x3WDPPwkMAJzlcofECD1kabN-IUoK6sSwP5P6l28UIZLFCOpjQ==@protonmail.internalid>
 <dda32577-04e0-4507-acaf-a5694f4f31b3@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bod@kernel.org>
In-Reply-To: <dda32577-04e0-4507-acaf-a5694f4f31b3@linaro.org>
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

On 02/06/2026 22:59, Vladimir Zapolskiy wrote:
>> +
>> +  "#phy-cells":
>> +    const: 1
>> +    description:
>> +      The single cell specifies the PHY operating mode.
> #phy-cells should be 0, because the PHY operating mode is well defined
> by 'bus-type' property of an endpoint on the sensor side, the opposite
> side of CAMSS/CSID as a CSIPHY "consumer" should not dictate the PHY type.

So going through the list I don't believe this is correct.

Inserting bus-type into the PHY layer is borrowing from one domain 
linux-media and pushing the concept into PHYs.

phy-cells = 1 with CPHY/DPHY specified in the consumer, as was Rob's 
suggestion will specify the mode.

Then to understand if we are in regular or combo mode, we parse the 
ports/endspoints in the PHY node as we've agreed already.

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
