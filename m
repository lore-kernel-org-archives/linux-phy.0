Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCF6CC5CFDB
	for <linux-phy@archiver.kernel.org>; Thu, 13 Aug 2026 09:12:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lkCKu4xIu2jnKsw3mK2Oc4q2ix53rKQYN5P0QpLlTW0=; b=Nxh7hVmU53k9VD
	Q8xfhuHXT+rQUPZJFjk2c6bFz/dMAC+yLGLq2iSTLAKhznG3k6WS9IWqN0V/kRnAJ3BRKNlqoZr37
	JmZaV6CL21AjpYX8dCzHftUk2Xzvgrp76ECaqu3zblU7/8zKKu7cCClaWBDDuDGQ5kwKLnW2dHrWl
	/1P6vpOTDb18PYV5UZfV+ZqL7zgFDbpfA1h6U6dHbMEE7jdxUmav24XrNcHMjH1xERJSy+2NnTYYc
	RmErwoTbQD4PWBact9S70EGw0L2kDAE6a/HlKPus/3BBWP/s2AKQImCJVXqdDafDOBZitAfST1P2F
	IfhatgTywwbfdEisJFxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuRUB-00000000G34-1gN0;
	Thu, 13 Aug 2026 09:12:27 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuRUB-00000000G2l-0265
	for linux-phy@lists.infradead.org;
	Thu, 13 Aug 2026 09:12:27 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 1223942A6D;
	Thu, 13 Aug 2026 09:12:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8A16B1F000E9;
	Thu, 13 Aug 2026 09:12:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786612346;
	bh=veOK+fGOB86iI4UeNXXh9Hz7WZFBr6hqVs3K45gN6P0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=cPLdRXNzEh2jCgVgLlyNk0naoNeF6D7UzsVL7YuWf0USIUv4PYlYg80UhgYTkvXJy
	 5QNMk2yHOd4zsGeOLUke2g5GI+LqcR08JQzTWqp1vQomj8Ts92fKrm9fLBra6yDqJ/
	 cZsocozBhZ74OWPx6kpgZUO6MIpKpPfDi5snbjfn7T5eUPa1KJBb5bzBpWztfvTQGI
	 TUS4WiSVi4gjvulGoJhReUh8ttHOz6pJITUCDLIqXkaSj6ECqhvnL1NCJD7mY+pU3x
	 THwCdo44NC0krv/ZoWktbCLIF+7N2WS6k9WlRaUTGdrd9TwFtNaqMLbsvkd1WF65LZ
	 0NHphPLUOlfIw==
Date: Thu, 13 Aug 2026 11:12:17 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: George Moussalem <george.moussalem@outlook.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Praveenkumar I <quic_ipkumar@quicinc.com>, Varadarajan Narayanan <quic_varada@quicinc.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v2 06/14] dt-bindings: usb: qcom,snps-dwc3: Add clocks
 for USB3 on Qualcomm IPQ5332
Message-ID: <20260813-futuristic-opalescent-seriema-ea2bf7@quoll>
References: <20260812-ipq5018-usb3-v2-0-8f355d7ff0ef@outlook.com>
 <20260812-ipq5018-usb3-v2-6-8f355d7ff0ef@outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260812-ipq5018-usb3-v2-6-8f355d7ff0ef@outlook.com>
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

On Wed, Aug 12, 2026 at 01:34:41PM +0400, George Moussalem wrote:
> From: Praveenkumar I <quic_ipkumar@quicinc.com>
> 
> Add aux and lfps clocks in Qualcomm IPQ5332. These clocks are required
> only for USB Super-Speed support.
> 
> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---
>  .../devicetree/bindings/usb/qcom,snps-dwc3.yaml      | 20 +++++++++++++++++++-
>  1 file changed, 19 insertions(+), 1 deletion(-)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
