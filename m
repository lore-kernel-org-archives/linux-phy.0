Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AAE13C25B74
	for <linux-phy@archiver.kernel.org>; Mon, 27 May 2024 09:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C/j+EQqrB9XtP5biN69YKRcR05WAfy9tfrmb1XNBMEI=; b=KUMPaxqXmcHNXN
	qWMMVBrpi8Ewwx2lOoLd8d8wIwa90tPwQk7RnnikjofLZ2g5HouCvl+qpPD1qkkbkR9q3cJLFfm6e
	HFo1+v/fH5oW7C8OZtFCzeB1jJ8f8iSfRFyg4LGF5UWp/MKYxq+UndwjJKf+xGfWZc7geXH5oPsH4
	XHwdeXELU6X0CSX4gjmvCmiLE5IQOhWqIs6AhLKAkWMNj+/cxD7711U9pOc25Pr0Yt8Dds4KEgVfh
	6GRULcoeZd5a097quyI3mmu4Vk+gbfSwSQ4cWn8E7NCbPn6I+xwIEEAFJXSRzGv/uXqI18IWEuUyb
	gWyZwV9PeOUTbJpCmD7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBWHx-0000000ELaG-0rU4;
	Mon, 27 May 2024 09:05:05 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBWHs-0000000ELZO-1ERM
	for linux-phy@lists.infradead.org;
	Mon, 27 May 2024 09:05:01 +0000
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2e95a1d5ee2so57279611fa.0
        for <linux-phy@lists.infradead.org>; Mon, 27 May 2024 02:04:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716800698; x=1717405498; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1Kct0tf/YJNMu/6x33HcGbT8GgyNCLw0zNoUOIeT2KM=;
        b=mXKp/Y0pLI2vJsTX7COqk+XGk7ZKFZUTkc065v1CWJgaT8OP4c0ECkqm913X5QAZmb
         oa9ZdUYGJ4Wo8vHT9AnPhi5I1YQcBzY+wFp3gh0FFZG9bDHg44LFK4dTpf23hyGhQAme
         OHZ7dl6brnotL1vx/MwHJBIO4XaHewD+wwvKmRDMZiDZ/h7R0iC8DqQaS6U0EhJt4ab8
         1zb14A7VwNgtpOgI+Joh9qD6a6J3WqIAbQpTkglC0cLmayqWzB02QuRPS4PDePRcuxYz
         qlkGrgsyxwVINAgK0xoklLqdsq0AEk9lNnvo5zlpsjmOhyUgymlu3loibSJIyI2ADyrS
         b3yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716800698; x=1717405498;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1Kct0tf/YJNMu/6x33HcGbT8GgyNCLw0zNoUOIeT2KM=;
        b=vAAxcFdD+i0nf1FHRL/f/rZLSEav2a6F6kzUjVtwKEn+kDJIYUisLNLnl0xu8eiOXm
         bk+kt9kGS2EoWUEVM5/FuePMyehQSSAgAK1TyCfzIufdRoDemMo67/4j2VTpAtLqqnua
         BTiUQm8c1Voip4s7hVt1gbjcA0nAs8y/Mt8mOVs4gDOCjHS/kGP/JLePLeWVuIB5E99s
         b7cnY27Q9Nj7j9WyNOzw+5kLA4fl55d9eOZY0gWsJHK7nhIojNWww1rEhUklUj8N0VSX
         yu/+ISpK1dfjxxONrJidzDztAHkqor1SMYjvIq1dwCwp+3Yb6QjSHAo7j25KVsUNiUdd
         HymA==
X-Forwarded-Encrypted: i=1; AJvYcCWQTlVvzrZv51YeTI/vrtIaotPThe4dK6/hrPw2vxfES5WUQpAASFa6lOctvPdwPZrdBPm01IWeYAgrjawEPMi8hwg6Xqoo+Nn62uq2jQ==
X-Gm-Message-State: AOJu0YwYMgqDJzY3o7bsgAnWELOd+77z6kFosFE+vZCXeQhA3BOy+LtJ
	Z3t6sIA5QTMhHzGUTnmuWYbIuOIDWb5UoRc8wxDQmD70KMu3FJlICRemmvfbibY=
X-Google-Smtp-Source: AGHT+IHEtnRhG/oZq/nIMTgh4haWtjmSaREwjwmnH+XtrXGGNLA2aYrcPng3SWVQ7vbKRRjs/4F1Lg==
X-Received: by 2002:a2e:9646:0:b0:2e7:bc7:b6f6 with SMTP id 38308e7fff4ca-2e95b2566d8mr68365361fa.38.1716800698324;
        Mon, 27 May 2024 02:04:58 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2e95bcc4ab4sm18760821fa.13.2024.05.27.02.04.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 May 2024 02:04:57 -0700 (PDT)
Date: Mon, 27 May 2024 12:04:56 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 7/7] arm64: dts: qcom: sc8280xp-lenovo-thinkpad-x13:
 allow 4 lanes for DisplayPort and enable QMP PHY mode-switch
Message-ID: <mfcofztvemowz2opn2fckszz4z44unhuxnhyaqvstbtqewzgzf@y4qo3ja74deu>
References: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-0-a03e68d7b8fc@linaro.org>
 <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-7-a03e68d7b8fc@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-7-a03e68d7b8fc@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_020500_587714_81F4BA81 
X-CRM114-Status: GOOD (  11.14  )
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

On Mon, May 27, 2024 at 10:42:39AM +0200, Neil Armstrong wrote:
> Allow up to 4 lanes for the DisplayPort link from the PHYs to the Controllers
> and allow mode-switch events to the QMP Combo PHYs.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
