Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 084C7CD11DF
	for <linux-phy@archiver.kernel.org>; Thu, 28 Mar 2024 19:10:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xLFZ9ilPcNQBcHVZSWV2cgOYX9inMMFnjp5MYe1yqlo=; b=dGsHpr4n2PP0un
	bMUo5dDGXZR5HxRx1KZwqfJemq+eUiAxTpQgsqi9wgn9dHnGb6AgySSz5eQHKrlvwNvryY+RXCqQJ
	Sg3WBAwJiH6Kvey0t8jtouj7Ne5h/ch5dMvRJEKgNRsrj494HMBJTX8VS+mFlI1fCLcwbQnHY1L32
	x3B0x+VxwrmWBcuq4UJZG/Vzm1L1NzccAHRgcJU8F+n1WVYdj/Q2+7ZqPABYJpasivECdvrb4eqMZ
	9ysZ5O2pXUMsdw57mmHmTHquHkEdeohl/TiDT8KGAEilAuZHx9Tqjobg5JbYNZaQcR/bNDhisz67C
	VAcyjpe5lfEd71XSs/7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpv8S-0000000FJfF-1zm7;
	Thu, 28 Mar 2024 19:10:00 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpv8O-0000000FJdI-3tEG
	for linux-phy@lists.infradead.org;
	Thu, 28 Mar 2024 19:09:58 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C8F296185C;
	Thu, 28 Mar 2024 19:09:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68186C433C7;
	Thu, 28 Mar 2024 19:09:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711652990;
	bh=TMEu0+59Wnpc9lTJ7rgOQpvFhUV4iddHo0yol/6QleA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZsfSL6SAEIvmGd/G6gIk+Ub44Yfp4ePHgsHWG1qsAu9ZbVG6Xmfjyk6U3c0EXV8FL
	 7mSv7BrntwCF013gkD26eEd7ViKb1pH9fSBXskn6HuKUH6v0OIMMIvIXDb/zPhSJNP
	 5eNRO0nVVY5VcsqSC0j8fB04JzzCUDgjZC6i/bmcENRjZEld3A5O/pIim/D+45e95j
	 qNk0PoL6pNIZHGed1wtBNs5y51KGT44u+dnDE5Fo2LACwR8cZcWqDEfkZqn0h6eUUy
	 z7Taib4nQOSLuFhFHfz3WF3zpqu/jQnbnPlVOPh0mD4xM8zJYuvL3fWXO3KVrlQjij
	 5DlXvgc0MIzuA==
Date: Fri, 29 Mar 2024 00:39:45 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Abel Vesa <abel.vesa@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Johan Hovold <johan@kernel.org>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH RESEND v5 1/2] phy: Add Embedded DisplayPort and
 DisplayPort submodes
Message-ID: <ZgXAec_utD_8yIs4@matsya>
References: <20240324-x1e80100-phy-edp-compatible-refactor-v5-0-a0db5f3150bc@linaro.org>
 <20240324-x1e80100-phy-edp-compatible-refactor-v5-1-a0db5f3150bc@linaro.org>
 <CAA8EJprPgZJ7hZooJEs1ysn2Py=M_rJguuVdXFuBK757q86ZAQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA8EJprPgZJ7hZooJEs1ysn2Py=M_rJguuVdXFuBK757q86ZAQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240328_120957_093181_BA29B396 
X-CRM114-Status: GOOD (  16.28  )
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

On 24-03-24, 23:26, Dmitry Baryshkov wrote:
> On Sun, 24 Mar 2024 at 20:50, Abel Vesa <abel.vesa@linaro.org> wrote:
> >
> > In some cases, a DP PHY needs to be configured to work in eDP mode.
> > So add submodes for both DP and eDP so they can be used by the
> > controllers for specifying the mode the PHY should be configured in.
> >
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> >  include/linux/phy/phy-dp.h | 3 +++
> >  1 file changed, 3 insertions(+)
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> 
> Vinod, we'd need an immutable branch or a tag for this patch, so that
> we can merge DP changes during this cycle

The following changes since commit 4cece764965020c22cff7665b18a012006359095:

  Linux 6.9-rc1 (2024-03-24 14:10:05 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git tags/phy_dp_modes_6.10

for you to fetch changes up to 6078b8ce070cad3f9a8ecfce65d0f6d595494f02:

  phy: qcom: edp: Add set_mode op for configuring eDP/DP submode (2024-03-29 00:30:16 +0530)

----------------------------------------------------------------
phy_dp_modes_6.10

This contains the dp submode definition and associated qcom driver change

----------------------------------------------------------------
Abel Vesa (2):
      phy: Add Embedded DisplayPort and DisplayPort submodes
      phy: qcom: edp: Add set_mode op for configuring eDP/DP submode

 drivers/phy/qualcomm/phy-qcom-edp.c | 76 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++--------------------
 include/linux/phy/phy-dp.h          |  3 +++
 2 files changed, 59 insertions(+), 20 deletions(-)


-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
