Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 455AACA5FF1
	for <linux-phy@archiver.kernel.org>; Sat,  3 Oct 2026 15:25:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Imq7zq1VWj8lXik7URUyLlx5yiz2VhZG0Mvp5wuIKHU=; b=NKeGQI5fz5HHZ3
	KZcXKqMU5GTg0627rzZRkTfv1URRl4RpmxjEGg5qK04Ud8CSMAIOWhvapTlzCufbgh8yu7Y0qpOHG
	moV1kP81MDVBcHwMb59cnCwRX5zN4BCjBNcHsXMsZRNGSiP/2KfVXzoQ0O7h1/iyRUpzpacJeWqlu
	qeUqmdjNMbwwvnLEfS+GjTmqIx3zcb+hbuYsFzP7C9Jy/d0cQZICRh0SgkKA9fn7yxlA1rXyfumZs
	9sZdNbtv6QgJD+38Rk3Bni0Lx8TbitzPMtqQEY9bW8aYvgzyoXSz+hocST+lpMm70g2NF2l5uJIi9
	1be7OkC7AgBj6zK9VAWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xD1cJ-0000000Dgi6-3vyU;
	Sat, 03 Oct 2026 15:25:39 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xD1cE-0000000Dgff-0H3s
	for linux-phy@lists.infradead.org;
	Sat, 03 Oct 2026 15:25:38 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 8256360D82;
	Sat,  3 Oct 2026 15:25:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F8C41F0089D;
	Sat,  3 Oct 2026 15:25:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791041133;
	bh=049uPGtYxN8IGOPOlZbVCBT70USK+uuKiYpF8itJ5Fc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=nVtyIJM8IjKyr3dA2F2MEBbVGv03WpB3+Lfv1JfvrIoWwpsExT9nicFOr7lyRzwn1
	 N0kvYK0xtgdNMQuctFS8S6lEn6oUBQRXlCM7w4mmYnyq2Fc8s9pYs9DiiH7LiFkMC8
	 aLjHG8ng+CveIfWp3Dh10Pk7xRm87SsdlolIKO3LB22uSn6RGxalbxck/FR+QxNqni
	 PVev6S9Hfco5Lzh+WCRskUBLPSVoK1LlzJ2P2gQOnFdB/QVUL2VqQoLNjLM+9MvtBa
	 HZyTSDXYY8aVLXZcTIlSV/LKMOvhfMAAt2LqDNFO9FzSN0XUGlGIj33QdyMgIefQH/
	 OSXvdRZgXCcSg==
From: Vinod Koul <vkoul@kernel.org>
To: David Carlier <devnexen@gmail.com>
Cc: neil.armstrong@linaro.org, qiang.yu@oss.qualcomm.com, mani@kernel.org, 
 konrad.dybcio@oss.qualcomm.com, krishna.chundru@oss.qualcomm.com, 
 linux-phy@lists.infradead.org, linux-arm-msm@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20260825225729.230493-1-devnexen@gmail.com>
References: <20260825225729.230493-1-devnexen@gmail.com>
Subject: Re: [PATCH 1/2] phy: qcom: qmp-pcie: Select MFD_SYSCON for the
 multi-PHY driver
Message-Id: <179104113076.223537.8163260919027364085.b4-ty@kernel.org>
Date: Sat, 03 Oct 2026 17:25:30 +0200
MIME-Version: 1.0
X-Mailer: b4 0.14.3
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


On Tue, 25 Aug 2026 23:57:28 +0100, David Carlier wrote:
> The driver reads the active link mode through
> syscon_regmap_lookup_by_phandle_args(). Without CONFIG_MFD_SYSCON the
> stub returning -ENOTSUPP is compiled in instead, so probe fails for
> every device and no PHY is ever registered.
> 
> Nothing in the build catches this: the driver still compiles, and arm64
> defconfig happens to enable MFD_SYSCON through an unrelated select.
> 
> [...]

Applied, thanks!

[1/2] phy: qcom: qmp-pcie: Select MFD_SYSCON for the multi-PHY driver
      commit: 77a0e6ae5dec54fb6049e3ab88288bc40c81f9fd
[2/2] phy: qcom: qmp-pcie: Check clock-output-names count in the multi-PHY driver
      commit: fb0f0e0e9e5dace7a6d9cde289537980ad35db3d

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
