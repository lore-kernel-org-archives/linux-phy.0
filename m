Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D10FC433F5
	for <linux-phy@archiver.kernel.org>; Thu,  2 Dec 2021 04:16:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hy8p+6pu5ym1CyxQ3TIK7Wvc5PZ2Rm+zVUIKFkcnD/U=; b=rM+mQstrZYAh/d
	DgWXiF9yU4sy+3bjzSp8B/7K3UBNknoJmfLW1i+5a4IXLZYeS5qLdglfpomZuFH5prsVu7zbHpM7u
	C+eQ9OeL6Vl5YXijv7o9qjHRNZ+2rx2LziDp81p28s6a99JzJzmbRrv0JvLN89Maz5NYRenWjHjc3
	QXuk2y/YkQdj5X5v4tbGXvjqu1tqAZ/dwz72PlgezRfv36e9uPRR8MD8cwVJooRcerDrg/IAdNxUo
	NvjsZTXhr0k1IkGjSBs9Q9+dQJwRcqUtSwbD1/zMfhVpln3nq0gLCDTr/qaCGy7PFLTSd6Rf149QH
	I5SeeJ7Xi1l8YTsCwrAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msdWi-00AsQM-Ka; Thu, 02 Dec 2021 04:16:56 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msdWg-00AsPT-AB
 for linux-phy@lists.infradead.org; Thu, 02 Dec 2021 04:16:55 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id 93A0BCE215F;
 Thu,  2 Dec 2021 04:16:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C8650C00446;
 Thu,  2 Dec 2021 04:16:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1638418610;
 bh=+RSDRSk+DZBd8IvTOld4RRX7yCLeLf4UcqNzqBpipoU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=p75NZUIx0+SwezXkRmtMdh/VdGad1Amify6Wih7k8hCD+tCiB44BMOS3C/9kAyuhd
 s3WM7gicBS4T+/ecR5XEBYOmlEfdWX7qqEvkAQf05xOJmIMYZSLvVMV71C8iCq8bvl
 UkDlxIFLKpaeoyWrZ4k64OXdoe+5gKfxyQAdsPXzbLiOXFQSZeH6I1chtXLeSorxQ+
 BbhWDXJsE2GOKl520KNJaBWdCXqIdQpQQ8eJ7iiXvc9p2mDmjX+lChCbXGu7aSnzix
 G0H4mfSBJdYwN5dk4bo3PdOg0fOIN8XxiiuHydVLzc4oQRNwGdJaUTdskd45ksUTzo
 gxOkbUSHVKGEw==
Date: Thu, 2 Dec 2021 09:46:46 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Zou Wei <zou_wei@huawei.com>
Cc: nandhini.srikandan@intel.com, rashmi.a@intel.com, kishon@ti.com,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH -next] phy: intel: Remove redundant dev_err call in
 thunderbay_emmc_phy_probe()
Message-ID: <YahIrrYOVkwZ/0SE@matsya>
References: <1637822289-24534-1-git-send-email-zou_wei@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1637822289-24534-1-git-send-email-zou_wei@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211201_201654_567007_74977F7C 
X-CRM114-Status: UNSURE (   7.28  )
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

On 25-11-21, 14:38, Zou Wei wrote:
> There is a error message within devm_ioremap_resource
> already, so remove the dev_err call to avoid redundant
> error message.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
