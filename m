Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83D99606A31A
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 15:31:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=kljx9RSN;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=Rl8vB0K2
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=zHtHd2O1Po/ZlS6Z4owELzChhwMXZffODqNNb+hEmDI=; b=kljx9RSNKUS7GDzEDqwvKRqq09
	7+XaIu6QHfot8CiM1hZSqo7LJqMsNB5X8U5SO+E4F7Bmq0hZlh3xNrWObsOtYmSYmSlCUtfKSOuBX
	JEGeiXRAhoWWwulPWFi8ObcqdgWSiKtk9r14zlzMFI9SxuQOJBvsbwSb7vuE2CNoHHHR2chOh87BJ
	GOnMDXOJBkBmwrvNafKxwqgCicu1/v4qOVPVYjyfcycCtDEQvo8R5QaKoI+G7bKepqvH4FIqoI1BK
	/9S+2h/opiUrNU/1a6SuuQ8LF8q8D7Ng25lc2VlnUjVPwXUFGwNLVtML2C/fF5sTaLcb0qHQQwf5i
	3eZXoaBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM5cO-00000007OVO-1Bx8;
	Wed, 28 Oct 2026 15:31:12 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM5cL-00000007OUz-3Rpq
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 15:31:11 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-c4682977f9aso140682066b.1
        for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 08:31:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1793201467; x=1793806267; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=wemZBH5N8kr8/m8fq2ioHfv60pNctDnjzWt9aNzMtaw=;
        b=Rl8vB0K2Hxu2gUw3FQ7NKP6oas88HwzbC1PgLU/47eBtG5EXNM4OE4FkgcWX97i3WP
         mzdhnSHFjSZzVXHGeZw/6HeIUJ8gdaNXjLKFt06odXMZP+Y9p2nnWeW+FKmyEokST4Cw
         ODjPAKAJ906eHokecs+b8Nhy9nIJoWDml4GuO6kC/PVUDQSCnga9x2y2VpJ6YV/Gar87
         YshSqa0w5nXtZii/AKlb1wFrgvFqG1exKH18+f29pkB+Y98R/tQkP2ySxjk3Mu6MnjJP
         wJwohki6naZc4RyLmpXtP7l6uB548iu4boDLpsTzsHAAdC+lK3110ev9sRp3lEhlJe4S
         Zt2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793201467; x=1793806267;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=wemZBH5N8kr8/m8fq2ioHfv60pNctDnjzWt9aNzMtaw=;
        b=MQFEh7Zt9xk480WuzPpBvRUkZpDxAYN4ddMj1RDP6Dggj17EDObB6Wqj+N8eK6ikqN
         vdMO2Mn8gSrb/Cj+iQika2U5f8RN4ZzXWZ6eaIe20VChy7qmmZE8j/DJlgmxpNkB7ktt
         NXWe02nGdrHajOquWmGWRDe39/vvb2exuB4fKT8TCec+kfTZQkdo+OjMwXHNiyliGziU
         8haIDamEdtjG/dWzWcRXHy9zphH2z9W42sybWII4TTCY2q/1N277IfYv+K645mDMrC1Y
         qk7CXhlep8ul9Z6oO2ndw2z62/FVQ5vB3EWQdGGVXDMy9ITBxRTE79GI1hRfB9V7mMD+
         16rw==
X-Gm-Message-State: AFq9FYIsdqHd7apR6r3hXn05TUK9UqrBKZG9Db+Ho7Uf/xc3zyw+uxZO
	q2rW0QM21ET4hz69km5wzufmyKAPVcB2yf7eCDTWp69EXXH3q5e12pFFaJofIb+F/hI=
X-Gm-Gg: AYBFou3s8g00CjVLOzE9ejtIklVoAxnGkBtedzynydMZW+AkDjPrs/Q7p0jw1X1veda
	MmztfMOU/nQpd2TguEaUQb9pCtufSWGF0hWk7hTpaPYeY8LCjgnEvDbfATlueEoR9M8qE2vSvJ7
	m/6dQ0TukHSxJ6BQOJgCS5NcPtjEv1VtO5vhHwX0KxEFtZWE32hYzud7I8wFIcjpEHSMi6jBDEq
	t3Db6tL71rJhC4kprNg6dJ2XJqmW9vcR0CXsFGOSpFlwujxMLvCPWG8XdiDHszL+5m/oEsltH03
	Pl04oi93Sb8fcgOp01Up4TedLZude89/7/s4gtY6lnf6aGck2mv5jea+iAkkApXze6TRE8dRW6J
	5E9ndi40n1hD+Tm//S9YjPji5alJc7MgR7Ulcsf6ZFq+EHzW3ppNDpWSm4QyS2/dp+1FH9R5j1v
	AajzYmJXkcu65GZxxDGBY/i3iz5uYM7Vf5m12XLn51FlREZtFvyZOefy+vZYkLT5w3lQWdmnFoH
	2LOLRu99ROJJW+ye/YoT2PdK6spJGptIPA8ObAPY4YMq5/KjToDDx9x+EceXq9TomgJbv2hLzpH
	HMOIKY2MppZq/LZ08LqPwuk8RnkF170kjXPBJVDVYQ/sTdqah9Dm7gtyO4ETXU8=
X-Received: by 2002:a17:906:ee8b:b0:c40:9839:c892 with SMTP id a640c23a62f3a-c49bdf140a9mr230072266b.19.1793201466691;
        Wed, 28 Oct 2026 08:31:06 -0700 (PDT)
Received: from [192.168.0.167] ([109.79.76.222])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c46bd4e9995sm616663766b.15.2026.10.28.08.31.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Oct 2026 08:31:06 -0700 (PDT)
Message-ID: <9d22f3e6-7f6a-4450-b6f5-871b87fe49bf@linaro.org>
Date: Wed, 28 Oct 2026 15:31:04 +0000
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v23 07/15] media: qcom: camss: Add PM clock definitions
 for Kaanapali
To: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
 Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, jeyaprakash.soundrapandian@oss.qualcomm.com,
 Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
References: <20261028-kaanapali-camss-v23-0-95f250b18612@oss.qualcomm.com>
 <20261028-kaanapali-camss-v23-7-95f250b18612@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <20261028-kaanapali-camss-v23-7-95f250b18612@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_083109_896279_6CB933D6 
X-CRM114-Status: GOOD (  13.17  )
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

On 28/10/2026 15:20, Hangxiang Ma wrote:
> The CPAS AHB and AXI clocks are shared by every Kaanapali TFE and IFE
> sub-block. Register them as PM clocks so the PM clock framework enables
> them once when CAMSS resumes, instead of each sub-block listing them and
> taking its own reference.
> 
> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> ---
>   drivers/media/platform/qcom/camss/camss.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
> index 98ec23c39fda..a64242c66cf0 100644
> --- a/drivers/media/platform/qcom/camss/camss.c
> +++ b/drivers/media/platform/qcom/camss/camss.c
> @@ -5606,6 +5606,7 @@ static void camss_remove(struct platform_device *pdev)
>   static const struct camss_resources kaanapali_resources = {
>   	.version = CAMSS_KAANAPALI,
>   	.pd_name = "top",
> +	.pm_clks = { "cpas_fast_ahb", "cpas_ahb", "gcc_axi_hf" },
>   	.icc_res = icc_res_kaanapali,
>   	.icc_path_num = ARRAY_SIZE(icc_res_kaanapali),
>   };
> 
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
