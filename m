Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9EB69C761A6
	for <linux-phy@archiver.kernel.org>; Mon,  3 Apr 2023 10:48:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6qRXaOMbI4Iyoxv7nIlIWFBcHgcNswrvB6ip8JqGcSo=; b=TffGmeNXEXH5iT
	YsuyeZ/xZAghq5aCdf8vpkFPcVCyGnctvuH2Nt1Y8Wm0U4L+6Z1AgGT/juZg+7GHDGENqka7DhYg/
	u4co43gIb/rUBxs1HgAxPCxgm/I1ozMezXyP78PpNk60wHtxVqWqM/1UorVVkRt7jgePt7+FbhiVR
	vE9E4tXfJWFygCHJAYAkL9HT9vvnqDx1w0Ysc0LRGsscYuN2WLWblkzhOPVGgaO3OYtpIDEn0YO3s
	4ufe1LWIurMmYTcrLIrHVMlPngitL97obG0hfHliZ/xfjwh+jemtLnTjqFUHuls5w9gGmsWpk4GI7
	VtNfp1SwIyt9pJorooXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjHjx-00EzsW-0x;
	Mon, 03 Apr 2023 10:48:45 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjHjt-00Ezr3-2J;
	Mon, 03 Apr 2023 10:48:42 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 659D861868;
	Mon,  3 Apr 2023 10:48:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DF468C4339C;
	Mon,  3 Apr 2023 10:48:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680518917;
	bh=pJ9feBPMNK8P98DDjfcVQ3MjOh6JJSDCBELiLFJW0/Q=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=AEb+SbfVnEqzy9sAw8S8W7Dsna+2Ti0y0uKakGzBHExV5imlQrA4eK/5pOtUsEKh/
	 0FIPZQJCbogiuLn16oNQT0rvO6DRyV0sFmxfTkh0f+eyTETjSXIf0HibsqYyi0PDdD
	 4Ir66eRPP0GmuRNgHm/rxf8JqzqbzedGxIYeY8ehjWJdfdEUAHOtyvST6cuPXv8sma
	 yBdi3zko892VJ1ewr1u6w02VJHCZty+jHFjJD30AZhETAQpQbj+wEhofprjkGdub/h
	 tseS09F0RDIYIzzg78+ZQuAvR+gzKVySOr3bJ25ZyGuTzsmCWIbhjyGZzwP6pyzN9U
	 pNux/i4VYQxFw==
Message-ID: <d07884b6-ca82-4e3d-32b0-3ebb0674b64e@kernel.org>
Date: Mon, 3 Apr 2023 13:48:33 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH] phy: ti: j721e-wiz: Fix unreachable code in
 wiz_mode_select()
Content-Language: en-US
To: Siddharth Vadapalli <s-vadapalli@ti.com>, vkoul@kernel.org,
 kishon@kernel.org
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, srk@ti.com, t-patil@ti.com
References: <20230403094552.929108-1-s-vadapalli@ti.com>
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <20230403094552.929108-1-s-vadapalli@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230403_034841_815651_7928049A 
X-CRM114-Status: UNSURE (   8.32  )
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



On 03/04/2023 12:45, Siddharth Vadapalli wrote:
> In the wiz_mode_select() function, the configuration performed for
> PHY_TYPE_USXGMII is unreachable. Fix it.
> 
> Fixes: b64a85fb8f53 ("phy: ti: phy-j721e-wiz.c: Add usxgmii support in wiz driver")
> Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>

Reviewed-by: Roger Quadros <rogerq@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
