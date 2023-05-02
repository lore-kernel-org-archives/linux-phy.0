Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D45FDC7EE2C
	for <linux-phy@archiver.kernel.org>; Tue,  2 May 2023 12:26:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hQsUqhuVP9ZTmyywpS7PjnsxkR6jy0cYa+Yq2lBPN+0=; b=pEGC8Lw3P4FAjG
	3t3xF51BSFmKZsFZ0MCD842QFvRd6GfYh/E1xEvUYSoE+MfAjSXv6BsiHugaSa8xZzes4YBD+GoJ5
	UA8XTFv282Zv+I0qOmuGMAgAoa0/VU0duNyyO11FrL3FHCB6Vbt8JanE7Hxv6t86YBuCMuvz/vGBM
	MlOZor2P+dkFMnGViiA3S7m4jaMuxriUNrrwqyP3pcBfd+rBte7bx29Q/7RzSJwpQqD5UGmaHVpoJ
	8PVNW+TJYAB6iYzzRiEJgq0Yk3AQrhAPmqOc+w31LM3e32es1rLaJwbz03RmtMiFCJV/6RvM4aP2g
	vh5RgshkO7ZarC49kNfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptp5S-001Ox9-1i;
	Tue, 02 May 2023 12:26:30 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptp5P-001Oun-2E
	for linux-phy@lists.infradead.org;
	Tue, 02 May 2023 12:26:28 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 13037623CF;
	Tue,  2 May 2023 12:26:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B614C433EF;
	Tue,  2 May 2023 12:26:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683030386;
	bh=+tUawv5EiBg4sqiRbzAHZDe9om3TRYdvWox2tHvlSzE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BGHceCY6xP7mDbZltsp5coAmNywdFwO3NYphny/G+DLVhtX3SpVVcIBBvo9MIfDSO
	 Tre5lOjjXPdwLrYugKH+/Ay6m4KlEJXKFPuLrFbVPkHzYAwTQnyja7/bwSqMSqDyTr
	 J+U1GK9IekqBukX1SDRrZy996kb8DOFc6Cxa9nhWHXWxZWUBLUUX02Pb1I3bwU/lOe
	 pXK00VzQJK4mA4IE/TAHIhVnWc4PwKoYWUj8/Azhzae1tldMT9FI8h+VFOY890iGFo
	 plUE8p6r2qoP82JsYPRcfHPoz4mGC3Jz95/P4WxUySlPJrZzkFYVF7SVL2u4kmVeyc
	 hCceoQgLWTjmw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1ptp5R-0003n8-Gn; Tue, 02 May 2023 14:26:29 +0200
Date: Tue, 2 May 2023 14:26:29 +0200
From: Johan Hovold <johan@kernel.org>
To: Bjorn Andersson <quic_bjorande@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/7] phy: qcom-qmp-combo: Support orientation switching
Message-ID: <ZFEBdT4Yh4fBItHk@hovoldconsulting.com>
References: <20230425034010.3789376-1-quic_bjorande@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230425034010.3789376-1-quic_bjorande@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_052627_767610_D569C1B0 
X-CRM114-Status: GOOD (  13.72  )
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

On Mon, Apr 24, 2023 at 08:40:03PM -0700, Bjorn Andersson wrote:
> This adds support for USB and DisplayPort orientation switching to the
> QMP combo PHY, as well as updating the sc8280xp devices to include the
> QMP in the SuperSpeed graph.

Nice and clean series!

I've tested it a bit on the X13s and verified that DP works on both
ports and in both orientations. Coldplug also appears to work reliably.

Tested-by: Johan Hovold <johan+linaro@kernel.org>	# X13s

> Bjorn Andersson (7):
>   dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Add ports and
>     orientation-switch
>   phy: qcom-qmp-combo: Move phy_mutex out of com_init/exit
>   phy: qcom-qmp-combo: Introduce orientation variable
>   phy: qcom-qmp-combo: Introduce orientation switching
>   phy: qcom-qmp-combo: Introduce drm_bridge
>   arm64: dts: qcom: sc8280xp-crd: Add QMP to SuperSpeed graph
>   arm64: dts: qcom: sc8280xp-x13s: Add QMP to SuperSpeed graph
> 
>  .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    |  51 ++++
>  arch/arm64/boot/dts/qcom/sc8280xp-crd.dts     |  28 ++-
>  .../qcom/sc8280xp-lenovo-thinkpad-x13s.dts    |  28 ++-
>  arch/arm64/boot/dts/qcom/sc8280xp.dtsi        |  34 +++
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 227 ++++++++++++++----
>  5 files changed, 309 insertions(+), 59 deletions(-)

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
