Return-Path: <SRS0=azk1=QD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55DA7C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 16 Nov 2021 09:59:19 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 25F0561C4F
	for <linux-phy@archiver.kernel.org>; Tue, 16 Nov 2021 09:59:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 25F0561C4F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VIWyx/SFsBkLE3dsZ+nKKN2PF0l3iQIPqes0Mwu4zNI=; b=uwTUxUUkMu9yqF
	9vAJfztEVtWN//RiIIY0QuevJK3wc5ju4Xcq+8ZpgB2elhcBRpA+yFRd5UAmnaip3DItIpaeFkHO4
	s5DeQaHCiIv9NsfNGkj3DwKrsyJOfbjO75fMa5zwtDYPNRgjUVh6kM1yzOxpj1rWAjb13YciNmJx+
	w0AsFVY96BzJ1D80VdkE3gjTF0gGonhnhWn7Nd1cJGdW3iIhI5gb/wbjkOZ9H6ZRdvlKW9Xu1Wm1u
	XHddogq3OHyZjKRuUokmwU/j7sjcmNQZnjCp6w1ENdivs42nK4bETagRFrZhR6SZiXSZhyZbSj/4j
	wpi0xJ17x9pS9kSdXR1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mmvFG-00136v-LA; Tue, 16 Nov 2021 09:59:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mmvF2-00132z-CB; Tue, 16 Nov 2021 09:59:05 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2D65B6120F;
 Tue, 16 Nov 2021 09:59:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637056744;
 bh=72HtoTGOJnv1qQ+d/4YD/KC5HfK4DkAfw+y+7wktYf0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Vsj2gGJxGtDVL78WRh9z3uErysp0TtVMznFmvYqHqr0vcB/bPq9Quiu7cjektfttc
 SImNPjIIhqHmzFmhbXoMftbdi9tfCNIPnYS7wMzNCM5OrGseShZnIhR9EpLqzo3/FS
 XJEoF6jfkUjUg1KTyzGC2pIXX/5Wj8dqkUyIh+IboIgxNnTmPSWRw7MAP5ZFwQac5Q
 hilkJed3q0lBMVyI5horwXcOkiAG4Lx+iVP29IajxQYjP5kBWriAge/JdhOkyInOiZ
 peqI5XrjQV4e07hHoDcJxaX+HZKtFlaQykdHFE6G3Tjc6BSk/uRADhMd2Fhiboj7pw
 5pSWch50ectFg==
Date: Tue, 16 Nov 2021 15:28:59 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Amelie Delaunay <amelie.delaunay@foss.st.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [PATCH 1/1] phy: stm32: fix st,slow-hs-slew-rate with
 st,decrease-hs-slew-rate
Message-ID: <YZOA4wQH4Q4fNVTY@matsya>
References: <20211026154817.198937-1-amelie.delaunay@foss.st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211026154817.198937-1-amelie.delaunay@foss.st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211116_015904_451300_A0DBF31B 
X-CRM114-Status: UNSURE (   5.80  )
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

On 26-10-21, 17:48, Amelie Delaunay wrote:
> st,decrease-hs-slew-rate is described in phy-stm32-usbphyc.yaml. Then
> fix the property name in driver.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
