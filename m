Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF18FCA5FED
	for <linux-phy@archiver.kernel.org>; Fri,  9 Oct 2026 08:40:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pJNpBrhAYdIMnuTQqXJgt7wYqffM1W09iZaKALahrkU=; b=s3uldhNSP3Xk7e
	26ElDwK388oRsgODG1tAxRRuJbpa5FWfGGAcWDCvO0xxdCYUGsV4Ra5Esp1ojQo9bO0h1PnXtztLB
	+7SbHDVQswbYEWP1vveNEfl9IhrhIAT+Qa74PcBqDky/ATpB3lGSMLU1miLxVkFHY1RXauM2og1aS
	CdYJDK3u8L10D8dYeGHki9gL2zoDC34CFG07atC0j9I/iIoU045VglUPL3kjsh4qZWAL9G848PEtI
	Lwm6oRskOFHtHVtuVJqCeesP/FWCweQFnPkTQ27btxbUBLH9vx58Crgulsq4zBdFrfK5P0dN6oe74
	qvQvxtGlM8A8AzSXu/pQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xF69b-00000005q00-3V53;
	Fri, 09 Oct 2026 08:40:36 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xF69Z-00000005pzV-0ycO
	for linux-phy@lists.infradead.org;
	Fri, 09 Oct 2026 08:40:34 +0000
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-6acb9c018ffso2638533a12.1
        for <linux-phy@lists.infradead.org>; Fri, 09 Oct 2026 01:40:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1791535231; x=1792140031; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=a3s76qkdukLICqlg6Em16V7dzhtvzS9YFXiNuwW4824=;
        b=nJCVG5929ycTnSHhjPlCH0uviTQtzbqaFy3wD4kmElXq4hal3jeFBDxKV/i6ogbelD
         HSBgJPshB+4rTt7tkWiH7KIqd0lP80SGewGD+0pAkhNw0WmeOob5K2KNLMkZY+juLc6y
         OkT4DrCm+8d1GrKdJ/JFguofNunMl2/a5kfrPv3TSs7TPaPVeoDztDfeFmzjmT3gY2I2
         ps5k5In8O0DUl0VUD9hOvZa31sFt6MXBBSD70wTvg3QbTFxtMO5hxFyBk5XOKpiuqUJS
         UAYz/fULDjCaMLbkx4AWr3LtpJPZnEqHSevuc+QsahLmRJJD/xGexa5C3fQBUrm4sZi/
         iP8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791535231; x=1792140031;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=a3s76qkdukLICqlg6Em16V7dzhtvzS9YFXiNuwW4824=;
        b=lcyGPxS7Xcn2zF3xew36WDQW12Glb7H6l06eEo2W9RPQ8TN2NVFDx+R4x4OGrAeQ8u
         VGcxCyWYI/9+iMHcxwGg68QY0N86/f5lg6oulhnDdmZPQC9bVM/nShXfaS8MMbQEdqbG
         RSEyHW7KN5/IYipYSitegQCdx5gclhVvoy4kCNoL8ZqR599mPqX4hTVCxm/9XR5tQftP
         Q0Y9XMvfOQQzb5u98hac4SrUJcMzUDyXgbAZLQBQms/CfFfRfyK7qBvEp2B37oYrXiJy
         7GyrT2ZkcXX1M2BZLnLbOb8A5EdWTckiEsUXqlsaI41KVH1y6cr/HUwvIbg7nrEK9SuD
         PktA==
X-Gm-Message-State: AFq9FYLT0FO5SP11Jn9FP0kJT0gYQLYlZeZFjn+30iiVMNQzKdvkDL51
	LeDYD/CECPiCSCfgDzUIOQMnWsWzrVjIg8c+XnyXSMaC51S0b/ZhiPEy+TFRVsvkemE=
X-Gm-Gg: AYBFou3e7uDirbBV0LhLGss1IUcg7Uy/c7vtFK8JnY2m12JIyAdzFzgpKt8XfJbCYto
	Kw+xQo2R+TR4VcnHbBIIgWzJdTZIx74aPhHQNl9DlCCoh0AiC5bfG2tTeSdOZcUDI7+4KRramUm
	zgiL1HPdgJS4uqq9vu8yjPnQoeL+hGobNszthpUKBx7LjaCT2Joum/TJ/m8OulcAjw/L0DOYX7H
	BBrr56x65nYAF/ytA4Ke+Bb1gbEanpg4CNAnPhrSedfBmJWCJJQqeHhce86AgNOIIUvxy/mN7RO
	lwFy3gmE3mjGRBhJioNBUWRo6ZPt4mpHSB3Vefjp1urvU3A9hBxpiK0OAv9ZUYnWZuhj5Eq/cSz
	PxVvyTyHvZ5RCMRZszVmgpIgq0PB3DmycSz7BzxGX2Xwpo6RkASEv9hPG29CnpViAkOLjGiC8TY
	zUjquWeDG0w8vfPmF5B2zUuwzAEbtucymDY6SO55dUZNX0Di1+jLefGWJrgXX3CM42Kb3ejAMSu
	2Rf34q5+z9ocPD3jdOS
X-Received: by 2002:a05:6402:234d:b0:6af:d794:4a8 with SMTP id 4fb4d7f45d1cf-6b17c2a3834mr926471a12.12.1791535231094;
        Fri, 09 Oct 2026 01:40:31 -0700 (PDT)
Received: from [192.168.0.167] ([109.77.78.86])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6b179de7913sm781218a12.23.2026.10.09.01.40.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Oct 2026 01:40:30 -0700 (PDT)
Message-ID: <82d48200-f13d-4b14-8cc4-4b1b2dd2bb37@linaro.org>
Date: Fri, 9 Oct 2026 09:40:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v19 10/12] arm64: dts: qcom: kaanapali: Add CAMSS and
 CSIPHY block definitions
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
References: <20261008-kaanapali-camss-v19-0-b2c583ef50e0@oss.qualcomm.com>
 <20261008-kaanapali-camss-v19-10-b2c583ef50e0@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <20261008-kaanapali-camss-v19-10-b2c583ef50e0@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261009_014033_296641_7982C887 
X-CRM114-Status: UNSURE (   5.48  )
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

On 08/10/2026 08:14, Hangxiang Ma wrote:
> +		csiphy0: phy@9523000 {
> +			compatible = "qcom,kaanapali-csi2-phy";
> +			reg = <0x0 0x09523000 0x0 0x2000>;
> +
> +			clocks = <&camcc CAM_CC_CSIPHY0_CLK>,
> +				 <&camcc CAM_CC_CSI0PHYTIMER_CLK>,
> +				 <&camcc CAM_CC_CORE_AHB_CLK>;
> +			clock-names = "core",
> +				      "timer",
> +				      "ahb";
> +
> +			interrupts = <GIC_SPI 477 IRQ_TYPE_EDGE_RISING>;
> +
> +			operating-points-v2 = <&csiphy_mxc_opp_table>;
> +
> +			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>,
> +					<&rpmhpd RPMHPD_MMCX>,
> +					<&rpmhpd RPMHPD_MXC>;
> +			power-domain-names = "top",
> +					     "mmcx",
> +					     "mx";
> +
> +			status = "disabled";
> +		};

These PHYs should have their ports defined.

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
