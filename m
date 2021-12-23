Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41517C433F5
	for <linux-phy@archiver.kernel.org>; Thu, 23 Dec 2021 11:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C2FaKsukf3G0u4gwdUz5vjLpA6HfUFzgrtkx9yU2Ypk=; b=XgoT8mypLe1eYV
	st3HczNnctHIgRgcX1+pTY+h227aO9kPLfFKVn5EEa6LB7WAlI6/OWEtjRyvUjEC5jgH2CXq4UnE8
	bphOFUg+mEq7bIUGJ5m6tPOPRVdRm45pSKKaanUcSLlV0lCcmkS3YALYJ1r8eoVmf348MPuIqQ7Re
	CsdxXzc8496mDBTsB9HULjDxzNqHb7n9o8faAOKX2tbBEx4SS0pwaScStKrVAxTtaAgSlFWxaW2Tw
	9sTD6rfZyJ5DVJBQEF10yFDrOw+fyUHJBhWHjlS3WZuwm6nTZeGgwQM+iZdoXyCcaY8cpc3ByPMM1
	RVUZAz0zy1F3hj1VBRZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n0MGu-00CaDI-Mx; Thu, 23 Dec 2021 11:28:32 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n0MGr-00CaCk-Qr
 for linux-phy@lists.infradead.org; Thu, 23 Dec 2021 11:28:31 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 5865161E3D;
 Thu, 23 Dec 2021 11:28:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DDAF5C36AE9;
 Thu, 23 Dec 2021 11:28:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1640258908;
 bh=htCvpSaVrR8Gu/Gf+sfTWo3rQbsZZ8ATd3vQXhFLWYA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=byI8vGwHlAIcTpT0z9s+YkHj//vmsmN8841AogPROn1/ASF83M7dUR5eb70y19tCo
 1GRS1QoBIh4fcNd+qnx3RULTNJIH8j/TiLJ36XbVt0OnwQnyWknZ0HtXUPbCrKFzen
 b71i9fRpUX16/xmSqI8zhfuUSQl0kJjsvxJjBVRvhkazbDgHm9aPnZ0y09EuiwpOIs
 ci2ckdy3N6UEOOZs8nUScwaldD2qSurNn2mHLTow1yeAThwd22yk7vPaiitXlQztRj
 EHcp9aqB3deH0OVdNGA9b96LwuD60OiGU/PNPLhhoA7jyGl8ulrDS+pA/sbwfe7SG5
 sIgd1GgzjUOrw==
Date: Thu, 23 Dec 2021 16:58:24 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Aswath Govindraju <a-govindraju@ti.com>
Cc: Wolfgang Grandegger <wg@grandegger.com>,
 Marc Kleine-Budde <mkl@pengutronix.de>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, linux-can@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/2] CAN: Add support for setting mux
Message-ID: <YcRdWJtREHFWXBKM@matsya>
References: <20211216041012.16892-1-a-govindraju@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211216041012.16892-1-a-govindraju@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211223_032829_956986_012B6897 
X-CRM114-Status: GOOD (  15.79  )
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

On 16-12-21, 09:40, Aswath Govindraju wrote:
> The following series of patches add support for setting
> muxes to route signals from CAN controller to transceiver
> by reading the property mux-states from the device tree
> node

These look okay to me
> 
> The following series of patches are dependent on,
> - https://lkml.org/lkml/2021/12/2/423

Pls post when these are merged..

> 
> Changes since v2:
> - Fixed the bindings removing the description about
>   the arguments in mux-states property
> 
> Changes since v1:
> - Fixed the description for mux-states property in bindings
>   file
> - appended declaration of variable ret in the end
> 
> Aswath Govindraju (2):
>   dt-bindings: phy: ti,tcan104x-can: Document mux-states property
>   phy: phy-can-transceiver: Add support for setting mux
> 
>  .../bindings/phy/ti,tcan104x-can.yaml         |  7 ++++++
>  drivers/phy/Kconfig                           |  1 +
>  drivers/phy/phy-can-transceiver.c             | 24 ++++++++++++++++++-
>  3 files changed, 31 insertions(+), 1 deletion(-)
> 
> -- 
> 2.17.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
