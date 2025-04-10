Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C47AC369A4
	for <linux-phy@archiver.kernel.org>; Thu, 10 Apr 2025 07:38:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LgBIA4hEJxY7TJSxcIGKnQfFlC3V55VXmqRw5HeH3Uo=; b=i9VnqFgLHJ7kIi
	14OOOq77r9erBk6O1rYadzghi++Tb1kEmqTubznM4bt/RSMLSooIfZz2Lc8GdF2HxySjnrcrZil0Y
	yUS8iiZ4IhXRpre0Z792oS93EqYuvw8nXymUfDLymRSgnM6i4iXpsZEdw2w8J1uiJfDPdCgcQ52LC
	sWUIf3VsltGkBZtifxtXJl9D8ypFg8bOiQT4bn+qIOLRnCax0IDcLfVkRsiakj0oDraHMuOJbRbJQ
	iROfnCxJwdwDh1BCg+EYOBywUzttpBD1AD+QQzs8F0FtyWbxNqf0rWY8dlk78fj1pYHfR39wh7sjA
	EYzUXghWhG1F9awfsiQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2mUV-00000009apE-0pte;
	Thu, 10 Apr 2025 07:38:27 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2lyx-00000009TFb-0RII
	for linux-phy@lists.infradead.org;
	Thu, 10 Apr 2025 07:05:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 384626843D;
	Thu, 10 Apr 2025 07:05:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E7C09C4CEDD;
	Thu, 10 Apr 2025 07:05:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744268750;
	bh=sQMGbE8iQy4khTyZej0KqZO749zfTOSan6078zVowmc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lKoKpYmUk0EEyAIPiq+CRa6jMgDC8jb9pMHG3Btu+TRfkTy9FPheyinJIDxxfJaqd
	 B1MePB9vOkouDxS+cDfRJXivWExkHeIOPbi/PRkUXKWz75RGkUwRx7oCK54RHvOey2
	 B1Hpl01k4n0CNv6DFiTyzeiyQkZ//RA2mb9bQ6HUSfor7TvEpTsTcGKojU4pvyOk4E
	 cKoE3hCErU9FRbFgwEqbAHhNKizOjUhV/6v1szWRBpSrPnV7S8E7kF0btkPC/einIW
	 NfQLN/jxdqC4pW7KUA4d3lDhNPHPhgY5APWYDFk33QW9fTuOA7jp+99I8aZ1Q3tZ8H
	 VWJfnMwcp6f8w==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1u2lyy-0000000039a-3wN6;
	Thu, 10 Apr 2025 09:05:52 +0200
Date: Thu, 10 Apr 2025 09:05:52 +0200
From: Johan Hovold <johan@kernel.org>
To: Sasha Levin <sashal@kernel.org>
Cc: linux-kernel@vger.kernel.org, stable@vger.kernel.org,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
	Vinod Koul <vkoul@kernel.org>, kishon@kernel.org, lumag@kernel.org,
	abel.vesa@linaro.org, neil.armstrong@linaro.org,
	quic_qianyu@quicinc.com, quic_ziyuzhan@quicinc.com,
	quic_devipriy@quicinc.com, quic_krichai@quicinc.com,
	manivannan.sadhasivam@linaro.org, johan+linaro@kernel.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH AUTOSEL 6.14 08/31] phy: qcom: qmp-pcie: Add X1P42100
 Gen4x4 PHY
Message-ID: <Z_dt0F-XzGIJWhnz@hovoldconsulting.com>
References: <20250407181054.3177479-1-sashal@kernel.org>
 <20250407181054.3177479-8-sashal@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250407181054.3177479-8-sashal@kernel.org>
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

On Mon, Apr 07, 2025 at 02:10:24PM -0400, Sasha Levin wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> [ Upstream commit 0d8db251dd15d2e284f5a6a53bc2b869f3eca711 ]
> 
> Add a new, common configuration for Gen4x4 V6 PHYs without an init
> sequence.
> 
> The bootloader configures the hardware once and the OS retains that
> configuration by using the NOCSR reset line (which doesn't drop
> register state on assert) in place of the "full reset" one.
> 
> Use this new configuration for X1P42100's Gen4x4 PHY.
> 
> Acked-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Tested-by: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Link: https://lore.kernel.org/r/20250203-topic-x1p4_dts-v2-3-72cd4cdc767b@oss.qualcomm.com
> Signed-off-by: Vinod Koul <vkoul@kernel.org>
> Signed-off-by: Sasha Levin <sashal@kernel.org>

Support for this SoC is not even in mainline yet so there is really no
need to backport this one.

Please drop from all stable queues.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
