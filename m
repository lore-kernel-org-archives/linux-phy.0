Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D006FC4167B
	for <linux-phy@archiver.kernel.org>; Tue, 27 Dec 2022 17:43:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rLmdjRUR/XSdW7pK+wyCLrXibXixfbFQnNan8oFagS8=; b=h39Wc+OTRMi4tD
	vGX/zBAqngP/azdeHaseLSYcg7T6MqpbcB7oRcvfdRVI6d9FklRdJikqh2yNQ7W8aXUDXGiHhr8YH
	JtL0Ti1hoy4Qk4akqToeLR0ceZ/FNMe9CgZmc6pben9ftZ+uTszAfUxmZFgUdvYc5XP0Rcso6WvgN
	v0ANviXf2sqH2jswCLDarJSqMoWRjnZMO0n7pA2UD4UZ2D0irUAdM+Bp9x73/uIQ8uT7GSIrSjctG
	5PAh/QapFCOxN0mF9XTNrbe5kGEzgwXIiR+UWr0KfO2E2dYnfQmv+fLxkwLcsYxM8TRJ5F02bHI9o
	8y030v96UNK2ukXnwgfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pADz5-00F0ex-UH; Tue, 27 Dec 2022 17:43:28 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pADz3-00F0d4-5g
	for linux-phy@lists.infradead.org; Tue, 27 Dec 2022 17:43:26 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 25B37611DF;
	Tue, 27 Dec 2022 17:43:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B91D1C433D2;
	Tue, 27 Dec 2022 17:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672163003;
	bh=wC4VLe06gE2LY53KCWyVczISN3pEQ0xS9kuOl+zqvsE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=QCdp/vPPAgMUMlLWsG4C5V+cLjebNU5MYpL6cEr29s149KTmu7o/Eu9lNfkktc4Zk
	 LxKBs5DkFEJOaCYx5blmB5bbhfGYdS0Q+ykkP/AMpCNNjc3luBakUlasCh2GMvNr1v
	 TqIWFA/AcXw2ZgeDNm3K0F9nJPiIqr6X2xCtCACJt7XhSclSNr+yIkfte9oe1C3G4+
	 x8oZtk9+GKKRMdqDi93rhWx1QGinHx8h03lig2mzPZ2z620npn1g1DoJowRhSbjwRv
	 ViqAp6DtXJBBfwIwJHmLwLrqklfMyt4Fdi5KCyXakOe0q5qI5Wgia/U/viDyUjNdQm
	 MZUOKst9h3j/w==
From: Bjorn Andersson <andersson@kernel.org>
To: vkoul@kernel.org,
	johan+linaro@kernel.org
Cc: linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	agross@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	konrad.dybcio@linaro.org,
	dmitry.baryshkov@linaro.org,
	kishon@kernel.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: (subset) [PATCH v3 00/15] phy: qcom-qmp-combo: fix sc8280xp binding (set 3/3)
Date: Tue, 27 Dec 2022 11:43:21 -0600
Message-Id: <167216295787.739944.14627174630343077236.b4-ty@kernel.org>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20221121085058.31213-1-johan+linaro@kernel.org>
References: <20221121085058.31213-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221227_094325_291362_3F851026 
X-CRM114-Status: GOOD (  14.09  )
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

On Mon, 21 Nov 2022 09:50:43 +0100, Johan Hovold wrote:
> This series fixes the USB-DP PHY devicetree binding for SC8280XP and
> adds support for the new updated binding to the driver.
> 
> As the full series including the preparatory parts is over forty patches
> and I've been posting this in three parts of which this is the last one.
> In an effort to get all of these into 6.2, I've also submitted all three
> series before waiting for the previous ones to be applied. Parts one and
> two can be found here:
> 
> [...]

Applied, thanks!

[14/15] arm64: dts: qcom: sc8280xp: fix primary USB-DP PHY reset
        commit: ee4e530bdde29a69c58656a919545251a782674e
[15/15] arm64: dts: qcom: sc8280xp: fix USB-DP PHY nodes
        commit: 721c0d68c0f882b6358102b52961ff6eb601839c

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
