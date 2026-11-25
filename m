Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE6CA606A31E
	for <linux-phy@archiver.kernel.org>; Wed, 25 Nov 2026 14:20:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=0KJTQCVR;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=d5KJG4RZ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=XeTQbRarFaUrE00Fre9CIfyClFbUQ5NjXdQx3qA4KlU=; b=0KJTQCVR9q5t5R5q1Pn72R4n1c
	rGqa3PaD+eCREF/IggaCEDSiOaN4Xkh43qD8egyJYAu3DL9fRHDLoNe2eX5+kAaLK9bVQs3k9ry3W
	m6cHNQvrbCflvAfQ462F0TLxxqUcNYzEDFNtq3hM6C0K2uEcUr64MI1NgiWBaU+mdECgYwsYDHLBE
	vLYHs3Meju2n8pqvkdsZw5MK4g/S1tZplBAmh9tPFxBN/wW+w64Sz8c1w3IYuh2o2ffG3Ity+xYfW
	i5NO3T5ESa5gxE7zh+XM4MQfTcrLXFoQlai/loKgEpgCSX4jqvnsXvnw5dvNIa7+MJ0+xu2z3fFwq
	mq3dHGvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWDrm-0000000A8Mi-1tmV;
	Wed, 25 Nov 2026 14:20:58 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWDrj-0000000A8LZ-3Bse
	for linux-phy@lists.infradead.org;
	Wed, 25 Nov 2026 14:20:56 +0000
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-3adfe7a31dfso4372031fa.3
        for <linux-phy@lists.infradead.org>; Wed, 25 Nov 2026 06:20:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1795616453; x=1796221253; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=w6I+ryhKUHBU8/ypdPULznpg2ekJDRBrE8QNL0EUam4=;
        b=d5KJG4RZG80WcQgH5bwlPJi6QV6yk64l2uohn3K5hyftwSVwGCZqrUjc0hVWBxN2BM
         ayjpU3KdvT6wsR4ck0l4pMtQbNr6CjO+oRqJUX3rCqz3thn2ds1DvIiU5MLcD+hXnFMw
         TL0sVFntNoJwWSI4xuS6gcOgQRw3GvVhvWfryUi02sE+sIOT4GffrBdiwDf9NbO158J8
         u5MiTx9f7zOdhnFAmAoevlMnwSrlrnE/M0Q/wcEIaJTkVDTNMRxaOV/LqYu/R/PRXzmK
         fXkHVV7N0btEl+fDpLUpsEG7FYqxEcaUXBe0PmkP1Nv7OxzRMSxG4KpyjwbI6gAjhCNj
         dOkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795616453; x=1796221253;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=w6I+ryhKUHBU8/ypdPULznpg2ekJDRBrE8QNL0EUam4=;
        b=eUfKdmaa/YphITLMsHm2sQjlHGtdhzqpytNduAHrDgIX++bqWcuYQwdUzTRk55e9bU
         N+xWLDuUB6rVf1ljVi+sUOhNb6FO89musc+l6yIzgAQlXAjyLw95wBb+ewga4XK/6y2L
         rxGEs7q5EG/qCbmARD31r8u2CbAc1NltRk6hQpLnLwvX/LTU1p26vvBgRScMMUL2Y5Bx
         wkoQ2dkHTyFVT4IqeduNFjVCDyi4yiS4yT9xIqC/aEfwhSuy0EEPvbUMNLigaM0l6adN
         gqhsldb48mYdpFDfyQWZU/AKrWMRe2a2S4sqjPzI6HoiXT5uCg0EuhHMnEKNc3kIvHB9
         qR+g==
X-Forwarded-Encrypted: i=1; AL+hErEyQI05Upq+bABdLcpiDxiNtfSt/RmPgoPtRnqY9+bxlcp0FVKpYTH4D8ZEcgQrIcOYaokU85XkcpU=@lists.infradead.org
X-Gm-Message-State: APuU4Z/Gny8jhbTLghXtiOcRdIb9U9zohs9PAetzj1P1A+BXAy4GSAWM
	Vw6nPTTiXygmNeS/FKMks8d7CcaWln8cqsP+KvRkoXYFRJC71lxHMXQKuvcON8bTIeQ=
