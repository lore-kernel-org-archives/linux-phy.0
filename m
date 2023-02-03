Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD214C05027
	for <linux-phy@archiver.kernel.org>; Fri,  3 Feb 2023 13:51:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PcX4PiOj/umxEsk2tiMrIzlB5IZV9pULnBu19mnNje4=; b=PHH2JWU/BMxq0n
	6tdW4Jzp79WE96TE6WlvnLylRCdE/EhjFTCm+NlLf+bVXywoP1cohtpVXP0zKizL4g88fmr0q2SE3
	ShHf7XYUkQn5Hjd04ArJLs+wS8S2RXZVRAuEDiHMg2H2XW3AcQNvsg9kSVxUSzSw4u2rm5FhJ17Be
	rmTQq6ZXoKxqfQfcfzUD3BnNSWSTzCN2myOKyfXdRDcwKJdDZwRY6Ch0QS7G8PX5dcEiXYjlUD5Mq
	tg0pnF5VUxf90ChuyOOtXAlFr38tC1ElWrS7Eagdw92UgvkoCSMve0JauCjfL2Cy5Msr6PTLfbQNl
	iL8wgh6NlAnp/gsLz96w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNwT7-0029hg-7J; Fri, 03 Feb 2023 13:51:09 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNwH4-0026DV-VW; Fri, 03 Feb 2023 13:38:44 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 57D9261ED2;
	Fri,  3 Feb 2023 13:38:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2CED9C433D2;
	Fri,  3 Feb 2023 13:38:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675431521;
	bh=BqaOPD7dtW+RNHVp4mgKLBVQpvvG60YANreOlI0gJxg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=evKiwZSWWHq/qBOOG0ag4W1iOjACpWe36QHwp8aizUTnsxnR1+MetWq3qDf6/cAmF
	 BIlDSLxJj27+Xx/j14ggrXENJ10kGmiFxOiYPZOEWv73XL7lckK4lttRXbx6yLmWBU
	 hwSHfI6XPrp/SXz7v5LixhNp5bNv7jA3KZVKzxz5UjWAyCbulnutb5+7AncRuo8dnm
	 PBIpi+tYEVPJeO++fjxN5t7q6H6nQhJmgFB1qRwjl+fi6owKGM8p0DMDiZecebCt7W
	 0J562Lda99U9aC85GuwtRUbyKcvR6CLzA9kyItTEbbF0L8UUDrcEINWEpzBrsOc6lN
	 odKbmnsDv6uRw==
Date: Fri, 3 Feb 2023 19:08:37 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, replicant@osuosl.org,
	phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
	Martin =?iso-8859-1?Q?J=FCcker?= <martin.juecker@gmail.com>,
	Henrik Grimler <henrik@grimler.se>,
	Chanwoo Choi <cw00.choi@samsung.com>
Subject: Re: [PATCH 2/8] dt-bindings: phy: samsung,dp-video-phy: deprecate
 syscon phandle
Message-ID: <Y90OXce5NRgt8HWn@matsya>
References: <20230127194057.186458-1-krzysztof.kozlowski@linaro.org>
 <20230127194057.186458-3-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230127194057.186458-3-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230203_053843_099983_9EBCCC75 
X-CRM114-Status: UNSURE (   7.27  )
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

On 27-01-23, 20:40, Krzysztof Kozlowski wrote:
> The DisplayPort phy is actually part of the Power Management Unit system
> controller, thus it should be its child, instead of sibling node with
> syscon phandle.

Acked-By: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
