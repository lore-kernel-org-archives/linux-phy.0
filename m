Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FD74C6FA8E
	for <linux-phy@archiver.kernel.org>; Wed, 21 Sep 2022 14:40:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZZSs2QNs3rRGqydELaP4zYQEJkivCz6c+kaERWWPBTM=; b=thdOzLsK19wsar
	pL56bmYs5BZEtIX0gVDdiCnVPVxwHUKE/y7K6Q40/M3Q9OJMRgiJkZ9yTPk6CDGw+HbbdL9ols1X7
	/o7xjbn29Bei6MEkL43Jzxay0XtDI20C9cbcqFm1RDZlTFlNrpX6CloIFMMMHIEcaMTpAj0IUabrS
	q8EPICu/j2UrehhLIyhX7yHXiK+Q7tuefjjI7eh+qDsO/gIkupQyincIoSGt8ls7aeLMEiaMTqaaw
	JPXOS1goAVlm7fjBQVH4dgK1S1lS5qeF33DjHlj7dPSYR3pvoVM92NFeqWfzTnal0X+5dIAlZvjz/
	mNwBY/csirsrQ3jXvVdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ob0tX-00BcyZ-Mu; Wed, 21 Sep 2022 14:40:11 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ob0tV-00Bcxi-9u
	for linux-phy@lists.infradead.org; Wed, 21 Sep 2022 14:40:10 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 6EF8DB8301B;
	Wed, 21 Sep 2022 14:40:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 733ECC433D7;
	Wed, 21 Sep 2022 14:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663771206;
	bh=SVL/F9n6SXj18vjuw0LCc8zZdX5U7z9hK27fhYg1kMM=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=JPkcnY7RbprrxzY+4iV4rKb9JYnsAJUrnO2bUj5mLm1nLnXldOs7RHS/0LUcaMoZr
	 ZKCZReIdXa1+C3Fp+FY+7VW63U7CAulgephF9dbRHH+a8tcvSp4ozUttnPuRwappzE
	 OfSh+iMBdIqOy0nqf0qkGwvA+UCA6pi4Vme4sRUe3stqljKBZIj9Gv0m/5mHAoBwZG
	 DaKdeWmYVqRI1QAJMTEQeQRXTNqa3jjAwvKo+v7TGlpzP5FjV2SmhMPQ5GIJngD33m
	 FFh56uPwQ8LBueXvFig/2D9o/GB4cGOszneu+v4jkMuDdhqFeq3V90iwBLFfHvc1nu
	 kmtJDa1cHp/+Q==
Date: Wed, 21 Sep 2022 07:40:04 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: kishon@ti.com, vkoul@kernel.org, davem@davemloft.net,
 edumazet@google.com, pabeni@redhat.com, richardcochran@gmail.com,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 geert+renesas@glider.be, andrew@lunn.ch, linux-phy@lists.infradead.org,
 netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH v2 0/8] treewide: Add R-Car S4-8 Ethernet Switch support
Message-ID: <20220921074004.43a933fe@kernel.org>
In-Reply-To: <20220921084745.3355107-1-yoshihiro.shimoda.uh@renesas.com>
References: <20220921084745.3355107-1-yoshihiro.shimoda.uh@renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220921_074009_534016_871607E8 
X-CRM114-Status: UNSURE (   7.94  )
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

On Wed, 21 Sep 2022 17:47:37 +0900 Yoshihiro Shimoda wrote:
> Subject: [PATCH v2 0/8] treewide: Add R-Car S4-8 Ethernet Switch support

I think you may be slightly confused about the use of the treewide
prefix. Perhaps Geert or one of the upstream-savvy contractors could
help you navigate targeting the correct trees?

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
