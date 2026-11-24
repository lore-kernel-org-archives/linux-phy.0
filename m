Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99261606A330
	for <linux-phy@archiver.kernel.org>; Tue, 24 Nov 2026 09:57:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=U2xnFL4d;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=olWsq/GS;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=efcYAls0
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=7ev7qUQ+q73YLEb0TMF0gtRlM2VREjX5xc4BsVkp3Iw=; b=U2xnFL4du5L+fJx2LLQbXgwGU6
	KPXPtqRMcfEaDgdGTghCMGR/KX7xcKntAQ0LEKdtjEEhBt4smCGR4lPufGK4VMeaOAYkfcfOsJjNr
	T8LsZ0NGGTvPBid9aZLx3taoXA/pqxvkfMcEm6Hrf8+pf2f8AshxZWXfVeQbeK+8X4XtNT5Pzjz21
	mCzgYGnnlX44QWIbYXL3A0B48SpIkaZNxlWd2bZcKpheRlbDHwmWjCuxinqfIFbCfUQiAonRpogBb
	P5SaIyhpz/kzZQLrAjjiS6KK3tR27pXXv0pOR+tlV9Hy1NejrpZX4tIr2kzCpj38zyVKvqhe4mNDj
	UoXG4GYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVnGq-000000069XR-3vsQ;
	Tue, 24 Nov 2026 09:57:04 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVnGp-000000069V1-2EK7
	for linux-phy@bombadil.infradead.org;
	Tue, 24 Nov 2026 09:57:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=Z7ixIHGB/x6muOCf12bPPxl1sG73TY3AqjMKZ2p7Iqw=; b=olWsq/GSBBhoxvxcnZJZkUc+XX
	1klxCMsJS08fY3G5lJ3r2fN5TGVTlmMRyuIs2SfLX2qjDDKx1VcKghOtmRzDVgTCKhmFuMw8ycmRU
	r2jDK3J/GDHmVN5PjUWzFz+rsYSVyktbJeHMamnhE62FvIHgf0tSt9ZJmM0h9MENsny65Gs7Lrvtx
	hLgEF/2Oj4kWYe+2j0llYp8T6Ft7KutC1tTLoBNfYkdbxuMCfxFR55MU/s2dPDBph5SlgwTHLvM5F
	BVPSztgLtxeLBq5NJh4FKsf5+pKQsNm8QMwo6pvt3TloNZDgIrhtTvsxxqa+/TVz7s8kZmRfeNszB
	xCK9xW9w==;
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVnGm-000000040Ml-2G3U
	for linux-phy@lists.infradead.org;
	Tue, 24 Nov 2026 09:57:02 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-5c0ea47f5b8so455916e87.3
        for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 01:56:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1795514217; x=1796119017; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=Z7ixIHGB/x6muOCf12bPPxl1sG73TY3AqjMKZ2p7Iqw=;
        b=efcYAls0WVccJKjIb0Hm9AoAe/tmU+9173iS/xEpH0AgFT7p8TGzRSLUJybcrDqyvy
         aDksPGcmG0qOSScalDw9Ys5BdZZ+U3O2EcunzdyYKwFEtY9uHOT4yaPBOXciJjf639qu
         TCv61cj43J7pLJR6Zbdf61r5q2EmoisidQmIcDjauyX9XsGqCsXVxoYWj06Hq2btnXf3
         Q5KPNP+8vH1B6zjSGpcYrVhKfUosyFM4cYN3opF6rbYvXKyp7p/Q7Z2xK3M7BOVM4Qq4
         y9IeKs28Eb/StdQyAeMfbI+DnjuLmIRuMSek+NNOZBdC8MlrpXOBZEpRlfuayNPTsz1Y
         FxVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795514217; x=1796119017;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Z7ixIHGB/x6muOCf12bPPxl1sG73TY3AqjMKZ2p7Iqw=;
        b=sw+DCruesPyKfqI/tMUClDOP7n/oRko/OcpRwNiitaGXCqNaGJMIrVI1Nqar6PYR52
         a4YyWttTyVHXgZ2cCQznubrhrHfqNfZs+7iA5178v3SxANMppZ+8ZLZdsVzJtsQtoiQa
         DoBRlsAh5d2UmMpkSBuZ4gIfvY5dy7KAmLnNNuZaaAPWqwm41DKEZU/CNp4OObhWVRzJ
         tZrqAfVEZyG4WLQUhYEGsV1KzSnwaG6zhfDDNm6TMVq1ARcyt+6rbSgxr5uyTZz2hBKo
         rlIGIazW3Xrpanvq/oPe2427IX7X7U5yoFnqs0KyCYzDeHLGL3NQaNOC7ohdoPHfXIDl
         XXjg==
X-Forwarded-Encrypted: i=1; AL+hErHD0gGYLNx9Izcxdm0TxJJMf/bv6BeVvmCTDg8fP9hwSCGSrMuxpw4ps6lohyXihYWvAld4CyGIpLk=@lists.infradead.org
X-Gm-Message-State: APuU4Z9+fXxhWSfXs9cQtKgY3iOd8lnZo1OA7GM4eUFm0SD3ZNWMjb1v
	3XaV3j7Td9B/8BFhcaac7s8tUESLne73jfsZve37xwhbcRTwjLZ7MX/31fYhwouLyXk=
