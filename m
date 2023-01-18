Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80900C6379F
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jan 2023 04:34:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TI30+qQIRUMjhot/Un5ySDOH2rvxR+JAZZrmOiXCWZY=; b=2MdBGGnpNmbHs+
	MuWMPG+CBOIznHurgaDH2MenocmLUusZ/zdnMI0nzc6Pcr3LqnbLHCH+nfliUNfRXWU4BkyH3Iulf
	or0fy7uXBr+vUQu3SPMB4acCgM5IuT5lzho6W5qc78Eet7TRzvYQoiqpuzUlLO+cgLNGqGUHMZvFL
	LBdxuQq1Sp2KgwxCdCKlrExMC4xv2SKPmNxV2qsyKbznGCdTwh2nDi1dRa1QRPpswAgJYQzzC2Hnq
	gE4f+Cz2rfNFRRn0nrNjofq1IK+8+x+81zMbymN7vtuTA64g6qDaxX/cl9uPMbwQzROevl9hRnwPy
	fXOYVbNJVUYdZjCx7EQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI09x-00GsIz-Jh; Wed, 18 Jan 2023 04:34:49 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI09t-00GsIX-09
	for linux-phy@lists.infradead.org; Wed, 18 Jan 2023 04:34:47 +0000
Received: by mail-ej1-x632.google.com with SMTP id vm8so80307966ejc.2
        for <linux-phy@lists.infradead.org>; Tue, 17 Jan 2023 20:34:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9QRiqEIm/55SzWiod6J1S0tN8S9gHuqwPIfY3LIUzYE=;
        b=CkQ+nrOAkSuCp7mMrD3K8TzSBuvsFxd2aXjwpTLPYTAkNV16EF5Z6NGuL0SdCyqF3Y
         b8dVqPf6pVcRtIHzg0ddcGEJ8R72DWRX40wLruO9IUtwo02lmr36z0aj45JOpKoKrcZ9
         AiYWHjFlZPErZb8FSbFNnQ5sNI0O+HN3yGLHfpgwqmuPstOZ7GwZDegGt3EwlCUfDsg8
         qqFF35IK18d49bkLp9b7TpH2Vk4XdEPneiueBJldHD/XcIb0H04RDrjjizEmy0K7VJpC
         xDsPZKtFU3f7j05ngH3ojWbAPu3fGrVjT1CVv6jHmEIkFIca1qlnr7Ic4TdsN8chI5s1
         1cjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9QRiqEIm/55SzWiod6J1S0tN8S9gHuqwPIfY3LIUzYE=;
        b=ORrFwh7c93RJiaLi47+IBmJIGiGvMppAtE6UlhanhRPF4SNKpYP0oZIM28aEkOiBf5
         bu0nZbt5wm7SrWT1fROOUvg8t2UHYDysCusY/BTXvneeojl9xtn8P9x57SrQK+M61HB5
         SZ4gpOSF4jlXsR9sfAICNOUbAMBALXkbulK6/G8ID6Hjoa1ggRRQSiXwlDDlEU1M5oHG
         dhS4BPfXMt8foCbAx370tFmOKsFpxs73fgoF1Pxbnlxl6fCbf2qB6Shdviwo68k1e1DG
         ai1VQmEcsogqG9f6dAyTMgFVM5u7ESoRX/Mh2dJF4+sTnakOTTDn5jo+iZ4/k5E+teMd
         Wulg==
X-Gm-Message-State: AFqh2kqpUgRrRBikHigdGK3b3Z7iEmQL1yjXFHimYw2CSFjRC12BccNM
	slWlZZjHbmg0lh9o0tPSSACv4g==
X-Google-Smtp-Source: AMrXdXu2NLT2a5zzlRnQMmqm67QQgZ3iKnxMMDzynioxIR+84++bUki1rW6n724CqDRQgXpq66VxZA==
X-Received: by 2002:a17:907:9b06:b0:872:f259:a7ea with SMTP id kn6-20020a1709079b0600b00872f259a7eamr5343432ejc.53.1674016482610;
        Tue, 17 Jan 2023 20:34:42 -0800 (PST)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id l2-20020a1709063d2200b0087276f66c6asm1872325ejf.115.2023.01.17.20.34.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jan 2023 20:34:42 -0800 (PST)
Message-ID: <7fe0c49e-a628-8e76-8294-ab8faadb3a70@linaro.org>
Date: Wed, 18 Jan 2023 06:34:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v3 8/8] phy: qcom-qmp-pcie: Add support for SM8550 g3x2
 and g4x2 PCIEs
Content-Language: en-GB
To: Abel Vesa <abel.vesa@linaro.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, "vkoul@kernel.org"
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Johan Hovold <johan@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
References: <20230118005328.2378792-1-abel.vesa@linaro.org>
 <20230118005328.2378792-9-abel.vesa@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230118005328.2378792-9-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_203445_127537_18854E66 
X-CRM114-Status: GOOD (  15.63  )
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

On 18/01/2023 02:53, Abel Vesa wrote:
> Add the SM8550 both g4 and g3 configurations. In addition, there is a
> new "lane shared" table that needs to be configured for g4, along with
> the No-CSR list of resets.
> 
> Co-developed-by: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 369 +++++++++++++++++++++++
>   1 file changed, 369 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index bffb9e138715..6f82604bd430 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -1506,6 +1506,234 @@ static const struct qmp_phy_init_tbl sm8450_qmp_gen4x2_pcie_ep_pcs_misc_tbl[] =
>   	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_PCIE_OSC_DTCT_MODE2_CONFIG5, 0x08),
>   };

I see that the last two patches still use 'shrd' a lot. Does this 
correspond to hw register names or is it just a vendor kernel code 
convention?

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
