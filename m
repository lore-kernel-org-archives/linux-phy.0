Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 911B8CC6B1D
	for <linux-phy@archiver.kernel.org>; Wed, 14 Oct 2026 11:18:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sm+aQPd99HoUgTHeMoOheZnYkeorAhc0192EOOX5xv8=; b=R7wgS1M5T7H4yC
	qE9WV4KKj6MNuaeASSIMlFPHPMGkc3TiwiTPHmNv1c5tNIstnjVyq6MeYosPd/rqBX0WitxJuFJma
	MxWCIUcqgVuG7JMv0mQpiQ5gvvIIBd+izI6CAKwdYKp9Ixd/Y44BeeKFhE1OE4wJGOCRDxAOEWS4G
	PcNrbNSsl3r730QD6PyBwrdvIP3tYZ33LsdOiQFGWhisvdY0/hYXU4ankAPY9S8PBbxZX28jYuM5I
	8KnW64CqJJx1rdx/PNWvoUV9BeNVmPSo0IFr0crIlOswpRymrlg0NUVw45ZHFarLnMfFpe5rjrZYC
	7qrcPEOXSVBAn1tJPx3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGx0Q-0000000FJ8G-3awP;
	Wed, 14 Oct 2026 11:18:46 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGx0P-0000000FJ8A-1zXv
	for linux-phy@lists.infradead.org;
	Wed, 14 Oct 2026 11:18:46 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 9E047601F9;
	Wed, 14 Oct 2026 11:18:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF4281F000FF;
	Wed, 14 Oct 2026 11:18:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791976724;
	bh=OKBnsnfCKN2fkgPqQiZ01j4m/ocO3oO730cJmnLZmLs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ZEt0uCZZCzFklz+3Iv/wUtjrvSv8fBfTd9psbtR0X6dSXTpfD84n7mH5F8Zv2qKpH
	 g1vv5IF1XpbQFkeZwBOp4ikZ/4asARNBxwlnkIwghmH/cXj2vB588dS9G+WBd6jdqd
	 +w1hclZjlO1Bd/KhFebLpCt3LhH3NY68jR59l8TFdKBNW+huvYhx/0hMLgqd6sPN0s
	 pcW2uCE+T4L+DaSmMT+Gzl9JeZYMVwdwk1GqxmKnR3y5S2QhQBuAq7uCgphQ1hEBQ/
	 UTuCs0nrpn8bUrI665g9LglexmRhIPJfzGwU7tqfFuI/oVB5pwD8gkeNehcOmFdqzy
	 j5sLoPWIVdjHg==
Date: Wed, 14 Oct 2026 13:18:41 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Cc: Loic Poulain <loic.poulain@oss.qualcomm.com>, 
	Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
	Suresh Vankadara <svankada@qti.qualcomm.com>, Vikram Sharma <vikram.sharma@oss.qualcomm.com>, 
	linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, linux-media@vger.kernel.org
Subject: Re: [PATCH v2 2/8] dt-bindings: phy: qcom,x1e80100-csi2-phy: Add
 Hawi and Maili compatibles
Message-ID: <20261014-satisfied-misty-scallop-a75fba@quoll>
References: <20261013-hawi-maili-camss-v2-0-fc93222da89c@oss.qualcomm.com>
 <20261013-hawi-maili-camss-v2-2-fc93222da89c@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261013-hawi-maili-camss-v2-2-fc93222da89c@oss.qualcomm.com>
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

On Tue, Oct 13, 2026 at 04:32:44PM +0530, Nihal Kumar Gupta wrote:
> Hawi and Maili integrate the same CSIPHY IP as Kaanapali with an
> identical register interface. Add qcom,hawi-csi2-phy and
> qcom,maili-csi2-phy falling back to qcom,hawi-csi2-phy.
> 
> Co-developed-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml | 5 +++++
>  1 file changed, 5 insertions(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
