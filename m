Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD756C001DE
	for <linux-phy@archiver.kernel.org>; Mon, 31 Jul 2023 20:49:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6zXgQLujy+pGrJyaNZ7QRUadwsMlLDXI2YiMqksrWe4=; b=M2uO6nH3P3yXwd
	/qVoDWfNVno+ElhYv6rmXQU+CR+20GgqbIOX1kR43KYvaGM2ampM+u+o55z0zB9h6zxlfNe+b8Qdh
	ceFc2ZW7VUDgncs84+OZEXrUPBlidE47mytfBURFOKwUDfdvSAJ2FCVeBsuxs7MJmcVH6KS0oQMhO
	Xrxf2RjE+2jJAb/6YhmjuihzqeHy70ukwxt3+fiKOEf48A/TcLPQtnGzuY/VcoFKF0IbzSFzTSC4c
	eosxgEsBdIuexOrxEB7kB1cWR8s9kJjil6mc1yHj/yha2ctWUN7tJtDIug95GUikwoQlRsfmcSV3B
	YzCEnNI6onVOjQZu/fow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQZq2-00HKBL-21;
	Mon, 31 Jul 2023 20:49:58 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQZpz-00HKA1-0p;
	Mon, 31 Jul 2023 20:49:56 +0000
Received: from i53875aa8.versanet.de ([83.135.90.168] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qQZpx-0008VE-VJ; Mon, 31 Jul 2023 22:49:54 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Jagan Teki <jagan@edgeble.ai>
Cc: Jagan Teki <jagan@edgeble.ai>, linux-phy@lists.infradead.org,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>
Subject: Re: [PATCH 04/14] phy: rockchip: inno-dsidphy: Add rv1126 support
Date: Mon, 31 Jul 2023 22:49:53 +0200
Message-ID: <2294411.ElGaqSPkdT@diego>
In-Reply-To: <20230731110012.2913742-5-jagan@edgeble.ai>
References: <20230731110012.2913742-1-jagan@edgeble.ai>
 <20230731110012.2913742-5-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_134955_295261_7E2DE574 
X-CRM114-Status: GOOD (  10.18  )
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

Am Montag, 31. Juli 2023, 13:00:02 CEST schrieb Jagan Teki:
> Add support for Rockchip RV1126 DSI-DPHY.
> 
> The existing 2.5GHz phy timing table added for RK3568 is working
> as it is for RV1126 as well.
> 
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