X-Gm-Gg: AZFdTZfmaj58iGyOD7BNI8aAEi4OPJWtTPip6lu8cSiSWGZDKt/sWsALL7JGrzqR//l
	kzK5zqDXWXFzrmF57nD8KPgKHWmFh8xXGLpyc/m6rqjYXnveJe8/rrTBVeLGzBOIZ2gSbnXJ5Xb
	JFrW+ZmSZ2OxXMdIM7E5vlWJU4xGDQbbPaGbm9qnfpfel47iCZMrsTOID33AOjho7hzFoQcPUSt
	9BIWQy+crtBUN/kNpdXw2+6hC8MzQVATXTyyFiooymAJ7RcQFX0hl0/iG2bnIidWswVi/y+hW3e
	jLqtt5/zus5HMrRQ8Ts7nf8YUNogOaWsoshCdoO6nivxX/LtfQW/CDj42oh2eux35EM++yGOFk5
	TWzh7dTQZHGmYk8wRgO410JWAdCXNDApi/rTUVqH0asC6uGc8civJa/xfaS9dZiJv7MhZEq2VbQ
	m/002MJumvb9VhJOECqSFZaW3opbJ2DXNkYivC9a9d0f1+aofdisYEo4gsPfWTJXyf1o8MFpgdA
	3oxOtXxwz/GXsdukqs1imdkVwgST/WC3ThY+7NhLUrhkxvSPYmNaMcnQcuQMuTf40+8kU2ajhiD
	r4bGzkj/8avUUOWF0t8CBG2JCnArW/Vca08CHBXVP5QbhLb8loG/xN596EO+3IXXEE27M38OqG2
	0hjBsREE=
X-Received: by 2002:a05:6512:b88:b0:5c1:5488:f57d with SMTP id 2adb3069b0e04-5c1bc85b735mr5132306e87.4.1795514217327;
        Tue, 24 Nov 2026 01:56:57 -0800 (PST)
Received: from [192.168.1.101] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5c1bcff86c4sm3570448e87.22.2026.11.24.01.56.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Nov 2026 01:56:57 -0800 (PST)
Message-ID: <da038528-5b25-4956-a14f-1827ffe2eef8@linaro.org>
Date: Tue, 24 Nov 2026 11:56:44 +0200
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/7] dt-bindings: media: qcom,sm8150-camss: Add SM8150
 CAMSS
To: Andrew Gigena <mail@andrewgigena.dev>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@linaro.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
 Andi Shyti <andi.shyti@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-phy@lists.infradead.org
References: <20261106-sm8150-v7.4-rc1-camss-v3-0-0103e8a0bbcd@andrewgigena.dev>
 <20261106-sm8150-v7.4-rc1-camss-v3-2-0103e8a0bbcd@andrewgigena.dev>
 <21be3761-9da9-48c6-aaa1-b56f8625167a@linaro.org>
 <ab79818e-4b4c-4b58-bd2f-57d9ae4cddc3@andrewgigena.dev>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <ab79818e-4b4c-4b58-bd2f-57d9ae4cddc3@andrewgigena.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_095700_515077_94C2C64F 
X-CRM114-Status: GOOD (  18.79  )
X-Spam-Score: -0.2 (/)
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
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Andrew.

On 11/11/26 01:46, Andrew Gigena wrote:
> Hi Vladimir,
> 
>> That's an intermix of names, and you will get a review comment from
>> Krzysztof about it, I stand aside.
>>
>> Here too.
> 
> Krzysztof did comment. I kept the vfe0/csid0/vfe1/csid1 order from
> sc8280xp-camss.yaml in reg-names and interrupt-names, and asked him if
> he prefers another grouping.

Exactly.

>> Drop 'gcc_axi_sf'.
> 
> Downstream sm8150-camera.dtsi feeds GCC_CAMERA_SF_AXI_CLK to CPAS and
> x1e80100-camss.yaml has gcc_axi_sf, so it is used. Can you explain why it
> should go?

There is no CPAS in the upstream CAMSS stack, and it makes it irrelevant,
that's why I asked to remove it.

I believe one day CPAS will be modelled as a separate device tree node and
device driver, then it gets its SF AXI clock.

>> Drop 'cam_' prefix and 'cam_sf_0_mnoc' also.
> 
> Prefix dropped. I kept sf_0_mnoc because SM8150 has a CAMNOC SF path.
> Should I remove it too?
> 

Yes, please remove the interconnect, it adds nothing for upstream, and
I believe your tests will show that the image streaming is not broken,
if there is no 'cam_sf_0_mnoc'.

>> Or C-PHY, right?..
>> In fact you shall drop bus-type from here, because the link between
>> CAMSS and PHY's output is not a CSI-2 bus, it makes it inapplicable.
> 
> Agreed, bus-type is gone from the CAMSS ports. It only exists on the PHY
> sensor input now.
> 

Thank you so much for working on SM8150 CAMSS support, will be glad to
review the next version of the changes.

-- 
Best wishes,
Vladimir

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
