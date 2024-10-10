Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB182CF11F5
	for <linux-phy@archiver.kernel.org>; Thu, 10 Oct 2024 13:56:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/+m8b8YWnc4J8DDxEDWCzTAfZ65Bv9HO3DLRwjyhuMQ=; b=qp0ujbfKRC2zsj
	mMLv9w0d9dQSFGplyK/a/fwd2xzQT/wh7Qi5gf0i6H0eieEgmG270wKN4PguQjOPe0/katksREfly
	z/kwX5BeC9pNZ9KMTPxf+D7Hi1Ak0+PbYCJd5Z0e4PMydW5T1B2pgyegRljWcCB6Q8P7OIxPKm4uB
	GIkx0wXIzGGfZQYCDpQ2cOMn63KcHhy+Bve1q5GnTn4kFAc6s2ENXpdSxvzt6o/Eb7kfvdxM1gC1L
	cZaGgpzW8ot7Uo2q+JuCB8zg1b59Ta7J0YgrsB01ovspTC7Euvyj3KitJB7pYWiZPfAsKy0fWLyFq
	iWyEteViR9yYgIczZHAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sytef-0000000D0Ub-2g99;
	Thu, 10 Oct 2024 13:56:37 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syted-0000000D0Tm-0yBH
	for linux-phy@lists.infradead.org;
	Thu, 10 Oct 2024 13:56:36 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-53995380bb3so1231891e87.1
        for <linux-phy@lists.infradead.org>; Thu, 10 Oct 2024 06:56:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728568593; x=1729173393; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MgEbP4QzXn0AIXKMH5GH9V//Wmvbs5ys1mABYvpoE90=;
        b=n1vy5G8zlWrptXLBUyyTBbr6nV3KZcmbeLPIQIreLsHYHrpkUY2ZpjEI6wfx/h9vWe
         PJVk5aFOyShlS7OfGHdu0ZOMp4Yjh7mVXFTDZaNhF5dnuPdlbTPenrDIXitqRSARhBVM
         WYsHwiwzZ/wdrVKPdQXGsq+nc15riHomkvRdb2PvFwB5GLiC63G8wpHWl3Cw0Lf+S/OZ
         kh86Q3tjFPYHP4t21fF914ldTRnwQbs07k/1tzKIWdGxFNXGyK3QTBjo/pMqzJpCUKV4
         68+HRdgx1h2+jfc7/GJQHT4rodolS4Oy4uZEl4shxt0b6bFAFh27tM7Vam75mo+dr8w6
         Hd0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728568593; x=1729173393;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MgEbP4QzXn0AIXKMH5GH9V//Wmvbs5ys1mABYvpoE90=;
        b=mtSsam7eyViuGX6srbicASJ8llmN12+BAFwYztqPWv4P+/AF96zQBq4oO+oDZ/gTG6
         OmGJFenLoEbJoj8ztXpIDMkTSneOFH3rZFgpqYv52EL0ProYQFKz5mQKixMU6IY0IN3c
         JhU55xAp1l9ZPhuwiWe+/OG1E15PqRG2tchlQSrPJf4Xa/Q6PeOM4nUY0o1NZpRbV3sJ
         qwlrkTwdYapJ3aWBF07nRsmgCrtrKZGLHAj8qBcJHMp2QwPy6FIdgzd/gSeFlns+QlqE
         WaBAMzrzyloQidyVzIuT6OLE8MGHno2/VOD5tEQ0twF1JlVA2wPL+UKL7n9cwBq+gjnJ
         QMAQ==
X-Forwarded-Encrypted: i=1; AJvYcCWy3d5gyRmS1I7qnSol3cvXksKNf2YnLnc0ZNav0O7I/IsiogxWlOqwl2qxjbmziRz9S0QTWCkRd8I=@lists.infradead.org
X-Gm-Message-State: AOJu0YxE95pkx0pCWnZ/qASwevszy/Pf6ripHY8272dLfLdKHCJw+eLa
	kvh/VvccDoThwJaJ9s7Qbt6fA9p3cSya4Vmqt5Xh/IRiadXJLL0hbYea596LybM=
X-Google-Smtp-Source: AGHT+IFRJFs0J18XIpOr4N2kPvG4CArMIUph3kbLtDpAlLjw8FFX7qYAc57/vRjXHgekvKWF8dqMFQ==
X-Received: by 2002:a05:6512:acb:b0:52e:fd75:f060 with SMTP id 2adb3069b0e04-539c497940emr3386887e87.61.1728568592899;
        Thu, 10 Oct 2024 06:56:32 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-539cb8d8181sm260912e87.147.2024.10.10.06.56.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2024 06:56:32 -0700 (PDT)
Date: Thu, 10 Oct 2024 16:56:30 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krishna Kurapati <quic_kriskura@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Bjorn Andersson <quic_bjorande@quicinc.com>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, Konrad Dybcio <konradybcio@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Mantas Pucka <mantas@8devices.com>, 
	Abel Vesa <abel.vesa@linaro.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-phy@lists.infradead.org, quic_ppratap@quicinc.com, 
	quic_jackp@quicinc.com
Subject: Re: [PATCH 4/4] phy: qcom: qmp: Add qmp configuration for QCS8300
Message-ID: <cdhcojf4xypiym4icdkvwgqrsickw4qlwlp4vmovun5t3gc6mz@eqzgylg2z6uo>
References: <20241009195348.2649368-1-quic_kriskura@quicinc.com>
 <20241009195348.2649368-5-quic_kriskura@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241009195348.2649368-5-quic_kriskura@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241010_065635_313096_82B58109 
X-CRM114-Status: UNSURE (   9.57  )
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

On Thu, Oct 10, 2024 at 01:23:48AM GMT, Krishna Kurapati wrote:
> Add qmp configuration for QCS8300. It is similar to SA8775P and
> SC8280XP except for some Lane configuration settings specific to
> QCS8300.
> 
> Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 65 +++++++++++++++++++++++++
>  1 file changed, 65 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
