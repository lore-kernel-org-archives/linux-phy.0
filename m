Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8783AC38A02
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 12:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LEf9Rzo6fJdflkEeHNu/fabSHJepnGzBqiIvyZd7L4Q=; b=LY/jiLOQ8e00zT
	nQnVUdyv+4pI6vdbPRyQroD5I6RBvRNo56zhyBYf3QtiV4oswrFVud7UHwKRey6HYPpeHm9MwthA+
	/RZ2hJGgEzgiTgWh6f8vTnrh0hRSwhhn6tygz6h1FyYps/V7qzw2OC2W6uyPQYslByuOk9R+u2yBr
	V+jYhENClps6rZJL+W/4IW9myMr5E8E5mN5bpjYYZ59QXcbjXTJvp+WmYvONxay24BFWx7iNFVjWO
	CCroh+M1SgIF2MNl3VN0r9Sn9fqbbJvJxVSTwOv6qBl110h8W9nd7xjYzX2XaoVriTtqTslQu92FK
	Hf4S/OJ45VTdmfBYqF4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooOgP-00H8OX-Qr; Fri, 28 Oct 2022 12:41:57 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooOgN-00H8Ns-Pe
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 12:41:57 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 80EBFB829B7;
	Fri, 28 Oct 2022 12:41:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 65F1CC433D6;
	Fri, 28 Oct 2022 12:41:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666960912;
	bh=yt0OtT5mZC5NU6S4qy6NmPJ8mfVfSxPDuZcOimddJT8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tyeO2dUijGtvSzQjoGST0fMWZEqS7sLc8zPDzFQqFpeuzBH5TcRbumevySoCzJONK
	 GGQN3D8vHdWjsoh/K3BFY6/js81GK+HOnolj3dfVqVmEFh1SLdtTVsTpEG81w3xGkp
	 DY7e4UlunNCW7x8BDGDXXBbSJr+VKS55uFJiv0SNtf77KMV+lZHSyUM1jiz9+xpjaz
	 OTqt2ttR5Sz/Vc2LCblOfr7NdcWfKB5bA9+5K6eoW0lmbYnVwdcyfe7WewGhLr0jqG
	 oQZVwcm1x6fGCxBNmTm7BsDc/w1AE/jHITzTH8tPHPOSMBK1qPzMbU/dZPC5VpfTpL
	 +OfTmaVl3L57Q==
Date: Fri, 28 Oct 2022 18:11:47 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	Robert Marko <robimarko@gmail.com>
Subject: Re: [PATCH] phy: qcom-qmp-usb: correct registers layout for IPQ8074
 USB3 PHY
Message-ID: <Y1vOC3kiUTb2C25Z@matsya>
References: <20220929190017.529207-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220929190017.529207-1-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_054155_991425_184CD80B 
X-CRM114-Status: UNSURE (   7.65  )
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

On 29-09-22, 22:00, Dmitry Baryshkov wrote:
> According to the kernel 4.4 sources from NHSS.QSDK.9.0.2 and according
> to hardware docs, the PHY registers layout used for IPQ8074 USB3 PHY is
> incorrect. This platform uses offset 0x174 for the PCS_STATUS register,
> 0xd8 for PCS_AUTONOMOUS_MODE_CTRL, etc.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
