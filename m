Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD85BC369D5
	for <linux-phy@archiver.kernel.org>; Mon, 28 Apr 2025 16:23:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SjiEUTkutgPmVB29tflp4Iu2Kvxtm4d/42R9f55ka8E=; b=fhIJhKjSVtBcrS
	Ryoie06c8sVCF0hv3+zaYWLZkI8WP04pPRvXbrLEo61MHU+z2ZUNG07fYNKSigY11YaBN/IK1CAyM
	wATWwx6ORVYkSefUvUeyo/i5bGTY9Tx5o34XYD6O97fC2PXRRmypZhYW0edrM+7GR+8G/q57Aj4Ip
	ujMAju0/9E+veS6Q7UVbzAstB8Ek9Ls7E1IIkhuABjLDTG86Uv6Z4ltA321e2WFiBTDnyUUM38tB5
	zQhyM1TaXnK54Arx/fKI+rk8M9gzwjPg7rEqnOBLXAXlXqjhVWj6sKVoUEhq+8aJY3azn7AVAcmnD
	2kkBHV4v2+fsL5F3O9yQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9RGj-00000006ulb-1pTW;
	Mon, 28 Apr 2025 16:23:45 +0000
Received: from mail-yw1-x1135.google.com ([2607:f8b0:4864:20::1135])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9RF9-00000006uFo-1eaa
	for linux-phy@lists.infradead.org;
	Mon, 28 Apr 2025 16:22:08 +0000
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-70427fb838cso40942827b3.2
        for <linux-phy@lists.infradead.org>; Mon, 28 Apr 2025 09:22:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745857326; x=1746462126; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=kjtfgNYAyQgaIv+6+gwAi/DXzlNfZQv9vmE2wR+LnUU=;
        b=eZn7Apb91OtCR1ks13LF5AUOWJeUsi9btWrxcyMCNtcBHZNrNlaT1Vb+waFr6rD1/h
         YDueerNZGrAEWxXKjlHOmJE73C79ReFF2ZBJHUGGDtK4+NjlqEHUX/J04tfgTUxLpW/R
         Gvf8BflCLz7zzsO4IEox9NZr9hK9dEIMXrZ8Sg4WuDaY+ult7KU6iFaK0i6v/T8n1X8+
         u/ih90ajG91XLY3e6XHxl/gzoaELt/HnJK5mNHchLXUeZsayDKjRmk6GSvGvzW8/PHyp
         tzc2djnXX9Qgl524yeqU44jwrlwbx9jGW9r837OWqgyCnmy1Y4rFgSCyHlL7dswbMwna
         97Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745857326; x=1746462126;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kjtfgNYAyQgaIv+6+gwAi/DXzlNfZQv9vmE2wR+LnUU=;
        b=C1gfDmJTeBTrsD0uOEVQagXXFxZmuruMIoH0usOIOBjthJqMDwv0+yXtPdkXfvzOO/
         rKhT0iOLBtIFTId4spm5JDC7+quLydsPZnKFNiXAaiHnal0+cMbpiXSu2WAQ84w+45nZ
         iVyc4+m9X72Fwi8kXErJGVG24y8AY9uSSqj/PiGQP2W662deKESKBhg+RkQc8KTyVg/G
         9pXR2SbpPVvFzvv1BCdaBcZbzZZh931GJ8PpLdXNuFjPDM2KgZ5KA+eCuG3meAnesrK0
         Qxb4xokIiHCwbwnweQ5KymcEdik4VZudbBUy6aEwAOs527H+DPITJ07ATtnXjufAaflN
         9eTA==
X-Forwarded-Encrypted: i=1; AJvYcCVU7Swecyyubax5Xs6+10MfC1MgKb3P+zR8ltdKjGcb3pFLwQmflzkpUSAy+A95DJZpde5yl2cHtJc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzcy7a27vhqNN9ZLkTz0kblXFCCOuokRFSHPQrshHJv0vL0u/rO
	9Gj7gQSb0zKaNBZZvB51PYhVV6pQmFGjjS15i+tsat+T2aRWpifDXN+oKtAgWamQUzVj+rOVFys
	8x7uvC/0MQqNnhPmiXC/HXTjTu6Kro/BM5rL7mQ==
