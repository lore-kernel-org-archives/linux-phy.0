Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24515C77B75
	for <linux-phy@archiver.kernel.org>; Fri, 12 May 2023 09:36:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A+ruUYJKO5f2AlTxM9ioK4wuiJzIwYHHQ3kIbr6FiEM=; b=bNDLiqBY7U/4wr
	NX80QS82Z0GF+sX7/iIn64H2h/lRI1YKQ7w7T/JRUEKK3rjL5FAfyEOkg7YJ/Ang8HcKDfOgNp15h
	hwOcOhWfnAUsTVKom3BdeUSoDgmB82/NsBsC8lorvESLuVIvOlvX9mq1Ppjg6pljZ8ShH4Jt1dOLG
	kb7sCHRIitrMXN/US7vpuC6G2WoYS9hs9dR4iM7CpFIQV+Mai2oI/jgE9zj4aSCTefVB4+mAsUcXD
	1RarwrgXBQoxckx1BAw63eqyHD4J/8f559ToFXUayNSRMIR6IcK8vybbNVZwT2ybXVTMatDuLYBjL
	280sPij6OdfyK1HzDNqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxPCn-00BTM0-2b;
	Fri, 12 May 2023 09:36:53 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxPCl-00BTLO-1M
	for linux-phy@lists.infradead.org;
	Fri, 12 May 2023 09:36:52 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E373161386;
	Fri, 12 May 2023 09:36:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49013C433EF;
	Fri, 12 May 2023 09:36:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683884210;
	bh=sFzboBVIPgpCAMpaLOZuuYbAaS8obMt0kAlpbkh4Lus=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HUoacoqO9ZEu6OVD9XqX296JFFGvcazTM0Qygj9vWVTL9FaBMQyw+mA3/u9inJ68K
	 LUNfF8oWxpnEg796GF1QXupnsiEEShj1dZWnC1N+VFJ8kEtpx5U2t4mQYDm4QGPSVO
	 VcV231jBkWVigcVZP/Y8yHaBpn8Y6/bkPBQ5vN6IISK5v2kIVyZ5rvtAGgfT4jgWux
	 4Jz/OR5Tnc1ss3hD5d0CuV4dP1wPwkulzN6l3UCS4A/2DxhLqmytlY23Lb746pkgFQ
	 kHkcKH3zTY4RaCgz79U23o0gS1K+WivTaHbP7ixDnGFzS/v5pdB/97GFKVO8vFQEso
	 7hYohFzG67iVg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1pxPDB-00039Y-Ad; Fri, 12 May 2023 11:37:18 +0200
Date: Fri, 12 May 2023 11:37:17 +0200
From: Johan Hovold <johan@kernel.org>
To: Bjorn Andersson <quic_bjorande@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Abel Vesa <abel.vesa@linaro.org>,
	Steev Klimaszewski <steev@kali.org>,
	Johan Hovold <johan+linaro@kernel.org>
Subject: Re: [PATCH v2 6/8] phy: qcom-qmp-combo: Introduce drm_bridge
Message-ID: <ZF4Izb0WHvfSPK9H@hovoldconsulting.com>
References: <20230510031930.1996020-1-quic_bjorande@quicinc.com>
 <20230510031930.1996020-7-quic_bjorande@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230510031930.1996020-7-quic_bjorande@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230512_023651_507657_5EDBBBB7 
X-CRM114-Status: GOOD (  15.95  )
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

On Tue, May 09, 2023 at 08:19:28PM -0700, Bjorn Andersson wrote:
> The QMP combo PHY sits in an of_graph connected between the DisplayPort
> controller and a USB Type-C connector (or possibly a redriver).
> 
> The TCPM needs to be able to convey the HPD signal to the DisplayPort
> controller, but no directly link is provided by DeviceTree so the signal
> needs to "pass through" the QMP combo phy.
> 
> Handle this by introducing a drm_bridge which upon initialization finds
> the next bridge (i.e. the usb-c-connector) and chain this together. This
> way HPD changes in the connector will propagate to the DisplayPort
> driver.
> 
> The connector bridge is resolved lazily, as the TCPM is expected to be
> able to resolve the typec mux and switch at probe time, so the QMP combo
> phy will probe before the TCPM.
> 
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> Acked-by: Neil Armstrong <neil.armstrong@linaro.org>
> Tested-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Tested-by: Abel Vesa <abel.vesa@linaro.org>
> Tested-by: Steev Klimaszewski <steev@kali.org>
> Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on HDK8450
> Tested-by: Johan Hovold <johan+linaro@kernel.org>	# X13s
> ---
> 
> Changes since v1:
> - Wrap DRM-related code in CONFIG_DRM guard
> - Inroduce DRM-dependencies in Kconfig
> - Dropped dev_err_probe() usage

Reviewed-by: Johan Hovold <johan+linaro@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
