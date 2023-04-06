Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5C75C77B6E
	for <linux-phy@archiver.kernel.org>; Thu,  6 Apr 2023 18:42:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N+PXn98k/E+5nby+kFRcffE7RuoG9OJPAgQSMdWd9iw=; b=kfpGCwsAZwz9LE
	EBXI/fm50KLEq5nI+1dl/st2+5GLqke4fZpa0/YxVf9+x9sZwFduv3kDXzqiRrTFtVsi5cob6txRI
	uIdzflQvbcHVZLGWuNe+9iuCHeABvHHeWGJEWHBCx+lr6Sr9WRUAljZw4YfcNqbeqRF4v3zO/2gxX
	DFQw6gaqKiJfLlfaLfBugvsxkKtT7IOa746ZGKgpIaBViXoUusINqrPVA7/IfA2avKJSdGPTf+Fyp
	ksaP+ycOB1PNORkAT5El7p6SuetNe1Q5BbIbI0jJhJ9mMwvk6XM8lM/sUd56noOkAFv/KYnP7Fzkd
	W9jPqscIM62hKvpybXYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pkUYt-008HrD-26;
	Thu, 06 Apr 2023 18:42:19 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pkUYr-008Hqh-2L
	for linux-phy@lists.infradead.org;
	Thu, 06 Apr 2023 18:42:18 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 97486649F8;
	Thu,  6 Apr 2023 18:42:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D14C4C433EF;
	Thu,  6 Apr 2023 18:42:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680806536;
	bh=TYg6LIY1PZ5kQT6OISGeT6SEjX/2L5Unzfeoc5UztMQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HWeRrnzu3MAhOJg1LJp9tu1KcIN5zs5XUHT3O81/od3FX16fu7AAE3miXeUYufjiP
	 nEtirGd+fwAVe/uYE1sMg+izdpuQQbl2FvJK5324yyjzWvHl6Ji30/blxzchY5745J
	 O9X7DO1a84rIXgakz8tUcd5T4CCzgqSgrh1APZnKZPAMAYAaxpQeQFKgRtRUkfsKoQ
	 x8cWD7Sxf17iT+5mg6ofT3cor+xBso0RgCe0fnpdbQOrwbyTXDSOyQiGtN+4E4Z4OO
	 X5g3XBooU/PoWaA8p3g3n/w1b7m3XyieyQ9LiEuhiAUK1dB5KBVOmawppIT+iYKYEP
	 7EjuyD0oTMR4g==
Date: Thu, 6 Apr 2023 11:45:06 -0700
From: Bjorn Andersson <andersson@kernel.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: agross@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
	kishon@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, gregkh@linuxfoundation.org,
	mturquette@baylibre.com, sboyd@kernel.org, quic_wcheng@quicinc.com,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH v2 4/8] clk: qcom: gcc-ipq9574: Add USB related clocks
Message-ID: <20230406184506.65d2gjycuvrley6f@ripper>
References: <cover.1677749625.git.quic_varada@quicinc.com>
 <cover.1679388632.git.quic_varada@quicinc.com>
 <24293be77ccdcf5e9b1fa0fd219de6152f234616.1679388632.git.quic_varada@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <24293be77ccdcf5e9b1fa0fd219de6152f234616.1679388632.git.quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230406_114217_828738_231F4249 
X-CRM114-Status: GOOD (  11.06  )
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

On Tue, Mar 21, 2023 at 02:24:22PM +0530, Varadarajan Narayanan wrote:
> diff --git a/drivers/clk/qcom/gcc-ipq9574.c b/drivers/clk/qcom/gcc-ipq9574.c
[..]
> diff --git a/include/dt-bindings/clock/qcom,ipq9574-gcc.h b/include/dt-bindings/clock/qcom,ipq9574-gcc.h
> index c89e96d..96b7c0b 100644
> --- a/include/dt-bindings/clock/qcom,ipq9574-gcc.h
> +++ b/include/dt-bindings/clock/qcom,ipq9574-gcc.h
> @@ -214,4 +214,6 @@
>  #define GCC_SNOC_PCIE1_1LANE_S_CLK			205
>  #define GCC_SNOC_PCIE2_2LANE_S_CLK			206
>  #define GCC_SNOC_PCIE3_2LANE_S_CLK			207
> +#define GCC_USB0_PIPE_CLK				208
> +#define GCC_USB0_SLEEP_CLK				209

Please split out the dt binding/include change in a separate patch, to
better facilitate picking both the clock and dts patch for the same
kernel version.

Thanks,
Bjorn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
