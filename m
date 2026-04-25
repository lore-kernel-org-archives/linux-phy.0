Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6DDF8FF885D
	for <linux-phy@archiver.kernel.org>; Sat, 25 Apr 2026 10:31:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NpqYbV1Dn9M1n/IjS9Mv+uY5pmSxj8mVMPHkVlrDygM=; b=E6q6g4GsiTZPbU
	FSH3GwKBjF13hdxyHHnj/IDNvZdg6KJNqEoJj+gOJNmU3mHpYCoSiogmz6yOWei5odz3krBhbvi7d
	TQaopf4jMB2LqpnqufGJp0OJQIm4Bi7/xNeFeS2CwtljNhyhgrz5pHM2EZHHlJBYDA6+xhHzgp6F/
	v6GIN442V7X9dUgTYEv89hfcRriwzL/Iq2z1uoSHDaZHjHgmEiL/rTo+DaCqiqFCfN5RnJWWVQmTs
	O7Wu4Gkr814VLL7dCfZIOwi0Aft8Eqyd1wGiLVQZC49oqoqlrSTJBqM9Ava6dBxtv7bbMZHiMnUpt
	KtMZQm8xXX+qL9rpYRMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGaHz-0000000ELYP-0Db5;
	Sat, 25 Apr 2026 10:31:07 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGaHv-0000000ELY2-493i
	for linux-phy@lists.infradead.org;
	Sat, 25 Apr 2026 10:31:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 894C540B21;
	Sat, 25 Apr 2026 10:31:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8B44C2BCB0;
	Sat, 25 Apr 2026 10:31:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777113063;
	bh=3bUHD2YRRtUg0cgqA7r55OGxjlDxRc+QgJkJJZZyiCY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IpHfHfvgAo51SnLX4WHrNu2umSPY43TiJoZMP5jLlmZYcah1HjCNJQK4ncGHB2Dif
	 QncX2f1nDfcTrgsget9L+w/VmjfZu2qgz1qFxpbVKWy3ktV3kFWf9v8WCY1zM6cvwJ
	 ZdDsVDtB+6CcqYQlQOyRoyOWm8BN6EhhWOmWj/xe6ARL0BLpCx/sR3oQoBx+jfA65V
	 Q4ALOf0CeaOGO5L+iPlAGTrgYxdI0z5T3e4heg8neDlJtSF3kDHuppyoO9X0L2rkmZ
	 WtM/gb85mkqpgADUg9WPteb/kTitNV43EkgNvfu7ctdj4aw9ATa849ZX5hqIzNY2Y4
	 eos6ZgyJKVNsQ==
Date: Sat, 25 Apr 2026 12:31:01 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
Cc: vkoul@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	robh@kernel.org, neil.armstrong@linaro.org, gregkh@linuxfoundation.org, 
	dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com, abel.vesa@oss.qualcomm.com, 
	wesley.cheng@oss.qualcomm.com, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/4] dt-bindings: phy: qcom,m31-eusb2-phy: Document M31
 eUSB2 PHY for Hawi
Message-ID: <20260425-unique-powerful-zebra-cf5d42@quoll>
References: <20260425070002.348733-1-ronak.raheja@oss.qualcomm.com>
 <20260425070002.348733-3-ronak.raheja@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260425070002.348733-3-ronak.raheja@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260425_033104_042878_9B95EF3C 
X-CRM114-Status: UNSURE (   9.12  )
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

On Sat, Apr 25, 2026 at 12:00:00AM -0700, Ronak Raheja wrote:
> Document the M31 eUSB2 PHY for Hawi which handles the USB2 path. Use
> fallback to indicate the compatibility of the M31 eUSB2 PHY on the Hawi
> with that on the SM8750.
> 
> Signed-off-by: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml | 1 +
>  1 file changed, 1 insertion(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
