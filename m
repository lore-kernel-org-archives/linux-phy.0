Return-Path: <SRS0=xen9=H4=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9354C433DB
	for <linux-phy@archiver.kernel.org>; Fri, 26 Feb 2021 11:18:24 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6F26264EE7
	for <linux-phy@archiver.kernel.org>; Fri, 26 Feb 2021 11:18:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6F26264EE7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nuBBglb0IWwiAEVjXvircGjB80ifr00OFT1WGhY+dVw=; b=ni9Jd+NEGrSsLRmC4DQ3vdeeS
	ps1Iu6gXVvR9Y4gLLIOMxG3piZiMrqFByts0UQMPhBaGAMggSEv7w0OKWzPXFr3dKNG4C+syhNuWf
	aClOJfzbxidm+hjTxaV3PRrpTqaXiC1E6i+vb58IXRyggLgI5jD3L7yp7QwQN8/yEZXhVDXt4Upli
	GTCaFEVCrjDPpx3rsmxPhO9M6ektASSSfxXejbpFZL1k0OvTJhk6pS553zRElpq77CmyhVaunnZ6Y
	UduRTXgChxjKCt4WTgMvC8f7yPNh9BjgusqGdeeUSSbYochZMytM3pg9BwWMlNVJwLuwuREMz+32F
	okAdb4FvA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lFb8Z-0008Gm-Kk; Fri, 26 Feb 2021 11:18:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lFb8X-0008Ff-Hl
 for linux-phy@lists.infradead.org; Fri, 26 Feb 2021 11:18:22 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1155564E6C;
 Fri, 26 Feb 2021 11:18:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1614338300;
 bh=CV2eVk/4WwcqzsV+ldYXBw9lPTOow4MrUi8k6XKYZLI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rtZBTo8E3CdJa4rmGbJm92MUmhH+5DBC21zyAtVoIekOvkpHmcHQJJM951GcDBcAi
 btH+bFKkdTtinG/5sN/XEYWAQJ+9Rro1ELiSbSdUv+MuswXAlB613AjGyIQFq3gKw4
 XvSvmroO+XTqjA3OsvjzOG8znNZQdIRN7suHAN54=
Date: Fri, 26 Feb 2021 12:18:17 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH] MAINTAINERS: Add linux-phy list and patchwork
Message-ID: <YDjY+Ucvkw/zIvV6@kroah.com>
References: <20210226111233.2601369-1-vkoul@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210226111233.2601369-1-vkoul@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210226_061821_987737_3CAFDCE6 
X-CRM114-Status: UNSURE (   8.93  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Cc: linux-phy@lists.infradead.org,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-kernel@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Fri, Feb 26, 2021 at 04:42:33PM +0530, Vinod Koul wrote:
> Linux-phy subsystem gained mailing list and a patchwork instance. Add the
> details to MAINTAINERS file
> 
> Signed-off-by: Vinod Koul <vkoul@kernel.org>
> ---
> 
> Greg, Linus: Can we merge this patch for -rc1?

I'll queue it up after -rc1 is out, no rush :)

thanks,

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
