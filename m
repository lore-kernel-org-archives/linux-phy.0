Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E00AC7EE23
	for <linux-phy@archiver.kernel.org>; Tue, 23 May 2023 12:50:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cZebSn+4ppiB+0f673xkojNEray88vvWWoLbmiuXTfM=; b=W6jS/XlHEOD3cQ
	jJ+qQM70kjuh9hh2QhiT/KsBRpmGO+sL00fO34pGdlpPMJOvxe8eWNbPE0BJ4+5EHz8nYAP5Pmngo
	OymSnqfHFEjrh1+KsjG1GH6vjlvGP4/KITMrFnJ5k+Yp+bde662sKt7MnkOLqF2T467i2a3UTmPJW
	Ywz0rl0p9wDBGkEwTVUvrZlBZUipejLtjI053TfbXwu0DzzeQQvtmsQm3IBT4MT+W+b2lJJ+R0aBK
	jnvCzBc2egghOjjog9SA6Ypi6Q674CDSJHz3fFi5aa8nj24ESRZ8/J97tZBDtHQewOVPNuKsFZEqu
	rDvkYmuF7fgHdp9+JeEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1RTN-00AIci-0A;
	Tue, 23 May 2023 12:50:41 +0000
Received: from mail-lf1-f44.google.com ([209.85.167.44])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1RTK-00AIbh-1A
	for linux-phy@lists.infradead.org;
	Tue, 23 May 2023 12:50:39 +0000
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-4f3a166f8e9so5955225e87.0
        for <linux-phy@lists.infradead.org>; Tue, 23 May 2023 05:50:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684846176; x=1687438176;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8AW95x05Cs7zVCr4QZ0d5TByJ9+4cDZxrEBugpUgmSY=;
        b=laSO6aKQAHp0nBr6G42Lzz/F0emre9Xgk0mzDLxNepoaYFbG1nIvG/RLLXxRu1i0y/
         FValRxDzMhJ4w2SvG6wfzGrpDkYeeVIkOFsE0qpiWn/mKK71ACXG++olvlvkXxry4eCu
         WNB8jzeMo75MXlsloTAdGWuCEfoRfjzAGWOyXg2vj7flWHe7aBmsvaWMqwNG2NrldkSR
         6FrKNU+rsWHs9+nL5Awnz3mm2UG5g6m5o1iPmmCKlTH177b6bQGD5Ie8GHKXRtQSrAuu
         ekLS0Sc2KTi+Uru9T4R0+EB9rydXtQnG41KEMigp+lw3ZrAwSz9VI3WcR99nmP5M3rV0
         PFnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684846176; x=1687438176;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8AW95x05Cs7zVCr4QZ0d5TByJ9+4cDZxrEBugpUgmSY=;
        b=W01awjeH/tr1kmoKl9R84clDulXrhFxyau37fhJ2bTqkfD+yqZpBnvV+Jhm0CCtBdd
         smpU/U1Fx2EE/wi2Q0zu3nf++rMdPf/t1XzUOralwFrq9NpB9izMdc2c02FbJ703pPcu
         gwCa65Nn4Z8HpBS0POAnV21Q5Z0GvOWywvz535joizw/ePu0gxCXNd4kKfS7TPfzIHJ4
         koyLd4Sf9qS3DeNDwD40IpNtG8bbM6Z3AiPYmx1slHTyWxXGtF/zFVBJNtr83CYnhlM7
         U9AJlJZOT9lqwMlQl4loyu/HhGP5M6HfX2r/55RClONGEP1zSw3Fjq9RNQc+EVKb3O32
         6HRQ==
X-Gm-Message-State: AC+VfDxDFiwV5+8I8WENEuJDZ/ca90u+IyNTAPKxc4UQknUY0UIE/kh6
	3dc5ZboIwOatFdK4MXW1tQPyjw==
X-Google-Smtp-Source: ACHHUZ4vQUyqJnd5wFhpaqBfNVnWxMU8Lk+Da0svhgAJtF/dZWkT+TX10Z9dWGSspcpv4J1osJQdsA==
X-Received: by 2002:a19:f816:0:b0:4f1:4074:b4fd with SMTP id a22-20020a19f816000000b004f14074b4fdmr5297479lff.29.1684846176105;
        Tue, 23 May 2023 05:49:36 -0700 (PDT)
Received: from [10.10.15.175] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id y2-20020a197502000000b004efee46249fsm1325560lfe.243.2023.05.23.05.49.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 May 2023 05:49:35 -0700 (PDT)
Message-ID: <7db11395-3b57-70ff-dc7e-acf8d8d4b1b8@linaro.org>
Date: Tue, 23 May 2023 15:49:35 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH 00/15] drm/msm/hdmi & phy: use generic PHY framework
Content-Language: en-GB
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Marijn Suijten <marijn.suijten@somainline.org>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Stephen Boyd
 <swboyd@chromium.org>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org,
 dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
 linux-phy@lists.infradead.org
References: <20230523121454.3460634-1-dmitry.baryshkov@linaro.org>
In-Reply-To: <20230523121454.3460634-1-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_055038_403199_283BA1C2 
X-CRM114-Status: GOOD (  14.44  )
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

On 23/05/2023 15:14, Dmitry Baryshkov wrote:
> The MSM HDMI PHYs have been using the ad-hoc approach / API instead of
> using the generic API framework. Move all the PHYs to
> drivers/phy/qualcomm and rework them to use generic PHY framework. This
> way all the QMP-related code is kept close. Also in future this will
> allow us to use a common set of functions to setup msm8974 HDMI PHY,
> 28nm DSI PHY and apq8964 SATA PHY (which all use UNI PLL internally).
> 
> This also causes some design changes. Currently on msm8996 the HDMI PLL
> implements clock's set_rate(), while other HDMI PHY drivers used the
> ad-hoc PHY API for setting the PLL rate (this includes in-tree msm8960
> driver and posted, but not merged, msm8974 driver). This might result in
> the PLL being set to one rate, while the rest of the PHY being tuned to
> work at another rate. Adopt the latter idea and always use
> phy_configure() to tune the PHY and set the PLL rate.

Forgot to mention that this also features msm8974 HDMI PLL code, so 
modeswitching HDMI output on msm8974 is now possible.
-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