X-Gm-Gg: ASbGncvaprw1WbjJJ7pkU4nuwHiqgO4AvW3BSsO/csrkLcBBklrHxF5kidietqUs3bd
	SAMTFjKYLBHi+Djdr2Uyd4OQXjJuWNz60O+lVys8N2ru0KCyFHSj32um7vcqZ2MuQgAmq3HJ7wK
	DqpwP1jf+ptb1WVsryEFRflbJvb2CcfzIMng==
X-Google-Smtp-Source: AGHT+IHJ8fzCsar22nWRrLuqubA/nW5PD6Isexezh6U72gKuIl5N70HEwT9JTNXKPWmpqHrpu7bpAGC2DT3kmga/dpo=
X-Received: by 2002:a05:690c:67c6:b0:708:3532:ec94 with SMTP id
 00721157ae682-70853f752e9mr174343137b3.0.1745857326167; Mon, 28 Apr 2025
 09:22:06 -0700 (PDT)
MIME-Version: 1.0
References: <20250422-sm7150-upstream-v1-0-bf9a9081631d@jiaxyga.com> <20250422-sm7150-upstream-v1-11-bf9a9081631d@jiaxyga.com>
In-Reply-To: <20250422-sm7150-upstream-v1-11-bf9a9081631d@jiaxyga.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 28 Apr 2025 18:21:30 +0200
X-Gm-Features: ATxdqUFknbhFgOKvNVOI3-s43pP4YH55pKLNf_KwLrUaeaEizalUr2MLUM3sfs8
Message-ID: <CAPDyKFqPpqDj+DKT=nJrTS8iDUx_8scnLreUQ99byDHEdBeiww@mail.gmail.com>
Subject: Re: [PATCH 11/33] dt-bindings: mmc: sdhci-msm: Add the SM7150 compatible
To: Danila Tikhonov <danila@jiaxyga.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
	Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>, 
	Rajendra Nayak <quic_rjendra@quicinc.com>, Jassi Brar <jassisinghbrar@gmail.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Amit Kucheria <amitk@kernel.org>, Thara Gopinath <thara.gopinath@gmail.com>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
	Lukasz Luba <lukasz.luba@arm.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Souradeep Chowdhury <quic_schowdhu@quicinc.com>, Lee Jones <lee@kernel.org>, 
	Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Alex Elder <elder@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>, Andy Gross <agross@kernel.org>, 
	Srinivas Kandagatla <srini@kernel.org>, Herbert Xu <herbert@gondor.apana.org.au>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Georgi Djakov <djakov@kernel.org>, 
	Loic Poulain <loic.poulain@oss.qualcomm.com>, Robert Foss <rfoss@kernel.org>, 
	Andi Shyti <andi.shyti@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, 
	Sibi Sankar <quic_sibis@quicinc.com>, Will Deacon <will@kernel.org>, 
	Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, 
	Imran Shaik <quic_imrashai@quicinc.com>, Mathieu Poirier <mathieu.poirier@linaro.org>, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Kees Cook <kees@kernel.org>, 
	Tony Luck <tony.luck@intel.com>, "Guilherme G. Piccoli" <gpiccoli@igalia.com>, 
	David Wronek <david@mainlining.org>, Jens Reidel <adrian@mainlining.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-watchdog@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-mmc@vger.kernel.org, netdev@vger.kernel.org, linux-scsi@vger.kernel.org, 
	dmaengine@vger.kernel.org, linux-crypto@vger.kernel.org, 
	linux-i2c@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev, 
	linux-remoteproc@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-hardening@vger.kernel.org, linux@mainlining.org, 
	~postmarketos/upstreaming@lists.sr.ht
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250428_092207_432089_B6CDFAC6 
X-CRM114-Status: GOOD (  14.65  )
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

On Tue, 22 Apr 2025 at 22:24, Danila Tikhonov <danila@jiaxyga.com> wrote:
>
> Add compatible for the SDHCI block found in SM7150.
>
> Signed-off-by: Danila Tikhonov <danila@jiaxyga.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/sdhci-msm.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> index eed9063e9bb352b5c8dac10ae2d289c5ca17f81b..2b2cbce2458b70b96b98c042109b10ead26e2291 100644
> --- a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> +++ b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> @@ -60,6 +60,7 @@ properties:
>                - qcom,sm6125-sdhci
>                - qcom,sm6350-sdhci
>                - qcom,sm6375-sdhci
> +              - qcom,sm7150-sdhci
>                - qcom,sm8150-sdhci
>                - qcom,sm8250-sdhci
>                - qcom,sm8350-sdhci
>
> --
> 2.49.0
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
