Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF326C43219
	for <linux-phy@archiver.kernel.org>; Thu, 10 Nov 2022 07:16:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/nXLw7sbUlTHWgi80pD+d7bosi68t/wo/A2YOJmh0BI=; b=yW5cdFnqItSYEn
	sBeOwMvkgLBCjoqQz9MEtjtckQlIfTASDNU6/iIhVNINVH+AgaI6JNe44cvd0uudEhmLIqYMUhhwn
	l9zwWKjUUtb9tqGfxLnjg1DfhIbhQvBp1My3Haeto39H0a7ggncz+CBByPKURjKRbJKFWlVVyuZej
	Eiz4ws3OToIvVKw9Q/P7crq8dd0JCl50EJQnNoyct06GbQLIQmkDmicvZdehMH3NhVgnlM4hD0ldG
	meYcAgB7k9+YCIHgNi1TOAdG7v+mvulTjvfnuG5EK6KH7LVfjv944UPDr8i08i/V101v+0jU1YfDt
	yPjVk+dAHO5SpdwJ7WpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot1n9-003klB-D7; Thu, 10 Nov 2022 07:16:03 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot1n6-003kkI-LY
	for linux-phy@lists.infradead.org; Thu, 10 Nov 2022 07:16:01 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 230C1B82089;
	Thu, 10 Nov 2022 07:15:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 41228C433C1;
	Thu, 10 Nov 2022 07:15:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668064557;
	bh=zkEbitGh6NuYdSKumNuvy2niopfYizRVWE/5Z5xVl1U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dSgZ/lGN4y30dhemGiIjrjRTiFDJhKGw0dZ+XODNdI5UmHUgWpj9lmTKq/yfJHUCn
	 po1o/W0JJghhEOaAMkra8cQWYHe1sobakzIoDp6P8ons0loJ5nPlZvc3OdB4DAQUQN
	 jeo4uLSzeQi3nPGWlMkQbEmuaBYYJ8pwkoM1k97Qe4NzkSiCFxd1rjEPauY3arsJZq
	 Mcvp1tU+KtBR4iAmuT4t0gqmIe3rKKJb4FpoVwK/c0uClJ0udGtgRRYi7zrgXbv2OW
	 zLHAjYacQnn7n2OiEY0/Il/JSEKmgWnXIQUBuz21qcHLOmdXz9trVg/M+h8pLLJOHP
	 D5kDtgtbtkIlA==
Date: Thu, 10 Nov 2022 12:45:53 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: andersson@kernel.org, dmitry.baryshkov@linaro.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] phy: qcom-qmp-pcie: Fix high latency with 4x2 PHY
 when ASPM is enabled
Message-ID: <Y2ylKQvPhLEyRusv@matsya>
References: <20221102081835.41892-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221102081835.41892-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221109_231600_866281_0EFC5632 
X-CRM114-Status: UNSURE (   7.97  )
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

On 02-11-22, 13:48, Manivannan Sadhasivam wrote:
> The PCIe QMP 4x2 RC PHY generates high latency when ASPM is enabled. This
> seem to be fixed by clearing the QPHY_V5_20_PCS_PCIE_PRESET_P10_POST
> register of the pcs_misc register space.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
