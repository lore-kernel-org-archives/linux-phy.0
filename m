Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F834C83F25
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jul 2025 18:04:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DYIHj48TLqgeePgvYLLLC84xXcWvP4tsuEIIBqzz+uA=; b=YKU5NpJE8alqaj
	lmg3rTg9LkDAhIGMRIT3Q4wdJEzVP6r3wezVa5MKB6ZLFm2cCvwfsNdtT0iJdBpYOFC2mclSQ7Zxf
	v/9B7RbJMTWNKDb3DRukNSCUZxauNuZl1mQXFyuTJ1fp4iGnuxS8aUmTGmR95A5cVEQodPlViWHxl
	gPLc8oprECeiSewnTz9Y95+TyW6jGsrk6ltsjeWh2PRruApBUklMEGwAVIHblmktOd+sX0RlM7Cay
	0jmlx1jlztOkAJIC2Qp6v9xNKORwYUL8qemImz4Jy5Q8lCoJIngMJJp4tZ21CkobA+mnqe4l5x4b4
	ns++IeL+YQuO6t4kHGbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udus0-00000000O0N-0dHD;
	Mon, 21 Jul 2025 18:04:12 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udtI2-000000009uu-2L4v
	for linux-phy@lists.infradead.org;
	Mon, 21 Jul 2025 16:22:59 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-3a507e88b0aso3190975f8f.1
        for <linux-phy@lists.infradead.org>; Mon, 21 Jul 2025 09:22:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753114977; x=1753719777; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TxA1HkWcihAgiHesUgMnXVmrELXQs8wNZG5+2Hm4nPA=;
        b=lUKIUz7gNN2TM4RJheS9pkOJAZf+X4oxSrdewyuvu1GoCHxpJxmErGio7m/umq0p8I
         zvVghe/UAEA2eyIf3dj6qeDiKCoTw+lM+mZcMveLoYLa8efFdaWqDWB8V/pam4Qt+GUk
         Qel9+RfPT0Ffx0q/mEHcjj5Uab1K6DADbtveXWA35WK8ixxEWjZM2LNegsZRSM3TrMk9
         zGLUnHZAHd4GiEwPgo50Je6Iah7TZoBsCUENRtvSovRrbUK+tC91cMk8F0P/TT56GKV/
         tFLZZfZYFEGZ/XBnq3CxTROvA9+LY7ydqtEOCBNKDlj8So8iFi+wEHI3npvZwomr4Uas
         LeHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753114977; x=1753719777;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TxA1HkWcihAgiHesUgMnXVmrELXQs8wNZG5+2Hm4nPA=;
        b=IR3LK0GkK2oVIjplZ7E/rMeLfma8obRqiiUhlDBSEG/+f/IAEScO+v+e2BCdjYbnMQ
         ryLEm0286EUk/WSEMzQ6OujNoDNBiFOHQHAeEwhnmFi0/Mw56TzormmDReX8VopW2QCp
         oQYSvvDo7h6SnIdMuQUM37eMYwMCt6P89ya3v/xC2/Gfo3Qe0QXePdlbEKAgYx1LLbK7
         d0VaAGpxM/okHwaYVMyid/ujuyHaJSHRyyF/3quFYrGJ/yBPLtN7polCZIODemXRZDqT
         dMDRk0P4/uTUKRBtPyDXuTtHw4UT0zaeEkGD8mvqebpzuoW4rOJrCo5bl5z5j5F63j4h
         s0oQ==
X-Forwarded-Encrypted: i=1; AJvYcCXrrvYKRbA4KOgWWjL9vGCw5HPY1548HZIKGb2jzp5Hefi1m1H2vf1xzL98c/ienbCpJiyhnN5iNC8=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywab7fo61re0TogqKL87Kfs3sASVom9pu+EYhX9bZDRKQDl91CK
	wtSxYS4QrY/z5F0fY4bjYgRrkM1dNHtPF9T3xr+QJJVs0wJKzCEb6upBCpGOZmOcFBEEzMuYTND
	TteGb/JU=
