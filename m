Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3864CD1284
	for <linux-phy@archiver.kernel.org>; Sat,  6 Apr 2024 09:19:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Y0V8jzx//VdaFWZ+Z3VsFquGI67ekpyDKz2JsyaHcA=; b=IRtvG2bCDjGsmI
	ZexBIeQwrSEMPrjd7XN5ThI5WLB2woGOesavqW1kcaIjMaBQpWGL/qIeK/jiEjHOP0kDaInYh/kiS
	vqP1dmE28+RY6ayINfuiCOqta+t2TpL7mPNTJTQryQodYqL+4D04z4zKObnBfGP4mp8+/uPK+/sWy
	rSFkP9HgTKMiUIpFNgHll6lJe5h4zpgcmzMo/NE+Xy+CANLAYj1akxGyog9dp81qqoU1AKCtuugXb
	TJG9KmY2djVIf2OMc6IVgCs6XVNmNa2ij/oV82l4WOkEq0zIvcROkGT/Ph6Yfab6fQbzWm3AITy4p
	2Dv9voOGVGtVZthYo7Cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rt2CU-0000000A1YX-1xKy;
	Sat, 06 Apr 2024 09:19:02 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rt2CR-0000000A1Wq-2XiU
	for linux-phy@lists.infradead.org;
	Sat, 06 Apr 2024 09:19:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 0E9E76091A;
	Sat,  6 Apr 2024 09:18:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 905D4C433A6;
	Sat,  6 Apr 2024 09:18:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712395138;
	bh=CKx+Sd6xfsfIpNID92BJjS5Q/0Wk3rO67hmInznC/5Q=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Ryhhr482/stDZaEN/VQttZWuBNtZbYJa+0k2Mm+MCL97kevMFtmJKqRZUejPMxS/C
	 fCIwj6Y+Rq7elkWblvVBrKlHsphTOM+EHjgREosXHjMkEjMm9QlLAD31sAT6kUWE7k
	 h5BCmCMvkPjYqaoRILptvnDhA9QIKjWun8biVBOBK7hVQXq5NL4P61vc9RsyOlBw0I
	 AQCj0Rv+PwqrwwsjAhmjZYEvv46bKyKG4kkbE3wOGIL/DApCw706tUDstqBcuNDWK5
	 +XdvZHT5+VwjQxBdNAU/6KmJU+Dgxvgx5C63RU3pIYxxNtOZgRYujdpbWZgVVFmED3
	 QWskxeTmOmb8g==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Stephen Boyd <swboyd@chromium.org>
Cc: linux-kernel@vger.kernel.org, patches@lists.linux.dev, 
 linux-arm-msm@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Bjorn Andersson <andersson@kernel.org>, linux-phy@lists.infradead.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, freedreno@lists.freedesktop.org, 
 Douglas Anderson <dianders@chromium.org>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20240404234345.1446300-1-swboyd@chromium.org>
References: <20240404234345.1446300-1-swboyd@chromium.org>
Subject: Re: [PATCH] phy: qcom: qmp-combo: Fix VCO div offset on v3
Message-Id: <171239513422.352254.9763002024133782932.b4-ty@kernel.org>
Date: Sat, 06 Apr 2024 14:48:54 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240406_021859_781119_B15762E7 
X-CRM114-Status: UNSURE (   5.25  )
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


On Thu, 04 Apr 2024 16:43:44 -0700, Stephen Boyd wrote:
> Commit ec17373aebd0 ("phy: qcom: qmp-combo: extract common function to
> setup clocks") changed the offset that is used to write to
> DP_PHY_VCO_DIV from QSERDES_V3_DP_PHY_VCO_DIV to
> QSERDES_V4_DP_PHY_VCO_DIV. Unfortunately, this offset is different
> between v3 and v4 phys:
> 
>  #define QSERDES_V3_DP_PHY_VCO_DIV                 0x064
>  #define QSERDES_V4_DP_PHY_VCO_DIV                 0x070
> 
> [...]

Applied, thanks!

[1/1] phy: qcom: qmp-combo: Fix VCO div offset on v3
      commit: 5abed58a8bde6d349bde364a160510b5bb904d18

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
