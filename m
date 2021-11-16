Return-Path: <SRS0=azk1=QD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 36B1BC433FE
	for <linux-phy@archiver.kernel.org>; Tue, 16 Nov 2021 23:38:42 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CF20D61B96
	for <linux-phy@archiver.kernel.org>; Tue, 16 Nov 2021 23:38:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org CF20D61B96
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=infradead.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JpyBJqbBC8LHbxJlK7N+t+42ODGZ2rYoy0QIUvTbIHk=; b=PZzxeMoYZ2mZiFjT3pHF9qH5SN
	6sG2/MhsovCeKjSwuam3ioargIHNeXCdIbhZGc/ioWpMRbvisq5CoYy3ZFXadCEGpqiIxH8hG33MK
	damRpdIy1RXalczG92EfRkkdQAMGfhGSuGKgsCb+MKH/FT668jR6PsF6pi9VujPI26xniUmZSviOC
	wda+NmTOI4gl8eyzqVteATzwMGEMVurIJ6lt9XpVxSZAfVUVJL1FWRJGAT9zlgHN/WnWNOIZOgNzp
	GmwA7Yy5FTeKmONhCGoP6zXlPhHGAyTI+RB6u3d79FWsmKD6diFtWTOP0mpN2RiU9WCfnoHC2A2Mj
	DPku22zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mn82D-002xQ8-AF; Tue, 16 Nov 2021 23:38:41 +0000
Received: from [2601:1c0:6280:3f0::aa0b]
 by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mn82C-002xPc-12; Tue, 16 Nov 2021 23:38:40 +0000
Subject: Re: [PATCH 2/6] phy: qualcomm: ipq806x-usb: Fix kernel-doc style
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>
Cc: linux-phy@lists.infradead.org, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20211116103951.34482-1-vkoul@kernel.org>
 <20211116103951.34482-2-vkoul@kernel.org>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <1ab0161b-4320-773f-b160-f28db775198d@infradead.org>
Date: Tue, 16 Nov 2021 15:38:39 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211116103951.34482-2-vkoul@kernel.org>
Content-Language: en-US
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 11/16/21 2:39 AM, Vinod Koul wrote:
> The functions are documented but there were style issues, so fix
> the style and add missing description for phy_dwc3
> 
> drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c:130:
> drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c:174:
> drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c:212: warning:
> This comment starts with '/**', but isn't a kernel-doc comment.
> Refer Documentation/doc-guide/kernel-doc.rst
> 
> Signed-off-by: Vinod Koul <vkoul@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c | 26 +++++++++++----------
>   1 file changed, 14 insertions(+), 12 deletions(-)
> 

Reviewed-by: Randy Dunlap <rdunlap@infradead.org>

thanks.
-- 
~Randy

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
