Return-Path: <SRS0=3Sk+=OV=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A37C8C433F5
	for <linux-phy@archiver.kernel.org>; Fri,  1 Oct 2021 08:19:55 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 74CBB61A8C
	for <linux-phy@archiver.kernel.org>; Fri,  1 Oct 2021 08:19:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 74CBB61A8C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U8SYhuXahDpS8oUh7quh9JaIaJLB/PkxTMPnzhYk4c4=; b=L0YlSV8v28ZIDq
	43fR2+oc3n/d2wLV2E0VqkEtmH2QdXlcb9j3dWLx6rhDrVgOC9A1bANbVl2cykJvNrVXj1FjUVlfn
	IjBeSXgZyYz+kOJ2rYh2OEI/QQlG3F14qs1w81QKT+YZkBgXz6iv8kwsQX3wINW3/lR/SGQf9vQ/5
	e5dTo45QRUsv0cKcoEcUYvs/tNKBrHk6u5D/hw8SD1SWZ4EwbvjGlDwXIMOgD/Uu2sCknNaUuvtxR
	xyZ4XKHSGqn/SH0eTKX4Opf+XB8xYUWyTu8EYycv4lduGQ/sEZu++2V1OuGByve9sFJnqH6We8/3t
	UVtfi+3USJZdqPcWIpFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mWDlq-00H3Dk-W3; Fri, 01 Oct 2021 08:19:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mWDlo-00H3CV-Jc
 for linux-phy@lists.infradead.org; Fri, 01 Oct 2021 08:19:53 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 393CF61A63;
 Fri,  1 Oct 2021 08:19:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1633076392;
 bh=SXKYoP4v8q0a1PDAzV+UPRkyOgdg+9D+MrmjRdjtW5M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=X8R0S1Hv/XuLUH6kBia6UAlnKkf8cuhAqoWtqu+sdRZ4gpBdX8os5qki8Et1VmlnZ
 ZAIjJzT4YjhVK0PwN3fmKoBuDtkMKLBwXQkoz0lxEkxRsEKS8R3L4XTUihjWz6r5NX
 idFI0FUPmh+Et0tfqYesGHdQhiPh5pfebO2zkq+wGHATg/HPrzBIvuwtca2jDkNRWX
 A9sX+4HiX/ZFIMHQpMR3PiaT2ck+2NmdP0xjIHt9n7Xd4ZFaSZA5ZuBZ+H1MjidnAn
 BjmpLjAN6sZv60Xuw9FIDUgQSi3wuWc/wy4BnZQzey8yFW91WGx9/39O4wGdVerS+e
 Jm5GJMkkWbvcw==
Date: Fri, 1 Oct 2021 13:49:47 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Shawn Guo <shawn.guo@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Loic Poulain <loic.poulain@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,qmp: Add QCM2290 USB3 PHY
Message-ID: <YVbEo4i5T63O+RnC@matsya>
References: <20210927064829.5752-1-shawn.guo@linaro.org>
 <20210927064829.5752-2-shawn.guo@linaro.org>
 <1632745399.282824.3097156.nullmailer@robh.at.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1632745399.282824.3097156.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211001_011952_698931_381868ED 
X-CRM114-Status: GOOD (  12.73  )
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

On 27-09-21, 07:23, Rob Herring wrote:
> On Mon, 27 Sep 2021 14:48:28 +0800, Shawn Guo wrote:
> > Add support for USB3 PHY found on Qualcomm QCM2290 SoC.
> > 
> > Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
> > ---
> >  .../devicetree/bindings/phy/qcom,qmp-phy.yaml | 27 +++++++++++++++++++
> >  1 file changed, 27 insertions(+)
> > 
> 
> Running 'make dtbs_check' with the schema in this patch gives the
> following warnings. Consider if they are expected or the schema is
> incorrect. These may not be new warnings.
> 
> Note that it is not yet a requirement to have 0 warnings for dtbs_check.
> This will change in the future.

Shawn has fixed it at: https://lore.kernel.org/r/20210929034253.24570-1-shawn.guo@linaro.org

I guess you are okay with this patch, if not do let me know...

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
