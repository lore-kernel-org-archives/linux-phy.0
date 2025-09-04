Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9541FCA1013
	for <linux-phy@archiver.kernel.org>; Thu,  4 Sep 2025 19:54:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=tf/vUSMErVmQRsukliLAjbZo+rMD9uqRbhgIJUpREpI=; b=QgRGc3En7wzt0K
	ZmPVKbcfTZ2xJgf2GkyLDB5Lwh0N/FbSQCpg/gJENPxHJAWrBZ3UF+fj1CiHz6maMRsIAnH83sfV2
	xVypwv7uxpDIwktbgQIXFz9yQmA4LLsPJnVPrpMlOmk7O3P9tO+8hy431RXnRDKbPi4+OvVKUmrKY
	vY2ajFAjUs18qIFh5YTW8cgd/1/5T02XQOXTyOX062Gm43cHCbYRBE6T8ab7AfrtMed4EeLOxNFyn
	fYEVPq/qUy4aT0mv/mOAqq5Fuvc/7DXdEOZ84ylA29UJ1OA+lQrS2byQiWxOYdd0ceFBIRxBKyneR
	BL2XtXusqDazkbS+B9qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuG28-0000000E4s0-1bgJ;
	Thu, 04 Sep 2025 19:54:12 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuCbr-0000000Cn9v-19tG
	for linux-phy@lists.infradead.org;
	Thu, 04 Sep 2025 16:14:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 386D16024B;
	Thu,  4 Sep 2025 16:14:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ACEB2C4CEF0;
	Thu,  4 Sep 2025 16:14:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757002489;
	bh=rEMEwwiqX71jcWwIKg4FqSuCHtmTX8Sm6z7xLdJeohA=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=LBu3SAFqqnRZNJy0wmMXB8N1fWO3P+KG8YnKIoLXdFC3rvCnrAnWUIgtr+5j3SYC4
	 h6IiRYnflaajuAfo+q08qeTM6Uncn6B0HOHW8CXSWBKkGPpxQyStX6e+4cCE/4prHk
	 J1iKBglX59vHRPrRkDDha6xlBGtVElxGjz5NP/gigH1i0npkbvCmkOt0olNslkFMo/
	 znCpV9nwhiNc9gF26DVqos5ypl1vczW+F4+n3K/U2iDAwXvMe8Q8lfoBaga5xSQI6B
	 mIfYJTScp3Ws02O/hnB60sEllOvxjlYkccFv/SxBV1ukGPKiTZ1jIdPM/Hrfk0mpC2
	 Itqcji/NBlo4g==
Date: Thu, 4 Sep 2025 11:14:48 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
	mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
	bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
	kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
	kw@linux.com, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
	qiang.yu@oss.qualcomm.com, quic_krichai@quicinc.com,
	quic_vbadigan@quicinc.com
Subject: Re: [PATCH v6 1/3] PCI: qcom: Add equalization settings for 8.0 GT/s
 and 32.0 GT/s
Message-ID: <20250904161448.GA1265317@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250904065225.1762793-2-ziyue.zhang@oss.qualcomm.com>
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

On Thu, Sep 04, 2025 at 02:52:23PM +0800, Ziyue Zhang wrote:
> Add lane equalization setting for 8.0 GT/s and 32.0 GT/s to enhance link
> stability and avoid AER Correctable Errors reported on some platforms
> (eg. SA8775P).
>
> 8.0 GT/s, 16.0 GT/s and 32.0 GT/s require the same equalization setting.
> This setting is programmed into a group of shadow registers, which can be
> switched to configure equalization for different speeds by writing 00b,
> 01b and 10b to `RATE_SHADOW_SEL`.
> 
> Hence program equalization registers in a loop using link speed as index,
> so that equalization setting can be programmed for 8.0 GT/s, 16.0 GT/s
> and 32.0 GT/s.
> 
> Fixes: 489f14be0e0a ("arm64: dts: qcom: sa8775p: Add pcie0 and pcie1 nodes")
> 

Drop this blank line.

> Co-developed-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>

> +++ b/drivers/pci/controller/dwc/pcie-qcom-common.c

> +	for (speed = PCIE_SPEED_8_0GT; speed <= pcie_link_speed[pci->max_link_speed]; ++speed) {

Use "speed++" when there's no need for preincrement to follow typical
drivers/pci/ usage.

No need to repost for these.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
