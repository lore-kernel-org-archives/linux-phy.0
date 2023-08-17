Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 135CEC27C7A
	for <linux-phy@archiver.kernel.org>; Thu, 17 Aug 2023 09:56:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BKGQoFrWPAyz1DfjpbHHkDiBxa/2I/3/IJXCJZ531sU=; b=vi/S38xZ2u5ZdZ
	QVgNbKkThK+tcfi7I09+A7hVV4E1gfrxwCTM7yhkCLyz7jovbi1I6vbPP7Pou1hlWnwK1DcykqpBk
	tVaOnZuZCbpBHqtxTnIkw4kbO/H4YCuWG7IBUO/sAzQyo3k9uKdpBwzDkBk584PMobG9QKwlCI5hO
	UHdavrAUKKEeY18AaBe4Wdep8yY+Fg/3SL1FXI9w6smWycqFkxyteFscklfbabO8MkmN4AYtkNWRl
	qv1fs4dTyDT6T5EooXC/bnVB4dArXZEhO76yP9w+vzdbDGlZLC/7Ryo9EPilHVFJI6kd0HgYNy1eS
	okVXQTpZlC/+4tWZQQmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWZjU-005zBa-2X;
	Thu, 17 Aug 2023 09:56:00 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWZjH-005z6Z-1s;
	Thu, 17 Aug 2023 09:55:48 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1532161482;
	Thu, 17 Aug 2023 09:55:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8575FC433C8;
	Thu, 17 Aug 2023 09:55:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692266146;
	bh=Fh06Vul6kUtxm5v0Al+KBxIVTAQZE1h73BsYg77XvSI=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=MmkTMe92HkQ0gIn5FTvpvHdU84rFFSxkcdmdMMUsP2tbBr8uPxOePLHCmb+VGYCV4
	 wIQNn7fODQQhTVYIsBtWnZHcEBZf4jjraQbpU59omdO+Uc33DTYoYLRUin29dEk17q
	 U64rub7TPb296lPgei3QyD/qPrkilRd89rjtt61+1z/aRdwAwSmyOS+u7WBvhwlTiB
	 zZjmL1t+fTpY8uM+TZLIndsmlineFkfGWzy0FoPn9X0Gi5DLdy5jG1X/WGs9IYqPZr
	 90BKrI5DZSMELVFOV0PX5+zQW2/ugOgz1Y9nlLzJpxW9K1wVjDV7rK5S6X6MP2xAQj
	 Fso+ZsvZmWNIg==
From: Vinod Koul <vkoul@kernel.org>
To: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
 conor+dt@kernel.org, catalin.marinas@arm.com, will@kernel.org, 
 p.zabel@pengutronix.de, arnd@arndb.de, geert+renesas@glider.be, 
 nfraprado@collabora.com, rafal@milecki.pl, peng.fan@nxp.com, 
 quic_srichara@quicinc.com, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Varadarajan Narayanan <quic_varada@quicinc.com>
In-Reply-To: <cover.1691999761.git.quic_varada@quicinc.com>
References: <cover.1691999761.git.quic_varada@quicinc.com>
Subject: Re: (subset) [PATCH v8 0/5] Enable IPQ5332 USB2
Message-Id: <169226613917.81413.1200008047604336868.b4-ty@kernel.org>
Date: Thu, 17 Aug 2023 15:25:39 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230817_025547_819107_DAA84EE0 
X-CRM114-Status: GOOD (  10.92  )
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


On Mon, 14 Aug 2023 13:36:00 +0530, Varadarajan Narayanan wrote:
> This patch series adds the relevant phy and controller
> configurations for enabling USB2 on IPQ5332
> 
> v8:
> 	Driver:-
> 		Change commit subject and message per review comments
> 		Don't include of_platform.h
> 		Change struct initialization coding style
> 		GENMASK -> BIT for one of the defines
> v7:
> 	Binding:-
> 		Move 'compatible' to be the first entry
> 		In the example have 'usb-phy' instead of 'usb2-phy'
> 		Add 'Reviewed-by: Krzysztof Kozlowski'
> v6:
> 	Binding and dts:-
> 		Dropped the qcom,dwc3.yaml patch as it has been picked up for linux-next
> 		Add const to compatible, vdd-supply
> 		Move nodes per register address
> 	Driver:-
> 		Add vdd-supply
> 		Cleanup error paths in probe with dev_err_probe
> v5:
> 	Binding and dts:-
> 		Fix email id
> 		Removed 'Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>'
> 		as had to change bindings file to be able to use generic phy instead of
> 		usb-phy
> 
> [...]

Applied, thanks!

[1/5] dt-bindings: phy: qcom,m31: Document qcom,m31 USB phy
      commit: b11f8acb937ed64841eeba22b0f0371ded58bef2
[2/5] phy: qcom: Introduce M31 USB PHY driver
      commit: 9bc2b3b35334aa2742ad3dc4219c001279a97998

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
