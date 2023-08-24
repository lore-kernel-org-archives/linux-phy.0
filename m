Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BE87C6FA8F
	for <linux-phy@archiver.kernel.org>; Thu, 24 Aug 2023 09:15:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yzEl3/1CMcWOMchwsNKOckvyl7hNupBd7a4yk/RiC/Y=; b=B4N9FybtIe2lN7
	2/jRyFvsNA62KjVzFO0wA/1JxWNzFmX1JC0h52XVr3mLkYn17udVq1c6FvHzGjkgC5NyB1mupBsQ3
	V4h5x1PoGQMLMl+nhKPXqMC7NkTU1k3YGFMxxVkiBufeahViYHp4EMKuk175eHyJnvQyMQOpaie7t
	72PxKa4C6rwubt5+BnQwezqY9pw12zRX8wN6o7gYvyik7EPremJRFSci0JTbRpd3UhQYYrYK1yLGZ
	EQEQzZ4ZdhCLHqmmBZhepDTaSXw7E/5HMmrxHKz7Hsbw9SNDfM+SBxnnpBcWYwYIQcz6k+59r8Pkq
	UN64DuHgxzHoPXb1Yo0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZ6RH-002fQu-1t;
	Thu, 24 Aug 2023 09:15:39 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZ6RE-002fPt-34
	for linux-phy@lists.infradead.org;
	Thu, 24 Aug 2023 09:15:38 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-3fefe898f76so17841205e9.0
        for <linux-phy@lists.infradead.org>; Thu, 24 Aug 2023 02:15:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692868534; x=1693473334;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dSNrypysIUyjhflg0pjRFYp9Ry192UTXWv/38Id2IQ8=;
        b=G+RL1cOiFx1ZNXgOtfW0tnCv3d/y7lh5b4upmjgkNKZJWPQKWiOiEaE8nq7UtnKZM3
         iJAQyBuwCCXIITLUaWc3mW2weqDeVzu+m3dw7E3OF+/s3o2fIct+v/JligOuKlsVqJ1+
         qekvMO6m85EFu+HSL1T1u11kw1X9DxksYHeE1WDu8Gp8Zn6TA5mcWn735aLXycPezfKu
         yNG99EWtOK/CsrIphjGAEVoAXlUzx5BnB3ZETSqXbBbMaamtcDBEy1u3LgXtgf4U22R2
         +UHnWGA0YliYXDYLMk0w5TF1s39JsmR5zzRgobuvfGRM1xTuqD0iLVXjJbg8yMIK7cl5
         VB4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692868534; x=1693473334;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dSNrypysIUyjhflg0pjRFYp9Ry192UTXWv/38Id2IQ8=;
        b=RHr+n01/cDahLN5myU29oyQH42b+9jCCnn5jTAdHIePWP9YYTva2SvngiB0uRfNcI7
         n0T2qdUGJTsPrxct8bmTu7aWX2LCAcZMX3PldkjbwyxUzRe0U4xezHZxodFXOW+TUkUY
         J7ve80zGl8bvdTDkyrFGFNgTEv/WPMBFIcjr1qS0W2D5JCe0dZJdaGVuqQrVnpcB7x74
         Jldal+x3YQoV+mdZqE+Iih3eWm45qf5Iz2efSDqFA/yhvr1Rp7ktYDkKzeU3IudufZRo
         Nj0kAe5Hh7kmjir3FPu18jEcFe2GnGwgCBLA0zaSpm0SYJnaN0aRrlu78Yog2jYFW8z0
         J0BA==
X-Gm-Message-State: AOJu0YyhzewdisMK6wFV5qMuODn0EkAMQiLgHyZh9hrlQ4uEtgBWx7Yr
	W/PwLjfrzSjqoAjRSTyMcxj5ow==
X-Google-Smtp-Source: AGHT+IFUjl6BZrl/d+NjXw3KBR3w0TJiRQYHAefmOEMmLB1LuEVL0FTlBvorJBHiJH2XS9qFRF3p8A==
X-Received: by 2002:a1c:f204:0:b0:3fe:d1e9:e6b8 with SMTP id s4-20020a1cf204000000b003fed1e9e6b8mr11228419wmc.12.1692868533742;
        Thu, 24 Aug 2023 02:15:33 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id s10-20020a05600c044a00b003fbe791a0e8sm2156285wmb.0.2023.08.24.02.15.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Aug 2023 02:15:33 -0700 (PDT)
Message-ID: <bd0c9cba-41e2-b449-f383-9970d00cb723@linaro.org>
Date: Thu, 24 Aug 2023 10:15:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 0/2] phy: qcom-qmp-usb: fix initialization of PCS_USB
Content-Language: en-US
To: Adrien Thierry <athierry@redhat.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Shazad Hussain <quic_shazhuss@quicinc.com>, Vinod Koul <vkoul@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
References: <20230823171208.18382-1-athierry@redhat.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20230823171208.18382-1-athierry@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230824_021537_040368_3D488D43 
X-CRM114-Status: GOOD (  12.37  )
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

On 23/08/2023 18:12, Adrien Thierry wrote:
> This series attempts at making sure PCS_USB registers are properly
> initialized. Please note I don't have access to the qmp phy datasheet and
> only reasoned from the code, so I appreciate a double check to make sure
> I'm not messing with the registers.
> 
> Adrien Thierry (2):
>    phy: qcom-qmp-usb: initialize PCS_USB registers
>    phy: qcom-qmp-usb: split PCS_USB init table for sc8280xp and sa8775p
> 
>   drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 22 +++++++++++++++++-----
>   1 file changed, 17 insertions(+), 5 deletions(-)
> 

How is this series tested ? What are the before/after results/effects ?

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