X-Gm-Gg: ASbGncv75d8F1HSZxxCwluRrQBMATSshojKCV8GZad90o5L/R0kiTZUinYCFMvEPIfp
	UQJ2ohLXekWfqWXeudV/gM2zHqYtZLlUAJMmTeskiOM5H0KubRhYEN14hxt17eyheen8CVsn/Yw
	uN+Y4DmbGNEY9bnazn2ZUl4SL8zNgmW6N+EBPyAPXGNOKFCdlCrWZhdKS7MbRDlvMMqzrf4Tnw9
	U6UW3AMZsbhVlWSnHVLkKrU3jtYXGCoSi6rPM0CKwnDMj9PHxE9ogPMc3ArxuuY22g3x5HrXDnw
	58SHPdaGUGpwDC3sEbny8FtQhO8Uz6weRdqVDzOSW3L/5Inepd63qlQ3YgXxZVPDrv2NZr9IJI8
	+xNpL8O9trrMjoa4aIIvCVSnGlv28dHsnsYli7ojrCzlheyx/t/GVdyxoLq0nqnE=
X-Google-Smtp-Source: AGHT+IHp3F1bGKZQuLQleiP5LQBGh2HZeuuoCI3Px72hTP9M9DOLyNGcLbYw36OIyWjFyB5RpreVGg==
X-Received: by 2002:a05:6000:658:b0:3b6:13a1:8861 with SMTP id ffacd0b85a97d-3b613a188a1mr12726134f8f.38.1753114976724;
        Mon, 21 Jul 2025 09:22:56 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b61ca4d74asm10736869f8f.63.2025.07.21.09.22.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Jul 2025 09:22:56 -0700 (PDT)
Message-ID: <90a896f0-7b67-494a-abe4-dceb52067e65@linaro.org>
Date: Mon, 21 Jul 2025 17:22:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI D-PHY driver
To: Neil Armstrong <neil.armstrong@linaro.org>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250710-x1e-csi2-phy-v1-0-74acbb5b162b@linaro.org>
 <20250710-x1e-csi2-phy-v1-2-74acbb5b162b@linaro.org>
 <11b573d5-ce4d-476c-b94c-216d427cd838@linaro.org>
 <08261aa4-689b-4d6b-bfd2-221c1976d254@linaro.org>
 <a7f64b31-4767-4281-b452-a2bc5351d745@mleia.com>
 <c93624bb-ee7b-45ac-8b53-b5391f11c9c9@linaro.org>
 <eac3a877-a4aa-4789-9013-ab8b6c91e0f3@linaro.org>
 <0a12879f-dc4a-47fb-87a0-ac4b8bcd4d75@linaro.org>
 <53a19b1d-5665-4937-a07c-5dd1fcde06c5@linaro.org>
 <3b760685-97db-46e3-80a3-7fad69ad31cd@oss.qualcomm.com>
 <94b75177-9401-4e0c-966b-5847a29cb6f7@linaro.org>
 <427548c0-b0e3-4462-a15e-bd7843f00c7f@oss.qualcomm.com>
 <3UXVZ6ANM9mDjVdMV4SXsiIx_pT3S1lp3RC_Q7mh_o7jF2dpYsni1Sl2TAWv6OCMCRTFmi9aE6BxDquGkOnwEg==@protonmail.internalid>
 <8b908a20-0bf3-447d-82ea-a5ecee1bf54c@linaro.org>
 <57501e81-7e9c-4cb1-9a37-18307d1e06ca@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <57501e81-7e9c-4cb1-9a37-18307d1e06ca@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250721_092258_601251_BB4BF21B 
X-CRM114-Status: UNSURE (   3.80  )
X-CRM114-Notice: Please train this message.
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

On 21/07/2025 17:16, Bryan O'Donoghue wrote:
> drivers/phy/amlogic/phy-meson-axg-mipi-dphy.c Documentation/devicetree/ 
> bindings/parch/arm64/boot/dts/amlogic/meson-khadas-vim3-ts050.dtsoc/ 
> meson-axg.dtsi

Documentation/devicetree/bindings/phDocumentation/devicetree/bindings/phy/amlogic,axg-mipi-dphy.yaml

Rockchip, Broadcom, etc.

The allocation of lanes is known by CAMSS and easily communicated to a 
separate standalone node.

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
