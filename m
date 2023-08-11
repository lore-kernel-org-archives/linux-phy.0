Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F5AAC001B0
	for <linux-phy@archiver.kernel.org>; Fri, 11 Aug 2023 08:30:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j1tlw7D3+InGH8k77rXyCQkkbpNQeQUmXyFc/jiyedk=; b=Uocu6SqSW9Tk4i
	gh3m3JB/+Gq4zggs88KvheUdOhyK8IzO7YQEubm6Mjr+Xd5gf8bZLNBszC2Aeb8UjP7koFZ5MFslE
	pQSrUDkk9YYkRaoP2DfYMC7apJtJ7uQTrwZDmdDxus8Ch8Xo6XI1RgQDQ69Bfnvjwhmtta+FgfLiX
	KQ2VWeqpKutY1VG/8iU/d41kaYS7iDH9XCrnH1KFiqDa4TjMBybgZGGVgXPbxnL2f83VHBgbzWB38
	7eIQlNWZMF+7Nid4T4M6UCW0GSYvCHYnU9n6yl42TZO4gHBdJClvHkkECKGdqTqBwbhclnY62qXfj
	0lePiGY/9Oo4b19G2ObQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qUNXb-009r2L-08;
	Fri, 11 Aug 2023 08:30:39 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qUNXY-009r1Q-1c
	for linux-phy@lists.infradead.org;
	Fri, 11 Aug 2023 08:30:37 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 05BB264DA2;
	Fri, 11 Aug 2023 08:30:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7FF59C433C8;
	Fri, 11 Aug 2023 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691742635;
	bh=BxoR3h1Xm/5aIfnrQFcfnCoMc2XIZ9dRKlQfHzrEN2w=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=gR2jgZkaKgtH8KNlmqdxvF8Dmz3IlPWFQD3Bn408nRpsn0tqepiDrjQ3KjEcH2E6D
	 toazjPwgcBCmF+AN3ywl1Bkc8ZZp7IRY3aVh8SxZ173aItOClAyI/uzow6xIpEZZWk
	 9/K2PB2ST9yfBvHv+o/qdH+ZPqgGphOp84TcZw9hZdYR4SRhItYLIyMkj/YAfRTdFV
	 EQ9gFxHip6X7U3JAwnxdM9xDCXYlk0HTJpUz13GtPsPuCZBDGdLdXda8ijGrx4ldwg
	 EEkfJQsWz+EKiCSaPW149rrQ+8zo4a/EgegDjgtkKDBZowXdfpUgmwKV2/Pr0+lY8d
	 0BeC3gM+7MawQ==
From: Vinod Koul <vkoul@kernel.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Johan Hovold <johan@kernel.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org
In-Reply-To: <20230731111009.3998089-1-dmitry.baryshkov@linaro.org>
References: <20230731111009.3998089-1-dmitry.baryshkov@linaro.org>
Subject: Re: [PATCH] phy: qcom: qmp-ufs: add missing offsets to sm8150
 configuration
Message-Id: <169174263330.106197.17152520204220185726.b4-ty@kernel.org>
Date: Fri, 11 Aug 2023 09:30:33 +0100
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230811_013036_586784_D1D17BC7 
X-CRM114-Status: UNSURE (   6.89  )
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


On Mon, 31 Jul 2023 14:10:09 +0300, Dmitry Baryshkov wrote:
> The conversion commit 7559e7572c03 ("phy: Explicitly include correct DT
> includes") misses offsets configuration for sm8150 (most likely it was
> developed separately from the series adding HS G4 support and was not
> adapted for the sm8150/sm8250 configuration split).
> 
> Add missing offsets to sm8150_ufsphy_cfg.
> 
> [...]

Applied, thanks!

[1/1] phy: qcom: qmp-ufs: add missing offsets to sm8150 configuration
      commit: b102ce6d847a715732174cfe7119a350f69f3511

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
