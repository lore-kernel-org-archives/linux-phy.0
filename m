Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6F28C4332F
	for <linux-phy@archiver.kernel.org>; Mon, 17 Oct 2022 08:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iv41S81xgN8ScjwuKfUpDU0pm+Lxdf2n2000CbjL2Bs=; b=DV34BRilZ/85/3
	vuq/xSNYqST+kRuzZqWVFAYuTa7ICkB2fDuWNn45tMAWD4oGh5qQeppO2nGbmOh4noKx46JMHXGrO
	kQhLw/Le4RMEeQr03KmegTffOQg5WCvGDMKR/nR50/FU5uPyHxUoa8/TgQlYG2o/Kl24VCat6krvB
	79cgyB/o6OpvsFi2yj5mAuFt2eYYvRqd/YRZ9NuBJm6wXNAGo52Fg9g0zMUtZrr/2+hxfg4DHkTQQ
	EPsU66Cf93OEU7AnCyK1FlF2XT/87OdqT8r1bMdNuyxJmJkdytR2k1SAj/rXTOTP7qNYsfJCuN6yH
	Y8j14tqJpXwGI+i0kX1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okLI5-0090on-3j; Mon, 17 Oct 2022 08:16:05 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okLI3-0090mq-2f
	for linux-phy@lists.infradead.org; Mon, 17 Oct 2022 08:16:04 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 6BD9760F71;
	Mon, 17 Oct 2022 08:16:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 63EC3C433D7;
	Mon, 17 Oct 2022 08:16:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665994562;
	bh=xYJ/B7Kacgvm4DOq0+mPr8ee/za2TacV2VrkXYB+A1M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fjpepaLfN9bxKUBVuZ+hgYkJSqSsmcF460JoUIpdUtbzdzkW9G5fdglOCUrzf6YhE
	 5OBE4SzjA8qJ0N3vCZivbSxEml8S2HqnVoRQyhSpcYtNW/Y/cyUawYYmAri3YFkNEa
	 sVUJyP9J1rqxi/DcD875Wm0qRNi8nr2+29tGh424P+xoKs+94JYyxz5aH56xPZYmQP
	 dQg4jcpQ8Dj3SrtpiI1dsoBsUEaEPi6TeE8xM78txLX4Sr/MNnRQAlkDPDDrQvU6nB
	 WnvA9eyXeBSELiOYWhd1OHHbcBqVxcvD3oRE+HOZZ92k+4uqsRNde1tNaFMaZ1s+ug
	 LhE9hJzU0J7bA==
Date: Mon, 17 Oct 2022 13:45:57 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 00/11] phy: qcom-qmp: more fixes and cleanups (set 1)
Message-ID: <Y00PPSxezyr+WhY3@matsya>
References: <20221017065013.19647-1-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221017065013.19647-1-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_011603_180747_AE040765 
X-CRM114-Status: GOOD (  10.76  )
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

On 17-10-22, 08:50, Johan Hovold wrote:
> Here's the next batch of QMP driver fixes and cleanups.
> 
> Dmitry suggested that the register layout structs could all be using
> per-IP version defines, which in principle sounds like a good idea. It
> is a separate change though, and one which would require some more work
> as it is not always clear which IP version a specific SoC uses (e.g.
> some of the IPQ platforms appear to mix and match currently).
> 
> As such a change shouldn't block these clean ups, I've dropped the
> merging of the IPQ SDM845 PCIe layout structs in v2.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
