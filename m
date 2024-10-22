Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF9A3D1CDA5
	for <linux-phy@archiver.kernel.org>; Tue, 22 Oct 2024 05:35:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3r+spxj8jicNiK1Nv7u1oMEq0Cl5Z8tULfP3nG5Ccmw=; b=R6k2piGOEg6VNy
	KVzHAwD+p6v3SYDbf+V92vPXj9Kamanr9hXUrehPaGH/sd29MhQLRjnxbdDG+S0tvzhU8NNBRVcd9
	G7jUecVsEcnMAYs6Xo73+RdoM+5mjhGLLCyn/Kiajrt2XbVkH3FWZNZ/tAXrXQEy1ut5hHV19xezL
	/lR/egsirI/lPEJDZcZpSlpmR8+IqGMwnUOVxVtncQraEoptNW023ev6WLcBHWXlUqzSkwr6+yayN
	zZokcs7EitpZoBnPGrIesF151PbwoU7gTPF9zZmllkn5GN1/cAEd7tjSuneZkK/kEfJbF1FMeiddG
	qaHcvl22pkRo981tTJ/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t37YT-00000009fui-1ITF;
	Tue, 22 Oct 2024 05:35:41 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t37VF-00000009eyi-22Qs
	for linux-phy@lists.infradead.org;
	Tue, 22 Oct 2024 05:32:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 97AFDA43DAE;
	Tue, 22 Oct 2024 05:32:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C86EFC4CEC3;
	Tue, 22 Oct 2024 05:32:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729575140;
	bh=IC2s08flHKsv2NAHGXGxkxcj/BBZpwRMBVQZCveXR8g=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=ALqHq1oqcJHgSJCIUKsYQbXxkRylvXEnJSh7AHvIjMPbTW9RtGbUCIHIuJaR1Q0eD
	 492Nc3WTdR6g8ZcBgaQTFbh942CbQ9Fvfnn/fdDjObw1CaxzNTJDHZzg+GTEoL7xH+
	 COVeJB8T1kceRK64xT7W1iXcoCRz3nc12G61y3hVKutSqJzFqlIh+Aq1Vokt9Ta8Zl
	 TrUeLLen7yYxy/FekeJDQAwnCTVJ77cbHQ9n9ahPI65V9IvJ/pOb71LY8F5sMcwpXT
	 o7kCiuzpqjWk3MPMOx3NUmRQ0gqy4GG0Ttf3m31uciILF5cJpf+zbDlWpNTGBijBtp
	 6IkXjGgxcQ5jA==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20241017-sar2130p-eusb2-v1-1-1cedd674ec64@linaro.org>
References: <20241017-sar2130p-eusb2-v1-1-1cedd674ec64@linaro.org>
Subject: Re: [PATCH] dt-bindings: phy: qcom: snps-eusb2: Add SAR2130P
 compatible
Message-Id: <172957513771.488852.7809851835581288714.b4-ty@kernel.org>
Date: Tue, 22 Oct 2024 11:02:17 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_223221_630514_D83B9711 
X-CRM114-Status: UNSURE (   4.41  )
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


On Thu, 17 Oct 2024 20:42:56 +0300, Dmitry Baryshkov wrote:
> Document the Synopsys eUSB2 PHY on the SAR2130P platform by using
> the SM8550 as fallback.
> 
> 

Applied, thanks!

[1/1] dt-bindings: phy: qcom: snps-eusb2: Add SAR2130P compatible
      commit: 8e1e94619bd37915323a199ceed39ed5904e7fa6

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
