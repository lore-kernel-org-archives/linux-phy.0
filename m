Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD15CCCD187
	for <linux-phy@archiver.kernel.org>; Tue, 14 Oct 2025 10:09:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f+Hg6mlRc8UD70oj1v0rE/kBpD+jXVFD+4jTqOK9w6g=; b=pjNBaueuy3Hf+n
	QbfwkGYaxHy28uh2m67cBQ+VoffzL+EzOhIqDO9hJ/igD4Gu+9wX+SFql24uM3MjqcwRlaHN+i+Rm
	W0zHiIGcxaBrW7wgED2Q7lrtnWG+bFRznCR7+wh8UtvlwXeLYE+2YWYDWWLDucU6VRa0xdKtDpl74
	/YXt1D4mHShAIf0oJj8sQpHr4ZvgbfGlRw20tUaceuv0ntx5QL5DtdHdlghfsQYcf2QU7rG0dQq3u
	KmJ5Q6h6XsLQiQaPlk16T8XI4VLu02kbJtSh6dZ1uhGbUhQYxE7xBGTxF+k0zuY7yjYIcw6gNAl7v
	TEFIYWGaZTI8+X7CV1wQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8by9-0000000Fso4-1sec;
	Tue, 14 Oct 2025 10:09:25 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8by6-0000000Fsn2-1zYt
	for linux-phy@lists.infradead.org;
	Tue, 14 Oct 2025 10:09:24 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-46e47cca387so51130365e9.3
        for <linux-phy@lists.infradead.org>; Tue, 14 Oct 2025 03:09:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760436561; x=1761041361; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=d/ttxF/dZw7J4JSYZeZOo0fN3D/uqFn7kWok+tyJugc=;
        b=UzXq6xsKVjgrSCYY1ZcBLSyADxnrVFkYEtvygkvt2T5WoaqLkBi3rBXq4vZVBy00+q
         +8HlmksECOWoX5PPTuoyzMA2F3Fsoyj77fbaJ9LGFbQADmD+pU/kX9cdFmVKf2gl1Ysa
         5j+qHnh8TZELjUzGhdR3qN1JG+x8yFS3XX+d7iQ2S0kAFhCTkqjJB0Asz0j7OCjelY9w
         tH2iU+Pq6cLPuO1bvCEfuGkoztf5Dm8Jx/Ab13aCk7DcT0MC2XyMPM1mR0+Gra1AdqAX
         yWHO7yXShBXL1s7Cf3uPqJyUoCsLLflf904WgHefPoSrvyodVqYWsVMOCCu3jA+qgJDK
         kQNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760436561; x=1761041361;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d/ttxF/dZw7J4JSYZeZOo0fN3D/uqFn7kWok+tyJugc=;
        b=CPKD07LKfZG5VI4V3lKbAJSY/Cz/XvvbPm3z/CqSUjg56FYcfyS/KFny035f7Q8s0G
         EznSuOhHeNC0FJl3ZvxXwVlR5ACOFaRfkRXBNW2KzWC1zabwlL6uWwXAf8REe/hd6X/b
         dNDnRxIZKsW7nUgjnsA9ow4TpA0KbEK5SIEsgZ9h4rg/Q4OFfpBpKPMrAVYcGemLobTE
         S8Fw4ndtoArjIrhLuRd4e1/5RCY1lFxN943kWA2YDMQLxW6GE5pwaBDUOw1yRB3ADrJz
         ymttH4lpB/7tqHmMcjfM7lwcrgRbdDsMo0FcvxhKhVQdJqRyhDWVmhbQ1SJKiWtOIZHG
         MjjQ==
X-Forwarded-Encrypted: i=1; AJvYcCWs4OsADIcXKWhHI6o3u2/e5RNfCtoz0RWPM/zlauXc3bth5epvdUD4T90iygC2vAeygcTm+WtMot4=@lists.infradead.org
X-Gm-Message-State: AOJu0YyB3V840iuVQRFiqUzsWXTxsCW8hp2Xs0DJL+5dKNKK2tDTkPY6
	Y2bd3QdsSsFcblBSfuqxWp59BQXbPYbR3vejaNzpYl9/PoTO3MppTjSsyiOsjkPZqVo=
