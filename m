Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 817B1EB64DD
	for <linux-phy@archiver.kernel.org>; Mon, 14 Aug 2023 10:01:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w5sSakLd7I0kDQJt/Kkx+9YLoUbmJaMXd2N6MBJW3dU=; b=w/YqXrZGD2/eDF
	Yso1mn6rbdfxQPNS+Kcgp7k71vTOyIWQm9wgo0DsCmggQnYyJ1cWHKjNukB8ppEnJN/fnoyS73flB
	1yq+ha79raQSVnzc0dNlxDAqkocC/zTXr2S31R4sWR7DDV04Fy9ab9ccyyzT+PEz9fdpBrPWvAEiO
	MMIUa66UUM2oRV9FYW2qI0+Oei9RYkx3a6KlAw38p1HkLJKBOj6wM18cIhgwcPEchc+nNFYUDdrmN
	I+O3RI7/nQYiqscwL0tqhceg2NI/0OjUuCKo9yNKb/zTBqcH0sOX8XHuMONlGpvf2zKpQ49HzQEH4
	tjlJL+CKZDepOO8EPkaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qVUNs-00GfIC-0Z;
	Mon, 14 Aug 2023 10:01:12 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qVUNn-00GfHQ-1J
	for linux-phy@lists.infradead.org;
	Mon, 14 Aug 2023 10:01:09 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-99cdb0fd093so567912266b.1
        for <linux-phy@lists.infradead.org>; Mon, 14 Aug 2023 03:01:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692007264; x=1692612064;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8nL+EHUA/uKFrlAinGpjs7G30G5W0XktNCbRRSoAi6U=;
        b=ngVd/4H407ieSEPUYCQ7XfVknlGj4f3pBa05+BUcO2bHQ4TbZj2sdqdzndMBcUzokw
         6eMEszRrZXxZ/HfThRXEtMnRQS/xCu6Ea1NHHc4xnWMWfuTzhR2tPvd2rph2t/1e0XIf
         kNvo/Qxb4rnrtNWeMUATU1u00pKB9li41HAiTnbNdXMmL/gC0AJRE6aiMu8jMo7tSYKy
         tWmUYjJQ1qm3nDwPr8pirz9ITp2RJowWvzY7mGBe6TkEX/RugFUO+vDgeVetKn5ui9vK
         T4HvqbxGTi/QZMNSEZ1p75bXQtE2rhPfQ3rnawqwZNLSko9jRzMKXfcLQU4lu+wuEWkK
         mEfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692007264; x=1692612064;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8nL+EHUA/uKFrlAinGpjs7G30G5W0XktNCbRRSoAi6U=;
        b=eLxHT7Aqmp2vHcTcJaj58KaQTyXFeM3wknBtMGc1sakP+j1v2GVwOUP8bwvMl2Zqbq
         vpdzZ44H+iOdXUESX6zCfCH02sve7TCGsELro7sIxDUxtt2egDR6Z0ojItGAStS3hQeL
         9cvrKqCofmE5ZV88PWWzatIUTVtkA/cbs8M7cpDUc6eZDZTXb0e+79sPdhvSWg8EfQ0t
         Ff/HDNniGODSgjlA2Q4dpU6+NZv3X2iQIq8tMLjXCUuXJiJ47tE9XuNMcwjPaYrYuvux
         k1JTmh+HxxN/X8VThkAfm0eY6salYh0TEf7mLo8mcngxJnbNm55BkZFy53G4imlSvcyP
         lhrA==
X-Gm-Message-State: AOJu0YyArzaJPrdXywwCRdR0yG/C99JGzDsg53KqXpWvhVkHrXqopDeh
	UUKrP4703gJfcszkhije/UGAoQ==
X-Google-Smtp-Source: AGHT+IFORYoZVSjRXNji1ZPxubJnFI0NMgRDXWPH/Ay7EOCZUrczo1OdyxwohRnb4M0g3IdtdDrBNQ==
X-Received: by 2002:a17:906:291:b0:99b:efd3:3dcc with SMTP id 17-20020a170906029100b0099befd33dccmr7449321ejf.62.1692007264018;
        Mon, 14 Aug 2023 03:01:04 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id gs18-20020a170906f19200b00992e14af9b9sm5455340ejb.134.2023.08.14.03.01.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Aug 2023 03:01:03 -0700 (PDT)
Message-ID: <19616ba1-fcf7-b791-aa19-4128eaebee5b@linaro.org>
Date: Mon, 14 Aug 2023 12:01:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v7 4/5] arm64: dts: qcom: ipq5332: Enable USB
Content-Language: en-US
To: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, catalin.marinas@arm.com, will@kernel.org,
 p.zabel@pengutronix.de, arnd@arndb.de, geert+renesas@glider.be,
 nfraprado@collabora.com, rafal@milecki.pl, peng.fan@nxp.com,
 quic_srichara@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <cover.1691660905.git.quic_varada@quicinc.com>
 <02317e86c1c8838e66a852b3576988719df8028e.1691660905.git.quic_varada@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <02317e86c1c8838e66a852b3576988719df8028e.1691660905.git.quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230814_030107_442522_8CB5DD4A 
X-CRM114-Status: GOOD (  12.48  )
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

On 10/08/2023 11:56, Varadarajan Narayanan wrote:
> Enable USB2 in host mode.
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v6:
> 	Add vdd-supply and corresponding regulator
> v1:
> 	Enable usb-phy node
> ---
>  arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts | 23 +++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts b/arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts
> index f96b0c8..b4099a2f 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts
> +++ b/arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts
> @@ -12,6 +12,15 @@
>  / {
>  	model = "Qualcomm Technologies, Inc. IPQ5332 MI01.6";
>  	compatible = "qcom,ipq5332-ap-mi01.6", "qcom,ipq5332";
> +
> +	regulator_fixed_5p0: s0500 {

Generic node names, so at least generic regulator prefix or suffix.

> +		compatible = "regulator-fixed";
> +		regulator-min-microvolt = <500000>;
> +		regulator-max-microvolt = <500000>;
> +		regulator-boot-on;
> +		regulator-always-on;
> +		regulator-name = "fixed_5p0";
> +	};


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
