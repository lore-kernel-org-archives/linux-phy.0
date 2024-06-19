Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6D28C27C53
	for <linux-phy@archiver.kernel.org>; Wed, 19 Jun 2024 17:02:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CF2pgb28XtF1JkUCmDeeOm+PXbiKKsBeDKYgC6aHDBA=; b=TDsa1D9vcAWnV/
	oAu5Ikq0eYIDF9dRhCNTLwuT0h/ua3HrV/ywJVzW5midBdxSB/eBDkzlVAoNQuntB1tIrqjI6laK1
	sVNUkdK1q2jmQPWIbXJumx1gSrnp+QkdtOD2PCVJvWg7CC/FkRquiEpH6igTPdZOIns1YKuDxIyMv
	mn1EC+yOE5uZ3cuXUW1q25Kh4iH0QimhKl8AEiiMDPZ6fDLe6oECkWxKRlK7uQlV4HnkqD0aR1bnb
	4V2NtQf7L27c60N9ggqwWvZw4R4c+HJ1AdP2ltxTZGE+n2XGBZpYUUZOc1NlxYAL2yT7XDf1Sd4Mv
	xUNZNbUQJgFb7glrKR3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJyhX-00000002960-0ULk;
	Wed, 19 Jun 2024 17:02:27 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJxfl-00000001vY3-2tNm
	for linux-phy@lists.infradead.org;
	Wed, 19 Jun 2024 15:56:36 +0000
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2ec3f875e68so10036601fa.0
        for <linux-phy@lists.infradead.org>; Wed, 19 Jun 2024 08:56:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1718812589; x=1719417389; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=M1BFZzRTH7ja91K8N7mMKCSJfOC96DMaExd23EFhZN8=;
        b=v5ZWzsNC4xjm8mvm/jrVh8ErFBtS2Vq8YJxCf+vZ+VrCnMrkZ4aNmBkZxDUJ1hsRPb
         caQH5kvhoyXVcOW8NU0OCMznCV+YYtyKhpXMzAscxgULm9uN+M/9lEXyDfKkuU+tW75f
         eUgRCijPWrswF3wR6G1/rK8yuvmr/Oq/PPqgq8PRScZjX8DsgXKf5poHfnKOExH/HqW9
         WMrhWoNeSv2tyaiJRRMwy3Dt/+EPoco9z5xaAB+TnRQbhTVlZq91G212WGrekNo+gN8G
         WfoBOvUguMJIQJ+YaFohMes8tBjk76xQvlZGb6lDuWK/hSSZ+jl6AvrKqvxS+dd4E2KV
         Fsdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718812589; x=1719417389;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=M1BFZzRTH7ja91K8N7mMKCSJfOC96DMaExd23EFhZN8=;
        b=MsrJTm9iripGmE6mKZZVmyAY4QFibgxT7dgLzrXtnIM20olGBC9XhGk0rm59R6fb7h
         mLKq/mpworkP90swB7mHyCcQ54zD3m9ks30yALgdyqz/xUcqBWSuG1awPHIdUQEt3Ftr
         fIPTLiaEYWs9nA8ilzgdJhBiY2PTX057I/08sdBoKwlbVdqDBsRLh3Wgz7UPvf/W0Ak2
         V8pp/+X88kwcozalAuOAST+76TiWYDFXsDpZk8ELOUoSxs9HsQAW8YHCUzihQCjvL3nB
         RrDDRcGe88Hw6phiMwTASskMtmeULnJfwzYvRPIUO+EWlp9SlwU4sfrq/t5mJ2iwzn4T
         RKkA==
X-Forwarded-Encrypted: i=1; AJvYcCV1nmmiKFXke4R9ELq7XjER8Zqpx+HSFNizoILXNxqIK8PrREwA+Z6GSZ6+0pEsLq+aI297mXSDa9Ij+Pwik7m7TKK4MqJn8pvdKhzKSw==
X-Gm-Message-State: AOJu0Yw+EgJsjLADQ2pnVXz63S2HIhCtyNT1Os21rdJgw2dhsMM/UJuq
	AgowDjcyEGYr71bqnSAK1NhGHHWeo5we0S8Co8oV0nuhw4dgvGC1C/o8a9tmJvM=
