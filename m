Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F76FC433EF
	for <linux-phy@archiver.kernel.org>; Wed,  2 Mar 2022 14:25:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gukABz3YpaBkULhkA7GHK7NDXGHT5ZK1QacYteZfZFE=; b=icK65kaH7Pyv4M
	Q+Nkk1aF/YGP03BllkJ7Q2bHUU6CuVoWdaGVv+4LWseUkG0PWprZwOajlu0iufrbBW6C/0u+y6jJz
	aEv0UrhEBLmRloPsJemQSh9gXcI8kZQh/4xsqk3q2WobADqLExaHovLPwMJzmsKeCvQQWSETMrnsa
	IlU7pibSCadvIXS8JjfwUmn7b2B3619GzyivcxdZereE7fFuD/hca3tFiU2TytPi4BUCi/0G33K3Y
	/HP6x/yQRB0L3z5nAy5LjBNO1KMFKQCMdVQZynRhrgSuyhx7yUMdtQ+mrBKCMoolxIaDYdcHD1jjc
	FgOVMNjbxqwAXc+vohcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPPuW-002yYl-Jr; Wed, 02 Mar 2022 14:25:00 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPPuU-002yYA-MQ
 for linux-phy@lists.infradead.org; Wed, 02 Mar 2022 14:25:00 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 47BC36136E;
 Wed,  2 Mar 2022 14:24:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 18369C004E1;
 Wed,  2 Mar 2022 14:24:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1646231097;
 bh=Qv/tJVn7ZbngpF/h/3ssMrEwwL4QaG+fVThe66+ImAU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ato+Hb7fhiU8P5IZC5OH0GkTLqv8bglJEfQJP+DHJZPCEH1o/DQFI0C+ITckzOdLB
 Nxukx97EROpYbWSPW/3iA3uh2zjUtaow8ztKuyT13ZQKouyEuxWnlzOILuG89e84km
 jZJ2JoX3tQoX74fq6m9aolY7LBSe5DQkdGbWjjiy78ihtHuNqCv+vtF+8cXd9Bb04n
 IeORHBLvQcWZ4jfH/36fUV1d3aBaCLYe3Ni00ZYJGRlPT80FjI3/4Jc1GDNv+SFy/k
 HIHr8lsKqNeeVKmZm5mR1p0gaIAj/Bop9a7+y/SgiX1hAz4y9HElT3Bj44i1dgwy/S
 it1nx6xDfKM2A==
Date: Wed, 2 Mar 2022 19:54:53 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Pratyush Yadav <p.yadav@ti.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Swapnil Jakhade <sjakhade@cadence.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v10 0/4] Rx mode support for Cadence DPHY
Message-ID: <Yh9+Ncc2DulmBpXr@matsya>
References: <20220301111621.2992275-1-p.yadav@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220301111621.2992275-1-p.yadav@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_062458_792237_0FDD3EB7 
X-CRM114-Status: GOOD (  12.74  )
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

On 01-03-22, 16:46, Pratyush Yadav wrote:
> Hi,
> 
> This series adds support for Cadence DPHY Rx driver. It has been split
> off from [0] to facilitate easier merging. I have still kept the version
> number to maintain continuity with the previous patches. The earlier
> version used the same binding for Tx and Rx DPHY. With the separate
> driver, I have added a separate binding. But I am still keeping the old
> conversion patch in this series since I have already done the work in
> converting the binding to yaml, might as well get it merged.
> 
> Tested on TI's J721E with OV5640 sensor.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
