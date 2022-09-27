Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB59AC6FA83
	for <linux-phy@archiver.kernel.org>; Tue, 27 Sep 2022 08:27:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Jmz4+5zgyiSpkwK0D9im7At+eak376p1U8XiGNrjCw=; b=rdTKIVU35eeX56
	gPbnKmJD3F7qLFez3MR5wZwFWMucLCWUi16OdjZ5hD4qqP6BWFG4ydSjPNjzdvpZN0EBkrveN8L//
	b54JcDJiyUnBs3eJZ73cHJB6vx9nzInTgYaf/EINSMd2eaxwsX5A2t5OktyZWkaq9fRKy5+19t+pF
	1+0IhC4cURL7q/0lAUSZfvuRMD014yyxmXPJZV5kO+2+78VUb7RwHx/NKKf8RSTDEOBrB5xNKMOE1
	WQVtTEZFrLQa2zev6ToO7kFkTn4uo/alJCcIaaGTY0KcWGoGycDsSiaXBlpP6IcU+ZYdOy9bAOAaZ
	opLlbEPGKaedsWZzZhTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od5vw-0098il-S1; Tue, 27 Sep 2022 08:27:16 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od5lx-0094bA-0t
	for linux-phy@lists.infradead.org; Tue, 27 Sep 2022 08:16:58 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 3FC67B80AD9;
	Tue, 27 Sep 2022 08:16:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DEC51C433C1;
	Tue, 27 Sep 2022 08:16:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664266611;
	bh=HFVQ3B2gRtZ+PI8s3sN7EZre2WiSSz8N337/Z29bmXQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nZDSXlVSOSDYtVCiOVrsqZQRb8nTuzM/0diml8OIQMwjayIbh+rDUA3UafAw89h0C
	 1sln5Q8SKb02exiWI4+nD+oWc/d8lKFbRAwRjD92wJMHmmHZjyqW5zFOQ6ThJzR+GZ
	 isefmAm3w+O8PiGeH183ATtyuoSm31jVcuo7n7NtDBJ+HaDJTgvp3Nr5Wr9/dCmiyf
	 8St6Ndm8400PRZCu/01ME8tdlTLE9eeB92jYImdG7hhWcK1uyUl7DGDNjoKRP81Uh1
	 jXEqe0heSGxtxcnDqVD4AFLc07rNf+gDg1GYrAoPs89uH8dfZ/Ksm5ZoSE0eRs22ct
	 OJDopY4lMz8MA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1od5lx-0005WM-VP; Tue, 27 Sep 2022 10:16:58 +0200
Date: Tue, 27 Sep 2022 10:16:57 +0200
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>, Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH v5 5/5] PCI: qcom-ep: Setup PHY to work in EP mode
Message-ID: <YzKxeWrhed20XLKj@hovoldconsulting.com>
References: <20220926173435.881688-1-dmitry.baryshkov@linaro.org>
 <20220926173435.881688-6-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220926173435.881688-6-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_011657_344346_C4119775 
X-CRM114-Status: UNSURE (   9.83  )
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

On Mon, Sep 26, 2022 at 08:34:35PM +0300, Dmitry Baryshkov wrote:
> Call phy_set_mode_ext() to notify the PHY driver that the PHY is being
> used in the EP mode.
> 
> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Reviewed-by: Johan Hovold <johan+linaro@kernel.org>

You forgot Jingoo's tag here too.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
