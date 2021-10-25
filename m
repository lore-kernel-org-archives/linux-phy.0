Return-Path: <SRS0=BRk1=PN=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FF0C433EF
	for <linux-phy@archiver.kernel.org>; Mon, 25 Oct 2021 07:20:12 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 623D260F9C
	for <linux-phy@archiver.kernel.org>; Mon, 25 Oct 2021 07:20:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 623D260F9C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sQSYq/wWYJlV3Q1of3G279cf8uPKjBoSiC66FuavGkk=; b=1hxolPtEzpGijO
	ySzdi6mZvPzLxfmpK8txGcRfzGDpLThVH30Q19ApGuVX8RG/8UXEMxtwLrifkxd0ldCvsZ5Mkc1P6
	m2NOgFd1bYMLpzHa0XFG4zYhpGFuZD/PQJQ6AzMDL0h3gJWPefdwojV/lyd9HaTiLmUUxUnTKyfQD
	v5uX/yDGnZgH7KH6tIeLzjQAdShnZPYUTQpbUTXaGI8gigz6f+GZ8pO4i2KvDzNvgSn9RWH6LBvRF
	XEZkxNScGaKKUy88L8BoYQZh0k4MWVxY3b0l+ZE5U//2wKGhbx1QWl4kh25qEAvriVsQPVk5q9fiT
	Is316AyfCaDokmS3cj2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1meuHD-00FZyY-Oy; Mon, 25 Oct 2021 07:20:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1meuAb-00FXka-IZ
 for linux-phy@lists.infradead.org; Mon, 25 Oct 2021 07:13:27 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4FC236008E;
 Mon, 25 Oct 2021 07:13:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1635146001;
 bh=ZwPIhP5Fum4SkSbAuDdcea+11cJeBGh0IzPYNZOWN2c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lOBd/kIbQHtMM/lhGRgXb34HCMMWKHqZ8O3gcTZGLfZyZhIqBOH0LoqY29N3U9w8m
 sdxSnBu/xq85wp7NSIOtboRRyyDcWsaEDnhtFYQjfWy45BzicSkhzP5m5WKArR1Eki
 B1ttumMRqyc4rGUft0G1mlxdoRlCcqBPIdb+7f1XOZS03Adc1ccN0eijLShq1Dibre
 RZ3WRV+c7oYsL5SinoyLXzHLkhvWVEHoNMhNJ6Ze2mrbOdbs2zeO071v957dIlDTO5
 eEIiXf8W6UHeMdJfZVIkv8Z2mkbUvbYnwUYPGTmIpEUA7IzR21HGpOSUOtqZhCn1WU
 Aky5DoH++XHIg==
Date: Mon, 25 Oct 2021 12:43:17 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Sandeep Maheswaram <quic_c_sanm@quicinc.com>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Wesley Cheng <wcheng@codeaurora.org>, Stephen Boyd <swboyd@chromium.org>,
 Doug Anderson <dianders@chromium.org>,
 Matthias Kaehlcke <mka@chromium.org>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-usb@vger.kernel.org, quic_pkondeti@quicinc.com,
 quic_ppratap@quicinc.com
Subject: Re: [PATCH v2] phy: qcom-snps: Correct the FSEL_MASK
Message-ID: <YXZZDVIbgkhXFfGi@matsya>
References: <1635135575-5668-1-git-send-email-quic_c_sanm@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1635135575-5668-1-git-send-email-quic_c_sanm@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211025_001321_679425_8D9E0A5D 
X-CRM114-Status: UNSURE (   5.96  )
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

On 25-10-21, 09:49, Sandeep Maheswaram wrote:
> The FSEL_MASK which selects the refclock is defined incorrectly.
> It should be [4:6] not [5:7]. Due to this incorrect definition, the BIT(7)
> in USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON0 is reset which keeps PHY analog
> blocks ON during suspend.
> Fix this issue by correctly defining the FSEL_MASK.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
