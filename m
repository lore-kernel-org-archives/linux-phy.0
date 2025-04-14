Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34F16C369B5
	for <linux-phy@archiver.kernel.org>; Mon, 14 Apr 2025 08:13:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1X893QXCdys+iQtM6tXOgQaPFOZm8Ju4lOOqEOWzy+4=; b=he9li1p7jP+HTv
	EQyx4HUYU8SS1kmtpUgjQhGA6K79lXsSljUjFUGMoBDREP/ZXrgH8UP3mtF/JrsrjLxNnw/tEBQm8
	wGNq9NC8yt6YRpmbuoS7HoPIHtkwUjs9eGE5UMCvO9AWXyt8fbhGOKMtm9+mDCXPCYfhRy43OVsRm
	ZmAclZ9O1F7uq7qVLKmIwjwyumgINI7AMG0GBR9rRbvWKloFMjPLeHrefnlxDjp/aZEzLKItG9cx/
	XpGCKUDxVPfbmOvlYUY61W/dzHmonZFvULrmmZZXoE/cItiNCZQD24jlaRZaj9zHvhufVkQZYwQEc
	/EFonXd9pbf2nNPX2Spw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4Ewv-0000000132Y-44h3;
	Mon, 14 Apr 2025 08:13:49 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4Ewt-0000000131l-1dJg
	for linux-phy@lists.infradead.org;
	Mon, 14 Apr 2025 08:13:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id D5D135C1120;
	Mon, 14 Apr 2025 08:11:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88A79C4CEE2;
	Mon, 14 Apr 2025 08:13:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744618426;
	bh=/GliPvWxqmWkfViSv1OxAlqTAyRsqoblIC/0Lf7EkFM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rxXdKqWribRXynbgV7o3GDzN2oslDuc1R0xhHvkUN73fltLvhGPwB3GdIpID/30zV
	 NK9sDhneTmHDTc7VNkc92ieX2mDNwAb8xuufHOx+7qIt6vf3tPW/pb3nE6qf+Fdx4v
	 mYNGgzlI6jVS5J+fTbaid5jA2YKVcIBCLZZHUDsQlr6oXF6hLkbKBHsGkJ8/KAbvfy
	 7uYDM1aE/8iBEVoAhSXLkdpwQwpbsSfj6pXL+SYUdDtQeRkCAfGTH08wuF3tFWV89V
	 KaHlrQY6IkuF94u808CWE+Y1U0OSoTu6HaA2EIKGLGyASZocH/pW+goowlEVcKyxw5
	 CjRgstDAy5n1A==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1u4Ewn-000000002q1-2onL;
	Mon, 14 Apr 2025 10:13:42 +0200
Date: Mon, 14 Apr 2025 10:13:41 +0200
From: Johan Hovold <johan@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Chenyuan Yang <chenyuan0y@gmail.com>, vkoul@kernel.org,
	kishon@kernel.org, lumag@kernel.org, quic_kriskura@quicinc.com,
	manivannan.sadhasivam@linaro.org, konrad.dybcio@oss.qualcomm.com,
	quic_varada@quicinc.com, quic_kbajaj@quicinc.com,
	johan+linaro@kernel.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: qcom-qmp-usb: Fix an NULL vs IS_ERR() bug
Message-ID: <Z_zDtfEsgXsFodG9@hovoldconsulting.com>
References: <20250413212518.2625540-1-chenyuan0y@gmail.com>
 <22ec4fc8-9368-4955-ac97-c49b3317d3b3@kernel.org>
 <Z_y73a5IDO66AzY1@hovoldconsulting.com>
 <f3b77aa4-e7a4-475f-a633-48aab59fa9b1@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f3b77aa4-e7a4-475f-a633-48aab59fa9b1@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_011347_471634_7A002F4C 
X-CRM114-Status: UNSURE (   8.70  )
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

On Mon, Apr 14, 2025 at 10:08:18AM +0200, Krzysztof Kozlowski wrote:
> On 14/04/2025 09:40, Johan Hovold wrote:

> > I'm afraid you're mistaken here. See __devm_ioremap() which can return
> > NULL.
> > 
> Uh, you are right, I only checked devm_of_iomap in qmp_usb_iomap().
> Anyway, the fix should be different - given function should either
> return ERR or NULL, not both, so devm_ioremap return value needs to be
> wrapped in ERR_PTR.

Right, I already suggested that:

	https://lore.kernel.org/lkml/Z_yxxoa12N9rNn2z@hovoldconsulting.com/

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
