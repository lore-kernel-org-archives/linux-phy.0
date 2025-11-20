Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34422CF8549
	for <linux-phy@archiver.kernel.org>; Thu, 20 Nov 2025 17:11:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eoajvmJZfgDlHcB1525YTWKghblmpEUiWPFHVdF5big=; b=owGgZbgmAmvsia
	fTRrOiuD0VUj89E68+pd8Dfu9ZaFitUveVl5zi4PQZyQEMGpcSz7286CfgLmISvad2T2DHMD2OHeJ
	bKUCxoN0dwAhKWQLNiLv9Sqm4UAKbsDkHjvhdVZU9Aj88H7hTc4MYmcX8UGv7kg88CFpMwW7Ydrm7
	m/C+RGEuvwXNVbFcR5aWySEnPO0quPrNJKJ6lgh55q5TQ2jF98XJm39IK3INzQatxZh7Re/P/XUdC
	SmjkoS5qLS1CHCU3mq120m1uLllp8FqzI7dznDFQxPXj867h+my+xbnH1rcLIdK/4MnpNY2lJRZAS
	286j7vwnjhNNKJ5bjzPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM8C7-0000000746n-42lC;
	Thu, 20 Nov 2025 17:11:43 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM8C6-0000000745f-2jKB
	for linux-phy@lists.infradead.org;
	Thu, 20 Nov 2025 17:11:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 19BD26020A;
	Thu, 20 Nov 2025 17:11:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 45803C4CEF1;
	Thu, 20 Nov 2025 17:11:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763658701;
	bh=mvW1lwQp9k6xmFvEFz7FUTpGedosXwSsqWMpbLCH6p0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=KP5PQJQL+4n7oYYjHFAVH003Ft19/YwBi43sHrHFCof6Tw/+Yp4RRNPrd9yVj6PAY
	 wgO5HRLMKYGBRjT16Iis/iZDU+hYU0wJ5qTWNlVEX62Nl3keCKbfaRLXyBeQUX7VXg
	 KZ+cnYffptCypo71P/50+eHTvSVA8c2Rvy+wfcT+vk7b7jof5hFoUTkzrodRANCYDW
	 l34kBVuW08ttC64A5ot34gahF/EUTT+XhNGkDO4WmOfAfWkZ+SJVZojG/KyjypYjh6
	 n0P1d2v/C1GzeD8MNOXm1WRTC+36xyPpwVlpDIR5ZEeetixAdi8v6tW6SChtOvA6TU
	 vq3wY4yfSZKEg==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Ronak Raheja <ronak.raheja@oss.qualcomm.com>
In-Reply-To: <20250920032158.242725-1-wesley.cheng@oss.qualcomm.com>
References: <20250920032158.242725-1-wesley.cheng@oss.qualcomm.com>
Subject: Re: [PATCH] phy: qcom: m31-eusb2: Update init sequence to set
 PHY_ENABLE
Message-Id: <176365869990.207696.989282902866699019.b4-ty@kernel.org>
Date: Thu, 20 Nov 2025 22:41:39 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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


On Fri, 19 Sep 2025 20:21:58 -0700, Wesley Cheng wrote:
> Certain platforms may not have the PHY_ENABLE bit set on power on reset.
> Update the current sequence to explicitly write to enable the PHY_ENABLE
> bit.  This ensures that regardless of the platform, the PHY is properly
> enabled.
> 
> 

Applied, thanks!

[1/1] phy: qcom: m31-eusb2: Update init sequence to set PHY_ENABLE
      commit: 7044ed6749c8a7d49e67b2f07f42da2f29d26be6

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
