Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7209BE7107F
	for <linux-phy@archiver.kernel.org>; Thu, 21 Sep 2023 14:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i9xGrobpIxFIaV0TQMmItQhLoRh2aRSG7tTFjpSueFo=; b=D+c5rIaLRXDcTo
	ybj/kXQ+WpFGspVRzsqdVrLw4tt0Ot8Z7qPkqYJ2CREtF7PA+Z0Mh/bPUI4/iclkg3uk4lPLeoLbc
	3LrQgXs5DFEnWehgOHoy2I35hGzNTTqDQW5gvbGs8XNtV25hovfrUHsItGHk3oNbzOiuDNxfkOyMb
	PbSDHQE6GG1whPp7y/bqmuM6NIXXhSezP9GiaSEskGG9q8TeTYrRyPWNuFGLj3RWO4pdLJRc7bcEh
	nNSxrzo0r2T5Vf7vwHg3U1pwszAeq35b96MPXdd1ocv3LwxsoNLUqmUNWSoO9C/PXZ4Z1c+5VwOcM
	ids6JdUn56O/QleFcOqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjKgo-006HHx-0Z;
	Thu, 21 Sep 2023 14:29:58 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjKgf-006HD7-1e
	for linux-phy@lists.infradead.org;
	Thu, 21 Sep 2023 14:29:50 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 2F4F3B820D9;
	Thu, 21 Sep 2023 14:29:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F3CF6C4E764;
	Thu, 21 Sep 2023 14:29:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695306586;
	bh=HPNrgxZmgDrK/7v8w1qWsE4OijoieBpRZDKxz/upQ20=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=BtH1ChD9v3Lhaimr7O4iFGTSAiQZu4lSCYhz2K+x9Z7DmqGsODmZnFO/tEo9Exnqg
	 XUwyIE3AqFA+nQy8qDyspp+6lU7AUcELyyug+/MvtklzQXMYaqklyBqyEZJ77MSuky
	 Ux8t6gzVFuD1ZGdYO4lK8+01rMNheQ0tM1Q+R2S1fhB3vGirg63wf6bzm/2Rj6Amn/
	 mIC6CrR/HVJWhV2tlZWo2R2QxmbJ7X3PLl3iPHUCJtkg/Tc+AWQtrRxh01+DRtPJN6
	 66R9mxWdzrQs0mKX2s2AvYOImdFD0sj+55fMAxD9KMhUOkEO/K9uRsU9j4Cc/9ELRd
	 h3AZ8hq1/2hfw==
From: Vinod Koul <vkoul@kernel.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20230830-topic-eusb2_override-v2-0-7d8c893d93f6@linaro.org>
References: <20230830-topic-eusb2_override-v2-0-7d8c893d93f6@linaro.org>
Subject: Re: [PATCH v2 0/4] EUSB2 repeater init sequence override
Message-Id: <169530658362.106263.16903519035871193100.b4-ty@kernel.org>
Date: Thu, 21 Sep 2023 16:29:43 +0200
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_072949_686863_2D7BBE25 
X-CRM114-Status: UNSURE (   6.75  )
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


On Wed, 13 Sep 2023 11:53:22 +0200, Konrad Dybcio wrote:
> The EUSB2 repeater goes through a tuning sequence as part of its
> initialization. This series ensures the tuning is "clean" and can be
> overridden for devices that need it.
> 
> 

Applied, thanks!

[1/4] dt-bindings: phy: qcom,snps-eusb2-repeater: Add magic tuning overrides
      commit: 2da73b4e0cf1d9847483fe474ce27af987bfb614
[2/4] phy: qualcomm: phy-qcom-eusb2-repeater: Use regmap_fields
      commit: dcc8a942852f00845e75c49ca8a7a6865d6b669d
[3/4] phy: qualcomm: phy-qcom-eusb2-repeater: Zero out untouched tuning regs
      commit: af1c6ec341c3a1cc396784b2ce4619aec7be3e34
[4/4] phy: qualcomm: phy-qcom-eusb2-repeater: Add tuning overrides
      commit: 05733bd60f7aa4f260a2837574555bbd3b847cca

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
