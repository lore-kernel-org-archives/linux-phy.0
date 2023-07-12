Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF8EEEB64D9
	for <linux-phy@archiver.kernel.org>; Wed, 12 Jul 2023 05:02:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nUmje8LiR3h2+cSDfTTvoym7KURFgXp45sllKp/yTjQ=; b=ZzRr1k4ZesPWjj
	HOTLl4hyvGxp6AnIejIwW3/91sQDoc2H+/CaXC5z3KmJemxYoxIUieY84+ss06tjGbsNNEeA8zcKI
	dwwa0HHw5n6HIAUxHJ9TQjIeWY4fGtG6z4fnEf0HHEcP2rrMr3yy0LhYxTXClaVnFdnhsnkvFoNT2
	sP5Utz0N7Dp2oUc90QZUoBKG3Zh2GUEPi+zesSEH4aIXLHol8grWjHNsrnWjB6gsVTRsdV+SHHWbN
	av1P2pJc4+fE/MVq6EH7aXvHcbl2ZpeQsvomTGrteqcedJQb0GkYGYsUxydwwW9MPlfZDaqkaR0N1
	eeDCBFMENmBemZOm35aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJRzF-00GYOI-14;
	Wed, 12 Jul 2023 05:02:01 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJRzD-00GYNq-1r
	for linux-phy@lists.infradead.org;
	Wed, 12 Jul 2023 05:02:00 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 5C53F616D8;
	Wed, 12 Jul 2023 05:01:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8715FC433C7;
	Wed, 12 Jul 2023 05:01:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689138117;
	bh=6KG17KUo8h820ZSa4mo8RX5Kp4K+MmsavBtP+yo27Fo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=CT8b7w6nZPbtqdNRxfk9LMN2tBFnTl9hqy/S1MgnGC1gQBuosPhlAuYGx8A7OZBKX
	 LN6eU3mJGsksA73NBWarH+0w+S8BSX/Y7/qMlNPcB4cipIm4bY1uMvqHWWcxvPOk0l
	 cRWQT7UZ7hRXmOIzp1OKQ2RLvDB5rVQMTroCjvPMwPWibcsab/hH08Gwrw/yHl/Z8y
	 Ou8JfI7g+Q/FsXDNHnfRwpSH/pTq3Zu2vcv3Y3okDGlDK6KCa4Jpk3Q7OdgxHBXrpk
	 e+PSPYV9XXGDy6eprjdB1JJQG1IT8QE87lbAi1t2XkG7v3Hzt5oMIeqnffwyjZAaGt
	 iXRymamONa0kg==
From: Vinod Koul <vkoul@kernel.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org
In-Reply-To: <20230523140622.265692-1-dmitry.baryshkov@linaro.org>
References: <20230523140622.265692-1-dmitry.baryshkov@linaro.org>
Subject: Re: (subset) [PATCH v3 00/11] phy: qcom-qmp-ufs: convert to newer
 style of bindings
Message-Id: <168913811417.211971.4997836227104181246.b4-ty@kernel.org>
Date: Wed, 12 Jul 2023 10:31:54 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_220159_679108_86004C7B 
X-CRM114-Status: UNSURE (   8.02  )
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


On Tue, 23 May 2023 17:06:11 +0300, Dmitry Baryshkov wrote:
> Reviewing several patchsets for newer platforms made me understand that
> having two styles of QMP PHY bindings causes confusion. Despite binding
> documents having notes telling that old bindings should be used for
> older platforms, it is too easy to attempt adding new platform with
> older QMP PHY binding. Thus let's have just a single documented style of
> bindings.
> 
> [...]

Applied, thanks!

[01/11] dt-bindings: phy: migrate QMP UFS PHY bindings to qcom,sc8280xp-qmp-ufs-phy.yaml
        commit: cd296e74242918f91bb86da0c67d8456338cbb16
[02/11] phy: qcom-qmp-ufs: populate offsets configuration
        commit: e2d9dbc01cb305af625c6db83c451645eef64470

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
