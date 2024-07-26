Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 181CCC3DA4A
	for <linux-phy@archiver.kernel.org>; Fri, 26 Jul 2024 14:42:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G1KLgkeBEsEOYoQcw5WfAqQn5/sqkQR3PBlAqMivkkM=; b=OSryhRfdUO7WjL
	SsWNEe8pvFx6W64Ch77WZ5mEq0XNzB2sGvWC3SzmdZHDPcnAwBV1eA+duG/QBg5B5lqvJQuZbD6Ia
	rtyf1Y9+bOJLh3d3+mZpmm4JXDY9N1cFToMRVh3dwWiYc5QLsRddoYVJuQSo+xZwhGdWGqMV16qzp
	M0oHiEWG8rCwR0Wxz5c2UeXkUp8Tdpvj+8WuMmX6t7xo2e4snH2Lic7TWrnC38uoLpnc4pIqjImdu
	wnt/R1LfNmiYHj0qBd9UU4jqln1DF0XRS0HCThqe7qQCGlZ2hKBuKKKYgjxGnxwa8uQXxP8Y22xx2
	NGQOWvArAnTNghRO6YKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXM9k-00000004B9q-2lSV;
	Fri, 26 Jul 2024 14:42:52 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXM9i-00000004B8M-1Sct
	for linux-phy@lists.infradead.org;
	Fri, 26 Jul 2024 14:42:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8DF2461846;
	Fri, 26 Jul 2024 14:42:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5593DC32782;
	Fri, 26 Jul 2024 14:42:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722004969;
	bh=WOCZVmBumpMvycaaLQcxAvn7GF0bRsPrFEHU+CS4DZI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DFgMpQ2aykFxrc+Co4iu7UGhEmwJpgz4ZGOUL5124UL9PmpkrUH0EwJ4Ci5fUcoAt
	 bjzxfDyv/qo5O7qWcM0O4+ZCG8HjBe2DSElOkSrpACfTks81EGzJ3C+8HQvdENLmwK
	 ayOqtXPmRZjH31QiU7w6i0FFQZ0IKL0MVdvItLoqEUBAxPy7mhs2FfrCH1LPEEmUMu
	 AEuXm8Uu2VSN1k9IpBWxkYdHhbN3dwIFKKpuVPH5xUa5eBooSQ20ACEbtVnKH+ubxI
	 mQmYSSyRCou6DxR+WJKEw1WGewgDeuC6LTCsrDm/hX6nkW3DghNgKqempMwVpy1MWx
	 rcocXfRB1+NPw==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1sXM9m-000000007Wv-2Yiv;
	Fri, 26 Jul 2024 16:42:54 +0200
Date: Fri, 26 Jul 2024 16:42:54 +0200
From: Johan Hovold <johan@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, Qiang Yu <quic_qianyu@quicinc.com>
Subject: Re: [PATCH] phy: qcom: qmp-pcie: Configure all tables on port B PHY
Message-ID: <ZqO17rPoitKbUa_9@hovoldconsulting.com>
References: <20240726-phy-qcom-qmp-pcie-write-all-tbls-second-port-v1-1-751b9ee01184@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240726-phy-qcom-qmp-pcie-write-all-tbls-second-port-v1-1-751b9ee01184@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240726_074250_446406_578407C6 
X-CRM114-Status: UNSURE (   4.03  )
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

One more nit: subject prefix should be just

	phy: qcom-qmp-pcie:

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
