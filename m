Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14995CD6E45
	for <linux-phy@archiver.kernel.org>; Thu, 28 May 2026 07:55:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EwHKYp8M7fQyao8Jk5CfsNmjVHvt4UFJ3tMxrWZ/o+Q=; b=Drd5DypMcJOb3F
	v8m6/eKP65I2IfYE+9mopAH05ouYXGJ9aujxLK2q6+weNzQtlgsoS64tGyNBOpeMxUUKklRPubL+k
	e3xJ5qpX7I9gUCboX+/vEkdd3tjZSTOuOZ08vBWyB3yGIdwqupMSPOBKyqLJUfmYw8Et4wCVXhULn
	iLHE4vauzGz0J5gj/ZVhj0VH+pk09gAzYuiy8YV4jk2PtCJkke8dC5T26eVu6boxmC7DkyNcGTpTf
	GY8IR9WryHcde/qb1lUH0u+QQhF49tTqzq4awH2QwMy7AY9Huiicq2XjHQHPwfCajksPT5PA6KqVq
	zU2wmoNMH1mO/6azay2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSVaK-00000005JMa-2o0c;
	Thu, 28 May 2026 07:55:20 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSVaI-00000005JMA-09KR
	for linux-phy@lists.infradead.org;
	Thu, 28 May 2026 07:55:19 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 0F65B42B35;
	Thu, 28 May 2026 07:55:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A4601F000E9;
	Thu, 28 May 2026 07:55:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779954916;
	bh=Wibil3fYU7GUzl7PZD0V1fXrGP0RMfeghbY1bbCixbo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=CLgTiPl1IgYq8aulOoCEBcZXX9yW26avJ91eMXfiFbNJQZ8j/bNMf7KYCCvRC0JiF
	 cxi/KnUQR1OvA+zv2aLzqHFi4icCyOyL+RXIOZQhX3c8PwlP91EwzU5Y+q7MjLYO6B
	 aafozRDfaeAORU8qR5f9aZkQTiHf73dVRY39V8RBXer8QIjE52D4dhxDJsJQWgV6rL
	 5v+6+RQAZfg4xX15qmpNHcrcqNPhcMBY0HfDMGogcW7DPOb66uS96gTKc+FqwtiYh/
	 okrUMTpz6nrTcg3AAXL+J1Bwc8AKr9Lg9aJRYdf0OJOB0BRN06o9Y8lmg4pptBaN3g
	 zqhI8SpFrMUhQ==
Date: Thu, 28 May 2026 09:55:13 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-mmc@vger.kernel.org, monish.chunara@oss.qualcomm.com
Subject: Re: [PATCH v4 1/5] dt-bindings: arm: qcom: Document Shikra and its
 EVK boards
Message-ID: <20260528-tasteful-fervent-cheetah-ced6af@quoll>
References: <20260527-shikra-dt-v4-0-b5ca1fa0b392@oss.qualcomm.com>
 <20260527-shikra-dt-v4-1-b5ca1fa0b392@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260527-shikra-dt-v4-1-b5ca1fa0b392@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260528_005518_120688_A94390AF 
X-CRM114-Status: UNSURE (   8.41  )
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

On Wed, May 27, 2026 at 09:23:51PM +0530, Komal Bajaj wrote:
> Shikra is a Qualcomm IoT SoC available in a System-on-Module (SoM)
> form factor. The SoM integrates the Shikra SoC, PMICs, and essential
> passives, and is designed to be mounted on carrier boards.
> 
> Three eSoM variant are introduced:
>   - CQM: retail variant with integrated modem (PM4125 and PM8005 PMIC)
>   - CQS: retail variant without modem (PM4125 and PM8005 PMIC)
>   - IQS: industrial-grade variant without modem (PM8150 PMIC)
> 
> Each SoM variant pairs with a common EVK carrier board provides debug
> UART, USB, and other peripheral interfaces.
> 
> Add compatible strings for the CQ2390M, CQ2390S, IQ2390S SoM variant and
> its corresponding EVK boards.
> 
> Signed-off-by: Komal Bajaj <komal.bajaj@oss.qualcomm.com>

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
