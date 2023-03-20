Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D6F1C6FD1D
	for <linux-phy@archiver.kernel.org>; Mon, 20 Mar 2023 13:10:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DeflsXicPfQcDtoxYk9jPo+2lwBF2ho0EJsxINDPqco=; b=TnVvdpKe6XnVA7
	ZxwpnovPugtjzf0gTZw3SCOZIr15y4x58PtAthGtRj7jRvJTGPnxGnflAWMp1oDfyIGNOCl/GEzUC
	yb/4SmIqSxVFYYjzZaVHZ41mCGvjWPMHO4KqHlkL/MSRpqwf+aNok+fuv19MdJ98V+ZGYuTeNJOpn
	zClRn3TNBNqVlmUSKKIK0RPHx42t0SM46uP74yBPAKEA6VtTfUUVAKnbrugYO5k1vaY2niovdvotq
	fD19YYG0YnaiBhMKxBetbY5gMWYXt7WBqAtQrV3p+G3/0sGnoH2tNIoNv7xys+U0EGeYEP/1yKNbU
	XoeuEGO+ieNUqUeadRMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peFHL-0093rx-2T;
	Mon, 20 Mar 2023 13:10:23 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peFHI-0093rD-03;
	Mon, 20 Mar 2023 13:10:21 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 0072BB80DD3;
	Mon, 20 Mar 2023 13:10:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0EE61C433D2;
	Mon, 20 Mar 2023 13:10:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679317816;
	bh=+ISdV6ZYvcWZ8PwpMZtUIgNfgk0uRP/Q4D+J9OXgG8s=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=pCpIY+wRVieNcNhhKYG5dQJSmivu8kDrwjaeQuVZXCiNuFBeWeB0ZbQJdv5dN7rGO
	 fnNsGM1zrz2i31UgJaYgIf6IVpL2G9luCA5rj7/wgi3tCj5lqze5zJMqFxGIEbKFMz
	 tz6U6sdnDs/1xL7eipu4X2lTuIc9Xfo7mcX4vpPVUyvwIXcDibZsu1TWN+hx5QZdT2
	 epjshh6W4yqfnyIaVAUQ36ORizaKwWvlg7L5FGsY6w8afbaXQL1iFHd9qcQD4pbwRP
	 cwyeg25M2cW9RkXf0FBk/cir8RSMjij0G95/GtyLrfpvxJDHKSP3E6P/QiLnFH3nx0
	 xvY/Oc545gCqA==
Message-ID: <c2275a29-a241-8c36-0dc9-16fc8955243e@kernel.org>
Date: Mon, 20 Mar 2023 15:10:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] phy: ti: j721e-wiz: Add SGMII support in WIZ driver for
 J721E
Content-Language: en-US
To: Siddharth Vadapalli <s-vadapalli@ti.com>, vkoul@kernel.org,
 kishon@kernel.org
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, srk@ti.com
References: <20230309092434.443550-1-s-vadapalli@ti.com>
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <20230309092434.443550-1-s-vadapalli@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230320_061020_213749_AE4D2F75 
X-CRM114-Status: UNSURE (   7.77  )
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



On 09/03/2023 11:24, Siddharth Vadapalli wrote:
> Enable full rate divider configuration support for J721E_WIZ_16G for SGMII.
> 
> Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>

Reviewed-by: Roger Quadros <rogerq@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
