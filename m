Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63DB9C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 14 Dec 2021 07:40:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3SsQlQtglmzr2Pao3pJxOcHmaN7fHdntA8I45/jKl7U=; b=DF/fWyJlIMu8TC
	5vQtBcUaytnJrQPB51/bcY0wm3cfe0ZseVipdrtwMwbI08YLXT5fFoqbRnjekgFjs3T55B5y1KR73
	5F7sE4UrFNtuM4oUCh/tSCCfEtfLwdX3ALHISL6k/tailagLnmxgFNNGDi9p5Gp6KK5B1eLmUtcYu
	tSaP4+hEFesQP4dLRb2Aehz0WZDqksjMI70IKq/upzlvGxPEc9ns+2q+Kaqwr0sw3TUNrbag1LpTb
	rmzULgAJMlyzvb4YKLfLOlkGTw9+qYhf+7GV2Ivi+WYN6ZhjOlJRiiDr2pDHf/6q4W8pxhl/+C+Uc
	cR+9vXhar6bhQcWAss7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mx2QB-00CvFQ-MN; Tue, 14 Dec 2021 07:40:23 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mx2Q8-00CvEG-Mq
 for linux-phy@lists.infradead.org; Tue, 14 Dec 2021 07:40:21 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 5EF52B80D69;
 Tue, 14 Dec 2021 07:40:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1346EC34601;
 Tue, 14 Dec 2021 07:40:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1639467618;
 bh=spvSZByQK+29iSEGKgTMsJTE72ieXduZWv3Fg8lA06g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VwF4sStEVMZne9O9j+TyF+OTJFgn6NQedmvg5xFTZVg+L2dtUiCxsiEZGBJb/44J8
 7emwh091FVE1vnGU1r4ePeP++zEtUCKIZ3ylEfa+ueA6Z1tbaZ2n9UXMMbMz42AGY/
 LJUkT23IlqTJqIA5ST65mo/QYYJn1RTIfVGBnBFG9uGDv0RVmYyMuTa2IajhDWZUMs
 MY6oboRP0bBL1Z5rjN3w8CgkDUz6XcaLtCyfTWFtbkupDm+KEDXRm0s64en3+PiSxp
 j8Ey4q8ho/8COwlp4VWEdwVQj3IXc5cERfoHwLc/SD02SvEFvUrC8QuceXa2oDNIOY
 kn81vlq6jYnOA==
Date: Tue, 14 Dec 2021 13:10:13 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Miaoqian Lin <linmq006@gmail.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: ti: Use IS_ERR_OR_NULL() to clean code
Message-ID: <YbhKXdHRbe0EmGwx@matsya>
References: <20211212142226.23674-1-linmq006@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211212142226.23674-1-linmq006@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211213_234020_911872_2601E5DF 
X-CRM114-Status: UNSURE (   6.41  )
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

On 12-12-21, 14:22, Miaoqian Lin wrote:
> Use IS_ERR_OR_NULL() to make the code cleaner.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
