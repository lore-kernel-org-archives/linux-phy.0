Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DE49EDF166
	for <linux-phy@archiver.kernel.org>; Fri, 13 Feb 2026 14:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FSz0PsvR0dJ/nxAJ7KyovVnHojnprlzckR7bfzvNVjE=; b=KYv20kKFNiJ2pU
	714kY2U5jbhNg4G8ob8yp7SQ75xMxwIFoL7se7v7sTxfqwOisknHY4JbC7qKpri54bEzgzylG6Aya
	iiFVFfLdtrTan990WMxki43H6ccZCTnE0pb4jJh+mPzcG5kxFEiPQ8u2/34EBIOx50ptaDQOybzmf
	9l3F5nI1+JOLuCAQol3zw7MTdHMu0Z8ng8We/27iGhRWgVXL5x17zbkDwojepaJqbyRHLd+GVtnsj
	EXsM05NlSPWvzILbzppWofoR+i2YG6WvBFFATVHyczBiLPB7stfsR0LGntJbKbqyDRJkTZqOgM5J8
	m1aS+92bLrN/rnO2EHBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqtqs-00000003WNs-3jB5;
	Fri, 13 Feb 2026 14:08:58 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqtqq-00000003WN2-2Ozf
	for linux-phy@lists.infradead.org;
	Fri, 13 Feb 2026 14:08:57 +0000
Received: by mail-ed1-x543.google.com with SMTP id 4fb4d7f45d1cf-65939428896so1402541a12.1
        for <linux-phy@lists.infradead.org>; Fri, 13 Feb 2026 06:08:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1770991734; x=1771596534; darn=lists.infradead.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MDWCaCmjcMdTeU70IpQ6l5t9XJKDcXByz0w6wvm7lMw=;
        b=z9ugaihKY7CTUQRnZQh/b0DGYLRCtH3cKIWPm0MgPRvL4hPEHCcJ61f+dJTvf1DLOz
         Udym1mdQuxnu5eufdnbcHWl/8CA0ZJv3Beq+Sb83p5DEjxdZs1bN+l0hQTid1haS65VO
         rLqRFVEt5fZAtQ6p0vbT7XrVbtbrdNFRy2RYeirR2qVoqrS1kZaYZeM21m20A3LPdEjR
         WAebJTgaj55zCW03pQLq8noRO6ZIOJFkRmcwUJ5eN5JBP1vGXAnxouhU1MornFyF0UEx
         GCpIE54U7LV9Assgs8pRfH3UiLZKCQXc1vdZrBdW2iaq/PPFl4j1rTE2A4VVS1eLl+FM
         BrZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770991734; x=1771596534;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MDWCaCmjcMdTeU70IpQ6l5t9XJKDcXByz0w6wvm7lMw=;
        b=aTrInioa92d3lFTj7RA3H+EiFl2oLw9rBqDf4xYBrpMhoFSiqcUHBtUyzmnS3V/b0V
         LwD1vbKFfY7dabJ8JFIU6EurBmdjr0V65nkvp/lb7NAiNGzwIZKjiyGHagzQYCQzi2Gj
         Ft4/P0CWRxs6GMVOAC9+ffW/JKa1M6kzt/ZySdwyvIb2YYpVS5nuK0NBxbXOcpU9IkqJ
         eCvVYhT7rIE4/tS+CSEqSw7YeS18jF8R++2AYp1VC3Tgpym6s3hXG3wTPuhCGRAfYSr/
         6xU/dMsDsBz5fjvFi78cyVKlZZsVXqvo6GTktHNWLRlkfHp4QXJHaiaH5t4V0yh0mroL
         1vCA==
X-Forwarded-Encrypted: i=1; AJvYcCX8QK5XJjnvc9v21HS9PIXzXZxd2Q0xZU0iJDeECSocgwtlcPzdHMIQv8ciUBlVV6B0Om2L5X2E3XE=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw7S+2qD2okItvRo+D4aLCbMeYXuCQRNVxxnR2oz6BAiQ+2XPs4
	MOkJUlZAotD4SaVX2QEhqDvjCEwmGWMT0U8DXnrEio6KzXvu1opBrU+UUYtQBLp6U0k=
