Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FD82C87FD2
	for <linux-phy@archiver.kernel.org>; Fri,  8 Aug 2025 07:47:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sXmX/xgMSuUClV+hW9oxQ0fXwink18mfyMPK0wtgJcs=; b=oTybjgacCimb7q
	2L3KSgOX/GSgxtdDIAE8UIeHD81K9HZ0Bw1XMYcWf96BsmSDovE6DKmd2pU+rJ0vPS2ecf9B8nF55
	KuvWc3qmuUgeK+B16ecJz/FFrCYWWb5R4Dd4l3MTIpUMtb1x+nkUqIxy5OHke34X/ahmem7BvJsoI
	Pyrc2FMp/AkQZ2VF/5y2y4gyWnt52FgJ56O7ioNQD0DWhYwWip2sT93Ti7ktGOxc8ZUnY03ybvH4i
	kW86JWwihrSxOGCxwVMb40Ui4iLq0h+jNYawF9V1G0KEbwm+C6r1RfO2nIV8HHNpg9ZZZUPfIv3bS
	f8pc0j+Au2ls735E+4+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukHoo-00000002FNS-3TtE;
	Fri, 08 Aug 2025 07:47:14 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukHWJ-00000002Br3-2HVC
	for linux-phy@lists.infradead.org;
	Fri, 08 Aug 2025 07:28:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id D9F7F41AEA;
	Fri,  8 Aug 2025 07:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E84CC4CEED;
	Fri,  8 Aug 2025 07:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754638086;
	bh=3EUTEM0GdjsnBj9cpM37/tdY5SSHyjxt4tpB30IPASE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=A2muc0jH+b47hb/yuSQHLVy4acDQA/KThuRPqpHVFG4tISpfOOoATADFptuPKCmhQ
	 5gOZQISjAxzYf+j10r4D8tQGAG5rzMO9AO8EkqYW562T/dZBD0fo8vm4jN7vf+5api
	 NUcSTpoaytey7lqGTtBazcNtiks011kEPT8iTZ+ZvuYL23fTAi1rTNIh5VrVQkiqMa
	 DrC+uOBPJ4zioa5Fb2iLoJyZ1oVPOPe9YZhb7WvP7nNWmUJkio1QJa4yOTVhg6vCjh
	 eov+/oBuR3DcdEGD1zhBmxTUMk0O9cyWDEilFe0U6ub0V0mBT72Mnisifgf3FJh8ka
	 SJqI4ohNLKIQw==
Date: Fri, 8 Aug 2025 09:28:04 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, mani@kernel.org, 
	conor+dt@kernel.org, bvanassche@acm.org, andersson@kernel.org, 
	neil.armstrong@linaro.org, dmitry.baryshkov@oss.qualcomm.com, konradybcio@kernel.org, 
	krzk+dt@kernel.org, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH V1 1/4] dt-bindings: phy: Add max-microamp properties for
 PHY and PLL supplies
Message-ID: <20250808-spiffy-vegan-boa-c24dd4@kuoka>
References: <20250806154340.20122-1-quic_nitirawa@quicinc.com>
 <20250806154340.20122-2-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250806154340.20122-2-quic_nitirawa@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250808_002807_597976_BB9E01BA 
X-CRM114-Status: UNSURE (   6.54  )
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

On Wed, Aug 06, 2025 at 09:13:37PM +0530, Nitin Rawat wrote:
> Add two new optional properties to the SC8280XP QMP UFS PHY
> device tree binding:
> 
> - `vdda-phy-max-microamp`: Specifies the maximum current (in microamps)
> 			   that can be drawn from the PHY supply.
> - `vdda-pll-max-microamp`: Specifies the maximum current (in microamps)
> 			   that can be drawn from the PLL supply.

How much you can draw from some supply is not a property of the device,
but that supply, so to me this is really oddly named.

Anyway, discussion is going in driver patch.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
