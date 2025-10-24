Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4E90CCD1A5
	for <linux-phy@archiver.kernel.org>; Fri, 24 Oct 2025 09:35:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4F8jVEY2YsDYCXQptUhxOqb46od4KmSdxAKxXL/sHzk=; b=L6gF20Upu1PB+z
	vvIa0n0ko0ixEKfjER7806rQ57hBXm5a1JXWgqhBudWhWi5WZY0Og6HUeMxlRbkzSQnXQIjEtDdt3
	3GlXZ7m+4b0pT//QjgCLFTEQgilw8Sp2PFgUW2D1hJJVwbSaPnPCOLWLEMT3PppkB4wm33g1FuVwz
	wiPn+ifCEhglEquG2+7ZDuih7/e58RZTse2LT+v3lbzGH4w7tfEiSK1JAvQcGV5BDIT+RnEPMIscO
	6CvDLOy1Nb3BKe2x9gZcXXytX4IcemBlYPbYYmNcd9rMFSvNSyfa+8aPm3e3KwvGmc/GHueSFvyv4
	5xr8OS/sJqVuF8EE8Mgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCED6-00000008tfr-1mdN;
	Fri, 24 Oct 2025 09:35:48 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCED4-00000008tfX-1PoX
	for linux-phy@lists.infradead.org;
	Fri, 24 Oct 2025 09:35:47 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-47118259fd8so12266055e9.3
        for <linux-phy@lists.infradead.org>; Fri, 24 Oct 2025 02:35:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761298544; x=1761903344; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=AB/k9qen5oHRYzxzAm46DDJjbnbfjworTJj23CLgdeo=;
        b=npBufCdMvlXJyfXR2FU2gqCfWaHrYjUM3vQVZzAUDvp5mgx/TgX/qumt7S3NG/HgQQ
         XDCyXwaWCyZygiRCqdf8PpDRoyFTvMpMtDSEaA5zO2V21Y5pQCpEyBJxSH/sQgRYoUGF
         YrnANYmDR1/oNpfj6fRsHNGGKbB9pk7XoDeZtAod9U6qy7UrSL67c5rvLbs9rfCS66Mq
         Vl/iyAbsGkuPRbogw0Qj2YN/X9YQuc/TPESdbti3IkxRJyOxaB4h/we1mdBA6JorgvXr
         sg8UdTGzaaF6EJtaM4lIU/tv4y+XvXDaHYoB6bJIldM+MzLhazoH/66pwOVDTorDaHHE
         rtgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761298544; x=1761903344;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AB/k9qen5oHRYzxzAm46DDJjbnbfjworTJj23CLgdeo=;
        b=WZjHhe5hkNnU/73TbrLaFV5oWKktBtNbVXNAR+jZ5v/PE8ecI5TBPoOIVusWXnx041
         czqYcXn7cNg1IW6PaE428PH0kvrqzSKtJuIXUoFdAyeRNIHKRsKMSoC0ktzvV5t6PaNc
         Hjtsk544nk1nrrzIBjqYXd6mjCPdI3S9mYRqP6s3U6nZCR3K+4MLFumKyuqH8WuAkv1W
         mre63VKNp21LBHdP1mKHAxpvtpz3259CZa9yvcb/iBfmX0VJwgnQ25/QTO/BaBNpAprR
         QjWuI06FT0yMpFLX4zrZ/VUqLjLd6VviQh7wzxcoMBtMslymnqipmgYs/mSpvMLfv0AQ
         BnDA==
X-Forwarded-Encrypted: i=1; AJvYcCVgZdfzjkUxrtt+TjAaA5Bgjl1eIrvlfoRqHClX8ybeijTEd06knTqMOl67owHm3LngFKpHo1sQgH0=@lists.infradead.org
X-Gm-Message-State: AOJu0YzIBRBpqFU4BxhkOit1dszieOgnP3vRk6WeUIxGGAxYFMMRdR2h
	aiNu5HtfD9F7fNu68VMY0frHGVIGAjMOR4bJn0wXqOTMv7aMpPSRIgj9TTmsvZOntSE=
X-Gm-Gg: ASbGncuX849WijRaaerH+OxhNW1Sz7KMVABe1e/WsyZZC4DyFBPv0At2OgCw1C0p4az
	yMvf5LOjiOPDB/7TA2YcxJo8Jp4rx/JQ+DqMJVNXgPc7iikf07lILpKJ7RF0IzFBxdKUB9iOamU
	ZiPEXejx0AGTMAbAetTuzABzHwQP80lk/NM3B+cbw8fqpbTiaRwS9jMK/TNaTciWiVKqmhFdr6I
	ZBnk4jY31eA2wVDTB7fUxZwU672Pq9LlzgKrKH/1M0ayEgRGAS4oyhDmL1l5po0KIXgEnZRrNTS
	BHlYU11CO72Fh+PhayMHGn/0HhyOmRL6c9Imo+AvDwWDOmqctUOjVFlBN366jaHhgJGfsecfTpJ
	RnlUj5kQbDV9b8gqBPcfzAttHexMbPJBJtsmvuRUjyl53Rz57Mp2KB91ApVbi7Vem7+38bUH7JL
	QlagqXsho=
X-Google-Smtp-Source: AGHT+IHRT52qQLwpA4jCp3MR4MfEo1yVX3RPrxX/jF6DxckTinvzFxcrMGMBTx8wXfnTIC9O4HZnjA==
X-Received: by 2002:a05:600c:820f:b0:46f:b42e:e365 with SMTP id 5b1f17b1804b1-4711791dce8mr207186725e9.39.1761298544170;
        Fri, 24 Oct 2025 02:35:44 -0700 (PDT)
Received: from linaro.org ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47496afd459sm84581855e9.1.2025.10.24.02.35.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Oct 2025 02:35:42 -0700 (PDT)
Date: Fri, 24 Oct 2025 12:35:40 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Xilin Wu <sophon@radxa.com>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH v6 2/3] phy: qcom: qmp-combo: get the USB3 & DisplayPort
 lanes mapping from DT
Message-ID: <urc62zk2xlr2rka2nyyjsovql734kuzzphyh3hjnssivgswgbh@sjt4u7wumwlo>
References: <20251013-topic-x1e80100-hdmi-v6-0-3a9c8f7506d6@linaro.org>
 <20251013-topic-x1e80100-hdmi-v6-2-3a9c8f7506d6@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251013-topic-x1e80100-hdmi-v6-2-3a9c8f7506d6@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251024_023546_401944_7707E347 
X-CRM114-Status: UNSURE (   9.10  )
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

On 25-10-13 10:55:45, Neil Armstrong wrote:
> The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
> of a combo glue to route either lanes to the 4 shared physical lanes.
> 
> The routing of the lanes can be:
> - 2 DP + 2 USB3
> - 4 DP
> - 2 USB3
> 
> Get the lanes mapping from DT and stop registering the USB-C
> muxes in favor of a static mode and orientation detemined
> by the lanes mapping.
> 
> This allows supporting boards with direct connection of USB3 and
> DisplayPort lanes to the QMP Combo PHY lanes, not using the
> USB-C Altmode feature.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Tested-by: Xilin Wu <sophon@radxa.com> # qcs6490-radxa-dragon-q6a
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
