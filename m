Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F344BD49219
	for <linux-phy@archiver.kernel.org>; Mon, 18 Nov 2024 12:56:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N2bPmtGFSgAdy+Tf8RIQa8D1yCSxzfyGYMl0RKgMcVE=; b=sbH4XH9WHRt5iz
	FU4SEJot66S6pKtDT0/PDtDPXWOq0dYOERF0CaCJwykMMJ55gYF459LOnYLfpIIecbbvVcT0pB+4s
	Z5QENwNpJaqUb6hkEPv9GHCQBWJxPYoeL3X+JxPq47h6gyM1DtwNTpmJ7/oBGs7R2yV2q4HQp2lds
	bsidm/s0jMwtVBsobGvMCNJMne8R99uBhd+OmkfEobnYx2amu9Pqp+IGBVkdDjxkW18GKFA1T7V7a
	pOU8ZP1Gpl1tG5I1ds65yFI/8nBIRw+K82BHTQT4nJYA/tro3lkXd/aDP82i5i/n6SEQCuxK5DxsV
	tQoJ9lgHleJn6V2fi2kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tD1Ie-00000009Sfq-0JIc;
	Mon, 18 Nov 2024 12:56:16 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tD1IX-00000009Sew-38k0
	for linux-phy@lists.infradead.org;
	Mon, 18 Nov 2024 12:56:14 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-539e8607c2aso4279672e87.3
        for <linux-phy@lists.infradead.org>; Mon, 18 Nov 2024 04:56:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731934568; x=1732539368; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=jAqwMGBkTmHKZ4CNoWBz4QXL8qsRGD9BwJ8T1sZ1LU8=;
        b=H75DsFUYlExvGvnR/euaiY0snf5HotdJv4HTWtRWy/5W3LPwpADIQo6Fq8k569OP9y
         12M+xEmDt7Gt6QH0ZnEhpK/PNoJg/S2sKbtHEba6WspVLYBkHoBi1bhFuxknDl65vwL1
         48N0L/P03MVzF4aS1+DoPcMtWMjkrFJD4ewIpCtl7+NqvkZQE2TkFSNMk9u2FacIbQCm
         P6Z5Tsa2m+HXtf1tmR1VrTSRyd2DqH9skOzqTN4lsWgPga5h/shg409TCKHJW4xBAMoY
         JANNO5Hs+L1TOYvF05rJdWNBCb86peQhIdRCg+05DTXq3s2Xqo7dkm6cVjqWj6Csz5Ie
         MzDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731934568; x=1732539368;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jAqwMGBkTmHKZ4CNoWBz4QXL8qsRGD9BwJ8T1sZ1LU8=;
        b=Obw4ciobHQukafUWuDeZ8GXPoxtfmXkNgxNJVyjJnDsYvNp6dNc6O2F5PXxUEHFU50
         XbscFjv4sYA4JIdL2E/OqBj+FDn0sUdTuiNdxW2+KNl5Vo832NYsQCa9O5sRGQEF9Zxi
         FfNL8qeP47hAZozYGJlBwqSLZcWQba7upK7QNqsDoH0M0slgGX40W4LZ4xLoJJmyrMgD
         /W/IzdAltTF6t6Itcrgu0wL/6i5Nd+JJqfdhDLFb3xzpw+Hj2MqCJObX0BUEi4PbjF6K
         qDH7+HVGlgI0HHkoo5Im0fxBRLlL2n3sdXJWVhucwBm6c93iVoIqdDw3dYot/I41Qm0L
         CP+g==
X-Forwarded-Encrypted: i=1; AJvYcCUXR5Q59oKojm3oGPOguLo0r5gC3JhnR5V7454Ms9eq2P3M4dpibin22xYBamXTAVGSny0eOYr6WyY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yynyi1WmTwCEwYKpLnM0VpB34Hu9qs1gkXgEk26vcKCayUqwuVB
	PXXlDBzDYQjOP9Sx4rMDZihzi1QsGrxAmfhWWJs2/BOQTc8ZpKrDKDkGz7EVD1M=
X-Google-Smtp-Source: AGHT+IE1rwlqvuyY2O92e5DgZac5q8JPauzE9y+A00EL2MXWGS+FvI+OvGI5kWfZ80rMTLt0Z01AUQ==
X-Received: by 2002:a05:6512:398e:b0:53c:7652:6c7a with SMTP id 2adb3069b0e04-53dab298aedmr3661459e87.8.1731934567633;
        Mon, 18 Nov 2024 04:56:07 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53da6548e40sm1594497e87.258.2024.11.18.04.56.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Nov 2024 04:56:06 -0800 (PST)
Date: Mon, 18 Nov 2024 14:56:04 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, gregkh@linuxfoundation.org, 
	andersson@kernel.org, konradybcio@kernel.org, mantas@8devices.com, 
	manivannan.sadhasivam@linaro.org, abel.vesa@linaro.org, quic_kriskura@quicinc.com, 
	quic_rohiagar@quicinc.com, quic_kbajaj@quicinc.com, quic_wcheng@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v4 6/6] arm64: dts: qcom: Add USB controller and phy
 nodes for IPQ5424
Message-ID: <q3twp57aiwvsj2wimvszp7ecr5s4ldacxghzzepmxzcasgy5a4@nnqvq6tgruaa>
References: <20241118052839.382431-1-quic_varada@quicinc.com>
 <20241118052839.382431-7-quic_varada@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241118052839.382431-7-quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241118_045609_788371_D00C3153 
X-CRM114-Status: GOOD (  10.70  )
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

On Mon, Nov 18, 2024 at 10:58:39AM +0530, Varadarajan Narayanan wrote:
> The IPQ5424 SoC has both USB2.0 and USB3.0 controllers. The USB3.0
> can connect to either of USB2.0 or USB3.0 phy and operate in the
> respective mode.
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v4: Fix regulator names to match with other Qualcomm DT files
> 
> v3: Regulator node names, labels and 'regulator-name' changed per review suggestions
>     Stray newline removed
> 
> v2: Add dm/dp_hs_phy_irq to usb3@8a00000 node
>     Add u1/u2-entry quirks to usb@8a00000 node
> ---
>  arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts |  66 ++++++++
>  arch/arm64/boot/dts/qcom/ipq5424.dtsi       | 159 ++++++++++++++++++++
>  2 files changed, 225 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
