Return-Path: <SRS0=B2Kc=I4=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E1AFC433C1
	for <linux-phy@archiver.kernel.org>; Tue, 30 Mar 2021 18:04:58 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0158E619CA
	for <linux-phy@archiver.kernel.org>; Tue, 30 Mar 2021 18:04:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0158E619CA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=w1ZDFnw3vsF/1v35PYR9fiq2a8qVMNFO14NyqpiNlIU=; b=p/MxZN2Kc/MiWTAK1STFiarnK
	SP+eGjvWFDTTjCSKHLQvRj+wWgMKdHDIsidx3q6zXc9PiT8fBOolTm4OIsqT1JHKbJ63n03ttWwhQ
	iRCyDYwrjM61wpG1vdJxEDsIg7xzSDeaKBmIJJrAwxelHKQWSk8DNq7e7rXxK4N8zIF1nqGj9f8zM
	IgzS+I8fSIizloPjGD59j5dRK1Z9lSHWolz5Q5A4gDH5l6zDXreEyydvpLKyev4ljG88j7j5Z40Yk
	xcpMDd3y5IW1AZdiivwl2iHgMB1xi1uWvn2OenZzCNwlHoOJUC/3CQkYvigrkqWYduzh/0O7fBmg/
	2AuK3MIkA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRIjY-004Xd1-9W; Tue, 30 Mar 2021 18:04:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRIjT-004XcE-OV
 for linux-phy@lists.infradead.org; Tue, 30 Mar 2021 18:04:53 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6EA2B619B9;
 Tue, 30 Mar 2021 18:04:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1617127490;
 bh=oModXwUxmMyfRIh4whro1oarObAUSB3dp/vTGTrHtNI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tG4VSIyBs+E9e2ru4dsikVZABSZML651QC1v1ISSa/lKZMSrvp3uKRD0Ig7g8j3KG
 mouSQDuhajQvw7bOASH+waX/Ub7iGx1do40PYEZ+dcY5iox7knO1PBSYOq+3/YXaeA
 UvMEZgMYJ+wc0PAE/3OONKlFtOQvqLtcO1GPMvXnqCEwUug6olaIy6F1FtdJaTOdmT
 dZbGVfJbO2GbESCJYojWfAPFtkvMrp7v8fXGhd+m2hDgN8YRdePHZyIThNnUcoyQy3
 I/BqcgrDFM+CKlYpfrAvn7AzbT2DZjaNx7WZGIZ1Ry+JRT9190igLgH7q1rV0/NCpo
 Z+v3sNeQwmmTQ==
Date: Tue, 30 Mar 2021 23:34:46 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Swapnil Jakhade <sjakhade@cadence.com>
Cc: kishon@ti.com, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, mparab@cadence.com, nsekhar@ti.com,
 lokeshvutla@ti.com
Subject: Re: [PATCH 0/4] PHY: Update Cadence Torrent PHY multilink
 configurations specific to TI
Message-ID: <YGNoPhhuTPfYRN+f@vkoul-mobl.Dlink>
References: <1614838096-32291-1-git-send-email-sjakhade@cadence.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1614838096-32291-1-git-send-email-sjakhade@cadence.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210330_190452_063879_7294FFAF 
X-CRM114-Status: UNSURE (   7.35  )
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

On 04-03-21, 07:08, Swapnil Jakhade wrote:
> This patch series updates Torrent PHY driver for multilink configurations
> specific to TI platform. It also adds support for configuring QSGMII in
> TI Wiz driver.
> 
> This patch series is dependent on [1] and should be applied on
> top of this.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
