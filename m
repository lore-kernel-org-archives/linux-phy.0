Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95E75FF885C
	for <linux-phy@archiver.kernel.org>; Sat, 25 Apr 2026 10:32:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0bC13H9h+zpBEcvdzQpzz8uw8PHPNIiNFEfmt1gXJNs=; b=1y1TsNdM9eBzx6
	owu4Io3M4v6H93rdYOAd9vQ7+UezIJ1k1t3bS1IIDOAB0g8x8Pz0AYCDr4ECTQzvdS6qTBiMa2ysO
	UdNE6Meih9JnfLJzneEbvG4Sqf+PKbe32d0WQ+fR9vERsChcBNJc/jukliEOM3qnCgZiwIBthtMYr
	1RlCLKhPvrNHDdwgwLRavtYYI1yoOUdfSekIdOQmh7Pwthrd45gX8X3dxFG0s6rJbadpMfVFz6EvT
	ysjfWfjerTrMzyjeS7pj5yFLEnvp6bGJ/rTdBeoUy+Q48XcUzIOsnicBt7rg5q0pefw2JuBgSErJf
	SF181nN8AuG02QUrB4QQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGaIu-0000000ELar-1RTM;
	Sat, 25 Apr 2026 10:32:04 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGaIt-0000000ELak-3qXK
	for linux-phy@lists.infradead.org;
	Sat, 25 Apr 2026 10:32:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id DF9B360052;
	Sat, 25 Apr 2026 10:32:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4E27C2BCB0;
	Sat, 25 Apr 2026 10:32:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777113122;
	bh=4DVuXvTYmVYipPsUJoa6EH06pMLRwKzKbnAs09ruEM8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kShwqNNPEaY3f9gQcEXJNT+fnykzvRPkvxXUlQjre+fPf6VXYoNeg8r/3Ns0wLitk
	 rYwxYiJu4MVjMbC96ERRN1EwiDcKwdilrF4jj2Y4r469m+sEIutIkg65SQy2cmY3Rb
	 Wmtvf+4ODBuRsGSq1pyyWHB6fk1+oxLegVov3iJaJw2HrYIODDlYcVO21gpnUjaFP4
	 th8Rukcl7OA3Ty88n7txnbu1tkZngit1IPEBSjiiNYHn8Kkvx6WtGgtHc5qpfVg23y
	 PIo94ICGMztWG1+RWZWygyHuer2vLlRZvpvolkCa2G3DULrOzSAwMcEEDBqm3m3h6B
	 3zspxMz/1DzYA==
Date: Sat, 25 Apr 2026 12:32:00 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
Cc: vkoul@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	robh@kernel.org, neil.armstrong@linaro.org, gregkh@linuxfoundation.org, 
	dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com, abel.vesa@oss.qualcomm.com, 
	wesley.cheng@oss.qualcomm.com, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/4] dt-bindings: usb: qcom,snps-dwc3: Add Hawi compatible
Message-ID: <20260425-organic-basilisk-of-exercise-f14c6d@quoll>
References: <20260425070002.348733-1-ronak.raheja@oss.qualcomm.com>
 <20260425070002.348733-4-ronak.raheja@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260425070002.348733-4-ronak.raheja@oss.qualcomm.com>
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

On Sat, Apr 25, 2026 at 12:00:01AM -0700, Ronak Raheja wrote:
> Document the Synopsys DWC3 USB controller found on the Hawi platform.
> 
> Signed-off-by: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml | 3 +++
>  1 file changed, 3 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
