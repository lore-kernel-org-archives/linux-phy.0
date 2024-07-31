Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0F2EC3DA7F
	for <linux-phy@archiver.kernel.org>; Wed, 31 Jul 2024 11:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BQgblLitkLil45LFePsnmtTV6yFICRSTSQo0j+2dYuk=; b=GUiRce6I5LUZ9K
	vbjWQ31dZsUzRLGck+oELWO7DWR1rRWMWsKSeM1PXyS2QkrEazymCKtZyywMfg4zeFinCt5v/GgPl
	a/YR8iGpnN9uuKYd7Ys1dM28UkP1ncOmp2GH58GG1AhocFRmV0NjdDW+C9GngIQ3zB59VW1VibBqN
	8F2b8UxBUJzoxYG99BVQj1M0epg94gSjSGXbEZtT5hCia7YTSjnS23EdFoQPgT2PaAdT+n14JMwkq
	jcoJROpHczqF3Yxkv5WZQrXgVXLS3K+pOgYr+tC6MVs/mWgCEY145NlzbBOpgAu2/DiAPiw/mfuGG
	Gm2UqrJL1D8kt3zKcuaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ7dh-00000000vXk-1c84;
	Wed, 31 Jul 2024 11:37:05 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ7de-00000000vVD-1O4R
	for linux-phy@lists.infradead.org;
	Wed, 31 Jul 2024 11:37:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 0B90462362;
	Wed, 31 Jul 2024 11:37:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0CEBC116B1;
	Wed, 31 Jul 2024 11:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722425820;
	bh=2mhwWJxE5yx29WXEJC/VcAvSFAoWXPOnNXtcqC8T5fQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lIafMp8iM2uBcBfVUatyyh7A0wsTPD1tAkF41++0iXfKrRTvBGVE0VrU1Gi0zcX84
	 dq51xkDDgWxhg23vFQ2wFrhmVOmM5avqAJnRhgK4ZKyop4rdPms2QZ01HE1MwBR7Ao
	 87+t+yhTLPO8kzDsvYPFTyWNHTNEEI0266Z2UmItieR3hrNX5HWxw7yJi7686lHLjK
	 Cxtyr6UT5jRjkAhwhj+k+DpX3Z7oIWg5QSRYhnmz/n2Qrmhh0FV1a/c6zfIUz6UlaT
	 mlAGCmRTn3jsxz4OzRqkQkpHjHxvofIUskriY5loDOjXJQij4EvvaSLk9qOaqeOUwM
	 VsNjrViUncfnQ==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1sZ7dn-000000007h3-1VJq;
	Wed, 31 Jul 2024 13:37:11 +0200
Date: Wed, 31 Jul 2024 13:37:11 +0200
From: Johan Hovold <johan@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Abel Vesa <abel.vesa@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, Qiang Yu <quic_qianyu@quicinc.com>
Subject: Re: [PATCH] phy: qcom: qmp-pcie: Configure all tables on port B PHY
Message-ID: <Zqoh5w9b8nGBw9UY@hovoldconsulting.com>
References: <20240726-phy-qcom-qmp-pcie-write-all-tbls-second-port-v1-1-751b9ee01184@linaro.org>
 <ZqO17rPoitKbUa_9@hovoldconsulting.com>
 <ZqoeXUFtBq-F3x1V@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZqoeXUFtBq-F3x1V@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_043702_432379_18108456 
X-CRM114-Status: UNSURE (   8.38  )
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

On Wed, Jul 31, 2024 at 04:52:05PM +0530, Vinod Koul wrote:
> On 26-07-24, 16:42, Johan Hovold wrote:
> > One more nit: subject prefix should be just
> > 
> > 	phy: qcom-qmp-pcie:
> 
> I dont this so, phy: qcom: subdriver is better and used more widely than
> this

I don't really care, but if you check the logs you'll see that 90% of
the commits do not use a "phy: qcom:" prefix:

$ git log --oneline --no-merges drivers/phy/qualcomm/phy-qcom-qmp* | grep "phy: qcom: " | wc
     43     404    2949

$ git log --oneline --no-merges drivers/phy/qualcomm/phy-qcom-qmp* | grep "phy: qcom-qmp-" | wc
    310    2346   20020

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
