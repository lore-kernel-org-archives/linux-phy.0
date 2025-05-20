Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C8A9C3ABDD
	for <linux-phy@archiver.kernel.org>; Tue, 20 May 2025 18:04:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H03O0hiV+27Mh/CoYDw1mOmJJQ59lANwcSsciiCj8NU=; b=xSvrjPRBxyxWHi
	TzYUuefjRZ0yz6fWr8CecyHRlJR1zzv7eyd0fms/SFUa2tCnXCn4WETRu/CBe7ryH6hzoVi2xsJtW
	tcH5sHOkiBUtDlBpi5tdriuRDmhKDQr7WHJ7Z4+K0w6fpJyYi0B9ZYBla4j3K4cf/9l0UYSaqPJw6
	nEfQ1Faq7+8zFC03z1xLG9Z0mtZGl/rF2pceRhWer2FJMnAv8IelzseWM6S4v4Z80lU6xNyT3+2Lg
	Z3C0ynzKk89eAqHXvIBJtoJDUuQLBBtEoYTgZiHlodcVRNEWgrThYHKyuIgVOmqjp0xxNGvoEgSKo
	c8UQvZm0Gv2vjRU0HbBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHRKV-0000000Dkac-0nKh;
	Tue, 20 May 2025 18:04:43 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHR8Y-0000000DjUo-0Cf7
	for linux-phy@lists.infradead.org;
	Tue, 20 May 2025 17:52:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1747763539;
 bh=uKHEwnYvk3DoQnbDm76DtOrSSIM/yuksJQK3RjrtSzY=;
 b=oZtVdNufKzv1pZO/Q2YDMYsM0kWaZKnxxFrNPDzEaRQpkEi1YlQFX7dAIB9zDAXKLpO7F0Dqi
 P/Sn6wLHNwQd3jMOeE88J2uBCSWOESkI2YRUndOEMektdZcEkVQK53jWsgCH+HYRaumNVuvGaaE
 fKGZMCMUe1IY3j+lkQSjIqYLJvl38B6I0Zjhha9tzNHyvomphwXmT1v73oncypddn4jMa4AImon
 Rh3XQa7VziOWxpN4dKTTrvYyPBvPqrtaFUu3YwHrE1GMu2FAWKiJoWEu73Y/Q9GszIcwBXlqsJC
 sPFLnzmgWwr3k1vDPqD9JrBuhP5shVgc+5bdpV3zlPMQ==
X-Forward-Email-ID: 682cc1437730016263d49d6d
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 1.0.3
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <079c08bc-e8cc-4ed6-a71e-7ef103f635c0@kwiboo.se>
Date: Tue, 20 May 2025 19:51:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/5] arm64: dts: rockchip: Add naneng-combphy for
 RK3528
To: Yao Zi <ziyao@disroot.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Frank Wang <frank.wang@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Shresth Prasad <shresthprasad7@gmail.com>, Chukun Pan <amadeus@jmu.edu.cn>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250519161612.14261-1-ziyao@disroot.org>
 <20250519161612.14261-6-ziyao@disroot.org>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20250519161612.14261-6-ziyao@disroot.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250520_105222_429614_DC512B34 
X-CRM114-Status: GOOD (  12.29  )
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

On 2025-05-19 18:16, Yao Zi wrote:
> Rockchip RK3528 ships a naneng-combphy that is shared by PCIe and USB
> 3.0 controllers. Describe it and the pipe-phy grf which it depends on.
> 
> Signed-off-by: Yao Zi <ziyao@disroot.org>
> ---
>  arch/arm64/boot/dts/rockchip/rk3528.dtsi | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3528.dtsi b/arch/arm64/boot/dts/rockchip/rk3528.dtsi
> index b2724c969a76..314afb94e19b 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3528.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3528.dtsi
> @@ -318,6 +318,11 @@ vpu_grf: syscon@ff340000 {
>  			reg = <0x0 0xff340000 0x0 0x8000>;
>  		};
>  
> +		pipe_phy_grf: syscon@ff348000 {
> +			compatible = "rockchip,rk3528-pipe-phy-grf", "syscon";
> +			reg = <0x0 0xff348000 0x0 0x8000>;
> +		};
> +
>  		vo_grf: syscon@ff360000 {
>  			compatible = "rockchip,rk3528-vo-grf", "syscon";
>  			reg = <0x0 0xff360000 0x0 0x10000>;
> @@ -867,6 +872,23 @@ dmac: dma-controller@ffd60000 {
>  			arm,pl330-periph-burst;
>  		};
>  
> +		combphy: phy@ffdc0000 {
> +			compatible = "rockchip,rk3528-naneng-combphy";
> +			reg = <0x0 0xffdc0000 0x0 0x10000>;
> +			#phy-cells = <1>;

Should probably be sorted at end or before resets prop.

> +			clocks = <&cru CLK_REF_PCIE_INNER_PHY>, <&cru PCLK_PCIE_PHY>,

This break the ~80 line length limit mostly kept in this file.

> +				 <&cru PCLK_PIPE_GRF>;
> +			clock-names = "ref", "apb",
> +				      "pipe";

Could be kept on a single line.

> +			assigned-clocks = <&cru CLK_REF_PCIE_INNER_PHY>;
> +			assigned-clock-rates = <100000000>;

Other assigned-clock props are sorted before clocks props in this file.

This is also missing power-domains information (also missing from
dt-bindings patch):

	power-domains = <&power RK3528_PD_VPU>;

> +			resets = <&cru SRST_PCIE_PIPE_PHY>, <&cru SRST_P_PCIE_PHY>;

This also break the ~80 line length limit mostly kept in this file.

Regards,
Jonas

> +			reset-names = "phy", "apb";
> +			rockchip,pipe-grf = <&vpu_grf>;
> +			rockchip,pipe-phy-grf = <&pipe_phy_grf>;
> +			status = "disabled";
> +		};
> +
>  		pinctrl: pinctrl {
>  			compatible = "rockchip,rk3528-pinctrl";
>  			rockchip,grf = <&ioc_grf>;


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
