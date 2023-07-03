Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0EAE6C0015E
	for <linux-phy@archiver.kernel.org>; Mon,  3 Jul 2023 11:35:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/CZ7DPs8PPMmQXZnl8GpLe+N9JdJ3i8pcLifhC6EdDg=; b=UrXHRVcr1eEuJ5
	GpGAnVI0VsFLn8Bhkl8kYG2mHIt45OAPhSpIOE+0I+eLy93ib9rZo7nV/F8smQCFPYMks8XXVdR4o
	Lvqyl/G6OxRC/dyG/+8u3pQTfOTsuV1s8UWFlW+N4iJzQToLW/ztpfFKoykU8tjwM9XGL0h1q/tLQ
	0Go3dGbT0g82l4gtfnsKRLwpZb1yUo49yJVPJskRxX73GfMDshaq8zIwUlc374YFoSylR5qEFDE/L
	u/fVKi6hLqHWV+pOKHTKh1FS9OO9YNXPfJmqwptkwhRrjIzlhAKEoDUALAgld2deDsTJz1CeOmds+
	PEH08KG+lUJFDXTxO53w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGHqV-00ANoF-2J;
	Mon, 03 Jul 2023 11:35:55 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGHqR-00ANnB-2a
	for linux-phy@lists.infradead.org;
	Mon, 03 Jul 2023 11:35:53 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-4f4b2bc1565so6933969e87.2
        for <linux-phy@lists.infradead.org>; Mon, 03 Jul 2023 04:35:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688384149; x=1690976149;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fR6gW6QqPVhQF4uZh4Ai5jdCPhHvwhrUtKxoyIWDUPQ=;
        b=rHY1DLerRbOhYNNVRe96k8xQpd4pnTJaDLPbKTZXdOKpBuUPCnHMaTGSNfp2vFtENE
         H5Lb2yeylWzK0tBrDgScWRb4bfh2lrfSYdatkGYmNxYtSsnF6rXebe7ABGUwJosyx964
         lMS7tRPEH7717OamE00LZeeg8xWiSRKjbV4+VzAuAB+5DR+muIWcWAiGuMbO5z/DTrPk
         Ptems8E/nkk7JuCSlvfKZoNrqWg5+5Xvq9+79/gLlP+yqFbti5P5G6A0u9UYt0ts2zs/
         dFh/XafzcXrtXkDSKDBR3XZ/sgpHcnP1sAGpkOUifYfvR/qm48wgZFV4ez05mZxTG4Rh
         x9aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688384149; x=1690976149;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fR6gW6QqPVhQF4uZh4Ai5jdCPhHvwhrUtKxoyIWDUPQ=;
        b=PdHZ5eZiRE9mfQZ6sCPVTlxNTV4C3BlxCoowIKFGOR8nRuQjdPLzpea+qg4i1SDUMJ
         7vOxikExmY92FvQrSHZnEU7ax3p9C0huoYCmUpZcfQwB5mWeq//n4QFb1sd/vfmg9qnz
         7Jb4a9EEnvfXrBDhAYGRutyCbdOWSzHjaKUq0lAeAJa5bacVNEEHzM1i42TC5NG6ud/X
         u5Ikp7RQI7iSdbVtQEzIh821TJlVETwikXQzIVJ0ul8SL8yXXT8/pUBzt0uL+Ba3hDgE
         zht3rroaTbYAXalU68DfN+YaC4sS5PqZXadGQvo7OmDFYc6oaeNuReMDUj7TtxTQACb9
         8frQ==
X-Gm-Message-State: ABy/qLYWv60ya9WBa1j3KtJ6ZoWQkqvSpDvlHKnqKNC4X23YfMfAkb58
	D3i6NszA6EM6BN/oHrWsRfuk7g==
X-Google-Smtp-Source: APBJJlFYyFRmaxnd3ulQxmEgzLYB26UKCRVr7Zjj1tFIlXUhU4KJAPhpjOqh5tgH/FdV8SX0qj+xSQ==
X-Received: by 2002:a05:6512:308a:b0:4fb:89bb:bcc4 with SMTP id z10-20020a056512308a00b004fb89bbbcc4mr7744687lfd.51.1688384149094;
        Mon, 03 Jul 2023 04:35:49 -0700 (PDT)
Received: from [192.168.1.101] (abyj26.neoplus.adsl.tpnet.pl. [83.9.29.26])
        by smtp.gmail.com with ESMTPSA id q28-20020ac246fc000000b004fb96436ac7sm2623973lfo.250.2023.07.03.04.35.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Jul 2023 04:35:48 -0700 (PDT)
Message-ID: <43f16d47-3318-7a9f-ac87-8e595435b6c3@linaro.org>
Date: Mon, 3 Jul 2023 13:35:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v2 08/15] drm/msm/hdmi: move the alt_iface clock to the
 hpd list
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Marijn Suijten <marijn.suijten@somainline.org>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Stephen Boyd
 <swboyd@chromium.org>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Bjorn Andersson <andersson@kernel.org>,
 linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, linux-phy@lists.infradead.org
References: <20230625114222.96689-1-dmitry.baryshkov@linaro.org>
 <20230625114222.96689-9-dmitry.baryshkov@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230625114222.96689-9-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230703_043551_851096_C3EE6771 
X-CRM114-Status: GOOD (  14.61  )
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

On 25.06.2023 13:42, Dmitry Baryshkov wrote:
> According to the vendor kernel [1] , the alt_iface clock should be
> enabled together with the rest of HPD clocks, to make HPD to work
> properly.
> 
> [1] https://git.codelinaro.org/clo/la/kernel/msm-3.18/-/commit/e07a5487e521e57f76083c0a6e2f995414ac6d03
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  drivers/gpu/drm/msm/hdmi/hdmi.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/msm/hdmi/hdmi.c b/drivers/gpu/drm/msm/hdmi/hdmi.c
> index 3132105a2a43..0fc3df43aa70 100644
> --- a/drivers/gpu/drm/msm/hdmi/hdmi.c
> +++ b/drivers/gpu/drm/msm/hdmi/hdmi.c
> @@ -248,9 +248,9 @@ static const struct hdmi_platform_config hdmi_tx_8960_config = {
>  };
>  
>  static const char *pwr_reg_names_8x74[] = {"core-vdda", "core-vcc"};
> -static const char *pwr_clk_names_8x74[] = {"extp", "alt_iface"};
> -static const char *hpd_clk_names_8x74[] = {"iface", "core", "mdp_core"};
> -static unsigned long hpd_clk_freq_8x74[] = {0, 19200000, 0};
> +static const char *pwr_clk_names_8x74[] = {"extp"};
> +static const char *hpd_clk_names_8x74[] = {"iface", "core", "mdp_core", "alt_iface"};
> +static unsigned long hpd_clk_freq_8x74[] = {0, 19200000, 0, 0};
>  
>  static const struct hdmi_platform_config hdmi_tx_8974_config = {
>  		HDMI_CFG(pwr_reg, 8x74),

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
