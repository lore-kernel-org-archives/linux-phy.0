Return-Path: <SRS0=N/27=M5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 29057C4320E
	for <linux-phy@archiver.kernel.org>; Fri,  6 Aug 2021 11:45:46 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E1D9F60FE7
	for <linux-phy@archiver.kernel.org>; Fri,  6 Aug 2021 11:45:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E1D9F60FE7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jx6NqHHS7/iSTJkDYixxzvZoCAFZz4plISgBSKo1drE=; b=VfK+xzk29lN8PH
	YaOlt78Q23rtjqQIbsP+MINIh3HSEid7T5BNLcaFPhakwG6BERfXVjVSqy8sygzT6d+q/sXgjRile
	JAdEcKjtC3VUqkKeMFPIOhH7GWX+LDOoLiUOAx1z2cXjUmrVrCH5lyS8wBMyJ5POio5tPRnF+lc7W
	E91wPnvlVYIiqpzTrhCB316vBeoFeUVXJwVD/nwH4e9AtYRkfPj+iiVBYxYN2eCHi2EX5v8363B/L
	Gq6GoFI1+V2e7EjaWyNf26gsJNNWDYweFaoGflHBIw0UXmREZj0N1pAIpyPR2i5zOv6an+e1Cc4Tf
	icZXA23NRMw7i/GmgShA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mByIL-00CN68-Bl; Fri, 06 Aug 2021 11:45:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mByIJ-00CN5b-JP
 for linux-phy@lists.infradead.org; Fri, 06 Aug 2021 11:45:44 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2054A60EBC;
 Fri,  6 Aug 2021 11:45:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628250343;
 bh=JYR7VyAfNwcUevOW25ql6QD/2c2IPR/gbIQt+dsn6q8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FhtbX2EWY9JgdFX+LYXf1cGhNbIVnqQsZDlivFT1wl/nltSdgvcAk5jAwohsTcKw+
 CZL2gFZCN+xpJu61FnOMAM2qrVO2ZIbfcKrI/sKv8y539WArsWJhUcqiOptGnc21ws
 3sbe+UFFVxr4F1Ues+MStCdPD9WivBqiQqjZtRB5yvAQYsPU/inXrSB1qNWNAdU+Ft
 leFzd1qjTbVpPwdvhAnpw5Z2GzWtuHqP5k8wtPIbPN4u5kkA+B00JqZglUsb5dqVKk
 ptuTV1OkcGHSdGUIUxadSbBWmA/Bcxg0NBFNic8YJKyXTXUu88nHG6TZmiYeBJuDdG
 mXmzwX+L9di3Q==
Date: Fri, 6 Aug 2021 17:15:38 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Randy Dunlap <rdunlap@infradead.org>
Cc: linux-kernel@vger.kernel.org, kernel test robot <lkp@intel.com>,
 Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-msm@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-phy@lists.infradead.org
Subject: Re: [PATCH] phy: qualcomm: phy-qcom-usb-hs: repair non-kernel-doc
 comment
Message-ID: <YQ0g4ogGvb4piZcM@matsya>
References: <20210723022548.25695-1-rdunlap@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210723022548.25695-1-rdunlap@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210806_044543_693356_79FBEFFD 
X-CRM114-Status: UNSURE (   6.06  )
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

On 22-07-21, 19:25, Randy Dunlap wrote:
> Fix errant use of "/**" to begin a comment although the comment
> is not kernel-doc notation. Just use "/*" instead.
> 
> Fixes this kernel-doc warning:
> 
> drivers/phy/qualcomm/phy-qcom-usb-hs.c:3: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
>     * Copyright (C) 2016 Linaro Ltd

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
