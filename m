Return-Path: <SRS0=DrSA=NA=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5DF4C4338F
	for <linux-phy@archiver.kernel.org>; Mon,  9 Aug 2021 04:48:19 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8E88C61051
	for <linux-phy@archiver.kernel.org>; Mon,  9 Aug 2021 04:48:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 8E88C61051
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f+Rdgm2I8pt5kMHR0dliA10HWICWy3xad0tLqH3fmlE=; b=SoJ3HJWXA/Qy30
	QQmbSctfhUcze+SSfBwM9PihYWabjwyBi6lskMy/23sbHsa7W4HNE5oqGmK3uVlIP+PJ9B3xoNwq9
	ibCil5nrXZhvOCe2h/SLUaK0RReQ6OBL8pzEINkMIfhdtwRBVkdahjxpF7ffcwmDhRwjZo/OH0kBR
	e6QMRYfKcDx4XnBODOZrMkWmUStK9stkkGG+4NCckg2MbPANOXFiPlbgd1Vyy2pLro9L0+6o7F405
	CkpBuUB8kSmUbseFyzc1Yg82BJi0dt6JRCgBLKntfOxygGslFFMntCkNSAAuvP7LiATDILCK42FXm
	9r0rsnKRzrUUeGezuIrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mCxD0-00H6S2-Vf; Mon, 09 Aug 2021 04:48:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mCxCy-00H6RT-R6
 for linux-phy@lists.infradead.org; Mon, 09 Aug 2021 04:48:18 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0425961028;
 Mon,  9 Aug 2021 04:48:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628484495;
 bh=lZznYktlX+2ikqPLn6aMNgz3Py3XN6PikBXUyZCs/W4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uuFWb/MxmKMGFWOxlI6lrvVoAmJNyPUEj0kE/GjgaafOY+d68y4tLyukQq+b4oZJH
 w0cKfGFVR0HZrwm6AyQgJMJ5HGei94gbhj+bqN8Rrnxhduwbbb8lmWcYPp7qM8pEOp
 CbHVjBRVgHYsjLRCY88XSkIxQ7LRUj8F9YN8mmDlDHqbQyBcy2gAsBp20ZdafUmCf+
 Xqx7gomc+gPKVBXd89i7m4jDb2L6qdrheGDat/13xfqD9FKUWq5C35opLmOPU3FwXE
 E58R73xxk3a9oIHvjLO3PUk+Hk6nLU4uVLpDgVeEwVaK6WqW/9lpKgK+ocmVcn/8ht
 AePu9e94SuO8Q==
Date: Mon, 9 Aug 2021 10:18:11 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Iskren Chernev <iskren.chernev@gmail.com>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Andy Gross <agross@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Manu Gautam <mgautam@codeaurora.org>,
 Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, phone-devel@vger.kernel.org,
 ~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH v1 2/2] phy: qcom-qmp: Add support for SM6115 UFS phy
Message-ID: <YRCzi9tXsUVi5kHS@matsya>
References: <20210805091727.942471-1-iskren.chernev@gmail.com>
 <20210805091727.942471-3-iskren.chernev@gmail.com>
 <YQ0xrgDjxXeNecAS@matsya>
 <86fcdc11-9f2c-0aa0-ebab-a26fa9ac2aca@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <86fcdc11-9f2c-0aa0-ebab-a26fa9ac2aca@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210808_214816_942640_85DE5E58 
X-CRM114-Status: GOOD (  13.16  )
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

On 06-08-21, 19:09, Iskren Chernev wrote:
> On 8/6/21 3:57 PM, Vinod Koul wrote:
> > On 05-08-21, 12:17, Iskren Chernev wrote:

> > why are these registers 660 specific and not V3 like we have for
> > other generations..? Quick looks with V3 regs tells me that seem
> > similar....
> >
> 
> Well, I looked at them for a long time and the only thing that is similar
> are the first few QSERDES registers from COM_ATB_SEL1=0x000 to
> COM_BIAS_EN_CLKBUFLR_EN=0x034. Everything else is different. So I can re-use

Is the offset different? I thought all Vn registers across chips do have
same offsets..

> the V3 for the similar regs, but they are 10%, so I figured instead of combing
> through all of the sequences to save 10% of the constants and make it slightly
> less readable just use new constants.
> 
> Let me know if I should reuse the 14 regs from V3.

reuse yes, but would like to understand more why offsets are different,

Can you point me to downstream code reference for this?

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
