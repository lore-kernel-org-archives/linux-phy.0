Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1AB92C32793
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jan 2023 17:25:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nkCYBrf63bIMQW9mLo3bA+dNuRAhrFvkw/jEvwS6Yn0=; b=rWgsrsZeeDqOLa
	uW3WUJ3UcZVBXx/cdhdoMLAqUAeyA63HqwFWZ70tVOZ1YfLxLoFYbDAhus4dKLqgPQ1OsBR8ZSbLX
	YGpFBfQ+1XROnYLUTfTNkyi8CAcPb86O7C8+O9AQsLuxJVXFciLuFEzvYVcggny+VQ/Q/Kc470h0E
	9QDzTQ8LpGfux3l/P2vcrF1+LX6HV/6x1d70vg5AiLKIjzdd+QYAe9Up+DFgUJCPOR0ljbdV4GPsv
	3I+Hx4MDg+XcnqpUlEBAWc5CwXZR9JPWXYcuoxFVdA7kQcD6IZE2sCrGWyv+A5wJj07iQ4aBpUC9z
	/WmNB4+kgU0/efUrRZig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pICBk-0020tC-GY; Wed, 18 Jan 2023 17:25:28 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pICBh-0020sT-Oo
	for linux-phy@lists.infradead.org; Wed, 18 Jan 2023 17:25:27 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 3FF61B81DE4;
	Wed, 18 Jan 2023 17:25:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1CF57C433D2;
	Wed, 18 Jan 2023 17:25:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674062723;
	bh=UIp2ALbIFR0Kr3XIHCm3swFVg6WKF4rhWXfWgkuD9RI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JZPZ4++CcKb4VyCvUMPQLY8pXtPk3mDtvwFZsuwlqizjNh24ZTtheR7+kGG08iozK
	 qIcRcLenFxaIH8w1hBj4e0Gcho7ebM7p7GJP70eGRecTmSrz6KHTbMfB0qJHUmnc2w
	 Lm0lRc35ZneGAJRZP3YSpfs9rdjZBgsaSZwTLssWdr9pBa7b8iTlRFNm1e4P+Bxm7W
	 W6uY7v/G9TuwGelIYWczxxt4NCtof59qnf6ev/4snIlbBI51IzbsF5cgcMvVE9fHfp
	 uILAEgwi8r+ImvBBCy28Q3FmKNr+yEQc52XHK0aaLExUMHZ2ZTKtyrxVrrAQmuZGqD
	 4+pcJmQJ/RZfA==
Date: Wed, 18 Jan 2023 22:55:18 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 1/2] phy: qcom-qmp-combo: remove
 QPHY_PCS_LFPS_RXTERM_IRQ_STATUS reg
Message-ID: <Y8grfoRvV558Y4UW@matsya>
References: <20230113212102.421491-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230113212102.421491-1-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_092525_966708_633146A0 
X-CRM114-Status: UNSURE (   6.79  )
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

On 13-01-23, 23:21, Dmitry Baryshkov wrote:
> The QPHY_PCS_LFPS_RXTERM_IRQ_STATUS register is not used, remove it from
> register layout.

Applied both, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
