Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BA29C531DF
	for <linux-phy@archiver.kernel.org>; Thu, 22 Aug 2024 06:50:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J51t6nCFLdNlj+zdnW6LzA+AsHbvniYZ6tabaNANzrk=; b=ofI1+EdszRurIX
	GcruzGJFez7tRFC8OKb/pofojyyXzg33sFAaxynZaZjNxfwTnVH0WbK9gpdQ0sh2Xz85hp24ugq2Y
	4HF/7k59ID/ffpe6CdltW2YyMlT5diZgT8eYKqvfkQZIoXLX3+lv1TJzHzzyn5qzt+hHBrlvYjibE
	SKJsOJmnseHkC787G4ZzNKN/qcaVkCA4VHecak9yZFNFcMDhrwRMGjCavwJ/R36Jhy9mtbZ8WK5Qo
	4wn3pFgRjxFS4Iub+MTYx6oQ/OEfpzdd+14M227rabbdwYU0KVTVyNQtzJDLG4UiVCCYyUd1DOUPx
	bnXqckpOLyT7Nt/BV5Kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh1ed-0000000BhAP-1FfG;
	Thu, 22 Aug 2024 06:50:43 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh1de-0000000Bgwz-2vYo
	for linux-phy@lists.infradead.org;
	Thu, 22 Aug 2024 06:49:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id F1E42A42518;
	Thu, 22 Aug 2024 06:49:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 43E26C4AF09;
	Thu, 22 Aug 2024 06:49:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724309381;
	bh=GaeE+vHB9FpTDdnRoHEB3IZqWE5qQS6LAnO0ppG8Pc8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tH/e7n+2tGWq/zhOSNu63p3SRduTj4pV0iwSPzr5KYoZa0jPEXRuKDIJmEZkQ06AB
	 DyKih1kf5TWOzrHqBnV5KrUdcq/6qfkuB4sEjc2S1XbK1CDET/iqc2KBNE/yzJeb8G
	 2hE0a13eU9n6iTIfSxLRWR1YHul8UStKTxKkMLcwih70yuKIoGma937CvH46/wW50F
	 uAs6n9LTI/mROjs86jIr26m8FsZ2R7AMyM8lv0jQX+ghNNUkoYH6LvEwLPS3ZMNfnD
	 P31RUMT6WsZ6Ie4vk913AcIjxVKcRobSaPq5E09eBiuFu85d3ru9PVzCkRSyIoS+p3
	 dtyyWfij8s4Bw==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1sh1dg-000000004q3-2HHb;
	Thu, 22 Aug 2024 08:49:44 +0200
Date: Thu, 22 Aug 2024 08:49:44 +0200
From: Johan Hovold <johan@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Document the X1E80100 QMP PCIe PHY Gen4 x4
Message-ID: <ZsbfiMGP4aLmfwkv@hovoldconsulting.com>
References: <20240821-x1e80100-phy-add-gen4x4-v2-0-c34db42230e9@linaro.org>
 <20240821-x1e80100-phy-add-gen4x4-v2-1-c34db42230e9@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240821-x1e80100-phy-add-gen4x4-v2-1-c34db42230e9@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240821_234942_820261_0D07EAA8 
X-CRM114-Status: UNSURE (   7.44  )
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

On Wed, Aug 21, 2024 at 11:39:00AM +0300, Abel Vesa wrote:
> The sixth PCIe instance on X1E80100 can be used in either 4-lane mode or
> 2-lane mode. Document the 4-lane mode as a separate compatible.
> 
> Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>

Reviewed-by: Johan Hovold <johan+linaro@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
