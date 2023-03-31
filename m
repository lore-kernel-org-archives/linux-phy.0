Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A38CEC761A6
	for <linux-phy@archiver.kernel.org>; Fri, 31 Mar 2023 13:50:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hHMuYYX5sjf2jxpj6JWbesorO1yAoW3M+JwrQe6z6+s=; b=t4cgkyeo8baNW4
	MzPN/NyeHLS1Eh+bY6w4JtTcECKdBWRY0YR3MpxnJQYV016JJsb8tGphWflXRv1gTo8Rjt1i1aGef
	GmO4D3EeLGILyRD3gv/slrvwrCqOqmXldF85sy6YHS9EGM0Q8GXqa9JvcovUbX1nhJZHbUcgN7cjt
	/hPO5Xovas1AxQ6yektEsdOVYrD1te+77mzoaoDHQ4Iv8OBvd20BwXYONrs2NF13kldOVjdO9UMyW
	AKgdf90k2CjDEj2lPJKO2S0JpySnAkPCzX6mc/Nqvzhfbd5kVD5gtsPXtmdgtg5yXD/tThBlHvl4F
	99MsOSU1ppCLls+Hu7ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1piF9I-007ahJ-0w;
	Fri, 31 Mar 2023 13:50:36 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1piF9F-007afy-1r
	for linux-phy@lists.infradead.org;
	Fri, 31 Mar 2023 13:50:34 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1DBCD62588;
	Fri, 31 Mar 2023 13:50:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EEEA2C4339C;
	Fri, 31 Mar 2023 13:50:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680270632;
	bh=2cykrbzQ+KKCSCcE8DJnTcmAUhli8KdUwSPQn/1+oCQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=g2kw+MJuxfkxrMlpRGDu7Hv5mveuj45k8vF1WmmYNmNZ6gVv3AA+T9tWdX8MITEFM
	 cTkcslzZ2Mf6j7eJmKVjGpPHsW47g3R2rUT8dk8ACrPp6kGuOTCUqA/3vfqYDP7JQB
	 wx/o0Eu1dXfgLzW61cTnwr80LbvOvjRxi/UMhbc0nOke5ZohczTE8daQU0XHghdHBu
	 vxnNYCzMXeJXQn/RfWrZDUOsdcaTQTmYXJukgfYHwE3TJ78VCHFjLFwZ68pvK3DjTX
	 p9ow5UcvbQu+/MW0CxDVt9WVWMbWSPvNlHpehn24jHOLF+j0H7kAgQynZBRAI0vHEO
	 YvahmfzMUWtWA==
Date: Fri, 31 Mar 2023 19:20:28 +0530
From: Vinod Koul <vkoul@kernel.org>
To: ye.xingchen@zte.com.cn
Cc: kishon@kernel.org, u.kleine-koenig@pengutronix.de, linmq006@gmail.com,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: omap-usb2-phy: Use dev_err_probe()
Message-ID: <ZCblJLBTPMS4z8Mf@matsya>
References: <202303231545522162256@zte.com.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202303231545522162256@zte.com.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230331_065033_651773_76360BE9 
X-CRM114-Status: UNSURE (   6.42  )
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

On 23-03-23, 15:45, ye.xingchen@zte.com.cn wrote:
> From: Ye Xingchen <ye.xingchen@zte.com.cn>
> 
> Replace the open-code with dev_err_probe() to simplify the code.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
