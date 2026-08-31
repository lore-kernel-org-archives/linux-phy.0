Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6F98C624C6
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 13:53:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S9kMYRZotLJpO6eDWnT3dR+jzB4NV//cnmR4Wak3Ne0=; b=x2Xb55z1Hwzf1W
	jUYUi3P21Of4v0AzZ6HbjvapDoVCCXOcn+BaJoOhrZq55B1mVkSTvn1RRA5xn1y2uzC/B7v5vs85m
	7zfte6Pmfc5zCQvXAoOBTO7i+rBn9DbdKymgFe+WxjGvJodlnpjxcKObxWAhVSQbNbEmaGNXa/prD
	QR9qd+rl450Gugb4320m8ICCUp+WazyUb2onFvEg5jWTiZK4fp8hqtM7B6jJrjy4gkOti8G72S9+D
	mpSqO4kUh7jg6Wm6Chxx6jBoeQzOaJsiElkYrItwS38/4Mfvb1PWSiXx0TRgfFTms37bd7hTJws+1
	3Gi/UpUoWSVIW/r2VnOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x12S8-00000009ZOQ-1nUk;
	Mon, 31 Aug 2026 13:53:36 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x12S6-00000009ZNg-440i
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 13:53:34 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id B471243302;
	Mon, 31 Aug 2026 13:53:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72C3E1F00A3E;
	Mon, 31 Aug 2026 13:53:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788184414;
	bh=iNXGzRvdJs6cwNKIKDaDLJFed/7G5LVtpFTWfVFbPF8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=oR7iSfKulshQvIA849PgOPNhN7+n82kRUZEf528y7ZjaiA0a4zKa6Av8Ero3eRFCi
	 R7moqfT+blmChj/kC7iomoXRzAwHku4fsNow8Qt3iYk6nCr2ZLb8TKOJI70gKZUi2e
	 uxC312woy2QoSl+99YaHlrrOTLT27HwFie7m3MS1WhXrC5cX93jdx+pHeMPD/uxr5c
	 EyKWgQOKfZyWYlzpfAKJtAP8mdC0n9UT+lzMdTeLmfvTQN7Ut8SrBDSWioroMWP+wG
	 pXwuuD3nidjQ6trINVe5qaEnZk4OiNOgetBziLbLzCR17y3fMPiQUnVZHtHrVc5Ffo
	 xn1nGOXdEObmw==
Date: Mon, 31 Aug 2026 08:53:33 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Bhargav Joshi <j.bhargav.u@gmail.com>
Cc: Kevin Hilman <khilman@baylibre.com>, Ravi B <ravibabu@ti.com>,
	Tony Lindgren <tony@atomide.com>, Roger Quadros <rogerq@kernel.org>,
	Kumar Gupta <ajay.gupta@ti.com>,
	Sergei Shtylyov <sshtylyov@ru.mvista.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Andreas Kemnade <andreas@kemnade.info>,
	Aaro Koskinen <aaro.koskinen@iki.fi>, linux-omap@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	dmaengine@vger.kernel.org, Andrzej Siewior <bigeasy@linutronix.de>,
	goledhruva@gmail.com, linux-usb@vger.kernel.org,
	Frank Li <Frank.Li@kernel.org>, linux-phy@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>, simona.toaca@nxp.com,
	daniel.baluta@gmail.com, Vignesh Raghavendra <vigneshr@ti.com>,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, m-chawdhry@ti.com
Subject: Re: [PATCH v2 5/7] dt-bindings: usb: ti,am335x-usb-ctrl-module:
 Convert to DT schema
Message-ID: <178818441292.768689.17376087226592682444.robh@kernel.org>
References: <20260818-ti-am33-usb-v2-0-66fd44d66824@gmail.com>
 <20260818-ti-am33-usb-v2-5-66fd44d66824@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260818-ti-am33-usb-v2-5-66fd44d66824@gmail.com>
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


On Tue, 18 Aug 2026 19:58:47 +0530, Bhargav Joshi wrote:
> Convert the TI AM335x USB Control Module text bindings to DT schema. No
> functional changes.
> 
> Signed-off-by: Bhargav Joshi <j.bhargav.u@gmail.com>
> ---
>  .../devicetree/bindings/usb/am33xx-usb.txt         |  9 -----
>  .../bindings/usb/ti,am335x-usb-ctrl-module.yaml    | 38 ++++++++++++++++++++++
>  2 files changed, 38 insertions(+), 9 deletions(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