X-Google-Smtp-Source: AGHT+IHaA9hcJJZxhODlzWXhLljZW7b77T7umunIdwrTJtOLoyjhilkaA+PUmNL+9uZYE92Nn6e8VQ==
X-Received: by 2002:a2e:2416:0:b0:2ec:fa4:e310 with SMTP id 38308e7fff4ca-2ec3cfd6deemr18677031fa.34.1718812589347;
        Wed, 19 Jun 2024 08:56:29 -0700 (PDT)
Received: from ?IPV6:2a01:e34:ec24:52e0:dbf8:4c1e:1db7:2077? ([2a01:e34:ec24:52e0:dbf8:4c1e:1db7:2077])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-422870e9145sm271027215e9.22.2024.06.19.08.56.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Jun 2024 08:56:29 -0700 (PDT)
Message-ID: <fcc585d5-637c-4736-a7ba-5f4eaad13ae6@freebox.fr>
Date: Wed, 19 Jun 2024 17:56:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/4] arm64: dts: qcom: add HDMI nodes for msm8998
To: Jeffrey Hugo <quic_jhugo@quicinc.com>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Rob Clark <robdclark@gmail.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
 Arnaud Vrac <avrac@freebox.fr>, Pierre-Hugues Husson <phhusson@freebox.fr>
References: <20240613-hdmi-tx-v4-0-4af17e468699@freebox.fr>
 <20240613-hdmi-tx-v4-4-4af17e468699@freebox.fr>
 <348e16f1-0a1b-4cad-a3f0-3f7979a99a02@linaro.org>
 <pprbxhow6gl6bqlhzoiozz7ymwqk5uwuyuwclviulie4ucyjok@xv34zrzw72oz>
 <b6676951-33a2-4c3a-bb29-0d1ea7ad33d2@linaro.org>
 <c18c3acc-8f08-1384-0d99-509ffd663879@quicinc.com>
Content-Language: en-US
From: Marc Gonzalez <mgonzalez@freebox.fr>
In-Reply-To: <c18c3acc-8f08-1384-0d99-509ffd663879@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240619_085633_929677_61D8064B 
X-CRM114-Status: GOOD (  16.76  )
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

On 17/06/2024 19:14, Jeffrey Hugo wrote:
> On 6/15/2024 5:35 AM, Konrad Dybcio wrote:
>> On 14.06.2024 12:33 PM, Dmitry Baryshkov wrote:
>>> On Fri, Jun 14, 2024 at 01:55:46AM GMT, Konrad Dybcio wrote:
>>>>
>>>>
>>
>> [...]
>>
>>>> GCC_HDMI_CLKREF_CLK is a child of xo, so you can drop the latter.
>>>> It would also be worth confirming whether it's really powering the
>>>> PHY and not the TX.. You can test that by trying to only power on the
>>>> phy (e.g. call the phy_power_on or whatever APIs) with and without the
>>>> clock
>>>
>>> I'd prefer to keep it. I think the original DT used one of LN_BB clocks
>>> here, so it might be that the HDMI uses CXO2 / LN_BB instead of the main
>>> CXO.
>>>
>>> If somebody can check, which clock is actually used for the HDMI, it
>>> would be really great.
>>
>> +CC jhugo - could you please take a look?
>>
>> Konrad
> 
> Documentation is not great but it looks like CXO from what little I can 
> find.

If I read correctly, the conclusion of this sub-thread is
that the clock tree described in the patch is correct?

HDMI controller:

+				clocks = <&mmcc MDSS_MDP_CLK>,
+					 <&mmcc MDSS_AHB_CLK>,
+					 <&mmcc MDSS_HDMI_CLK>,
+					 <&mmcc MDSS_HDMI_DP_AHB_CLK>,
+					 <&mmcc MDSS_EXTPCLK_CLK>,
+					 <&mmcc MDSS_AXI_CLK>,
+					 <&mmcc MNOC_AHB_CLK>,
+					 <&mmcc MISC_AHB_CLK>;
+				clock-names =
+					"mdp_core",
+					"iface",
+					"core",
+					"alt_iface",
+					"extp",
+					"bus",
+					"mnoc",
+					"iface_mmss";


PHY:

+				clocks = <&mmcc MDSS_AHB_CLK>,
+					 <&gcc GCC_HDMI_CLKREF_CLK>,
+					 <&rpmcc RPM_SMD_XO_CLK_SRC>;
+				clock-names = "iface",
+					      "ref",
+					      "xo";


Regards

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
