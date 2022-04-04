Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94D0FC433EF
	for <linux-phy@archiver.kernel.org>; Mon,  4 Apr 2022 09:01:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t2eC9eJRppeXjPqz8EjfoGpq4TdHs2s7v9BQ4EnmiMM=; b=Y7BFSoOGTlWKE6
	dhKW0ttQrSpOcWkjjSV1B6fNSBK2k6HvhAQiQPFVqyGrElREJ5e9RMEw+nDmN3kjXUbdzR8Tur58d
	NWjUkZ54pF1OWDbrASCjLqdRKLvuluKrSu4e7mynneujZLegXc3e1Xaadufr59VB9lY54IJksUhJ8
	pfdTWSLe0xaNGpkl7c6EVucsEPsA9UFnbXju7DeZh8/tsqeoHLCzaXRT0FDtKFrbTBU1tfOmZ7KIW
	P6ysQyZYzmQLalIOYRZTa7bZaKd5iqV8RmM7ujiyQnOzD3PjL9H5PARbWtyhDpGyokdVptbiK1i2y
	+ysVzW1Og0f69NmBEhVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nbIaN-00E0S5-0v; Mon, 04 Apr 2022 09:01:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nbIZJ-00Dzd3-ND; Mon, 04 Apr 2022 09:00:15 +0000
Received: from wf0416.dip.tu-dresden.de ([141.76.181.160]
 helo=phil.dip.tu-dresden.de)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nbIZA-0008Ew-8w; Mon, 04 Apr 2022 11:00:04 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 krzk+dt@kernel.org, robh+dt@kernel.org, linux-rockchip@lists.infradead.org,
 vkoul@kernel.org, linux-arm-kernel@lists.infradead.org,
 yifeng.zhao@rock-chips.com, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, kishon@ti.com
Subject: Re: [PATCH v9] dt-bindings: soc: grf: add naneng combo phy register
 compatible
Date: Mon,  4 Apr 2022 10:59:56 +0200
Message-Id: <164906273050.1398682.6515580602409136621.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220324120122.1339-1-jbx6244@gmail.com>
References: <20220324120122.1339-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220404_020013_777511_3B1836A1 
X-CRM114-Status: UNSURE (   6.04  )
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

On Thu, 24 Mar 2022 13:01:22 +0100, Johan Jonker wrote:
> Add Naneng combo phy register compatible.

Applied, thanks!

[1/1] dt-bindings: soc: grf: add naneng combo phy register compatible
      commit: a66f6482f8f1669209812cd6fa991c3774ce1d02

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
