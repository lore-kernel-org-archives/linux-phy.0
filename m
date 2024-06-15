Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D608EC27C4F
	for <linux-phy@archiver.kernel.org>; Sat, 15 Jun 2024 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WLhaWZnuLZfSGmT7n3DvxvEIlR6brqcP9D6XetM/few=; b=2gie7mg+0el/V9
	4Y3Likc/TEx1dO+RBJIcq5k4WopC+t8HGqTCSbtbAkRuNRNoeACvpdNOpkyMrl5WG/BMH9e/Av5gd
	BzaK8hX25RXVn6LTxCGdFAO3qpbbtomj78CcamFBdZei5O7fOvgvqdLo7fB3wqAGG7fD8m+rJlmfC
	F/DyLMZf5iFVC20D9k+erUZqWp6zZiH/1RXIUTvsheUzC6YzCIYrKhgPMgeMkWegdk4dY52UnG+Rh
	NIqjYnKQiJBDHnxf8/8ATIMqVS5yO1eyEWKrhhyqED18orWH0hWqEfi4ezi8NHo+EkA8PASjgSVTW
	ExDRawsdjNhOhsyv262Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sISED-00000005Lw4-1iNt;
	Sat, 15 Jun 2024 12:09:53 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sISEA-00000005Lvc-3ijr
	for linux-phy@lists.infradead.org;
	Sat, 15 Jun 2024 12:09:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id DC30E60B96;
	Sat, 15 Jun 2024 12:09:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 060BBC116B1;
	Sat, 15 Jun 2024 12:09:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718453388;
	bh=e56elCVsYhzaI2+hNiUznG1iV4hQkayq6NJHiVNEkgk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=b8QHqyIv7MXOgxrbk/AJH2SpyB7L40J7K7ndde7X39Cq8n2QYUWRPoIUwYkTmhqTd
	 1K1KOK2Em+fC9JCQLUPvKDvQTFr866jV+y/D6Sxx8ViLw+e+Pgkn8sfw8/9gljZ68a
	 uIGxQ5Dao3My7H8NfMRxIu2NAQoCfnIwwjcTZdiwoJhifaTRuFKAlgHJIrDFhmHZVI
	 1etSEhGwfqceepTDWDENFI6LSGWavfL+qEtKYhUtXZ+0nB3MIbPCCq9hvqgdxIDYep
	 GXAde5qysJ0se1WzT28N9wNS8S+bq3+maUtAsWXx57qq8tTKhgRrRQmWRVGg1VJufL
	 f4kj0IPYgdAVg==
Date: Sat, 15 Jun 2024 17:39:44 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Bastien Curutchet <bastien.curutchet@bootlin.com>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, Bin Liu <b-liu@ti.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	herve.codina@bootlin.com, christophercordahi@nanometrics.ca
Subject: Re: [PATCH 1/4] phy: ti: phy-da8xx-usb: Add runtime PM support
Message-ID: <Zm2EiKTNR_cdLLoP@matsya>
References: <20240528102026.40136-1-bastien.curutchet@bootlin.com>
 <20240528102026.40136-2-bastien.curutchet@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240528102026.40136-2-bastien.curutchet@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240615_050951_093029_3EF17CA8 
X-CRM114-Status: UNSURE (   7.20  )
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

On 28-05-24, 12:20, Bastien Curutchet wrote:
> Runtime PM is not supported while USB PHY can be turned off from
> register accesses.
> 
> Add runtime PM for the USB2.0 PHY. The PHY is entirely shut down to save
> as much power as possible. This means that gadgets will not be discovered
> once suspend state is entered, and suspend state can not be left without
> an explicit user intervention (through sysfs). That's why runtime PM is
> disabled by default.

Acked-by: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
