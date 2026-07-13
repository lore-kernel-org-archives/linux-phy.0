Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F03DC44501
	for <linux-phy@archiver.kernel.org>; Mon, 13 Jul 2026 11:57:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tVwwv62NbGYDbkaZn3N4UI0vuDdgK8PZYJliqRCRkLI=; b=2pzPRvl84ngXmJoSO+c0lB6+Ix
	zPxY57rnXo7BEy9sUkB7Xnt09/lAkYv1mdXY0XDD2ZQ3rwQvy016XGR+Sj+NxDzfqoMNRlxzLl3DV
	C032dFDFpHE5pOmmNMd6NvKkSQLMDiJQaxdqIzuvEYFllKYkmWR30Ff/C9dBCyeA0v7+vNXrcirXw
	6OY9gmLUMvq7KR1KcwLAoQSzeu8Lo5vYzLaWnh8MDwhym3FYtEO3TM5I9+ZVYP1MreGgqHCXzawDQ
	kJ2KMgTx5kKW38ORPC8S/mDRaPUZiMDYBbZ5fq6Gfe98jdvVy0M0FKhqmDZMP5LXUEngOuaE4ytEf
	pu0/tXTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjFHs-000000096BP-0Aw2;
	Mon, 13 Jul 2026 11:57:28 +0000
Received: from mail.lysator.liu.se ([2001:6b0:17:f0a0::3])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjFHn-000000096AU-2x4C;
	Mon, 13 Jul 2026 11:57:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lysator.liu.se;
	s=2026; t=1783943837;
	bh=ZU9f5XQcfOha9tsafysQKKY+BbVKCPTIcqlTdjCJdHc=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=pRXGPF976Iki1t7KMpqT7+wiSqjTexXB0wnkJTT3EI5w8JAOYsOuF5p4zJoyaJmtg
	 2El6x6YuRBo6ewO2H+r3GVUgRs538NxlgdH8k5BoLbefvYAsQ537CapqkV5sP3Jz4e
	 67NaD1Riexbqc8LpOFF8MvxTmY6ztVbddyHLrNelrzJUDaxxXKbVI3yd4QGo3/Gcoj
	 sxgQ8H/R8uTiuUKnRimE2ZN2obxnJQDnzVk06+hqqruq26KsPNjluhbgmG7yCxdoNU
	 xOqOF1vH3EkG10+WDKSpyBl12GKbw7jHdUzcOSLjlFatyyTj9AOxnWoQLkOvm07iRb
	 s6ejWv4/TGIOw==
Received: from mail.lysator.liu.se (localhost [127.0.0.1])
	by mail.lysator.liu.se (Postfix) with ESMTP id 2EE714637;
	Mon, 13 Jul 2026 13:57:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lysator.liu.se;
	s=2026; t=1783943837;
	bh=ZU9f5XQcfOha9tsafysQKKY+BbVKCPTIcqlTdjCJdHc=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=pRXGPF976Iki1t7KMpqT7+wiSqjTexXB0wnkJTT3EI5w8JAOYsOuF5p4zJoyaJmtg
	 2El6x6YuRBo6ewO2H+r3GVUgRs538NxlgdH8k5BoLbefvYAsQ537CapqkV5sP3Jz4e
	 67NaD1Riexbqc8LpOFF8MvxTmY6ztVbddyHLrNelrzJUDaxxXKbVI3yd4QGo3/Gcoj
	 sxgQ8H/R8uTiuUKnRimE2ZN2obxnJQDnzVk06+hqqruq26KsPNjluhbgmG7yCxdoNU
	 xOqOF1vH3EkG10+WDKSpyBl12GKbw7jHdUzcOSLjlFatyyTj9AOxnWoQLkOvm07iRb
	 s6ejWv4/TGIOw==
Received: by mail.lysator.liu.se (Postfix, from userid 1004)
	id 1172945C4; Mon, 13 Jul 2026 13:57:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lysator.liu.se;
	s=2026; t=1783943829;
	bh=ZU9f5XQcfOha9tsafysQKKY+BbVKCPTIcqlTdjCJdHc=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=tBP9qD8X/xsXZ7egKwzKFvcjlUpLAIm1KgxB8b2b/QLhFDWGuOsaaNyA9AaX0h4EP
	 UT2xTKBrUdwJ/uHPjdWfTqK0UgegGwGKDuLWoa8qiMNmxxKHEMA9HhBig1pp5ohAjX
	 ZI/fDbfZ/PXP7cP49ifkTiFpUxlBKg38sdJlmDSBipXM++nfWkFQRfFkeqkLQyc7bx
	 m+f1FvpSIm0o1JV9aJcwLQX8dUa/Xdwqevi/LKyHPDmfPXQ0CFyn7k19/mxEZu9W/X
	 A9NB0oaVGN8c5fFzWE1e2YV54kMlbioLeCyOmyKxNO/NUCXCFkQTvjQuhFWkI4UuLv
	 L4FRdHuEGTiAw==
Received: from [192.168.2.172] (81-225-28-11-no2391.tbcn.telia.com [81.225.28.11])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by mail.lysator.liu.se (Postfix) with ESMTPSA id B019F45B4;
	Mon, 13 Jul 2026 13:57:02 +0200 (CEST)
