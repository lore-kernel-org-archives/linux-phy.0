Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96BA7D2FFEC
	for <linux-phy@archiver.kernel.org>; Fri, 18 Oct 2024 10:50:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SMTrYqXQs+luKuA3qdzqiqxnAHzCmZunyEIZSe9dY7k=; b=zCh4fc+RoleeTZ
	bFPkwPsF0OezLlj04FLBrIavwH+xfnfiIP74p6wIZVe5FAPACBd77MrfutrOH4oGa5JQe4YBEzctj
	SnGrB/LbEm/cikoIUeKNDuxMVziPI0wwUoWl2/p+ALHFiKj3kiVF8tAqkAww4WHyRgM7cWgVbstTn
	TN+0iFEcgssYSt+7kc7LqS59wM7UgT2xxqlF5yq75oGRy7LkcsKJRTBu5qwgEqDC8zPDOlV8PwaiZ
	6j9Jfq4VMeIGGsJTBpoLIturj6N+NyHSuneJJbhsLdRmyZFkTiwU4vOtPmKbuGx7J6MWVl90nKGLL
	aHwdHe8/SWx4YwBORgHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1kYd-00000000QWe-11sJ;
	Fri, 18 Oct 2024 10:50:11 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1kXc-00000000QH3-0FgR
	for linux-phy@lists.infradead.org;
	Fri, 18 Oct 2024 10:49:09 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-539fbbadf83so2577486e87.0
        for <linux-phy@lists.infradead.org>; Fri, 18 Oct 2024 03:49:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729248546; x=1729853346; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=gNtj1520nO/dJZLvoCXMLAGQoHCtBOdOq7yx+2L3fGM=;
        b=yaUYQmp2M3XWoaU0XSLbDAagDd6WXZAWrwyCAvPRfSewXSW74reQgQfGblg6Sly+Al
         ys/6nv1o+3LfqC9TcsKnjOp8MEjaztdZ5jGvVtdwFqdqKSJU6FWX17NT6kUsMrlY4a+f
         2RuH6In68zV9obF8LevSWH5bRpZGeITnH0kzAlgd99QiB80t/RYlhoVdkT3k5uAr0Y6e
         Fw/os6M65uuLHRRWothkjGaEMN+cVAo+xHRx4/DXcEUJk7S1Pi1keA0YEJRif7tYe68m
         NZuJJD7+x/L7YJbVIQjBCOfPBUXuzFsX1fXzrzEXUjq0IgDFV/np176NHuFCrAdekdEK
         x/fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729248546; x=1729853346;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gNtj1520nO/dJZLvoCXMLAGQoHCtBOdOq7yx+2L3fGM=;
        b=EWUsvWxrji7gB4bJzAkHiYJlMY6EIUQQ7gnsJzsa1tQZfWW6oIdLMw8p5s0cgBgiM9
         QI2w7JhB9rj6jRm0sX4wm/FkqMVN4TUyRqcwZLBpiUdiv+Jta2qOTfL1EDwveLJCWiFo
         WCIPmjzkKLbKXdYu0LEeDJbJNmAhO63d66VoNtDMqpRQasObkq3wOaePoDQpTfN1uXy5
         P1ATsoiaf1zVePInVNlK+gCPMJkDFy8T8pCBMN21z5lI9Y2qBOP2jK3Zwo/nNZZZ/Vtd
         bG4fxQEgRIjD1q6gzuPfun40XqiV6vE+Llfm4nNxkgiXdnaKDWGpdd1v7QqfAYSQHkEO
         XNSw==
X-Forwarded-Encrypted: i=1; AJvYcCUxdnxYYI3A6H5zJiin6f4OnekM5CLhU12dCcBuTg5ceLOZmeAfL/0RzYYN0nXXkMivEXLg7YzBTJA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxvjz1Ty67JK6NewiOwJ6LgUNdlJbLSXXqVXx0+bPHSYbFWcR+3
	gzjSlsxc8lTfJrygxlTCAkm5bUAIN5L2dBt30ZjFdamACOODbT1k/XTpfU6NLbM=
X-Google-Smtp-Source: AGHT+IHE+iZFyneUUs1Mw89eQrR5BtWwMErFKT+LuOvyRT6hNtiWczLi1qhZhpeMOJbbPBh7L5Fw0w==
X-Received: by 2002:a05:6512:398f:b0:539:f2f6:c6fe with SMTP id 2adb3069b0e04-53a1545ddeemr1184531e87.16.1729248545189;
        Fri, 18 Oct 2024 03:49:05 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a1520482bsm184384e87.239.2024.10.18.03.49.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Oct 2024 03:49:03 -0700 (PDT)
