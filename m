Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 396FEC43217
	for <linux-phy@archiver.kernel.org>; Tue, 14 Dec 2021 09:15:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NM0i0949DyXl0lM1Ea4F+5+gSGk9lzkvKfVhOcOhO3A=; b=GbQAYd1+xVVPl/
	8+e930E6k3Th6MKKGa2slDYSCahZ1YBCW+trCuILOwg2VzxVlhwl9z3X/ilm7EtBDn8Df6I2gFWBJ
	0G1I/6JS++JN9nUuTx/OKqQ1eILbiQuIFgmfXl6WzxhqRy70UqsK8rFijKFC7atxcoxoqzD6temnb
	DNR76EOlpmYnOpJk0aGHEzccqU+csxtCCMGHhUEopG3p1sGNFp79ffw/CBoAAnC1VQhKggN/QC570
	LEmxIn8dcvFttgDu85MbKTXiySuufHjuTRNH6V8OyABg8pGCpYnJesz/gzGaOExfbAKo8QCp4pNwb
	DOnWhK8c1gK+zSbQnOww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mx3uJ-00DE5k-Gr; Tue, 14 Dec 2021 09:15:35 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mx3u3-00DE0s-Ie; Tue, 14 Dec 2021 09:15:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 22984613F5;
 Tue, 14 Dec 2021 09:15:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A6E5C34611;
 Tue, 14 Dec 2021 09:15:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1639473318;
 bh=0ua7a0P5Qb99uXLH+QLXAxhupeEjIa/HPPxoFbbexMQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=s9MvluaJOsnSUAfdqNXRqmWgCLffOEBXR0bzTnsG4La8COFZ/hw+mdzb7Fvm+F8xA
 90yJ9zV/cUMFs6MHSMlibd4weDKBsfXoQCKO7MFKRmcb/5Mrr1+BhYsEAc/y9fMPqf
 SWJrNnKxR1IQ5kTehMtHnu7K2ZFynClTHfHwKwacFZYQ9/vBDboR9BBnWhhJFgXKPo
 w5Y/m+72CENxLRSZN2jotImZ5R1KmeBKhJ/ZoGKV99YUYZkG8ivRlU3WsE8n08z5G1
 OfqsFpSzgGhmZNKAI8Hh7Vu9RZsqytCs9JZsOtwvYw4MTcob6Y53L7iZu3z9aJ5Rq9
 EMMe75aZ0NjyQ==
Date: Tue, 14 Dec 2021 14:45:14 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Colin Ian King <colin.i.king@gmail.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: rockchip-inno-usb2: remove redundant assignment to
 variable delay
Message-ID: <YbhgorXaTSgUaFyF@matsya>
References: <20211211180054.525368-1-colin.i.king@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211211180054.525368-1-colin.i.king@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211214_011519_679238_31B0A564 
X-CRM114-Status: GOOD (  11.14  )
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

On 11-12-21, 18:00, Colin Ian King wrote:
> Variable delay is being assigned to zero and the code falls through to
> the next case in a switch statement that returns out of the function.
> The variable is never read in this scenario and so the assignment is
> redundant and can be removed.
> 
> Cleans up scan-build static analysis warning:
> drivers/phy/rockchip/phy-rockchip-inno-usb2.c:753:3: warning: Value
> stored to 'delay' is never read [deadcode.DeadStores]

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
