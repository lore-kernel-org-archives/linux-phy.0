Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67161C52D7C
	for <linux-phy@archiver.kernel.org>; Fri, 23 Aug 2024 11:29:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R5OSfyIE0MgColQxz6Lt5zRL5RJSQgcmEL5cjztp6+w=; b=wHTedt57clga/T
	OQ9sLCZTIPTmrlN3q4UqQ9LO27MjXmKK9oyCFy3eVbqF6nL9AKSekuId9ZHlj6We9EarIPx0afxXT
	fti+T0OoaFxQ1N0gki+BLblZq0iccvIoPXr86jTCfPB56j/py6uT0K/SjGKliEx1+v6u3Y1brIWNX
	0TWRba4mDs4aqyEIOQ2jvzseMX1Q+O5RRvALOXeKnw3PR0D5Y2Uci1ac3Ljpt567H2paPoTb1EXTt
	iUAheJc/KICtMCeFx3WJJCgHUQjqRcJwlZmmAyua0Ldr53QDkqGc6pQrh+DCKV/aXJqFy4A/IIGeL
	Jmxe9jyh/u9jmS8/X9nQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shSU2-0000000GWCE-0ZKt;
	Fri, 23 Aug 2024 11:29:34 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shSTy-0000000GWB9-4AS5
	for linux-phy@lists.infradead.org;
	Fri, 23 Aug 2024 11:29:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id A6C2FCE1064;
	Fri, 23 Aug 2024 11:29:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CBF36C4AF0B;
	Fri, 23 Aug 2024 11:29:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724412567;
	bh=dbi93srXX6X5aWWuq12x79CNXXVv2vecJLvSMnG6F4M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=t+bGUCpZDRf6ro2Ng9S11mg5W2HOreP0wuOt9pV6jT/Ifu3HhFUcFYG0wzbxH7m00
	 eRAGyZh+SMLE4KdOMNU00PjUul+i7fhj0qfRUjtUijGZyOGphlyyaq4+Zizl4XlYmu
	 jpkbvo0cjesqRLFjRWFWYYLk62WuYKz66mrVB067m+j79ZFO3iZ7MEl9+LpZ5B1Gy7
	 PC4FV9i6LzmuYIxhmFMfMIqyTFrVasoKG7aEutU3oSA7Q/YmSu/xpEYpKmCBb0DwGi
	 D18STdFLYaNT8/VSK4iYPyK6XTIvzCwnwe8gLQIsiXOudtciGOEhA47kGxAKWbxXPB
	 Hbw1PfwjBC0kQ==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1shSU1-000000003A4-3w4m;
	Fri, 23 Aug 2024 13:29:34 +0200
Date: Fri, 23 Aug 2024 13:29:33 +0200
From: Johan Hovold <johan@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: Re: [PATCH v3 2/2] phy: qcom: qmp-pcie: Add Gen4 4-lanes mode for
 X1E80100
Message-ID: <Zshync9EgQJ_Kfqn@hovoldconsulting.com>
References: <20240823-x1e80100-phy-add-gen4x4-v3-0-b7765631ca01@linaro.org>
 <20240823-x1e80100-phy-add-gen4x4-v3-2-b7765631ca01@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240823-x1e80100-phy-add-gen4x4-v3-2-b7765631ca01@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_042931_228237_3EFA934E 
X-CRM114-Status: UNSURE (   7.61  )
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

On Fri, Aug 23, 2024 at 10:04:16AM +0300, Abel Vesa wrote:
> The sixth PCIe controller on X1E80100 can be used in either
> 4-lanes mode or 2-lanes mode. Add the configuration and compatible
> for the 4-lane mode.
> 
> Reviewed-by: Johan Hovold <johan+linaro@kernel.org>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>

Tested-by: Johan Hovold <johan+linaro@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
