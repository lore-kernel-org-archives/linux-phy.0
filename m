Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F35ACC79F9E
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 06:13:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PybsmAFdZvEa8WX4aSxslC12rVkm62viRrgIQwGymEM=; b=PERpGhK1TegGda
	lrOJ65bRUQl28k04P/KR/Ui32qSrdyVbnMdmyHj7jUUWOiToIHw/YaGO2mA5HCBWl4bvkirl2UeS1
	n2Egvy3PIaZOmL9pATXHKWL7pfUYbHEpvAPf9uS5yhYc70tB+44FV9CxHPBhpQoXkj4ydJKras2D0
	LpwDolq1wapSM5FQmRrj7ykhycjHzSaF0E+b1XDfYLqNRHGtn3MCBR75rXuKASFGiK2OPfVEZq75w
	mEpcjv2Kxt/CE8a/L1OCx33L5ddGgDgPtSASip0cbk/KjraabauZOoToGRljg8AIUUZFPe8LVxEBc
	mgebw/irk3ETmphxW6zA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3Sbv-0000000601o-2p3S;
	Mon, 07 Sep 2026 06:13:43 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3Sbu-0000000601C-1EEa
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 06:13:42 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id D711E60D86;
	Mon,  7 Sep 2026 06:13:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 90A9F1F00A3A;
	Mon,  7 Sep 2026 06:13:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788761620;
	bh=p860+R59BgbsF6ZYtaavYGSgMdtWpfF69XsEzjQj9i4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=AU5w+1EYyG5IDuelpoxJYfjR7pzJp/lWj4UsW5uBdD0duXgiI1TThNmnLFBkVV/ly
	 9o/wzTrbyF+xq/NHuTnDVRctbFOF5h9yGysu4KUpRfZVMAumhMq53DeV5xtdPYyxt2
	 58yU7XSLA3YdI4bahum3IV85LOVHP8Y3rFXoJf+MwsmXUBJuZj13tMKKItRMSRNVq9
	 Pu0cni279u+Gtlgvq2SxwpqER2zdqbM4gIRKXtsXNsyr71rljtw/I093p1evOOV1Yc
	 ekfcehc4VvETrktj7QP3mdlBJq8H+Q6IjZe22iHNAkmJu0oT89suy1TYyviCDNwzKR
	 5sVC9bGYO7bVA==
Date: Mon, 7 Sep 2026 08:13:36 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Shawn Guo <shengchao.guo@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
	Abel Vesa <abelvesa@kernel.org>, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
	Bartosz Golaszewski <brgl@kernel.org>, Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Subject: Re: [PATCH 3/4] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Document the Nord QMP PHY
Message-ID: <20260907-exotic-quokka-of-chemistry-83ac2f@quoll>
References: <20260901095055.42229-1-shengchao.guo@oss.qualcomm.com>
 <20260901095055.42229-4-shengchao.guo@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260901095055.42229-4-shengchao.guo@oss.qualcomm.com>
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

On Tue, Sep 01, 2026 at 05:50:54PM +0800, Shawn Guo wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
> 
> Add a compatible for the USB3+DP combo QMP PHY found on the Qualcomm Nord
> SoC. The PHY sits behind a GDSC, so also allow (and require) power-domains
> for it.
> 
> The block gets a standalone compatible rather than a fallback to an
> existing one, because it is not register-compatible with any PHY already
> described here. Its USB3 and DP initialisation sequences do match sm8550,
> but Nord places the sub-blocks at different offsets within the PHY: it
> exposes a dedicated USB3_PCS_AON region at 0x1e00, which sm8550 does not
> have at all. Falling back to sm8550 - or to any other entry - would make
> the driver program the wrong addresses.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
