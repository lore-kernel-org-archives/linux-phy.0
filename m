Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1394E6F085
	for <linux-phy@archiver.kernel.org>; Tue, 23 Dec 2025 17:45:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UdfRk/Guoi5DGXtIPQ10lloC0oMqAnwnWjQ3RxxdR48=; b=cbWxziJ4ec9OEP
	Wec7GB6MfZFXWRZfM6a1J0mzUDpZbzdyjB12QicuooAhcoevr619zIcvO/pKmvGM0+0HqQawpJ67B
	kLkB8H6//kV3CTTNt67Ar/XXh/VkJmLub/xHa9YjP6EHDNAnGTkYM7dwFutn5RXPpmHRn906BYYGC
	VxG+jfieLYMa6VZ1opi7qetzxSYPdFAnAboF0L2OecqI3Gu9tPXeGuccow8XTIrAmrZhk8S9F2fZd
	BCWlHB2+5IE/so1xkLzkXowjEYGt5VcJtK7uO5M7tgyEcjUOcrkosX0mnjY3SjnFYZ8cVXpp50ioz
	rcSuVgzeKntK4A9p/X9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY6Rz-0000000FrRQ-2DuE;
	Tue, 23 Dec 2025 17:45:35 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY6Rt-0000000FrNP-2pH2
	for linux-phy@lists.infradead.org;
	Tue, 23 Dec 2025 17:45:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 6421243913;
	Tue, 23 Dec 2025 17:45:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9EF73C19421;
	Tue, 23 Dec 2025 17:45:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766511929;
	bh=D/zqMZMrg5bxSBohWp/OUYz4EvL7ZkwbpOyavwaQjSM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=qvjo0HFwSOOPv6GoxFkZW/BIoZo29KqCcJPwrqC30j3UzKgKac1oXPKBJVt0sXx+h
	 mx+cB4jCnoZDLE3bxmvnCRJK3U+MxwxhwC1a8ldr1l96+4ZyJkXBEl5qNUC21qdsZx
	 YJfxDCJTgEFrRATdqGufZDczbLaLE6dAaorOxqNBWHx08YNwS0fnE9eJAdHuL1XKrN
	 2GZVtnylnFHTDD0dULoLuC/59DfFdzlcJm3MgfsTmk6N1qJvuJQAZBpqfasMTjqMYN
	 YBl/WPdfBVuAjcIRZojgaofYURFPxGrK6X9/vry+47pxh/LidSBf1xF0CZm2m3/ZJD
	 NfIzrLO5RRI2w==
From: Vinod Koul <vkoul@kernel.org>
To: krzk+dt@kernel.org, abel.vesa@linaro.org, conor+dt@kernel.org, 
 dmitry.baryshkov@oss.qualcomm.com, robh@kernel.org, 
 Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20251209-linux-next-12825-v8-0-42133596bda0@oss.qualcomm.com>
References: <20251209-linux-next-12825-v8-0-42133596bda0@oss.qualcomm.com>
Subject: Re: [PATCH v8 0/9] Introduce Glymur USB support
Message-Id: <176651192628.759340.3692338667900024623.b4-ty@kernel.org>
Date: Tue, 23 Dec 2025 23:15:26 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251223_094530_487431_79DF6E45 
X-CRM114-Status: UNSURE (   7.03  )
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


On Tue, 09 Dec 2025 15:09:36 -0800, Wesley Cheng wrote:
> **Please consider this for -next
> 
> This series enables the PHY level changes that are required to support
> the type C based controllers and the multiport controller.  The typeC
> ports utilize a usb43dp based QMP PHY for the SSUSB path, while using
> the M31 eUSB2 PHY for the HSUSB path.  For the multiport controller,
> it will utilize two QMP UNI PHYs for the SSUSB path, and two M31 eUSB2
> PHYs for the HSUSB path.
> 
> [...]

Applied, thanks!

[1/9] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add Glymur compatible
      commit: 2fe80ea29f46332eaf76d8435326e68197bcc9bb
[2/9] dt-bindings: phy: qcom,qmp-usb: Add Glymur USB UNI PHY compatible
      commit: 1c0b4539fc6d7cbe352cc12deef8a21d655f9804
[3/9] dt-bindings: phy: qcom-m31-eusb2: Add Glymur compatible
      commit: 0278bbd30f7c326740fdcbc3039ce42d7d921cf8
[4/9] dt-bindings: phy: qcom,snps-eusb2-repeater: Add SMB2370 compatible
      commit: 18da99126ebce8d8ebc1ee0b84fe983faa138451
[5/9] phy: qualcomm: eusb2-repeater: Add SMB2370 eUSB2 repeater support
      commit: 851dd2c9e91f2da1a60050265507a11aa24c767c
[6/9] phy: qualcomm: qmp-usb: Add support for Glymur USB UNI PHY
      commit: 7dbba9fb560f35bdf1eb44035f793e3b7f2cdcdb
[7/9] phy: qualcomm: Update the QMP clamp register for V6
      commit: c9543cca9417d83f8ca6a8ce0a5279a3fba7a02b
[8/9] phy: qualcomm: qmp-combo: Update QMP PHY with Glymur settings
      commit: 5b289913959b9bc93bab9e0beeab269c33c969b7
[9/9] phy: qualcomm: qmp-combo: Add DP offsets and settings for Glymur platforms
      commit: d10736db98d25c97bdffacaca69ae0a8d7ca64e3

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
