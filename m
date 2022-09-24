Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D627FC07E9D
	for <linux-phy@archiver.kernel.org>; Sat, 24 Sep 2022 07:18:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cDuwLV5XazOn9tMaz4HxUnMtBYlHWpXlt+J3duSyl6k=; b=V0jTJtLHoJGHVE
	NS3cNOSSGaUNegpDTCRETUAr8bt88Przo+hZ4Cb81jI9ZZKJflbCMdd7pXmNEiMSqolrcVsomeF/m
	imxbL4Yuy9GYNBqVHwLeGQjNSSRsn657/F4raurqrAUvLqhXQ//Kj2z3uYARZE8FfzyGhJQx0f6O7
	iB96QzYYh5JqOY9C6kg8lJMVPXYbXeFuvGXT0FNj/Pj4p3SQTOzs6GtLEpdQtSePZ3ANBXxD5mKkR
	7ph52o56Qqe9l72jtwwpZx50wAw1CF+Kw/7gPyQddtpUtF0Tpk2cvM95sANDKr6Hr7IYka5fBCc3E
	x92hjfaYCBDZPKAAhNlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obzQs-006Ym0-A3; Sat, 24 Sep 2022 07:18:38 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obzQp-006YlQ-IO
	for linux-phy@lists.infradead.org; Sat, 24 Sep 2022 07:18:36 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id E02DBB80E10;
	Sat, 24 Sep 2022 07:18:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C485AC433C1;
	Sat, 24 Sep 2022 07:18:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664003912;
	bh=WYcPEBIbFsLgcirOxORHxczcQ1qEYSvFDeSAKl0GsoM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MUnMKX06OXEQtjj6TrOXPUGYJOSPl8c0/z4c/LcAqbs4lYAsqs0aMTlPGdhgY99dn
	 uapU1niSg/8mfJR1qbFbhKe+gNiZ9RNSStgNRQwt2HfCxXsKqQZUtGEDkdBSjNrTFn
	 CEKzj0hE0pJzRifgkJ0gTAXLE6tpsET7VQFxuhLEjdaBm0pzdrS/PCrXKj4Kl51/1G
	 KlQ5hbgPECCsldIaXDntphans183VJuEhIjRoZOXD+W3ctoIc8hLW0fasZEWcNARPv
	 rYNbcdIyhwR7nAak/2wwuB90/nMPY8KKPyFyhe8balrROGOUQrFnz/J/3XXINgDbeX
	 lg8TdAJtZAFHQ==
Date: Sat, 24 Sep 2022 12:48:28 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Dongliang Mu <dzm91@hust.edu.cn>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Vivek Gautam <vivek.gautam@codeaurora.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Jaehoon Chung <jh80.chung@samsung.com>,
	Dongliang Mu <mudongliangabcd@gmail.com>,
	Viresh Kumar <viresh.kumar@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: qualcomm:  call clk_disable_unprepare in the error
 handling
Message-ID: <Yy6vRNfEBDUqebqX@matsya>
References: <20220914051334.69282-1-dzm91@hust.edu.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220914051334.69282-1-dzm91@hust.edu.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220924_001835_770370_61A4183C 
X-CRM114-Status: UNSURE (   9.60  )
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

On 14-09-22, 13:13, Dongliang Mu wrote:
> From: Dongliang Mu <mudongliangabcd@gmail.com>
> 
> Smatch reports the following error:
> 
> drivers/phy/qualcomm/phy-qcom-usb-hsic.c:82 qcom_usb_hsic_phy_power_on()
> warn: 'uphy->cal_clk' from clk_prepare_enable() not released on lines:
> 58.
> drivers/phy/qualcomm/phy-qcom-usb-hsic.c:82 qcom_usb_hsic_phy_power_on()
> warn: 'uphy->cal_sleep_clk' from clk_prepare_enable() not released on
> lines: 58.
> drivers/phy/qualcomm/phy-qcom-usb-hsic.c:82 qcom_usb_hsic_phy_power_on()
> warn: 'uphy->phy_clk' from clk_prepare_enable() not released on lines:
> 58.
> 
> Fix this by calling proper clk_disable_unprepare calls.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
