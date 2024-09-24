Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9461DCF9C6F
	for <linux-phy@archiver.kernel.org>; Tue, 24 Sep 2024 14:31:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=58AsXJK3dbYGSmak1QMvRjkBcCYxVkwAHWUsr1iTBD4=; b=CcKzaFfXzTkBVx
	6gGFW8GuYqVMP6MyoMhReiALr0HsJ3F2uy5JfhQS7jZMfoxTPYbHGcBELEa06Wo4IDYmWB7gULHR+
	QajTi2TGmuNrJ4qNjCQwQbEV0tzvcaPvKTNXM6+Mf4hYtxDxrv4ZtHWyJEADS5CPTIVGsHCf4F86d
	Rcj1WRrtRorhlpnEDxFw35lgnEvcXcJK4n6wf0pR/6qmnOrwKmJzk9FIYquX0H8VvrDUIl+AZ+upM
	FzgBoxyB+45dGlADepM5yoYIc+KPQel1O7cbfEtwlR8O4WIoGxDVrJsyHQDm56IRN+NPnjOGBTtIY
	dxOiEZNGbe4lOWH/RzeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1st6ZX-00000002YM5-3ygd;
	Tue, 24 Sep 2024 14:31:24 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1st6ZV-00000002YLY-2yTA
	for linux-phy@lists.infradead.org;
	Tue, 24 Sep 2024 14:31:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 964705C5C9E;
	Tue, 24 Sep 2024 14:31:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2211EC4CEC4;
	Tue, 24 Sep 2024 14:31:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727188280;
	bh=5aZ5BJkhz9VvfCW7OSzBayQ+gI23u/HVPkIKrLIgxIs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=d0OVsaR5W4N0lfWfXwiwXABAxWDDIia45bJhxX9+ShI4rhIR8vL93ZsA3i/Ih4RGU
	 Zc6kBCpN0+QbFP9E4KHVvTKd8dmuaTjIUjkySjBWxWpqW0ePuIa9bd0L2NRV6GuxSW
	 UZzTZqiZOnh2Oq8nutZk5tl2jNKnj0ahiwSw3Jw1KNw+uOAlyPv7eZjHJ2l8BWWKSe
	 g7FtufRGFmYs6shRN8gg/YNBdRvK8lQ9KvZJX5zrUDzEEGd87AUotaVX5PUhqcX4RF
	 RhyMhERHvJU0cDlOsbshSkjYUAg1BFUoRIZFjhvKFByzs7K4BNMjUZjHaDQQoa0pRz
	 MBM2F6w9hyJUQ==
Received: from johan by theta with local (Exim 4.98)
	(envelope-from <johan@kernel.org>)
	id 1st6ZQ-0000000011b-0tHV;
	Tue, 24 Sep 2024 16:31:16 +0200
Date: Tue, 24 Sep 2024 16:31:16 +0200
From: Johan Hovold <johan@kernel.org>
To: Qiang Yu <quic_qianyu@quicinc.com>
Cc: manivannan.sadhasivam@linaro.org, vkoul@kernel.org, kishon@kernel.org,
	robh@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, mturquette@baylibre.com,
	sboyd@kernel.org, abel.vesa@linaro.org, quic_msarkar@quicinc.com,
	quic_devipriy@quicinc.com, dmitry.baryshkov@linaro.org,
	kw@linux.com, lpieralisi@kernel.org, neil.armstrong@linaro.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
	Mike Tipton <quic_mdtipton@quicinc.com>
Subject: Re: [PATCH v4 4/6] clk: qcom: gcc-x1e80100: Fix halt_check for
 pipediv2 clocks
Message-ID: <ZvLNNDCOy68nK2B5@hovoldconsulting.com>
References: <20240924101444.3933828-1-quic_qianyu@quicinc.com>
 <20240924101444.3933828-5-quic_qianyu@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240924101444.3933828-5-quic_qianyu@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240924_073121_835733_B323B5F2 
X-CRM114-Status: GOOD (  10.23  )
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

On Tue, Sep 24, 2024 at 03:14:42AM -0700, Qiang Yu wrote:
> The pipediv2_clk's source from the same mux as pipe clock. So they have
> same limitation, which is that the PHY sequence requires to enable these
> local CBCs before the PHY is actually outputting a clock to them. This
> means the clock won't actually turn on when we vote them. Hence, let's
> skip the halt bit check of the pipediv2_clk, otherwise pipediv2_clk may
> stuck at off state during bootup.
> 
> Suggested-by: Mike Tipton <quic_mdtipton@quicinc.com>
> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> Reviewed-by: Konrad Dybcio <konradybcio@kernel.org>

Looks like this one is missing a Fixes and CC stable tag. With that
added:

Reviewed-by: Johan Hovold <johan+linaro@kernel.org>

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
