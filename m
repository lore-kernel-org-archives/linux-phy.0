Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A6E2CF9C6E
	for <linux-phy@archiver.kernel.org>; Mon, 23 Sep 2024 11:45:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ye1GaHk5/e8KlK+RreIdoNjLtxI66Y2IC8YRPmwbbdc=; b=nnN+jrzGqIeOnR
	CXdMd986rOiEvf5u6o2Kq6lyO6cRsJ7O5bIEOhgRD1W0nu7pNQCEs3jNuVhKE0iBKKleXCdIhp9CG
	XFJn68/KzOoPWLZRO2xn4ygvNaUZibIB7YdNkhZUPJq3D6YZ2ULDPJ0udFql1ECN3rKAFQXYgzY1e
	sMQ3fvsxHEF/rtlhQXogBTLfLT+bWIRSMPqin86OuA7nvLmQyMQW8oPw68WN2tq+0eI2HqdFg8Zfp
	tXnbwpTerbKl8L0fDz5uhuODIcgXUuwH1faCBpIYMllNLhCzpQaZVN5mpRjRxNuN/a1ZvX+Bvo1Dl
	DsvDshU6kYi496Gz7c4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sshVT-0000000H5wq-2Tas;
	Mon, 23 Sep 2024 11:45:31 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sshVR-0000000H5w0-27YR
	for linux-phy@lists.infradead.org;
	Mon, 23 Sep 2024 11:45:30 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-53661ac5ba1so4378784e87.2
        for <linux-phy@lists.infradead.org>; Mon, 23 Sep 2024 04:45:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727091928; x=1727696728; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=JMwbFcxKHdbftumcznblxJfBpPC8ptWVXFa2dH4Buk8=;
        b=FwqlM8GFWkVmS7irkAUb2vfho7V+Rvs4Mr3QY8ttiRK16Gz/0p/8x8IxZR8ohbI98L
         xlo1qbxn5nv8kUkmutmbrACLQ3s17U2488kom7leilQfzbvtCcQ9PMYjjiPmKLwPwrjf
         KEFYZe8VjZ6yE+ctm2ZW5xpmTnE63xteMSl8fsUmbBURVYcT9ciqDw8Pmk6dT2ntyO6M
         s9Runc9nwg6VtQU4xYqnb1dUCgbHZALhSvm+9fS3XAEfGMzcAU79JDHjAMgqERAMeGOv
         d/z1CnyJImoeCT2WnTdlUI0GXgYiSUqtcUM9bIQetU5E9PVh1pVhSb4qIE2t0PqTwH6Y
         QsGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727091928; x=1727696728;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JMwbFcxKHdbftumcznblxJfBpPC8ptWVXFa2dH4Buk8=;
        b=WJauwYqDBh16Fa2R09ixEx7NW/i6YGtMK9Ant301nqSOm2bJ7E+gxo76EvJ/hhr4Pb
         Sbcnpjvn0vFiM7+XCmaXVa18cATSyx7oYtW13G5P8b28YIEUGZilA61gCKHSJEsf6Bmw
         JKZDXKG+xnm1BKu+24RZQ9MgIBSjdk8u7rX4hSA2yqtO6/1CkG5s6NjuVes9zn6b7f1x
         aeY3gweyXWBQ2/sittXl0VexOLlAmnDpoxc1p6D80lqlOFeGGvT/tIIm2/qwe6f5Xro3
         FJcs+e/jVM7dn3e9UjlBpOe289Agp9RkeV2mtQmi0WHlCX74zxYo97HhH1tz4qhnQW/C
         b1bg==
X-Forwarded-Encrypted: i=1; AJvYcCURrsXwEFB71UzKILqZ6aoT0RGYcaogSwVduGcWjROFwi+yOv6fy5Hc8ttICfNlWC0AFEh3WAGF/ao=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxpan5MVIzTJIRg9t5Z9+AynAKORHSEiDeeDOSsd5TrkZi1BPJK
	Ejw9hbDpCE8aWALVq29yKL/gk5c52+tni99yKqOfgIRnBJgEVH5zN+KiIVPqUrE=
X-Google-Smtp-Source: AGHT+IFCh2GD/YYaddP7TMIDd36YLwXyayl1/jc49hpm9pk1zAYcHwo3MqpSbCp+ZxyRhnbKUPJIcw==
X-Received: by 2002:a05:6512:3b27:b0:52e:9b68:d2d4 with SMTP id 2adb3069b0e04-536ac33b18emr4731956e87.56.1727091927618;
        Mon, 23 Sep 2024 04:45:27 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-536a6959582sm1674291e87.22.2024.09.23.04.45.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Sep 2024 04:45:27 -0700 (PDT)
Date: Mon, 23 Sep 2024 14:45:25 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, konradybcio@kernel.org, 
	andersson@kernel.org, simona@ffwll.ch, abel.vesa@linaro.org, robdclark@gmail.com, 
	quic_abhinavk@quicinc.com, sean@poorly.run, marijn.suijten@somainline.org, 
	airlied@gmail.com, daniel@ffwll.ch, maarten.lankhorst@linux.intel.com, 
	mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, quic_khsieh@quicinc.com, konrad.dybcio@linaro.org, 
	quic_parellan@quicinc.com, quic_bjorande@quicinc.com, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, quic_riteshk@quicinc.com, 
	quic_vproddut@quicinc.com
Subject: Re: [PATCH v3 3/5] phy: qcom: edp: Add support for eDP PHY on SA8775P
Message-ID: <mrx2flabzgzsfyenqowgslb5654wcai6q3oclkc2i3em3iqusr@ed3af2qdx7vb>
References: <20240923113150.24711-1-quic_mukhopad@quicinc.com>
 <20240923113150.24711-4-quic_mukhopad@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240923113150.24711-4-quic_mukhopad@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240923_044529_564117_63D5021F 
X-CRM114-Status: UNSURE (   8.50  )
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

On Mon, Sep 23, 2024 at 05:01:48PM GMT, Soutrik Mukhopadhyay wrote:
> Add support for eDP PHY v5 found on the Qualcomm SA8775P platform.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
> ---
> v2: Fixed review comments from Dmitry
> 	- Reused edp_swing_hbr_rbr and edp_swing_hbr2_hbr3 for v5.
> 
> v3: No change
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
