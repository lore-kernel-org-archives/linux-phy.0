Return-Path: <SRS0=iPW2=LI=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PULL_REQUEST,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3BA16C48BE6
	for <linux-phy@archiver.kernel.org>; Mon, 14 Jun 2021 08:28:05 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0AA3761153
	for <linux-phy@archiver.kernel.org>; Mon, 14 Jun 2021 08:28:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0AA3761153
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RH1ijBop67rpVZ/GhTIZmeXfKbhccZKdXVGiniCBwxU=; b=bF96vFKEiejptN
	+U4Ls42l/Pq5uHJdeWS3fYJ/l8v3LPlEr9lHia+hqb0aIjHSNnlX6SU4zy3+bJnCBiqWyMKfI9Tqm
	uTWDo2TRCehPz2IAkq+208/sHnHLMY1CzknaOoSWnONyxhEHzPm/W1VawJeKwuNtDE1lfey8gXQaP
	/sYMa4IGaKRUVmhWK/UYgdvN7kIUrTTHk20OAPM/DCFknTFB7z8mXKMP0nyxwajJig/1uHd77zqnn
	+buPKtwXj1Z3Js5zBuD/Z5zCMOoB1M7yJFgG73FbCc1PRlKf2hdT2xlCD8PHjdd3JMA6hANDPkRI7
	T8WXxgkO4MeQAmB5tITQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lshwy-00D6H4-Jb; Mon, 14 Jun 2021 08:28:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lshww-00D6G9-P0
 for linux-phy@lists.infradead.org; Mon, 14 Jun 2021 08:28:03 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6409661370;
 Mon, 14 Jun 2021 08:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1623659281;
 bh=5WpXj+v2aZrwm0AM5cVGrmbOMJxn+umwHqzjnzUIOW4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LDEUiIpyc9xO0ZpqFYG4H/3HF8smf0AYYgIQJXvKIXwIQkcgaCtSfEl4zsduMOFjV
 86DX2EHMA5SifWkqvKcnqjW10u4nXeUgfhOcZzsY5YhuVLnNJntstVmBjJGMe98oHt
 ul6LOMW0jHDwlMPToKEbDO1kfo73eI8T/qnIaWJ4=
Date: Mon, 14 Jun 2021 10:27:43 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Thierry Reding <thierry.reding@gmail.com>
Cc: Felipe Balbi <balbi@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 "Vinod Koul linux-usb @ vger . kernel . org" <vkoul@kernel.org>,
 linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org
Subject: Re: [GIT PULL 2/2] usb: tegra: Changes for v5.14-rc1
Message-ID: <YMcS/yfYsotZN7Vx@kroah.com>
References: <20210611164037.3567270-1-thierry.reding@gmail.com>
 <20210611164037.3567270-2-thierry.reding@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210611164037.3567270-2-thierry.reding@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210614_012802_853682_54418C24 
X-CRM114-Status: GOOD (  15.52  )
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

On Fri, Jun 11, 2021 at 06:40:37PM +0200, Thierry Reding wrote:
> Hi Greg, Felipe,
> 
> The following changes since commit 1f9cab6cc20c6ed35c659aa25e282265275f0732:
> 
>   phy: tegra: xusb: Add wake/sleepwalk for Tegra186 (2021-06-03 14:52:45 +0200)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/for-5.14-usb
> 
> for you to fetch changes up to 971ee247060d88dceb72428b5d203687312884f4:
> 
>   usb: xhci: tegra: Enable ELPG for runtime/system PM (2021-06-11 18:15:46 +0200)
> 
> This is a set of changes that was supposed to go into v5.13 but missed
> the window by just a couple of days. I've since taken this for a spin
> in linux-next through the Tegra tree and everything seems A-OK.
> 
> Note that this includes the contents of the first pull request in this
> set because of a build-time dependency. I'm assuming that all of this
> will go through Greg's USB tree, in which case there's no reason to pull
> in the first pull request since it's already included in this one.

I have pulled this into my tree now, thanks.

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
