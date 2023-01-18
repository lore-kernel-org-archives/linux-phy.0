Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D20A8C38147
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jan 2023 17:25:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vB/Ky3l/GuoDn3gxcA20NERHPPubhlRVQRn/I3Vmk2w=; b=3r+JjEFtUWCTmA
	7Usya61/dIMxEmRMIbITThtSVAZQCgSOKiNOpyvGCGg+eg5I//IVRdgKCYBWmOAToj7SSbFkqYKS+
	U6g7uJ+2MR/y0HSDzGgMAyKFu0WUi6QY9lfWnSc6+1tUuBx1y2VLDbX8JRBdQpG5krqCgf9OfxBz8
	9kMvC6AVUCsvABwf5dHy3V2tO4+WkeZHPveWHcIQjpG2F5tuGWis9yAgkl/FPtyG8NqfIyS/RiTP1
	QZ0GAMTKeVngQY9niI+E5gHqAsgrgi+BYU8/ltaDVPf/zmnKJ3Oza+sMo5mxsa8s4U2mELr1jXBUA
	jf57vIvmIdecdlLBINDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pICC8-0020xY-7o; Wed, 18 Jan 2023 17:25:52 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pICC5-0020wf-Ms
	for linux-phy@lists.infradead.org; Wed, 18 Jan 2023 17:25:50 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 1E51BB81E0C;
	Wed, 18 Jan 2023 17:25:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E99BFC433D2;
	Wed, 18 Jan 2023 17:25:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674062746;
	bh=nbhFEkTRawXa27CXBBIvDMnrHC17HIfBOrRgIXMDf70=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KyhfcvNuwuxE3OsCwtJoWAp/DYCB/IJPegelC3qX6RhEyWFhr2nNip15QRf/WPZUS
	 G6/4due6FUXQBzp2fWMLPmZtymf6qDM9MYEbDhs6ejRKzFiUDd9Lqr5J3fZFkEZyeZ
	 W0Y6wHwR8dZvPfBwbq9Wti8rBu54CjX5TIzYTg3Wr00q4X0aswonO1XYCLDZlXswQk
	 ZSXcBayBPFBR/G8RxwWEECguelA2f+b6k37AbBt3AiKuVE6JHMkhGg97MwvPMr8zWb
	 8fJFNCuYZOAk7TGkFsreU/woCva4Z40Youbot2LuqsKfN3+D8g0gFB7pYOgDv2H1nJ
	 /LgddBC2sIpaQ==
Date: Wed, 18 Jan 2023 22:55:43 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 1/2] phy: qcom-qmp-pcie: fix the regs layout table for
 sm8450 gen3x1 PHY
Message-ID: <Y8grl2UjkGTOo/Y5@matsya>
References: <20230113212138.421583-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230113212138.421583-1-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_092549_908361_66A1BB51 
X-CRM114-Status: UNSURE (   8.24  )
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

On 13-01-23, 23:21, Dmitry Baryshkov wrote:
> The sm8450 gen3x1 PHY references the pciephy_v4_regs_layout while the
> PHY itself uses v5 regs. While there are only minor differences between
> v4 and v5 regs and none of them concerns registers mentions in
> regs_layout, switch the PHY to use pciephy_v5_regs_layout to remove
> possible confusion.

Applied both, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
