Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA2F6CA1012
	for <linux-phy@archiver.kernel.org>; Thu,  4 Sep 2025 10:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hnauy6z3YnFZKZb0hjIn9M0Z/XWZmyQooL+Jnfs4A00=; b=Qw0LbC+hN+eqtm
	QXMet5SFamX66fsXVHg1tW+E3UkZWzbbzMgl1WlYJxtldLVcpaemKDRSlj9Lg/hRdI+Hzjvhr7w8n
	mKfv4FqenuYLJ1cxHq2l42QhlKMSbCHp5fMKU4IJiQrDr4zA5zqSNJVl5mwuSM0lJoDasroDYuNnr
	MuYHvo2ibCA3Z9sbEhNF/IdWvYpwQrGkmuRfuKS7QPd+TsRX3K3N6bgIxntLYAk19Q3d+SUaIcF/Y
	GJuJ0nN9R4yWQJRkBAfi2sKro0hmW1hc4FfzNapw/J7d0E12qfYT4WwIf26qVgiHZoThEUNDUfnHm
	NibfH1WxhNI3tmATabPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu6oM-0000000AkCP-1sXN;
	Thu, 04 Sep 2025 10:03:22 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu5hm-0000000AMml-2VQA
	for linux-phy@lists.infradead.org;
	Thu, 04 Sep 2025 08:52:31 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-45cb5492350so5063575e9.1
        for <linux-phy@lists.infradead.org>; Thu, 04 Sep 2025 01:52:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756975949; x=1757580749; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7gK6n/g/HuSb43cbH0cdIC2KH3XWzF+uMZuIHFj3Zpo=;
        b=EM/DIRGEBRQpFseTTDcGPlWdVz5UZfz2BzHBO718lqZgD2m/lgtaiNipqqqbGy0K4Z
         CzLjQ8WkW9EzwGoZGUMoMiQqieH8snd4cV81idNoQQh5q/G9eiEIcg2jEHwBT9+q5hdb
         RizLSHVi/nH2gbVcVPZR2+OYl+Ub9T01BHXq61GlGjzaoOjbEQa+ofGaQ0/mvNHLsToW
         sYg+O5dUqSajHN3FNerEw4v44x/2YhHDMArBPJSp9rfN35O3GEnceBlIlI4Z6m8fCUtD
         TSWDjRcNLY4Ejb/4C/MR4P0Mr8RiqrnkXQOHKWlhWAyWR3DvR6aVpSmJGQ+BnCcuDZSe
         eS9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756975949; x=1757580749;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7gK6n/g/HuSb43cbH0cdIC2KH3XWzF+uMZuIHFj3Zpo=;
        b=SM1lvjR/skw3JFPb2M7FIOGu7XUBccm3qIzTpbLIHM4jg3BDx2ithq0fgiFixvgeNX
         8ziwS8R76Y2BKdtffo5q9e3N4xwQj1Vj78Du3ikfM0I5A7XIdaVKHldIK9thNX+juCbc
         WE5dEbk1zKK8fyJ673edz1phSHRx9CfKczgRCQHuLWDo1xTDSrvarHT5vPjvO+BWb+KF
         ewLHHC2UMlMhGui2h1aq/9b+wLyZUeZiK68mk8A99gNwwe6cSu2D1BVu8jSPuVIXbEP2
         ACIFjlu4gkOkATuinFhm3rpXvQJqJs2REZhJbc3ycFk/79DuFNBtdwKCM1BXJd26KfiW
         6Tiw==
X-Forwarded-Encrypted: i=1; AJvYcCXLO0jBJn9AgnV5GtyLMWedvrnQhKYFCtazsySVcP129OY3WnejJtGGj+Rh4ejJwtySXhpF4qyiIl8=@lists.infradead.org
X-Gm-Message-State: AOJu0YyD/TxqimCOzRdyWfB/qfwTvACeP01Ax1VJi/Ls07a443z/RYBB
	47lprAX6lvaPE9sQYTs0AbLH//tAlQ7ivyYyUjMrUylXX3Yo4m5l0gkG1TM3ZiKM7Uw=
