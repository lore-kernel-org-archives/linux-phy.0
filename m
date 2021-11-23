Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B3D8C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 23 Nov 2021 05:08:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AR7u+M7tLkRbLg0XSzA1tDitHu1eDXTotMHWaZGEUII=; b=qMEdQ6dboehB6k
	+UqXnHTkFydKDOdUNY8sOqx7DzSWUyTpaPMiruTmFgzSjkTPoZxVJDEIMU2jK7XcDxEWO7sz6QVou
	raiM8fXIPd1l0vl8jFnXa4oCaYEQcHsCuBtq9YwF+pVdplDiO/pm58f2mAEB51RZrSeJslRqwCHVt
	lpbdBZS5SMXcNiztbT+kkx95fL1H6RQ/Puxci8MnUSbkgjEoZhLhCn05d3yVkrrLaeDvCVWY4Nq1a
	+RQvtdLAe3nVONatAzb8j+AK/rEGvAq0WuMNCZRMBVYnmvCkfP+jX93GlrHrYvMNmU8fVfl5Pzj7r
	CpPoZkcQFr1Z8DuEbFUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mpO2x-000ooX-Hh; Tue, 23 Nov 2021 05:08:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mpO2u-000onv-OI
 for linux-phy@lists.infradead.org; Tue, 23 Nov 2021 05:08:45 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id A8E1B61074;
 Tue, 23 Nov 2021 05:08:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637644123;
 bh=0Ykfozn0BupreGXoNoCtnkiN7JS1YI3v4hODaS4wFaI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XknhcNwf8kjExMqMmWVkF19158iOTvZxiMLK9TvvrSN5E+ZaQYuW7wwoJVcbD3AGq
 BoKMdF8N06OUDHCaCAwnXW5mgKPYzlTB2Y4Ggf/RRwuek523BbYQv455QyGn+vCOwe
 sdTm8XobaQJ+FFvq+G9vgl77k9IQvR2LAVX5bB+2JeG5UuBiLQRN7CXyz/RzGd9i+s
 zgo0vm20i7TzZtk5fjdO987A1BBhamG3kpoHETcgri1I6iOXwL9njfza+LOwoKc2EF
 Tse5n9tWlKHZQ1opXwZrank7JfbeYNNLqoLhusIe19OGjkdHKlG8adsQNA5jl+zb/q
 0OhU+vHDBofnQ==
Date: Tue, 23 Nov 2021 10:38:39 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: linux-phy@lists.infradead.org, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Randy Dunlap <rdunlap@infradead.org>
Subject: Re: [PATCH v2 1/2] phy: qualcomm: ipq806x-usb: Fix kernel-doc style
Message-ID: <YZx3V3V1sU9zv7iG@matsya>
References: <20211120061531.410771-1-vkoul@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211120061531.410771-1-vkoul@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_210844_841936_773A7974 
X-CRM114-Status: UNSURE (   5.99  )
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

On 20-11-21, 11:45, Vinod Koul wrote:
> The functions are documented but there were style issues, so fix
> the style and add missing description for phy_dwc3
> 
> drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c:130:
> drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c:174:
> drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c:212: warning:
> This comment starts with '/**', but isn't a kernel-doc comment.
> Refer Documentation/doc-guide/kernel-doc.rst

Applied both, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
