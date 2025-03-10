Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9ACAC282DE
	for <linux-phy@archiver.kernel.org>; Mon, 10 Mar 2025 08:09:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NG4gwyShkzFb7riJuLgEeDgQrC+xXsiwL81S+XGYq/I=; b=rROccsGw5v02Qt
	oaNKLulzEZI82y1+NcB6i4fvSr/dnlQGnsGSmLIsDMxCucp9Aj1rakmeGaJB+LUPAMA9Qa3XXWKk5
	iiwBqwKkJGAi/dztlALZUF7rfA7283zw/7VYdn6/CQqoJHE7yPl37II7c0+zmol3srDyZD5D8jzWB
	tzQu8ext5j/a83yEN9xmrJRbYRzQmXdJNK8nRIze+o45Ku/LdPOieHeBtB8wD8tEBXuyUzGJod90R
	DpNB8khji+C6XQdD44mCEwtdNIeTs8my8LLJImd9oy6sHo9YVJrgpvFErosiQkErXoAxLOJfnehiE
	cb79DM4SwlX1bQpqaUFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trYCa-00000001r9E-2PFQ;
	Mon, 10 Mar 2025 08:09:32 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trYA2-00000001qlm-2ilW;
	Mon, 10 Mar 2025 08:06:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 36EC45C546B;
	Mon, 10 Mar 2025 08:04:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D8548C4CEE5;
	Mon, 10 Mar 2025 08:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741594013;
	bh=NbJSs1wNLVvIHE9BQRAI0LXly/YzkdCvZRSwk1tZ3DI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ck14BSUW2DHr8FXn/UT60rQvCUmrcGuywDn0oo17f9h2KOHukhIcaLSLzIgJWWMRU
	 XUZx46fKlfwRYmbpVuqLg2mO6fTyCKMiclucXknt6CdKZthpPkeiohzN4ig+MwOU4/
	 6aEXrr5+NJtnTLcPMjaIPK7j562ZpAjYko0o6VfuxsMbN4jZmGLqmbR1uc2Kt1rkUg
	 1XHZHpFiLSDHfsA36SNrwDK0aI6JTSGqnN6c3gMRWCo+O8rAxwZF4hxU1U2UgOtCL3
	 dhvi8BmZfyLDTUf/1qYOOiI5m4r0mbm+NEIWaQ/7n4f56X2LCftJC5pmmFyJ0jlBoC
	 pFbRHuuovmwcg==
Date: Mon, 10 Mar 2025 09:06:50 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Christian Marangi <ansuelsmth@gmail.com>
Cc: Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Lorenzo Bianconi <lorenzo@kernel.org>, Daniel Danzberger <dd@embedd.com>, Arnd Bergmann <arnd@arndb.de>, 
	Linus Walleij <linus.walleij@linaro.org>, Nikita Shubin <nikita.shubin@maquefel.me>, 
	Guo Ren <guoren@kernel.org>, Yangyu Chen <cyy@cyyself.name>, 
	Ben Hutchings <ben@decadent.org.uk>, Felix Fietkau <nbd@nbd.name>, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, linux-usb@vger.kernel.org, upstream@airoha.com
Subject: Re: [PATCH 12/13] arm64: dts: airoha: en7581: convert SCU clock node
 to MFD implementation
Message-ID: <20250310-independent-melodic-hedgehog-d3010a@krzk-bin>
References: <20250309132959.19045-1-ansuelsmth@gmail.com>
 <20250309132959.19045-13-ansuelsmth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250309132959.19045-13-ansuelsmth@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250310_010654_790129_6C179803 
X-CRM114-Status: GOOD (  13.55  )
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

On Sun, Mar 09, 2025 at 02:29:43PM +0100, Christian Marangi wrote:
> Convert SCU clock node for Airoha EN7581 to MFD implementation in
> preparation for USB support.
> 
> Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> ---
>  arch/arm64/boot/dts/airoha/en7581.dtsi | 13 +++++++++----
>  1 file changed, 9 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/airoha/en7581.dtsi b/arch/arm64/boot/dts/airoha/en7581.dtsi
> index 26b136940917..dfc12fa99748 100644
> --- a/arch/arm64/boot/dts/airoha/en7581.dtsi
> +++ b/arch/arm64/boot/dts/airoha/en7581.dtsi
> @@ -173,11 +173,16 @@ spi_nand: nand@0 {
>  			};
>  		};
>  
> -		scuclk: clock-controller@1fb00000 {
> -			compatible = "airoha,en7581-scu";
> +		system-controller@1fb00000 {
> +			compatible = "airoha,en7581-scu-sysctl", "syscon", "simple-mfd";
>  			reg = <0x0 0x1fb00000 0x0 0x970>;

Hardware did not change and you do not explain why any conversion
affecting users is justified.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
