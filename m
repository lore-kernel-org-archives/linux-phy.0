Return-Path: <SRS0=wJWm=NQ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EFE3C4338F
	for <linux-phy@archiver.kernel.org>; Wed, 25 Aug 2021 16:05:33 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2E829611F0
	for <linux-phy@archiver.kernel.org>; Wed, 25 Aug 2021 16:05:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2E829611F0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=fy6BqeJqu6kB5mmkrdLBjS5hLwBlcuGJtAMzqRFrixk=; b=s617mkAGjziH7k
	Ur7lb+gmuDarxZj6Y0HX2jBTOUKIToZ8Ot6RrxBkCYaayyTKSByH3P1nEy6DJd5ikI85qglvmSJ5l
	MfATTWz/xbPXzA1BC4UsnL44d84i0XrI/dS/RSkduKvsIjLmnmRcwqij9/p9MesiV+iwcLZOZNG1i
	QJjLcI+1AGEyGGuymvzZx85V9/2LHCd3zAbtUNZMxHbrMO9iHDW2K3fUZ0SwZReCmxRwajqkhlZ9Y
	KbWxSkRksq8aYHtN4e46IHz2NnvtioZS1YatcN6zKl/XSblZsxpZAVedO6mqW2bV5EHdrO3iiKP5v
	v3PDDvcOF7pHeqUnIPUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIvPA-007dlK-ND; Wed, 25 Aug 2021 16:05:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIvOy-007djZ-D8; Wed, 25 Aug 2021 16:05:21 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id AB3E1611F0;
 Wed, 25 Aug 2021 16:05:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1629907518;
 bh=3lcphP5vKv3qnP/DNojhiVnGIPCbkTuJflFv/9dmYpA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=d5AJV3dabXN9lVbVDzAxoxDSMEfw9H23+MJQcJHp9ewBmTbfpmkl6CekJsGffGQIU
 5K6Iiq+we5kvSoSKKXK1zKtUzHAVh5MKeOwZOQRE32AnvLkybRi6ouxkPmbWzObXRZ
 X6H/6EB8HTkoS5tv/tuDl7QOVBcaZrEqwf+6uGoyeEHGh0toxcuLJxw9MWY0V9KJnx
 l6stObsbtxBRn60begy/F4gER/Y0v5Q9iTlnDEzPsOdcGNW9b+0/nQ0J4dIYmUSGui
 0dwLms/9GNLatGp69v6oB/r8XqDj8m7QAvQ9GkY8KwUFkcYl7UwTUOVz4B90+V+Rt+
 +/MZH4AXQhHOg==
Date: Wed, 25 Aug 2021 11:05:16 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Rob Herring <robh+dt@kernel.org>
Cc: Baruch Siach <baruch@tkos.co.il>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Selvam Sathappan Periakaruppan <speriaka@codeaurora.org>,
 Kathiravan T <kathirav@codeaurora.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Jingoo Han <jingoohan1@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Robert Marko <robert.marko@sartura.hr>, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, PCI <linux-pci@vger.kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-tegra <linux-tegra@vger.kernel.org>
Subject: Re: [PATCH v2 2/6] PCI: qcom: add support for IPQ60xx PCIe controller
Message-ID: <20210825160516.GA3576414@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqKLijW0H-f0Ptd3EKrE5mRwtQK5StOTzs3b5UesuuVKdg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210825_090520_506268_5F20A31D 
X-CRM114-Status: UNSURE (   8.43  )
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

On Wed, Aug 25, 2021 at 10:03:51AM -0500, Rob Herring wrote:
> On Wed, Aug 25, 2021 at 9:23 AM Baruch Siach <baruch@tkos.co.il> wrote:

> > Why are pci_regs.h register offsets in decimal?
> 
> No idea...

That does seem confusing and error prone.  I'd merge a patch that made
them hex to match the spec.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
