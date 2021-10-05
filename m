Return-Path: <SRS0=czee=OZ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4DD29C433FE
	for <linux-phy@archiver.kernel.org>; Tue,  5 Oct 2021 07:47:16 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 223F061269
	for <linux-phy@archiver.kernel.org>; Tue,  5 Oct 2021 07:47:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 223F061269
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sgfhvbA1eASz4tqKDC9D6Q68nI//9pP+BUKwPQnzObQ=; b=QzM64ZVGRxpk9r
	I3HSam+kl+Kl4mOivP4N7qBh/pZyww977tN7arDlf5yJRlaTV21upGiQ5ZWNAy6bhxQQUiMK4sebD
	ms7mx7SFyUutp7A+opiuz6D9s598I6zoJO4asdEcn8u3qrqf+Brdp/JKimKDRI+4y/2NeeYNW/nZ7
	LHx729gDukPFuPCEgyjpKuOH5j0IFqDvdkyQES+3rDqLg2LnTA8UVh8nkfWQ/T2lCmns0++5Oois0
	tqlx0zBPmj0Fo4gIyngyDwZ2Q/nbfsw31owlHkOUVeAI/EpVtoRgI1ztAunxgH07g5B9IhuRoWp9t
	GitHuszghhLj847JddGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mXfAR-009QWp-NO; Tue, 05 Oct 2021 07:47:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mXfAP-009QW0-FJ
 for linux-phy@lists.infradead.org; Tue, 05 Oct 2021 07:47:14 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3FFF761251;
 Tue,  5 Oct 2021 07:47:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1633420033;
 bh=PLKm3SW5pvzWVqjufcsaKBrj3v0KlToIF4EnLL+WrIg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rWjya8zaTaurPSb3ypmHrY7FnSzLtTFPupaL+GI16OjF5I1OpWNlg5UUouNxVn13S
 0Dd3ovDKeS/VJ6JUUAZ1yfimNl0tgraTSo5iwVgAtO2JyQFo0Xc6boCzALhfsIrA/Q
 ZwbvU/YQf8mh+lSjYv3aFPnswmiEV3OevubqmJz+OZ3QK4bEi5KhQGalbLcX7+/YWo
 1K/Am/XrbGlVUbGooaJrUYnkpYmUX0C/FmW1Lkk4NISJpm6jaqAt58mEIqOSYU3EEI
 yqlWApTnAgPqouQIltgnzXau9fXS5H9ta93HmpBdcFVmLL3WBduweDkbUllJzEWXyG
 aYkRXkBlbPUGg==
Date: Tue, 5 Oct 2021 13:17:08 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Shawn Guo <shawn.guo@linaro.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Jeffrey Hugo <jeffrey.l.hugo@gmail.com>,
 Jami Kettunen <jamipkettunen@gmail.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/3] Add missing vdd-supply for QUSB2 PHY
Message-ID: <YVwC/L25ss0QjUiF@matsya>
References: <20210928022002.26286-1-shawn.guo@linaro.org>
 <YVbD12kTfbGmRYId@matsya> <20211004030128.GC13320@dragon>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211004030128.GC13320@dragon>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211005_004713_548183_C2D3114B 
X-CRM114-Status: GOOD (  16.94  )
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

On 04-10-21, 11:01, Shawn Guo wrote:
> Hi Vinod,
> 
> On Fri, Oct 01, 2021 at 01:46:23PM +0530, Vinod Koul wrote:
> > Hi Shawn,
> > 
> > On 28-09-21, 10:19, Shawn Guo wrote:
> > > The series adds missing vdd-supply for QUSB2 PHY which is required for
> > > digital circuit.  The driver works right now likely because firmware
> > > already sets it up.  Add it to bindings, driver and DTS that miss the
> > > supply.
> > > 
> > > It should not cause problem for existing DTBs:
> > > - SC7180, SDM630, SDM845 based platforms already specified vdd-supply
> > >   in the DTBs.
> > > - MSM8996 and MSM8998 platform DTBs miss vdd-supply, but dummy regulator
> > >   will ensure QUSB2 PHY driver works as before on these platforms.
> > 
> > What about the rest.. I checked SM8350 and SM8250 mtp ones are missing
> > this. With the property made mandatory, I guess it would cause these to
> > fail right..
> 
> >From what I can see, SM8350 and SM8250 use qcom-snps-femto-v2 PHY
> rather than qcom-qusb2.  So they should not be affected by this series.

Right, somehow I seem to have overlooked that part :(

I am applying this now, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
