Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA896C433EF
	for <linux-phy@archiver.kernel.org>; Tue,  1 Mar 2022 04:10:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MEKXVtRCAATVz3VxgO1Yrc0JCGrxwXe9rsUWLMbrSgg=; b=aO9SAMlQCH6Sll
	hAMZ/jX17L8Uem0f2LX4E+Rmz+4SfH+0YxLd0u8EkxJmazXZ9nzYTTQhRuWYts9XT/7MUn/jaCZTf
	ovVCaILlDs2VHjD41+Ex7S6L7LhGj9VyNPHusA6Ww7YgkX7K4aTKqIIw2o004VnsfJaWYZlduyMn4
	XhscrLErFqHbHa9GlBZMRC1G2dp6GjsG5ENbbtymcrKqQtvWANZYEtri8x8db7gVsyCMQK1tOsFL8
	qhNhRkLkvlgAej51C1siYRjhU1tQg6iukSXPr+3V3DBdvfITwhGjQUY98xXupNzTQNWZl4Vl1V23/
	AS0g7he0BFzUrb7VnANg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOtq7-00EpxF-CM; Tue, 01 Mar 2022 04:10:19 +0000
Received: from mail-pf1-x42e.google.com ([2607:f8b0:4864:20::42e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOtq4-00Epwb-Eo
 for linux-phy@lists.infradead.org; Tue, 01 Mar 2022 04:10:17 +0000
Received: by mail-pf1-x42e.google.com with SMTP id g21so6699020pfj.11
 for <linux-phy@lists.infradead.org>; Mon, 28 Feb 2022 20:10:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=hpq5GjZQptAKkSMdcyQQi01o9oZPsYgMqwCWekmi7Sw=;
 b=mYhpr1HhK5yiockpEnRo39R84MNVHzkyfh4CMNhCboaf9hf5Ppb92sKJPhWXue2cUs
 8ip8D+dWTx/OQ2Bie4OmdqgD6uib7SBwoTIaw6b4zJVUbNKiOZ/AW2pTuFHMf/YXYmxB
 cUHtaOwrr/qu2w9+8F5Ea36SQXpx5hpusCTwi8msGuCvgmS3f4a0lPa6D788YUvY52o4
 3UGGmyoNbyBspSInI7Eiy81mCMIUUyvakq51xmZdYL13bNTsDrZRqf44avBMAvm2hXjT
 oiXA1IMjF+J1wSZqtKBM6n+UZ3tmactKaq3GDUCr2Rd8fm97UpqBTPeylr9QTmDtKFNm
 dD7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=hpq5GjZQptAKkSMdcyQQi01o9oZPsYgMqwCWekmi7Sw=;
 b=6uccWh2cqdnXJUkJGBOOABhKQhpiqm3Ktr4UqGzobA/7Xen4j8rTtH8oqUSK1rKhyG
 kRiZzFW6v0IrNF1uemoc//pjfGodRUkRTclC0764JegXaeKMKDP7N6S1AXoNRQH5PQqV
 ce5T4XEyAp43NRh38krZngcV3y9Tk94h26D34lsvnDQ4EgyhoDWO6bKKnFZGtzb8160H
 n4dWWBzFmWfAkC0pQ6wvGoXbuw4fgmBNzpwJIRZj1IV+hyUSfoxjjbxShoK+on3guqHR
 ReKTu+ihmQA80Lq9CghFoVCPO+GNHRATZbq5Yvho7DgCbhyMWU9CyMTFwkpq1tetnRGy
 21hA==
X-Gm-Message-State: AOAM530vp6xKiZkQiJMi482ci31AygauQRyjtruRSYN8QPSZcMDoxvh3
 5WKtWAM0B1Y/jgggVPhRvRtUlw==
X-Google-Smtp-Source: ABdhPJxr5ZEqJaOMmcWja5H0Gd1DkSWwOqBmNmOEwJfnm+P7g8ImFFG77VVs0E0czWTsglqGhk6PSA==
X-Received: by 2002:a05:6a00:887:b0:4f2:6d3f:5b53 with SMTP id
 q7-20020a056a00088700b004f26d3f5b53mr25552345pfj.21.1646107813698; 
 Mon, 28 Feb 2022 20:10:13 -0800 (PST)
Received: from dragon (80.251.214.228.16clouds.com. [80.251.214.228])
 by smtp.gmail.com with ESMTPSA id
 j13-20020a056a00130d00b004f1025a4361sm15254811pfu.202.2022.02.28.20.10.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Feb 2022 20:10:13 -0800 (PST)
Date: Tue, 1 Mar 2022 12:10:07 +0800
From: Shawn Guo <shawn.guo@linaro.org>
To: Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, bhupesh.linux@gmail.com,
 agross@kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, vkoul@kernel.org,
 linux-phy@lists.infradead.org, robh+dt@kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 5/8] arm64: dts: qcom: sm8450: Fix qmp ufs phy node
 (use phy@ instead of lanes@)
Message-ID: <20220301041007.GH269879@dragon>
References: <20220228123019.382037-1-bhupesh.sharma@linaro.org>
 <20220228123019.382037-6-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220228123019.382037-6-bhupesh.sharma@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_201016_521262_890204D5 
X-CRM114-Status: UNSURE (   7.57  )
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

On Mon, Feb 28, 2022 at 06:00:16PM +0530, Bhupesh Sharma wrote:
> Fix the 'make dtbs_check' warning:
> 
> arch/arm64/boot/dts/qcom/sm8450-qrd.dt.yaml: phy@1d87000:
>  'lanes@1d87400' does not match any of the regexes: '^phy@[0-9a-f]+$', 'pinctrl-[0-9]+'
> 
> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Cc: Rob Herring <robh@kernel.org>
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>

Reviewed-by: Shawn Guo <shawn.guo@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
