Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AADA0CDB474
	for <linux-phy@archiver.kernel.org>; Mon, 16 Oct 2023 18:26:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M0vGwTbzYzOGX5RyZg2WVEwoILW6sZfkRT0NckV2YZs=; b=GlsLqsUeSw6xD6
	8f1o7A9+3gjiDfdvAPxEvXnJAGZ4JlXUZE4s9xKt1jJdDiM73QgkXlfgfUY/ld8QBgFAOeRtBFd2E
	KKyT1EpCK/UmkA98HixcRvBwlvYT+z9duKjvW7tSJNsng5DS6six1FihT7QVpEPwERQzJC2/kC5Zq
	5/a+/uWVmr+P6RkZtYwQ8P63FGaqIcH2XNClJAK75Ld9YA0ILBBqUay734Q7EVFpDu/0vVWZgXZgm
	sbWXg7UrReIVZ7SRYVHG4ACVDjgbspInNPutP4jG9giwGygZdfv9obhaZOoejk/u3ohqZn6TQC1vT
	qZyAwQAicQRXrkXhdaKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qsSIe-00AKEf-19;
	Mon, 16 Oct 2023 18:26:44 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qsSIc-00AKEA-0Q
	for linux-phy@lists.infradead.org;
	Mon, 16 Oct 2023 18:26:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 6A55860AC6;
	Mon, 16 Oct 2023 18:26:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 386FCC433C7;
	Mon, 16 Oct 2023 18:26:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697480801;
	bh=sYde3Du+hMyzjINIU0GO0sOIiLkg2vzuKHXl0Ldl/Jk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Fh01ajxUZQBeYms+rkVQqnO1UDhLQ4+eKVrNHAU5tB68LoQkj71WkpvOtP2sWcAos
	 nzzCM7/jLzpIzpGHkSZUHQPxVfxhrQsI6dl4QZZ81UZXjMeKVauBacEd/qEAk9LEw4
	 +nQM3k017sPvYucr22REAEPbFwr6HeFthxB9fIBQ9lE93leWHrJ1yZKS96pPj4ae36
	 TWF+ne6sd5gM6WCsUMKEtaFzwnDE1xcQqJophO5xt/Kne1v2thj/j5mjenotp2XWV0
	 /AxuZ/p5h3Jb+/nunaBXCv7GSBtfCkxkX/ym3oADRc8X7UjEpQ8x11a3iWxdSM98/L
	 IxLFtblYVqs8g==
Date: Mon, 16 Oct 2023 11:30:27 -0700
From: Bjorn Andersson <andersson@kernel.org>
To: Mrinmay Sarkar <quic_msarkar@quicinc.com>
Cc: agross@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, konrad.dybcio@linaro.org, mani@kernel.org, 
	quic_shazhuss@quicinc.com, quic_nitegupt@quicinc.com, quic_ramkri@quicinc.com, 
	quic_nayiluri@quicinc.com, dmitry.baryshkov@linaro.org, robh@kernel.org, 
	quic_krichai@quicinc.com, quic_vbadigan@quicinc.com, quic_parass@quicinc.com, 
	Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, linux-pci@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, mhi@lists.linux.dev, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 4/4] arm64: dts: qcom: sa8775p: Add ep pcie0
 controller node
Message-ID: <atvjq653nodb65i3u5m53ko4brdhlroqjqkixolyq3k5xtz3u4@ryhqlq3g6bu4>
References: <1697023109-23671-1-git-send-email-quic_msarkar@quicinc.com>
 <1697023109-23671-5-git-send-email-quic_msarkar@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1697023109-23671-5-git-send-email-quic_msarkar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231016_112642_208385_C540DBF4 
X-CRM114-Status: GOOD (  11.38  )
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

On Wed, Oct 11, 2023 at 04:48:29PM +0530, Mrinmay Sarkar wrote:
> Add ep pcie dtsi node for pcie0 controller found on sa8775p platform.
> it supports x2 link width.
> 
> Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 48 +++++++++++++++++++++++++++++++++++
>  1 file changed, 48 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> index b6a93b1..485f626 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> @@ -2608,4 +2608,52 @@
>  
>  		status = "disabled";
>  	};
> +
> +	pcie0_ep: pcie-ep@1c00000 {

Please move this node up, to keep the nodes sorted by address (then by
name, and label).

Regards,
Bjorn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
