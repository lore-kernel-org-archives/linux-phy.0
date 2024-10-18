Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41C0BD2FFEE
	for <linux-phy@archiver.kernel.org>; Fri, 18 Oct 2024 10:50:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sfYX21S3K2TSE304AuLlOXFZB3XoT5AIeSYV6pHeOi4=; b=VO3V+T+dE4MUrT
	51xEqRU7sjNVBjcu36X5jyugi97JO3o9HxObryip14oBq/IFkdp+pmSzynt93xvHBdEX336rIvn36
	chWFIGYACjHA1XfRGlaPVaDNs2C4hhP4tuuw/+UVNii+UrOaU4/UQxhu89gGBVMTTUnNsukqe4/62
	cPSfrgxtHGIK2B+ZE9g8bQm75p/WXa/CdK81nlcBoB+p7TIXZaSzoRIf6f94+afg/ocsxptkmiAwr
	MqbrwjwA4U7Y/ZTvps2tyAruOnw+fgdUYT3THKGqqM592+IPJsVgtgE8v7tvPdXkzn3nAW2UiDuyd
	rOlmAWBVo+2TxDMRTVTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1kYc-00000000QWI-3tDO;
	Fri, 18 Oct 2024 10:50:10 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1kXN-00000000QCf-03Rz
	for linux-phy@lists.infradead.org;
	Fri, 18 Oct 2024 10:48:54 +0000
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2fb5638dd57so22752031fa.0
        for <linux-phy@lists.infradead.org>; Fri, 18 Oct 2024 03:48:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729248531; x=1729853331; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zlBIkgXoHUpGGxgUzabtKImK+2Y3lnlNINbK3gk3Nz4=;
        b=YPJ+dSRHHQUG85Nsa7ntJoE7gW8Pqv7iZtvNp1yVd4F/OO4Q+STS7ssO/zNQ41kTpH
         LFSVXq06OrNlHxFp6ndCBMQpkvLBvqPZnbnM6AD7RtySTj70f2hcqDcvojOQlcaAVXe2
         D/CyIqmQ9qPi4qAzsZevmWeP3PcN8I27acjagIzwckEvCPSfmzC1bC6XlvABqka7TDLv
         wRyA5SOVUeqFUYdzHdLKMSnIn56FxvhybduIrqXI7XUX4CLjbzrzS69GnFxdkaY/KrQy
         LX9EWGiNSrJoAXXbJa6LWbooA2KWKMcgXAV0fWcxBYJqHKArZgonapdRSnDoBtwUhxYG
         DfGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729248531; x=1729853331;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zlBIkgXoHUpGGxgUzabtKImK+2Y3lnlNINbK3gk3Nz4=;
        b=eCLXGhhFeNh2sX9h1OrJA+QTaq6TvheBsoYhOrxmB9GS/Wu42imBSiO4etOCn1GJvG
         9GVHiOl1ZhmQHG9kZB+47drdcJDXVvDkPMpLp2Hw8puSYLTZg24FylBL2jy3fIDOpRoY
         l7Ti5tzbHgywwyckffVEvaHYY3ylBJSK7hqET8lD6Cf6lwjjbpGStOJ4ZdtK/Mt+H/ZC
         I3Bp6cVkem98WsPeJjVF0wS2G++k8ZPUQ3iYKm7+3oIgKtnmFEQX1UpeZkjj7tzyuCpK
         hvzwxeRJFYvTUmyCUe2onhMZP5xbVf/KtEG3KtSxfVvWYnIiRxCD2ZW5gEtw+xblDSJF
         RLzA==
X-Forwarded-Encrypted: i=1; AJvYcCUsLPpupMIHT7Hm7fLRze3erowtFphoxP6pCsK1u+gNLdEEGrEcea6Ei+jCxVVW8wg5f3y/beyc7rg=@lists.infradead.org
X-Gm-Message-State: AOJu0YyeKFFwwm+d1C8fTXRRABybOlBJ42qHMkAoKk7iZkeqsDXDfQPa
	Bv8FB3I0wcniiaXWsuVcq2zmrQH01hvEmqHetK/LF9KpCxpIvcMp0xJn3srSSbo=
X-Google-Smtp-Source: AGHT+IF2/mMJKN4qJLCEm6+7VHHGgg8ckR5wYi1E0HptcP5qqGwJ+gSkEFi6bLWEeVPwTURdIQKZVQ==
X-Received: by 2002:a05:651c:b0e:b0:2fb:6198:d22b with SMTP id 38308e7fff4ca-2fb82eaf011mr10625731fa.17.1729248531088;
        Fri, 18 Oct 2024 03:48:51 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2fb809a6a7dsm1864591fa.10.2024.10.18.03.48.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Oct 2024 03:48:49 -0700 (PDT)
Date: Fri, 18 Oct 2024 13:48:47 +0300
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
Subject: Re: [PATCH v2 4/5] phy: qcom-qusb2: Add support for QCS615
Message-ID: <47w4t45mtools7wwd2q5ak6te63e57wk22eqvixeljh3cjg3wh@hxcm3xwgyna6>
References: <20241017130701.3301785-1-quic_kriskura@quicinc.com>
 <20241017130701.3301785-5-quic_kriskura@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241017130701.3301785-5-quic_kriskura@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_034853_069548_DFBEE718 
X-CRM114-Status: UNSURE (   9.32  )
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

On Thu, Oct 17, 2024 at 06:37:00PM +0530, Krishna Kurapati wrote:
> Add init sequence and phy configuration for QCS615.
> 
> Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qusb2.c | 27 +++++++++++++++++++++++++++
>  1 file changed, 27 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
