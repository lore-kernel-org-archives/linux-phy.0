Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A550CC07E9D
	for <linux-phy@archiver.kernel.org>; Thu, 29 Sep 2022 06:34:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lVcjbYsPC0aDYJ13RVUCosEuEUxxRpmcFpBdIPlQU6k=; b=hAttL8XUmdqa6A
	Na+5viSVHKPvY8kQ6oVy4wf1eKQGgQ7hLoq/W8Gzk65uawkPghVqPXy/r2C+61TcA6wTmgcC0aAP9
	QnLvOnOgeT4gkGc5+dIrBJZ8cd72wtGMn9vrD1/sd8vZtGg2nLYpkmAxb8Xd/Ixl0iwzuWjqVp/kB
	4Uv3mb67XNfijfQ50nWb/bdqa7d7baLa0KMA0R/FKqbW6sIpoXgdJLy7+xB3VCVP09Ae8IVsbhQl2
	Uqc9i2ZrgA4zZSUZIF62l+D8t1PSriE4lxRYix7+jRXZD4TDrvYcg9hTwuJ7pGaHBUlrC8gK55WoL
	c8O6m+bmFc4eiFTjX6cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odn7r-001QWk-2O; Thu, 29 Sep 2022 06:34:27 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odn7o-001QUQ-6I
	for linux-phy@lists.infradead.org; Thu, 29 Sep 2022 06:34:25 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 2C4846203D;
	Thu, 29 Sep 2022 06:34:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AED7DC433C1;
	Thu, 29 Sep 2022 06:34:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664433260;
	bh=mu7vRoO6SzmbL/soMLhDD9mCEk8ILRG8lG5/UO2mERQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TZgR9M3DjLv9V9AUyqwCiNlomiC3X/0+AckUtSuHAb3vIvcNd2dRh+oXmaHWYPOWV
	 QrX1M+Lolm18rHrY+ejl4kiiEevgxjxQ8+8X8GswHxeThIH76nsqziuGYR42WJHjMS
	 g2C0q07d8dWlCzM/9+T0ovUHIqGC+uyI/HY9DcIpIusKfyapEBMeRSPfsXj74Lyzhh
	 hli24grWjMuKLNfJYyoRnIv2KSAS23FfHzMNStS4AhergAS00Qsf6nttPdj+KNRj4S
	 +g7ygJjJzCwGkElbrVIyDLsn4xoQgC5z/GpB9UZ6q97HUELOE/YshFWFmGbwcmW6IK
	 rQVzv29cxwvRg==
Date: Thu, 29 Sep 2022 12:04:16 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Richard Acayan <mailingradian@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Felipe Balbi <balbi@kernel.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-usb@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: qcom,qusb2: document sdm670
 compatible
Message-ID: <YzU8aOvTIYmLAoZQ@matsya>
References: <20220922024656.178529-1-mailingradian@gmail.com>
 <20220922024656.178529-2-mailingradian@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220922024656.178529-2-mailingradian@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_233424_295286_CB2C884E 
X-CRM114-Status: UNSURE (   8.21  )
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

On 21-09-22, 22:46, Richard Acayan wrote:
> The Snapdragon 670 uses the QUSB driver for USB 2.0. Document the
> compatible used in the device tree.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
