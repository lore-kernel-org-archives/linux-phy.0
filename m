Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16DF8CD5BCF
	for <linux-phy@archiver.kernel.org>; Thu,  5 Sep 2024 16:15:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+CpHW0y/77W83FnQbuM40HHvn5KLAkQrufmk+JCC7ns=; b=bjtEKVTGlLzDZ4
	6Udu0fhno6XLbTltYWwppXphbUGbu/XF4AlQhlB7dLiXoWcNaUqcczGoZAs34nFphYKlc47cohmTk
	XsL4aVXUo5aTeh9kKKW9xq3enG3T1yERkYHDAHeItT5aF7MBPslZrRJZuPqg/1xqJ06VJvgnoutLW
	r4ELCKiqKWUPpJxD2Yqjb+OP94mNqOd38clFJ3Tartc1okzio8fRhYarwshs263DBJ7ydkM1itRAZ
	XUwOotr2i8xZ6oPrk4eWqUH0U+fOvhYAshuerDwxTigp4MLwG2/NtsoyZ0WftvHs8KreC7fBwM/zx
	n63YGPx+b1GJC5wDMH6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smF91-000000094g7-2WdS;
	Thu, 05 Sep 2024 16:15:39 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smF7k-000000094Sj-2RLz
	for linux-phy@lists.infradead.org;
	Thu, 05 Sep 2024 16:14:27 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-374cacf18b1so671772f8f.2
        for <linux-phy@lists.infradead.org>; Thu, 05 Sep 2024 09:14:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1725552858; x=1726157658; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SQCzkFNF6R0y5OgjwiBOcxXDxjjM7SPAsOwwAJex/C0=;
        b=mS5F+9OIkoQHXo1i/OQV04EalPKhVmdZVEH63KnbWFFfmUiNpj7O9NARrPwHB9+7IU
         vxXWLCzd2SiZPeSK2ybBEU/5PRL5+AMGF8/vi3RKbrg93PQrVjq2xtH3dI2+kLcIVH32
         Mo/wbrGfJIql8o0UewYtJjKuTUyXVKXH4S/7PFahZXPzg5ELI1SnWnFYfv1cLiYJ8e9a
         Us4dMfzCigoPLomdP9Sxof/zM7SmQOzs9Osl7nk2ALRrqI7at+9Gx5XC2vJb6aMGBJqK
         sdDYNbrwxV9bMArGAj3u5D12x0bFXLpBB1UFncnfSoZ5IqqtdhfTpQkoAh8JMiDVau7n
         oyFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725552858; x=1726157658;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SQCzkFNF6R0y5OgjwiBOcxXDxjjM7SPAsOwwAJex/C0=;
        b=sjmeUcBPU+3xT6h3wdvD1CbgRFEPldIjLyxMW/C9qU0P2hQmsGr1eyN4lHlXSNh9Ff
         x5GykIwNCbrq45fKbis4eZlqWBiFDwOsXmS81NH6HXV9a4nlrQ5bfdHEf1GL59y/abpP
         LGC5Bn/HHyAts/gfmjykLCnuMi4NfirhLvuQHKrf87aK2t7VzZWaRfo0W8eg21wBkyZe
         OLby+VG2KN3QWbDfDmCkDSEFObx5EUpUB44ecaG1pbYPFIb56gbZD1YnQ5sd4oQk121j
         LpZMMMzdO+rn1VDuJXRfAuk7lkj6lLoiaj43vy7+U9j+egflZOqZp4rYbyMeoFumjPJg
         1/hg==
X-Forwarded-Encrypted: i=1; AJvYcCUw9N6vDovZYHFMxid03BHp94LPARUL8PkI6oiDfKKNS/79zFOLJZzQW+Cze8aXLIhzMm0I7KgvjPo=@lists.infradead.org
X-Gm-Message-State: AOJu0YzF5ikjvWoYx+xTDNeVQU8ERRg5fjB7tcW37u4l4/GY3wTR83Ig
	4beyR8CnO5lLxWs08tUcavIQMuyuh9DxdtGASQEeZnZDVg4s8kF6TCGz9ac4hAU=
X-Google-Smtp-Source: AGHT+IGTeRidPfzjWMeiTd2JcaXWh07h5yeyFVwKWBYencGxKEZw41jcBDd8CO30rx53dbUA3JWpWg==
X-Received: by 2002:a5d:6991:0:b0:374:c7d1:2ac0 with SMTP id ffacd0b85a97d-3787e496687mr2221867f8f.47.1725552857141;
        Thu, 05 Sep 2024 09:14:17 -0700 (PDT)
Received: from [192.168.108.50] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-374c6543ee3sm12569790f8f.12.2024.09.05.09.14.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Sep 2024 09:14:16 -0700 (PDT)
Message-ID: <747218ab-86a1-4308-b34a-98064ccdac30@freebox.fr>
Date: Thu, 5 Sep 2024 18:14:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 0/6] HDMI TX support in msm8998
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Rob Clark <robdclark@gmail.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, Arnaud Vrac <avrac@freebox.fr>,
 Pierre-Hugues Husson <phhusson@freebox.fr>,
 Jeffrey Hugo <quic_jhugo@quicinc.com>,
 Conor Dooley <conor.dooley@microchip.com>
References: <20240724-hdmi-tx-v7-0-e44a20553464@freebox.fr>
 <172550712143.3299484.1580127137460046609.b4-ty@linaro.org>
Content-Language: en-US
From: Marc Gonzalez <mgonzalez@freebox.fr>
In-Reply-To: <172550712143.3299484.1580127137460046609.b4-ty@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240905_091420_806434_6B8DC59E 
X-CRM114-Status: UNSURE (   7.58  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 05/09/2024 05:33, Dmitry Baryshkov wrote:

> On Wed, 24 Jul 2024 17:01:33 +0200, Marc Gonzalez wrote:
>
>> DT bits required for HDMI TX support in qcom APQ8098 (MSM8998 cousin)
> 
> Applied, thanks!
> 
> [1/6] dt-bindings: phy: add qcom,hdmi-phy-8998
>       https://gitlab.freedesktop.org/lumag/msm/-/commit/8886def25eef
> [2/6] dt-bindings: display/msm: hdmi: add qcom,hdmi-tx-8998
>       https://gitlab.freedesktop.org/lumag/msm/-/commit/656810411b1d
> [3/6] drm/msm/hdmi: add "qcom,hdmi-tx-8998" compatible
>       https://gitlab.freedesktop.org/lumag/msm/-/commit/a61eb17f40e8
> [4/6] drm/msm: add msm8998 hdmi phy/pll support
>       https://gitlab.freedesktop.org/lumag/msm/-/commit/caedbf17c48d

Hello Bjorn,

Now that the binding & driver parts have been merged,
(Thanks, Dmitry! And thanks to all reviewers)
am I right to assume that you are supposed to pick up
patches 5 & 6 for the msm8998 DTSI?
(Hopefully in time for 6.12-rc1)

Regards


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
