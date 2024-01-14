Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53CBDC47077
	for <linux-phy@archiver.kernel.org>; Sun, 14 Jan 2024 16:13:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BqRP5Gc8djG0araBdLVZ1pDm+CLTApMq3+Gl6NweB4A=; b=ZhwmgfE9REajkz
	OFeKUjz/3JuNVC5qYVU1sTJttivGC1Jze3Da8lUxowrjIaRhTZsMo6psSdXSxIegw3BO8mNjJJqPj
	Os1V2iLKfCoww3pjE8UOrvqKB7j4liWy6kIQgW0weUVXkW6NGStQEqSStznTbRNfkp4M3mPEf360e
	/DCq4xzKiDyfX36PgJizR4vUVhpa0p45EhcevMF0p8sVqZig/2auUx4CaRoqPd8VSJZCF9daL0u/9
	jiOWzV7Nb/ILjlJ/TnU4BY3en1E0WPS6xvLXWgltxf1YCCyf2maSPYMYsrAgB6/o4XTJb/jv/3uyj
	vnrgWtFXY6ebCCAC5mog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rP36i-006x5O-38;
	Sun, 14 Jan 2024 16:13:08 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rP36b-006x4f-34
	for linux-phy@lists.infradead.org;
	Sun, 14 Jan 2024 16:13:07 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-3374c693f92so6046511f8f.1
        for <linux-phy@lists.infradead.org>; Sun, 14 Jan 2024 08:13:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705248780; x=1705853580; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PK6B4lIcnEeALYHSYIJtJi6scK3wBTo91ND0+T8BXG4=;
        b=bnGYgNQf8jymtswvhPMbYhmqB14QiBfyTOP+s9RtlIB9NlunAqZXuEMqQtZU9Lve/8
         LHZiGn6Huczt3FV3SvBUcrFxLDFda4dA7X0aPS+Zve9dZHbh9NTiW2EtslJAEQps36Wm
         T8rV2dxiqFLdsZa7zgIwwdpS2Ol8pzcZPt7tVuaHyNRNea/b/6yViZaJGsJYR74b5mqh
         3tC0JutCRQ1HsH4VPda5UtHSWffEPtAB2SFpW5o48ey5Jw2PEQ1GoKqoLAh5ObiUBuOF
         QbzmG5Za+7tdkCQngMkzm3sCIYogMf33fWte7hvxlBzv60JNi7a8Dk6ZgSBUGbbnjfgh
         ULDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705248780; x=1705853580;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PK6B4lIcnEeALYHSYIJtJi6scK3wBTo91ND0+T8BXG4=;
        b=MV7GlMBesbQ32Q+lnGmIWGa+ofX3Mm1J4FC9jdeLnazxR5yHvZnNUmEVTYQaaSEgAs
         soPXjcRybbR9LEmjKR5huql89C988dFVf4Cx7HmaE6ccB21oQshAlxOiUy33ZMBleFvf
         AEI6G0dI97jDSe/ang5+Dk7tDXIhrWy0if3L91TO55+je7SyfccdpbSD88MjABhsf2AJ
         fXWSgxgX47c9DDBRJ1y+K7DcBKHkgSWtOaV9MkqeTsncnP3K6hkcebOgY54LDLsJQ8pe
         rC1Hbtm24qzi5JmzLJXuuth+tBupzthpcWIqghA6AntRDaCmvTcyvvpbQY4yccThGOgF
         bA2g==
X-Gm-Message-State: AOJu0YyYcJXT8q7hiijovGRuA4c2/BHPj5aMJUC6mJfcvk1azUUlYF3N
	CmQ4yDZ52ofzbA//VfxPqMOy9HW8PVgiIg==
X-Google-Smtp-Source: AGHT+IGpum5IDzpXeQ9A/9V/dvzpLzlcrn9xiwR0V2h2sXZ5LoD408R10SsfEmXPPCQp+VatR6FysQ==
X-Received: by 2002:a5d:6a0f:0:b0:336:7449:2da4 with SMTP id m15-20020a5d6a0f000000b0033674492da4mr2709385wru.95.1705248779753;
        Sun, 14 Jan 2024 08:12:59 -0800 (PST)
Received: from [192.168.100.86] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id e19-20020a5d5953000000b0033609b71825sm9451486wri.35.2024.01.14.08.12.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 14 Jan 2024 08:12:59 -0800 (PST)
Message-ID: <8097c0e0-3096-431b-9b35-46dc063202cb@linaro.org>
Date: Sun, 14 Jan 2024 16:12:58 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 08/15] usb: typec: qcom-pmic-typec: allow different
 implementations for the port backend
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Liam Girdwood
 <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Guenter Roeck <linux@roeck-us.net>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-phy@lists.infradead.org
References: <20240113-pmi632-typec-v2-0-182d9aa0a5b3@linaro.org>
 <20240113-pmi632-typec-v2-8-182d9aa0a5b3@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20240113-pmi632-typec-v2-8-182d9aa0a5b3@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240114_081302_825772_CA6FDFDF 
X-CRM114-Status: UNSURE (   7.68  )
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

On 13/01/2024 20:55, Dmitry Baryshkov wrote:
> Follow the PD PHY changes and rework Type-C port implementation to
> become an encapsulated backend. While this is not required for the
> PMI632, it will us later to enable Type-C handling on earlier platforms,
> including, but not limited to SDM845, SDM660 and MSM8998.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Tested-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Acked-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
