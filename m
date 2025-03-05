Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15B9BC282D0
	for <linux-phy@archiver.kernel.org>; Wed,  5 Mar 2025 02:39:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XulZh9QvMiZNgGcM7BcjJC2sbMmWHMJXFoMUuaeEKLI=; b=Dusd4sbLOdE3kf
	43P1/LE4HddjdiF9c8iJl4MNFxvE30BWDOjvqxG0fGgT7d5N6jzqeh2U/9qq1njVB24CkVQcrXT3P
	ExqAe9wy2KhYIq+HfBMrSaPoXe4frIVDSxyenBC9rZE81hx3uAluEVkPDsJRvhjqDBfGDfFel7HJl
	36fAu+1bzwcNNEZdDShW96GhU0HjRr5KWXu8r4h22ByPhIfRWnUeVuQfnpJR7z6ZoYbXp+j0cymsK
	NM07Y3kwlSBe3uSsOR5O8CqeO5bOP9/BoI+hyBFd/fRgBMWieShyCWuhovLq5ngae1nl4KJf/Gvxk
	vaxTpfzzOJljABkHVVkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpefM-00000006ogF-2QYU;
	Wed, 05 Mar 2025 02:39:24 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpeey-00000006oc2-3o99
	for linux-phy@lists.infradead.org;
	Wed, 05 Mar 2025 02:39:02 +0000
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-30613802a59so71195691fa.0
        for <linux-phy@lists.infradead.org>; Tue, 04 Mar 2025 18:39:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741142339; x=1741747139; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rLGnKKW2QVH83jr7sLdLSDsyrmFRn2bnko/hsD8r/Pg=;
        b=WIPkfMBfo9/6jYmrT3j7KgRd/Sp5QPVIeXLXFN2yhy+VoBpXNYGYMOENg1nxxLwY2I
         z3hYJEh2TL8edIHsqk/0DdZ6k6+J+mUqW3BM8hYVvzh3YMYAmgTdMSBqmt75ivLvWhH3
         d6C35Q74YDtp1g2LywBqv6QiKl5DVBCSDkiwBPkq/h9fZ5dgvOSG688A8KJDKp5eZz1k
         7K8hiO7/6zlda44gYXfiKqrrcb38Jbwen9olHroI/Yx4hY8CW7/bz4hAnNSHIgavR8+8
         5HMdVBxEikk4e1HX3BcOnOtVMcwoKVkvZlCX2u9KnWh4fZwSlVq1M0SO3GMbR3HeVfut
         1vMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741142339; x=1741747139;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rLGnKKW2QVH83jr7sLdLSDsyrmFRn2bnko/hsD8r/Pg=;
        b=FzPf4zPHvmQfaxGjU4ge39IVvtJT1+f32aKEavbgejAhUhoy+gOJQwSvq7jxa+C9GP
         x1hPT1KMhp7jP3qQRuZOwktFlWoZx1CnbxpbI4O2AsqNzr848UMb2KggU/54avNNysHI
         SwhmZvyaH4BHJPDzd2QdV12/8R3otig9bzB9rSyrWUHEwssCoegj/KNQcUu+mQu+AYQO
         oG+nhrVBWqr68T2ELMNNKvYAETQ4c6XkPhv2JA/z4eRy5CYh39MyudaxI4IZMQSoNNwq
         +xxjxIaWD0FN8DLWNsciRhLl2eDOrlxYPzj99zMtdtW9Mlp6hCtpK5r72temsp6vVFwf
         pFug==
X-Forwarded-Encrypted: i=1; AJvYcCWUREFY2jYbyZFI3MEV1wvWLMtKDKZ9DWahISXSOI+i+RO9rW376xjiYlHyHQLP8N9J/P8T51ZHcVo=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw1rWCVrCbxu9SLDri879XSNbIT6BJ8od6NxWDx8F5JFYuzhPq6
	1KtKE2LUv/trqYtYcb4oqKptE1ibC/GkXPDCciHbAFeBlfl9q44j8vQwKK56oLI=
X-Gm-Gg: ASbGncuPgYWmBbLg2AQ4QacS9S0/tyUmtaWnpMhowfVpCOE3+IiD9Fr8KcutqmbeFlq
	vbTpHeoF4NH/TREAjdIJ+Z9OQ5SCuHveOSt5jjxMth9RgdhbeHwRjjoIcPZ3oBo98PYZ5OxUSLZ
	XYuyDhXVCHe1Iek9+6QNbjAK+uHnefDAx1Hbnnxe5PqB6C1ouG0DC3YcZW3pK41dpbRK/WHnCRG
	84y9dx/29wX3FROoIdLXytPeqHRwxNZwraUhfL7ph9hEGb3MsqIWh2yjO9oqp4eyNVuwpYv9bkm
	csznPAOvx4o77tSjxszWgNFHW/8XahrQUuHZOIgZeOjskVLN0em2mHeKN3eyUc458DyIZjTYohj
	tqZ5bBbiNexYvLmMx7Mj0XszB
X-Google-Smtp-Source: AGHT+IFcXeQaKKWQj1dnu4UH8WH8BgBFKYFWB8PfbtIdp7r23eOpCjIksDm9zsbkHWStqwV0YfIVwg==
X-Received: by 2002:a2e:be10:0:b0:308:e5e8:9d4c with SMTP id 38308e7fff4ca-30bd7af5da7mr4043671fa.28.1741142339042;
        Tue, 04 Mar 2025 18:38:59 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30bc7264141sm5553261fa.13.2025.03.04.18.38.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Mar 2025 18:38:57 -0800 (PST)
Date: Wed, 5 Mar 2025 04:38:55 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Melody Olvera <quic_molvera@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 5/9] phy: qcom: Update description for QCOM based
 eUSB2 repeater
Message-ID: <6e742b2dke3pcqq3v6nzs3gfvwau4sk4gtadzgca2zk5merzvi@ubc6l3hsafok>
References: <20250304-sm8750_usb_master-v2-0-a698a2e68e06@quicinc.com>
 <20250304-sm8750_usb_master-v2-5-a698a2e68e06@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250304-sm8750_usb_master-v2-5-a698a2e68e06@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250304_183900_947843_81FAF0D3 
X-CRM114-Status: GOOD (  12.57  )
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

On Tue, Mar 04, 2025 at 01:56:38PM -0800, Melody Olvera wrote:
> From: Wesley Cheng <quic_wcheng@quicinc.com>
> 
> The eUSB2 repeater that exists in the QCOM PMICs are utilized for several
> different eUSB2 PHY vendors, such as M31 or Synopsys.  Hence, the wording
> needs to be updated to remove associations to a specific vendor.
> 
> Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---
>  drivers/phy/qualcomm/Kconfig | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
