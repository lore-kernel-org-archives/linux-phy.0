Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08819CA101F
	for <linux-phy@archiver.kernel.org>; Wed, 10 Sep 2025 11:32:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q0faHJZNZO5DW2Jc1BG2ThgSliyN7gUhJTvI+I5WiS4=; b=Tn5PFOuRws+k5z
	4w83m29imxyhCPtglMkXqmIkY6ymDjg1b/NLzyM3THRTPN+ngTY2CCkk3T7OnXwI67ekMtp4Xniuk
	o48HbT0fhBvf8ueWruhjiZcfgLreHisjYpLAPBJt4xJdBL4XwaBZFR5Dn92qJRNnD5/EB3nbATBIg
	OP45pEazrvM1+QsonPwDyBc1MRPubOaNlCvmhDmJ4eFfaM4zHDJwTgBbkugBrTDkNXw/txHDgMQU8
	vcxzXHeHSivhgR48LgPe4R8o+WPWq08gEtKn80jk0NJvqBW5sMnpmClDP3bVjlCxxnnQg4YMK+OeU
	JgybfnUzNebclCAZW+Kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwJ3Z-0000000Dqix-2tFp;
	Wed, 10 Sep 2025 11:32:09 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwJ3Y-0000000DqiR-335R
	for linux-phy@lists.infradead.org;
	Wed, 10 Sep 2025 11:32:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id F1CAC601FA;
	Wed, 10 Sep 2025 11:32:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0C636C4CEF0;
	Wed, 10 Sep 2025 11:32:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757503927;
	bh=PXg8c+/ZU7itk4XjCn/ErjOPDbewAs+KaaNAF/jBlz8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZQJLQd2WDZPRYCRSzQO5Gdfg3EGC0J7ZP+52XfwIlsarvqvRM3mRgv7+wOEgvKg8a
	 y1DdLsRX+eM2jTSSdmtkn8Afp4i4RCmakVoJgy7xj9WB61F6Nw5dmApAsISOZXgsaB
	 NWBISq9rIeHOzzVMzAMMjVo0/bp8JU4p+Fy1Z0oBff/Yao/0VZAgxXlippzCzQ2T+T
	 58speqscfyz4yV60jqzfbW5whcqJPmkGHe4GbUWd8xQKJpPDGFjwmKrdZ/qSu+ZTbm
	 LA6cDxhCtCCbosvgRjP8XfqNA2n7c9DUgiLLjzMHTgqWly5NeB7yejjebVzxs6YqBk
	 q7tBOHSz27CDg==
Date: Wed, 10 Sep 2025 13:32:04 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Dmitry Baryshkov <lumag@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: Add DP PHY compatible for Glymur
Message-ID: <20250910-obedient-ambitious-oyster-5efa6e@kuoka>
References: <20250909-phy-qcom-edp-add-glymur-support-v2-0-02553381e47d@linaro.org>
 <20250909-phy-qcom-edp-add-glymur-support-v2-1-02553381e47d@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250909-phy-qcom-edp-add-glymur-support-v2-1-02553381e47d@linaro.org>
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

On Tue, Sep 09, 2025 at 01:07:26PM +0300, Abel Vesa wrote:
> Document the compatible for the Glymur platform.

And it is not compatible with X1E? Say something useful in the commit
msg, instead of what we see from the patch contents.

> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml | 2 ++
>  1 file changed, 2 insertions(+)

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
