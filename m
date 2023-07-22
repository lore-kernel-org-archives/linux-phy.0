Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A6BAC41513
	for <linux-phy@archiver.kernel.org>; Sat, 22 Jul 2023 05:03:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3VGN9oMUZ9dprE1Ay5y29UjnjS+axjhDG1rgmWkL7tY=; b=YOxWT6gmFUAq7p
	EcXLOzgXjuizhwiRQy/dlpLrPDCji/1FiK00EArU48vq0deyFGwRxmCgLG7n4DO0UcAqQndkeO54+
	iXs0UXYHvyHsIip1/C9vSPzams3jo/qGKUtuSqAczYYoheCtDIo6yNKprlgshTn4TXmXPM5H+GMNt
	AQRzJUav+kHJa2YjqEleQoKpVkaNGhIyTVVzCYr40MZ6yNaKrYvz+L6iMc8zx/6lZmFxaE36poSbD
	SABqzDSRzIbibM8amP0llyd7dn9WAnKvTNKVNPEJK5aSnd4gLLd7cVzFJMtxTryA6VgS0SddxNYzE
	jgWDX+4B84yaHTM6t7tA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qN4mS-00FqLM-01;
	Sat, 22 Jul 2023 05:03:48 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qN4mP-00FqKd-1B;
	Sat, 22 Jul 2023 05:03:46 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id D219C609FA;
	Sat, 22 Jul 2023 05:03:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 84A96C433C8;
	Sat, 22 Jul 2023 05:03:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690002224;
	bh=dpEkrC9sBtiVEfiM0x7VPJCsAGNzmWmplxWvorExXgY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iykTUv9mGESoPIo0JGJYJeA15/sWcmNDlfv+5tZJbmdyXL6n2F9z9SjBMTIuSgx1e
	 TIHayPAe5k6abwyg3/jdMFVJ3d/bfZeq4UCc9XYoRVTcbkPsz2yPE5iY1C/KMPsEr/
	 PLcaf0rqXbrtAnSdI5F296h1M2OvFNtjKqBwDN6jIIA79g3lay9lMLbI8pUJB2o8YZ
	 OtXU8KwCFeYR4aN6EHT6CPLln959OmNt7VQgMMO39MyzrvQZCDW0HoFM/fTJxVvcsz
	 L4RLl0Qw0GJDLlu2xCNj7ZC5yDVkMOEE1tZkoteuZd6/NlTYy7BWvE92TRCVYphf4P
	 OlweRJK6zi+mQ==
Date: Fri, 21 Jul 2023 22:07:01 -0700
From: Bjorn Andersson <andersson@kernel.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: agross@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org, 
	kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, gregkh@linuxfoundation.org, catalin.marinas@arm.com, 
	will@kernel.org, p.zabel@pengutronix.de, arnd@arndb.de, geert+renesas@glider.be, 
	neil.armstrong@linaro.org, nfraprado@collabora.com, rafal@milecki.pl, 
	quic_srichara@quicinc.com, quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v5 5/6] arm64: dts: qcom: ipq5332: Enable USB
Message-ID: <uuw5fzqjgalcffutdp3cxkilht76ocvnf7okx5nfng6433hq3o@ujl2kugkefuj>
References: <cover.1689913334.git.quic_varada@quicinc.com>
 <2f8f86fdef6cad65954b7668cb13fc132b685a4b.1689913334.git.quic_varada@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2f8f86fdef6cad65954b7668cb13fc132b685a4b.1689913334.git.quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230721_220345_471426_B7491BA9 
X-CRM114-Status: GOOD (  12.92  )
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

On Fri, Jul 21, 2023 at 10:05:30AM +0530, Varadarajan Narayanan wrote:
> Enable USB2 in host mode.
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v1:
> 	Enable usb-phy node
> ---
>  arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts b/arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts
> index f96b0c8..f5dea16 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts
> +++ b/arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts
> @@ -79,3 +79,15 @@
>  		bias-pull-up;
>  	};
>  };
> +
> +&usbphy0 {
> +	status = "okay";

Is this phy not powered? Should there be some regulators controlled?

Regards,
Bjorn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
