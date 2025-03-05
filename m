Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5405EC19F32
	for <linux-phy@archiver.kernel.org>; Wed,  5 Mar 2025 21:23:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1y9zKtHCOAVsm/nDLqDt3w8/MlEJSN5xVehcgqewrKw=; b=ZUYD0rBMiZ/sHr
	LWhfaivUhDMfwQpY9LNo0lFNGnU9qWG250ft1ybpDN4AqjTrqe9p82lCbN3K7GbCb2focGDb8kjIJ
	0m2zLbWN4hC3Sm5b+qliJ9RTT6iQ4i/85TFSndsKUOBARXo3TGE2r02vpgZGi3cpbyqif5rnrDNCC
	YXpf+mMgKPaa9UeGojmM5N2Q5j++U4ICvkLLuZ/m8jOICgTP8HCfUod4IPA3JWA9h+JbJgo7Zy2hT
	PMnLBOmt+bBN6I9f8Idk2TSdpHXFrGgmeHoVdoz8mp2M3EBbUN+2j2tpY3Fj37rZwRLtJAx7bux6m
	vMWSDJAyDXQiJgpm0DTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpwDN-00000009Kto-0Fxe;
	Wed, 05 Mar 2025 21:23:41 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpvWW-00000009FM9-1B9Z
	for linux-phy@lists.infradead.org;
	Wed, 05 Mar 2025 20:39:25 +0000
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-307d1ab59c6so74657711fa.1
        for <linux-phy@lists.infradead.org>; Wed, 05 Mar 2025 12:39:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741207162; x=1741811962; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=nfcoSxpPFiFuUn8/1PBHFRFeN5zz8LwDXafFbEhPVL4=;
        b=G736/ktFW3k2Tkw9xIjwl4ZL6wHvmzbr284BEFiKL6Owxv2am2w2xrmFNLYq+2DaT5
         wDLajvuTLiuDJ5N9yn9IRoqlJpTGDNqgzOFfov3yvGiRIcDY4yttDlr7fYfJFyR0/IjR
         XUH0DJmX8srUfMwdxuQPQMtQ58ytXExAX6RIa3nJeNuO21biiGkN96kpy/aGgzVkGQM1
         QAKlN2bqpKi0hMVJoXghQMJxEEgvGnIuG/uO5+lPD9tkFyQLGVF4CEN9VtVkl6QeN7ND
         ck6oxyHlbhWIiJjXp+uHNAPawunvBB/rXH/+3XuQmwnghZlS3z/C7ckwLkEsoPvV91Ff
         FHVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741207162; x=1741811962;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nfcoSxpPFiFuUn8/1PBHFRFeN5zz8LwDXafFbEhPVL4=;
        b=nqhWqwpwW0CV9yaFv94Wou9Kdkhn+MHgxafrxog2KrIGBKAGgnJUu/NiXxIGI72KWh
         rI8inMzhGIPuk3RgLrt8ak5NMLpbe649yT15tPkPkXK+wopvBWlQ1KvHDOihOylAoM1h
         KO8Q9cCpYOhwG8g5jZswXwySVlKFtDYHxX8nLMhETRpkPGllUIKltAwAR3P2VG4FG8wy
         a0GocJtQTaBWmu4nVLjuY91dS1sH1QY7Ym3EBxsXhU2rau5C4xjfXx80ez07kWaQHUU7
         hpoCO4HuXRDrt4AkeczhCq3jIS/CQ44nw+bnHv2oR6UfNP6d/IKopEp+0maYHt5VnGg8
         uA1g==
X-Forwarded-Encrypted: i=1; AJvYcCXg1yzJZXNDqww4zCW5hVPb8dnVh6IA5nDoQdQT/vCZLNMygkEkzIt/fZvqA0R+qJqbo5luEu9yR2A=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzi04B0MXv2cM7ya6jVubsp6kipfcqJu6A1SJ3OYHHYnaKg9NUm
	EiclGGO6ez8ZuY/M2fZKUhZM3f1kFozOWcyioK4fyYY+9mM8wyNIV6ch8AMvv8M=
X-Gm-Gg: ASbGncsX0h0UwJfpWkMpH5JhQJ8s4xFdcEjX9yq7ZCAxFUC9ENhDxC580y678DKNsp2
	FD6QWwa1tfVjDQCYy++Zj8s/KT9Xlpp++coT0ZkqZAo7RIKkFerEIKM9tKSuAVDFYDoGyvlUAsh
	RrFHeP1yfwDGn/GeBgOeaeC5KMfpAIfnKsUDeb+/Qzu5+PMDtkH0meTa5//42w5Gpmefm0b4H7I
	8wr/omizNLvGcy2R/Ca5Xrj89ms1l+ihfYJwzeT/N1jDIvsZ1y7N8B6+f9xND9a/AgldiyDbOUE
	JhLjke/3G88O2wnEgH6D+VpUKN5YTk61/ByQ3aKu+Xc4zpiOCDBog3G2YyQxWixaDrY5w+P0ibP
	h1B1BOX9keP7KW9HirvIG4jIa
X-Google-Smtp-Source: AGHT+IEbTbwWMOL7YUjwBALdMqyrxkNiXMKt6dO7bGnM96j30pIhXzA/HZiAODGdLHzT7qmpsh6SMw==
X-Received: by 2002:a2e:b1cf:0:b0:302:48fd:6922 with SMTP id 38308e7fff4ca-30bd7b324c0mr16257451fa.37.1741207162209;
        Wed, 05 Mar 2025 12:39:22 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30bc2ad651bsm9041781fa.20.2025.03.05.12.39.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Mar 2025 12:39:21 -0800 (PST)
Date: Wed, 5 Mar 2025 22:39:19 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: George Moussalem <george.moussalem@outlook.com>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org, andersson@kernel.org, 
	bhelgaas@google.com, conor+dt@kernel.org, devicetree@vger.kernel.org, 
	kishon@kernel.org, konradybcio@kernel.org, krzk+dt@kernel.org, kw@linux.com, 
	lpieralisi@kernel.org, manivannan.sadhasivam@linaro.org, p.zabel@pengutronix.de, 
	quic_nsekar@quicinc.com, robh@kernel.org, robimarko@gmail.com, vkoul@kernel.org, 
	quic_srichara@quicinc.com
Subject: Re: [PATCH v3 2/6] phy: qualcomm: qcom-uniphy-pcie 28LP add support
 for IPQ5018
Message-ID: <oeu6wkfhx2masvendoweoufzit6dcwwer5bakzvg75dz3uc4bj@bwuj4slnb24e>
References: <20250305134239.2236590-1-george.moussalem@outlook.com>
 <DS7PR19MB8883A6C7E8FA6810089453149DCB2@DS7PR19MB8883.namprd19.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DS7PR19MB8883A6C7E8FA6810089453149DCB2@DS7PR19MB8883.namprd19.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250305_123924_327432_3D6EAAB8 
X-CRM114-Status: GOOD (  10.71  )
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

On Wed, Mar 05, 2025 at 05:41:27PM +0400, George Moussalem wrote:
> From: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> 
> From: Nitheesh Sekar <quic_nsekar@quicinc.com>

Something is wrong here. There can't be two authors for the patch.

LGTM otherwise

> 
> The Qualcomm UNIPHY PCIe PHY 28LP is found on both IPQ5332 and IPQ5018.
> Adding the PHY init sequence, pipe clock rate, and compatible for IPQ5018.
> 
> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---
>  .../phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c  | 45 +++++++++++++++++++
>  1 file changed, 45 insertions(+)
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