X-Gm-Gg: ASbGncuuGbsUCkPIztA0p26Z17gSRTEZqiuTWl67pcf8IQWiCRzw2EUY0QVbqeiPDxz
	w7g2ITxkdPBApE0rootR40FvQm8RFl0wWFv+TqJoj8y8RDBHe1Xtfraa5YA8FQI48wQEPXhiFqd
	qrq7gjoQbMzNexdPuPh/VA3L/lz5cAJWQ982W+fzYjLBbJMQdMokjiev+eO3FQezTpfmQRmTpgJ
	TfA7IX/96vs/hypFffCGjT1+57v3+XB4v0VazVApVwmKk8YXzYLYBBEpGRWon/T0HD7rPUlRhXq
	y8mssc/jeVIy/cXSA73zuxHTYd//kFJqALjHfwlP/sm2C3QuNbswBYYyAURzydJMUUQ1jN4lGaa
	cRmQVlZIK/ohT3ZYc8gxrry9UgeNGJ4yrQL+cW+kPcg==
X-Google-Smtp-Source: AGHT+IGhYcM1EjuHseqFI8tRZvchmyS35I7xUk/4EU6AC6XLlnEooj6iq3rh59ZcN+RWuk1UNgay5A==
X-Received: by 2002:a05:600c:a341:b0:46e:74bb:6bc with SMTP id 5b1f17b1804b1-46fa9a8932cmr155892235e9.5.1760436560606;
        Tue, 14 Oct 2025 03:09:20 -0700 (PDT)
Received: from linaro.org ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46fab3d2c1asm149604235e9.1.2025.10.14.03.09.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 03:09:19 -0700 (PDT)
Date: Tue, 14 Oct 2025 13:09:17 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>
Cc: Dmitry Baryshkov <lumag@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH v3 0/4] phy: qcom: edp: Add support for Glymur platform
Message-ID: <c6w5wqjqdimn3cfex3n6aynol4hfqejct23ziq4wcwj2svuk5g@tzfi6fnbpc4k>
References: <20251014-phy-qcom-edp-add-glymur-support-v3-0-2772837032ef@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251014-phy-qcom-edp-add-glymur-support-v3-0-2772837032ef@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251014_030922_526073_916B3B58 
X-CRM114-Status: GOOD (  17.50  )
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

On 25-10-14 13:02:26, Abel Vesa wrote:
> The Glymur platform implements the eDP/DP PHY version 8.
> Add the necessary registers, rework the driver to accommodate
> this new version and add the Glymur specific configuration data.
> 
> This patchset depends on:
> https://lore.kernel.org/all/20250909-phy-qcom-edp-add-missing-refclk-v3-0-4ec55a0512ab@linaro.org/
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---

Urgh, for some reason, b4 re-enrolled (lost old branch) this one as v3 instead.

This is actually v4. Hopefully, v4 will know to pick this one up when applying.

Sorry about the mess.

> Changes in v4:
> - Force fallthrough for 5400 and 8100 link rates in qcom_edp_com_configure_pll_v8,
>   as they use the same values.
> - Picked up Rob's and Konrad's R-b tags.
> 
> Changes in v3:
> - Split the DP_AUX_CFG_SIZE change into as separate patch, as per
>   Konrad's request.
> - Re-worded the dt-bindings commit, as per Krzysztof's request.
> - Link to v2: https://lore.kernel.org/r/20250909-phy-qcom-edp-add-glymur-support-v2-0-02553381e47d@linaro.org
> 
> Changes in v2:
> - Sorted alphabetically the both the compatible and v8 specific
>   configuration.
> - Prefixed the new offsets with DP in order differentiate from PCIe ones
> - Link to v1: https://lore.kernel.org/r/20250904-phy-qcom-edp-add-glymur-support-v1-0-e83c6b9a145b@linaro.org
> 
> ---
> Abel Vesa (4):
>       dt-bindings: phy: Add DP PHY compatible for Glymur
>       phy: qcom: edp: Fix the DP_PHY_AUX_CFG registers count
>       phy: qcom-qmp: qserdes-com: Add v8 DP-specific qserdes register offsets
>       phy: qcom: edp: Add Glymur platform support
> 
>  .../devicetree/bindings/phy/qcom,edp-phy.yaml      |   2 +
>  drivers/phy/qualcomm/phy-qcom-edp.c                | 232 ++++++++++++++++++++-
>  .../phy/qualcomm/phy-qcom-qmp-dp-qserdes-com-v8.h  |  52 +++++
>  3 files changed, 279 insertions(+), 7 deletions(-)
> ---
> base-commit: b529e9498b7948df2be579282cbf0d5a9a3b7f9a
> change-id: 20250903-phy-qcom-edp-add-glymur-support-2a8117d92b89
> 
> Best regards,
> -- 
> Abel Vesa <abel.vesa@linaro.org>
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
