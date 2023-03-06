Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 653D7C61DA4
	for <linux-phy@archiver.kernel.org>; Mon,  6 Mar 2023 17:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:Subject:From:References:Cc:To:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rxxZ1dsLXjlByBIUE9qqy9D1EtZ/MMUJsDYEslmfaHI=; b=IbbJUmTe4LbIBa
	scqu1g5kdS93rW7v05YJXbu/epF5Sfd/V5tbRXAIVqLMu6zkxo0aY0nyTrd4N9gOxgEbiq0jt9YS0
	OOT74GnqonAB5210xFwGVIE+c3J4yGHbSTEq/xueDC4qRPsriI/ys1OJTTfTBO7r1Kn5sG53CTOBB
	JgVAnFzJlezX6SU7ZZeUVDACejUOCiTKzPVB9ozXq8tg6JjnFUYUaHDiASH67ED8q7HMjuR/vcr8s
	yuyQpsOBNqcZCQczf0+sqpgMjjx+QmT4O1IL5D77JLDrRqb9IRE7ZiNRMI8yPBeLxkbdylyYi9/Bv
	ll/6svrjWbBjmjXbTqEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZEDF-00E2I2-Qx; Mon, 06 Mar 2023 17:01:25 +0000
Received: from vmi888983.contaboserver.net ([149.102.157.145] helo=amity.mint.lgbt)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZEDC-00E2H5-W4
	for linux-phy@lists.infradead.org; Mon, 06 Mar 2023 17:01:24 +0000
Received: from amity.mint.lgbt (mx.mint.lgbt [127.0.0.1])
	by amity.mint.lgbt (Postfix) with ESMTP id 4PVlGT0QTlz1S5K2
	for <linux-phy@lists.infradead.org>; Mon,  6 Mar 2023 12:01:20 -0500 (EST)
Authentication-Results: amity.mint.lgbt (amavisd-new);
	dkim=pass (2048-bit key) reason="pass (just generated, assumed good)"
	header.d=mint.lgbt
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mint.lgbt; h=
	content-transfer-encoding:content-type:in-reply-to:subject:from
	:references:to:content-language:user-agent:mime-version:date
	:message-id; s=dkim; t=1678122079; x=1678986080; bh=bI8Q9ZobF/m/
	5zL0TsX0t3zOLtFDXF74jdm5TmV+sTA=; b=lpxCcPVNSQsn8dJBRjkyDQ1UdPaf
	VaX/X+bTeGV7/cqy814VOAUxrhgnRQETMJzMA/TFoGeaEyZoEsadDeO1vQepfriP
	1aYShJZZtxowD72iVqkjCNYSGG08KsvkVb0Ci4uWXRrlc75dtwNSOzGUNXBRuPJM
	u/gtxHoOlLIaGOWoebhoNLbFboZZRdvRAHlK1vgQS/EbemYjvp6dkJJ+Rajhli51
	zZz2c9XuEhcVYpJ7GAbQhQG2EBAHsid1iQ6IndRf1KaQK7keEIHd5P1UxOZcMdWl
	24hzwbv09h9kkCTEnd1MfpAG6fMvgqoXJ2/ud9Ak1Pq5TzygC6J2NRUaiw==
X-Virus-Scanned: amavisd-new at amity.mint.lgbt
Received: from amity.mint.lgbt ([127.0.0.1])
	by amity.mint.lgbt (amity.mint.lgbt [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id 34goTn03cWgT for <linux-phy@lists.infradead.org>;
	Mon,  6 Mar 2023 12:01:19 -0500 (EST)
Received: from [192.168.1.90] (unknown [186.105.8.42])
	by amity.mint.lgbt (Postfix) with ESMTPSA id 4PVlGC5d4jz1S5Fp;
	Mon,  6 Mar 2023 12:01:07 -0500 (EST)
Message-ID: <4670ddae-6b01-1e5c-b0ed-1f2f498a4f66@mint.lgbt>
Date: Mon, 6 Mar 2023 14:01:04 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, alim.akhtar@samsung.com, avri.altman@wdc.com,
 bvanassche@acm.org, keescook@chromium.org, tony.luck@intel.com,
 gpiccoli@igalia.com
Cc: ~postmarketos/upstreaming@lists.sr.ht, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org,
 linux-hardening@vger.kernel.org, phone-devel@vger.kernel.org,
 martin.botka@somainline.org, marijn.suijten@somainline.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20230306165246.14782-1-they@mint.lgbt>
 <20230306165246.14782-2-they@mint.lgbt>
From: Lux Aliaga <they@mint.lgbt>
Subject: Re: [PATCH v7 1/6] dt-bindings: ufs: qcom: Add SM6125 compatible
 string
In-Reply-To: <20230306165246.14782-2-they@mint.lgbt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230306_090123_189370_CBE312D8 
X-CRM114-Status: GOOD (  12.07  )
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


On 06/03/2023 13:52, Lux Aliaga wrote:
> Document the compatible for UFS found on the SM6125.
>
> Signed-off-by: Lux Aliaga <they@mint.lgbt>
> Reviewed-by: Martin Botka <martin.botka@somainline.org>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>   Documentation/devicetree/bindings/ufs/qcom,ufs.yaml | 2 ++
>   1 file changed, 2 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
> index b517d76215e3..42422f3471b3 100644
> --- a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
> +++ b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
> @@ -29,6 +29,7 @@ properties:
>             - qcom,sc8280xp-ufshc
>             - qcom,sdm845-ufshc
>             - qcom,sm6115-ufshc
> +          - qcom,sm6125-ufshc
>             - qcom,sm6350-ufshc
>             - qcom,sm8150-ufshc
>             - qcom,sm8250-ufshc
> @@ -185,6 +186,7 @@ allOf:
>             contains:
>               enum:
>                 - qcom,sm6115-ufshc
> +              - qcom,sm6125-ufshc
>       then:
>         properties:
>           clocks:
I have to apologize. I worked on a changelog for this patchset but I 
skipped the subject header, therefore it didn't send, and as I realized 
this I interrupted the process, leaving the patchset incomplete. I'll 
retry sending it, this time correctly.

-- 
Lux Aliaga
https://nixgoat.me/


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
