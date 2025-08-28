Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CAA23CA0FF7
	for <linux-phy@archiver.kernel.org>; Thu, 28 Aug 2025 17:25:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EH+3NZvrwLCIoyUK71JlBe9Mc6IooGMNaG3MnDX8Eo8=; b=MpttcaawobI8St
	n9l16Uhn8Ra6n910XIZKWGhK3tK4elkYfpJo6h4Pi+AO3UCgy4GjTRFI/lySoz+YgGNYEF2/RxN4f
	btzUcvDzmnjPu0UCT9ikyTngutLL71vNzOsIkoQO+m1bbFZe/ijobyHP1qpXztXgPTh2WW5GOYqnv
	eEr+TdbZkIZqkyR31IQKsZYfXSXUnlQTXg0lBz/YYuBEHUKfOSxt8xWUTFdQ6ZSGPSV7thS38hARq
	b6NnvZ5oCh1jN36SiMAO+HOv7RS+6Nz4oGvk0Ll9zdhbetCMQpw90TUeomUlLjydyFROX7yvCn3Wy
	ZiLOflQYUFxYCsr0mZIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urgNT-00000002SAM-1rPF;
	Thu, 28 Aug 2025 17:25:35 +0000
Received: from zeus03.de ([194.117.254.33] helo=mail.zeus03.de)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urbmT-00000001YfC-3Ung
	for linux-phy@lists.infradead.org;
	Thu, 28 Aug 2025 12:31:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=lKjx
	Us4HVUC8rhIRTwan/Wzl+T8nuzbBj0Fovx1vxPk=; b=CQhOGgqJRmQoz1JKBm+P
	yMbBC6Eq9h7m1/1IJfTEQY4SCl+W013qyjFDAuVSPlWShtu+dBBaLRc9I8d0Rs67
	DiTncLfw824S0PmlJiXzD3Oh7bapfl7psFRBKUWxc8CkjwoLOoqY7rvPi97VgN+x
	dz4lNWsnynjRFKp+yN2gvkV13JFY6m0CrrJYs0pFkOupmOCGAExhqAfLdydKUayB
	cOcFGLoVeCCMNOsmapRX1LXUjKbleXJRjuMav4e9mv+WErVcePrhgSXO5mrlh0ax
	izn1BvCYR9nG95vQP1vxH1azGwVZL9rLTPlngW1iyx/Wqw2zX1aStUM2C9rq6qNT
	NA==
Received: (qmail 1012272 invoked from network); 28 Aug 2025 14:31:01 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 28 Aug 2025 14:31:01 +0200
X-UD-Smtp-Session: l3s3148p1@1/L+E2w9BqQujns8
Date: Thu, 28 Aug 2025 14:31:01 +0200
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Liao Yuanhong <liaoyuanhong@vivo.com>
Cc: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	"open list:RENESAS USB PHY DRIVER" <linux-renesas-soc@vger.kernel.org>,
	"open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>,
	open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 2/3] phy: renesas: rcar-gen3-usb2: Remove redundant
 ternary operators
Message-ID: <aLBMBYqEsORQwv-8@ninjato>
References: <20250828122401.17441-1-liaoyuanhong@vivo.com>
 <20250828122401.17441-3-liaoyuanhong@vivo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250828122401.17441-3-liaoyuanhong@vivo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250828_053106_148051_74898B52 
X-CRM114-Status: UNSURE (   6.08  )
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

On Thu, Aug 28, 2025 at 08:23:56PM +0800, Liao Yuanhong wrote:
> Remove redundant ternary operators to clean up the code.
> 
> Signed-off-by: Liao Yuanhong <liaoyuanhong@vivo.com>

Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
