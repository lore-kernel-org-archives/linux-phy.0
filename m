Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79BA5C433F5
	for <linux-phy@archiver.kernel.org>; Thu, 27 Jan 2022 06:42:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pMaSld2xcIZmkPn6lYQdIW8QKNv5D4EfC4wTrBYRZbA=; b=AqG4l+4UZhJ5UM
	18T6JIFUE7lHG+u2kSyiB9Z1le3+EZk2yV0fh30084J9f1UgxAad6Oi6qdElOCoe2EQf0bE5QDJEg
	HW9q++kMguTbSJSWFBaKbsrbZ/KdKHLzfwXWXk517US/pkldJDlmVxrynhVD0jlYg7Hpf5ofelFCv
	eJrB1+LKXKZuuDt+iNN77fLk22EH5NuKKmlNl4TNBHpA6LShFj5FcZhFGWezLA6kV7Cy93O1OxDv1
	d/csPk2UuOrw2XdmVx//csBUIzRZL/ZTBAy2Om5QXw6Qtb2V+l028sg10NXAbOa1kOKkrmSCTGRpI
	v+DIqDOaivpLF2D1yKPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCyUb-00EZJx-S4; Thu, 27 Jan 2022 06:42:49 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCyUJ-00EZCD-TF; Thu, 27 Jan 2022 06:42:33 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 3681C61934;
 Thu, 27 Jan 2022 06:42:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2FF12C340E4;
 Thu, 27 Jan 2022 06:42:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1643265750;
 bh=9qlTOBaZNbP5dnlI7UztbiokMnyc69tSR6O4YogHR7Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oT3vbOUYhUAMuY09dZB68GNBA9vykrSTmEdZdqPdCmaGpns23+JAGCt+7Q8jHM5Jg
 hhh7/0ycc13nKEdqIQcpg5Tx1rx87tbG//rOIh//8RCiHWr+YbOwTQ0ZwlwUi1aqY2
 ljGIEe65jW3s/met8orQcFc6cDFhfCGv5OlXeDfIRyJzEhN+ZlHV+Pyr+KWIM3vMRC
 GbZgIc8xk3s1DiVzgBe2TXU1V+wV4fLprAQejgCOno5Yd1RylnUizzBKx2tH6VXXYq
 gh1+6dQW5w54G8VEue2W3RTZUGsVkLnbjPRXGNFFPnNYen68bdODXneLkeuz7DSbDW
 fxHUPoWsbQBzw==
Date: Thu, 27 Jan 2022 12:12:26 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Wan Jiabing <wanjiabing@vivo.com>
Cc: Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, jiabing.wan@qq.com
Subject: Re: [PATCH] phy: phy-mtk-tphy: Fix dumplicated argument in
 phy-mtk-tphy
Message-ID: <YfI+0uzGZDLig+zC@matsya>
References: <20220107025050.787720-1-wanjiabing@vivo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220107025050.787720-1-wanjiabing@vivo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220126_224232_012572_6FFD8804 
X-CRM114-Status: UNSURE (   7.51  )
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

On 07-01-22, 10:50, Wan Jiabing wrote:
> Fix following coccicheck warning:
> ./drivers/phy/mediatek/phy-mtk-tphy.c:994:6-29: duplicated argument
> to && or ||
> 
> The efuse_rx_imp is duplicate. Here should be efuse_tx_imp.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
