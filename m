Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14DE1C4828F
	for <linux-phy@archiver.kernel.org>; Wed,  7 Feb 2024 14:01:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/MoY2E/WbOUCp63bm2c6WpMDz/eg/2wkJnHltg9i5/A=; b=lml9pWtmNb9JGt
	NaFc3WHLabWCJZAkYgsOmRlinAZOSOxEAwbNRfxNihACWY+SlI1iamGCkV60sR7i5dxrQUttHohKM
	+JlQDi/5HDwS0u2VsS4cOXlhh73Xt844kU7nb1WjJUUF+r4Zfpp4rMO+oASIicKeRsnrElEQqgbsI
	/onmp1PWQkXS6TdgVDgbPHqpHzy+y6WtXKXLC7Pdog883sByzS3/Qqomw4Gjio9Svu/5l6UfXfHiL
	SioGjl6AnYnk8QQBtthxHR21b6rnkuQq4phIZ76wrqDchFUj9h4Mz1iDDsC/0knpJwYpYi/YNXC7g
	/BW1Ux5SUdlA47y+1vGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXiUV-0000000AqpD-348w;
	Wed, 07 Feb 2024 14:01:31 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXiUS-0000000AqnC-3O65
	for linux-phy@lists.infradead.org;
	Wed, 07 Feb 2024 14:01:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id BF875CE18FF;
	Wed,  7 Feb 2024 14:01:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2CC1CC433F1;
	Wed,  7 Feb 2024 14:01:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707314486;
	bh=/rjz977jP5mBXgImd5nP7xr6MiG0JWxvSEkRfP3XuVc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=B5mFNOvWiLN6Y3rPY+t8oyEEDw2UkAISJ0+KzhNU6q4zQqt/dLgVdpkBT8MJg5XFo
	 BsJje3G4S9cRxzw0kmZnmWY82oJMl280mOdE4sv0pVLjbbU9QeBkLxZhE1jK1g/8Mq
	 Y4GRBB7vqgk6OixKHtwrglFqZeZ/k4G1u3oPxB1738tB5DhaVp363/0maruniQc8ob
	 jdMiN7LsDDOvB1E5wNgKpoS425tXMMgE/rTwkL3uza2X+7fCPfCMDvMBWMP+4b2/8i
	 v0W+8cIRnKYqgGINddvE0Skdfu5BslVyoFLc4SRbFicAO3t4pKoi9NPARk/sGK6OU3
	 xX4mSiXnlzeUA==
From: Vinod Koul <vkoul@kernel.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-clk@vger.kernel.org, quic_cang@quicinc.com, 
 Conor Dooley <conor.dooley@microchip.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20240131-ufs-phy-clock-v3-0-58a49d2f4605@linaro.org>
References: <20240131-ufs-phy-clock-v3-0-58a49d2f4605@linaro.org>
Subject: Re: (subset) [PATCH v3 00/17] Fix Qcom UFS PHY clocks
Message-Id: <170731448191.147119.10372838414675777682.b4-ty@kernel.org>
Date: Wed, 07 Feb 2024 15:01:21 +0100
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240207_060129_112038_8BD5EF9E 
X-CRM114-Status: UNSURE (   5.85  )
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


On Wed, 31 Jan 2024 12:37:23 +0530, Manivannan Sadhasivam wrote:
> This series fixes the clocks supplied to QMP PHY IPs in the Qcom SoCs. All
> of the Qcom SoCs except MSM8996 require 3 clocks for QMP UFS:
> 
> * ref - 19.2MHz reference clock from RPM/RPMh
> * ref_aux - Auxiliary reference clock from GCC
> * qref - QREF clock from GCC or TCSR (TCSR since SM8550)
> 
> [...]

Applied, thanks!

[01/17] dt-bindings: phy: qmp-ufs: Fix PHY clocks
        commit: b0bcec86f47b44c98a23c31d54dd3963e27761a2
[02/17] phy: qcom-qmp-ufs: Switch to devm_clk_bulk_get_all() API
        commit: 2668cae8b64bf25c4c7a39eb2cb0012c92153c11

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
