Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B704ED0D78F
	for <linux-phy@archiver.kernel.org>; Fri, 11 Oct 2024 13:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G0DPUtN44Ud4nqrgXdPjnWiputwvKiXmkyxq2h2JAB8=; b=uGkXySdVO37eUi
	k+/Cugfio19miIdv+5puCWfrQJgO0PXOA/cTMNCf9D3aRqeGJcsKGiWJ0EluJLCRJEr7FDCL7riI8
	cWtnT9vPc5IN4/hgggBihSFyjk/oUjUWuncFgkaqvR9IG6WKjwI6CXa4oXY1pEmLbj1MOgruWXGbZ
	Kparfw4d0bupHlqmRdtKVlXBiK4ebAGyV9n49wOsS8yv6qZpOhWtwitegQojEmu4WUGAH5UuTkFnw
	prdq1GVpTcbaSoqcl9EldaFR/LNX3ox7lMc9FLN6OArxwX+OfRWd/DCNuGv2oWzyY32zLGlmHEXBA
	8Kuq16saAre7h07FrJwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szFyL-0000000GVQM-1FQb;
	Fri, 11 Oct 2024 13:46:25 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szFpD-0000000GTPm-2sOr
	for linux-phy@lists.infradead.org;
	Fri, 11 Oct 2024 13:37:01 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-539d6935b93so1287398e87.2
        for <linux-phy@lists.infradead.org>; Fri, 11 Oct 2024 06:36:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728653818; x=1729258618; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LLXvMXXy+onUMhQ6b0XOwwTzakrzaQZRd+ecTFnJkKU=;
        b=wFkej8/YIFJjuzVduWze4/hIzyj4D3/AYZcLc2fKPHfYTs2/5AjcPVuo8MdtN9RuLe
         di/FQLyTivkULsUF5tYgq9bDyVowb3s2cTHcmDkjvUM8i9bV3KCb8oCP43Sc+3TNXGrI
         37v1u6P7YsmcTcc5f1QzkpLBCS8Kd5Xw0vYN9aCJ2fHBh8M1yF/Q3lAfp6j1NKfAsvxl
         /2NJXA5D7PENzB8To9dxcEqRdGBwp7zdeyRoDM5HB0/jy25IPUxiMAb4npsEzYcKqw8j
         tF6Svz5PwIBiyycr1HQq6NqE2F0alDEENqVLgGG9iYt17JhFSSCxxhuBpUXwPw8TUXQ2
         Y4lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728653818; x=1729258618;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LLXvMXXy+onUMhQ6b0XOwwTzakrzaQZRd+ecTFnJkKU=;
        b=JpacfMMxD4VYq+zGecIz+LWWKT50PaMAA9tYLmHauLPhx+SctiKbh/zbRfQa0vbhKa
         sSpd+yZI+zvViIlTuDVnx6/NgNRvjLlNRblORMoTK3QcgHjjWpNhRCNy8jmqpYx4m64N
         yCXN2IREL6qgUjho8ljDh26FpzjnDB0stwMysfHXicVy9bKV7FoYbEIM7oVYdBbpYAIL
         +AkcDWBziZdd22Lh95luYBtNbMQRTpShd+62dvTK2P5DsgoUBZuHIdEWxz4bzwlyuz6R
         1sprEhEgIX3eJ03YiNcTPwvyHT8grL+IAkGAAFMuB85ekxERm+T09Q2ZLNSsSdblUrgo
         jxIw==
X-Forwarded-Encrypted: i=1; AJvYcCVHKGelnxp9c/OP92tkQc9qWQ9UP830faBOGRjYUeFbkgToKuRqdQDKhTdq+rutkiDBBFxh8Qot6s0=@lists.infradead.org
X-Gm-Message-State: AOJu0YyqCYLiyB4q25DPWeKggszNFLEPyAaTvI9Gm9JabxCR3IxnuvDg
	K77+heoLNKdUxk2zQK8SUDS84n/JWSRWIjeMN9dIRylaTYk3UqsWFLqRY5r0xOE=
X-Google-Smtp-Source: AGHT+IGntTefT/PAzN87k4mxkHYGpta3nc0hWK276rYQ9gJXg9bf9uIR3RGfaMXE2WNaM7hpJi69bw==
X-Received: by 2002:a05:6512:39ce:b0:534:5453:ecc8 with SMTP id 2adb3069b0e04-539da5abc3cmr1478285e87.52.1728653817689;
        Fri, 11 Oct 2024 06:36:57 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-539cb90527dsm605226e87.248.2024.10.11.06.36.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Oct 2024 06:36:57 -0700 (PDT)
Date: Fri, 11 Oct 2024 16:36:55 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Qiang Yu <quic_qianyu@quicinc.com>
Cc: manivannan.sadhasivam@linaro.org, vkoul@kernel.org, kishon@kernel.org, 
	robh@kernel.org, andersson@kernel.org, konradybcio@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org, abel.vesa@linaro.org, 
	quic_msarkar@quicinc.com, quic_devipriy@quicinc.com, kw@linux.com, lpieralisi@kernel.org, 
	neil.armstrong@linaro.org, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-clk@vger.kernel.org
Subject: Re: [PATCH v6 6/8] PCI: qcom: Fix the ops for SC8280X family SoC
Message-ID: <wfwswubquat7a7rprv2oqqzywiiosvmvhefty4tlfe63rlgzl4@6ckw7xrttqnt>
References: <20241011104142.1181773-1-quic_qianyu@quicinc.com>
 <20241011104142.1181773-7-quic_qianyu@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241011104142.1181773-7-quic_qianyu@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241011_063659_745024_3567D2F8 
X-CRM114-Status: GOOD (  10.32  )
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

On Fri, Oct 11, 2024 at 03:41:40AM -0700, Qiang Yu wrote:
> On SC8280X family SoC, PCIe controllers are connected to SMMUv3, hence
> they don't need the config_sid() callback in ops_1_9_0 struct. Fix it by
> introducing a new ops struct, namely ops_1_21_0, so that BDF2SID mapping
> won't be configured during init.
> 
> Fixes: d1997c987814 ("PCI: qcom: Disable ASPM L0s for sc8280xp, sa8540p and sa8295p")
> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> ---
>  drivers/pci/controller/dwc/pcie-qcom.c | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
