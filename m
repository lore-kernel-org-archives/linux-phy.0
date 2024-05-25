Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 679AAC25B78
	for <linux-phy@archiver.kernel.org>; Sat, 25 May 2024 20:16:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Cnl7wdIA0YRSE/4lSdbFDjTQJiSbW1rh/ogCK0Mvyo=; b=ASZCvS5uclo24B
	EQwmObmE82eq/qXFw98yrzPmBf+GDPE/T8EtjGsHDEOB/Lz8v6cUYnrU/huAtfXm/fP5Oujs8RbwU
	3YOdHn7rAXkPmmjtHqGA7QSj9hgmghgfzAyLa9fpxBy9ctYN9a8UyOvklmx+gKVGRhNjmDCkct56B
	x9JnLBrJrQZpzBneaoACo7fLn/nQzArKU3/lCc3ymmpgequuRwCPOD2f9Gb+mgRQxMexRpg4pg3AY
	Ssr28iv9pBQWGaE77Lae6UI2Vuqy8asAzZYFSi2BC58aJsy5NXvslvqmKcoPap5wTmyEtGzlsbdvz
	RBNiTXsv8wyOR+Q0IvnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sAxot-0000000BdfU-40la;
	Sat, 25 May 2024 20:16:47 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sAxoq-0000000BdeZ-3tVg
	for linux-phy@lists.infradead.org;
	Sat, 25 May 2024 20:16:46 +0000
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2e6792ea67fso119719051fa.1
        for <linux-phy@lists.infradead.org>; Sat, 25 May 2024 13:16:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716668203; x=1717273003; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vxSNjzTuJf4atAWp41vejpcFG0wlQeaP+5dXZqy6R+0=;
        b=hsZHI/62X8jnPYEH8hgfzChrEAXo+gRMLhSjCch6lPeNUhHdszvhb7xSJDEWxvKdK0
         GhTfx+NIzHRAV0qRqLXGehJJvAwL4G8C2ZMAeAOgM5fCWzDCHexXfMMLK04SHE03PqwP
         emVOfG+raKsPsAgWp4VifcDZNAYp+GueEvg5RQ8WcqIJc+ctJj15StvOFLcieKqMlpYv
         5IHdXp5/cK8jof6VsjnZFbby6GhY+JZc9YCvXSE6vEs0elcJ6y+06t2u8hBaetRjOzZ+
         nqQa5b691LFIniMHs5gzlVMIOouDHGCp+KJ1yNVptTNDNhKM652UI2hQ4YNTe4kSYQyH
         tbcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716668203; x=1717273003;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vxSNjzTuJf4atAWp41vejpcFG0wlQeaP+5dXZqy6R+0=;
        b=k4yj/3CyVPVn7Ng6FS1HyzfiZzmew/QghH3Eo7FTtDzqsPDtBp2F0EAYtfjN7mPQyR
         0MuFXHal4bTtqdkZ/waT3ZLPpvPzR5JaXrnuPR1AALgY3V8UsUTVBzKKvGepcfxI/Rz4
         wHGJO/pHCWC4IrbY2Emn0RbMFxyEXYhW3xtKCUPk38qI3TdnV5dH4JoqpI7+Vpaoz+fi
         wUmssoS3UmeZfyRjZcLsxBWddO3szhAwz1s70wihQxLVzt6jxlQdYCem+fhlzgIgfOQV
         FK5IYZGv0SPTpmBNv8FAngIu403C1Ad1KDxeDO2g6MJjLpX3A6ZxIoDHrMs3WqJZdwAj
         JkTA==
X-Forwarded-Encrypted: i=1; AJvYcCVfgNIWsvUfngopviTpy1BOGIdakQU5CMJjyNhFn4iaiaCzBhdpIDdnnWMZ6gtlx/ZN02dxEzbk9k3Pps0aNfEOjQe26kf4HoGhLiHYng==
X-Gm-Message-State: AOJu0YxdYP5E07ztTqzlWDiyAdtbXZToc8s29A+TaPu6B0d+Y2zE3Yps
	B7aaVECaUGtjgfhV7JEysRw7iB44RAN9mr+HwGHTH27v99vXZLX/rA7zxKWoIQw=
X-Google-Smtp-Source: AGHT+IGqRSHwvMo1bs7rJRPMNeOrxq/sWSDnSnLjjibtRkPVSgOa8OApgnvVYNKAuqZszWWcJU2yVQ==
X-Received: by 2002:a2e:3e0e:0:b0:2df:b63:a8 with SMTP id 38308e7fff4ca-2e95b278708mr30593201fa.50.1716668203490;
        Sat, 25 May 2024 13:16:43 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2e95bdd1517sm8813861fa.82.2024.05.25.13.16.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 May 2024 13:16:43 -0700 (PDT)
Date: Sat, 25 May 2024 23:16:41 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-usb@vger.kernel.org, Bjorn Andersson <quic_bjorande@quicinc.com>
Subject: Re: [PATCH 09/10] arm64: dts: qcom: sc8180x-primus: Enable the two
 MP USB ports
Message-ID: <yqpnfhh5cdi3uxzg5ii5677lsjrt7nothm2neysf32mjce22fk@erbpp5lhmqrq>
References: <20240525-sc8180x-usb-mp-v1-0-60a904392438@quicinc.com>
 <20240525-sc8180x-usb-mp-v1-9-60a904392438@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240525-sc8180x-usb-mp-v1-9-60a904392438@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240525_131644_985855_C4A61879 
X-CRM114-Status: GOOD (  11.04  )
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

On Sat, May 25, 2024 at 11:04:02AM -0700, Bjorn Andersson wrote:
> From: Bjorn Andersson <quic_bjorande@quicinc.com>
> 
> The SC8180X Primus comes with an AUX card with two USB ports, fed by the
> two multiport ports.
> 
> Enable the involved nodes and define two always-on regulators to enable
> VBUS for these ports.
> 
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sc8180x-primus.dts | 60 +++++++++++++++++++++++++++++
>  1 file changed, 60 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
