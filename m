Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF398C6FA8A
	for <linux-phy@archiver.kernel.org>; Thu, 15 Sep 2022 03:37:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QTIimYOVFIwspynn9mpOHdncFv/q2YtGV16oIQdnHbM=; b=rPB00TuTNPzlu0
	yhz6sczmBpajwB1T/p4eOyaYkOoFCUp70xwrqoInPf3os67ukmjJGxLp6sFs4em6Smeuv1QLjUye6
	nS4qN5yWtISWqFarLDTBmNWT9Y1GyOSauu4K89JRS/O1m7AdUXt0OIUB6MfBcRX6PsiQI9MCtC3Hh
	51H/O+UMLTbp+oSMILt+L6sFlzjlKgBJ1qkzMz1n+s7dDydm//CPxxnRSiGIvenFZ+y3W5g7wgk3v
	+uOhcl+OxcgJZnzx7yuhTTfFkgvBMuIby6fkmmJp3yZho5aaZFUBmoSkUuRBUth90F/X2drsQmsoJ
	0jtTMM1e5EQrmL3sylVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYfgi-00GvYt-8H; Thu, 15 Sep 2022 03:37:16 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYfgf-00GvRo-5I
	for linux-phy@lists.infradead.org; Thu, 15 Sep 2022 03:37:14 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 8B4C4B81D86;
	Thu, 15 Sep 2022 03:37:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF13EC4347C;
	Thu, 15 Sep 2022 03:37:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663213031;
	bh=KxdZUKe1FhFDeqYOXN6BYRfxXZGj21xAg5hE3J+Cd5k=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=kWKUEfmG+e/tYxbHra/T7k7GOJ/jZCv4yTs8pwDMCc2cibgNiws5zwPshLWp3CQF1
	 DL6zmPDYq/RtwvemGwmWY9EoHq7DySOQaBpOOMWpHSnhTWH9QpWx3Zj2oNa8fllGBU
	 mYO3fslzKWCE2akRA45YWXL6Z4xDBngzO/tvyniiE7iQFkwSm/3C9CLmUnURbN7kJx
	 KxPNrLv9ynMVsDDNUVEunM3SnqTOBEakbcBw6vvhSLKm1eB6vY8T77zhoUL7+OaKis
	 X/ESlHNH1+bFH6WcjtVHyjPm09L3F7vPLSzJ3gxjOSPF1AVXU8TnN/9XvIg426mOVI
	 ZOp1J9HTH6qQA==
From: Bjorn Andersson <andersson@kernel.org>
To: agross@kernel.org,
	Bjorn Andersson <andersson@kernel.org>,
	dmitry.baryshkov@linaro.org,
	robh+dt@kernel.org,
	robdclark@gmail.com,
	quic_abhinavk@quicinc.com,
	sean@poorly.run,
	krzysztof.kozlowski+dt@linaro.org
Cc: linux-phy@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	swboyd@chromium.org,
	airlied@linux.ie,
	vkoul@kernel.org,
	freedreno@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	daniel@ffwll.ch,
	kishon@ti.com,
	linux-arm-msm@vger.kernel.org
Subject: Re: (subset) [PATCH v3 0/3] drm/msm/hdmi: turn MSM8996 HDMI PHY into OF clock provider
Date: Wed, 14 Sep 2022 22:36:53 -0500
Message-Id: <166321302054.788007.13905269452519533105.b4-ty@kernel.org>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220704161148.814510-1-dmitry.baryshkov@linaro.org>
References: <20220704161148.814510-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220914_203713_364654_0AE35D17 
X-CRM114-Status: UNSURE (   9.94  )
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

On Mon, 4 Jul 2022 19:11:45 +0300, Dmitry Baryshkov wrote:
> On MSM8996 the HDMI PHY is the QMP PHY, it provides an HDMI PLL clock
> used by the MMCC. Add support for providing this clock to the OF
> framework by registerding the clock provider and adding #clock-cells
> property to the DT node.
> 
> The dt-bindings from this series depends on changes from [1] (part of
> linux-next, but not of the msm-next yet).
> 
> [...]

Applied, thanks!

[3/3] arm64: dts: qcom: msm8996: add #clock-cells and XO clock to the HDMI PHY node
      commit: 157b615066288f84e1812964a439603cfe8c1a19

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
