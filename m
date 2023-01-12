Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93D41C54EBE
	for <linux-phy@archiver.kernel.org>; Thu, 12 Jan 2023 17:17:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j2PgrH3UqOQSsPuMcED402eJByNRDhrSIQochkFwORw=; b=CzW64kdwO7bJ+K
	AadNcLD4PgvUYSdW02cwkUYXYHpRtntJBHLaHxyaGuwpMBM5p+OTE41xPV+2ncagNOZoOtkRflrsg
	jsbMdtCEGFjqo/BBY+Ffd+6CDRmGjc/UUea/xN3+4k/YSND61oCcDazigY4xOnEOCobho7+4/1HkJ
	NI4UNXRe+owun9xr2Q0BWIUM/Gj7FBWs7UDe0T9sx3vM5Kxt1N3CDkRK0Od2xQhrNZ0lHigQXu80s
	8A66Nhf8E6sQz6zhrsDJj6JpWFMcT5ZcudThV2v2RWprPFUNEgNqn4sSYTgdQD/njMX8LQnd0BEaS
	AvljlzLMcXgxVDcXJ2Qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pG1Ck-00FzaO-UA; Thu, 12 Jan 2023 17:17:30 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pG1CZ-00FzX7-NP
	for linux-phy@lists.infradead.org; Thu, 12 Jan 2023 17:17:21 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id AA7FFCE1EEF;
	Thu, 12 Jan 2023 17:17:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6BA5AC433F0;
	Thu, 12 Jan 2023 17:17:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673543836;
	bh=946nuW3ZeOOlefD+SB1EAI5Sfidnxq92FXIl/3/TxQk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nUean0f5ACSHOCPcPKDOG3P/jh9TCQ6Tmx5/xkFd8l69vlxHTkMCF+duRJj9mZvAm
	 DUZYL7BR3WwFRJaXmF3vkK1KBAByj1ua6mmp0cV0Ul0xCaxJM6+vviGp9kRrc5mvo6
	 Tj98i2NP30o/onCGEG8oSdLiqfqh4BTrPYbyxXy55JHan+V7Mq5biAs3UgYAW9pY8i
	 LHrVqK+x4ACRpgl0ItHvWdBOD9JrhHgLCZO3x+ziM1G/Oud2BM8GYNcEyQfZXqbfKM
	 B2fmK9Dw/6mc9NUwg4a4CV1uRnFEMpoLL2aepTkLVcBVbB+Iprr4uZCf9czxnRBWzV
	 FN1c+7MGb4q6w==
Date: Thu, 12 Jan 2023 22:46:40 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Johan Hovold <johan@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v9 0/4] phy: qcom-qmp-ufs: add symbol clocks support
Message-ID: <Y8BAeEbIDQPajiOm@matsya>
References: <20221123104443.3415267-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221123104443.3415267-1-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230112_091719_965231_2DA47AC2 
X-CRM114-Status: UNSURE (   7.03  )
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

On 23-11-22, 12:44, Dmitry Baryshkov wrote:
> Register UFS symbol clocks in the Qualcomm QMP PHY driver. Some of the
> platforms (msm8996, sc7280, sm8350/sm8450) expect them to be defined (to
> be used as GCC clock parents).

Applied 1-2, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
