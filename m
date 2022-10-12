Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AAC99C433FE
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 12:36:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AGomUwmEQ5MgXk1nVF67RdFRZv2VtvX5q9++R7OvIUE=; b=eizkqWMIsrIOoF
	4Cq9XjGPsDbLMUihsk6tWIraTot1PS8HEbXjgalEKbkeuSjwD7EEV0v+Xf2xUXy1rhyVF8p+fxC/l
	ehsuHp4m2UPxKfH+K+tXf5aZVFRiZr31SMQDx1Uz4A0tM1QeU3B5EW7pfcbHYB2EN3ruMABWHEIM5
	cgbXosw3FhNeF/+ADwjSEq0W9enwi7TXGgYcwukSBaAWEB6eUqDBkfS9F88jgsblU/fplE8xfllsC
	hrAy2B54LEmzUf0/ou1hrKg9C6XJluweW6EHvRwkx3JWXFwUu8d6fEC2b5FDNPUgYmjTWyZkWAqW+
	IC91phg6rhm+zs2/9CsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiayU-007zlW-0d; Wed, 12 Oct 2022 12:36:38 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiayR-007zkI-5Z
	for linux-phy@lists.infradead.org; Wed, 12 Oct 2022 12:36:36 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id B39E7B81A25;
	Wed, 12 Oct 2022 12:36:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74B50C433D6;
	Wed, 12 Oct 2022 12:36:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665578192;
	bh=Db+uhFCwSlxVQ3TiIbRMEXABKltWPh+mXJQChhSYZlY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=i84PNqzlzqRLLjJ2tzk5cG8lz6wp18yYayD0cYlcjx2alRv1ll5b5BRIsC9hJ7loG
	 2+52jjuOS3CMxwVByoVhGcGa/rql8sbjR0dB7KTMmwGWIK8PBmX9frvgbfU9sMOyLA
	 TTayfJWPW1iy2X1+Ai94/uT/02vD292ZkUR0Zw5696SQpiPshTbs87zCtQuvikhpCW
	 dbWZ59uHRY6Pxu1BHUup7j5ny1bamYxxeh0a7zEA8/vyJWXbaEU0isDq3gZTeS/g4C
	 zQGVO01Sq8FuoPOrrVZ5zqNSZ5bDqzah/hTTObC3AVH1tggNGEOySqlocpjUV7ykK6
	 GFztbC0MZCzlA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1oiayA-0008G3-NF; Wed, 12 Oct 2022 14:36:18 +0200
Date: Wed, 12 Oct 2022 14:36:18 +0200
From: Johan Hovold <johan@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 00/20] phy: qcom-qmp: further prep fixes and cleanups
 (set 3)
Message-ID: <Y0a0wuhKieNLDamy@hovoldconsulting.com>
References: <20221012084846.24003-1-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221012084846.24003-1-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_053635_370809_1375D59B 
X-CRM114-Status: GOOD (  10.87  )
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

On Wed, Oct 12, 2022 at 10:48:46AM +0200, Johan Hovold wrote:
> Here's the next batch of QMP fixes and cleanups in preparation for
> adding support for SC8280XP and its four-lane PCIe PHYs.
> 
> Note that these apply on top of the following three series that have
> been reviewed and should be ready to be merged when the PHY tree opens:

Same here; I forgot to mention this series:

	https://lore.kernel.org/lkml/20220928152822.30687-1-johan+linaro@kernel.org/

which has also been reviewed but did not make it into 6.1.

> 	https://lore.kernel.org/lkml/20220929092916.23068-1-johan+linaro@kernel.org/
> 	https://lore.kernel.org/linux-phy/20220927092207.161501-1-dmitry.baryshkov@linaro.org/
> 	https://lore.kernel.org/lkml/20221012081241.18273-1-johan+linaro@kernel.org/

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
