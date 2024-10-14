Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8F28D1625A
	for <linux-phy@archiver.kernel.org>; Mon, 14 Oct 2024 12:42:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hVeuZaLMt7YzZ/8kcW+mIQZ0c92J0DDlemASWVbSsJU=; b=M5pcpnrwC9FSBh
	8StIKrZZAmyjKHjW3LaV6OLmKGJpRMyvphgxNuNS91FdunoY2rK0m7jzVV8Z4U662hm1whxpW4ZWg
	hi/4gjJOcvrucTrSvYp2YC2EZthWy7rUcuK1zn/HXRf8vbe70qPpjwxy53GbTX2fpyTSz3wDtW83X
	2Z6+kZFBZNgnwpY9iomUpSMyWGbidKliDKEZGT0zfP0lHVr1ucpFjKDQHJ+qkDkvgBacQmyJUbHPY
	Lwt9oZCwxkYIosYqwg/K+cqNHIlg1pbF/cvHWqEDm6MUNDzq6vQNA01WiGFLvlP6pcGlacIn73lrc
	d2vBhzx500rJIpdf98Vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0KPS-000000057AT-2Saw;
	Mon, 14 Oct 2024 12:42:50 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0IqC-00000004opo-3n5f
	for linux-phy@lists.infradead.org;
	Mon, 14 Oct 2024 11:02:23 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-539f6e1f756so884667e87.0
        for <linux-phy@lists.infradead.org>; Mon, 14 Oct 2024 04:02:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728903739; x=1729508539; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=YPG5syvQmdIElZ3OPvKI1tUxnKFtCrmS600/6uIfwrs=;
        b=RCAj7iAV9/QECtNfwyOCQQ86/PO7YzDGSd2sGMCOuBIBWnoBw5/rUjFzKo3aSITrtI
         8HOZXDEwKSlyXveQnKKQ6VADahqnGsx5wYBnuje5Lo+2Alg80nEhMPet1Is07qmheYyu
         AZS8OhvYyr3wQ5vB6x8BDbewUnKzG4Pxaoa/x6ZZeEyfo066GhggpvHoof8sE/F6Ia7F
         FT/g7tM/Kp28P40av0y/T7u6zmOkpRvKZ2JqDt/HYsVkxg2PpTlH6Rgu+fR6sHkjI1Z1
         AX6TCX4wtPiUfQEgCYKCOitKQy3GqpyIk+9IF4/RyWY/VtGl9tPh83jroSyl87RzO9o7
         TKJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728903739; x=1729508539;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YPG5syvQmdIElZ3OPvKI1tUxnKFtCrmS600/6uIfwrs=;
        b=d3TzyZO7HXulX1/ix5dreCP9mq1AZATazEvMdVvlqtxRBNBDsu7WDj5u9x2+/BJcSk
         m+tcCMZDZOzgBKCBaisp28YWs6vAoOnJm7oTZpyeA0DIMux2DncTguYuQjJ4fbTvzY7C
         G2IRGbGwmj6g7eYtltg55c7QzszCCg79XJW8BgQLlB/VuMDHMc/v5UbDa8s1tqdUnj7p
         pm6K/xlXPR/Mp9TPj6CzV6l0P8Fk+dgptTANn8DYyAVLG9t7jmbNU02myfqXcP3wX2pD
         7g87s01E8P9Wx1SX10xs3OFOgPO4FckdY21FO/69V2Im6jWNl2ZKZhz0VrBSwo0jlMjv
         3dcg==
X-Forwarded-Encrypted: i=1; AJvYcCWOTP6maFKWQxjzuB2QG4KAPAIIHGxtUz2K+3lY+SB+bkRYvfDCaTjz+OJXTzoppw+qUWUGTBDiiVk=@lists.infradead.org
X-Gm-Message-State: AOJu0YzMaYRtJe1yj9cVg9PvFFcKrAoY+YR39ipGtL3VVcIrJ+peQqZB
	yfTbOj6sHALvoBmW0qkwnObknt5yttBr1R1Km8K9fjTteKsbqqluDR3vy5DAutM=
X-Google-Smtp-Source: AGHT+IEuiWssWlxRsSEt59sxgm4J1iwV9VrCy52qiaQ6PWdHX7Ga7KTuh7tgvmtXbf+UOvM8fdAF8w==
X-Received: by 2002:a05:6512:a93:b0:535:6ba7:7725 with SMTP id 2adb3069b0e04-539da3b6c23mr5260919e87.3.1728903738909;
        Mon, 14 Oct 2024 04:02:18 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-539e44b766esm1031460e87.239.2024.10.14.04.02.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Oct 2024 04:02:17 -0700 (PDT)
Date: Mon, 14 Oct 2024 14:02:15 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krishna Kurapati <quic_kriskura@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Bjorn Andersson <quic_bjorande@quicinc.com>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, Konrad Dybcio <konradybcio@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, 
	quic_ppratap@quicinc.com, quic_jackp@quicinc.com
Subject: Re: [PATCH 5/5] phy: qcom: qmp-usbc: Add qmp configuration for QCS615
Message-ID: <arqe2egym2ljme75lpb52mkkchn7ojs7xkozbgdw2jn3lmhiry@oixcxrsteszy>
References: <20241014084432.3310114-1-quic_kriskura@quicinc.com>
 <20241014084432.3310114-6-quic_kriskura@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241014084432.3310114-6-quic_kriskura@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_040221_004145_19EA7417 
X-CRM114-Status: UNSURE (   9.07  )
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

On Mon, Oct 14, 2024 at 02:14:32PM +0530, Krishna Kurapati wrote:
> Provide PHY configuration for the USB QMP PHY for QCS615 Platform.
> 
> Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 3 +++
>  1 file changed, 3 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
