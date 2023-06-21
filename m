Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 424D8EB64D7
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jun 2023 17:39:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F8+wD0Z/dPVEp8kPTroHAPmrPTI4PdSywvUp/A8sM6Q=; b=iJfchqn5Yq5j1v
	pPQCAIXPwIRIrRsGFKn4JXzSdEuSKPc5ngngpSw9ruzv2FN4csrHvAImJ/P/VE2nNVL0kHwqTFL0X
	ABsclj51s82zqmJjLu4N1OwU8ne6aEs7BKpKsVB84+R4f8fmk6LEofZlPr+2Sy28kjCtkzYqjwBEq
	QbSzyYeEdks+GU7+IoybNg8YDe/2vs5koM/VlsfJ82XHupHti4Qdc+za+YMxA3qqnkOolZqVgPoCt
	QSrXu79S/x1nhhevM+GsaXS+8eDpQ09ncut8fsAl4s9lrvHpupHx1T8BuxKQE9Co+x5SNX5k8Fsa4
	8EoL2V5Yx9GMgn0FGRKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qC1nU-00FFSj-2z;
	Wed, 21 Jun 2023 17:39:12 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qC1nS-00FFRe-37
	for linux-phy@lists.infradead.org;
	Wed, 21 Jun 2023 17:39:12 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 71882615F0;
	Wed, 21 Jun 2023 17:39:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5DB6FC433C0;
	Wed, 21 Jun 2023 17:39:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687369149;
	bh=XzATrKBRqfI29gJm2bbNLUAzSyjyHq8SXaCsI8n8N94=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hhs6UOnXah/SuVVEsfbiDT+iwMF9Wzi90aebzSJ66Jo1cMrkwGVOFd3I1XMp/HFLh
	 8cPAQpZFolSPtP/hRFwR3T5YFbIxxkvo5+UH/UcMoNyt16e8Gr2aJVjBv1OVlYkMJ+
	 4J38h/DbfH5qHfY44uTIJqOfhXjDqtfY5YwlSrE1A7st+35lxdi5ZbDG9ziNu8VmTA
	 c7cDT4duhwTh6MzN3v29YBqZDRrllBMmiXdrg0NcMmGo+foHga1M57g6OSs8bXOBVw
	 18w0uSEi+dY+tfrLfzYBP0MeSiZKdVicJgfjRLpA7lFGa//zri4tHxfQkz3P6IDSjz
	 o1/TURbkre6Vw==
Date: Wed, 21 Jun 2023 23:09:05 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Marcin Wierzbicki <mawierzb@cisco.com>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Swapnil Jakhade <sjakhade@cadence.com>,
	Roger Quadros <rogerq@kernel.org>,
	Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	xe-linux-external@cisco.com, danielwa@cisco.com, olicht@cisco.com,
	Bartosz Wawrzyniak <bwawrzyn@cisco.com>
Subject: Re: [PATCH v3] phy: cadence: Sierra: Add single link SGMII register
 configuration
Message-ID: <ZJM1uQbXM7rciJ3l@matsya>
References: <20230522172415.1668975-1-mawierzb@cisco.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230522172415.1668975-1-mawierzb@cisco.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_103911_038453_1C6B8397 
X-CRM114-Status: UNSURE (   5.95  )
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

On 22-05-23, 17:24, Marcin Wierzbicki wrote:
> Add single link SGMII register configuration for no SSC for
> cdns,sierra-phy-t0 compatibility string.
> The configuration is based on Sierra Programmer's Guide and
> validated in Cisco CrayAR SoC.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