X-Gm-Gg: ASbGncue2VWMgazZjSJA+dUFzmb49eOnB2TtV/m+5qM2uxuG76jC0RsTUO2o87WzGTg
	UGqdUVgRxc1bfwV5l/buJkpICdweCIXKAhpA0nS3VS28PY8DZXrREvbkHUZFGcQxseBBVLadK2z
	/UpOB4tsblyVOnZuDizdfQ24YmUOZSLiaybhUh9WW2WiEfJTH3NiAwRN2mo88I2zCnszCMifavS
	yA6hoO6ccuTOeDrncDAf7E1pjBELdP8rQiKT4CQJi5fQUmVnmm5/Ge4oBebcOboV7OyL9/zi39s
	VPMapYkJE/zGsB+2oXgzF/Cd3ZHA6m62PiUoHjQ2Fv1GlXUWFYY87Ayurpb6LOJ53s0VwR/BG+D
	Uy1AWHm2avc+cAp9AvTxGUVObwgA9XY4L
X-Google-Smtp-Source: AGHT+IHtO9lhAj+5b+dFwSvHFWLll5r95zkvUmodvWJ+Fdu92nqESPLKzmEOTmjK13cRmo2Ta3LMHg==
X-Received: by 2002:a05:600c:5253:b0:45d:98be:ee91 with SMTP id 5b1f17b1804b1-45d98bef030mr24615585e9.9.1756975949013;
        Thu, 04 Sep 2025 01:52:29 -0700 (PDT)
Received: from linaro.org ([86.121.170.194])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3d7ac825b88sm13968312f8f.7.2025.09.04.01.52.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 01:52:28 -0700 (PDT)
Date: Thu, 4 Sep 2025 11:52:26 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Dmitry Baryshkov <lumag@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Sibi Sankar <quic_sibis@quicinc.com>, 
	Rajendra Nayak <quic_rjendra@quicinc.com>, Johan Hovold <johan@kernel.org>, 
	Taniya Das <quic_tdas@quicinc.com>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: Add missing TCSR refclk to the
 DP PHYs
Message-ID: <qlqsefvnibw4esm5wz7khmyfdnszn5veinfb3k2w67f5v73kry@rzclmu57ybdh>
References: <20250903-phy-qcom-edp-add-missing-refclk-v2-0-d88c1b0cdc1b@linaro.org>
 <20250903-phy-qcom-edp-add-missing-refclk-v2-3-d88c1b0cdc1b@linaro.org>
 <34d9e8eb-e0f4-47e9-a731-fe50e932fea1@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <34d9e8eb-e0f4-47e9-a731-fe50e932fea1@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250904_015230_642725_D69CEEB6 
X-CRM114-Status: GOOD (  17.24  )
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

On 25-09-04 10:40:36, Konrad Dybcio wrote:
> On 9/3/25 2:37 PM, Abel Vesa wrote:
> > The DP PHYs on X1E80100 need the refclk which is provided
> > by the TCSR CC. So add it to the PHYs.
> > 
> > Cc: stable@vger.kernel.org # v6.9
> 
> You want to backport this to 6.9, but you also want to backport
> the driver patch to 6.10, "meh"
> 
> I'm not sure it makes sense to backport functionally, as this would
> only exhibit issues if:
> 
> a) the UEFI did no work to enable the refclk
> or:
> b) unused cleanup would happen
> 
> but the board would not survive booting with b) in v6.9, at least
> it wouldn't have display  - see Commit b60521eff227 ("clk: qcom:
> gcc-x1e80100: Unregister GCC_GPU_CFG_AHB_CLK/GCC_DISP_XO_CLK")
> 
> and a) is not something we'd hit on any of the upstream-supported
> targets

You are correct.

However, HW-wise, this clock is there and is needed, regardless
if UEFI leaves it enabled or not. So it makes sense to go all the way
back to 6.9 and fix it.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
