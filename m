Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBD29EB64DD
	for <linux-phy@archiver.kernel.org>; Tue, 11 Jul 2023 07:47:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lA11Zm8BAukGUE8f/ep+vHmLOvyV2CBDvI5YlRxITp4=; b=Ms9dxWfFjKqNLI
	ravJC/7o8K7mOd2Kp6/4CrbOqWH920KrWdSFu0e3sit/0szb+LmZ1sY0pFWLMmayDC1axmL4vb8xC
	N+0v5He+FZLnyVH+ub3zCwN577eE7gbTBO1tv4vBfoGG8LiRi5EQY6wneTbSvZQrJbQvTzgWzh5HO
	EQYmWeBVTlssgLEPBfKstkrIWyddXQxE8xGoRP2/yFeeNvb8OqXw4SiV/ns9Wso0qWIC1KaEYdQHI
	CYEbOtSda7v5QmYZC5Uzybe1+l5NtlAmCJAeGse0qvHY1WG5xcqINLiSQ1b7p69x1FiStc+/wvE5b
	TyBGqvu3oOb6dALdZNkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJ85h-00E1mu-1p;
	Tue, 11 Jul 2023 07:47:21 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJ85f-00E1mV-0o
	for linux-phy@lists.infradead.org;
	Tue, 11 Jul 2023 07:47:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id B80D66134F;
	Tue, 11 Jul 2023 07:47:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 963F8C433C7;
	Tue, 11 Jul 2023 07:47:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689061638;
	bh=OP40hzcD9aIJl6PAxgLW22+e1ssFnxcYrWBCFmU8cdI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=V7ouqfIuCuSheYK2UN0/IIK+hPzrUrDoCDTqWcy3tBl+Fp9Tiq82xyNjsDZxfL1ly
	 +hqFwjdaMT7seZbX34HMcmtjQtALqXPdoR5uuLY4e+96I12F8h0NycpKvfu/qyJOTd
	 ILubK8aWaTtg9G0AjZ/Su88xEDy/Sk7fVTgUijFbhknPtC1i5+XUOpUI4Qugmo6qMQ
	 UKXBrpmO5R32XJMfyMp2AFKvPxz/OBHFYShxK47pLMfDJMWbekNT2Y5dLuARvNYA0u
	 9NcJacfm5YCrmeplVu6UaOlKJzCW7HprIG5e+tGQcZ2U3fbe5ALLyrJ3Ir4ox13iFB
	 I6Tp2i1FT9LUg==
Date: Tue, 11 Jul 2023 13:17:13 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 0/5] phy: qcom-qmp-usb: split away legacy USB+DP code
Message-ID: <ZK0JAW8VIYreQWzw@matsya>
References: <20230531023415.1209301-1-dmitry.baryshkov@linaro.org>
 <168906148935.189433.9157580042783820391.b4-ty@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <168906148935.189433.9157580042783820391.b4-ty@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_004719_336645_89577665 
X-CRM114-Status: GOOD (  16.24  )
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

On 11-07-23, 13:14, Vinod Koul wrote:
> 
> On Wed, 31 May 2023 05:34:10 +0300, Dmitry Baryshkov wrote:
> > While working on the QMP binding cleanup, I noticed that USB QMP driver
> > supports both simple USB PHYs (which should be updated) and USB-only
> > part of USB+DP PHYs (which are largely legacy and don't need to be
> > updated). To ease further cleanup perform a quick cleanup of the last
> > remaining USB+DP PHY (on sm8150 platform) and split the legacy codepath
> > from the USB QMP PHY driver.
> > 
> > [...]
> 
> Applied, thanks!
> 
> [1/5] dt-bindings: phy: qcom,sc7180-qmp-usb3-dp-phy: add sm8150 USB+DP PHY
>       commit: b484e246a21433daaabd8678347c96f8339bf818
> [2/5] phy: qcom-qmp-combo: add support for the USB+DP PHY on SM8150 platform
>       commit: 4daee20877df04b96bc36752acdc41dfc581b34c
> [3/5] arm64: dts: qcom: sm8150: turn first USB PHY into USB+DP PHY
>       (no commit info)

b4 messed up 3 is not picked up, rest are

> [4/5] dt-bindings: phy: qcom,msm8996-qmp-usb3-phy: drop legacy bindings
>       commit: c30d437e92d20741a6db7ece024e15a0f5af6bcc
> [5/5] phy: qcom-qmp-usb: split off the legacy USB+dp_com support
>       commit: 770025644d971229c86fb97796268b8363c2c70a
> 
> Best regards,
> -- 
> ~Vinod
> 
> 
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
