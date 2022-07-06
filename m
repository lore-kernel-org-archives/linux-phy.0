Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23F87C43334
	for <linux-phy@archiver.kernel.org>; Wed,  6 Jul 2022 06:06:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ccb/XiL4O4XsYaTJyur9QJDLSuNWV8UbeLbrrm5NMKc=; b=Q8kzKBCStjtVOh
	ekVzYeKm9Odllj0bzQ7+Yf2tf0TfDo+xCn8CxgtHuqDsvpj9Yp+9VmCrATt8pl5vIHJ3UoBy3JQq/
	PdWFRW9yfb4QhWWW1GOjAnW8SKlO/MMPuPjYLsYHdUwgoThxjJYhAZs9NKGsu1uKDViBSRx3lTBVi
	cHu3EE/6jYhLQcfUz9Vv+4TO8XE4iP1dLlpubNWDRM1Y/gyDNjyTQOTE4oQc1L1QfXqnxGpBS2+TN
	azvZPnm6ZKoIp32c0h8gIkEJIucw9j/rwllYcHTfLSCcgCLNsRGONjFJuWCafAUiwU82BQ5sLUmEz
	BYo/WK+8XlvJz1fkGdLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8yAy-006XEG-EX; Wed, 06 Jul 2022 06:06:16 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8yAw-006XBi-6N
	for linux-phy@lists.infradead.org; Wed, 06 Jul 2022 06:06:15 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id AA2A2B81A61;
	Wed,  6 Jul 2022 06:06:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5985AC3411C;
	Wed,  6 Jul 2022 06:06:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657087571;
	bh=jvOZq722r7H/JpYeXiuNKx8BxoPr4CD4sprkmcgtsHU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UBISZFg4Ge7GQRk6VQfVTF0yeKRCowRMpeEhSqfcgqOTkWKECP5WgnXEXnrA+Wa9R
	 eeFmxIOC0Qxgez3KYCybtXaG4ryLGcV+6uNrYabuz6gsK0ZN+TndJmRB5CLbqG8+ai
	 Aj3hvh/M9zGBWZl1H2Hh3mk07Ct6GjGlhxjF+bKEfiy47H6/OJKPw8vVeOOfV9soWc
	 ezvm5XBPimU5RauYA17Htscla7WBVZ+/F13srgoW7V0YtPQ08z3OvAd5kyrov6RUmO
	 wHYOGcdVtnhy8BdxrIydQdsdKoWLlThm3hG619QsiTgjsCYmUoA0l0G1X6yJxdodAd
	 nu7FQDLJ6MNiQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1o8yAu-0004bk-7I; Wed, 06 Jul 2022 08:06:12 +0200
Date: Wed, 6 Jul 2022 08:06:12 +0200
From: Johan Hovold <johan@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 17/43] dt-bindings: phy: qcom,qmp-pcie: add missing child
 node schema
Message-ID: <YsUmVBXWPojz0woT@hovoldconsulting.com>
References: <20220705094239.17174-1-johan+linaro@kernel.org>
 <20220705094239.17174-18-johan+linaro@kernel.org>
 <4bc79a1c-66b1-225d-5026-ddf3e6f7d22c@linaro.org>
 <YsQlzr6nyvz761Kz@hovoldconsulting.com>
 <963917cf-0f9d-600f-564e-9e687270b1af@linaro.org>
 <YsQqcKZAs1xAB9+S@hovoldconsulting.com>
 <cf61b071-aa31-6f67-07f1-4f15e0fe7511@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cf61b071-aa31-6f67-07f1-4f15e0fe7511@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_230614_430290_8604838F 
X-CRM114-Status: GOOD (  17.62  )
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

On Tue, Jul 05, 2022 at 08:21:12PM +0200, Krzysztof Kozlowski wrote:
> On 05/07/2022 14:11, Johan Hovold wrote:

> > Ok, so you want to flatten this by repeating also the register
> > descriptions?
> > 
> > That wouldn't hurt readability as much, but doing so would be more error
> > prone as it's easy to miss adding a new compatible in every group of
> > conditionals and there's no else clause to catch the mistake.
> > 
> > Right know the logic is
> > 
> > 	if dual-lane
> > 		items = 6
> > 	else
> > 		items = 3 or 4
> > 		if single-lane-exception
> > 			items = 3
> > 		else
> > 			items = 4
> > 
> > Flattening this gives
> > 
> > 	if dual-lane
> > 		items = 6
> > 	if single-lane-normal
> > 		items = 4
> > 	if single-lane-exception
> > 		items = 3
> > 
> > Which means that every compatible must now be listed in one of the
> > conditionals.
> 
> Yes, because it's explicit and easy to read. Handling compatibles in
> 'else' makes it opposite - one cannot use grep and cannot easily find
> what is actually covered by maxItems:4 (you need to check all 7
> compatibles to find what is not covered here).

I'll go with that then.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
