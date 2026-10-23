Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9A2606A31B
	for <linux-phy@archiver.kernel.org>; Fri, 23 Oct 2026 22:43:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=QWoZG5Xo;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=RYV8DVo1
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=dD399WVJ/WHvTU4FrzQtbAuPzC2kbQfP7kEY0zzSXKc=; b=QWoZG5XoQT145FJcuJCPvEiqF5
	rbYpMG7R6tEyKsuUUYYY8KhMVn6s4k4PrqVoDL1aH3GWUFt3S0qZddq9gU8Ln2OJj4n8b8LhI5zey
	rMIwMv8iDSn1qDHB5hp3zWJE1a3XT1/yZn3SJjZQC5bxU+kiQ29oyT9ZX4XhSCjIx6wokVvPVGti6
	3zpmXLYkn7Rexqu9Wio37JgR/1B7kAjQqavGDxn3c8u8RmU7rOLFEq05eIDOdDmR726TexlJbdMq5
	S/x3eCwUTWZbvfkOYNf7AfbYX4CZraW5sEg/QhxmTLbpuSFNtL3jtzdJbqVtYxtLRzFBrf45SWr/1
	uwxpdD8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKNyg-0000000H3xJ-3Zev;
	Fri, 23 Oct 2026 22:43:10 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKNyd-0000000H3w7-41Ex
	for linux-phy@lists.infradead.org;
	Fri, 23 Oct 2026 22:43:09 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-4a20a37703bso10118485e9.1
        for <linux-phy@lists.infradead.org>; Fri, 23 Oct 2026 15:43:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1792795386; x=1793400186; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=Oaa3IXbsmPMDDQXEJKkwgW9mOxnYdMqdGBs8GCpNSf0=;
        b=RYV8DVo1qy06QcHHAugo+KMBnZ9vCfyenPxTpgxlpvup6BoU8H6mPB5NNQ7bFIZluN
         b9CbTaLJc0K6BtO1DtBYHXlfrn8DtrePUu1XHHfN/c/GpPIWmF8cbUygr43WUpZjCwmw
         96aojUEescK21dDt6Vl8Oz5jJWBHYddD1UYuVVBQ/n91TYCT1/K43ssNJVWGMqUEAUHr
         godt3BvP5LPdSC8KvtNh0l7tXOAV2flOCNT1kxfcx9xdZYby53r0ILS0RGounJbP6/5A
         N+mtTgH734Vbtz2gN9bahoFoBUAcK45uCvv8fUvsenbNL/v7+U/61Q98QxfsTM6Oq2e0
         RCUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792795386; x=1793400186;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Oaa3IXbsmPMDDQXEJKkwgW9mOxnYdMqdGBs8GCpNSf0=;
        b=G4eweWwNKLcT4lVAnT3NnHZg3LVbwmbzsUzRJDnAV/oc2HsOOZCVjGaZlQ4/gcA2Gz
         2OYvDMNBlCRXFQzuvT1KxJVzcswC1U/tMlcrwE7CpS9/DASlJi7X2ILTpXyxh8nV7gJY
         Rmewm+XP78F/5gq8PqCTiZfi+ef2+TRTptv0pKp483GW/J/wnIfc16nqzorlY5zOUpXV
         EpBPEhwA4MNBzDlm3vxkuTr73zIGVx8zCYs9VT1wVMOCB7z8py7BTv/2MHj3Csumwiub
         SWxdHCTiX1JweHQ7WgcZbO5FRmxqRvF4b5OKYt/x0O3+X+vV7UYTo+Mc92d/Me9wgKtU
         H51A==
X-Forwarded-Encrypted: i=1; AKwUvBweO5a3eoisONRUyDWhp1wTrhcm+8V2HfRpgPNn2UivsGgk5dTA00evaNSgP6CeeXNJZstxnKEM5tM=@lists.infradead.org
X-Gm-Message-State: AFq9FYKRK4KQxTcQoH5ACpcgx0KGoXUK92C3PWtmmPSj6TgedaN9gbln
	rAe0Mp6ZcqrXZfVYNIhVhAlk+4vd2nR4m/1SdroTDPisZKfo8o+6vqFqgUdODBFt91g=
