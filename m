Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19C06C54EE9
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 06:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SkbpNxDvU4Qpq53a9BMNwmqQtpQbAcwgKRo1KeLfTe8=; b=0BtY3VJuyb/aBX
	47lLAGuefSOPA61Th1uDIKGdBxMGlBNJDCa5KTc9AEs5R90lb7hPKswkIV+Xv82l7iOyNZ84PUaq9
	C2MRhm/Ep5dyf/inmrYHyjfovTxI0bdIEJveCSIqBDLBAMtKG1YUSZfAXIf2RBs+u8A0hOxPCmWmv
	Pt6z0FUYgLWffg9LfBVGe2Zq50iS5uKvtJ9pB1xkqRJnv0f16OM1lzOv9VlDt8RM29AqAHtmWGYj3
	2fBQOEwLK8pmcjMV3aZPgqR8RNGqo6JSHqXb3P9WOjkPvedaM9/1yeHZDuNSLlm36kGF9nTJ/Tg8T
	2CRUW/t6gL/pXG1p3Gdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaWWy-000vRf-Fi; Tue, 20 Sep 2022 06:14:52 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaWWw-000vQL-4Q
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 06:14:51 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id A338A61CCD;
	Tue, 20 Sep 2022 06:14:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4D8A0C433D6;
	Tue, 20 Sep 2022 06:14:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663654489;
	bh=bOC4ReWblLf0yM+WfwoTzP1oEwc2VdlQSw/5YFxtAH8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=W2kZjW6O/9CZTd0eRgMOTP3VEPgZGCZZc52wAJZSSNh9LnGHPDSjNxM64fDl80UQ4
	 vlX3lBtSx6GrRqlcU/wa1BvEr4fXNciwezYwsLjoakdsJEp7ZCZW7UvwMCJjXe98rr
	 SXQ9kLrN8P++lNBTaeTR2m43xAH5S3dTSZYu2DaiikKWIJZG+up15ZRuziStVMqSY/
	 MXI/PCkZI9QWCAlQUxmlPeVRL5K4Nww5uDBB4Hxi2r0miPuYkIyynYGe0nKCxDXCKF
	 e/YBX/5qD1xHRhJy9/GwIMXylMSWCdGMGL34DY0OPaSEYDC+8nEiDnXPaQwsYD5cbA
	 fl7/OimSY03dA==
Date: Tue, 20 Sep 2022 11:44:44 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: qcom-qmp-combo: fix sc8280xp PCS_USB offset
Message-ID: <YylaVAVRgDmgqYf6@matsya>
References: <20220919095700.2228-1-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220919095700.2228-1-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_231450_249026_891355A5 
X-CRM114-Status: UNSURE (   7.50  )
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

On 19-09-22, 11:57, Johan Hovold wrote:
> The PCS_USB register block lives at an offset of 0x300 from the PCS
> region on SC8280XP so add the missing offset to avoid corrupting
> unrelated registers on runtime suspend.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
