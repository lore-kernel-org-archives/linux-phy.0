Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 424AFC3ABC3
	for <linux-phy@archiver.kernel.org>; Mon, 12 May 2025 17:24:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cVBZ5Bb3grKYIQNGNTjLbr+BAmUDdTOfoH4jq/mFsh8=; b=xepVwp7jJy9bk2
	Cbl70YCRaH19MCnI5nU3ZpcBgk3gNk/694DCHR2kcGEOpPh3cA6jTXfd660DmIhMqC30rsXIzt1+9
	zckGU/gW8geHu0G4decNr0VWqTiLS4Bu+M1+5opDCmwVlx5ZDPXAbyDTmPWv/jIjz5rxb6hwzOhq+
	Mvy6mkneoasno79JJ64/bd/QftLY7CxiYBnBswjof6ilCEQobZCoMoYDXlhSEm+fPojM6JolLEDly
	wrxvD3BfQMcwZ/OTBACgq+nzzXU32anngoKHNl3BJwzsZiuePw2FzeLGrRh3dTLqQq7P5ZAdzCudX
	CiS/Po/KKW77YKscesXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uEWte-0000000ACYz-00Bo;
	Mon, 12 May 2025 17:24:58 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uEWQV-0000000A7zX-2DYS;
	Mon, 12 May 2025 16:54:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 57D7D5C0648;
	Mon, 12 May 2025 16:52:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD11EC4CEEE;
	Mon, 12 May 2025 16:54:49 +0000 (UTC)
Date: Mon, 12 May 2025 18:54:48 +0200
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Danila Tikhonov <danila@jiaxyga.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, "Rafael J . Wysocki" <rafael@kernel.org>, 
	Viresh Kumar <viresh.kumar@linaro.org>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
	Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>, 
	Rajendra Nayak <quic_rjendra@quicinc.com>, Jassi Brar <jassisinghbrar@gmail.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Amit Kucheria <amitk@kernel.org>, Thara Gopinath <thara.gopinath@gmail.com>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
	Lukasz Luba <lukasz.luba@arm.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Ulf Hansson <ulf.hansson@linaro.org>, Souradeep Chowdhury <quic_schowdhu@quicinc.com>, 
	Lee Jones <lee@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, 
	"David S . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Alex Elder <elder@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>, 
	Bart Van Assche <bvanassche@acm.org>, Andy Gross <agross@kernel.org>, 
	Srinivas Kandagatla <srini@kernel.org>, Herbert Xu <herbert@gondor.apana.org.au>, 
	Georgi Djakov <djakov@kernel.org>, Loic Poulain <loic.poulain@oss.qualcomm.com>, 
	Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Taniya Das <quic_tdas@quicinc.com>, Sibi Sankar <quic_sibis@quicinc.com>, 
	Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, 
	Joerg Roedel <joro@8bytes.org>, Imran Shaik <quic_imrashai@quicinc.com>, 
	Mathieu Poirier <mathieu.poirier@linaro.org>, Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Kees Cook <kees@kernel.org>, Tony Luck <tony.luck@intel.com>, 
	"Guilherme G . Piccoli" <gpiccoli@igalia.com>, David Wronek <david@mainlining.org>, 
	Jens Reidel <adrian@mainlining.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-watchdog@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-phy@lists.infradead.org, linux-mmc@vger.kernel.org, 
	netdev@vger.kernel.org, linux-scsi@vger.kernel.org, dmaengine@vger.kernel.org, 
	linux-crypto@vger.kernel.org, linux-i2c@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev, linux-remoteproc@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-hardening@vger.kernel.org, linux@mainlining.org, 
	~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH 21/33] dt-bindings: clock: qcom-rpmhcc: Add the SM7150
 compatible
Message-ID: <20250512-victorious-neon-crane-4c7edc@kuoka>
References: <20250422213137.80366-1-danila@jiaxyga.com>
 <20250422213137.80366-5-danila@jiaxyga.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250422213137.80366-5-danila@jiaxyga.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250512_095451_654902_5EC50E60 
X-CRM114-Status: GOOD (  13.43  )
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

On Wed, Apr 23, 2025 at 12:31:25AM GMT, Danila Tikhonov wrote:
> Update the documentation for clock rpmh driver on SM7150 SoCs.
> 
> Signed-off-by: Danila Tikhonov <danila@jiaxyga.com>
> ---
>  .../bindings/clock/qcom,rpmhcc.yaml           | 53 ++++++++++---------
>  1 file changed, 29 insertions(+), 24 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml b/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
> index dcb872b9cf3e..311aae5c9828 100644
> --- a/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
> +++ b/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
> @@ -16,30 +16,35 @@ description: |
>  
>  properties:
>    compatible:
> -    enum:
> -      - qcom,qcs615-rpmh-clk
> -      - qcom,qdu1000-rpmh-clk
> -      - qcom,sa8775p-rpmh-clk
> -      - qcom,sar2130p-rpmh-clk
> -      - qcom,sc7180-rpmh-clk
> -      - qcom,sc7280-rpmh-clk
> -      - qcom,sc8180x-rpmh-clk
> -      - qcom,sc8280xp-rpmh-clk
> -      - qcom,sdm670-rpmh-clk
> -      - qcom,sdm845-rpmh-clk
> -      - qcom,sdx55-rpmh-clk
> -      - qcom,sdx65-rpmh-clk
> -      - qcom,sdx75-rpmh-clk
> -      - qcom,sm4450-rpmh-clk
> -      - qcom,sm6350-rpmh-clk
> -      - qcom,sm8150-rpmh-clk
> -      - qcom,sm8250-rpmh-clk
> -      - qcom,sm8350-rpmh-clk
> -      - qcom,sm8450-rpmh-clk
> -      - qcom,sm8550-rpmh-clk
> -      - qcom,sm8650-rpmh-clk
> -      - qcom,sm8750-rpmh-clk
> -      - qcom,x1e80100-rpmh-clk
> +    oneOf:
> +      - enum:
> +        - qcom,qcs615-rpmh-clk

Wrong indentation, needs testing.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
