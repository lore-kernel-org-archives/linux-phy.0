Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97738ECAAD5
	for <linux-phy@archiver.kernel.org>; Fri,  2 Sep 2022 17:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KzIUdGnKXnTjs1lfbBNJONFbJm2Wvm5JLgU2Hs7saa0=; b=RIrIUONof7suBX
	WFx4Gl+v6UnrWU/Td9dTfPpI3JslhS1Y1g9ouvT35IfCmD7Z9Iz0s4ug5ZFTRkY/XOjoctXgXS6Wq
	Zn9aRU4FEg4McLjIrFJ1VLkeEpwMO43aaW7LQbd6vHhElr+D3GYCsNLmSF6u9/wxkfLn0Fjc/jrDG
	fOJRWv1WpKHqevnSHu0egGmDHSZry8MSvWA/E3fsy+sb/1EuyFWZ8Nu2/yPO/lyJJX6wsZ1LN3vNC
	3XQrcZ4K0HPP913fC4irpcieH/TzfAn34FUIr0EXh4FZd7uk5K+vtGLY9rUGQmSkP6CF42504mSqj
	U59f/zy/+AL/AdgpXMvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUAk1-008Osf-09; Fri, 02 Sep 2022 17:46:05 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUAjx-008OiY-V2
	for linux-phy@lists.infradead.org; Fri, 02 Sep 2022 17:46:03 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 837F462211;
	Fri,  2 Sep 2022 17:46:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0A9F1C433C1;
	Fri,  2 Sep 2022 17:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662140760;
	bh=fTXcf2TIdAF6mJdGL4ZlTKOAGo0bqmITSBW1GWDdEIw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=X7vTjxLCFl7Pw7/RP0dWQRvBqb8JHaI2uU2PjN7SjdbeACyAPxlBHowD1bShJJYEu
	 t1UTxEaa4t4nPDNc/QFWPp9FD6gctQfc5aImkGlPvyHkJgGuGqf8+LEeTke8mptJx8
	 GnV5yiitAafCjQjoAaaFHQ6KRKlkbVvayzyhQj9gWxh0kLwYQjrKupTnfslSo8UiEy
	 aMV8rg/EHlieYb98VbBFY6EgOHh43OXOg8tpGpwXIKFSJ1/ihyNsJGl1O3zQJ4EYRu
	 IzSI1/q1mbVdjFQjkhsoyUCt97Yg9i2xjqz1TYa8N3QmeLoXpb3XpYgbscViVecra5
	 ixaDE1a8GxVAg==
Date: Fri, 2 Sep 2022 23:15:56 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: mchehab@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, kishon@ti.com,
	sakari.ailus@linux.intel.com, hverkuil@xs4all.nl, jacopo@jmondi.org,
	laurent.pinchart+renesas@ideasonboard.com,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-media@vger.kernel.org,
	kernel@pengutronix.de
Subject: Re: [PATCH 2/4] phy: dphy: add support to calculate the timing based
 on hs_clk_rate
Message-ID: <YxJBVHJPo+J6EsDD@matsya>
References: <20220818143307.967150-1-m.felsch@pengutronix.de>
 <20220818143307.967150-3-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220818143307.967150-3-m.felsch@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220902_104602_056243_1AF16EEA 
X-CRM114-Status: GOOD (  10.48  )
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

On 18-08-22, 16:33, Marco Felsch wrote:
> For MIPI-CSI sender use-case it is common to specify the allowed
> link-frequencies which should be used for the MIPI link and is
> half the hs-clock rate.
> 
> This commit adds a helper to calculate the D-PHY timing based on the
> hs-clock rate so we don't need to calculate the timings within the
> driver.

Acked-By: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
