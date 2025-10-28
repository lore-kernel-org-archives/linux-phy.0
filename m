Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E137CCD1BF
	for <linux-phy@archiver.kernel.org>; Tue, 28 Oct 2025 10:17:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ampiSpsH1SWqrQ13qXaxxxOJe+gWZqD5wkhR5GOrH0=; b=Ah2L42OA6ExPpM
	YTZ5Eve+nC97t8LSJHIURytqqjsHHUOUHMBHUK9FnbiCi9jo8IT4Crrtah9XWAKkBmP8f5iXazk3F
	ABM6zYaiJyhL7qVi0ck68cnqSVXmukE+qDZG+t9ek7BaB/dbHzFGK/6X1DvKFwroJpdIESlFoSPjF
	lcNE7q56hu/QduaMJEWHuHIM7awVrlAKd0nTLef7mQLxoCxn/L9UuQvbfngaCiN7nSz6UgPb/bjCF
	9AvX94Iv5py6278d4uJAMOMTOw/QiJKhZ7kDTfIxo4D7dPCHxFdeA/9LlXkDgnEOZNZnaqU8xION1
	Yj7Vvvq/wPTwLNxdBJdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDglm-0000000FjsT-46xz;
	Tue, 28 Oct 2025 10:17:39 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDgll-0000000Fjro-1yTK
	for linux-phy@lists.infradead.org;
	Tue, 28 Oct 2025 10:17:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id CD5954338B;
	Tue, 28 Oct 2025 10:17:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A4334C4CEE7;
	Tue, 28 Oct 2025 10:17:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761646656;
	bh=VJm5ppskrkPPf3nRfEgvoMvvIklrrttFGp5m0NBmnyk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IShrimE7H1813z47FHt13K47u5BgdRj9iyDRKicWAJd0tX1h0kwskOGZA6tOHtZI6
	 rQVhfGpamswikSuJ1o3da8aJfnTExSR4gMRm0CRruhqJT9w0VHzVCo7mwdhCVppv42
	 mMWd7LH77DxttYQ+CMtoyJH9OknGxrFB929qZaRw0Rb//TdiZS5pN/u+Hq9CA2I227
	 Mx1MdYIPgLin/4McNNL9OyCzdbLBlMhx+7KzfoKJlVlKGQu/ymL+YmtktkSlF29GyI
	 Fe7QSRJO5XSLMp7yq+ME2Ztnu1wccztg+1DdQNUpelQ8TMsSnXqeeH7zu109hYytmX
	 iBufrhfsU4lEw==
Received: from johan by xi.lan with local (Exim 4.98.2)
	(envelope-from <johan@kernel.org>)
	id 1vDgln-000000001Hj-3XDT;
	Tue, 28 Oct 2025 11:17:40 +0100
Date: Tue, 28 Oct 2025 11:17:39 +0100
From: Johan Hovold <johan@kernel.org>
To: Miaoqian Lin <linmq006@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Roger Quadros <rogerq@ti.com>, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH] phy: ti: omap-usb2: Fix device node reference leak in
 omap_usb2_probe
Message-ID: <aQCYQ8NY3iaC4G_E@hovoldconsulting.com>
References: <20251028062508.69382-1-linmq006@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251028062508.69382-1-linmq006@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_031737_531579_4220EF01 
X-CRM114-Status: UNSURE (   9.92  )
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

On Tue, Oct 28, 2025 at 02:25:06PM +0800, Miaoqian Lin wrote:
> In omap_usb2_probe(), of_parse_phandle() returns a device node with its
> reference count incremented. The caller is responsible for releasing this
> reference when the node is no longer needed.
> 
> Add of_node_put(control_node) after usage to fix the
> reference leak.
> 
> Found via static analysis.
> 
> Fixes: 478b6c7436c2 ("usb: phy: omap-usb2: Don't use omap_get_control_dev()")
> Cc: stable@vger.kernel.org

There should not be any need to backport this one.

> Signed-off-by: Miaoqian Lin <linmq006@gmail.com>

Other than that, looks good:

Reviewed-by: Johan Hovold <johan@kernel.org>

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
