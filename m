Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D87FC28B2E
	for <linux-phy@archiver.kernel.org>; Mon, 10 Mar 2025 08:38:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fBEGqteGFQzPIo1fN6eBFRgeR6ueQMEOgIarrZTXm7w=; b=phSYypCCbVFywH
	8IZtQ+Ie8iim/JT+D6vwSk83IPj+029opLsw1NUPuIMjcBbd/vzp+CNtT8y6jHfkLu0MeJ8mHcYuD
	yppypmNoZo1SwPgR70tlFUBWjXdME7JM5sBAUyPNN/R3x1V+tBMmtnF3g/VeLRTqGt7BR5rTz9qLZ
	EbU6O5g4DEDK6OAH9X8x4ENno0CfkUWRn6xJs8E58SQ09YovSrhd+xg+0P6R2rCTtjw/nhDpRVGiG
	sqBL+clyfPxjBNwOLsrEvFwZvOgvt8g3yiCekUJBmsCjbWb+GEM2/PHBMGFbzefd4luaTGfQUOoWq
	Cd6g00f1NZh+GF+zyzdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trYeW-00000001wVg-0Yvw;
	Mon, 10 Mar 2025 08:38:24 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trYeT-00000001wUw-2G5T
	for linux-phy@lists.infradead.org;
	Mon, 10 Mar 2025 08:38:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 96C78A44CA8;
	Mon, 10 Mar 2025 08:32:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 975F8C4CEE5;
	Mon, 10 Mar 2025 08:38:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741595900;
	bh=r4/JPIW6MjEsja8Y5IUSOTA1XlmLtgY4IVJWbznTO8c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BQPa0jwa5JqeaOt1cjSzr9z9tpr6jtYK1lHAYg7b2vRUcDnms7auuiuqdV8wBH7Xw
	 EUS+AxlHGWEr34gVfJqpD0xFC8dR0GxmbvkLy3kMHkQqTRjE20B6D6s4Ulm3bgHS1O
	 /16bQ9BxGC3AfCIVZZIXwH4GcmmAlZvTMornvlaKpUh/wLh0NQklS3OkyHyUu7NipP
	 irHVymfYyhvT+o2bZfh8DdKZWp3HzLdEC8JbxPzMpxtG15IBczR8tNqdPSaOtBVVAc
	 ZkEDX6ZaQtlhe8Kj4XfP8XbPRvnB65IdhHEG0SV4z7NBjSMycqZ8xV9d9J1GLmrZj+
	 Tigqn6u37+9TQ==
Date: Mon, 10 Mar 2025 09:38:16 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com, 
	manivannan.sadhasivam@linaro.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org, konradybcio@kernel.org, 
	dmitry.baryshkov@linaro.org, neil.armstrong@linaro.org, abel.vesa@linaro.org, 
	quic_qianyu@quicinc.com, quic_krichai@quicinc.com, johan+linaro@kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 2/4] arm64: dts: qcom: qcs615: enable pcie
Message-ID: <20250310-neon-wealthy-sheep-2da4cd@krzk-bin>
References: <20250310065613.151598-1-quic_ziyuzhan@quicinc.com>
 <20250310065613.151598-3-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250310065613.151598-3-quic_ziyuzhan@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250310_013821_637552_A80EFF65 
X-CRM114-Status: GOOD (  13.90  )
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

On Mon, Mar 10, 2025 at 02:56:11PM +0800, Ziyue Zhang wrote:
> From: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> 
> Add configurations in devicetree for PCIe0, including registers, clocks,
> interrupts and phy setting sequence.
> 
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615.dtsi | 142 +++++++++++++++++++++++++++
>  1 file changed, 142 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs615.dtsi b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> index f4abfad474ea..282072084435 100644
> --- a/arch/arm64/boot/dts/qcom/qcs615.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> @@ -1001,6 +1001,148 @@ mmss_noc: interconnect@1740000 {
>  			qcom,bcm-voters = <&apps_bcm_voter>;
>  		};
>  
> +	pcie: pcie@1c08000 {

Incorrect indentation (I am not going to look at anything else here).

Binding wasn't tested (you expect community to be the tools), this has
obvious style issue, so I really do not believe you performed internal
review.

Quality of patches recently coming from quicinc is really poor. That's
one more example. I raised it internally and it seems it reaches people
slow, so here you have a public nagging.

Do the internal review before you post.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