X-Gm-Gg: AYBFou1BS2/y4CrTWjXUUPAO2W29rFNB7Hvl8N6mINIOVzsGOt5JJGgqZVIxGnJhHKI
	Qz1pR8sS8gHd8qFo7VZCbXEGluMO1yKCnfVbh+BNREL8D+7nh4xk1WkMy89VlU3y8kJ+EJszHpB
	ak3jCcq67PZ0K7l+qaF8P9McTjz25lwE0UStbNiLccYJxh3Ow13wq1tXlzClCyCMayMHVsZuHgA
	QmsiUmTlMl7b01vLY1gpLNlymIu9U3FNfSPENikD4WnqTUZqvIUsxajntyePUEJaCi3tIq038z1
	Z0718fTZnmGsBwvl1gifCCdxnjHsgIL1JgZcbbAxml4+3EGjFQBijpZlWrKDxc4+VoXmjJweFiX
	dkzMA6whX44JOoGJkCPYSBeLem2AAspfcjpGZ9O6YWcTkVfiZKIZBksSDCf70UUj4nUjycnxFm1
	kgsvmkXhFVLCKVcJU/wkcqUn6hISp40OVYrICh9lgb/AXFsw8lbKwAtn3ggls9wWhnuEWUdp3Fw
	6OrcuKbevQcwvtbeiIs3Rh+Js3AihlCLEd7M17ZfhpRaCI0au8cM2c3K7U98ywSDvbe
X-Received: by 2002:a05:600c:4e42:b0:4a2:16c0:f5e with SMTP id 5b1f17b1804b1-4a35ac8b429mr4136005e9.10.1792795385869;
        Fri, 23 Oct 2026 15:43:05 -0700 (PDT)
Received: from [192.168.0.167] ([109.76.107.26])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e3ebd48e0sm787610f8f.38.2026.10.23.15.43.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Oct 2026 15:43:04 -0700 (PDT)
Message-ID: <3dd8d329-a25a-4afb-935c-311cb8ddf094@linaro.org>
Date: Fri, 23 Oct 2026 23:43:03 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/7] dt-bindings: phy: qcom,x1e80100-csi2-phy: Add Waipio
 compatible
To: Vladimir Zapolskiy <vz@kernel.org>, Bjorn Andersson
 <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 Abel Vesa <abelvesa@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>, linux-phy@lists.infradead.org,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
References: <20261023163057.775917-1-vz@kernel.org>
 <OlcKP8HHAIXkRzYX6vdMrXfEbLNpOVLfNZytB-qiRopju0IaQ_xxKo-mlzphnAO1Pdg-y8mu0lcw0UsQZC0ZuQ==@protonmail.internalid>
 <20261023163057.775917-2-vz@kernel.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <20261023163057.775917-2-vz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261023_154308_036009_CD4D19D6 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 23/10/2026 17:30, Vladimir Zapolskiy wrote:
> Qualcomm Waipio SoC has six CSIPHY IPs, which are compatible with Hamoa
> ones:
> 
>      qcom-mipi-csi2-phy acec000.phy: CSIPHY 3PH HW Version = 0x40010000
> 
> Hardware supports up to three different 0.9v level power supplies for
> CSIPHY0/1, CSIPHY2/3 and CSIPHY4/5, but there is just a single 1.2v
> power line VDD_A_CSI_1P2, which supplies all CSIPHY devices.
> 
> Signed-off-by: Vladimir Zapolskiy <vz@kernel.org>
> ---
>   .../devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml       | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
> index 1f1e2a4993b2..2a11ca7c7d11 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
> @@ -19,7 +19,9 @@ properties:
>       oneOf:
>         - const: qcom,x1e80100-csi2-phy
>         - items:
> -          - const: qcom,glymur-csi2-phy
> +          - enum:
> +              - qcom,glymur-csi2-phy
> +              - qcom,waipio-csi2-phy
>             - const: qcom,x1e80100-csi2-phy
> 
>     reg:
> --
> 2.53.0
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
