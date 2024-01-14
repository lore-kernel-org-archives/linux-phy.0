Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C301DC47077
	for <linux-phy@archiver.kernel.org>; Sun, 14 Jan 2024 16:13:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6lC7Lxo+LJrCr0mi0Ix45mMYYTLNLy2GFyY8KuYnhMU=; b=iTClSZpBQHB01I
	1x/XZwM3DKdc4qEsa5DHBruBd/mwMD1b61LF7xMPoJLTZIflpNULgy8dZaD59Q37CV1j9oM0+8nlc
	N+x2uuvuXHAE8F/KYg8gLS3Pm0eR2+UqAW8YeV5ghzRuhbUMBnoJ5+HcyIQ+FN8yLp6aPiUQ7CIRx
	AZ2H7NkjnmqSHUYYv370QWLFiqXKSCc6H3ybuH/Ca8PMwJK+o/uilvIyNap2h44cVvWmsFn157O/r
	JrhNCKs4W70gMZzGEJmct1w0Gf/TKrPsIt8cNlP+KvEzJtsFhonE7MLt9UGMigo6plI1Dv+QaUPj3
	6/NWvyRy9KGZNIiWOp3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rP37U-006x9o-1X;
	Sun, 14 Jan 2024 16:13:56 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rP37S-006x87-0C
	for linux-phy@lists.infradead.org;
	Sun, 14 Jan 2024 16:13:55 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-336c8ab0b20so7051888f8f.1
        for <linux-phy@lists.infradead.org>; Sun, 14 Jan 2024 08:13:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705248831; x=1705853631; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jnkq2UkgPpVsEo47nILwi/m7D73qWwB4CzFMK6Ortrw=;
        b=L8mTVn8odDOTzRztO0xBns1Z8hKNi/17tULx7HcZnOJjAWOvKKTT7CGFFDMQub5vYD
         Y2LJRWHFXW/BzjKRiJsyEsOMko4hTHdrGSvvDQ3771QJ19sUu1hN5yOWdfn67T6q9Vwp
         nO/vd+3TNeQ6n6j3u3bcFtYVAmLO5NTl8feQX5/4OrJ/iuWR2lJHDfa4DvwrgcQdk0J1
         iZYUG68rmo9xGkps/37dKhmaHjWybkbL1uymHlpS0UfETT/mXgf7pAbGIB1G2mBcDama
         8nzYh57No0TDjm5GAEck7RQZ2+FhGDOzi1Z1QM30hi3tWv4NLS3H2EnYusfL2dZ5a8Rl
         lRgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705248831; x=1705853631;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jnkq2UkgPpVsEo47nILwi/m7D73qWwB4CzFMK6Ortrw=;
        b=T8c/Pcp7WlCgK8Win857fDx1Z4d32gS4uqxnNVuX5REWhGGEAvfh8DbUG26k2R+20f
         DDoS1n4uJ1ol7tcHAlV2Rr5PBvJqy42uNW5TorXLsP0KzIX33Pm/oKRGGfdYSXKyw6DB
         1MGW+r9FYiI8lUDQRmobRHQDkR1nGaClTc8ZNlcud2zza5aJx3NG9drP52hcscwi7m7S
         SLMpm5KHs3/MTTkOGD1fEUt9HMRMU5Up5JTas5ET3Z2tVcDUzEvVMmTcHFRgMsg2lNgD
         s9tvM/a60iAzmxdzpuGR28Yp7AMVs07zbaWEHZhTpChq8vFh85lTSL2+vvihPGH33msg
         WQPw==
X-Gm-Message-State: AOJu0Yz0ocDLXA1iJIQxTt2QMpHaKmtxB99S6YyDVTDCaxsEoMkE/ruP
	GjmjwQVYmWiG4YitPRx3yUfZSGv/JNd+XA==
X-Google-Smtp-Source: AGHT+IF5m2DAEY26RamFHE/RDILSrRoXqn+NXcQBtc0X9MyybfSFoA+02oJOWrUK/+mSZShCljgbVA==
X-Received: by 2002:adf:eacc:0:b0:337:62ca:7f2e with SMTP id o12-20020adfeacc000000b0033762ca7f2emr2727073wrn.93.1705248830746;
        Sun, 14 Jan 2024 08:13:50 -0800 (PST)
Received: from [192.168.100.86] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id e19-20020a5d5953000000b0033609b71825sm9451486wri.35.2024.01.14.08.13.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 14 Jan 2024 08:13:50 -0800 (PST)
Message-ID: <66aa917e-d1dd-497a-ab06-6577c8256e13@linaro.org>
Date: Sun, 14 Jan 2024 16:13:49 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 06/15] usb: typec: qcom-pmic-typec: fix arguments of
 qcom_pmic_typec_pdphy_set_roles
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
 <20240113-pmi632-typec-v2-6-182d9aa0a5b3@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20240113-pmi632-typec-v2-6-182d9aa0a5b3@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240114_081354_104327_816D5F5F 
X-CRM114-Status: UNSURE (   4.55  )
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
> +				 (data_role == TYPEC_HOST ? MSG_CONFIG_PORT_DATA_ROLE : 0) |
> +				 (power_role == TYPEC_SOURCE ? MSG_CONFIG_PORT_POWER_ROLE : 0));

Not a big fan of this syntax but... its fine too

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Acked-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