Message-ID: <744e6181-ad21-4632-b293-5bf6c1e9fc2e@lysator.liu.se>
Date: Mon, 13 Jul 2026 13:57:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] dt-bindings: Drop incorrect usage of double '::'
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Peter Griffin <peter.griffin@linaro.org>,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>,
 Sam Protsenko <semen.protsenko@linaro.org>,
 Rob Clark <robin.clark@oss.qualcomm.com>, Dmitry Baryshkov
 <lumag@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>,
 Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Inki Dae <inki.dae@samsung.com>, Seung-Woo Kim <sw0312.kim@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Andi Shyti
 <andi.shyti@kernel.org>, Georgi Djakov <djakov@kernel.org>,
 Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>,
 Hans Verkuil <hverkuil@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Ulf Hansson <ulfh@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Linus Walleij <linusw@kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>, Sebastian Reichel <sre@kernel.org>,
 Javier Martinez Canillas <javier@dowhile0.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, Srinivas Kandagatla <srini@kernel.org>,
 Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Daniel Lezcano <daniel.lezcano@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>, Jonathan Marek <jonathan@marek.ca>,
 Taniya Das <quic_tdas@quicinc.com>, Robert Marko <robimarko@gmail.com>,
 Christian Marangi <ansuelsmth@gmail.com>,
 Stephan Gerhold <stephan@gerhold.net>,
 Adam Skladowski <a_skl39@protonmail.com>,
 Sireesh Kodali <sireeshkodali@protonmail.com>,
 Barnabas Czeman <barnabas.czeman@mainlining.org>,
 Imran Shaik <quic_imrashai@quicinc.com>,
 Sricharan Ramabadhran <quic_srichara@quicinc.com>,
 Anusha Rao <quic_anusha@quicinc.com>, Luo Jie <quic_luoj@quicinc.com>,
 Tomasz Figa <tomasz.figa@gmail.com>, Chanho Park
 <chanho61.park@samsung.com>, Sunyeal Hong <sunyeal.hong@samsung.com>,
 Shin Son <shin.son@samsung.com>,
 Krishna Manikandan <quic_mkrishn@quicinc.com>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>,
 Jaehoon Chung <jh80.chung@samsung.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>, Alina Yu
 <alina_yu@richtek.com>, Andy Gross <agross@kernel.org>,
 =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
 Wesley Cheng <quic_wcheng@quicinc.com>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org, dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, linux-i2c@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-leds@vger.kernel.org,
 linux-media@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-gpio@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-serial@vger.kernel.org,
 linux-sound@vger.kernel.org, linux-usb@vger.kernel.org
References: <20260622101606.485961-3-krzysztof.kozlowski@oss.qualcomm.com>
 <20260622101606.485961-4-krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US, sv-SE
From: Peter Rosin <peda@lysator.liu.se>
In-Reply-To: <20260622101606.485961-4-krzysztof.kozlowski@oss.qualcomm.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260713_045724_219668_5C2D9FFA 
X-CRM114-Status: GOOD (  18.36  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 2026-06-22 12:16, Krzysztof Kozlowski wrote:
> There is no use of double colon '::' in YAML. OTOH, the literal style
> block, e.g. using '|' treats all characters as content [1] therefore
> single use of ':' in descriptions is perfectly fine, whenever '|' is
> used.
> 
> Cleanup existing code, so the confusing style won't be re-used in new
> contributions.
> 
> Link: https://yaml.org/spec/1.2.2/#literal-style [1]
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> 
> ---
> 
> Intention for this patch is to go via Rob's tree.
> ---



> diff --git a/Documentation/devicetree/bindings/mux/mux-consumer.yaml b/Documentation/devicetree/bindings/mux/mux-consumer.yaml
> index 9e2d78a78e40..769243a2bf04 100644
> --- a/Documentation/devicetree/bindings/mux/mux-consumer.yaml
> +++ b/Documentation/devicetree/bindings/mux/mux-consumer.yaml
> @@ -13,8 +13,8 @@ description: |
>     Mux controller consumers should specify a list of mux controllers that they
>     want to use with a property containing a 'mux-ctrl-list':
>   
> -    mux-ctrl-list ::= <single-mux-ctrl> [mux-ctrl-list]
> -    single-mux-ctrl ::= <mux-ctrl-phandle> [mux-ctrl-specifier]
> +    mux-ctrl-list := <single-mux-ctrl> [mux-ctrl-list]
> +    single-mux-ctrl := <mux-ctrl-phandle> [mux-ctrl-specifier]
>       mux-ctrl-phandle : phandle to mux controller node
>       mux-ctrl-specifier : array of #mux-control-cells specifying the
>                            given mux controller (controller specific)
This change does not match the others? I do not think ::= is some kind
of malformed YAML that has crept into a literal block. Instead, I think
it is syntax inspired from BNF or something such. IIRC, it was once
adapted from
Documentation/devicetree/bindings/pwm/pwm.txt

Or, I am missing something...

Cheers,
Peter

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
