Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE572C77B7C
	for <linux-phy@archiver.kernel.org>; Fri, 12 May 2023 09:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pwdB7XYv0bUpTPcsGFukRheUbSQCRE9+pumk7JgM3PE=; b=HdZEnft+JnQbVo
	vHZWSFHfJ5LejmeAYTS5kMuuh+TRcz5cxS0kyBojZQD3OoPEjAQbzeH8s0Mi6f3FIooY6FYYMXAcX
	oidiSpNFDRgyfP6gLNKknuYWlLlebDlmWmirKLt/GgSo6M4yc2BRPznZiXQciPm7LQV9pb6n/YTyI
	vboxLoP9iJQ5SiB2r+IpXIvG/8yAZsqgHfcdV/Qmm8JGBaEyXSqS/QLbJZtcBvSTOg6CRHnjoLJtb
	XIABIEOW3CpgPJJQKAGJq9gJeXQKov4xw1t12WePDK7kW6NdzPtZP3CJ9amJxpYjspQk6XgGtjZsP
	tCr6K28TDj+hIzcH/m0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxPGg-00BU73-20;
	Fri, 12 May 2023 09:40:54 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxPGd-00BU5y-1W
	for linux-phy@lists.infradead.org;
	Fri, 12 May 2023 09:40:52 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id CABE260A1F;
	Fri, 12 May 2023 09:40:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2BA94C433D2;
	Fri, 12 May 2023 09:40:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683884450;
	bh=6wecwsHGtZttDNU8OcAsJfy+kOtssm2wkELv1zAQEzs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iQYwaoaGhfdBkDq+lQi/1to1xAetsfGYq/Pjx3lb5bH5QBe4l757dl/vBNyHoCsF9
	 0Uk7KBUZkucN4FELY+TZIFCfgPLuP4HZZAAw8GXj5DjCoCY7XHil0o/uV9IrmkdrY5
	 ryfI3fo7FVTLAWnonF83Yu/CLsWhmhsZkOGCXF23CUsZO1LO4rgSE61BuHWKPkWwgI
	 1oUmSxtbR+5ILlU3sh539XUyFgAc81eXMBloLY5C8sVBEK6H7F/o6kUJKewvPoVnhs
	 r9L/0ZXjGNS4ODEJunU2M23RnOM9szjDpGuV4BJW7DMpXAgFhFq5teNf2/gbvCJK5F
	 D+bW91sIss7ZQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1pxPH3-0003D0-VH; Fri, 12 May 2023 11:41:18 +0200
Date: Fri, 12 May 2023 11:41:17 +0200
From: Johan Hovold <johan@kernel.org>
To: Bjorn Andersson <quic_bjorande@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Abel Vesa <abel.vesa@linaro.org>,
	Steev Klimaszewski <steev@kali.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Johan Hovold <johan+linaro@kernel.org>
Subject: Re: [PATCH v2 7/8] arm64: dts: qcom: sc8280xp-crd: Add QMP to
 SuperSpeed graph
Message-ID: <ZF4JvTxOeW_A5Gnw@hovoldconsulting.com>
References: <20230510031930.1996020-1-quic_bjorande@quicinc.com>
 <20230510031930.1996020-8-quic_bjorande@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230510031930.1996020-8-quic_bjorande@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230512_024051_550623_1023B80C 
X-CRM114-Status: GOOD (  11.51  )
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

On Tue, May 09, 2023 at 08:19:29PM -0700, Bjorn Andersson wrote:
> With support for the QMP combo phy to react to USB Type-C switch events,
> introduce it as the next hop for the SuperSpeed lanes of the two USB
> Type-C connectors, and connect the output of the DisplayPort controller
> to the QMP combo phy.
> 
> This allows the TCPM to perform orientation switching of both USB and
> DisplayPort signals.
> 
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> Tested-by: Abel Vesa <abel.vesa@linaro.org>
> Tested-by: Steev Klimaszewski <steev@kali.org>
> Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on HDK8450
> Tested-by: Johan Hovold <johan+linaro@kernel.org>	# X13s
> ---
> 
> Changes since v1:
> - DP input is port@2

Reviewed-by: Johan Hovold <johan+linaro@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
