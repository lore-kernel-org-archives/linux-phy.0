Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F2F9C76195
	for <linux-phy@archiver.kernel.org>; Fri, 24 Mar 2023 07:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ivdI962JrE2gijZAWsF8pq4mp0SLA5OoqJn1OCm+SY=; b=Q+1/k9dYz+BZ6J
	lBVx1BQIs9i74lfC5V4l4xL3t7u489N7LDw7bpG/FsNTpPIt+6dKAjVdlYMMROwBSX6YT6beqZ3jZ
	w14+0KtltY/xVFm8Bnuj2v6R4VJsofgsHYwdlBSor+0ROyFgeD/1EH7BYP7OYhC34SiXhp80hR6ir
	BvJy3SOKELkNhcr020yQYYrMLkF7mkFsLpAS9wlG4so40iJthTBADp0+wWngSJT3WN5S26JB6D9CE
	mxTrVPIbhbMdo51lrZJgffkaORolyRTn1S9FQRmux8TCmEdWBAevkA4NOCRvTmGfOwhXHpxnWiqG+
	exG+qpcxSAqMEkvu7nVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfbjY-003ky3-07;
	Fri, 24 Mar 2023 07:21:08 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfbjV-003kxc-20
	for linux-phy@lists.infradead.org;
	Fri, 24 Mar 2023 07:21:06 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 54C54B8228C;
	Fri, 24 Mar 2023 07:21:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E913CC433D2;
	Fri, 24 Mar 2023 07:21:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679642462;
	bh=JAalBEdru/ocLqf8SWOl9qHluKU5LUoUETNuxkFPQDc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BjHU7E7vNpWu9OIW643SEAoLpc4S+gtiozoxRhUmtf5LEBYKm0THPSXoVPZYWlOAx
	 zFwQ+tkv+iRMshZ0y9QCuGzyfNypInNWP4K6GFl56Yv/nm0KcO6wcVwcEXlVCGkrtu
	 Uq8da/s4Z7uRkXjA9/RY+F1h4Qf++rxAoeKjOpIyXY8j9Iairs8fuLVt2MvJDWXdyy
	 bpTLW0Ti2Zvoa7cTRlQ5g1nzhGLPY2MET5BixDz6+alsWpVHB3GuhcRoEuQYUPuUG9
	 LjDAHfqHeSFbNAdahy037WzOM8mfKtKqAkKr7k6/OGWvsKsLJgBLAf/PDIvxoeZS1S
	 Jtq3KPA4h/SOQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1pfbjR-0002zx-15; Fri, 24 Mar 2023 08:21:01 +0100
Date: Fri, 24 Mar 2023 08:21:01 +0100
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: Re: [PATCH 1/2] phy: qcom-qmp-pcie: drop sdm845_qhp_pcie_rx_tbl
Message-ID: <ZB1PXVam/9TlLgqu@hovoldconsulting.com>
References: <20230324001752.1768505-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230324001752.1768505-1-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230324_002105_836278_9BCA387A 
X-CRM114-Status: UNSURE (   8.79  )
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

On Fri, Mar 24, 2023 at 03:17:51AM +0300, Dmitry Baryshkov wrote:
> The SDM845 QHP PHY doesn't have designated RX region. Corresponding RX
> table is empty, so we can drop it completely.
> 
> Fixes: 94a407cc17a4 ("phy: qcom-qmp: create copies of QMP PHY driver")

This is not really a bug (and this is just a cleanup) so you can drop
the fixes tag (which looks incorrect anyway).

> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
