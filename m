Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F125EC6FA82
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 13:23:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6BFRPy7GfchebNa0wlelx+z/B75+q3R+vNWhQ5g6+NQ=; b=4WEtLu6YgpTJS3
	bifqO4egmGkB/0QPmom7IdCXCjTfsCvjwcNjAfYhXXHK8lzKHbNGfpyvj89Z4RlNA/U8xzOynGKxb
	bOFe9aYmylfgBy5UNsgHp6rS/5/gB0l3h4EdLv4aoJmJRmjRdAGisMGLVqfgDdqCJx3UG1gHA/I3D
	ZoJU3OAjFmUi7eDSa5RhTJ0kyKWZsuuM0j/gLXTzAmhpiwQgTW4aVflUsPMwgrPLrmvFuLUoVKvhB
	AieX7v54ipS02BiJUaCSIHgan3oPoBYBaT6n14/DGJourbQqv1OnFVoeJpqLUTdGcXGBS/RpEvpsN
	KWMHb75fdNb3NAp9+otw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWdyK-00GIoa-FI; Fri, 09 Sep 2022 13:23:04 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWdyH-00GInX-IM
	for linux-phy@lists.infradead.org; Fri, 09 Sep 2022 13:23:02 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id AE57561D0E;
	Fri,  9 Sep 2022 13:22:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 17A0CC433C1;
	Fri,  9 Sep 2022 13:22:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662729778;
	bh=KEhtKNgdp8JDc/KUsE48MzFDBa4h3l0bmyTow/HSYM0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gDWhPJ176Axn7v/bTfnHYLtTZ26sh/MnsZca+jKdo0zl+aXS5fdh0uD62JoICX0wf
	 X0lAnzMxkbMOIpRQLFaw6Mv+kJ+4RZHhPoXkYpr14eanZ9qz8vTiF8WqElojh38UwL
	 YhwrF0QvoLrLWqvip6bvqtpNoRS2UPkm/bh86sTSNQ1YxEZTkdPwJwN1W1IjCKYqYD
	 iTmnFFbJiAv1eGCwJIIBd8v9JljGbxLB8zQtt1Q1W0XUe9lVIfAmV7wtABSOGp/8bI
	 gyPLapOIa2u0gVk1u3+hMYPDy3R/6562JnDXlZ3yIE8FTB/QdKVGU5D48S7/xjME99
	 fRz6hAcX/zqfw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1oWdyO-00025e-3x; Fri, 09 Sep 2022 15:23:08 +0200
Date: Fri, 9 Sep 2022 15:23:08 +0200
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 09/16] phy: qcom-qmp-usb: disable runtime PM on unbind
Message-ID: <Yxs+PLMvqbuZ3242@hovoldconsulting.com>
References: <20220907110728.19092-1-johan+linaro@kernel.org>
 <20220907110728.19092-10-johan+linaro@kernel.org>
 <1e502a39-6ba4-079c-576f-10fff260d131@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1e502a39-6ba4-079c-576f-10fff260d131@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_062301_660402_6D17D7DD 
X-CRM114-Status: GOOD (  14.14  )
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

On Fri, Sep 09, 2022 at 12:45:43PM +0300, Dmitry Baryshkov wrote:
> On 07/09/2022 14:07, Johan Hovold wrote:
> > Make sure to disable runtime PM also on driver unbind.
> > 
> > Fixes: ac0d239936bd ("phy: qcom-qmp: Add support for runtime PM").
> > Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> > ---
> >   drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 7 +++----
> >   1 file changed, 3 insertions(+), 4 deletions(-)
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> 
> Nit from the patch 01 applies too.

Still very much disagree with you on that.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
