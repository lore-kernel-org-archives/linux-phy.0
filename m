Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CC24ECAAD3
	for <linux-phy@archiver.kernel.org>; Wed, 14 Sep 2022 06:11:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+RjkmFwk3VARq03J/YgWaEqwgvMzyd9oaMoynEGWYec=; b=RZMHkfqmok9o+7
	B0LmTjbz3yyYrhlsYUrXW9NZG2kVShr7hYKGQgvfJkIsu/y1H1rIpF6lF2k4dOfe4GQcX2q2P3xP/
	3LG4apukQRDmtniphberlE/ELn9saL6pxfgHvLUqiZGA+JRd7jJAQXXscaf0vN8RH5tpZChfEazwZ
	hVA8JINsWEzsx+v2iwFsj7TKC3YAVwV2GqrL69Stellcy+3wcq1h+F72HT/cJgGla/bQvGjjrAI3a
	gAS4stV+Z3KyR228ByZBOA9rmf7f8fuqKKuBlHPHg31q5XjzuopFZf7eOv3v4dLT34+fdobA3ZVPq
	DvH6CxPujsnpGghAvaAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYLc9-008GDs-01; Wed, 14 Sep 2022 06:11:13 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYLc6-008G8u-FR
	for linux-phy@lists.infradead.org; Wed, 14 Sep 2022 06:11:11 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 33F9161825;
	Wed, 14 Sep 2022 06:11:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92EBCC433D6;
	Wed, 14 Sep 2022 06:11:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663135868;
	bh=l3POCh1A9WRyNC+xgdmasXmOBVuTlOUtQ6gCZgppjmY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UTFKiq4gC6Wld5PnTagomHBJJmaEoqtyNTAP0e8AjU7WLIrb6JbxSsWOjrso7saci
	 gqOVZUAsQpriepShunlr8lT3WVwAfg2AayLxRtZgEkW0Bptg4r7XlLemomUEtIjzUs
	 oshbG0yd3Jx+M8CGMZ9g8FFA0/h01thZywo47+rPPY7ArpRLI1mPyc7BBBMMzz4BNF
	 9SftonXp4rk5k5MmBVfezAFqf+wkO0mOw/GUMvPxJqlRDd4Chg82rWFkdST7Q9a6fu
	 qSpVo9USz3aRSOAfOEx1otSqMkGrqAIeQYs7O9ykfcOocxhOa5p8pPOunHy5rH7Cmx
	 YcoanQEuRhNDA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1oYLc4-0002vg-Nt; Wed, 14 Sep 2022 08:11:09 +0200
Date: Wed, 14 Sep 2022 08:11:08 +0200
From: Johan Hovold <johan@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/3] phy: qcom-qmp-pcie: shorten function prefixes
Message-ID: <YyFwfBkS9sbGtDtY@hovoldconsulting.com>
References: <20220906074550.4383-1-johan+linaro@kernel.org>
 <YyCZgHx66V3rhv7u@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YyCZgHx66V3rhv7u@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_231110_586654_D48C365C 
X-CRM114-Status: GOOD (  12.83  )
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

On Tue, Sep 13, 2022 at 08:23:52PM +0530, Vinod Koul wrote:
> On 06-09-22, 09:45, Johan Hovold wrote:
> > The QMP PHY driver function prefixes have become unnecessarily long
> > (e.g. after the recent driver split) and hurt readability.
> > 
> > This series shortens the "qcom_qmp_phy_pcie" prefix to "qmp_pcie" (QMP
> > likely stands for "Qualcomm Multi PHY" or similar anyway) and clean up
> > the code somewhat.

> > Once merged I can do the same conversion of the other four QMP drivers.
> 
> Patches welcome!

I went ahead and did the corresponding changes to the rest of the QMP
drivers so the result should already be in you inbox:

	https://lore.kernel.org/lkml/20220907110728.19092-1-johan+linaro@kernel.org/

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