Date: Fri, 18 Oct 2024 13:49:01 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krishna Kurapati <quic_kriskura@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Bjorn Andersson <quic_bjorande@quicinc.com>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, Konrad Dybcio <konradybcio@kernel.org>, 
	Tingwei Zhang <quic_tingweiz@quicinc.com>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
	linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-phy@lists.infradead.org, quic_ppratap@quicinc.com, 
	quic_jackp@quicinc.com
Subject: Re: [PATCH v2 5/5] phy: qcom: qmp-usbc: Add qmp configuration for
 QCS615
Message-ID: <7fbr744shxfk4rf5k6izjs43lyd4suraznsdib5uanbwcll322@446iulvtwokd>
References: <20241017130701.3301785-1-quic_kriskura@quicinc.com>
 <20241017130701.3301785-6-quic_kriskura@quicinc.com>
 <CAA8EJprcOU6qeJvHH+MVoPnQ+mGcos=pDOVBSeSUfBGw-KR6tA@mail.gmail.com>
 <aa68e5ab-86a6-430e-92d8-ed89b4eb37f7@quicinc.com>
 <CAA8EJprkq-Cct9Uk1Jwqc5Rn8mx8THTRgwCzDx=8ZgbCpwD7qw@mail.gmail.com>
 <684582c3-3559-4c54-8257-cb952bbfe2ec@quicinc.com>
 <l4wpt5qin3ezkowf3puvodrm5wjsptd4a32f4qrzcuuquo6kq6@j2orv5z5quln>
 <479f7aa2-0401-40d5-8e2f-d7512aeab0c0@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <479f7aa2-0401-40d5-8e2f-d7512aeab0c0@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_034908_142041_44118E73 
X-CRM114-Status: GOOD (  27.38  )
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

On Fri, Oct 18, 2024 at 03:53:22PM +0530, Krishna Kurapati wrote:
> 
> 
> On 10/18/2024 3:41 PM, Dmitry Baryshkov wrote:
> > On Fri, Oct 18, 2024 at 05:01:48PM +0800, Tingwei Zhang wrote:
> > > On 10/18/2024 4:06 PM, Dmitry Baryshkov wrote:
> > > > On Fri, 18 Oct 2024 at 10:48, Tingwei Zhang <quic_tingweiz@quicinc.com> wrote:
> > > > > 
> > > > > On 10/18/2024 2:27 AM, Dmitry Baryshkov wrote:
> > > > > > On Thu, 17 Oct 2024 at 16:07, Krishna Kurapati
> > > > > > <quic_kriskura@quicinc.com> wrote:
> > > > > > > 
> > > > > > > Provide PHY configuration for the USB QMP PHY for QCS615 Platform.
> > > > > > > 
> > > > > > > Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> > > > > > > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > > > > > 
> > > > > > After checking platform details,
> > > > > > 
> > > > > > Unreviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > > > > > 
> > > > > > Please perform global s/QCS615/SM6150/ and s/qcs615/sm6150/
> > > > > 
> > > > > QCS615 and SM6150 are different variants of the same SoC. QCS615 is an
> > > > > IoT variant, while SM6150 is a mobile variant. We are currently adding
> > > > > QCS615 SoC support to the upstream Kernel, as it is in an active
> > > > > development stage and we anticipate many products based on this SoC. On
> > > > > the other hand, the SM6150 is an older mobile platform that is unlikely
> > > > > to be used in new designs. For a product introduction of the QCS615,
> > > > > please refer to
> > > > > https://docs.qualcomm.com/bundle/publicresource/87-83838-1_REV_A_Qualcomm_IQ6_Series_Product_Brief.pdf
> > > > 
> > > > Yes, I guessed so. It would have been nice if it was documented this
> > > > way from the beginning.
> > > > 
> > > > Please note that we usually get support for the mobile SoC first. So
> > > > in most of the cases devices use mobile compatible even for IoT
> > > > platforms, see qrb5165, qrb4210, qcm6490 and other similar platforms.
> > > > I simply asked to follow the established pattern.
> > > 
> > > Yes, we start from mobile variant for most of the platforms. There are some
> > > exceptions like sc7180 and sc7280 which we started from compute variant
> > > since they are widely used by compute platform on upstream Kernel. I think
> > > we have similar case here. QCS615 will be widely used by IOT products on
> > > upstream Kernel. We should have clarified this from beginning so there's no
> > > ambiguity.
> > 
> > After offline discussion with Krzysztof, I'll lift my objection, so
> > still Reviewed-by.
> > 
> 
> Thanks Dmitry.
> 
> Can you help review patch-4 of the series. I made the changes you suggested
> on v1 (uppercase to lowercase and removing un-necessary re-inits).

done

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
