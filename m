Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57D54CD4851
	for <linux-phy@archiver.kernel.org>; Tue, 19 May 2026 08:25:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pMQ4F3JvfU2AfEreaosSzoZtRsQuaJWQV4mO1YhFRQE=; b=y+7obtGjKel/RI
	hAzcQNIOQGwzFpTZYiRYk9K7s1xt9EcABuWtIcWTWR32ue2sfPRiugv4cNa5j2OQ4oR/79vQQHahp
	hWMM2Vhl6AF9y9obP0ZMCtH2z9tZmUqS5Y31p3ZoSC6MQ75MAxz3SGt0Ttt+cFSItsefim7WAJ/Y2
	eM06gDPytMScfGm1+ps3h4cVYgE0sAwjJ9iQXw4PwxljcDx9FZYAK4E4nkzHTCR6JQDwqeUmncnyM
	6EtJLfjBGlmPaDZ5Mi4gP6R6isbuSXNvujWuNAWk2SNXfbxSndugAW97ol1JEjCKtCdGrHm6zNSQs
	RUNfSbExlXdufTIYpQqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPFlv-00000000fWY-0QvF;
	Tue, 19 May 2026 08:25:51 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPFls-00000000fU3-3ysa
	for linux-phy@lists.infradead.org;
	Tue, 19 May 2026 08:25:50 +0000
Received: from [IPV6:2a01:cb1d:8f2:800:1f3a:ce7e:2f55:583a] (unknown [IPv6:2a01:cb1d:8f2:800:1f3a:ce7e:2f55:583a])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 687D57CA;
	Tue, 19 May 2026 10:25:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1779179133;
	bh=5SxyxRsSWE1WA4bv6Y9nKyCPnJWr119iQtu4DJkVLXE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=XE6w+Ux1OZMDYpFR7gG7fdujMnJvRL7gcnl2URbLWfjBUvUSa6D7VBBz0vBaF4HJ/
	 rux9LvAvVD02wzMT3RZRdTPGoE1JKMrnZK45PgWBYf/CzxYAJ5ttgDB5BT5CH4TDZ/
	 GrGx39aGIwO+iOzYL+SPd3MNtXk5kKMbAamGad38=
Message-ID: <16bb1de6-12dd-43f4-8d5a-b028c3c6bbee@ideasonboard.com>
Date: Tue, 19 May 2026 10:25:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] MAINTAINERS: Hand over phy-zynqmp to Tomi Valkeinen
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, michal.simek@amd.com,
 Radhey Shyam Pandey <radhey.shyam.pandey@amd.com>
References: <20260519082253.40142-1-laurent.pinchart@ideasonboard.com>
Content-Language: en-US
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
In-Reply-To: <20260519082253.40142-1-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_012549_136120_5D527914 
X-CRM114-Status: GOOD (  13.52  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


On 5/19/26 10:22, Laurent Pinchart wrote:
> I volunteered to maintain the phy-zynqmp driver as part of my work on
> the ZynqMP DPSUB driver. Now that Tomi has taken over the DPSUB, it
> makes sense for him to handle the phy-zynqmp driver as well.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
> I would also be happy if someone from AMD would like to take over
> maitainership of the driver.
> ---
>   MAINTAINERS | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 63389fea5d15..458f2b77d4ce 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -29293,7 +29293,7 @@ F:	Documentation/devicetree/bindings/memory-controllers/xlnx,zynqmp-ocmc-1.0.yam
>   F:	drivers/edac/zynqmp_edac.c
>   
>   XILINX ZYNQMP PSGTR PHY DRIVER
> -M:	Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> +M:	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
>   L:	linux-kernel@vger.kernel.org
>   S:	Supported
>   T:	git https://github.com/Xilinx/linux-xlnx.git

Acked-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>

  Tomi


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
