Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9971CC433EF
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 09:11:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1aGie1V+s50uV9XqMG3CYIlTQ12BUUv4SaC0/jcsj/I=; b=W9N6QJtJHb5q8X
	ijpqYeGZCUvq6GPcv3jyl0qs58ioyII3ybg/8yK3ADe5pWYhLUPm/YHOBRNMb8GoHYAUARhsN7W5N
	GhtduoOs7/+doa6+fUTd48/4DFmF998td638neQW8++OcUSLAPKC1GDvyCJUQypCheSNIjJ63zZml
	H5YOjSQcsMeOZ+euKb9RxQ68eV8/syeFd8Ojw6SvYLH+fBh3TR54xwb9faKIvRlvabQX3VfXkHHJS
	rIEaMWKy4/wgFtRfKvle20AxIYRR5UIht1FAGbyxnjNuIFnA7lm7fxKywkQs0cNpRKvlJoioVHDny
	a/EwfSsie34FtxIXZbzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8eaC-00GXY9-UH; Tue, 05 Jul 2022 09:11:00 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8eWQ-00GVD9-99
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 09:07:07 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 82CDDB81646;
	Tue,  5 Jul 2022 09:07:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B1242C341C7;
	Tue,  5 Jul 2022 09:07:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657012023;
	bh=3ZpJpRNDhK6kBwRF3RuYIOFq7v3/dbRfERHQO2XKC9s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oglNQPqxphZHLSarXFIjRthMAFo/TsafAbm8rCG2BW4lSzJbXrFPGqILs8tdQYVnM
	 GpJzRjgiVgviHw11UOsQ+XRjqjARbK9mbrQKyp9qA+ZoXus6l4+eXvzmbdHZNGS4en
	 mFF3ETc27nnx0OuFnYTify3H+qKlJJahQZNRHh607EXDyNTbkCQ0T/srH2zWFtCvhU
	 smcQ+18wH7JFxBWq9i7pNdjLf3RDI1RFKQt1GKE6C8dSrNMWenenQ1j1WCkg4iHCPJ
	 /6aUKcr/DBCRKrO4RzOzbGdwlkvoJNOxEiCLRt+U1p4DnMwp5hM7rgenEiud91p3BA
	 a863LznbMhSpQ==
Date: Tue, 5 Jul 2022 14:36:58 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Stephen Boyd <swboyd@chromium.org>, David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 1/3] dt-bindings: phy: qcom,hdmi-phy-qmp: add clock-cells
Message-ID: <YsP/MmX96aIYc1p7@matsya>
References: <20220617103608.605898-1-dmitry.baryshkov@linaro.org>
 <20220617103608.605898-2-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220617103608.605898-2-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_020706_509210_8DC913D3 
X-CRM114-Status: UNSURE (   7.74  )
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

On 17-06-22, 13:36, Dmitry Baryshkov wrote:
> As the QMP HDMI PHY is a clock provider, add constant #clock-cells
> property. For the compatibility with older DTs the property is not
> marked as required.

Acked-By: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
