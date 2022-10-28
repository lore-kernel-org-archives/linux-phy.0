Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E65C5FA3742
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 06:13:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LALVKkM7mEC9h4x1Eisc6oWUIg40JrkuEFsoJnDf1Is=; b=2IoHkWr52GOxmw
	H8NCfZeXRJ/sLyO4yS8Ai8KG6UaY+yqBiXn9bjlIsBA26QnqvoBiFauffmz4yxquXispGle+pcsZt
	E/8A27jKqZWNe85neRwYdV2PZnszsaixEyv3+rthZzs20zfHOV5SGPSE2UUAEWXO3jTyehrEVVTSF
	GNCe9slu5Hpo7MsQQD+WxwbY286sdpskACOzLBKFEA1LAlvde1DVeH484MbwUF7w05pJ1aNovuOD/
	pxsTD8GOhg1LOkmOnhXRa5q7r2uvDLrZcFJ2VsnRh4sv9H2g1WzzoOv96oaNQ538VjviB8d4hr9U6
	KEeFpSkg8+eV++EpG8mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooIcV-00Ft1J-7y; Fri, 28 Oct 2022 06:13:31 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooIcS-00Ft0V-TJ
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 06:13:30 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 84D5062665;
	Fri, 28 Oct 2022 06:13:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D82E3C433D7;
	Fri, 28 Oct 2022 06:13:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666937606;
	bh=4CqAhmzska+zzYLW4aongWkFXFBMvigrTx+gYITPknc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Z6eCy8hir0S58TiK/kcwLHlj+03InJp83Lz6JQZe8LjzvTbuC9THnZoyAnuXOnFMU
	 OGNByaMKlMlFwswkRReYkxJfB5JUkGQo5UtiPzXeV64wXT7wthwbyBOr6QyqrQq4JF
	 hPmVB6TugYmwTExukSPq+QLbdXlJ+dWE9wFtUlAWlaXGRD6C4qxqpLMxD73rYLiB3b
	 /feBI0g+bgjZyZRTu1hA8f6Zv0FDb2UzIUYoAZcsKy9HX0/HHiQEXXQ+6MvH3RwIqx
	 RYWmQ0E/Z9gbDIAv65wU1UsYzI+LKfAN50GAnGLJKkVDs7F6LHURL8cyB2rTAeJcjF
	 gfZSrQFpxdvhQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1ooIcC-0005Sw-8T; Fri, 28 Oct 2022 08:13:12 +0200
Date: Fri, 28 Oct 2022 08:13:12 +0200
From: Johan Hovold <johan@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 11/13] dt-bindings: phy: qcom,qmp-usb: fix sc8280xp
 binding
Message-ID: <Y1ty+E2qyxlniIsV@hovoldconsulting.com>
References: <20221024100632.20549-1-johan+linaro@kernel.org>
 <20221024100632.20549-12-johan+linaro@kernel.org>
 <c9940701-8486-5a0c-4c7d-9c85b9460a7f@linaro.org>
 <Y1tyBw2iQvV89+UB@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y1tyBw2iQvV89+UB@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221027_231329_000180_4CE8F0A9 
X-CRM114-Status: GOOD (  19.29  )
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

On Fri, Oct 28, 2022 at 08:09:11AM +0200, Johan Hovold wrote:
> On Thu, Oct 27, 2022 at 10:15:45PM -0400, Krzysztof Kozlowski wrote:
> > On 24/10/2022 06:06, Johan Hovold wrote:
> > > The current QMP USB PHY bindings are based on the original MSM8996 PCIe
> > > PHY binding which provided multiple PHYs per IP block and these in turn
> > > were described by child nodes.
> > > 
> > > The QMP USB PHY block only provide a single PHY and the remnant child
> > > node does not really reflect the hardware.
> > > 
> > > The original MSM8996 binding also ended up describing the individual
> > > register blocks as belonging to either the wrapper node or the PHY child
> > > nodes.
> > > 
> > 
> > (...)
> > 
> > >      then:
> > > diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb-phy.yaml
> > > new file mode 100644
> > > index 000000000000..95ee81d782f9
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb-phy.yaml
> > 
> > Filename based on compatible, so in this case
> > "qcom,sc8280xp-qmp-usb3-uni-phy.yaml", unless it's like the PCI case?
> 
> Yes, you're right. Thanks for catching that. This should be the only
> sc8280xp USB PHY compatible so the file name should be updates as you
> suggested.

Looks like I missed the '3' in 'usb3' in the previous patch as well.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