X-Gm-Gg: AZFdTZcAwIVBhhW30RJoY608sQzDSIJQeyy9DPKGmDYJu/Tm0H3Q+2zVqkyMS5JWe5j
	92jz5qaoetAZCQR7nPTWjpCmHIjucWYzEY0n/EPfGjW5tDRV/IfjvmwdKHJOqbx3fTVgg/emWKO
	SOaO1afCR7wBjAP9lnY5F1TL67Y9/PN1EZkXmceLHIrXTJdBAMmfnTplibsyfGTUzTTa4HWpfSY
	qqpb1d7EnqEYP05uj9Op/zh1njv2JWld4LGr1INMFIvLjGHDTL0Bc3hOhy6MXR+CrleIkLrTmQG
	O5rVxOWw0gosKXGz8MkjbOv745ERrPoYztFAaKKgHfaEvB7+wfBBBHGRk+IC/cFJdgDeCpeOs07
	NnQIViS3Vif8ens8L/aVyClJ6IKd/F4Cu8YvIZyUoVL7VVIirL43WpNCVHwdcnVUb8WrLj6AWuy
	hyWC3I93yVlJroKH/EJicJCAmOGkqUwXkugJUD7r+PZgb2TeuLcV/jZ7BwT21lk/WDeSDfD7n89
	HJeuUqiW+//YrE0zm0bwuHP6bHi0ySmt/72GMx1cR4trHMvQByGgWzPVroUgDQhSHxs0ji4rUv5
	wNUZoMSWqxs++2uksZ3P004MYMNXHLypVNsA+xCO238EGOezuA5ndFjtK7tpNLUTawcjT/sUbyd
	JPGKmmrI=
X-Received: by 2002:a05:651c:a110:20b0:3ac:e540:987a with SMTP id 38308e7fff4ca-3ae7f7ccbccmr42593531fa.0.1795616453477;
        Wed, 25 Nov 2026 06:20:53 -0800 (PST)
Received: from [192.168.1.101] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3ae80537021sm43974421fa.28.2026.11.25.06.20.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Nov 2026 06:20:53 -0800 (PST)
Message-ID: <8510bd96-fbb1-4d40-ab90-6e337ed501a8@linaro.org>
Date: Wed, 25 Nov 2026 16:20:52 +0200
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/3] media: qcom: camss: Add Glymur compatible
To: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
 Bryan O'Donoghue <bod@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, Suresh Vankadara <svankada@qti.qualcomm.com>,
 Vikram Sharma <vikram.sharma@oss.qualcomm.com>
References: <20260925-glymur_camss-v4-0-d7c2983d6d7b@oss.qualcomm.com>
 <20260925-glymur_camss-v4-3-d7c2983d6d7b@oss.qualcomm.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20260925-glymur_camss-v4-3-d7c2983d6d7b@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_062055_826872_8DD29A45 
X-CRM114-Status: GOOD (  14.48  )
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
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 9/25/26 08:48, Nihal Kumar Gupta wrote:
> Glymur's camera subsystem hardware is a functional subset of X1E80100.
> TPG, CSID, VFE, CSID wrapper and ICC resources are shared; Glymur has
> three CSIPHY instances versus X1E80100's four.
> 
> qcom,x1e80100-camss is not used as a fallback compatible since it is
> already claimed by its own binding schema, causing a duplicate
> compatible warning in the DT schema checker.
> 
> Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
> ---
>   drivers/media/platform/qcom/camss/camss.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
> index 23f3cc30a15a5e098162bea98ba69fa636abdefb..9954a99981004590d34c722337bb6510fe759699 100644
> --- a/drivers/media/platform/qcom/camss/camss.c
> +++ b/drivers/media/platform/qcom/camss/camss.c
> @@ -5751,6 +5751,7 @@ static const struct of_device_id camss_dt_match[] = {
>   	{ .compatible = "qcom,sm8550-camss", .data = &sm8550_resources },
>   	{ .compatible = "qcom,sm8650-camss", .data = &sm8650_resources },
>   	{ .compatible = "qcom,x1e80100-camss", .data = &x1e80100_resources },
> +	{ .compatible = "qcom,glymur-camss", .data = &x1e80100_resources },
>   	{ }
>   };
>   
> 

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

-- 
Best wishes,
Vladimir

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
