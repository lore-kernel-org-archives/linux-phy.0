Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B31EC35274
	for <linux-phy@archiver.kernel.org>; Thu, 21 Dec 2023 17:13:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rAz/3+Op3pYc/WPHXxZBVNQ9i0oR77C+pzapgeFx+KI=; b=A7/LX3mkpN2Ma7
	bZ/rDyXU1hATz1UWX7UKL8aC7F0Pi9Be2cNMgWSrNZLgVg7u0xRdUF7dxwymsRoL2L0ZbEoke1OiD
	2RG9bfHCvueJaPbaJ8iOGRAsQ6xQGq1VpAfPCjoZt6JUxuTE+JO2us729lTxK0tOOyKErvdsxw6aS
	P7Zp2xaZwXSo7i3su3HsRMuqXuM5ez/JP77xFBvTpyo6OartV/7Es92jFHKCS8rW289krbqQlrq3U
	TJewCV3rP8Q5FlRplbHvluTPfm9oUE5/1nWiFMXphsgh6U8/IzU6+Zu5UKu5Xfodc2eUZAY9uUtQw
	96datpP9Mf4NwKZUgSsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGMbn-003bLg-0i;
	Thu, 21 Dec 2023 17:13:19 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGMbk-003bLG-1Q
	for linux-phy@lists.infradead.org;
	Thu, 21 Dec 2023 17:13:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 206FAB82150;
	Thu, 21 Dec 2023 17:13:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A0D60C433C7;
	Thu, 21 Dec 2023 17:13:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703178794;
	bh=nAyiX2jVa47VcjFldc2L8bwP0OG/80C5+x4N04/VWn0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ejtRGhxj7cS86pXS2KzLKKAJLerUlW6+M4wQzjlIRnyiP9lgkl9MC3SHQ91dc6igr
	 VJV3uq+wzBBLwagh48AOWkoTR5/nZ52RUXfZYb2WH2qfjMH10CTn1i/QGgcA4Zl4Ks
	 3YZkXhWhsMC1vjaeUCzV8kS4Wm0iKkwgdxLXOv/Joqm9GpLLBX0+9pOXsedkxGZYSP
	 4eGIByOofhN2AD9DCJpp72YMNGWwY16z7GSw4g+sUnt/50LhUMCFxYp4emIOC2xg3g
	 q782ViZF4N3XFY73gV+oHnpfcLmPLzuPxio69tjaqz9Yum5sEOInfX2BgLuwf+tYps
	 nKYXZS74e7JXA==
Date: Thu, 21 Dec 2023 22:43:09 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Can Guo <quic_cang@quicinc.com>
Cc: bvanassche@acm.org, mani@kernel.org, adrian.hunter@intel.com,
	beanhuo@micron.com, avri.altman@wdc.com, junwoo80.lee@samsung.com,
	martin.petersen@oracle.com, linux-scsi@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Abel Vesa <abel.vesa@linaro.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	"open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>,
	open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v8 09/10] phy: qualcomm: phy-qcom-qmp-ufs: Rectify SM8550
 UFS HS-G4 PHY Settings
Message-ID: <ZYRyJU9klhZzLdni@matsya>
References: <1701520577-31163-1-git-send-email-quic_cang@quicinc.com>
 <1701520577-31163-10-git-send-email-quic_cang@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1701520577-31163-10-git-send-email-quic_cang@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231221_091316_614288_C8C36CA2 
X-CRM114-Status: UNSURE (   7.25  )
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

On 02-12-23, 04:36, Can Guo wrote:
> The registers, which are being touched in current SM8550 UFS PHY settings,
> and the values being programmed are mainly the ones working for HS-G4 mode,
> meanwhile, there are also a few ones somehow taken from HS-G5 PHY settings.
> However, even consider HS-G4 mode only, some of them are incorrect and some
> are missing. Rectify the HS-G4 PHY settings by strictly aligning with the
> SM8550 UFS PHY Hardware Programming Guide suggested HS-G4 PHY settings.

This fails for me, as I have picked Abels offset series, can you please
rebase these two patches and send

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
