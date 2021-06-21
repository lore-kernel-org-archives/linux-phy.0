Return-Path: <SRS0=EqQx=LP=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4B54FC48BE5
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jun 2021 03:53:07 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1B42C6113C
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jun 2021 03:53:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1B42C6113C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KG6mfZpjX/lf1uarfV0m3xz/vTX63JBH/yuwuDgV5RI=; b=hXEJRCXDb48xGp
	h5DVsb8sJSqUpXYsv67uDBfTzu+RfuS05EbHTUFhBAujy/NkYUvbbW/YcZUX/QUZyJ/pIyoVRr5h8
	dwZW4lzVrW+Pu4RKBVu30nvAo91Kh26Z3QFk5Gj0qSK04i8evPGyMYWcmXLt+TbccmH5W2wVUxGSO
	nZyelfuYrGFkA94sNLImILLdSWOAbAw7zKM8NEVVmbe098Rp9Pxa3aO/R/Q61+fp80qA6U550O10+
	Hm4CxcqFHd9Z+CASGJ70E1QQnyq2+tVhWGIHNMZ/j4Xem+RgglWj/MqEBUGIVF3FcXcz0Zrm7M8K5
	M37lQlzPUaEhpLuQGn8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvAzi-0020LQ-KH; Mon, 21 Jun 2021 03:53:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvAzV-0020JI-ML; Mon, 21 Jun 2021 03:52:54 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id DBEFD60725;
 Mon, 21 Jun 2021 03:52:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1624247572;
 bh=RJf49uRgzXxA9bjN6VYQdbbDHBJXNIssYY4EJQsK6O4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nz+Xa9/ERTZcal8bRaRv9umf0lBsqYqUAybFBy7UOv5btP0iHDxX8OOsd4VRWbjIi
 AOCEnQCEvj5h2TrB4eL8VO+Q2ceb5bpCKE5YtUPhLBxsMCTY6Gp/9AL26ITmHKln6a
 w3GcvmZHU5M4VQPt/sB5ebpfo6izjsPvPDklJHWjq89vUlY6meby8IjAKlZiLFAxfu
 uYs6+blZjXHk42yr8+Y4pYjVWwGwZz4b0xJlQc5vor6TtoNwrQwGdWmcRNMEPrPJG+
 lCl9Chy7i92vfEkryVfmZH3cG4il5oUcUltfM4ginG5fE7lbgWJ8AJqAKbs6PNlyfw
 9gkaUH1u+XH+w==
Date: Mon, 21 Jun 2021 09:22:46 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Colin King <colin.king@canonical.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: rockchip: remove redundant initialization of
 pointer cfg
Message-ID: <YNANDuQgtahNHxiG@vkoul-mobl>
References: <20210609113901.185230-1-colin.king@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210609113901.185230-1-colin.king@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210620_205253_790953_E3D7CD92 
X-CRM114-Status: UNSURE (   7.45  )
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

On 09-06-21, 12:39, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> The pointer cfg is being initialized with a value that is never read and
> it is being updated later with a new value. The initialization is
> redundant and can be removed.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
