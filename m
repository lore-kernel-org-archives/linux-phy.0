Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E0CAD3E77B
	for <linux-phy@archiver.kernel.org>; Wed, 10 Dec 2025 21:20:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w8dDC0buogfP/D0OmaHklU46luzuE5ot/8DPHTdJNdM=; b=12Sw9jdN41FZzk
	0IlwLp/5oeevZQRLMzs7NZ5zUiwcp715M5bm9s+vmOCSa2vx4WiNWsYEDf+8wUHlQ9mzNPLETUxcJ
	juJ6ez2+LCZdRRZSBBTW3f7Dz5rBkVZ0DW9B7e/qlfb/yXygz6WC9iW8tlP9C0dJv2XfizsbT9em9
	XtfxfLPKyP6bc2Fe59LXsHPM3Pp83kZKn7dul21355rVa0kFmzu4I5M3E5EJSZ7NhScJzAh/WIx6p
	yc8RNi/7vNJit40S9tGy8/oKoa7A20QlLrOJxSp9zTdTZk5LLMTisejyGW1Raz5ltOeB/OZcw/nE1
	YykIemwjUybppX/7t8pQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTRbj-0000000FtpL-1e4k;
	Wed, 10 Dec 2025 21:20:23 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTRbf-0000000Fton-2Mqm
	for linux-phy@lists.infradead.org;
	Wed, 10 Dec 2025 21:20:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id BA76C60122;
	Wed, 10 Dec 2025 21:20:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42B71C4CEF1;
	Wed, 10 Dec 2025 21:20:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765401618;
	bh=WGg+czktn0NTNnavdklinGGScWfiYuPPdJCTzdTBBXU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mTxRCD//+c4oClMgWXyh7R4MYjutvX3C9EaaTdnZq+hI1SjsxOsRWrN5OMAkWST8J
	 Nb9hVeX38X4v+j6gvX6S/gSUXsQGI5hA4KnhwCUaOHpK6UL2kPCyJV4oGGD/1Es5+Y
	 /fsNB+amRaN8O8y+k/zCceEKNie/IOErwF/zn6JYZgh4KjjZ8GhHfTR1faWH3IKN/m
	 Lx5/LmdDzv3EGcZkaQSzfXyFWSLBON7H3/SKIpQ4Ui3ghalA5o9/RH/wJK8hrvUftv
	 t+dqKAGmUh4faxRrXO9qVg6WrR/Tk2V+OEoG++tFI9x2QyM4ongloYNvPslnP8xN7M
	 EkuuS315ZRn/w==
Date: Wed, 10 Dec 2025 15:20:15 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: vkoul@kernel.org, krzk+dt@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, abel.vesa@linaro.org,
	linux-kernel@vger.kernel.org, conor+dt@kernel.org
Subject: Re: [PATCH v8 2/9] dt-bindings: phy: qcom,qmp-usb: Add Glymur USB
 UNI PHY compatible
Message-ID: <176540161525.3360166.13828719898400995208.robh@kernel.org>
References: <20251209-linux-next-12825-v8-0-42133596bda0@oss.qualcomm.com>
 <20251209-linux-next-12825-v8-2-42133596bda0@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251209-linux-next-12825-v8-2-42133596bda0@oss.qualcomm.com>
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


On Tue, 09 Dec 2025 15:09:38 -0800, Wesley Cheng wrote:
> The Glymur USB subsystem contains a multiport controller, which utilizes
> two QMP UNI PHYs.  Add the proper compatible string for the Glymur SoC, and
> the required clkref clock name.
> 
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> ---
>  .../bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