X-Gm-Gg: AZuq6aJtE+94ECxkb2tpMjBi8oJDZAnjNZUjJoJ8fDCTLxcnwUvWbheX5ZXAUUFc56t
	Ar/nx11jHaLAW900Pvlrmy4zxSPIFdoGgvhW09w2S+hm5RYAEa60EyhYpRcoLOgGt/7DoEwmFH5
	QCDD+grxReYsYrD9+BzRnZTls//0PVs8ilmGl4UQvgNUr77a7Jk45HvD3Q7hcg86tTCmnjYMZe5
	RrMpLcHdS3v6PuiHk216z0zHTBvsJ7z7PeqEakmftYvtwg2xrkd2SRRqIcixiIfBYOflkO+kshg
	SaDlrhhc92U20Evnv3Wc1UQKJ2CFA+dnKACjxJxerky+kk8AQfLNCZH+jqm9Du2t/GqXulQrt+j
	uhcjfzGqjvyGq5s8CRw31tUqL3lfAUxdRpcWoOCG8n4Fi2AHfTFtteL44tnNLNA3bT6GZ+F++Gd
	3tvUZZyNHGZ0RbbNAoCtcagFUyytpUFNd9PzbT3azN3YiDAYujQqtJSU8pokra0NJGeGHi
X-Received: by 2002:a17:907:961a:b0:b6d:67b0:ca0b with SMTP id a640c23a62f3a-b8fb46764admr98204666b.61.1770991733815;
        Fri, 13 Feb 2026 06:08:53 -0800 (PST)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8f6e9cd6d4sm263856066b.23.2026.02.13.06.08.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Feb 2026 06:08:52 -0800 (PST)
Mime-Version: 1.0
Date: Fri, 13 Feb 2026 15:08:51 +0100
Message-Id: <DGDW69W84LJ1.2GHM2WU31VANR@fairphone.com>
Cc: <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <linux-crypto@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-scsi@vger.kernel.org>, <linux-phy@lists.infradead.org>, "Krzysztof
 Kozlowski" <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v2 2/6] scsi: ufs: qcom,sc7180-ufshc: dt-bindings:
 Document the Milos UFS Controller
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Luca Weiss" <luca.weiss@fairphone.com>, "Martin K. Petersen"
 <martin.petersen@oracle.com>, "Herbert Xu" <herbert@gondor.apana.org.au>,
 "David S. Miller" <davem@davemloft.net>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>, "Bjorn Andersson" <andersson@kernel.org>, "Alim
 Akhtar" <alim.akhtar@samsung.com>, "Avri Altman" <avri.altman@wdc.com>,
 "Bart Van Assche" <bvanassche@acm.org>, "Vinod Koul" <vkoul@kernel.org>,
 "Neil Armstrong" <neil.armstrong@linaro.org>, "Konrad Dybcio"
 <konradybcio@kernel.org>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20260112-milos-ufs-v2-0-d3ce4f61f030@fairphone.com>
 <20260112-milos-ufs-v2-2-d3ce4f61f030@fairphone.com>
In-Reply-To: <20260112-milos-ufs-v2-2-d3ce4f61f030@fairphone.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260213_060856_648605_177C625F 
X-CRM114-Status: GOOD (  12.34  )
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

Hi Martin,

On Mon Jan 12, 2026 at 2:53 PM CET, Luca Weiss wrote:
> Document the UFS Controller on the Milos SoC.
>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>

I've added you to this email now since you seem to pick up most patches
for these files. Could you take this one please to unblock Milos UFS
dts?

And maybe you could add yourself to MAINTAINERS so b4 picks up your
email for patches to these files?

Regards
Luca

> ---
>  Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml b/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
> index d94ef4e6b85a..c85f126e52a0 100644
> --- a/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
> +++ b/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
> @@ -15,6 +15,7 @@ select:
>      compatible:
>        contains:
>          enum:
> +          - qcom,milos-ufshc
>            - qcom,msm8998-ufshc
>            - qcom,qcs8300-ufshc
>            - qcom,sa8775p-ufshc
> @@ -33,6 +34,7 @@ properties:
>    compatible:
>      items:
>        - enum:
> +          - qcom,milos-ufshc
>            - qcom,msm8998-ufshc
>            - qcom,qcs8300-ufshc
>            - qcom,sa8775p-ufshc


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
