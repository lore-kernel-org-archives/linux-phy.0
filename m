Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2225FD374A9
	for <linux-phy@archiver.kernel.org>; Thu, 17 Oct 2024 15:50:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n0odBMThic6mulWCHSSMnsme78LXiLpRfcG9USriMhY=; b=l0KB1M6aoBO0xI
	nllLW9BlusxtcMeyccTs6ITCxga1roDHEjK/4kA6FRXFO1+IpUDFLpTimGys4sKbQkpHFw3xj5HUI
	8r5QV+qjkAoilRgskXS6D1z60PbpWldgUWxG9GP0hzXlLeL42wns8IXUOZm9D0FVNHbtihoNQ3U9/
	hWGdQX9QdNIVu7ommM3dKzWIa1bCXMPAl8W8Jc18dnS88F7z2VODZucWsW2IW6mcGRsH8sE4q27YK
	qwVZh6ycOK9KoQY1oOULtvKHqAZQkgI9N/O87gCJ3It4vFrJ1aiMIhrdLJKFsMbR7smZN6fiFySDD
	igkAcS+/CvUllKQ+7NGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1SlK-0000000FMNR-3ZN8;
	Thu, 17 Oct 2024 15:50:06 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1SXx-0000000FJ1E-0JNv;
	Thu, 17 Oct 2024 15:36:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1BAFE5C618B;
	Thu, 17 Oct 2024 15:36:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB063C4CEC3;
	Thu, 17 Oct 2024 15:36:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729179376;
	bh=X1eI/8AVbiXiB8bDbaWcMyqlmgmxwjsD163dTCzZshw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=IxA3lyHForTD5d2NzhQQSAFlwoHfXtPL/NyveBg49zUg4SDKM9Gq1OnJDluZMewDn
	 ID0CyXDJXADHOG2DSaTG85odM9sHq+/0YdUFF5EQ4ROxGryYq5Ux36TFEgTyXqrWpM
	 PGeQdrpL8DJ9dpxDlG5+UO6bKmBPj78q+cIeUPaqgSW2Spz9Jo/58iDrwzDx1JArs+
	 8RdyYTaub07LXdGbMR3pZrytTANuaPYIyDUwRtdShEpm6XOSm/PZF0TCFES5dJDu2z
	 6ETsOxbEyTX4p1D4nb8k7O32xU4225R+eZB5aS47bTfkIjKp1PIP7n/S7mm/Pr4LmH
	 H0lr22qVhrIIg==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de, 
 kernel@pengutronix.de, festevam@gmail.com, Xu Yang <xu.yang_2@nxp.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
In-Reply-To: <20240926073951.783869-1-xu.yang_2@nxp.com>
References: <20240926073951.783869-1-xu.yang_2@nxp.com>
Subject: Re: [PATCH 0/5] dtbs_check warning clean up against
 fsl,mxs-usbphy.yaml
Message-Id: <172917937246.288841.15901592420939223719.b4-ty@kernel.org>
Date: Thu, 17 Oct 2024 21:06:12 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241017_083617_196978_196DF75A 
X-CRM114-Status: UNSURE (   7.58  )
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


On Thu, 26 Sep 2024 15:39:46 +0800, Xu Yang wrote:
> Some changes to clean up dtbs_check warning against fsl,mxs-usbphy.yaml.
> 
> The first 4 patches are used to fix below warning, "nxp,sim" is only
> needed by i.MX7ULP:
>  - 'nxp,sim' is a required property
> 
> The last patch is used to fix below warning:
>  - fsl,tx-d-cal: 5 is less than the minimum of 79
> 
> [...]

Applied, thanks!

[1/5] dt-bindings: phy: mxs-usb-phy: add imx8qxp compatible
      commit: 76b4f2a5cec59e842de4b5989eb990a2ee8cedf3
[2/5] arm64: dts: imx8dxl-ss-conn: change usbphy1 compatible
      (no commit info)
[3/5] arm64: dts: imx8qm: change usbphy1 compatible
      (no commit info)
[4/5] arm64: dts: imx8qxp: change usbphy1 compatible
      (no commit info)
[5/5] ARM: dts: imx6qdl: convert fsl,tx-d-cal to correct value
      (no commit info)

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
