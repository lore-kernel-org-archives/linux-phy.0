Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF3E0C54798
	for <linux-phy@archiver.kernel.org>; Tue,  5 Mar 2024 14:55:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dy6Z9vv4PuqVJo1+m3IS/k89cEVvB/im0JH9w7sPZSY=; b=IWN1/ZVFOIS6EW
	HWiBFx8PH6yWzmn9A+ho9L75aaFb+LvfObVQTFgQTCdzQd1zsGKwu1tv+tvUIlDxN50rv+N0QZeh8
	malxfqFNw10Kz2JV4Or6VdT7foafjtHhn7MKtVbYxh/5ypQ9oLyLYiz+UQzXPTnLeqos+tBXwFkSB
	CXFM+FhG5FfP+hPEEAUMX491naRP5MUTO/GIviZcu/wjA94hAJZChpa6J4to2TTvE9htQ32CLIDb6
	3lKgDXV31TRjLyLFcO5zf++n7uiqtraKRS2hYFeeoJNLClGNb+nmN6TtyR9jDpHljDmWtBG6uK3FB
	+sWoWUdo4fUJOLVCifzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhWCK-0000000E9eo-1nPP;
	Tue, 05 Mar 2024 14:55:16 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhWCH-0000000E9dm-0IZq
	for linux-phy@lists.infradead.org;
	Tue, 05 Mar 2024 14:55:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 3F85A615E4;
	Tue,  5 Mar 2024 14:55:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D8103C433C7;
	Tue,  5 Mar 2024 14:55:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709650512;
	bh=xLcFJLLfYX+bTX9wy65XVlGdwDh5qOZJ1CFWePAiFRI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mzXOVjzbqFiJ80C3EYlM1KWOa8QGpbxKAnUGVaZn5VWPWLISRK2rZstnPP1lDycaR
	 nm1cxClYxsz6r/QyYL/bQALF7ywDLGZ+dY0f028VWwYVWqa8ArwEKm7UMgBkPHI+jM
	 KpnZWO4/EKYaInICE5k8ieF7iTd7DFv18e1XfgyAgcpWF27aUX74ZcQfrye67tRys0
	 VPD1QPd/mfqpj2mo1XCZIRzStNaX3+cC/a4+IEK1emTrn6ITDzjXC5LZE6DhcFemIo
	 47TiQGWEdyjQpQ9n94Q5tnxLYvMTyGTSNC4RrKdp97h7VDZm0Pxuom0ubLzCf5bRB0
	 zemjxa4d8b3qA==
Date: Tue, 5 Mar 2024 08:55:09 -0600
From: Rob Herring <robh@kernel.org>
To: Yang Xiwen <forbidden405@outlook.com>
Cc: Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-kernel@vger.kernel.org, David Yang <mmyangfl@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Shawn Guo <shawn.guo@linaro.org>, devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Jiancheng Xue <xuejiancheng@hisilicon.com>
Subject: Re: [PATCH v4 2/5] dt-bindings: phy: hisi-inno-usb2: convert to YAML
Message-ID: <170965050914.3339459.3878039383818291915.robh@kernel.org>
References: <20240305-inno-phy-v4-0-a03204c9cf1c@outlook.com>
 <20240305-inno-phy-v4-2-a03204c9cf1c@outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240305-inno-phy-v4-2-a03204c9cf1c@outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240305_065513_225518_27429535 
X-CRM114-Status: UNSURE (   7.67  )
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


On Tue, 05 Mar 2024 10:19:47 +0800, Yang Xiwen wrote:
> convert the legacy text binding to YAML. While at it, remove
> "hisilicon,inno-usb2-phy" fallback compatible.
> 
> Signed-off-by: Yang Xiwen <forbidden405@outlook.com>
> ---
>  .../bindings/phy/hisilicon,inno-usb2-phy.yaml      | 91 ++++++++++++++++++++++
>  .../devicetree/bindings/phy/phy-hisi-inno-usb2.txt | 71 -----------------
>  2 files changed, 91 insertions(+), 71 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
