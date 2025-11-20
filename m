Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47B79CF8549
	for <linux-phy@archiver.kernel.org>; Thu, 20 Nov 2025 17:11:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UzljNHiWwMpMvZDaZ0E5EClw6j1OJaZbwC3ryBsxCQY=; b=gt6L4PMQK7uJPf
	WKXFV+7hAjayNWuP9GHbtvDDr5Lmge5fz2ABDV5hohvtOM4ineChdL8OhQYUInOsNq1UaTCF3gxV7
	xO3bsaMSKNNIOR0ABWW5FC0GbkFqEqg3G3XBcJ0KZh7BZ2RWNj1JDOvBiPkSeNj/awpXtd2cToq50
	gOCrXsTNeaSzq/hcMQAc1B6LqjqXLq1fmMpykfMMAOMKeZsS+0h3uSOZf9LmR3QF9WF0vaei7nSV7
	iKEg2G9t+PIqLrcCL255krB1ooYow00S6Z26CBLkaCwMKk78TZJM4nwtCS+SyXcOV1/aloEdqRVfo
	TS1YZsTtd1OSZs/oh5mQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM8Ba-000000073ri-43VQ;
	Thu, 20 Nov 2025 17:11:10 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM8BX-000000073qQ-3X7q
	for linux-phy@lists.infradead.org;
	Thu, 20 Nov 2025 17:11:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id C53D14423F;
	Thu, 20 Nov 2025 17:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CA1E3C116C6;
	Thu, 20 Nov 2025 17:11:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763658666;
	bh=xyRZEuNoOtmwK7QjfAkmVwp6Fuz90wGnSs5wkHI7Ib4=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=no505gVk3Jg5ybrW5UuuUwgGtyMzV+v8r+8RBBDhk1yd5Y0Swx7xO6ZIB7+V7RwHM
	 y6dyUactujRh2gD0HIoCQQPQWLMc7ASW9NO6XkakGxREU7eRTFC8YWWUYJRm1o+8OJ
	 G4xOGkiFbpJeGfm6eFlhKKnMtbIPMM7tZXKZrnqwE07rcOGbkaRbDidN8cJjHCkyVP
	 i6rL1GycsaMrZutXdMI2Sn9onwVCL158Gexzeqv+GbkwUcIIV3bcIR9/RJxujZPKgX
	 LdCIhd17LZmLY6RkEk7xTDd5S0V6D93O1C6DSENRgVDUQrPgFBP4meI5CZY/z7xUMo
	 ndFMLxXYycWDw==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Johan Hovold <johan+linaro@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Wesley Cheng <quic_wcheng@quicinc.com>, 
 Konrad Dybcio <quic_kdybcio@quicinc.com>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Faisal Hassan <faisal.hassan@oss.qualcomm.com>
In-Reply-To: <20250922135901.2067-1-faisal.hassan@oss.qualcomm.com>
References: <20250922135901.2067-1-faisal.hassan@oss.qualcomm.com>
Subject: Re: [PATCH] phy: qcom-qmp-combo: Use regulator_bulk_data with
 init_load_uA for regulator setup
Message-Id: <176365866344.207696.2538575283551353793.b4-ty@kernel.org>
Date: Thu, 20 Nov 2025 22:41:03 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251120_091107_909562_4ECB75A6 
X-CRM114-Status: UNSURE (   5.61  )
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


On Mon, 22 Sep 2025 19:29:01 +0530, Faisal Hassan wrote:
> Replace the custom qmp_regulator_data structure with the standard
> regulator_bulk_data and use the init_load_uA field to set regulator
> load during initialization.
> 
> This change simplifies the regulator setup by removing manual
> allocation and load configuration logic, and leverages
> devm_regulator_bulk_get_const() to automatically apply load settings
> before enabling regulators.
> 
> [...]

Applied, thanks!

[1/1] phy: qcom-qmp-combo: Use regulator_bulk_data with init_load_uA for regulator setup
      commit: 81d75558406609f311766a37ec4b2c74d7b11ea0

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
