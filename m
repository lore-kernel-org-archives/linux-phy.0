Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93DA9C10F1B
	for <linux-phy@archiver.kernel.org>; Tue, 27 Dec 2022 18:04:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K8N3hPdULAHgzjX1mAu8h1hHOH5iCfNJ3EPq/mTsYdI=; b=oxiXttjtrxFKA4
	goQzw4AlfKKUww3hIYc8fcMJ4nT1FLB1QcpGaoMFBYQRl4vypYuzEBuauP7lQHS0m0wZY+TWOeQ6m
	zxr/m3r+j8rtJthpNUDQ5XwaOHnkkKa5itnCMiPGOvIsGUNVBCsg463bTwtbDIfePuRDjZ0cPuXNJ
	ovqz9mhu9RTpugEmhyayjpM83Wfyu1ERD34C1wBUiTEs9Zc9jP2SNkCfnlQpBic6p2g/UrBwYzUww
	KHEOqDXSUI/ICG3EVEO8wg+HEiSIdGDqGMmRjFi6ToZcm8ylLhAwsFk142T3G4jSnZY+ppT3+YQJB
	H/GGYesJH6fcSdBzjafw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAEJ7-00F9k2-KJ; Tue, 27 Dec 2022 18:04:09 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAEJ3-00F9gT-Nq
	for linux-phy@lists.infradead.org; Tue, 27 Dec 2022 18:04:07 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 0CB8D61166;
	Tue, 27 Dec 2022 18:04:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92A3CC433EF;
	Tue, 27 Dec 2022 18:04:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672164244;
	bh=I6jd4XwS/L5DIHtyZOpfhgWdtcHV5gfEUW44QKWNuKo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=AqWjgMbRmZC8e0LmJNRGH8hrnOew19bxkCuw8PmSZObXrSV/gXi7/5Wcg0J3oj3Fo
	 NJNMp8duuf9dn+ggSJ0AB6D0DF+G/r80WhsDSezQYqBng1XKrsCXhHZlQ0dx/dh60A
	 V30yMk/aGkbRehDLHXMc9TElD2CqDoZThEPZaq7oo+WbRgYQXZYJMgWqOW3gNfDCAj
	 sLa1bddc6QhHGp3K5X1Dn/PJYCArkKmrKJ1dfONaJK3fmRNT/MHsxfk5xuhL//k/15
	 5xH0jo35pNYpIXfF3boDm+y6TX/Wt8xwg5cvTRkXrsIvzSQLrYG8Cdwl9bOfBaMGsK
	 m3149pQDD05Fw==
From: Bjorn Andersson <andersson@kernel.org>
To: dmitry.baryshkov@linaro.org,
	robh+dt@kernel.org,
	kishon@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	vkoul@kernel.org,
	agross@kernel.org,
	konrad.dybcio@linaro.org
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	p.zabel@pengutronix.de,
	linux-phy@lists.infradead.org
Subject: Re: (subset) [PATCH 1/3] dt-bindings: phy: qcom,pcie2-phy: convert to YAML format
Date: Tue, 27 Dec 2022 12:03:59 -0600
Message-Id: <167216423712.744668.9850054899253387953.b4-ty@kernel.org>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20221216234027.539917-1-dmitry.baryshkov@linaro.org>
References: <20221216234027.539917-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221227_100405_965529_B1178A2D 
X-CRM114-Status: UNSURE (   7.13  )
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

On Sat, 17 Dec 2022 01:40:25 +0200, Dmitry Baryshkov wrote:
> Convert the bindings for the Qualcomm PCIe2 PHY into the YAML format
> from the text description.
> 
> 

Applied, thanks!

[3/3] arm64: dts: qcom: qcs404: register PCIe PHY as a clock provider
      commit: 977e9262c3542e87b513d4dad4c57b2c85e16c8c

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
