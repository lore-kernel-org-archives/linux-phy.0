Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98B45FC5918
	for <linux-phy@archiver.kernel.org>; Thu, 26 Feb 2026 09:24:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KV59NJn+A17hfx3Q7nUDveYILGeQy9bx39PSGiwb6mM=; b=TwZb/OtcC/stLt
	PsBB2OUNuo+j1sR58PsKljz0/g5w7DJdnMTCgL0c/WNQ+6qEFY9/+lXv6Nlc0XKFcQFBOoSd+Vhp+
	zHlUJVTZ6YjIeuhdp+vXbvrv+RWgRoQXc2/m5RgH6w7QIi4jQNG1rh14KUpdBhmXJEZMrY3egeWRT
	c4SwMHtFZqcaYlwaBEQYQ9cfbk3weQib4YmG5sTO4JnnLZR6DIE0feH7J3yT9aZv/QQ/4cAbQixuk
	7oukAxxYD7V/OOyZQe6DKanjIHP5p7DIAntLSQ/O1H+56f/BmHGBObpzT7+1A8WeUlCoCEY683jIb
	pEuBWJx3YTSqC8WVIDtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvXc3-00000005nXZ-0hGj;
	Thu, 26 Feb 2026 09:24:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvXc0-00000005nVi-3t6k
	for linux-phy@bombadil.infradead.org;
	Thu, 26 Feb 2026 09:24:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=xFaYvB70HyZk+RWcXbInyVSpLvBq7goT7McNTtcMJP4=; b=owvm3Jdxl0B7sUJz1tL70RPG+w
	x/e+h1hje8xP5eeCCn/UId/Xm4j1C9+Pyahopn/0Pv/kpsYR8I/qAQpvG2fHuhIMYfnKpWK0UbqdJ
	3fPZSbDfHOBzkr17THjUCqNnkM1GCJkWSckkhnhZtaSQDerSgAkiPU06CrCKkUslk+ks5JoTLrNKZ
	iOTNlO99YG9BbXtLsLJ3696xYuxRVy1mxizBNJz8whU83zBSVlbmh2SLD37I+LGaFR1UhUAXe9qzb
	zdFWylYapvXLAmM7Hnle5iP8d1tyS743P2UZBwx1CviUOcKzZNc1e7ugW9Uu/UhSae5vaew9jNmrb
	eUsd2vng==;
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvXbx-0000000AbdP-1BUp
	for linux-phy@lists.infradead.org;
	Thu, 26 Feb 2026 09:24:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 12A0541874;
	Thu, 26 Feb 2026 09:24:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1CCEBC2BC87;
	Thu, 26 Feb 2026 09:24:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772097882;
	bh=+HlDIfQTFe7JijL+y8VhEYmtIk+2cPoizKDQH8OiFYE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=KqG7DblzGOe0N5tVI96EgLFanIh7ZNJk0mtkhSiIRTkfm3Y5JfVXWohQu6yeXs3Yj
	 qZ7aiH6ABrn1FUIgdyhRgJoOSxkMd5ItVrR1jVotOPjb8n2jdOEaRPazAUQ05aRD9o
	 ntzVKbZu8TTJYmSiI7Ba/q4dox9pBszZxSVLtAuXo5A1VoDEnCoRNCwTf4Hc+9m1GF
	 ekOQj3v8pyJ5wY7eSUwuTdh9TJdDLLQRQILZJDiouaUEfMw496BVSMU2/Q6SbHzD2T
	 vZZ87qIPugS+3XVpC1W1C+2b0pOz7bwpxfmXaSjLoDO+iYIpLJtk3Lq9O9OTNg1ngx
	 3MAfAjhRW+nvQ==
Message-ID: <2665866f-e967-40df-a25c-1492cb707291@kernel.org>
Date: Thu, 26 Feb 2026 09:24:34 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260225-x1e-csi2-phy-v2-0-7756edb67ea9@linaro.org>
 <20260225-x1e-csi2-phy-v2-1-7756edb67ea9@linaro.org>
 <COPUC-lLe0iAFFCqJTMGY3idnIh0jPeFqrYbv2L3rajjyS_x6XxJNzmzu3iXcaAGJI0aNgEho1qlYd-PHxU2jw==@protonmail.internalid>
 <20260226-carmine-cockle-of-prosperity-b6baf2@quoll>
From: Bryan O'Donoghue <bod@kernel.org>
Content-Language: en-US
In-Reply-To: <20260226-carmine-cockle-of-prosperity-b6baf2@quoll>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260226_092445_668239_B972C363 
X-CRM114-Status: GOOD (  13.25  )
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

On 26/02/2026 07:37, Krzysztof Kozlowski wrote:
> On Wed, Feb 25, 2026 at 02:59:12PM +0000, Bryan O'Donoghue wrote:
>> Add a base schema initially compatible with x1e80100 to describe MIPI CSI2
>> PHY devices.
>>
>> The hardware can support both C-PHY and D-PHY modes. The CSIPHY devices
>> have their own pinouts on the SoC as well as their own individual voltage
>> rails.
>>
>> The need to model voltage rails on a per-PHY basis leads us to define
>> CSIPHY devices as individual nodes.
>>
>> Two nice outcomes in terms of schema and DT arise from this change.
>>
>> 1. The ability to define on a per-PHY basis voltage rails.
>> 2. The ability to require those voltage.
>>
>> We have had a complete bodge upstream for this where a single set of
>> voltage rail for all CSIPHYs has been buried inside of CAMSS.
>>
>> Much like the I2C bus which is dedicated to Camera sensors - the CCI bus in
>> CAMSS parlance, the CSIPHY devices should be individually modelled.
>>
>> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> 
> The entire point of separate CSI PHY was to change new devices. That's
> why I was postponing TWO new bindings. There is little point in change
> existing bindings, it's just a lot of work with little benefit.

Since the x1e dtsi isn't upstream yet though.

> And the beauty is that you did not even had to do the work yourself,
> because the contributors of new device would need to come with CSI PHY
> split.
I mean I'm happy to do that work myself, idle hands make the Devil's work.

?

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
